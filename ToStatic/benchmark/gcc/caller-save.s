	.file	"caller-save.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 caller-save.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.local	regno_save_mode
	.comm	regno_save_mode,1060,32
	.local	regno_save_mem
	.comm	regno_save_mem,2120,32
	.local	reg_save_code
	.comm	reg_save_code,12508,32
	.local	reg_restore_code
	.comm	reg_restore_code,12508,32
	.local	hard_regs_saved
	.comm	hard_regs_saved,8,8
	.local	n_regs_saved
	.comm	n_regs_saved,4,4
	.local	referenced_regs
	.comm	referenced_regs,8,8
	.local	this_insn_sets
	.comm	this_insn_sets,8,8
	.section	.rodata
.LC0:
	.string	"caller-save.c"
	.text
	.globl	init_caller_save
	.type	init_caller_save, @function
init_caller_save:
.LFB2:
	.file 1 "caller-save.c"
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	.loc 1 123 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L2	#
.L14:
	.loc 1 125 0
	movl	-80(%rbp), %eax	# i, tmp104
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.12635
	testb	%al, %al	# D.12635
	je	.L3	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp106
	cltq
	movzbl	call_fixed_regs(%rax), %eax	# call_fixed_regs, D.12635
	testb	%al, %al	# D.12635
	jne	.L3	#,
	.loc 1 127 0 is_stmt 1
	movl	$1, -76(%rbp)	#, j
	jmp	.L4	#
.L12:
	.loc 1 129 0
	cmpl	$17, -80(%rbp)	#, i
	je	.L5	#,
	.loc 1 129 0 is_stmt 0 discriminator 1
	cmpl	$18, -80(%rbp)	#, i
	je	.L5	#,
	cmpl	$1, -76(%rbp)	#, j
	jne	.L6	#,
	.loc 1 129 0 discriminator 3
	movl	-76(%rbp), %edx	# j, j.2
	movl	-80(%rbp), %eax	# i, i.3
	movl	%edx, %esi	# j.2,
	movl	%eax, %edi	# i.3,
	call	choose_hard_reg_mode	#
	jmp	.L7	#
.L6:
	.loc 1 129 0 discriminator 4
	movl	$0, %eax	#, iftmp.1
.L7:
	.loc 1 129 0 discriminator 5
	movl	%eax, %edx	# iftmp.1, iftmp.0
	jmp	.L8	#
.L5:
	.loc 1 129 0 discriminator 2
	movl	$0, %edx	#, iftmp.0
.L8:
	.loc 1 129 0 discriminator 6
	movl	-76(%rbp), %eax	# j, tmp108
	movslq	%eax, %rsi	# tmp108, tmp107
	movl	-80(%rbp), %eax	# i, tmp110
	movslq	%eax, %rcx	# tmp110, tmp109
	movq	%rcx, %rax	# tmp109, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rcx, %rax	# tmp109, tmp111
	addq	%rsi, %rax	# tmp107, tmp112
	movl	%edx, regno_save_mode(,%rax,4)	# iftmp.0, regno_save_mode
	.loc 1 131 0 is_stmt 1 discriminator 6
	movl	-76(%rbp), %eax	# j, tmp114
	movslq	%eax, %rcx	# tmp114, tmp113
	movl	-80(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	addq	%rcx, %rax	# tmp113, tmp118
	movl	regno_save_mode(,%rax,4), %eax	# regno_save_mode, D.12637
	testl	%eax, %eax	# D.12637
	jne	.L9	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	cmpl	$1, -76(%rbp)	#, j
	jne	.L9	#,
	.loc 1 133 0 is_stmt 1
	movl	-80(%rbp), %eax	# i, tmp120
	cltq
	movb	$1, call_fixed_regs(%rax)	#, call_fixed_regs
	.loc 1 134 0
	movl	-80(%rbp), %eax	# i, tmp121
	movl	$1, %edx	#, tmp122
	movl	%eax, %ecx	# tmp121, tmp252
	salq	%cl, %rdx	# tmp252, D.12638
	movq	call_fixed_reg_set(%rip), %rax	# call_fixed_reg_set, call_fixed_reg_set.4
	orq	%rdx, %rax	# D.12638, call_fixed_reg_set.5
	movq	%rax, call_fixed_reg_set(%rip)	# call_fixed_reg_set.5, call_fixed_reg_set
.L9:
	.loc 1 127 0
	addl	$1, -76(%rbp)	#, j
.L4:
	.loc 1 127 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.7
	andl	$33554432, %eax	#, D.12636
	testl	%eax, %eax	# D.12636
	je	.L10	#,
	movl	$2, %eax	#, iftmp.6
	jmp	.L11	#
.L10:
	.loc 1 127 0 discriminator 2
	movl	$4, %eax	#, iftmp.6
.L11:
	.loc 1 127 0 discriminator 3
	cmpl	-76(%rbp), %eax	# j, iftmp.6
	jge	.L12	#,
	.loc 1 125 0 is_stmt 1
	jmp	.L13	#
.L3:
	.loc 1 139 0
	movl	-80(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, tmp123
	movq	%rdx, %rax	# tmp123, tmp125
	salq	$2, %rax	#, tmp125
	addq	%rdx, %rax	# tmp123, tmp125
	salq	$2, %rax	#, tmp126
	addq	$regno_save_mode+4, %rax	#, tmp127
	movl	$0, (%rax)	#, regno_save_mode
.L13:
	.loc 1 123 0
	addl	$1, -80(%rbp)	#, i
.L2:
	.loc 1 123 0 is_stmt 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, i
	jle	.L14	#,
	.loc 1 153 0 is_stmt 1
	movl	$0, -80(%rbp)	#, i
	jmp	.L15	#
.L18:
	.loc 1 154 0
	movq	reg_class_contents+96(%rip), %rdx	# reg_class_contents, D.12638
	movl	-80(%rbp), %eax	# i, tmp128
	movl	%eax, %ecx	# tmp128, tmp254
	shrq	%cl, %rdx	# tmp254, D.12638
	movq	%rdx, %rax	# D.12638, D.12638
	andl	$1, %eax	#, D.12638
	testq	%rax, %rax	# D.12638
	je	.L16	#,
	.loc 1 157 0
	jmp	.L17	#
.L16:
	.loc 1 153 0
	addl	$1, -80(%rbp)	#, i
.L15:
	.loc 1 153 0 is_stmt 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, i
	jle	.L18	#,
.L17:
	.loc 1 159 0 is_stmt 1
	cmpl	$53, -80(%rbp)	#, i
	jne	.L19	#,
	.loc 1 160 0
	movl	$__FUNCTION__.11051, %edx	#,
	movl	$160, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L19:
	.loc 1 162 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.9
	andl	$33554432, %eax	#, D.12636
	testl	%eax, %eax	# D.12636
	je	.L20	#,
	.loc 1 162 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.8
	jmp	.L21	#
.L20:
	.loc 1 162 0 discriminator 2
	movl	$4, %eax	#, iftmp.8
.L21:
	.loc 1 162 0 discriminator 3
	movl	-80(%rbp), %edx	# i, tmp129
	movl	%edx, %esi	# tmp129,
	movl	%eax, %edi	# iftmp.8,
	call	gen_rtx_REG	#
	movq	%rax, -56(%rbp)	# tmp130, addr_reg
	.loc 1 164 0 is_stmt 1 discriminator 3
	movl	$65536, -84(%rbp)	#, offset
	jmp	.L22	#
.L31:
	.loc 1 166 0
	movl	-84(%rbp), %eax	# offset, tmp131
	cltq
	movq	%rax, %rsi	# D.12639,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.12640
	movl	target_flags(%rip), %eax	# target_flags, target_flags.11
	andl	$33554432, %eax	#, D.12636
	testl	%eax, %eax	# D.12636
	je	.L23	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.10
	jmp	.L24	#
.L23:
	.loc 1 166 0 discriminator 2
	movl	$4, %eax	#, iftmp.10
.L24:
	.loc 1 166 0 discriminator 3
	movq	-56(%rbp), %rdx	# addr_reg, tmp132
	movl	%eax, %esi	# iftmp.10,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -64(%rbp)	# tmp133, address
	.loc 1 168 0 is_stmt 1 discriminator 3
	movl	$0, -80(%rbp)	#, i
	jmp	.L25	#
.L28:
	.loc 1 169 0
	movl	-80(%rbp), %eax	# i, tmp135
	movslq	%eax, %rdx	# tmp135, tmp134
	movq	%rdx, %rax	# tmp134, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# tmp134, tmp136
	salq	$2, %rax	#, tmp137
	addq	$regno_save_mode+4, %rax	#, tmp138
	movl	(%rax), %eax	# regno_save_mode, D.12637
	testl	%eax, %eax	# D.12637
	je	.L26	#,
	.loc 1 170 0
	movl	-80(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, tmp139
	movq	%rdx, %rax	# tmp139, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# tmp139, tmp141
	salq	$2, %rax	#, tmp142
	addq	$regno_save_mode+4, %rax	#, tmp143
	movl	(%rax), %eax	# regno_save_mode, D.12637
	movq	-64(%rbp), %rdx	# address, tmp144
	movq	%rdx, %rsi	# tmp144,
	movl	%eax, %edi	# D.12637,
	call	strict_memory_address_p	#
	testl	%eax, %eax	# D.12636
	jne	.L26	#,
	.loc 1 171 0
	jmp	.L27	#
.L26:
	.loc 1 168 0
	addl	$1, -80(%rbp)	#, i
.L25:
	.loc 1 168 0 is_stmt 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, i
	jle	.L28	#,
.L27:
	.loc 1 173 0 is_stmt 1
	cmpl	$53, -80(%rbp)	#, i
	jne	.L29	#,
	.loc 1 174 0
	jmp	.L30	#
.L29:
	.loc 1 164 0
	sarl	-84(%rbp)	# offset
.L22:
	.loc 1 164 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, offset
	jne	.L31	#,
.L30:
	.loc 1 178 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, offset
	jne	.L32	#,
	.loc 1 179 0
	movq	-56(%rbp), %rax	# addr_reg, tmp145
	movq	%rax, -64(%rbp)	# tmp145, address
.L32:
	.loc 1 184 0
	call	start_sequence	#
	.loc 1 186 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L33	#
.L46:
	.loc 1 187 0
	movl	$0, -72(%rbp)	#, mode
	jmp	.L34	#
.L45:
	.loc 1 188 0
	movl	-72(%rbp), %edx	# mode, tmp146
	movl	-80(%rbp), %eax	# i, tmp147
	movl	%edx, %esi	# tmp146,
	movl	%eax, %edi	# tmp147,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.12636
	je	.L35	#,
.LBB2:
	.loc 1 190 0
	movq	-64(%rbp), %rdx	# address, tmp148
	movl	-72(%rbp), %eax	# mode, tmp149
	movq	%rdx, %rsi	# tmp148,
	movl	%eax, %edi	# tmp149,
	call	gen_rtx_MEM	#
	movq	%rax, -48(%rbp)	# tmp150, mem
	.loc 1 191 0
	movl	-80(%rbp), %edx	# i, tmp151
	movl	-72(%rbp), %eax	# mode, tmp152
	movl	%edx, %esi	# tmp151,
	movl	%eax, %edi	# tmp152,
	call	gen_rtx_REG	#
	movq	%rax, -40(%rbp)	# tmp153, reg
	.loc 1 192 0
	movq	-40(%rbp), %rdx	# reg, tmp154
	movq	-48(%rbp), %rax	# mem, tmp155
	movq	%rdx, %rcx	# tmp154,
	movq	%rax, %rdx	# tmp155,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -32(%rbp)	# tmp156, savepat
	.loc 1 193 0
	movq	-48(%rbp), %rdx	# mem, tmp157
	movq	-40(%rbp), %rax	# reg, tmp158
	movq	%rdx, %rcx	# tmp157,
	movq	%rax, %rdx	# tmp158,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -24(%rbp)	# tmp159, restpat
	.loc 1 194 0
	movq	-32(%rbp), %rax	# savepat, tmp160
	movq	%rax, %rdi	# tmp160,
	call	emit_insn	#
	movq	%rax, -16(%rbp)	# tmp161, saveinsn
	.loc 1 195 0
	movq	-24(%rbp), %rax	# restpat, tmp162
	movq	%rax, %rdi	# tmp162,
	call	emit_insn	#
	movq	%rax, -8(%rbp)	# tmp163, restinsn
	.loc 1 198 0
	movq	-16(%rbp), %rax	# saveinsn, tmp164
	movl	40(%rax), %eax	# saveinsn_76->fld[4].rtint, D.12636
	testl	%eax, %eax	# D.12636
	js	.L36	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# saveinsn, tmp165
	movl	40(%rax), %ecx	# saveinsn_76->fld[4].rtint, iftmp.12
	jmp	.L37	#
.L36:
	.loc 1 198 0 discriminator 2
	movq	-16(%rbp), %rax	# saveinsn, tmp166
	movq	%rax, %rdi	# tmp166,
	call	recog_memoized_1	#
	movl	%eax, %ecx	#, iftmp.12
.L37:
	.loc 1 198 0 discriminator 3
	movl	-72(%rbp), %edi	# mode, tmp167
	movl	-80(%rbp), %eax	# i, tmp169
	movslq	%eax, %rsi	# tmp169, tmp168
	movq	%rsi, %rdx	# tmp168, tmp170
	leaq	0(,%rdx,4), %rax	#, tmp171
	movq	%rax, %rdx	# tmp171, tmp170
	movq	%rdx, %rax	# tmp170, tmp172
	salq	$4, %rax	#, tmp172
	subq	%rdx, %rax	# tmp170, tmp172
	subq	%rsi, %rax	# tmp168, tmp172
	addq	%rdi, %rax	# tmp167, tmp173
	movl	%ecx, reg_save_code(,%rax,4)	# iftmp.12, reg_save_code
	.loc 1 199 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# restinsn, tmp174
	movl	40(%rax), %eax	# restinsn_77->fld[4].rtint, D.12636
	testl	%eax, %eax	# D.12636
	js	.L38	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# restinsn, tmp175
	movl	40(%rax), %ecx	# restinsn_77->fld[4].rtint, iftmp.13
	jmp	.L39	#
.L38:
	.loc 1 199 0 discriminator 2
	movq	-8(%rbp), %rax	# restinsn, tmp176
	movq	%rax, %rdi	# tmp176,
	call	recog_memoized_1	#
	movl	%eax, %ecx	#, iftmp.13
.L39:
	.loc 1 199 0 discriminator 3
	movl	-72(%rbp), %edi	# mode, tmp177
	movl	-80(%rbp), %eax	# i, tmp179
	movslq	%eax, %rsi	# tmp179, tmp178
	movq	%rsi, %rdx	# tmp178, tmp180
	leaq	0(,%rdx,4), %rax	#, tmp181
	movq	%rax, %rdx	# tmp181, tmp180
	movq	%rdx, %rax	# tmp180, tmp182
	salq	$4, %rax	#, tmp182
	subq	%rdx, %rax	# tmp180, tmp182
	subq	%rsi, %rax	# tmp178, tmp182
	addq	%rdi, %rax	# tmp177, tmp183
	movl	%ecx, reg_restore_code(,%rax,4)	# iftmp.13, reg_restore_code
	.loc 1 203 0 is_stmt 1 discriminator 3
	movl	-72(%rbp), %esi	# mode, tmp184
	movl	-80(%rbp), %eax	# i, tmp186
	movslq	%eax, %rcx	# tmp186, tmp185
	movq	%rcx, %rdx	# tmp185, tmp187
	leaq	0(,%rdx,4), %rax	#, tmp188
	movq	%rax, %rdx	# tmp188, tmp187
	movq	%rdx, %rax	# tmp187, tmp189
	salq	$4, %rax	#, tmp189
	subq	%rdx, %rax	# tmp187, tmp189
	subq	%rcx, %rax	# tmp185, tmp189
	addq	%rsi, %rax	# tmp184, tmp190
	movl	reg_save_code(,%rax,4), %eax	# reg_save_code, D.12636
	.loc 1 204 0 discriminator 3
	cmpl	$-1, %eax	#, D.12636
	je	.L40	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %esi	# mode, tmp191
	movl	-80(%rbp), %eax	# i, tmp193
	movslq	%eax, %rcx	# tmp193, tmp192
	movq	%rcx, %rdx	# tmp192, tmp194
	leaq	0(,%rdx,4), %rax	#, tmp195
	movq	%rax, %rdx	# tmp195, tmp194
	movq	%rdx, %rax	# tmp194, tmp196
	salq	$4, %rax	#, tmp196
	subq	%rdx, %rax	# tmp194, tmp196
	subq	%rcx, %rax	# tmp192, tmp196
	addq	%rsi, %rax	# tmp191, tmp197
	movl	reg_restore_code(,%rax,4), %eax	# reg_restore_code, D.12636
	cmpl	$-1, %eax	#, D.12636
	je	.L40	#,
	.loc 1 204 0 discriminator 3
	movl	$1, %eax	#, iftmp.14
	jmp	.L41	#
.L40:
	.loc 1 204 0 discriminator 2
	movl	$0, %eax	#, iftmp.14
.L41:
	.loc 1 203 0 is_stmt 1
	movl	%eax, -68(%rbp)	# iftmp.14, ok
	.loc 1 205 0
	cmpl	$0, -68(%rbp)	#, ok
	je	.L42	#,
	.loc 1 207 0
	movq	-16(%rbp), %rax	# saveinsn, tmp198
	movq	%rax, %rdi	# tmp198,
	call	extract_insn	#
	.loc 1 208 0
	movl	$1, %edi	#,
	call	constrain_operands	#
	movl	%eax, -68(%rbp)	# tmp199, ok
	.loc 1 209 0
	movq	-8(%rbp), %rax	# restinsn, tmp200
	movq	%rax, %rdi	# tmp200,
	call	extract_insn	#
	.loc 1 210 0
	movl	$1, %edi	#,
	call	constrain_operands	#
	andl	%eax, -68(%rbp)	# D.12636, ok
.L42:
	.loc 1 213 0
	cmpl	$0, -68(%rbp)	#, ok
	jne	.L43	#,
	.loc 1 215 0
	movl	-72(%rbp), %esi	# mode, tmp201
	movl	-80(%rbp), %eax	# i, tmp203
	movslq	%eax, %rcx	# tmp203, tmp202
	movq	%rcx, %rdx	# tmp202, tmp204
	leaq	0(,%rdx,4), %rax	#, tmp205
	movq	%rax, %rdx	# tmp205, tmp204
	movq	%rdx, %rax	# tmp204, tmp206
	salq	$4, %rax	#, tmp206
	subq	%rdx, %rax	# tmp204, tmp206
	subq	%rcx, %rax	# tmp202, tmp206
	addq	%rsi, %rax	# tmp201, tmp207
	movl	$-1, reg_save_code(,%rax,4)	#, reg_save_code
	.loc 1 216 0
	movl	-72(%rbp), %esi	# mode, tmp208
	movl	-80(%rbp), %eax	# i, tmp210
	movslq	%eax, %rcx	# tmp210, tmp209
	movq	%rcx, %rdx	# tmp209, tmp211
	leaq	0(,%rdx,4), %rax	#, tmp212
	movq	%rax, %rdx	# tmp212, tmp211
	movq	%rdx, %rax	# tmp211, tmp213
	salq	$4, %rax	#, tmp213
	subq	%rdx, %rax	# tmp211, tmp213
	subq	%rcx, %rax	# tmp209, tmp213
	addq	%rsi, %rax	# tmp208, tmp214
	movl	$-1, reg_restore_code(,%rax,4)	#, reg_restore_code
.LBE2:
	jmp	.L44	#
.L43:
	jmp	.L44	#
.L35:
	.loc 1 221 0
	movl	-72(%rbp), %esi	# mode, tmp215
	movl	-80(%rbp), %eax	# i, tmp217
	movslq	%eax, %rcx	# tmp217, tmp216
	movq	%rcx, %rdx	# tmp216, tmp218
	leaq	0(,%rdx,4), %rax	#, tmp219
	movq	%rax, %rdx	# tmp219, tmp218
	movq	%rdx, %rax	# tmp218, tmp220
	salq	$4, %rax	#, tmp220
	subq	%rdx, %rax	# tmp218, tmp220
	subq	%rcx, %rax	# tmp216, tmp220
	addq	%rsi, %rax	# tmp215, tmp221
	movl	$-1, reg_save_code(,%rax,4)	#, reg_save_code
	.loc 1 222 0
	movl	-72(%rbp), %esi	# mode, tmp222
	movl	-80(%rbp), %eax	# i, tmp224
	movslq	%eax, %rcx	# tmp224, tmp223
	movq	%rcx, %rdx	# tmp223, tmp225
	leaq	0(,%rdx,4), %rax	#, tmp226
	movq	%rax, %rdx	# tmp226, tmp225
	movq	%rdx, %rax	# tmp225, tmp227
	salq	$4, %rax	#, tmp227
	subq	%rdx, %rax	# tmp225, tmp227
	subq	%rcx, %rax	# tmp223, tmp227
	addq	%rsi, %rax	# tmp222, tmp228
	movl	$-1, reg_restore_code(,%rax,4)	#, reg_restore_code
.L44:
	.loc 1 187 0
	addl	$1, -72(%rbp)	#, mode
.L34:
	.loc 1 187 0 is_stmt 0 discriminator 1
	cmpl	$58, -72(%rbp)	#, mode
	jbe	.L45	#,
	.loc 1 186 0 is_stmt 1
	addl	$1, -80(%rbp)	#, i
.L33:
	.loc 1 186 0 is_stmt 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, i
	jle	.L46	#,
	.loc 1 224 0 is_stmt 1
	movl	$0, -80(%rbp)	#, i
	jmp	.L47	#
.L53:
	.loc 1 225 0
	movl	$1, -76(%rbp)	#, j
	jmp	.L48	#
.L52:
	.loc 1 226 0
	movl	-76(%rbp), %eax	# j, tmp230
	movslq	%eax, %rcx	# tmp230, tmp229
	movl	-80(%rbp), %eax	# i, tmp232
	movslq	%eax, %rdx	# tmp232, tmp231
	movq	%rdx, %rax	# tmp231, tmp233
	salq	$2, %rax	#, tmp233
	addq	%rdx, %rax	# tmp231, tmp233
	addq	%rcx, %rax	# tmp229, tmp234
	movl	regno_save_mode(,%rax,4), %eax	# regno_save_mode, D.12637
	movl	%eax, %esi	# D.12637, tmp235
	movl	-80(%rbp), %eax	# i, tmp237
	movslq	%eax, %rcx	# tmp237, tmp236
	movq	%rcx, %rdx	# tmp236, tmp238
	leaq	0(,%rdx,4), %rax	#, tmp239
	movq	%rax, %rdx	# tmp239, tmp238
	movq	%rdx, %rax	# tmp238, tmp240
	salq	$4, %rax	#, tmp240
	subq	%rdx, %rax	# tmp238, tmp240
	subq	%rcx, %rax	# tmp236, tmp240
	addq	%rsi, %rax	# tmp235, tmp241
	movl	reg_save_code(,%rax,4), %eax	# reg_save_code, D.12636
	cmpl	$-1, %eax	#, D.12636
	jne	.L49	#,
	.loc 1 228 0
	movl	-76(%rbp), %eax	# j, tmp243
	movslq	%eax, %rcx	# tmp243, tmp242
	movl	-80(%rbp), %eax	# i, tmp245
	movslq	%eax, %rdx	# tmp245, tmp244
	movq	%rdx, %rax	# tmp244, tmp246
	salq	$2, %rax	#, tmp246
	addq	%rdx, %rax	# tmp244, tmp246
	addq	%rcx, %rax	# tmp242, tmp247
	movl	$0, regno_save_mode(,%rax,4)	#, regno_save_mode
	.loc 1 229 0
	cmpl	$1, -76(%rbp)	#, j
	jne	.L49	#,
	.loc 1 231 0
	movl	-80(%rbp), %eax	# i, tmp249
	cltq
	movb	$1, call_fixed_regs(%rax)	#, call_fixed_regs
	.loc 1 232 0
	movl	-80(%rbp), %eax	# i, tmp250
	movl	$1, %edx	#, tmp251
	movl	%eax, %ecx	# tmp250, tmp264
	salq	%cl, %rdx	# tmp264, D.12638
	movq	call_fixed_reg_set(%rip), %rax	# call_fixed_reg_set, call_fixed_reg_set.15
	orq	%rdx, %rax	# D.12638, call_fixed_reg_set.16
	movq	%rax, call_fixed_reg_set(%rip)	# call_fixed_reg_set.16, call_fixed_reg_set
.L49:
	.loc 1 225 0
	addl	$1, -76(%rbp)	#, j
.L48:
	.loc 1 225 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.18
	andl	$33554432, %eax	#, D.12636
	testl	%eax, %eax	# D.12636
	je	.L50	#,
	movl	$2, %eax	#, iftmp.17
	jmp	.L51	#
.L50:
	.loc 1 225 0 discriminator 2
	movl	$4, %eax	#, iftmp.17
.L51:
	.loc 1 225 0 discriminator 3
	cmpl	-76(%rbp), %eax	# j, iftmp.17
	jge	.L52	#,
	.loc 1 224 0 is_stmt 1
	addl	$1, -80(%rbp)	#, i
.L47:
	.loc 1 224 0 is_stmt 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, i
	jle	.L53	#,
	.loc 1 236 0 is_stmt 1
	call	end_sequence	#
	.loc 1 237 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_caller_save, .-init_caller_save
	.globl	init_save_areas
	.type	init_save_areas, @function
init_save_areas:
.LFB3:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 246 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L55	#
.L60:
	.loc 1 247 0
	movl	$1, -4(%rbp)	#, j
	jmp	.L56	#
.L59:
	.loc 1 248 0 discriminator 2
	movl	-4(%rbp), %eax	# j, tmp63
	movslq	%eax, %rcx	# tmp63, tmp62
	movl	-8(%rbp), %eax	# i, tmp65
	movslq	%eax, %rdx	# tmp65, tmp64
	movq	%rdx, %rax	# tmp64, tmp66
	salq	$2, %rax	#, tmp66
	addq	%rdx, %rax	# tmp64, tmp66
	addq	%rcx, %rax	# tmp62, tmp67
	movq	$0, regno_save_mem(,%rax,8)	#, regno_save_mem
	.loc 1 247 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L56:
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.20
	andl	$33554432, %eax	#, D.12642
	testl	%eax, %eax	# D.12642
	je	.L57	#,
	movl	$2, %eax	#, iftmp.19
	jmp	.L58	#
.L57:
	.loc 1 247 0 discriminator 2
	movl	$4, %eax	#, iftmp.19
.L58:
	.loc 1 247 0 discriminator 3
	cmpl	-4(%rbp), %eax	# j, iftmp.19
	jge	.L59	#,
	.loc 1 246 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L55:
	.loc 1 246 0 is_stmt 0 discriminator 1
	cmpl	$52, -8(%rbp)	#, i
	jle	.L60	#,
	.loc 1 249 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	init_save_areas, .-init_save_areas
	.globl	setup_save_areas
	.type	setup_save_areas, @function
setup_save_areas:
.LFB4:
	.loc 1 271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 281 0
	movq	$0, -24(%rbp)	#, hard_regs_used
	.loc 1 282 0
	movl	$53, -52(%rbp)	#, i
	jmp	.L62	#
.L88:
	.loc 1 283 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.21
	movl	-52(%rbp), %edx	# i, tmp174
	movslq	%edx, %rdx	# tmp174, D.12643
	addq	%rdx, %rdx	# D.12643
	addq	%rdx, %rax	# D.12643, D.12644
	movzwl	(%rax), %eax	# *_33, D.12645
	testw	%ax, %ax	# D.12645
	js	.L63	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.22
	movl	-52(%rbp), %edx	# i, tmp176
	movslq	%edx, %rdx	# tmp176, tmp175
	addq	$4, %rdx	#, tmp177
	movq	(%rax,%rdx,8), %rax	# reg_n_info.22_35->data.reg, D.12646
	movl	32(%rax), %eax	# _36->calls_crossed, D.12647
	testl	%eax, %eax	# D.12647
	jle	.L63	#,
.LBB3:
	.loc 1 285 0 is_stmt 1
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.23
	movl	-52(%rbp), %edx	# i, tmp178
	movslq	%edx, %rdx	# tmp178, D.12643
	addq	%rdx, %rdx	# D.12643
	addq	%rdx, %rax	# D.12643, D.12644
	movzwl	(%rax), %eax	# *_41, D.12645
	cwtl
	movl	%eax, -32(%rbp)	# tmp179, regno
	.loc 1 287 0
	cmpl	$7, -32(%rbp)	#, regno
	jbe	.L64	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, regno
	jbe	.L65	#,
.L64:
	.loc 1 287 0 discriminator 2
	cmpl	$20, -32(%rbp)	#, regno
	jbe	.L66	#,
	.loc 1 287 0 discriminator 1
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L65	#,
.L66:
	.loc 1 287 0 discriminator 2
	cmpl	$44, -32(%rbp)	#, regno
	jbe	.L67	#,
	.loc 1 287 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, regno
	jbe	.L65	#,
.L67:
	.loc 1 287 0 discriminator 2
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L68	#,
	.loc 1 287 0 discriminator 1
	cmpl	$36, -32(%rbp)	#, regno
	ja	.L68	#,
.L65:
	movq	cfun(%rip), %rax	# cfun, cfun.26
	movq	24(%rax), %rax	# cfun.26_95->emit, D.12648
	movq	80(%rax), %rax	# _96->x_regno_reg_rtx, D.12649
	movl	-52(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, D.12643
	salq	$3, %rdx	#, D.12643
	addq	%rdx, %rax	# D.12643, D.12649
	movq	(%rax), %rax	# *_100, D.12650
	movzbl	2(%rax), %eax	# _101->mode, D.12651
	movzbl	%al, %eax	# D.12651, D.12647
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12652
	cmpl	$5, %eax	#, D.12652
	je	.L69	#,
	.loc 1 287 0 discriminator 4
	movq	cfun(%rip), %rax	# cfun, cfun.27
	movq	24(%rax), %rax	# cfun.27_105->emit, D.12648
	movq	80(%rax), %rax	# _106->x_regno_reg_rtx, D.12649
	movl	-52(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, D.12643
	salq	$3, %rdx	#, D.12643
	addq	%rdx, %rax	# D.12643, D.12649
	movq	(%rax), %rax	# *_110, D.12650
	movzbl	2(%rax), %eax	# _111->mode, D.12651
	movzbl	%al, %eax	# D.12651, D.12647
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12652
	cmpl	$6, %eax	#, D.12652
	jne	.L70	#,
.L69:
	.loc 1 287 0 discriminator 3
	movl	$2, %eax	#, iftmp.25
	jmp	.L72	#
.L70:
	.loc 1 287 0 discriminator 1
	movl	$1, %eax	#, iftmp.25
	jmp	.L72	#
.L68:
	.loc 1 287 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.29
	movq	24(%rax), %rax	# cfun.29_44->emit, D.12648
	movq	80(%rax), %rax	# _45->x_regno_reg_rtx, D.12649
	movl	-52(%rbp), %edx	# i, tmp184
	movslq	%edx, %rdx	# tmp184, D.12643
	salq	$3, %rdx	#, D.12643
	addq	%rdx, %rax	# D.12643, D.12649
	movq	(%rax), %rax	# *_49, D.12650
	movzbl	2(%rax), %eax	# _50->mode, D.12651
	cmpb	$18, %al	#, D.12651
	jne	.L73	#,
	.loc 1 287 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.31
	andl	$33554432, %eax	#, D.12647
	testl	%eax, %eax	# D.12647
	je	.L74	#,
	.loc 1 287 0 discriminator 8
	movl	$2, %eax	#, iftmp.30
	jmp	.L72	#
.L74:
	.loc 1 287 0 discriminator 9
	movl	$3, %eax	#, iftmp.30
	jmp	.L72	#
.L73:
	.loc 1 287 0 discriminator 7
	movq	cfun(%rip), %rax	# cfun, cfun.33
	movq	24(%rax), %rax	# cfun.33_57->emit, D.12648
	movq	80(%rax), %rax	# _58->x_regno_reg_rtx, D.12649
	movl	-52(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, D.12643
	salq	$3, %rdx	#, D.12643
	addq	%rdx, %rax	# D.12643, D.12649
	movq	(%rax), %rax	# *_62, D.12650
	movzbl	2(%rax), %eax	# _63->mode, D.12651
	cmpb	$24, %al	#, D.12651
	jne	.L77	#,
	.loc 1 287 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.35
	andl	$33554432, %eax	#, D.12647
	testl	%eax, %eax	# D.12647
	je	.L78	#,
	.loc 1 287 0 discriminator 12
	movl	$4, %eax	#, iftmp.34
	jmp	.L72	#
.L78:
	.loc 1 287 0 discriminator 13
	movl	$6, %eax	#, iftmp.34
	jmp	.L72	#
.L77:
	.loc 1 287 0 discriminator 11
	movq	cfun(%rip), %rax	# cfun, cfun.36
	movq	24(%rax), %rax	# cfun.36_70->emit, D.12648
	movq	80(%rax), %rax	# _71->x_regno_reg_rtx, D.12649
	movl	-52(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, D.12643
	salq	$3, %rdx	#, D.12643
	addq	%rdx, %rax	# D.12643, D.12649
	movq	(%rax), %rax	# *_75, D.12650
	movzbl	2(%rax), %eax	# _76->mode, D.12651
	movzbl	%al, %eax	# D.12651, D.12647
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12651
	movzbl	%al, %edx	# D.12651, D.12647
	movl	target_flags(%rip), %eax	# target_flags, target_flags.38
	andl	$33554432, %eax	#, D.12647
	testl	%eax, %eax	# D.12647
	je	.L81	#,
	.loc 1 287 0 discriminator 1
	movl	$8, %eax	#, iftmp.37
	jmp	.L82	#
.L81:
	.loc 1 287 0 discriminator 2
	movl	$4, %eax	#, iftmp.37
.L82:
	.loc 1 287 0 discriminator 3
	addl	%edx, %eax	# D.12647, D.12647
	subl	$1, %eax	#, D.12647
	movl	target_flags(%rip), %edx	# target_flags, target_flags.40
	andl	$33554432, %edx	#, D.12647
	testl	%edx, %edx	# D.12647
	je	.L83	#,
	.loc 1 287 0 discriminator 1
	movl	$8, %ebx	#, iftmp.39
	jmp	.L84	#
.L83:
	.loc 1 287 0 discriminator 2
	movl	$4, %ebx	#, iftmp.39
.L84:
	.loc 1 287 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.39
.L72:
	.loc 1 286 0 is_stmt 1
	movl	-32(%rbp), %edx	# regno, tmp193
	addl	%edx, %eax	# tmp193, tmp192
	movl	%eax, -28(%rbp)	# tmp192, endregno
	.loc 1 289 0
	movl	-32(%rbp), %eax	# regno, tmp194
	movl	%eax, -40(%rbp)	# tmp194, r
	jmp	.L85	#
.L87:
	.loc 1 290 0
	movl	-40(%rbp), %eax	# r, tmp195
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.12653
	testb	%al, %al	# D.12653
	je	.L86	#,
	.loc 1 291 0
	movl	-40(%rbp), %eax	# r, r.41
	movl	$1, %edx	#, tmp196
	movl	%eax, %ecx	# r.41, tmp272
	salq	%cl, %rdx	# tmp272, D.12643
	movq	%rdx, %rax	# D.12643, D.12643
	orq	%rax, -24(%rbp)	# D.12643, hard_regs_used
.L86:
	.loc 1 289 0
	addl	$1, -40(%rbp)	#, r
.L85:
	.loc 1 289 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# r, tmp197
	cmpl	-28(%rbp), %eax	# endregno, tmp197
	jb	.L87	#,
.L63:
.LBE3:
	.loc 1 282 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L62:
	.loc 1 282 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.42
	cmpl	%eax, -52(%rbp)	# max_regno.42, i
	jl	.L88	#,
	.loc 1 298 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L89	#
.L111:
	.loc 1 299 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.44
	andl	$33554432, %eax	#, D.12647
	testl	%eax, %eax	# D.12647
	je	.L90	#,
	.loc 1 299 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.43
	jmp	.L91	#
.L90:
	.loc 1 299 0 discriminator 2
	movl	$4, %eax	#, iftmp.43
.L91:
	.loc 1 299 0 discriminator 3
	movl	%eax, -48(%rbp)	# iftmp.43, j
	jmp	.L92	#
.L110:
.LBB4:
	.loc 1 301 0 is_stmt 1
	movl	$1, -36(%rbp)	#, do_save
	.loc 1 305 0
	movl	-48(%rbp), %eax	# j, tmp199
	movslq	%eax, %rcx	# tmp199, tmp198
	movl	-52(%rbp), %eax	# i, tmp201
	movslq	%eax, %rdx	# tmp201, tmp200
	movq	%rdx, %rax	# tmp200, tmp202
	salq	$2, %rax	#, tmp202
	addq	%rdx, %rax	# tmp200, tmp202
	addq	%rcx, %rax	# tmp198, tmp203
	movl	regno_save_mode(,%rax,4), %eax	# regno_save_mode, D.12654
	testl	%eax, %eax	# D.12654
	je	.L93	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp205
	movslq	%eax, %rdx	# tmp205, tmp204
	movq	%rdx, %rax	# tmp204, tmp206
	salq	$2, %rax	#, tmp206
	addq	%rdx, %rax	# tmp204, tmp206
	salq	$3, %rax	#, tmp207
	addq	$regno_save_mem+8, %rax	#, tmp208
	movq	(%rax), %rax	# regno_save_mem, D.12650
	testq	%rax, %rax	# D.12650
	je	.L94	#,
.L93:
	.loc 1 306 0 is_stmt 1
	jmp	.L95	#
.L94:
	.loc 1 309 0
	movl	$0, -44(%rbp)	#, k
	jmp	.L96	#
.L99:
	.loc 1 310 0
	movl	-44(%rbp), %eax	# k, tmp209
	movl	-52(%rbp), %edx	# i, tmp210
	addl	%edx, %eax	# tmp210, D.12647
	movslq	%eax, %rdx	# D.12647, tmp211
	movq	%rdx, %rax	# tmp211, tmp212
	salq	$2, %rax	#, tmp212
	addq	%rdx, %rax	# tmp211, tmp212
	salq	$3, %rax	#, tmp213
	addq	$regno_save_mem+8, %rax	#, tmp214
	movq	(%rax), %rax	# regno_save_mem, D.12650
	testq	%rax, %rax	# D.12650
	je	.L97	#,
	.loc 1 312 0
	movl	$0, -36(%rbp)	#, do_save
	.loc 1 313 0
	jmp	.L98	#
.L97:
	.loc 1 309 0
	addl	$1, -44(%rbp)	#, k
.L96:
	.loc 1 309 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# k, tmp215
	cmpl	-48(%rbp), %eax	# j, tmp215
	jl	.L99	#,
.L98:
	.loc 1 315 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, do_save
	jne	.L100	#,
	.loc 1 316 0
	jmp	.L95	#
.L100:
	.loc 1 318 0
	movl	$0, -44(%rbp)	#, k
	jmp	.L101	#
.L104:
	.loc 1 319 0
	movl	-44(%rbp), %eax	# k, tmp216
	movl	-52(%rbp), %edx	# i, tmp217
	addl	%edx, %eax	# tmp217, D.12647
	movq	-24(%rbp), %rdx	# hard_regs_used, tmp218
	movl	%eax, %ecx	# D.12647, tmp274
	shrq	%cl, %rdx	# tmp274, D.12643
	movq	%rdx, %rax	# D.12643, D.12643
	andl	$1, %eax	#, D.12643
	testq	%rax, %rax	# D.12643
	jne	.L102	#,
	.loc 1 321 0
	movl	$0, -36(%rbp)	#, do_save
	.loc 1 322 0
	jmp	.L103	#
.L102:
	.loc 1 318 0
	addl	$1, -44(%rbp)	#, k
.L101:
	.loc 1 318 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# k, tmp219
	cmpl	-48(%rbp), %eax	# j, tmp219
	jl	.L104	#,
.L103:
	.loc 1 324 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, do_save
	jne	.L105	#,
	.loc 1 325 0
	jmp	.L95	#
.L105:
	.loc 1 330 0
	movl	-48(%rbp), %eax	# j, tmp221
	movslq	%eax, %rcx	# tmp221, tmp220
	movl	-52(%rbp), %eax	# i, tmp223
	movslq	%eax, %rdx	# tmp223, tmp222
	movq	%rdx, %rax	# tmp222, tmp224
	salq	$2, %rax	#, tmp224
	addq	%rdx, %rax	# tmp222, tmp224
	addq	%rcx, %rax	# tmp220, tmp225
	movl	regno_save_mode(,%rax,4), %eax	# regno_save_mode, D.12654
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12651
	.loc 1 329 0
	movzbl	%al, %ecx	# D.12651, D.12655
	movl	-48(%rbp), %eax	# j, tmp228
	movslq	%eax, %rsi	# tmp228, tmp227
	movl	-52(%rbp), %eax	# i, tmp230
	movslq	%eax, %rdx	# tmp230, tmp229
	movq	%rdx, %rax	# tmp229, tmp231
	salq	$2, %rax	#, tmp231
	addq	%rdx, %rax	# tmp229, tmp231
	addq	%rsi, %rax	# tmp227, tmp232
	movl	regno_save_mode(,%rax,4), %eax	# regno_save_mode, D.12654
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.12655,
	movl	%eax, %edi	# D.12654,
	call	assign_stack_local	#
	movq	%rax, %rcx	#, D.12650
	movl	-48(%rbp), %eax	# j, tmp234
	movslq	%eax, %rsi	# tmp234, tmp233
	movl	-52(%rbp), %eax	# i, tmp236
	movslq	%eax, %rdx	# tmp236, tmp235
	movq	%rdx, %rax	# tmp235, tmp237
	salq	$2, %rax	#, tmp237
	addq	%rdx, %rax	# tmp235, tmp237
	addq	%rsi, %rax	# tmp233, tmp238
	movq	%rcx, regno_save_mem(,%rax,8)	# D.12650, regno_save_mem
	.loc 1 333 0
	movl	$0, -44(%rbp)	#, k
	jmp	.L106	#
.L109:
	.loc 1 336 0
	movl	-44(%rbp), %eax	# k, tmp239
	movl	-52(%rbp), %edx	# i, tmp240
	leal	(%rdx,%rax), %ebx	#, D.12647
	.loc 1 337 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.46
	andl	$33554432, %eax	#, D.12647
	testl	%eax, %eax	# D.12647
	je	.L107	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.45
	jmp	.L108	#
.L107:
	.loc 1 337 0 discriminator 2
	movl	$4, %eax	#, iftmp.45
.L108:
	.loc 1 337 0 discriminator 3
	imull	-44(%rbp), %eax	# k, D.12647
	movslq	%eax, %rdi	# D.12647, D.12655
	movl	-44(%rbp), %eax	# k, tmp241
	movl	-52(%rbp), %edx	# i, tmp242
	addl	%edx, %eax	# tmp242, D.12647
	movslq	%eax, %rdx	# D.12647, tmp243
	movq	%rdx, %rax	# tmp243, tmp244
	salq	$2, %rax	#, tmp244
	addq	%rdx, %rax	# tmp243, tmp244
	salq	$2, %rax	#, tmp245
	addq	$regno_save_mode+4, %rax	#, tmp246
	movl	(%rax), %esi	# regno_save_mode, D.12654
	movl	-48(%rbp), %eax	# j, tmp248
	movslq	%eax, %rcx	# tmp248, tmp247
	movl	-52(%rbp), %eax	# i, tmp250
	movslq	%eax, %rdx	# tmp250, tmp249
	movq	%rdx, %rax	# tmp249, tmp251
	salq	$2, %rax	#, tmp251
	addq	%rdx, %rax	# tmp249, tmp251
	addq	%rcx, %rax	# tmp247, tmp252
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, D.12650
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rdi, %rdx	# D.12655,
	movq	%rax, %rdi	# D.12650,
	call	adjust_address_1	#
	movq	%rax, %rcx	#, D.12650
	movslq	%ebx, %rdx	# D.12647, tmp253
	movq	%rdx, %rax	# tmp253, tmp254
	salq	$2, %rax	#, tmp254
	addq	%rdx, %rax	# tmp253, tmp254
	salq	$3, %rax	#, tmp255
	addq	$regno_save_mem+8, %rax	#, tmp256
	movq	%rcx, (%rax)	# D.12650, regno_save_mem
	.loc 1 333 0 is_stmt 1 discriminator 3
	addl	$1, -44(%rbp)	#, k
.L106:
	.loc 1 333 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# k, tmp257
	cmpl	-48(%rbp), %eax	# j, tmp257
	jl	.L109	#,
.L95:
.LBE4:
	.loc 1 299 0 is_stmt 1
	subl	$1, -48(%rbp)	#, j
.L92:
	.loc 1 299 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, j
	jg	.L110	#,
	.loc 1 298 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L89:
	.loc 1 298 0 is_stmt 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, i
	jle	.L111	#,
	.loc 1 344 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L112	#
.L118:
	.loc 1 345 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.48
	andl	$33554432, %eax	#, D.12647
	testl	%eax, %eax	# D.12647
	je	.L113	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.47
	jmp	.L114	#
.L113:
	.loc 1 345 0 discriminator 2
	movl	$4, %eax	#, iftmp.47
.L114:
	.loc 1 345 0 discriminator 3
	movl	%eax, -48(%rbp)	# iftmp.47, j
	jmp	.L115	#
.L117:
	.loc 1 346 0 is_stmt 1
	movl	-48(%rbp), %eax	# j, tmp259
	movslq	%eax, %rcx	# tmp259, tmp258
	movl	-52(%rbp), %eax	# i, tmp261
	movslq	%eax, %rdx	# tmp261, tmp260
	movq	%rdx, %rax	# tmp260, tmp262
	salq	$2, %rax	#, tmp262
	addq	%rdx, %rax	# tmp260, tmp262
	addq	%rcx, %rax	# tmp258, tmp263
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, D.12650
	testq	%rax, %rax	# D.12650
	je	.L116	#,
	.loc 1 347 0
	call	get_frame_alias_set	#
	movq	%rax, %rcx	#, D.12655
	movl	-48(%rbp), %eax	# j, tmp265
	movslq	%eax, %rsi	# tmp265, tmp264
	movl	-52(%rbp), %eax	# i, tmp267
	movslq	%eax, %rdx	# tmp267, tmp266
	movq	%rdx, %rax	# tmp266, tmp268
	salq	$2, %rax	#, tmp268
	addq	%rdx, %rax	# tmp266, tmp268
	addq	%rsi, %rax	# tmp264, tmp269
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, D.12650
	movq	%rcx, %rsi	# D.12655,
	movq	%rax, %rdi	# D.12650,
	call	set_mem_alias_set	#
.L116:
	.loc 1 345 0
	subl	$1, -48(%rbp)	#, j
.L115:
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, j
	jg	.L117	#,
	.loc 1 344 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L112:
	.loc 1 344 0 is_stmt 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, i
	jle	.L118	#,
	.loc 1 348 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	setup_save_areas, .-setup_save_areas
	.globl	save_call_clobbered_regs
	.type	save_call_clobbered_regs, @function
save_call_clobbered_regs:
.LFB5:
	.loc 1 354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 358 0
	movq	$0, hard_regs_saved(%rip)	#, hard_regs_saved
	.loc 1 359 0
	movl	$0, n_regs_saved(%rip)	#, n_regs_saved
	.loc 1 361 0
	movq	reload_insn_chain(%rip), %rax	# reload_insn_chain, tmp266
	movq	%rax, -288(%rbp)	# tmp266, chain
	jmp	.L120	#
.L199:
.LBB5:
	.loc 1 363 0
	movq	-288(%rbp), %rax	# chain, tmp267
	movq	32(%rax), %rax	# chain_1->insn, tmp268
	movq	%rax, -264(%rbp)	# tmp268, insn
	.loc 1 364 0
	movq	-264(%rbp), %rax	# insn, tmp269
	movzwl	(%rax), %eax	# insn_38->code, D.12656
	movzwl	%ax, %eax	# D.12656, tmp270
	movl	%eax, -312(%rbp)	# tmp270, code
	.loc 1 366 0
	movq	-288(%rbp), %rax	# chain, tmp271
	movq	(%rax), %rax	# chain_1->next, tmp272
	movq	%rax, -256(%rbp)	# tmp272, next
	.loc 1 368 0
	movq	-288(%rbp), %rax	# chain, tmp273
	movzbl	262(%rax), %eax	# *chain_1, D.12657
	andl	$8, %eax	#, D.12657
	testb	%al, %al	# D.12657
	je	.L121	#,
	.loc 1 369 0
	movl	$__FUNCTION__.11132, %edx	#,
	movl	$369, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L121:
	.loc 1 371 0
	movl	-312(%rbp), %eax	# code, code.49
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12658
	cmpb	$105, %al	#, D.12658
	jne	.L122	#,
	.loc 1 376 0
	movl	n_regs_saved(%rip), %eax	# n_regs_saved, n_regs_saved.50
	testl	%eax, %eax	# n_regs_saved.50
	je	.L123	#,
.LBB6:
	.loc 1 380 0
	cmpl	$33, -312(%rbp)	#, code
	jne	.L124	#,
	.loc 1 382 0
	movq	hard_regs_saved(%rip), %rax	# hard_regs_saved, hard_regs_saved.51
	movq	%rax, referenced_regs(%rip)	# hard_regs_saved.51, referenced_regs
	jmp	.L125	#
.L124:
	.loc 1 385 0
	movq	$0, referenced_regs(%rip)	#, referenced_regs
	.loc 1 386 0
	movq	-264(%rbp), %rax	# insn, tmp275
	movq	32(%rax), %rax	# insn_38->fld[3].rtx, D.12659
	movq	%rax, %rdi	# D.12659,
	call	mark_referenced_regs	#
	.loc 1 387 0
	movq	referenced_regs(%rip), %rdx	# referenced_regs, referenced_regs.52
	movq	hard_regs_saved(%rip), %rax	# hard_regs_saved, hard_regs_saved.53
	andq	%rdx, %rax	# referenced_regs.52, referenced_regs.54
	movq	%rax, referenced_regs(%rip)	# referenced_regs.54, referenced_regs
.L125:
	.loc 1 390 0
	movl	$0, -336(%rbp)	#, regno
	jmp	.L126	#
.L130:
	.loc 1 391 0
	movq	referenced_regs(%rip), %rdx	# referenced_regs, referenced_regs.55
	movl	-336(%rbp), %eax	# regno, tmp276
	movl	%eax, %ecx	# tmp276, tmp357
	shrq	%cl, %rdx	# tmp357, D.12660
	movq	%rdx, %rax	# D.12660, D.12660
	andl	$1, %eax	#, D.12660
	testq	%rax, %rax	# D.12660
	je	.L127	#,
	.loc 1 392 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.57
	andl	$33554432, %eax	#, D.12661
	testl	%eax, %eax	# D.12661
	je	.L128	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.56
	jmp	.L129	#
.L128:
	.loc 1 392 0 discriminator 2
	movl	$4, %eax	#, iftmp.56
.L129:
	.loc 1 392 0 discriminator 3
	leaq	-240(%rbp), %rcx	#, tmp277
	movl	-336(%rbp), %edx	# regno, tmp278
	movq	-288(%rbp), %rdi	# chain, tmp279
	movq	%rcx, %r8	# tmp277,
	movl	%eax, %ecx	# iftmp.56,
	movl	$1, %esi	#,
	call	insert_restore	#
	addl	%eax, -336(%rbp)	# D.12661, regno
.L127:
	.loc 1 390 0 is_stmt 1
	addl	$1, -336(%rbp)	#, regno
.L126:
	.loc 1 390 0 is_stmt 0 discriminator 1
	cmpl	$52, -336(%rbp)	#, regno
	jle	.L130	#,
.L123:
.LBE6:
	.loc 1 395 0 is_stmt 1
	cmpl	$34, -312(%rbp)	#, code
	jne	.L122	#,
.LBB7:
	.loc 1 402 0
	movq	$0, -296(%rbp)	#, hard_regs_to_save
	movq	-288(%rbp), %rax	# chain, tmp280
	leaq	40(%rax), %rdx	#, D.12662
	leaq	-296(%rbp), %rax	#, tmp281
	movq	%rdx, %rsi	# D.12662,
	movq	%rax, %rdi	# tmp281,
	call	reg_set_to_hard_reg_set	#
	.loc 1 405 0
	movl	$0, -332(%rbp)	#, regno
	jmp	.L131	#
.L134:
	.loc 1 406 0
	movq	-296(%rbp), %rdx	# hard_regs_to_save, hard_regs_to_save.58
	movl	-332(%rbp), %eax	# regno, tmp282
	movl	%eax, %ecx	# tmp282, tmp359
	shrq	%cl, %rdx	# tmp359, D.12660
	movq	%rdx, %rax	# D.12660, D.12660
	andl	$1, %eax	#, D.12660
	testq	%rax, %rax	# D.12660
	je	.L132	#,
	.loc 1 407 0
	movl	-332(%rbp), %eax	# regno, tmp284
	movslq	%eax, %rdx	# tmp284, tmp283
	movq	%rdx, %rax	# tmp283, tmp285
	salq	$2, %rax	#, tmp285
	addq	%rdx, %rax	# tmp283, tmp285
	salq	$2, %rax	#, tmp286
	addq	$regno_save_mode+4, %rax	#, tmp287
	movl	(%rax), %edx	# regno_save_mode, D.12663
	movl	-332(%rbp), %eax	# regno, tmp289
	cltq
	movl	%edx, -240(%rbp,%rax,4)	# D.12663, save_mode
	jmp	.L133	#
.L132:
	.loc 1 409 0
	movl	-332(%rbp), %eax	# regno, tmp291
	cltq
	movl	$0, -240(%rbp,%rax,4)	#, save_mode
.L133:
	.loc 1 405 0
	addl	$1, -332(%rbp)	#, regno
.L131:
	.loc 1 405 0 is_stmt 0 discriminator 1
	cmpl	$52, -332(%rbp)	#, regno
	jle	.L134	#,
.LBB8:
	.loc 1 413 0 is_stmt 1
	movq	-288(%rbp), %rax	# chain, tmp292
	movq	40(%rax), %rax	# chain_1->live_throughout.first, tmp293
	movq	%rax, -280(%rbp)	# tmp293, ptr_
	movl	$0, -308(%rbp)	#, indx_
	movl	$53, -328(%rbp)	#, bit_num_
	movl	$0, -324(%rbp)	#, word_num_
	jmp	.L135	#
.L137:
	.loc 1 413 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# ptr_, tmp294
	movq	(%rax), %rax	# ptr__8->next, tmp295
	movq	%rax, -280(%rbp)	# tmp295, ptr_
.L135:
	cmpq	$0, -280(%rbp)	#, ptr_
	je	.L136	#,
	.loc 1 413 0 discriminator 2
	movq	-280(%rbp), %rax	# ptr_, tmp296
	movl	16(%rax), %eax	# ptr__8->indx, D.12664
	cmpl	-308(%rbp), %eax	# indx_, D.12664
	jb	.L137	#,
.L136:
	.loc 1 413 0 discriminator 3
	cmpq	$0, -280(%rbp)	#, ptr_
	je	.L138	#,
	.loc 1 413 0 discriminator 1
	movq	-280(%rbp), %rax	# ptr_, tmp297
	movl	16(%rax), %eax	# ptr__8->indx, D.12664
	cmpl	-308(%rbp), %eax	# indx_, D.12664
	je	.L138	#,
	movl	$0, -328(%rbp)	#, bit_num_
	movl	$0, -324(%rbp)	#, word_num_
	jmp	.L139	#
.L138:
	.loc 1 413 0 discriminator 2
	jmp	.L139	#
.L185:
	.loc 1 413 0
	jmp	.L140	#
.L184:
.LBB9:
	.loc 1 413 0 discriminator 2
	movq	-280(%rbp), %rax	# ptr_, tmp298
	movl	-324(%rbp), %edx	# word_num_, tmp299
	addq	$2, %rdx	#, tmp300
	movq	8(%rax,%rdx,8), %rax	# ptr__9->bits, tmp301
	movq	%rax, -272(%rbp)	# tmp301, word_
	cmpq	$0, -272(%rbp)	#, word_
	je	.L141	#,
	.loc 1 413 0 discriminator 1
	jmp	.L142	#
.L183:
.LBB10:
	.loc 1 413 0 discriminator 2
	movl	-328(%rbp), %eax	# bit_num_, bit_num_.59
	movl	$1, %edx	#, tmp302
	movl	%eax, %ecx	# bit_num_.59, tmp361
	salq	%cl, %rdx	# tmp361, tmp303
	movq	%rdx, %rax	# tmp303, tmp303
	movq	%rax, -248(%rbp)	# tmp303, mask_
	movq	-248(%rbp), %rax	# mask_, tmp304
	movq	-272(%rbp), %rdx	# word_, tmp305
	andq	%rdx, %rax	# tmp305, D.12660
	testq	%rax, %rax	# D.12660
	je	.L143	#,
	.loc 1 413 0 discriminator 1
	movq	-248(%rbp), %rax	# mask_, tmp306
	notq	%rax	# D.12660
	andq	%rax, -272(%rbp)	# D.12660, word_
	movq	-280(%rbp), %rax	# ptr_, tmp307
	movl	16(%rax), %eax	# ptr__9->indx, D.12664
	leal	(%rax,%rax), %edx	#, D.12664
	movl	-324(%rbp), %eax	# word_num_, tmp308
	addl	%edx, %eax	# D.12664, D.12664
	sall	$6, %eax	#, D.12664
	movl	%eax, %edx	# D.12664, D.12664
	movl	-328(%rbp), %eax	# bit_num_, tmp309
	addl	%edx, %eax	# D.12664, D.12664
	movl	%eax, -332(%rbp)	# D.12664, regno
.LBB11:
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.60
	movl	-332(%rbp), %edx	# regno, tmp310
	movslq	%edx, %rdx	# tmp310, D.12660
	addq	%rdx, %rdx	# D.12660
	addq	%rdx, %rax	# D.12660, D.12665
	movzwl	(%rax), %eax	# *_94, D.12666
	cwtl
	movl	%eax, -304(%rbp)	# tmp311, r
	cmpl	$0, -304(%rbp)	#, r
	js	.L144	#,
.LBB12:
	cmpl	$7, -304(%rbp)	#, r
	jle	.L145	#,
	cmpl	$15, -304(%rbp)	#, r
	jle	.L146	#,
.L145:
	.loc 1 413 0 discriminator 2
	cmpl	$20, -304(%rbp)	#, r
	jle	.L147	#,
	.loc 1 413 0 discriminator 1
	cmpl	$28, -304(%rbp)	#, r
	jle	.L146	#,
.L147:
	.loc 1 413 0 discriminator 2
	cmpl	$44, -304(%rbp)	#, r
	jle	.L148	#,
	.loc 1 413 0 discriminator 1
	cmpl	$52, -304(%rbp)	#, r
	jle	.L146	#,
.L148:
	.loc 1 413 0 discriminator 2
	cmpl	$28, -304(%rbp)	#, r
	jle	.L149	#,
	.loc 1 413 0 discriminator 1
	cmpl	$36, -304(%rbp)	#, r
	jg	.L149	#,
.L146:
	movq	cfun(%rip), %rax	# cfun, cfun.63
	movq	24(%rax), %rax	# cfun.63_147->emit, D.12667
	movq	80(%rax), %rax	# _148->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp312
	movslq	%edx, %rdx	# tmp312, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_152, D.12659
	movzbl	2(%rax), %eax	# _153->mode, D.12657
	movzbl	%al, %eax	# D.12657, D.12661
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12669
	cmpl	$5, %eax	#, D.12669
	je	.L150	#,
	.loc 1 413 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.64
	movq	24(%rax), %rax	# cfun.64_157->emit, D.12667
	movq	80(%rax), %rax	# _158->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp314
	movslq	%edx, %rdx	# tmp314, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_162, D.12659
	movzbl	2(%rax), %eax	# _163->mode, D.12657
	movzbl	%al, %eax	# D.12657, D.12661
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12669
	cmpl	$6, %eax	#, D.12669
	jne	.L151	#,
.L150:
	.loc 1 413 0 discriminator 1
	movl	$2, %eax	#, iftmp.62
	jmp	.L152	#
.L151:
	movl	$1, %eax	#, iftmp.62
.L152:
	.loc 1 413 0 discriminator 3
	jmp	.L153	#
.L149:
	.loc 1 413 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.66
	movq	24(%rax), %rax	# cfun.66_97->emit, D.12667
	movq	80(%rax), %rax	# _98->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp316
	movslq	%edx, %rdx	# tmp316, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_102, D.12659
	movzbl	2(%rax), %eax	# _103->mode, D.12657
	cmpb	$18, %al	#, D.12657
	jne	.L154	#,
	.loc 1 413 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.68
	andl	$33554432, %eax	#, D.12661
	testl	%eax, %eax	# D.12661
	je	.L155	#,
	movl	$2, %eax	#, iftmp.67
	jmp	.L153	#
.L155:
	.loc 1 413 0 discriminator 2
	movl	$3, %eax	#, iftmp.67
	jmp	.L153	#
.L154:
	movq	cfun(%rip), %rax	# cfun, cfun.70
	movq	24(%rax), %rax	# cfun.70_110->emit, D.12667
	movq	80(%rax), %rax	# _111->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp317
	movslq	%edx, %rdx	# tmp317, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_115, D.12659
	movzbl	2(%rax), %eax	# _116->mode, D.12657
	cmpb	$24, %al	#, D.12657
	jne	.L158	#,
	.loc 1 413 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.72
	andl	$33554432, %eax	#, D.12661
	testl	%eax, %eax	# D.12661
	je	.L159	#,
	movl	$4, %eax	#, iftmp.71
	jmp	.L153	#
.L159:
	.loc 1 413 0 discriminator 2
	movl	$6, %eax	#, iftmp.71
	jmp	.L153	#
.L158:
	movq	cfun(%rip), %rax	# cfun, cfun.73
	movq	24(%rax), %rax	# cfun.73_123->emit, D.12667
	movq	80(%rax), %rax	# _124->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp318
	movslq	%edx, %rdx	# tmp318, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_128, D.12659
	movzbl	2(%rax), %eax	# _129->mode, D.12657
	movzbl	%al, %eax	# D.12657, D.12661
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12657
	movzbl	%al, %edx	# D.12657, D.12661
	movl	target_flags(%rip), %eax	# target_flags, target_flags.75
	andl	$33554432, %eax	#, D.12661
	testl	%eax, %eax	# D.12661
	je	.L162	#,
	.loc 1 413 0 discriminator 1
	movl	$8, %eax	#, iftmp.74
	jmp	.L163	#
.L162:
	.loc 1 413 0 discriminator 2
	movl	$4, %eax	#, iftmp.74
.L163:
	.loc 1 413 0 discriminator 3
	addl	%edx, %eax	# D.12661, D.12661
	subl	$1, %eax	#, D.12661
	movl	target_flags(%rip), %edx	# target_flags, target_flags.77
	andl	$33554432, %edx	#, D.12661
	testl	%edx, %edx	# D.12661
	je	.L164	#,
	.loc 1 413 0 discriminator 1
	movl	$8, %ebx	#, iftmp.76
	jmp	.L165	#
.L164:
	.loc 1 413 0 discriminator 2
	movl	$4, %ebx	#, iftmp.76
.L165:
	.loc 1 413 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.76
.L153:
	movl	%eax, -320(%rbp)	# iftmp.61, nregs
	cmpl	$17, -304(%rbp)	#, r
	je	.L166	#,
	.loc 1 413 0 discriminator 1
	cmpl	$18, -304(%rbp)	#, r
	je	.L166	#,
	movq	cfun(%rip), %rax	# cfun, cfun.80
	movq	24(%rax), %rax	# cfun.80_171->emit, D.12667
	movq	80(%rax), %rax	# _172->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp322
	movslq	%edx, %rdx	# tmp322, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_176, D.12659
	movzbl	2(%rax), %eax	# _177->mode, D.12657
	testb	%al, %al	# D.12657
	jne	.L167	#,
	.loc 1 413 0 discriminator 4
	cmpl	$1, -320(%rbp)	#, nregs
	jne	.L168	#,
.L167:
	.loc 1 413 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.82
	movq	24(%rax), %rax	# cfun.82_180->emit, D.12667
	movq	80(%rax), %rax	# _181->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp323
	movslq	%edx, %rdx	# tmp323, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_185, D.12659
	movzbl	2(%rax), %eax	# _186->mode, D.12657
	testb	%al, %al	# D.12657
	jne	.L169	#,
	.loc 1 413 0 discriminator 5
	movl	-320(%rbp), %edx	# nregs, nregs.83
	movl	-304(%rbp), %eax	# r, r.84
	movl	%edx, %esi	# nregs.83,
	movl	%eax, %edi	# r.84,
	call	choose_hard_reg_mode	#
	jmp	.L170	#
.L169:
	.loc 1 413 0 discriminator 6
	movq	cfun(%rip), %rax	# cfun, cfun.86
	movq	24(%rax), %rax	# cfun.86_191->emit, D.12667
	movq	80(%rax), %rax	# _192->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp324
	movslq	%edx, %rdx	# tmp324, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_196, D.12659
	movzbl	2(%rax), %eax	# _197->mode, D.12657
	cmpb	$3, %al	#, D.12657
	jne	.L171	#,
	.loc 1 413 0 discriminator 8
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.87
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.88
	movl	%eax, %ecx	# ix86_cpu.89, tmp365
	sarl	%cl, %edx	# tmp365, D.12661
	movl	%edx, %eax	# D.12661, D.12661
	andl	$1, %eax	#, D.12661
	testl	%eax, %eax	# D.12661
	je	.L172	#,
.L171:
	.loc 1 413 0 discriminator 7
	movq	cfun(%rip), %rax	# cfun, cfun.91
	movq	24(%rax), %rax	# cfun.91_205->emit, D.12667
	movq	80(%rax), %rax	# _206->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp325
	movslq	%edx, %rdx	# tmp325, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_210, D.12659
	movzbl	2(%rax), %eax	# _211->mode, D.12657
	cmpb	$2, %al	#, D.12657
	jne	.L173	#,
	.loc 1 413 0 discriminator 10
	cmpl	$3, -304(%rbp)	#, r
	jle	.L173	#,
	.loc 1 413 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.92
	andl	$33554432, %eax	#, D.12661
	testl	%eax, %eax	# D.12661
	je	.L174	#,
.L173:
	.loc 1 413 0 discriminator 9
	movq	cfun(%rip), %rax	# cfun, cfun.93
	movq	24(%rax), %rax	# cfun.93_216->emit, D.12667
	movq	80(%rax), %rax	# _217->x_regno_reg_rtx, D.12668
	movl	-332(%rbp), %edx	# regno, tmp326
	movslq	%edx, %rdx	# tmp326, D.12660
	salq	$3, %rdx	#, D.12660
	addq	%rdx, %rax	# D.12660, D.12668
	movq	(%rax), %rax	# *_221, D.12659
	movzbl	2(%rax), %eax	# _222->mode, D.12657
	movzbl	%al, %eax	# D.12657, iftmp.90
	jmp	.L178	#
.L174:
	.loc 1 413 0 discriminator 1
	movl	$4, %eax	#, iftmp.90
	jmp	.L178	#
.L172:
	movl	$4, %eax	#, iftmp.85
.L170:
	.loc 1 413 0 discriminator 13
	jmp	.L178	#
.L168:
	.loc 1 413 0 discriminator 1
	movl	$0, %eax	#, iftmp.79
	jmp	.L178	#
.L166:
	.loc 1 413 0 discriminator 2
	movl	$0, %eax	#, iftmp.78
.L178:
	.loc 1 413 0 discriminator 15
	movl	%eax, -300(%rbp)	# iftmp.78, mode
	movl	-300(%rbp), %eax	# mode, mode.94
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.12656
	movl	-304(%rbp), %eax	# r, tmp329
	cltq
	movl	-240(%rbp,%rax,4), %eax	# save_mode, D.12663
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.12656
	cmpw	%ax, %dx	# D.12656, D.12656
	jbe	.L179	#,
	.loc 1 413 0 discriminator 1
	movl	-304(%rbp), %eax	# r, tmp332
	cltq
	movl	-300(%rbp), %edx	# mode, tmp333
	movl	%edx, -240(%rbp,%rax,4)	# tmp333, save_mode
	jmp	.L180	#
.L179:
	.loc 1 413 0 discriminator 2
	jmp	.L180	#
.L181:
	movl	-320(%rbp), %eax	# nregs, tmp334
	movl	-304(%rbp), %edx	# r, tmp335
	addl	%edx, %eax	# tmp335, D.12661
	movl	$1, %edx	#, tmp336
	movl	%eax, %ecx	# D.12661, tmp366
	salq	%cl, %rdx	# tmp366, D.12660
	movq	-296(%rbp), %rax	# hard_regs_to_save, hard_regs_to_save.95
	orq	%rdx, %rax	# D.12660, hard_regs_to_save.96
	movq	%rax, -296(%rbp)	# hard_regs_to_save.96, hard_regs_to_save
.L180:
	.loc 1 413 0 discriminator 1
	movl	-320(%rbp), %eax	# nregs, nregs.97
	leal	-1(%rax), %edx	#, tmp337
	movl	%edx, -320(%rbp)	# tmp337, nregs
	testl	%eax, %eax	# nregs.97
	jg	.L181	#,
.LBE12:
.LBE11:
	.loc 1 413 0
	cmpq	$0, -272(%rbp)	#, word_
	jne	.L143	#,
	jmp	.L200	#
.L144:
.LBB13:
	.loc 1 413 0 discriminator 2
	movl	$__FUNCTION__.11132, %edx	#,
	movl	$434, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L200:
.LBE13:
	.loc 1 413 0 discriminator 1
	jmp	.L141	#
.L143:
.LBE10:
	.loc 1 413 0 discriminator 2
	addl	$1, -328(%rbp)	#, bit_num_
.L142:
	.loc 1 413 0 discriminator 1
	cmpl	$63, -328(%rbp)	#, bit_num_
	jbe	.L183	#,
.L141:
	.loc 1 413 0 discriminator 2
	movl	$0, -328(%rbp)	#, bit_num_
.LBE9:
	addl	$1, -324(%rbp)	#, word_num_
.L140:
	.loc 1 413 0 discriminator 1
	cmpl	$1, -324(%rbp)	#, word_num_
	jbe	.L184	#,
	.loc 1 413 0 discriminator 3
	movl	$0, -324(%rbp)	#, word_num_
	movq	-280(%rbp), %rax	# ptr_, tmp338
	movq	(%rax), %rax	# ptr__9->next, tmp339
	movq	%rax, -280(%rbp)	# tmp339, ptr_
.L139:
	.loc 1 413 0 discriminator 1
	cmpq	$0, -280(%rbp)	#, ptr_
	jne	.L185	#,
.LBE8:
	.loc 1 440 0 is_stmt 1
	movq	$0, this_insn_sets(%rip)	#, this_insn_sets
	.loc 1 441 0
	movq	-264(%rbp), %rax	# insn, tmp340
	movq	32(%rax), %rax	# insn_38->fld[3].rtx, D.12659
	movl	$0, %edx	#,
	movl	$mark_set_regs, %esi	#,
	movq	%rax, %rdi	# D.12659,
	call	note_stores	#
	.loc 1 444 0
	movq	call_fixed_reg_set(%rip), %rax	# call_fixed_reg_set, call_fixed_reg_set.98
	notq	%rax	# D.12660
	movq	%rax, %rdx	# D.12660, D.12660
	movq	-296(%rbp), %rax	# hard_regs_to_save, hard_regs_to_save.99
	andq	%rdx, %rax	# D.12660, hard_regs_to_save.100
	movq	%rax, -296(%rbp)	# hard_regs_to_save.100, hard_regs_to_save
	.loc 1 445 0
	movq	this_insn_sets(%rip), %rax	# this_insn_sets, this_insn_sets.101
	notq	%rax	# D.12660
	movq	%rax, %rdx	# D.12660, D.12660
	movq	-296(%rbp), %rax	# hard_regs_to_save, hard_regs_to_save.102
	andq	%rdx, %rax	# D.12660, hard_regs_to_save.103
	movq	%rax, -296(%rbp)	# hard_regs_to_save.103, hard_regs_to_save
	.loc 1 446 0
	movq	hard_regs_saved(%rip), %rax	# hard_regs_saved, hard_regs_saved.104
	notq	%rax	# D.12660
	movq	%rax, %rdx	# D.12660, D.12660
	movq	-296(%rbp), %rax	# hard_regs_to_save, hard_regs_to_save.105
	andq	%rdx, %rax	# D.12660, hard_regs_to_save.106
	movq	%rax, -296(%rbp)	# hard_regs_to_save.106, hard_regs_to_save
	.loc 1 447 0
	movq	-296(%rbp), %rdx	# hard_regs_to_save, hard_regs_to_save.107
	movq	call_used_reg_set(%rip), %rax	# call_used_reg_set, call_used_reg_set.108
	andq	%rdx, %rax	# hard_regs_to_save.107, hard_regs_to_save.109
	movq	%rax, -296(%rbp)	# hard_regs_to_save.109, hard_regs_to_save
	.loc 1 449 0
	movl	$0, -332(%rbp)	#, regno
	jmp	.L186	#
.L188:
	.loc 1 450 0
	movq	-296(%rbp), %rdx	# hard_regs_to_save, hard_regs_to_save.110
	movl	-332(%rbp), %eax	# regno, tmp341
	movl	%eax, %ecx	# tmp341, tmp371
	shrq	%cl, %rdx	# tmp371, D.12660
	movq	%rdx, %rax	# D.12660, D.12660
	andl	$1, %eax	#, D.12660
	testq	%rax, %rax	# D.12660
	je	.L187	#,
	.loc 1 451 0
	leaq	-240(%rbp), %rsi	#, tmp342
	leaq	-296(%rbp), %rcx	#, tmp343
	movl	-332(%rbp), %edx	# regno, tmp344
	movq	-288(%rbp), %rax	# chain, tmp345
	movq	%rsi, %r8	# tmp342,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp345,
	call	insert_save	#
	addl	%eax, -332(%rbp)	# D.12661, regno
.L187:
	.loc 1 449 0
	addl	$1, -332(%rbp)	#, regno
.L186:
	.loc 1 449 0 is_stmt 0 discriminator 1
	cmpl	$52, -332(%rbp)	#, regno
	jle	.L188	#,
	.loc 1 454 0 is_stmt 1
	movl	$0, n_regs_saved(%rip)	#, n_regs_saved
	.loc 1 455 0
	movl	$0, -332(%rbp)	#, regno
	jmp	.L189	#
.L191:
	.loc 1 456 0
	movq	hard_regs_saved(%rip), %rdx	# hard_regs_saved, hard_regs_saved.111
	movl	-332(%rbp), %eax	# regno, tmp346
	movl	%eax, %ecx	# tmp346, tmp373
	shrq	%cl, %rdx	# tmp373, D.12660
	movq	%rdx, %rax	# D.12660, D.12660
	andl	$1, %eax	#, D.12660
	testq	%rax, %rax	# D.12660
	je	.L190	#,
	.loc 1 457 0
	movl	n_regs_saved(%rip), %eax	# n_regs_saved, n_regs_saved.112
	addl	$1, %eax	#, n_regs_saved.113
	movl	%eax, n_regs_saved(%rip)	# n_regs_saved.113, n_regs_saved
.L190:
	.loc 1 455 0
	addl	$1, -332(%rbp)	#, regno
.L189:
	.loc 1 455 0 is_stmt 0 discriminator 1
	cmpl	$52, -332(%rbp)	#, regno
	jle	.L191	#,
.L122:
.LBE7:
	.loc 1 461 0 is_stmt 1
	movq	-288(%rbp), %rax	# chain, tmp347
	movq	(%rax), %rax	# chain_1->next, D.12670
	testq	%rax, %rax	# D.12670
	je	.L192	#,
	.loc 1 461 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# chain, tmp348
	movq	(%rax), %rax	# chain_1->next, D.12670
	movl	24(%rax), %edx	# _278->block, D.12661
	movq	-288(%rbp), %rax	# chain, tmp349
	movl	24(%rax), %eax	# chain_1->block, D.12661
	cmpl	%eax, %edx	# D.12661, D.12661
	jle	.L193	#,
.L192:
.LBB14:
	.loc 1 468 0 is_stmt 1
	movl	n_regs_saved(%rip), %eax	# n_regs_saved, n_regs_saved.114
	testl	%eax, %eax	# n_regs_saved.114
	je	.L193	#,
	.loc 1 469 0
	movl	$0, -316(%rbp)	#, regno
	jmp	.L194	#
.L198:
	.loc 1 470 0
	movq	hard_regs_saved(%rip), %rdx	# hard_regs_saved, hard_regs_saved.115
	movl	-316(%rbp), %eax	# regno, tmp350
	movl	%eax, %ecx	# tmp350, tmp375
	shrq	%cl, %rdx	# tmp375, D.12660
	movq	%rdx, %rax	# D.12660, D.12660
	andl	$1, %eax	#, D.12660
	testq	%rax, %rax	# D.12660
	je	.L195	#,
	.loc 1 472 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.117
	andl	$33554432, %eax	#, D.12661
	.loc 1 471 0
	testl	%eax, %eax	# D.12661
	je	.L196	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.116
	jmp	.L197	#
.L196:
	.loc 1 471 0 discriminator 2
	movl	$4, %eax	#, iftmp.116
.L197:
	.loc 1 471 0 discriminator 3
	movq	-264(%rbp), %rdx	# insn, tmp351
	movzwl	(%rdx), %edx	# insn_38->code, D.12656
	cmpw	$33, %dx	#, D.12656
	sete	%dl	#, D.12671
	movzbl	%dl, %esi	# D.12671, D.12661
	leaq	-240(%rbp), %rcx	#, tmp352
	movl	-316(%rbp), %edx	# regno, tmp353
	movq	-288(%rbp), %rdi	# chain, tmp354
	movq	%rcx, %r8	# tmp352,
	movl	%eax, %ecx	# iftmp.116,
	call	insert_restore	#
	addl	%eax, -316(%rbp)	# D.12661, regno
.L195:
	.loc 1 469 0 is_stmt 1
	addl	$1, -316(%rbp)	#, regno
.L194:
	.loc 1 469 0 is_stmt 0 discriminator 1
	cmpl	$52, -316(%rbp)	#, regno
	jle	.L198	#,
.L193:
.LBE14:
.LBE5:
	.loc 1 361 0 is_stmt 1
	movq	-256(%rbp), %rax	# next, tmp355
	movq	%rax, -288(%rbp)	# tmp355, chain
.L120:
	.loc 1 361 0 is_stmt 0 discriminator 1
	cmpq	$0, -288(%rbp)	#, chain
	jne	.L199	#,
	.loc 1 475 0 is_stmt 1
	addq	$328, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	save_call_clobbered_regs, .-save_call_clobbered_regs
	.type	mark_set_regs, @function
mark_set_regs:
.LFB6:
	.loc 1 486 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# reg, reg
	movq	%rsi, -64(%rbp)	# setter, setter
	movq	%rdx, -72(%rbp)	# data, data
	.loc 1 488 0
	movq	-56(%rbp), %rax	# reg, tmp94
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.12672
	movzbl	%al, %eax	# D.12672, tmp95
	movl	%eax, -32(%rbp)	# tmp95, mode
	.loc 1 490 0
	movq	-56(%rbp), %rax	# reg, tmp96
	movzwl	(%rax), %eax	# reg_11(D)->code, D.12673
	cmpw	$63, %ax	#, D.12673
	jne	.L202	#,
.LBB15:
	.loc 1 492 0
	movq	-56(%rbp), %rax	# reg, tmp97
	movq	8(%rax), %rax	# reg_11(D)->fld[0].rtx, tmp98
	movq	%rax, -24(%rbp)	# tmp98, inner
	.loc 1 493 0
	movq	-24(%rbp), %rax	# inner, tmp99
	movzwl	(%rax), %eax	# inner_15->code, D.12673
	cmpw	$61, %ax	#, D.12673
	jne	.L203	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# inner, tmp100
	movl	8(%rax), %eax	# inner_15->fld[0].rtuint, D.12674
	cmpl	$52, %eax	#, D.12674
	jbe	.L204	#,
.L203:
	.loc 1 494 0 is_stmt 1
	jmp	.L201	#
.L204:
	.loc 1 496 0
	movq	-56(%rbp), %rax	# reg, tmp101
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	subreg_hard_regno	#
	movl	%eax, -40(%rbp)	# tmp102, regno
.LBE15:
	jmp	.L206	#
.L202:
	.loc 1 498 0
	movq	-56(%rbp), %rax	# reg, tmp103
	movzwl	(%rax), %eax	# reg_11(D)->code, D.12673
	cmpw	$61, %ax	#, D.12673
	jne	.L207	#,
	.loc 1 499 0
	movq	-56(%rbp), %rax	# reg, tmp104
	movl	8(%rax), %eax	# reg_11(D)->fld[0].rtuint, D.12674
	cmpl	$52, %eax	#, D.12674
	ja	.L207	#,
	.loc 1 500 0
	movq	-56(%rbp), %rax	# reg, tmp105
	movl	8(%rax), %eax	# reg_11(D)->fld[0].rtuint, D.12674
	movl	%eax, -40(%rbp)	# D.12674, regno
	jmp	.L206	#
.L207:
	.loc 1 502 0
	jmp	.L201	#
.L206:
	.loc 1 504 0
	cmpl	$7, -40(%rbp)	#, regno
	jle	.L208	#,
	.loc 1 504 0 is_stmt 0 discriminator 1
	cmpl	$15, -40(%rbp)	#, regno
	jle	.L209	#,
.L208:
	.loc 1 504 0 discriminator 2
	cmpl	$20, -40(%rbp)	#, regno
	jle	.L210	#,
	.loc 1 504 0 discriminator 1
	cmpl	$28, -40(%rbp)	#, regno
	jle	.L209	#,
.L210:
	.loc 1 504 0 discriminator 2
	cmpl	$44, -40(%rbp)	#, regno
	jle	.L211	#,
	.loc 1 504 0 discriminator 1
	cmpl	$52, -40(%rbp)	#, regno
	jle	.L209	#,
.L211:
	.loc 1 504 0 discriminator 2
	cmpl	$28, -40(%rbp)	#, regno
	jle	.L212	#,
	.loc 1 504 0 discriminator 1
	cmpl	$36, -40(%rbp)	#, regno
	jg	.L212	#,
.L209:
	movl	-32(%rbp), %eax	# mode, mode.120
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12676
	cmpl	$5, %eax	#, D.12676
	je	.L213	#,
	.loc 1 504 0 discriminator 2
	movl	-32(%rbp), %eax	# mode, mode.121
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12676
	cmpl	$6, %eax	#, D.12676
	jne	.L214	#,
.L213:
	.loc 1 504 0 discriminator 1
	movl	$2, %eax	#, iftmp.119
	jmp	.L215	#
.L214:
	movl	$1, %eax	#, iftmp.119
.L215:
	.loc 1 504 0 discriminator 3
	jmp	.L216	#
.L212:
	.loc 1 504 0 discriminator 2
	cmpl	$18, -32(%rbp)	#, mode
	jne	.L217	#,
	.loc 1 504 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.124
	andl	$33554432, %eax	#, D.12675
	testl	%eax, %eax	# D.12675
	je	.L218	#,
	movl	$2, %eax	#, iftmp.123
	jmp	.L216	#
.L218:
	.loc 1 504 0 discriminator 2
	movl	$3, %eax	#, iftmp.123
	jmp	.L216	#
.L217:
	cmpl	$24, -32(%rbp)	#, mode
	jne	.L221	#,
	.loc 1 504 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.127
	andl	$33554432, %eax	#, D.12675
	testl	%eax, %eax	# D.12675
	je	.L222	#,
	movl	$4, %eax	#, iftmp.126
	jmp	.L216	#
.L222:
	.loc 1 504 0 discriminator 2
	movl	$6, %eax	#, iftmp.126
	jmp	.L216	#
.L221:
	movl	-32(%rbp), %eax	# mode, mode.128
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12672
	movzbl	%al, %edx	# D.12672, D.12675
	movl	target_flags(%rip), %eax	# target_flags, target_flags.130
	andl	$33554432, %eax	#, D.12675
	testl	%eax, %eax	# D.12675
	je	.L225	#,
	.loc 1 504 0 discriminator 1
	movl	$8, %eax	#, iftmp.129
	jmp	.L226	#
.L225:
	.loc 1 504 0 discriminator 2
	movl	$4, %eax	#, iftmp.129
.L226:
	.loc 1 504 0 discriminator 3
	addl	%edx, %eax	# D.12675, D.12675
	subl	$1, %eax	#, D.12675
	movl	target_flags(%rip), %edx	# target_flags, target_flags.132
	andl	$33554432, %edx	#, D.12675
	testl	%edx, %edx	# D.12675
	je	.L227	#,
	.loc 1 504 0 discriminator 1
	movl	$8, %ebx	#, iftmp.131
	jmp	.L228	#
.L227:
	.loc 1 504 0 discriminator 2
	movl	$4, %ebx	#, iftmp.131
.L228:
	.loc 1 504 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.131
.L216:
	movl	-40(%rbp), %edx	# regno, tmp114
	addl	%edx, %eax	# tmp114, tmp113
	movl	%eax, -28(%rbp)	# tmp113, endregno
	.loc 1 506 0 is_stmt 1 discriminator 3
	movl	-40(%rbp), %eax	# regno, tmp115
	movl	%eax, -36(%rbp)	# tmp115, i
	jmp	.L229	#
.L230:
	.loc 1 507 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp116
	movl	$1, %edx	#, tmp117
	movl	%eax, %ecx	# tmp116, tmp120
	salq	%cl, %rdx	# tmp120, D.12677
	movq	this_insn_sets(%rip), %rax	# this_insn_sets, this_insn_sets.133
	orq	%rdx, %rax	# D.12677, this_insn_sets.134
	movq	%rax, this_insn_sets(%rip)	# this_insn_sets.134, this_insn_sets
	.loc 1 506 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L229:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp118
	cmpl	-28(%rbp), %eax	# endregno, tmp118
	jl	.L230	#,
.L201:
	.loc 1 508 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mark_set_regs, .-mark_set_regs
	.type	add_stored_regs, @function
add_stored_regs:
.LFB7:
	.loc 1 519 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# reg, reg
	movq	%rsi, -64(%rbp)	# setter, setter
	movq	%rdx, -72(%rbp)	# data, data
	.loc 1 521 0
	movq	-56(%rbp), %rax	# reg, tmp103
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.12678
	movzbl	%al, %eax	# D.12678, tmp104
	movl	%eax, -28(%rbp)	# tmp104, mode
	.loc 1 522 0
	movl	$0, -32(%rbp)	#, offset
	.loc 1 524 0
	movq	-64(%rbp), %rax	# setter, tmp105
	movzwl	(%rax), %eax	# setter_16(D)->code, D.12679
	cmpw	$49, %ax	#, D.12679
	jne	.L232	#,
	.loc 1 525 0
	jmp	.L231	#
.L232:
	.loc 1 527 0
	movq	-56(%rbp), %rax	# reg, tmp106
	movzwl	(%rax), %eax	# reg_12(D)->code, D.12679
	cmpw	$63, %ax	#, D.12679
	jne	.L234	#,
	.loc 1 527 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# reg, tmp107
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, D.12680
	movzwl	(%rax), %eax	# _19->code, D.12679
	cmpw	$61, %ax	#, D.12679
	jne	.L234	#,
	.loc 1 532 0 is_stmt 1
	movq	-56(%rbp), %rax	# reg, tmp108
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.12678
	.loc 1 529 0
	movzbl	%al, %ecx	# D.12678, D.12681
	movq	-56(%rbp), %rax	# reg, tmp109
	movl	16(%rax), %edx	# reg_12(D)->fld[1].rtuint, D.12682
	.loc 1 530 0
	movq	-56(%rbp), %rax	# reg, tmp110
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, D.12680
	movzbl	2(%rax), %eax	# _24->mode, D.12678
	.loc 1 529 0
	movzbl	%al, %esi	# D.12678, D.12681
	movq	-56(%rbp), %rax	# reg, tmp111
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, D.12680
	movl	8(%rax), %eax	# _27->fld[0].rtuint, D.12682
	movl	%eax, %edi	# D.12682,
	call	subreg_regno_offset	#
	movl	%eax, -32(%rbp)	# D.12682, offset
	.loc 1 533 0
	movq	-56(%rbp), %rax	# reg, tmp112
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, tmp113
	movq	%rax, -56(%rbp)	# tmp113, reg
.L234:
	.loc 1 536 0
	movq	-56(%rbp), %rax	# reg, tmp114
	movzwl	(%rax), %eax	# reg_1->code, D.12679
	cmpw	$61, %ax	#, D.12679
	jne	.L235	#,
	.loc 1 536 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# reg, tmp115
	movl	8(%rax), %eax	# reg_1->fld[0].rtuint, D.12682
	cmpl	$52, %eax	#, D.12682
	jbe	.L236	#,
.L235:
	.loc 1 537 0 is_stmt 1
	jmp	.L231	#
.L236:
	.loc 1 539 0
	movq	-56(%rbp), %rax	# reg, tmp116
	movl	8(%rax), %edx	# reg_1->fld[0].rtuint, D.12682
	movl	-32(%rbp), %eax	# offset, offset.135
	addl	%edx, %eax	# D.12682, D.12682
	movl	%eax, -24(%rbp)	# D.12682, regno
	.loc 1 540 0
	cmpl	$7, -24(%rbp)	#, regno
	jle	.L237	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, regno
	jle	.L238	#,
.L237:
	.loc 1 540 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, regno
	jle	.L239	#,
	.loc 1 540 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L238	#,
.L239:
	.loc 1 540 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, regno
	jle	.L240	#,
	.loc 1 540 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jle	.L238	#,
.L240:
	.loc 1 540 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L241	#,
	.loc 1 540 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, regno
	jg	.L241	#,
.L238:
	movl	-28(%rbp), %eax	# mode, mode.138
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12684
	cmpl	$5, %eax	#, D.12684
	je	.L242	#,
	.loc 1 540 0 discriminator 2
	movl	-28(%rbp), %eax	# mode, mode.139
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12684
	cmpl	$6, %eax	#, D.12684
	jne	.L243	#,
.L242:
	.loc 1 540 0 discriminator 1
	movl	$2, %eax	#, iftmp.137
	jmp	.L244	#
.L243:
	movl	$1, %eax	#, iftmp.137
.L244:
	.loc 1 540 0 discriminator 3
	jmp	.L245	#
.L241:
	.loc 1 540 0 discriminator 2
	cmpl	$18, -28(%rbp)	#, mode
	jne	.L246	#,
	.loc 1 540 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.142
	andl	$33554432, %eax	#, D.12683
	testl	%eax, %eax	# D.12683
	je	.L247	#,
	movl	$2, %eax	#, iftmp.141
	jmp	.L245	#
.L247:
	.loc 1 540 0 discriminator 2
	movl	$3, %eax	#, iftmp.141
	jmp	.L245	#
.L246:
	cmpl	$24, -28(%rbp)	#, mode
	jne	.L250	#,
	.loc 1 540 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.145
	andl	$33554432, %eax	#, D.12683
	testl	%eax, %eax	# D.12683
	je	.L251	#,
	movl	$4, %eax	#, iftmp.144
	jmp	.L245	#
.L251:
	.loc 1 540 0 discriminator 2
	movl	$6, %eax	#, iftmp.144
	jmp	.L245	#
.L250:
	movl	-28(%rbp), %eax	# mode, mode.146
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12678
	movzbl	%al, %edx	# D.12678, D.12683
	movl	target_flags(%rip), %eax	# target_flags, target_flags.148
	andl	$33554432, %eax	#, D.12683
	testl	%eax, %eax	# D.12683
	je	.L254	#,
	.loc 1 540 0 discriminator 1
	movl	$8, %eax	#, iftmp.147
	jmp	.L255	#
.L254:
	.loc 1 540 0 discriminator 2
	movl	$4, %eax	#, iftmp.147
.L255:
	.loc 1 540 0 discriminator 3
	addl	%edx, %eax	# D.12683, D.12683
	subl	$1, %eax	#, D.12683
	movl	target_flags(%rip), %edx	# target_flags, target_flags.150
	andl	$33554432, %edx	#, D.12683
	testl	%edx, %edx	# D.12683
	je	.L256	#,
	.loc 1 540 0 discriminator 1
	movl	$8, %ebx	#, iftmp.149
	jmp	.L257	#
.L256:
	.loc 1 540 0 discriminator 2
	movl	$4, %ebx	#, iftmp.149
.L257:
	.loc 1 540 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.149
.L245:
	movl	-24(%rbp), %edx	# regno, tmp125
	addl	%edx, %eax	# tmp125, tmp124
	movl	%eax, -20(%rbp)	# tmp124, endregno
	.loc 1 542 0 is_stmt 1 discriminator 3
	movl	-24(%rbp), %eax	# regno, tmp126
	movl	%eax, -36(%rbp)	# tmp126, i
	jmp	.L258	#
.L259:
	.loc 1 543 0 discriminator 2
	movl	-36(%rbp), %edx	# i, tmp127
	movq	-72(%rbp), %rax	# data, tmp128
	movl	%edx, %esi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	bitmap_set_bit	#
	.loc 1 542 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L258:
	.loc 1 542 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp129
	cmpl	-20(%rbp), %eax	# endregno, tmp129
	jl	.L259	#,
.L231:
	.loc 1 544 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	add_stored_regs, .-add_stored_regs
	.type	mark_referenced_regs, @function
mark_referenced_regs:
.LFB8:
	.loc 1 550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 551 0
	movq	-40(%rbp), %rax	# x, tmp158
	movzwl	(%rax), %eax	# x_18(D)->code, D.12685
	movzwl	%ax, %eax	# D.12685, tmp159
	movl	%eax, -32(%rbp)	# tmp159, code
	.loc 1 555 0
	cmpl	$47, -32(%rbp)	#, code
	jne	.L261	#,
	.loc 1 556 0
	movq	-40(%rbp), %rax	# x, tmp160
	movq	16(%rax), %rax	# x_18(D)->fld[1].rtx, D.12686
	movq	%rax, %rdi	# D.12686,
	call	mark_referenced_regs	#
.L261:
	.loc 1 557 0
	cmpl	$47, -32(%rbp)	#, code
	je	.L262	#,
	.loc 1 557 0 is_stmt 0 discriminator 1
	cmpl	$49, -32(%rbp)	#, code
	jne	.L263	#,
.L262:
	.loc 1 559 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp161
	movq	8(%rax), %rax	# x_18(D)->fld[0].rtx, tmp162
	movq	%rax, -40(%rbp)	# tmp162, x
	.loc 1 560 0
	movq	-40(%rbp), %rax	# x, tmp163
	movzwl	(%rax), %eax	# x_22->code, D.12685
	movzwl	%ax, %eax	# D.12685, tmp164
	movl	%eax, -32(%rbp)	# tmp164, code
	.loc 1 561 0
	cmpl	$61, -32(%rbp)	#, code
	je	.L264	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	cmpl	$59, -32(%rbp)	#, code
	je	.L264	#,
	cmpl	$69, -32(%rbp)	#, code
	je	.L264	#,
	.loc 1 562 0 is_stmt 1
	cmpl	$63, -32(%rbp)	#, code
	jne	.L263	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp165
	movq	8(%rax), %rax	# x_22->fld[0].rtx, D.12686
	movzwl	(%rax), %eax	# _25->code, D.12685
	cmpw	$61, %ax	#, D.12685
	jne	.L263	#,
	.loc 1 566 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp166
	movzbl	2(%rax), %eax	# x_22->mode, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.12687
	.loc 1 567 0
	movq	-40(%rbp), %rax	# x, tmp168
	movq	8(%rax), %rax	# x_22->fld[0].rtx, D.12686
	movzbl	2(%rax), %eax	# _30->mode, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12687
	.loc 1 566 0
	cmpb	%al, %dl	# D.12687, D.12687
	jae	.L264	#,
	.loc 1 568 0
	movq	-40(%rbp), %rax	# x, tmp170
	movq	8(%rax), %rax	# x_22->fld[0].rtx, D.12686
	movzbl	2(%rax), %eax	# _34->mode, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12687
	.loc 1 569 0
	movzbl	%al, %edx	# D.12687, D.12688
	movl	target_flags(%rip), %eax	# target_flags, target_flags.152
	andl	$33554432, %eax	#, D.12688
	testl	%eax, %eax	# D.12688
	je	.L265	#,
	.loc 1 569 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.151
	jmp	.L266	#
.L265:
	.loc 1 569 0 discriminator 2
	movl	$4, %eax	#, iftmp.151
.L266:
	.loc 1 568 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.151, D.12688
	jg	.L263	#,
.L264:
	.loc 1 570 0
	jmp	.L260	#
.L263:
	.loc 1 572 0
	cmpl	$66, -32(%rbp)	#, code
	je	.L268	#,
	.loc 1 572 0 is_stmt 0 discriminator 1
	cmpl	$63, -32(%rbp)	#, code
	jne	.L269	#,
.L268:
	.loc 1 574 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp172
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp173
	movq	%rax, -40(%rbp)	# tmp173, x
	.loc 1 575 0
	movq	-40(%rbp), %rax	# x, tmp174
	movzwl	(%rax), %eax	# x_43->code, D.12685
	movzwl	%ax, %eax	# D.12685, tmp175
	movl	%eax, -32(%rbp)	# tmp175, code
.L269:
	.loc 1 578 0
	cmpl	$61, -32(%rbp)	#, code
	jne	.L270	#,
.LBB16:
	.loc 1 580 0
	movq	-40(%rbp), %rax	# x, tmp176
	movl	8(%rax), %eax	# x_2->fld[0].rtuint, D.12689
	movl	%eax, -16(%rbp)	# D.12689, regno
	.loc 1 582 0
	cmpl	$52, -16(%rbp)	#, regno
	jle	.L271	#,
	.loc 1 582 0 is_stmt 0 discriminator 1
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.154
	movl	-16(%rbp), %edx	# regno, tmp177
	movslq	%edx, %rdx	# tmp177, D.12690
	addq	%rdx, %rdx	# D.12690
	addq	%rdx, %rax	# D.12690, D.12691
	movzwl	(%rax), %eax	# *_51, D.12692
	cwtl
	jmp	.L272	#
.L271:
	.loc 1 582 0 discriminator 2
	movl	-16(%rbp), %eax	# regno, iftmp.153
.L272:
	.loc 1 581 0 is_stmt 1
	movl	%eax, -12(%rbp)	# iftmp.153, hardregno
	.loc 1 584 0
	cmpl	$0, -12(%rbp)	#, hardregno
	js	.L273	#,
.LBB17:
	.loc 1 586 0
	cmpl	$7, -12(%rbp)	#, hardregno
	jle	.L274	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	cmpl	$15, -12(%rbp)	#, hardregno
	jle	.L275	#,
.L274:
	.loc 1 586 0 discriminator 2
	cmpl	$20, -12(%rbp)	#, hardregno
	jle	.L276	#,
	.loc 1 586 0 discriminator 1
	cmpl	$28, -12(%rbp)	#, hardregno
	jle	.L275	#,
.L276:
	.loc 1 586 0 discriminator 2
	cmpl	$44, -12(%rbp)	#, hardregno
	jle	.L277	#,
	.loc 1 586 0 discriminator 1
	cmpl	$52, -12(%rbp)	#, hardregno
	jle	.L275	#,
.L277:
	.loc 1 586 0 discriminator 2
	cmpl	$28, -12(%rbp)	#, hardregno
	jle	.L278	#,
	.loc 1 586 0 discriminator 1
	cmpl	$36, -12(%rbp)	#, hardregno
	jg	.L278	#,
.L275:
	movq	-40(%rbp), %rax	# x, tmp178
	movzbl	2(%rax), %eax	# x_2->mode, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12693
	cmpl	$5, %eax	#, D.12693
	je	.L279	#,
	.loc 1 586 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp180
	movzbl	2(%rax), %eax	# x_2->mode, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12693
	cmpl	$6, %eax	#, D.12693
	jne	.L280	#,
.L279:
	.loc 1 586 0 discriminator 1
	movl	$2, %eax	#, iftmp.156
	jmp	.L281	#
.L280:
	movl	$1, %eax	#, iftmp.156
.L281:
	.loc 1 586 0 discriminator 3
	jmp	.L282	#
.L278:
	.loc 1 586 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp182
	movzbl	2(%rax), %eax	# x_2->mode, D.12687
	cmpb	$18, %al	#, D.12687
	jne	.L283	#,
	.loc 1 586 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.159
	andl	$33554432, %eax	#, D.12688
	testl	%eax, %eax	# D.12688
	je	.L284	#,
	movl	$2, %eax	#, iftmp.158
	jmp	.L282	#
.L284:
	.loc 1 586 0 discriminator 2
	movl	$3, %eax	#, iftmp.158
	jmp	.L282	#
.L283:
	movq	-40(%rbp), %rax	# x, tmp183
	movzbl	2(%rax), %eax	# x_2->mode, D.12687
	cmpb	$24, %al	#, D.12687
	jne	.L287	#,
	.loc 1 586 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.162
	andl	$33554432, %eax	#, D.12688
	testl	%eax, %eax	# D.12688
	je	.L288	#,
	movl	$4, %eax	#, iftmp.161
	jmp	.L282	#
.L288:
	.loc 1 586 0 discriminator 2
	movl	$6, %eax	#, iftmp.161
	jmp	.L282	#
.L287:
	movq	-40(%rbp), %rax	# x, tmp184
	movzbl	2(%rax), %eax	# x_2->mode, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12687
	movzbl	%al, %edx	# D.12687, D.12688
	movl	target_flags(%rip), %eax	# target_flags, target_flags.164
	andl	$33554432, %eax	#, D.12688
	testl	%eax, %eax	# D.12688
	je	.L291	#,
	.loc 1 586 0 discriminator 1
	movl	$8, %eax	#, iftmp.163
	jmp	.L292	#
.L291:
	.loc 1 586 0 discriminator 2
	movl	$4, %eax	#, iftmp.163
.L292:
	.loc 1 586 0 discriminator 3
	addl	%edx, %eax	# D.12688, D.12688
	subl	$1, %eax	#, D.12688
	movl	target_flags(%rip), %edx	# target_flags, target_flags.166
	andl	$33554432, %edx	#, D.12688
	testl	%edx, %edx	# D.12688
	je	.L293	#,
	.loc 1 586 0 discriminator 1
	movl	$8, %esi	#, iftmp.165
	jmp	.L294	#
.L293:
	.loc 1 586 0 discriminator 2
	movl	$4, %esi	#, iftmp.165
.L294:
	.loc 1 586 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.165
.L282:
	movl	%eax, -20(%rbp)	# iftmp.155, nregs
	.loc 1 587 0 is_stmt 1 discriminator 3
	jmp	.L295	#
.L296:
	.loc 1 588 0
	movl	-20(%rbp), %eax	# nregs, tmp188
	movl	-12(%rbp), %edx	# hardregno, tmp189
	addl	%edx, %eax	# tmp189, D.12688
	movl	$1, %edx	#, tmp190
	movl	%eax, %ecx	# D.12688, tmp217
	salq	%cl, %rdx	# tmp217, D.12690
	movq	referenced_regs(%rip), %rax	# referenced_regs, referenced_regs.167
	orq	%rdx, %rax	# D.12690, referenced_regs.168
	movq	%rax, referenced_regs(%rip)	# referenced_regs.168, referenced_regs
.L295:
	.loc 1 587 0 discriminator 1
	movl	-20(%rbp), %eax	# nregs, nregs.169
	leal	-1(%rax), %edx	#, tmp191
	movl	%edx, -20(%rbp)	# tmp191, nregs
	testl	%eax, %eax	# nregs.169
	jg	.L296	#,
.LBE17:
	jmp	.L297	#
.L273:
	.loc 1 593 0
	movq	reg_equiv_mem(%rip), %rax	# reg_equiv_mem, reg_equiv_mem.170
	movl	-16(%rbp), %edx	# regno, tmp192
	movslq	%edx, %rdx	# tmp192, D.12690
	salq	$3, %rdx	#, D.12690
	addq	%rdx, %rax	# D.12690, D.12694
	movq	(%rax), %rax	# *_104, D.12686
	testq	%rax, %rax	# D.12686
	je	.L298	#,
	.loc 1 594 0
	movq	reg_equiv_mem(%rip), %rax	# reg_equiv_mem, reg_equiv_mem.171
	movl	-16(%rbp), %edx	# regno, tmp193
	movslq	%edx, %rdx	# tmp193, D.12690
	salq	$3, %rdx	#, D.12690
	addq	%rdx, %rax	# D.12690, D.12694
	movq	(%rax), %rax	# *_109, D.12686
	movq	8(%rax), %rax	# _110->fld[0].rtx, D.12686
	movq	%rax, %rdi	# D.12686,
	call	mark_referenced_regs	#
	jmp	.L297	#
.L298:
	.loc 1 595 0
	movq	reg_equiv_address(%rip), %rax	# reg_equiv_address, reg_equiv_address.172
	movl	-16(%rbp), %edx	# regno, tmp194
	movslq	%edx, %rdx	# tmp194, D.12690
	salq	$3, %rdx	#, D.12690
	addq	%rdx, %rax	# D.12690, D.12694
	movq	(%rax), %rax	# *_115, D.12686
	testq	%rax, %rax	# D.12686
	je	.L297	#,
	.loc 1 596 0
	movq	reg_equiv_address(%rip), %rax	# reg_equiv_address, reg_equiv_address.173
	movl	-16(%rbp), %edx	# regno, tmp195
	movslq	%edx, %rdx	# tmp195, D.12690
	salq	$3, %rdx	#, D.12690
	addq	%rdx, %rax	# D.12690, D.12694
	movq	(%rax), %rax	# *_120, D.12686
	movq	%rax, %rdi	# D.12686,
	call	mark_referenced_regs	#
	.loc 1 597 0
	jmp	.L260	#
.L297:
	jmp	.L260	#
.L270:
.LBE16:
	.loc 1 600 0
	movl	-32(%rbp), %eax	# code, code.174
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp197
	movq	%rax, -8(%rbp)	# tmp197, fmt
	.loc 1 601 0
	movl	-32(%rbp), %eax	# code, code.175
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12687
	movzbl	%al, %eax	# D.12687, D.12688
	subl	$1, %eax	#, tmp199
	movl	%eax, -28(%rbp)	# tmp199, i
	jmp	.L299	#
.L304:
	.loc 1 603 0
	movl	-28(%rbp), %eax	# i, tmp200
	movslq	%eax, %rdx	# tmp200, D.12695
	movq	-8(%rbp), %rax	# fmt, tmp201
	addq	%rdx, %rax	# D.12695, D.12696
	movzbl	(%rax), %eax	# *_129, D.12697
	cmpb	$101, %al	#, D.12697
	jne	.L300	#,
	.loc 1 604 0
	movq	-40(%rbp), %rax	# x, tmp202
	movl	-28(%rbp), %edx	# i, tmp204
	movslq	%edx, %rdx	# tmp204, tmp203
	movq	8(%rax,%rdx,8), %rax	# x_2->fld[i_5].rtx, D.12686
	movq	%rax, %rdi	# D.12686,
	call	mark_referenced_regs	#
	jmp	.L301	#
.L300:
	.loc 1 605 0
	movl	-28(%rbp), %eax	# i, tmp205
	movslq	%eax, %rdx	# tmp205, D.12695
	movq	-8(%rbp), %rax	# fmt, tmp206
	addq	%rdx, %rax	# D.12695, D.12696
	movzbl	(%rax), %eax	# *_133, D.12697
	cmpb	$69, %al	#, D.12697
	jne	.L301	#,
	.loc 1 606 0
	movq	-40(%rbp), %rax	# x, tmp207
	movl	-28(%rbp), %edx	# i, tmp209
	movslq	%edx, %rdx	# tmp209, tmp208
	movq	8(%rax,%rdx,8), %rax	# x_2->fld[i_5].rtvec, D.12698
	movl	(%rax), %eax	# _135->num_elem, D.12688
	subl	$1, %eax	#, tmp210
	movl	%eax, -24(%rbp)	# tmp210, j
	jmp	.L302	#
.L303:
	.loc 1 607 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp211
	movl	-28(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, tmp212
	movq	8(%rax,%rdx,8), %rax	# x_2->fld[i_5].rtvec, D.12698
	movl	-24(%rbp), %edx	# j, tmp215
	movslq	%edx, %rdx	# tmp215, tmp214
	movq	8(%rax,%rdx,8), %rax	# _138->elem, D.12686
	movq	%rax, %rdi	# D.12686,
	call	mark_referenced_regs	#
	.loc 1 606 0 discriminator 2
	subl	$1, -24(%rbp)	#, j
.L302:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, j
	jns	.L303	#,
.L301:
	.loc 1 601 0 is_stmt 1
	subl	$1, -28(%rbp)	#, i
.L299:
	.loc 1 601 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, i
	jns	.L304	#,
.L260:
	.loc 1 609 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mark_referenced_regs, .-mark_referenced_regs
	.type	insert_restore, @function
insert_restore:
.LFB9:
	.loc 1 631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# chain, chain
	movl	%esi, -76(%rbp)	# before_p, before_p
	movl	%edx, -80(%rbp)	# regno, regno
	movl	%ecx, -84(%rbp)	# maxrestore, maxrestore
	movq	%r8, -96(%rbp)	# save_mode, save_mode
	.loc 1 633 0
	movq	$0, -32(%rbp)	#, pat
	.loc 1 635 0
	movl	$0, -56(%rbp)	#, numregs
	.loc 1 646 0
	movl	-80(%rbp), %eax	# regno, tmp143
	movslq	%eax, %rdx	# tmp143, tmp142
	movq	%rdx, %rax	# tmp142, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# tmp142, tmp144
	salq	$3, %rax	#, tmp145
	addq	$regno_save_mem+8, %rax	#, tmp146
	movq	(%rax), %rax	# regno_save_mem, D.12699
	testq	%rax, %rax	# D.12699
	jne	.L306	#,
	.loc 1 647 0
	movl	$__FUNCTION__.11238, %edx	#,
	movl	$647, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L306:
	.loc 1 653 0
	movl	-84(%rbp), %eax	# maxrestore, tmp147
	movl	%eax, -64(%rbp)	# tmp147, i
	jmp	.L307	#
.L316:
.LBB18:
	.loc 1 656 0
	movl	$1, -48(%rbp)	#, ok
	.loc 1 658 0
	movl	-64(%rbp), %eax	# i, tmp149
	movslq	%eax, %rcx	# tmp149, tmp148
	movl	-80(%rbp), %eax	# regno, tmp151
	movslq	%eax, %rdx	# tmp151, tmp150
	movq	%rdx, %rax	# tmp150, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# tmp150, tmp152
	addq	%rcx, %rax	# tmp148, tmp153
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, D.12699
	testq	%rax, %rax	# D.12699
	jne	.L308	#,
	.loc 1 659 0
	jmp	.L309	#
.L308:
	.loc 1 661 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L310	#
.L313:
	.loc 1 662 0
	movq	hard_regs_saved(%rip), %rdx	# hard_regs_saved, hard_regs_saved.176
	movl	-52(%rbp), %eax	# j, tmp154
	movl	-80(%rbp), %ecx	# regno, tmp155
	addl	%ecx, %eax	# tmp155, D.12700
	movl	%eax, %ecx	# D.12700, tmp216
	shrq	%cl, %rdx	# tmp216, D.12701
	movq	%rdx, %rax	# D.12701, D.12701
	andl	$1, %eax	#, D.12701
	testq	%rax, %rax	# D.12701
	jne	.L311	#,
	.loc 1 664 0
	movl	$0, -48(%rbp)	#, ok
	.loc 1 665 0
	jmp	.L312	#
.L311:
	.loc 1 661 0
	addl	$1, -52(%rbp)	#, j
.L310:
	.loc 1 661 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# j, tmp156
	cmpl	-64(%rbp), %eax	# i, tmp156
	jl	.L313	#,
.L312:
	.loc 1 668 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, ok
	jne	.L314	#,
	.loc 1 669 0
	jmp	.L309	#
.L314:
	.loc 1 671 0
	movl	-64(%rbp), %eax	# i, tmp157
	movl	%eax, -56(%rbp)	# tmp157, numregs
	.loc 1 672 0
	jmp	.L315	#
.L309:
.LBE18:
	.loc 1 653 0
	subl	$1, -64(%rbp)	#, i
.L307:
	.loc 1 653 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jg	.L316	#,
.L315:
	.loc 1 675 0 is_stmt 1
	movl	-56(%rbp), %ecx	# numregs, tmp158
	movl	-80(%rbp), %eax	# regno, tmp160
	movslq	%eax, %rdx	# tmp160, tmp159
	movq	%rdx, %rax	# tmp159, tmp161
	salq	$2, %rax	#, tmp161
	addq	%rdx, %rax	# tmp159, tmp161
	addq	%rcx, %rax	# tmp158, tmp162
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, tmp163
	movq	%rax, -40(%rbp)	# tmp163, mem
	.loc 1 676 0
	movl	-80(%rbp), %eax	# regno, tmp164
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp165
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %eax	# *_36, D.12703
	testl	%eax, %eax	# D.12703
	je	.L317	#,
	.loc 1 677 0
	movl	-80(%rbp), %eax	# regno, tmp166
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp167
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %edx	# *_40, D.12703
	movq	-40(%rbp), %rax	# mem, tmp168
	movzbl	2(%rax), %eax	# mem_32->mode, D.12704
	movzbl	%al, %eax	# D.12704, D.12705
	cmpl	%eax, %edx	# D.12705, D.12703
	je	.L317	#,
	.loc 1 678 0
	cmpl	$7, -80(%rbp)	#, regno
	jle	.L318	#,
	.loc 1 678 0 is_stmt 0 discriminator 1
	cmpl	$15, -80(%rbp)	#, regno
	jle	.L319	#,
.L318:
	.loc 1 678 0 discriminator 2
	cmpl	$20, -80(%rbp)	#, regno
	jle	.L320	#,
	.loc 1 678 0 discriminator 1
	cmpl	$28, -80(%rbp)	#, regno
	jle	.L319	#,
.L320:
	.loc 1 678 0 discriminator 2
	cmpl	$44, -80(%rbp)	#, regno
	jle	.L321	#,
	.loc 1 678 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, regno
	jle	.L319	#,
.L321:
	.loc 1 678 0 discriminator 2
	cmpl	$28, -80(%rbp)	#, regno
	jle	.L322	#,
	.loc 1 678 0 discriminator 1
	cmpl	$36, -80(%rbp)	#, regno
	jg	.L322	#,
.L319:
	movl	-80(%rbp), %eax	# regno, tmp169
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp170
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %eax	# *_85, D.12703
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12706
	cmpl	$5, %eax	#, D.12706
	je	.L323	#,
	.loc 1 678 0 discriminator 4
	movl	-80(%rbp), %eax	# regno, tmp172
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp173
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %eax	# *_91, D.12703
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12706
	cmpl	$6, %eax	#, D.12706
	jne	.L324	#,
.L323:
	.loc 1 678 0 discriminator 3
	movl	$2, %eax	#, iftmp.178
	jmp	.L326	#
.L324:
	.loc 1 678 0 discriminator 1
	movl	$1, %eax	#, iftmp.178
	jmp	.L326	#
.L322:
	.loc 1 678 0 discriminator 2
	movl	-80(%rbp), %eax	# regno, tmp175
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp176
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %eax	# *_46, D.12703
	cmpl	$18, %eax	#, D.12703
	jne	.L327	#,
	.loc 1 678 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.181
	andl	$33554432, %eax	#, D.12700
	testl	%eax, %eax	# D.12700
	je	.L328	#,
	.loc 1 678 0 discriminator 9
	movl	$2, %eax	#, iftmp.180
	jmp	.L326	#
.L328:
	.loc 1 678 0 discriminator 10
	movl	$3, %eax	#, iftmp.180
	jmp	.L326	#
.L327:
	.loc 1 678 0 discriminator 8
	movl	-80(%rbp), %eax	# regno, tmp177
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp178
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %eax	# *_55, D.12703
	cmpl	$24, %eax	#, D.12703
	jne	.L331	#,
	.loc 1 678 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.184
	andl	$33554432, %eax	#, D.12700
	testl	%eax, %eax	# D.12700
	je	.L332	#,
	.loc 1 678 0 discriminator 13
	movl	$4, %eax	#, iftmp.183
	jmp	.L326	#
.L332:
	.loc 1 678 0 discriminator 14
	movl	$6, %eax	#, iftmp.183
	jmp	.L326	#
.L331:
	.loc 1 678 0 discriminator 12
	movl	-80(%rbp), %eax	# regno, tmp179
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp180
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %eax	# *_64, D.12703
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12704
	movzbl	%al, %edx	# D.12704, D.12700
	movl	target_flags(%rip), %eax	# target_flags, target_flags.186
	andl	$33554432, %eax	#, D.12700
	testl	%eax, %eax	# D.12700
	je	.L335	#,
	.loc 1 678 0 discriminator 1
	movl	$8, %eax	#, iftmp.185
	jmp	.L336	#
.L335:
	.loc 1 678 0 discriminator 2
	movl	$4, %eax	#, iftmp.185
.L336:
	.loc 1 678 0 discriminator 3
	addl	%edx, %eax	# D.12700, D.12700
	subl	$1, %eax	#, D.12700
	movl	target_flags(%rip), %edx	# target_flags, target_flags.188
	andl	$33554432, %edx	#, D.12700
	testl	%edx, %edx	# D.12700
	je	.L337	#,
	.loc 1 678 0 discriminator 1
	movl	$8, %ebx	#, iftmp.187
	jmp	.L338	#
.L337:
	.loc 1 678 0 discriminator 2
	movl	$4, %ebx	#, iftmp.187
.L338:
	.loc 1 678 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.187
.L326:
	.loc 1 678 0 discriminator 6
	cmpl	-56(%rbp), %eax	# numregs, iftmp.177
	jne	.L317	#,
	.loc 1 679 0 is_stmt 1
	movl	-80(%rbp), %eax	# regno, tmp184
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12701
	movq	-96(%rbp), %rax	# save_mode, tmp185
	addq	%rdx, %rax	# D.12701, D.12702
	movl	(%rax), %esi	# *_100, D.12703
	movq	-40(%rbp), %rax	# mem, tmp186
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp186,
	call	adjust_address_1	#
	movq	%rax, -40(%rbp)	# tmp187, mem
.L317:
	.loc 1 680 0
	movq	-40(%rbp), %rax	# mem, tmp188
	movzbl	2(%rax), %eax	# mem_4->mode, D.12704
	movzbl	%al, %eax	# D.12704, D.12703
	movl	-80(%rbp), %edx	# regno, tmp189
	movl	%edx, %esi	# tmp189,
	movl	%eax, %edi	# D.12703,
	call	gen_rtx_REG	#
	movq	-40(%rbp), %rdx	# mem, tmp190
	movq	%rdx, %rcx	# tmp190,
	movq	%rax, %rdx	# D.12699,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -32(%rbp)	# tmp191, pat
	.loc 1 683 0
	movq	-40(%rbp), %rax	# mem, tmp192
	movzbl	2(%rax), %eax	# mem_4->mode, D.12704
	movzbl	%al, %eax	# D.12704, D.12705
	movl	%eax, %esi	# D.12705, tmp193
	movl	-80(%rbp), %eax	# regno, tmp195
	movslq	%eax, %rcx	# tmp195, tmp194
	movq	%rcx, %rdx	# tmp194, tmp196
	leaq	0(,%rdx,4), %rax	#, tmp197
	movq	%rax, %rdx	# tmp197, tmp196
	movq	%rdx, %rax	# tmp196, tmp198
	salq	$4, %rax	#, tmp198
	subq	%rdx, %rax	# tmp196, tmp198
	subq	%rcx, %rax	# tmp194, tmp198
	addq	%rsi, %rax	# tmp193, tmp199
	movl	reg_restore_code(,%rax,4), %eax	# reg_restore_code, tmp200
	movl	%eax, -44(%rbp)	# tmp200, code
	.loc 1 684 0
	movq	-32(%rbp), %rcx	# pat, tmp201
	movl	-44(%rbp), %edx	# code, tmp202
	movl	-76(%rbp), %esi	# before_p, tmp203
	movq	-72(%rbp), %rax	# chain, tmp204
	movq	%rax, %rdi	# tmp204,
	call	insert_one_insn	#
	movq	%rax, -24(%rbp)	# tmp205, new
	.loc 1 687 0
	movl	$0, -60(%rbp)	#, k
	jmp	.L339	#
.L340:
	.loc 1 689 0 discriminator 2
	movl	-60(%rbp), %eax	# k, tmp206
	movl	-80(%rbp), %edx	# regno, tmp207
	addl	%edx, %eax	# tmp207, D.12700
	movl	$1, %edx	#, tmp208
	movl	%eax, %ecx	# D.12700, tmp220
	salq	%cl, %rdx	# tmp220, D.12701
	movq	%rdx, %rax	# D.12701, D.12701
	notq	%rax	# D.12701
	movq	%rax, %rdx	# D.12701, D.12701
	movq	hard_regs_saved(%rip), %rax	# hard_regs_saved, hard_regs_saved.189
	andq	%rdx, %rax	# D.12701, hard_regs_saved.190
	movq	%rax, hard_regs_saved(%rip)	# hard_regs_saved.190, hard_regs_saved
	.loc 1 690 0 discriminator 2
	movl	-60(%rbp), %eax	# k, tmp209
	movl	-80(%rbp), %edx	# regno, tmp210
	addl	%eax, %edx	# tmp209, D.12700
	movq	-24(%rbp), %rax	# new, tmp211
	addq	$64, %rax	#, D.12707
	movl	%edx, %esi	# D.12700,
	movq	%rax, %rdi	# D.12707,
	call	bitmap_set_bit	#
	.loc 1 691 0 discriminator 2
	movl	n_regs_saved(%rip), %eax	# n_regs_saved, n_regs_saved.191
	subl	$1, %eax	#, n_regs_saved.192
	movl	%eax, n_regs_saved(%rip)	# n_regs_saved.192, n_regs_saved
	.loc 1 687 0 discriminator 2
	addl	$1, -60(%rbp)	#, k
.L339:
	.loc 1 687 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# k, tmp212
	cmpl	-64(%rbp), %eax	# i, tmp212
	jl	.L340	#,
	.loc 1 695 0 is_stmt 1
	movl	-56(%rbp), %eax	# numregs, tmp213
	subl	$1, %eax	#, D.12705
	.loc 1 696 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	insert_restore, .-insert_restore
	.type	insert_save, @function
insert_save:
.LFB10:
	.loc 1 707 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# chain, chain
	movl	%esi, -76(%rbp)	# before_p, before_p
	movl	%edx, -80(%rbp)	# regno, regno
	movq	%rcx, -88(%rbp)	# to_save, to_save
	movq	%r8, -96(%rbp)	# save_mode, save_mode
	.loc 1 710 0
	movq	$0, -32(%rbp)	#, pat
	.loc 1 712 0
	movl	$0, -56(%rbp)	#, numregs
	.loc 1 723 0
	movl	-80(%rbp), %eax	# regno, tmp149
	movslq	%eax, %rdx	# tmp149, tmp148
	movq	%rdx, %rax	# tmp148, tmp150
	salq	$2, %rax	#, tmp150
	addq	%rdx, %rax	# tmp148, tmp150
	salq	$3, %rax	#, tmp151
	addq	$regno_save_mem+8, %rax	#, tmp152
	movq	(%rax), %rax	# regno_save_mem, D.12708
	testq	%rax, %rax	# D.12708
	jne	.L343	#,
	.loc 1 724 0
	movl	$__FUNCTION__.11265, %edx	#,
	movl	$724, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L343:
	.loc 1 730 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.194
	andl	$33554432, %eax	#, D.12709
	testl	%eax, %eax	# D.12709
	je	.L344	#,
	.loc 1 730 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.193
	jmp	.L345	#
.L344:
	.loc 1 730 0 discriminator 2
	movl	$4, %eax	#, iftmp.193
.L345:
	.loc 1 730 0 discriminator 3
	movl	%eax, -64(%rbp)	# iftmp.193, i
	jmp	.L346	#
.L355:
.LBB19:
	.loc 1 733 0 is_stmt 1
	movl	$1, -48(%rbp)	#, ok
	.loc 1 734 0
	movl	-64(%rbp), %eax	# i, tmp154
	movslq	%eax, %rcx	# tmp154, tmp153
	movl	-80(%rbp), %eax	# regno, tmp156
	movslq	%eax, %rdx	# tmp156, tmp155
	movq	%rdx, %rax	# tmp155, tmp157
	salq	$2, %rax	#, tmp157
	addq	%rdx, %rax	# tmp155, tmp157
	addq	%rcx, %rax	# tmp153, tmp158
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, D.12708
	testq	%rax, %rax	# D.12708
	jne	.L347	#,
	.loc 1 735 0
	jmp	.L348	#
.L347:
	.loc 1 737 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L349	#
.L352:
	.loc 1 738 0
	movq	-88(%rbp), %rax	# to_save, tmp159
	movq	(%rax), %rdx	# *to_save_28(D), D.12710
	movl	-52(%rbp), %eax	# j, tmp160
	movl	-80(%rbp), %ecx	# regno, tmp161
	addl	%ecx, %eax	# tmp161, D.12709
	movl	%eax, %ecx	# D.12709, tmp220
	shrq	%cl, %rdx	# tmp220, D.12710
	movq	%rdx, %rax	# D.12710, D.12710
	andl	$1, %eax	#, D.12710
	testq	%rax, %rax	# D.12710
	jne	.L350	#,
	.loc 1 740 0
	movl	$0, -48(%rbp)	#, ok
	.loc 1 741 0
	jmp	.L351	#
.L350:
	.loc 1 737 0
	addl	$1, -52(%rbp)	#, j
.L349:
	.loc 1 737 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# j, tmp162
	cmpl	-64(%rbp), %eax	# i, tmp162
	jl	.L352	#,
.L351:
	.loc 1 744 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, ok
	jne	.L353	#,
	.loc 1 745 0
	jmp	.L348	#
.L353:
	.loc 1 747 0
	movl	-64(%rbp), %eax	# i, tmp163
	movl	%eax, -56(%rbp)	# tmp163, numregs
	.loc 1 748 0
	jmp	.L354	#
.L348:
.LBE19:
	.loc 1 730 0
	subl	$1, -64(%rbp)	#, i
.L346:
	.loc 1 730 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jg	.L355	#,
.L354:
	.loc 1 751 0 is_stmt 1
	movl	-56(%rbp), %ecx	# numregs, tmp164
	movl	-80(%rbp), %eax	# regno, tmp166
	movslq	%eax, %rdx	# tmp166, tmp165
	movq	%rdx, %rax	# tmp165, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# tmp165, tmp167
	addq	%rcx, %rax	# tmp164, tmp168
	movq	regno_save_mem(,%rax,8), %rax	# regno_save_mem, tmp169
	movq	%rax, -40(%rbp)	# tmp169, mem
	.loc 1 752 0
	movl	-80(%rbp), %eax	# regno, tmp170
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp171
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %eax	# *_41, D.12712
	testl	%eax, %eax	# D.12712
	je	.L356	#,
	.loc 1 753 0
	movl	-80(%rbp), %eax	# regno, tmp172
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp173
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %edx	# *_45, D.12712
	movq	-40(%rbp), %rax	# mem, tmp174
	movzbl	2(%rax), %eax	# mem_37->mode, D.12713
	movzbl	%al, %eax	# D.12713, D.12714
	cmpl	%eax, %edx	# D.12714, D.12712
	je	.L356	#,
	.loc 1 754 0
	cmpl	$7, -80(%rbp)	#, regno
	jle	.L357	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	cmpl	$15, -80(%rbp)	#, regno
	jle	.L358	#,
.L357:
	.loc 1 754 0 discriminator 2
	cmpl	$20, -80(%rbp)	#, regno
	jle	.L359	#,
	.loc 1 754 0 discriminator 1
	cmpl	$28, -80(%rbp)	#, regno
	jle	.L358	#,
.L359:
	.loc 1 754 0 discriminator 2
	cmpl	$44, -80(%rbp)	#, regno
	jle	.L360	#,
	.loc 1 754 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, regno
	jle	.L358	#,
.L360:
	.loc 1 754 0 discriminator 2
	cmpl	$28, -80(%rbp)	#, regno
	jle	.L361	#,
	.loc 1 754 0 discriminator 1
	cmpl	$36, -80(%rbp)	#, regno
	jg	.L361	#,
.L358:
	movl	-80(%rbp), %eax	# regno, tmp175
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp176
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %eax	# *_90, D.12712
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12715
	cmpl	$5, %eax	#, D.12715
	je	.L362	#,
	.loc 1 754 0 discriminator 4
	movl	-80(%rbp), %eax	# regno, tmp178
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp179
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %eax	# *_96, D.12712
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12715
	cmpl	$6, %eax	#, D.12715
	jne	.L363	#,
.L362:
	.loc 1 754 0 discriminator 3
	movl	$2, %eax	#, iftmp.196
	jmp	.L365	#
.L363:
	.loc 1 754 0 discriminator 1
	movl	$1, %eax	#, iftmp.196
	jmp	.L365	#
.L361:
	.loc 1 754 0 discriminator 2
	movl	-80(%rbp), %eax	# regno, tmp181
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp182
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %eax	# *_51, D.12712
	cmpl	$18, %eax	#, D.12712
	jne	.L366	#,
	.loc 1 754 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.199
	andl	$33554432, %eax	#, D.12709
	testl	%eax, %eax	# D.12709
	je	.L367	#,
	.loc 1 754 0 discriminator 9
	movl	$2, %eax	#, iftmp.198
	jmp	.L365	#
.L367:
	.loc 1 754 0 discriminator 10
	movl	$3, %eax	#, iftmp.198
	jmp	.L365	#
.L366:
	.loc 1 754 0 discriminator 8
	movl	-80(%rbp), %eax	# regno, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp184
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %eax	# *_60, D.12712
	cmpl	$24, %eax	#, D.12712
	jne	.L370	#,
	.loc 1 754 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.202
	andl	$33554432, %eax	#, D.12709
	testl	%eax, %eax	# D.12709
	je	.L371	#,
	.loc 1 754 0 discriminator 13
	movl	$4, %eax	#, iftmp.201
	jmp	.L365	#
.L371:
	.loc 1 754 0 discriminator 14
	movl	$6, %eax	#, iftmp.201
	jmp	.L365	#
.L370:
	.loc 1 754 0 discriminator 12
	movl	-80(%rbp), %eax	# regno, tmp185
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp186
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %eax	# *_69, D.12712
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12713
	movzbl	%al, %edx	# D.12713, D.12709
	movl	target_flags(%rip), %eax	# target_flags, target_flags.204
	andl	$33554432, %eax	#, D.12709
	testl	%eax, %eax	# D.12709
	je	.L374	#,
	.loc 1 754 0 discriminator 1
	movl	$8, %eax	#, iftmp.203
	jmp	.L375	#
.L374:
	.loc 1 754 0 discriminator 2
	movl	$4, %eax	#, iftmp.203
.L375:
	.loc 1 754 0 discriminator 3
	addl	%edx, %eax	# D.12709, D.12709
	subl	$1, %eax	#, D.12709
	movl	target_flags(%rip), %edx	# target_flags, target_flags.206
	andl	$33554432, %edx	#, D.12709
	testl	%edx, %edx	# D.12709
	je	.L376	#,
	.loc 1 754 0 discriminator 1
	movl	$8, %ebx	#, iftmp.205
	jmp	.L377	#
.L376:
	.loc 1 754 0 discriminator 2
	movl	$4, %ebx	#, iftmp.205
.L377:
	.loc 1 754 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.205
.L365:
	.loc 1 754 0 discriminator 6
	cmpl	-56(%rbp), %eax	# numregs, iftmp.195
	jne	.L356	#,
	.loc 1 755 0 is_stmt 1
	movl	-80(%rbp), %eax	# regno, tmp190
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12710
	movq	-96(%rbp), %rax	# save_mode, tmp191
	addq	%rdx, %rax	# D.12710, D.12711
	movl	(%rax), %esi	# *_105, D.12712
	movq	-40(%rbp), %rax	# mem, tmp192
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp192,
	call	adjust_address_1	#
	movq	%rax, -40(%rbp)	# tmp193, mem
.L356:
	.loc 1 756 0
	movq	-40(%rbp), %rax	# mem, tmp194
	movzbl	2(%rax), %eax	# mem_4->mode, D.12713
	movzbl	%al, %eax	# D.12713, D.12712
	movl	-80(%rbp), %edx	# regno, tmp195
	movl	%edx, %esi	# tmp195,
	movl	%eax, %edi	# D.12712,
	call	gen_rtx_REG	#
	movq	%rax, %rdx	#, D.12708
	movq	-40(%rbp), %rax	# mem, tmp196
	movq	%rdx, %rcx	# D.12708,
	movq	%rax, %rdx	# tmp196,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -32(%rbp)	# tmp197, pat
	.loc 1 759 0
	movq	-40(%rbp), %rax	# mem, tmp198
	movzbl	2(%rax), %eax	# mem_4->mode, D.12713
	movzbl	%al, %eax	# D.12713, D.12714
	movl	%eax, %esi	# D.12714, tmp199
	movl	-80(%rbp), %eax	# regno, tmp201
	movslq	%eax, %rcx	# tmp201, tmp200
	movq	%rcx, %rdx	# tmp200, tmp202
	leaq	0(,%rdx,4), %rax	#, tmp203
	movq	%rax, %rdx	# tmp203, tmp202
	movq	%rdx, %rax	# tmp202, tmp204
	salq	$4, %rax	#, tmp204
	subq	%rdx, %rax	# tmp202, tmp204
	subq	%rcx, %rax	# tmp200, tmp204
	addq	%rsi, %rax	# tmp199, tmp205
	movl	reg_save_code(,%rax,4), %eax	# reg_save_code, tmp206
	movl	%eax, -44(%rbp)	# tmp206, code
	.loc 1 760 0
	movq	-32(%rbp), %rcx	# pat, tmp207
	movl	-44(%rbp), %edx	# code, tmp208
	movl	-76(%rbp), %esi	# before_p, tmp209
	movq	-72(%rbp), %rax	# chain, tmp210
	movq	%rax, %rdi	# tmp210,
	call	insert_one_insn	#
	movq	%rax, -24(%rbp)	# tmp211, new
	.loc 1 763 0
	movl	$0, -60(%rbp)	#, k
	jmp	.L378	#
.L379:
	.loc 1 765 0 discriminator 2
	movl	-80(%rbp), %edx	# regno, regno.207
	movl	-60(%rbp), %eax	# k, tmp212
	addl	%edx, %eax	# regno.207, D.12714
	movl	$1, %edx	#, tmp213
	movl	%eax, %ecx	# D.12709, tmp223
	salq	%cl, %rdx	# tmp223, D.12710
	movq	hard_regs_saved(%rip), %rax	# hard_regs_saved, hard_regs_saved.208
	orq	%rdx, %rax	# D.12710, hard_regs_saved.209
	movq	%rax, hard_regs_saved(%rip)	# hard_regs_saved.209, hard_regs_saved
	.loc 1 766 0 discriminator 2
	movl	-80(%rbp), %edx	# regno, regno.210
	movl	-60(%rbp), %eax	# k, tmp214
	addl	%edx, %eax	# regno.210, D.12714
	movq	-24(%rbp), %rdx	# new, tmp215
	addq	$64, %rdx	#, D.12716
	movl	%eax, %esi	# D.12709,
	movq	%rdx, %rdi	# D.12716,
	call	bitmap_set_bit	#
	.loc 1 767 0 discriminator 2
	movl	n_regs_saved(%rip), %eax	# n_regs_saved, n_regs_saved.211
	addl	$1, %eax	#, n_regs_saved.212
	movl	%eax, n_regs_saved(%rip)	# n_regs_saved.212, n_regs_saved
	.loc 1 763 0 discriminator 2
	addl	$1, -60(%rbp)	#, k
.L378:
	.loc 1 763 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# k, tmp216
	cmpl	-56(%rbp), %eax	# numregs, tmp216
	jb	.L379	#,
	.loc 1 771 0 is_stmt 1
	movl	-56(%rbp), %eax	# numregs, tmp217
	subl	$1, %eax	#, D.12714
	.loc 1 772 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	insert_save, .-insert_save
	.type	insert_one_insn, @function
insert_one_insn:
.LFB11:
	.loc 1 781 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# chain, chain
	movl	%esi, -76(%rbp)	# before_p, before_p
	movl	%edx, -80(%rbp)	# code, code
	movq	%rcx, -88(%rbp)	# pat, pat
	.loc 1 782 0
	movq	-72(%rbp), %rax	# chain, tmp140
	movq	32(%rax), %rax	# chain_12(D)->insn, tmp141
	movq	%rax, -40(%rbp)	# tmp141, insn
	.loc 1 798 0
	call	new_insn_chain	#
	movq	%rax, -32(%rbp)	# tmp142, new
	.loc 1 799 0
	cmpl	$0, -76(%rbp)	#, before_p
	je	.L382	#,
.LBB20:
	.loc 1 803 0
	movq	-72(%rbp), %rax	# chain, tmp143
	movq	8(%rax), %rdx	# chain_12(D)->prev, D.12717
	movq	-32(%rbp), %rax	# new, tmp144
	movq	%rdx, 8(%rax)	# D.12717, new_14->prev
	.loc 1 804 0
	movq	-32(%rbp), %rax	# new, tmp145
	movq	8(%rax), %rax	# new_14->prev, D.12717
	testq	%rax, %rax	# D.12717
	je	.L383	#,
	.loc 1 805 0
	movq	-32(%rbp), %rax	# new, tmp146
	movq	8(%rax), %rax	# new_14->prev, D.12717
	movq	-32(%rbp), %rdx	# new, tmp147
	movq	%rdx, (%rax)	# tmp147, _18->next
	jmp	.L384	#
.L383:
	.loc 1 807 0
	movq	-32(%rbp), %rax	# new, tmp148
	movq	%rax, reload_insn_chain(%rip)	# tmp148, reload_insn_chain
.L384:
	.loc 1 809 0
	movq	-72(%rbp), %rax	# chain, tmp149
	movq	-32(%rbp), %rdx	# new, tmp150
	movq	%rdx, 8(%rax)	# tmp150, chain_12(D)->prev
	.loc 1 810 0
	movq	-32(%rbp), %rax	# new, tmp151
	movq	-72(%rbp), %rdx	# chain, tmp152
	movq	%rdx, (%rax)	# tmp152, new_14->next
	.loc 1 811 0
	movq	-40(%rbp), %rdx	# insn, tmp153
	movq	-88(%rbp), %rax	# pat, tmp154
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	emit_insn_before	#
	movq	-32(%rbp), %rdx	# new, tmp155
	movq	%rax, 32(%rdx)	# D.12718, new_14->insn
	.loc 1 814 0
	movq	-72(%rbp), %rax	# chain, tmp156
	leaq	40(%rax), %rdx	#, D.12719
	movq	-32(%rbp), %rax	# new, tmp157
	addq	$40, %rax	#, D.12719
	movq	%rdx, %rsi	# D.12719,
	movq	%rax, %rdi	# D.12719,
	call	bitmap_copy	#
	.loc 1 816 0
	movq	-72(%rbp), %rax	# chain, tmp158
	movq	32(%rax), %rax	# chain_12(D)->insn, D.12718
	movq	56(%rax), %rax	# _23->fld[6].rtx, tmp159
	movq	%rax, -48(%rbp)	# tmp159, link
	jmp	.L385	#
.L413:
	.loc 1 818 0
	movq	-48(%rbp), %rax	# link, tmp160
	movzbl	2(%rax), %eax	# link_1->mode, D.12720
	cmpb	$1, %al	#, D.12720
	jne	.L386	#,
.LBB21:
	.loc 1 820 0
	movq	-48(%rbp), %rax	# link, tmp161
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp162
	movq	%rax, -24(%rbp)	# tmp162, reg
	.loc 1 823 0
	movq	-24(%rbp), %rax	# reg, tmp163
	movzwl	(%rax), %eax	# reg_26->code, D.12721
	cmpw	$61, %ax	#, D.12721
	je	.L387	#,
	.loc 1 824 0
	movl	$__FUNCTION__.11290, %edx	#,
	movl	$824, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L387:
	.loc 1 826 0
	movq	-24(%rbp), %rax	# reg, tmp164
	movl	8(%rax), %eax	# reg_26->fld[0].rtuint, D.12722
	movl	%eax, -56(%rbp)	# D.12722, regno
	.loc 1 827 0
	cmpl	$52, -56(%rbp)	#, regno
	jle	.L388	#,
	.loc 1 828 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.213
	movl	-56(%rbp), %edx	# regno, tmp165
	movslq	%edx, %rdx	# tmp165, D.12723
	addq	%rdx, %rdx	# D.12723
	addq	%rdx, %rax	# D.12723, D.12724
	movzwl	(%rax), %eax	# *_33, D.12725
	cwtl
	movl	%eax, -56(%rbp)	# tmp166, regno
.L388:
	.loc 1 829 0
	cmpl	$0, -56(%rbp)	#, regno
	jns	.L389	#,
	.loc 1 830 0
	jmp	.L386	#
.L389:
	.loc 1 831 0
	cmpl	$7, -56(%rbp)	#, regno
	jle	.L390	#,
	.loc 1 831 0 is_stmt 0 discriminator 1
	cmpl	$15, -56(%rbp)	#, regno
	jle	.L391	#,
.L390:
	.loc 1 831 0 discriminator 2
	cmpl	$20, -56(%rbp)	#, regno
	jle	.L392	#,
	.loc 1 831 0 discriminator 1
	cmpl	$28, -56(%rbp)	#, regno
	jle	.L391	#,
.L392:
	.loc 1 831 0 discriminator 2
	cmpl	$44, -56(%rbp)	#, regno
	jle	.L393	#,
	.loc 1 831 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, regno
	jle	.L391	#,
.L393:
	.loc 1 831 0 discriminator 2
	cmpl	$28, -56(%rbp)	#, regno
	jle	.L394	#,
	.loc 1 831 0 discriminator 1
	cmpl	$36, -56(%rbp)	#, regno
	jg	.L394	#,
.L391:
	movq	-24(%rbp), %rax	# reg, tmp167
	movzbl	2(%rax), %eax	# reg_26->mode, D.12720
	movzbl	%al, %eax	# D.12720, D.12726
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12727
	cmpl	$5, %eax	#, D.12727
	je	.L395	#,
	.loc 1 831 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp169
	movzbl	2(%rax), %eax	# reg_26->mode, D.12720
	movzbl	%al, %eax	# D.12720, D.12726
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12727
	cmpl	$6, %eax	#, D.12727
	jne	.L396	#,
.L395:
	.loc 1 831 0 discriminator 1
	movl	$1, %eax	#, iftmp.215
	jmp	.L397	#
.L396:
	.loc 1 831 0 discriminator 3
	movl	$0, %eax	#, iftmp.215
.L397:
	.loc 1 831 0 discriminator 4
	jmp	.L398	#
.L394:
	.loc 1 831 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp171
	movzbl	2(%rax), %eax	# reg_26->mode, D.12720
	cmpb	$18, %al	#, D.12720
	jne	.L399	#,
	.loc 1 831 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.218
	andl	$33554432, %eax	#, D.12726
	testl	%eax, %eax	# D.12726
	je	.L400	#,
	.loc 1 831 0 discriminator 6
	movl	$1, %eax	#, iftmp.217
	jmp	.L398	#
.L400:
	.loc 1 831 0 discriminator 7
	movl	$2, %eax	#, iftmp.217
	jmp	.L398	#
.L399:
	.loc 1 831 0 discriminator 5
	movq	-24(%rbp), %rax	# reg, tmp172
	movzbl	2(%rax), %eax	# reg_26->mode, D.12720
	cmpb	$24, %al	#, D.12720
	jne	.L403	#,
	.loc 1 831 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.221
	andl	$33554432, %eax	#, D.12726
	testl	%eax, %eax	# D.12726
	je	.L404	#,
	.loc 1 831 0 discriminator 10
	movl	$3, %eax	#, iftmp.220
	jmp	.L398	#
.L404:
	.loc 1 831 0 discriminator 11
	movl	$5, %eax	#, iftmp.220
	jmp	.L398	#
.L403:
	.loc 1 831 0 discriminator 9
	movq	-24(%rbp), %rax	# reg, tmp173
	movzbl	2(%rax), %eax	# reg_26->mode, D.12720
	movzbl	%al, %eax	# D.12720, D.12726
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12720
	movzbl	%al, %edx	# D.12720, D.12726
	movl	target_flags(%rip), %eax	# target_flags, target_flags.223
	andl	$33554432, %eax	#, D.12726
	testl	%eax, %eax	# D.12726
	je	.L407	#,
	.loc 1 831 0 discriminator 1
	movl	$8, %eax	#, iftmp.222
	jmp	.L408	#
.L407:
	.loc 1 831 0 discriminator 2
	movl	$4, %eax	#, iftmp.222
.L408:
	.loc 1 831 0 discriminator 3
	addl	%edx, %eax	# D.12726, D.12726
	subl	$1, %eax	#, D.12726
	movl	target_flags(%rip), %edx	# target_flags, target_flags.225
	andl	$33554432, %edx	#, D.12726
	testl	%edx, %edx	# D.12726
	je	.L409	#,
	.loc 1 831 0 discriminator 1
	movl	$8, %ebx	#, iftmp.224
	jmp	.L410	#
.L409:
	.loc 1 831 0 discriminator 2
	movl	$4, %ebx	#, iftmp.224
.L410:
	.loc 1 831 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.224
	subl	$1, %eax	#, iftmp.219
.L398:
	movl	%eax, -52(%rbp)	# iftmp.214, i
	jmp	.L411	#
.L412:
	.loc 1 833 0 is_stmt 1
	movl	-52(%rbp), %eax	# i, tmp177
	movl	-56(%rbp), %edx	# regno, tmp178
	addl	%eax, %edx	# tmp177, D.12726
	movq	-32(%rbp), %rax	# new, tmp179
	addq	$40, %rax	#, D.12719
	movl	%edx, %esi	# D.12726,
	movq	%rax, %rdi	# D.12719,
	call	bitmap_set_bit	#
	.loc 1 832 0
	subl	$1, -52(%rbp)	#, i
.L411:
	.loc 1 831 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, i
	jns	.L412	#,
.L386:
.LBE21:
	.loc 1 816 0
	movq	-48(%rbp), %rax	# link, tmp180
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp181
	movq	%rax, -48(%rbp)	# tmp181, link
.L385:
	.loc 1 816 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, link
	jne	.L413	#,
	.loc 1 836 0 is_stmt 1
	movq	-32(%rbp), %rax	# new, tmp182
	addq	$64, %rax	#, D.12719
	movq	%rax, %rdi	# D.12719,
	call	bitmap_clear	#
	.loc 1 837 0
	movq	-72(%rbp), %rax	# chain, tmp183
	movq	32(%rax), %rcx	# chain_12(D)->insn, D.12718
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.226
	movq	-72(%rbp), %rdx	# chain, tmp184
	movl	24(%rdx), %edx	# chain_12(D)->block, D.12726
	movslq	%edx, %rdx	# D.12726, tmp185
	addq	$4, %rdx	#, tmp186
	movq	(%rax,%rdx,8), %rax	# basic_block_info.226_82->data.bb, D.12728
	movq	(%rax), %rax	# _84->head, D.12718
	cmpq	%rax, %rcx	# D.12718, D.12718
	jne	.L414	#,
	.loc 1 838 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.227
	movq	-72(%rbp), %rdx	# chain, tmp187
	movl	24(%rdx), %edx	# chain_12(D)->block, D.12726
	movslq	%edx, %rdx	# D.12726, tmp188
	addq	$4, %rdx	#, tmp189
	movq	(%rax,%rdx,8), %rax	# basic_block_info.227_86->data.bb, D.12728
	movq	-32(%rbp), %rdx	# new, tmp190
	movq	32(%rdx), %rdx	# new_14->insn, D.12718
	movq	%rdx, (%rax)	# D.12718, _88->head
.LBE20:
	jmp	.L415	#
.L414:
	jmp	.L415	#
.L382:
	.loc 1 842 0
	movq	-72(%rbp), %rax	# chain, tmp191
	movq	(%rax), %rdx	# chain_12(D)->next, D.12717
	movq	-32(%rbp), %rax	# new, tmp192
	movq	%rdx, (%rax)	# D.12717, new_14->next
	.loc 1 843 0
	movq	-32(%rbp), %rax	# new, tmp193
	movq	(%rax), %rax	# new_14->next, D.12717
	testq	%rax, %rax	# D.12717
	je	.L416	#,
	.loc 1 844 0
	movq	-32(%rbp), %rax	# new, tmp194
	movq	(%rax), %rax	# new_14->next, D.12717
	movq	-32(%rbp), %rdx	# new, tmp195
	movq	%rdx, 8(%rax)	# tmp195, _92->prev
.L416:
	.loc 1 845 0
	movq	-72(%rbp), %rax	# chain, tmp196
	movq	-32(%rbp), %rdx	# new, tmp197
	movq	%rdx, (%rax)	# tmp197, chain_12(D)->next
	.loc 1 846 0
	movq	-32(%rbp), %rax	# new, tmp198
	movq	-72(%rbp), %rdx	# chain, tmp199
	movq	%rdx, 8(%rax)	# tmp199, new_14->prev
	.loc 1 847 0
	movq	-40(%rbp), %rdx	# insn, tmp200
	movq	-88(%rbp), %rax	# pat, tmp201
	movq	%rdx, %rsi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	emit_insn_after	#
	movq	-32(%rbp), %rdx	# new, tmp202
	movq	%rax, 32(%rdx)	# D.12718, new_14->insn
	.loc 1 850 0
	movq	-72(%rbp), %rax	# chain, tmp203
	leaq	40(%rax), %rdx	#, D.12719
	movq	-32(%rbp), %rax	# new, tmp204
	addq	$40, %rax	#, D.12719
	movq	%rdx, %rsi	# D.12719,
	movq	%rax, %rdi	# D.12719,
	call	bitmap_copy	#
	.loc 1 855 0
	movq	-32(%rbp), %rax	# new, tmp205
	leaq	40(%rax), %rdx	#, D.12719
	.loc 1 854 0
	movq	-72(%rbp), %rax	# chain, tmp206
	movq	32(%rax), %rax	# chain_12(D)->insn, D.12718
	movq	32(%rax), %rax	# _97->fld[3].rtx, D.12718
	movl	$add_stored_regs, %esi	#,
	movq	%rax, %rdi	# D.12718,
	call	note_stores	#
	.loc 1 856 0
	movq	-32(%rbp), %rax	# new, tmp207
	addq	$64, %rax	#, D.12719
	movq	%rax, %rdi	# D.12719,
	call	bitmap_clear	#
	.loc 1 857 0
	movq	-72(%rbp), %rax	# chain, tmp208
	movq	32(%rax), %rcx	# chain_12(D)->insn, D.12718
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.228
	movq	-72(%rbp), %rdx	# chain, tmp209
	movl	24(%rdx), %edx	# chain_12(D)->block, D.12726
	movslq	%edx, %rdx	# D.12726, tmp210
	addq	$4, %rdx	#, tmp211
	movq	(%rax,%rdx,8), %rax	# basic_block_info.228_101->data.bb, D.12728
	movq	8(%rax), %rax	# _103->end, D.12718
	cmpq	%rax, %rcx	# D.12718, D.12718
	jne	.L415	#,
	.loc 1 858 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.229
	movq	-72(%rbp), %rdx	# chain, tmp212
	movl	24(%rdx), %edx	# chain_12(D)->block, D.12726
	movslq	%edx, %rdx	# D.12726, tmp213
	addq	$4, %rdx	#, tmp214
	movq	(%rax,%rdx,8), %rax	# basic_block_info.229_105->data.bb, D.12728
	movq	-32(%rbp), %rdx	# new, tmp215
	movq	32(%rdx), %rdx	# new_14->insn, D.12718
	movq	%rdx, 8(%rax)	# D.12718, _107->end
.L415:
	.loc 1 860 0
	movq	-72(%rbp), %rax	# chain, tmp216
	movl	24(%rax), %edx	# chain_12(D)->block, D.12726
	movq	-32(%rbp), %rax	# new, tmp217
	movl	%edx, 24(%rax)	# D.12726, new_14->block
	.loc 1 861 0
	movq	-32(%rbp), %rax	# new, tmp218
	movzbl	262(%rax), %edx	# new_14->is_caller_save_insn, tmp221
	orl	$8, %edx	#, tmp222
	movb	%dl, 262(%rax)	# tmp222, new_14->is_caller_save_insn
	.loc 1 863 0
	movq	-32(%rbp), %rax	# new, tmp223
	movq	32(%rax), %rax	# new_14->insn, D.12718
	movl	-80(%rbp), %edx	# code, tmp224
	movl	%edx, 40(%rax)	# tmp224, _110->fld[4].rtint
	.loc 1 864 0
	movq	-32(%rbp), %rax	# new, D.12717
	.loc 1 865 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	insert_one_insn, .-insert_one_insn
	.section	.rodata
	.align 16
	.type	__FUNCTION__.11051, @object
	.size	__FUNCTION__.11051, 17
__FUNCTION__.11051:
	.string	"init_caller_save"
	.align 16
	.type	__FUNCTION__.11132, @object
	.size	__FUNCTION__.11132, 25
__FUNCTION__.11132:
	.string	"save_call_clobbered_regs"
	.type	__FUNCTION__.11238, @object
	.size	__FUNCTION__.11238, 15
__FUNCTION__.11238:
	.string	"insert_restore"
	.type	__FUNCTION__.11265, @object
	.size	__FUNCTION__.11265, 12
__FUNCTION__.11265:
	.string	"insert_save"
	.align 16
	.type	__FUNCTION__.11290, @object
	.size	__FUNCTION__.11290, 16
__FUNCTION__.11290:
	.string	"insert_one_insn"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "machmode.h"
	.file 7 "bitmap.h"
	.file 8 "basic-block.h"
	.file 9 "varray.h"
	.file 10 "regs.h"
	.file 11 "hard-reg-set.h"
	.file 12 "reload.h"
	.file 13 "function.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2579
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF630
	.byte	0x1
	.long	.LASF631
	.long	.LASF632
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
	.long	0x2a9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xb74
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
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xb84
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
	.long	.LASF633
	.uleb128 0xa
	.long	0x13e
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xd
	.long	.LASF25
	.byte	0x4
	.byte	0x4
	.value	0x18b
	.long	0x18a
	.uleb128 0xe
	.long	.LASF17
	.sleb128 0
	.uleb128 0xe
	.long	.LASF18
	.sleb128 1
	.uleb128 0xe
	.long	.LASF19
	.sleb128 2
	.uleb128 0xe
	.long	.LASF20
	.sleb128 3
	.uleb128 0xe
	.long	.LASF21
	.sleb128 4
	.uleb128 0xe
	.long	.LASF22
	.sleb128 5
	.uleb128 0xe
	.long	.LASF23
	.sleb128 6
	.uleb128 0xe
	.long	.LASF24
	.sleb128 7
	.byte	0
	.uleb128 0xd
	.long	.LASF26
	.byte	0x4
	.byte	0x4
	.value	0x4b2
	.long	0x234
	.uleb128 0xe
	.long	.LASF27
	.sleb128 0
	.uleb128 0xe
	.long	.LASF28
	.sleb128 1
	.uleb128 0xe
	.long	.LASF29
	.sleb128 2
	.uleb128 0xe
	.long	.LASF30
	.sleb128 3
	.uleb128 0xe
	.long	.LASF31
	.sleb128 4
	.uleb128 0xe
	.long	.LASF32
	.sleb128 5
	.uleb128 0xe
	.long	.LASF33
	.sleb128 6
	.uleb128 0xe
	.long	.LASF34
	.sleb128 7
	.uleb128 0xe
	.long	.LASF35
	.sleb128 8
	.uleb128 0xe
	.long	.LASF36
	.sleb128 9
	.uleb128 0xe
	.long	.LASF37
	.sleb128 10
	.uleb128 0xe
	.long	.LASF38
	.sleb128 11
	.uleb128 0xe
	.long	.LASF39
	.sleb128 12
	.uleb128 0xe
	.long	.LASF40
	.sleb128 13
	.uleb128 0xe
	.long	.LASF41
	.sleb128 14
	.uleb128 0xe
	.long	.LASF42
	.sleb128 15
	.uleb128 0xe
	.long	.LASF43
	.sleb128 16
	.uleb128 0xe
	.long	.LASF44
	.sleb128 17
	.uleb128 0xe
	.long	.LASF45
	.sleb128 18
	.uleb128 0xe
	.long	.LASF46
	.sleb128 19
	.uleb128 0xe
	.long	.LASF47
	.sleb128 20
	.uleb128 0xe
	.long	.LASF48
	.sleb128 21
	.uleb128 0xe
	.long	.LASF49
	.sleb128 22
	.uleb128 0xe
	.long	.LASF50
	.sleb128 23
	.uleb128 0xe
	.long	.LASF51
	.sleb128 24
	.uleb128 0xe
	.long	.LASF52
	.sleb128 25
	.byte	0
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x29d
	.uleb128 0x10
	.long	.LASF54
	.byte	0x4
	.value	0x684
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x4
	.value	0x685
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF56
	.byte	0x4
	.value	0x686
	.long	0x13e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF57
	.byte	0x4
	.value	0x687
	.long	0x13e
	.byte	0xc
	.uleb128 0x10
	.long	.LASF58
	.byte	0x4
	.value	0x688
	.long	0x13e
	.byte	0x10
	.uleb128 0x10
	.long	.LASF59
	.byte	0x4
	.value	0x689
	.long	0x13e
	.byte	0x14
	.uleb128 0x10
	.long	.LASF60
	.byte	0x4
	.value	0x68a
	.long	0x13e
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF61
	.byte	0x4
	.value	0x68b
	.long	0x234
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF62
	.uleb128 0x12
	.byte	0x8
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF63
	.uleb128 0x7
	.long	.LASF64
	.byte	0x5
	.byte	0xd4
	.long	0x2c4
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF65
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF66
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF67
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF68
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF69
	.uleb128 0x3
	.byte	0x8
	.long	0x2ed
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF70
	.uleb128 0x13
	.long	0x2ed
	.long	0x304
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30a
	.uleb128 0xa
	.long	0x2ed
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF72
	.uleb128 0x15
	.long	.LASF73
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x492
	.uleb128 0xe
	.long	.LASF74
	.sleb128 0
	.uleb128 0xe
	.long	.LASF75
	.sleb128 1
	.uleb128 0xe
	.long	.LASF76
	.sleb128 2
	.uleb128 0xe
	.long	.LASF77
	.sleb128 3
	.uleb128 0xe
	.long	.LASF78
	.sleb128 4
	.uleb128 0xe
	.long	.LASF79
	.sleb128 5
	.uleb128 0xe
	.long	.LASF80
	.sleb128 6
	.uleb128 0xe
	.long	.LASF81
	.sleb128 7
	.uleb128 0xe
	.long	.LASF82
	.sleb128 8
	.uleb128 0xe
	.long	.LASF83
	.sleb128 9
	.uleb128 0xe
	.long	.LASF84
	.sleb128 10
	.uleb128 0xe
	.long	.LASF85
	.sleb128 11
	.uleb128 0xe
	.long	.LASF86
	.sleb128 12
	.uleb128 0xe
	.long	.LASF87
	.sleb128 13
	.uleb128 0xe
	.long	.LASF88
	.sleb128 14
	.uleb128 0xe
	.long	.LASF89
	.sleb128 15
	.uleb128 0xe
	.long	.LASF90
	.sleb128 16
	.uleb128 0xe
	.long	.LASF91
	.sleb128 17
	.uleb128 0xe
	.long	.LASF92
	.sleb128 18
	.uleb128 0xe
	.long	.LASF93
	.sleb128 19
	.uleb128 0xe
	.long	.LASF94
	.sleb128 20
	.uleb128 0xe
	.long	.LASF95
	.sleb128 21
	.uleb128 0xe
	.long	.LASF96
	.sleb128 22
	.uleb128 0xe
	.long	.LASF97
	.sleb128 23
	.uleb128 0xe
	.long	.LASF98
	.sleb128 24
	.uleb128 0xe
	.long	.LASF99
	.sleb128 25
	.uleb128 0xe
	.long	.LASF100
	.sleb128 26
	.uleb128 0xe
	.long	.LASF101
	.sleb128 27
	.uleb128 0xe
	.long	.LASF102
	.sleb128 28
	.uleb128 0xe
	.long	.LASF103
	.sleb128 29
	.uleb128 0xe
	.long	.LASF104
	.sleb128 30
	.uleb128 0xe
	.long	.LASF105
	.sleb128 31
	.uleb128 0xe
	.long	.LASF106
	.sleb128 32
	.uleb128 0xe
	.long	.LASF107
	.sleb128 33
	.uleb128 0xe
	.long	.LASF108
	.sleb128 34
	.uleb128 0xe
	.long	.LASF109
	.sleb128 35
	.uleb128 0xe
	.long	.LASF110
	.sleb128 36
	.uleb128 0xe
	.long	.LASF111
	.sleb128 37
	.uleb128 0xe
	.long	.LASF112
	.sleb128 38
	.uleb128 0xe
	.long	.LASF113
	.sleb128 39
	.uleb128 0xe
	.long	.LASF114
	.sleb128 40
	.uleb128 0xe
	.long	.LASF115
	.sleb128 41
	.uleb128 0xe
	.long	.LASF116
	.sleb128 42
	.uleb128 0xe
	.long	.LASF117
	.sleb128 43
	.uleb128 0xe
	.long	.LASF118
	.sleb128 44
	.uleb128 0xe
	.long	.LASF119
	.sleb128 45
	.uleb128 0xe
	.long	.LASF120
	.sleb128 46
	.uleb128 0xe
	.long	.LASF121
	.sleb128 47
	.uleb128 0xe
	.long	.LASF122
	.sleb128 48
	.uleb128 0xe
	.long	.LASF123
	.sleb128 49
	.uleb128 0xe
	.long	.LASF124
	.sleb128 50
	.uleb128 0xe
	.long	.LASF125
	.sleb128 51
	.uleb128 0xe
	.long	.LASF126
	.sleb128 52
	.uleb128 0xe
	.long	.LASF127
	.sleb128 53
	.uleb128 0xe
	.long	.LASF128
	.sleb128 54
	.uleb128 0xe
	.long	.LASF129
	.sleb128 55
	.uleb128 0xe
	.long	.LASF130
	.sleb128 56
	.uleb128 0xe
	.long	.LASF131
	.sleb128 57
	.uleb128 0xe
	.long	.LASF132
	.sleb128 58
	.uleb128 0xe
	.long	.LASF133
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF134
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x4db
	.uleb128 0xe
	.long	.LASF135
	.sleb128 0
	.uleb128 0xe
	.long	.LASF136
	.sleb128 1
	.uleb128 0xe
	.long	.LASF137
	.sleb128 2
	.uleb128 0xe
	.long	.LASF138
	.sleb128 3
	.uleb128 0xe
	.long	.LASF139
	.sleb128 4
	.uleb128 0xe
	.long	.LASF140
	.sleb128 5
	.uleb128 0xe
	.long	.LASF141
	.sleb128 6
	.uleb128 0xe
	.long	.LASF142
	.sleb128 7
	.uleb128 0xe
	.long	.LASF143
	.sleb128 8
	.uleb128 0xe
	.long	.LASF144
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF145
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x8d7
	.uleb128 0xe
	.long	.LASF146
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF147
	.sleb128 2
	.uleb128 0xe
	.long	.LASF148
	.sleb128 3
	.uleb128 0xe
	.long	.LASF149
	.sleb128 4
	.uleb128 0xe
	.long	.LASF150
	.sleb128 5
	.uleb128 0xe
	.long	.LASF151
	.sleb128 6
	.uleb128 0xe
	.long	.LASF152
	.sleb128 7
	.uleb128 0xe
	.long	.LASF153
	.sleb128 8
	.uleb128 0xe
	.long	.LASF154
	.sleb128 9
	.uleb128 0xe
	.long	.LASF155
	.sleb128 10
	.uleb128 0xe
	.long	.LASF156
	.sleb128 11
	.uleb128 0xe
	.long	.LASF157
	.sleb128 12
	.uleb128 0xe
	.long	.LASF158
	.sleb128 13
	.uleb128 0xe
	.long	.LASF159
	.sleb128 14
	.uleb128 0xe
	.long	.LASF160
	.sleb128 15
	.uleb128 0xe
	.long	.LASF161
	.sleb128 16
	.uleb128 0xe
	.long	.LASF162
	.sleb128 17
	.uleb128 0xe
	.long	.LASF163
	.sleb128 18
	.uleb128 0xe
	.long	.LASF164
	.sleb128 19
	.uleb128 0xe
	.long	.LASF165
	.sleb128 20
	.uleb128 0xe
	.long	.LASF166
	.sleb128 21
	.uleb128 0xe
	.long	.LASF167
	.sleb128 22
	.uleb128 0xe
	.long	.LASF168
	.sleb128 23
	.uleb128 0xe
	.long	.LASF169
	.sleb128 24
	.uleb128 0xe
	.long	.LASF170
	.sleb128 25
	.uleb128 0xe
	.long	.LASF171
	.sleb128 26
	.uleb128 0xe
	.long	.LASF172
	.sleb128 27
	.uleb128 0xe
	.long	.LASF173
	.sleb128 28
	.uleb128 0xe
	.long	.LASF174
	.sleb128 29
	.uleb128 0xe
	.long	.LASF175
	.sleb128 30
	.uleb128 0xe
	.long	.LASF176
	.sleb128 31
	.uleb128 0xe
	.long	.LASF177
	.sleb128 32
	.uleb128 0xe
	.long	.LASF178
	.sleb128 33
	.uleb128 0xe
	.long	.LASF179
	.sleb128 34
	.uleb128 0xe
	.long	.LASF180
	.sleb128 35
	.uleb128 0xe
	.long	.LASF181
	.sleb128 36
	.uleb128 0xe
	.long	.LASF182
	.sleb128 37
	.uleb128 0xe
	.long	.LASF183
	.sleb128 38
	.uleb128 0xe
	.long	.LASF184
	.sleb128 39
	.uleb128 0xe
	.long	.LASF185
	.sleb128 40
	.uleb128 0xe
	.long	.LASF186
	.sleb128 41
	.uleb128 0xe
	.long	.LASF187
	.sleb128 42
	.uleb128 0xe
	.long	.LASF188
	.sleb128 43
	.uleb128 0xe
	.long	.LASF189
	.sleb128 44
	.uleb128 0xe
	.long	.LASF190
	.sleb128 45
	.uleb128 0xe
	.long	.LASF191
	.sleb128 46
	.uleb128 0x16
	.string	"SET"
	.sleb128 47
	.uleb128 0x16
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF192
	.sleb128 49
	.uleb128 0xe
	.long	.LASF193
	.sleb128 50
	.uleb128 0xe
	.long	.LASF194
	.sleb128 51
	.uleb128 0xe
	.long	.LASF195
	.sleb128 52
	.uleb128 0xe
	.long	.LASF196
	.sleb128 53
	.uleb128 0xe
	.long	.LASF197
	.sleb128 54
	.uleb128 0xe
	.long	.LASF198
	.sleb128 55
	.uleb128 0xe
	.long	.LASF199
	.sleb128 56
	.uleb128 0xe
	.long	.LASF200
	.sleb128 57
	.uleb128 0xe
	.long	.LASF201
	.sleb128 58
	.uleb128 0x16
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF202
	.sleb128 60
	.uleb128 0x16
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF203
	.sleb128 62
	.uleb128 0xe
	.long	.LASF204
	.sleb128 63
	.uleb128 0xe
	.long	.LASF205
	.sleb128 64
	.uleb128 0xe
	.long	.LASF206
	.sleb128 65
	.uleb128 0x16
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF207
	.sleb128 67
	.uleb128 0xe
	.long	.LASF208
	.sleb128 68
	.uleb128 0x16
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF209
	.sleb128 70
	.uleb128 0xe
	.long	.LASF210
	.sleb128 71
	.uleb128 0xe
	.long	.LASF211
	.sleb128 72
	.uleb128 0xe
	.long	.LASF212
	.sleb128 73
	.uleb128 0xe
	.long	.LASF213
	.sleb128 74
	.uleb128 0xe
	.long	.LASF214
	.sleb128 75
	.uleb128 0xe
	.long	.LASF215
	.sleb128 76
	.uleb128 0x16
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF216
	.sleb128 78
	.uleb128 0x16
	.string	"DIV"
	.sleb128 79
	.uleb128 0x16
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF217
	.sleb128 81
	.uleb128 0xe
	.long	.LASF218
	.sleb128 82
	.uleb128 0x16
	.string	"AND"
	.sleb128 83
	.uleb128 0x16
	.string	"IOR"
	.sleb128 84
	.uleb128 0x16
	.string	"XOR"
	.sleb128 85
	.uleb128 0x16
	.string	"NOT"
	.sleb128 86
	.uleb128 0xe
	.long	.LASF219
	.sleb128 87
	.uleb128 0xe
	.long	.LASF220
	.sleb128 88
	.uleb128 0xe
	.long	.LASF221
	.sleb128 89
	.uleb128 0xe
	.long	.LASF222
	.sleb128 90
	.uleb128 0xe
	.long	.LASF223
	.sleb128 91
	.uleb128 0xe
	.long	.LASF224
	.sleb128 92
	.uleb128 0xe
	.long	.LASF225
	.sleb128 93
	.uleb128 0xe
	.long	.LASF226
	.sleb128 94
	.uleb128 0xe
	.long	.LASF227
	.sleb128 95
	.uleb128 0xe
	.long	.LASF228
	.sleb128 96
	.uleb128 0xe
	.long	.LASF229
	.sleb128 97
	.uleb128 0xe
	.long	.LASF230
	.sleb128 98
	.uleb128 0xe
	.long	.LASF231
	.sleb128 99
	.uleb128 0xe
	.long	.LASF232
	.sleb128 100
	.uleb128 0xe
	.long	.LASF233
	.sleb128 101
	.uleb128 0x16
	.string	"NE"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ"
	.sleb128 103
	.uleb128 0x16
	.string	"GE"
	.sleb128 104
	.uleb128 0x16
	.string	"GT"
	.sleb128 105
	.uleb128 0x16
	.string	"LE"
	.sleb128 106
	.uleb128 0x16
	.string	"LT"
	.sleb128 107
	.uleb128 0x16
	.string	"GEU"
	.sleb128 108
	.uleb128 0x16
	.string	"GTU"
	.sleb128 109
	.uleb128 0x16
	.string	"LEU"
	.sleb128 110
	.uleb128 0x16
	.string	"LTU"
	.sleb128 111
	.uleb128 0xe
	.long	.LASF234
	.sleb128 112
	.uleb128 0xe
	.long	.LASF235
	.sleb128 113
	.uleb128 0xe
	.long	.LASF236
	.sleb128 114
	.uleb128 0xe
	.long	.LASF237
	.sleb128 115
	.uleb128 0xe
	.long	.LASF238
	.sleb128 116
	.uleb128 0xe
	.long	.LASF239
	.sleb128 117
	.uleb128 0xe
	.long	.LASF240
	.sleb128 118
	.uleb128 0xe
	.long	.LASF241
	.sleb128 119
	.uleb128 0xe
	.long	.LASF242
	.sleb128 120
	.uleb128 0xe
	.long	.LASF243
	.sleb128 121
	.uleb128 0xe
	.long	.LASF244
	.sleb128 122
	.uleb128 0xe
	.long	.LASF245
	.sleb128 123
	.uleb128 0xe
	.long	.LASF246
	.sleb128 124
	.uleb128 0xe
	.long	.LASF247
	.sleb128 125
	.uleb128 0x16
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF248
	.sleb128 127
	.uleb128 0xe
	.long	.LASF249
	.sleb128 128
	.uleb128 0x16
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF250
	.sleb128 130
	.uleb128 0x16
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF251
	.sleb128 132
	.uleb128 0xe
	.long	.LASF252
	.sleb128 133
	.uleb128 0xe
	.long	.LASF253
	.sleb128 134
	.uleb128 0xe
	.long	.LASF254
	.sleb128 135
	.uleb128 0xe
	.long	.LASF255
	.sleb128 136
	.uleb128 0xe
	.long	.LASF256
	.sleb128 137
	.uleb128 0xe
	.long	.LASF257
	.sleb128 138
	.uleb128 0xe
	.long	.LASF258
	.sleb128 139
	.uleb128 0xe
	.long	.LASF259
	.sleb128 140
	.uleb128 0xe
	.long	.LASF260
	.sleb128 141
	.uleb128 0xe
	.long	.LASF261
	.sleb128 142
	.uleb128 0xe
	.long	.LASF262
	.sleb128 143
	.uleb128 0xe
	.long	.LASF263
	.sleb128 144
	.uleb128 0xe
	.long	.LASF264
	.sleb128 145
	.uleb128 0xe
	.long	.LASF265
	.sleb128 146
	.uleb128 0xe
	.long	.LASF266
	.sleb128 147
	.uleb128 0xe
	.long	.LASF267
	.sleb128 148
	.uleb128 0xe
	.long	.LASF268
	.sleb128 149
	.uleb128 0xe
	.long	.LASF269
	.sleb128 150
	.uleb128 0xe
	.long	.LASF270
	.sleb128 151
	.uleb128 0x16
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF271
	.sleb128 153
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x958
	.uleb128 0x5
	.long	.LASF272
	.byte	0x2
	.byte	0x47
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF273
	.byte	0x2
	.byte	0x49
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF274
	.byte	0x2
	.byte	0x4a
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF275
	.byte	0x2
	.byte	0x4c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF276
	.byte	0x2
	.byte	0x4e
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF277
	.byte	0x2
	.byte	0x50
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF278
	.byte	0x2
	.byte	0x53
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0x2
	.byte	0x55
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF280
	.byte	0x2
	.byte	0x56
	.long	0x8d7
	.uleb128 0x17
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x9a8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x2
	.byte	0x5e
	.long	0x2b2
	.byte	0
	.uleb128 0x8
	.long	.LASF282
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF283
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF284
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF285
	.byte	0x2
	.byte	0x62
	.long	0x2a9
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF286
	.byte	0x2
	.byte	0x63
	.long	0x963
	.uleb128 0x18
	.long	.LASF386
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xa4e
	.uleb128 0x19
	.long	.LASF287
	.byte	0x2
	.byte	0x69
	.long	0x2b2
	.uleb128 0x19
	.long	.LASF288
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x19
	.long	.LASF289
	.byte	0x2
	.byte	0x6b
	.long	0x2a9
	.uleb128 0x19
	.long	.LASF290
	.byte	0x2
	.byte	0x6c
	.long	0x304
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x19
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x19
	.long	.LASF291
	.byte	0x2
	.byte	0x6f
	.long	0x31d
	.uleb128 0x19
	.long	.LASF292
	.byte	0x2
	.byte	0x70
	.long	0x958
	.uleb128 0x19
	.long	.LASF293
	.byte	0x2
	.byte	0x71
	.long	0xa53
	.uleb128 0x19
	.long	.LASF294
	.byte	0x2
	.byte	0x72
	.long	0xa8a
	.uleb128 0x19
	.long	.LASF295
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xb5d
	.uleb128 0x19
	.long	.LASF296
	.byte	0x2
	.byte	0x75
	.long	0xb63
	.byte	0
	.uleb128 0x1b
	.long	.LASF395
	.uleb128 0x3
	.byte	0x8
	.long	0xa4e
	.uleb128 0x4
	.long	.LASF297
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.long	0xa8a
	.uleb128 0x8
	.long	.LASF298
	.byte	0x7
	.byte	0x35
	.long	0x1106
	.byte	0
	.uleb128 0x8
	.long	.LASF299
	.byte	0x7
	.byte	0x36
	.long	0x1106
	.byte	0x8
	.uleb128 0x8
	.long	.LASF300
	.byte	0x7
	.byte	0x37
	.long	0x2a9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa59
	.uleb128 0x4
	.long	.LASF301
	.byte	0x70
	.byte	0x8
	.byte	0xae
	.long	0xb5d
	.uleb128 0x8
	.long	.LASF302
	.byte	0x8
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x8
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF303
	.byte	0x8
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF304
	.byte	0x8
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF305
	.byte	0x8
	.byte	0xb7
	.long	0x11c2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF306
	.byte	0x8
	.byte	0xb7
	.long	0x11c2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF307
	.byte	0x8
	.byte	0xbc
	.long	0x112d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF308
	.byte	0x8
	.byte	0xc0
	.long	0x112d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF309
	.byte	0x8
	.byte	0xc6
	.long	0x112d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF310
	.byte	0x8
	.byte	0xc8
	.long	0x112d
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0xcb
	.long	0x2b0
	.byte	0x50
	.uleb128 0x8
	.long	.LASF311
	.byte	0x8
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF312
	.byte	0x8
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF313
	.byte	0x8
	.byte	0xd4
	.long	0x1138
	.byte	0x60
	.uleb128 0x8
	.long	.LASF314
	.byte	0x8
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF315
	.byte	0x8
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa90
	.uleb128 0x3
	.byte	0x8
	.long	0x9a8
	.uleb128 0x7
	.long	.LASF316
	.byte	0x2
	.byte	0x76
	.long	0x9b3
	.uleb128 0x13
	.long	0xb69
	.long	0xb84
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0xb94
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF317
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xc56
	.uleb128 0xe
	.long	.LASF318
	.sleb128 1
	.uleb128 0xe
	.long	.LASF319
	.sleb128 2
	.uleb128 0xe
	.long	.LASF320
	.sleb128 3
	.uleb128 0xe
	.long	.LASF321
	.sleb128 4
	.uleb128 0xe
	.long	.LASF322
	.sleb128 5
	.uleb128 0xe
	.long	.LASF323
	.sleb128 6
	.uleb128 0xe
	.long	.LASF324
	.sleb128 7
	.uleb128 0xe
	.long	.LASF325
	.sleb128 8
	.uleb128 0xe
	.long	.LASF326
	.sleb128 9
	.uleb128 0xe
	.long	.LASF327
	.sleb128 10
	.uleb128 0xe
	.long	.LASF328
	.sleb128 11
	.uleb128 0xe
	.long	.LASF329
	.sleb128 12
	.uleb128 0xe
	.long	.LASF330
	.sleb128 13
	.uleb128 0xe
	.long	.LASF331
	.sleb128 14
	.uleb128 0xe
	.long	.LASF332
	.sleb128 15
	.uleb128 0xe
	.long	.LASF333
	.sleb128 16
	.uleb128 0xe
	.long	.LASF334
	.sleb128 17
	.uleb128 0xe
	.long	.LASF335
	.sleb128 18
	.uleb128 0xe
	.long	.LASF336
	.sleb128 19
	.uleb128 0xe
	.long	.LASF337
	.sleb128 20
	.uleb128 0xe
	.long	.LASF338
	.sleb128 21
	.uleb128 0xe
	.long	.LASF339
	.sleb128 22
	.uleb128 0xe
	.long	.LASF340
	.sleb128 23
	.uleb128 0xe
	.long	.LASF341
	.sleb128 24
	.uleb128 0xe
	.long	.LASF342
	.sleb128 25
	.uleb128 0xe
	.long	.LASF343
	.sleb128 26
	.uleb128 0xe
	.long	.LASF344
	.sleb128 27
	.uleb128 0xe
	.long	.LASF345
	.sleb128 28
	.uleb128 0xe
	.long	.LASF346
	.sleb128 29
	.uleb128 0xe
	.long	.LASF347
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF348
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xd05
	.uleb128 0xe
	.long	.LASF349
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF350
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF351
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF352
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF353
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF354
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF355
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF356
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF357
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF358
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF359
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF360
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF361
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF362
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF363
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF364
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF365
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF366
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF367
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF368
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF369
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF370
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF371
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF372
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xd61
	.uleb128 0xe
	.long	.LASF373
	.sleb128 0
	.uleb128 0xe
	.long	.LASF374
	.sleb128 1
	.uleb128 0xe
	.long	.LASF375
	.sleb128 2
	.uleb128 0xe
	.long	.LASF376
	.sleb128 3
	.uleb128 0xe
	.long	.LASF377
	.sleb128 4
	.uleb128 0xe
	.long	.LASF378
	.sleb128 5
	.uleb128 0xe
	.long	.LASF379
	.sleb128 6
	.uleb128 0xe
	.long	.LASF380
	.sleb128 7
	.uleb128 0xe
	.long	.LASF381
	.sleb128 8
	.uleb128 0xe
	.long	.LASF382
	.sleb128 9
	.uleb128 0xe
	.long	.LASF383
	.sleb128 10
	.uleb128 0xe
	.long	.LASF384
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF385
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.long	0xd86
	.uleb128 0x6
	.string	"rtx"
	.byte	0x9
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x9
	.byte	0x36
	.long	0x2a9
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF387
	.byte	0x10
	.byte	0x9
	.byte	0x3a
	.long	0xe6b
	.uleb128 0x1a
	.string	"c"
	.byte	0x9
	.byte	0x3b
	.long	0x2f4
	.uleb128 0x1a
	.string	"uc"
	.byte	0x9
	.byte	0x3c
	.long	0xe6b
	.uleb128 0x1a
	.string	"s"
	.byte	0x9
	.byte	0x3d
	.long	0xe7b
	.uleb128 0x1a
	.string	"us"
	.byte	0x9
	.byte	0x3e
	.long	0xe8b
	.uleb128 0x1a
	.string	"i"
	.byte	0x9
	.byte	0x3f
	.long	0xe9b
	.uleb128 0x1a
	.string	"u"
	.byte	0x9
	.byte	0x40
	.long	0xeab
	.uleb128 0x1a
	.string	"l"
	.byte	0x9
	.byte	0x41
	.long	0xebb
	.uleb128 0x1a
	.string	"ul"
	.byte	0x9
	.byte	0x42
	.long	0xecb
	.uleb128 0x19
	.long	.LASF388
	.byte	0x9
	.byte	0x43
	.long	0xebb
	.uleb128 0x19
	.long	.LASF389
	.byte	0x9
	.byte	0x44
	.long	0xecb
	.uleb128 0x19
	.long	.LASF390
	.byte	0x9
	.byte	0x45
	.long	0xedb
	.uleb128 0x19
	.long	.LASF391
	.byte	0x9
	.byte	0x46
	.long	0xeeb
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x9
	.byte	0x47
	.long	0xefb
	.uleb128 0x19
	.long	.LASF10
	.byte	0x9
	.byte	0x48
	.long	0xf0b
	.uleb128 0x19
	.long	.LASF15
	.byte	0x9
	.byte	0x49
	.long	0xf1b
	.uleb128 0x19
	.long	.LASF392
	.byte	0x9
	.byte	0x4a
	.long	0xf2b
	.uleb128 0x19
	.long	.LASF393
	.byte	0x9
	.byte	0x4b
	.long	0xf3b
	.uleb128 0x1a
	.string	"reg"
	.byte	0x9
	.byte	0x4c
	.long	0xf56
	.uleb128 0x19
	.long	.LASF394
	.byte	0x9
	.byte	0x4d
	.long	0xffd
	.uleb128 0x1a
	.string	"bb"
	.byte	0x9
	.byte	0x4e
	.long	0x100d
	.uleb128 0x1a
	.string	"te"
	.byte	0x9
	.byte	0x4f
	.long	0x101d
	.byte	0
	.uleb128 0x13
	.long	0x2cb
	.long	0xe7b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2e0
	.long	0xe8b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d2
	.long	0xe9b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x13e
	.long	0xeab
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2a9
	.long	0xebb
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2b2
	.long	0xecb
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c4
	.long	0xedb
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2b0
	.long	0xeeb
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2e7
	.long	0xefb
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x38
	.long	0xf0b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf8
	.long	0xf1b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x12e
	.long	0xf2b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xa8a
	.long	0xf3b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf4b
	.long	0xf4b
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf51
	.uleb128 0x1b
	.long	.LASF396
	.uleb128 0x13
	.long	0xf66
	.long	0xf66
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf6c
	.uleb128 0x4
	.long	.LASF397
	.byte	0x2c
	.byte	0xa
	.byte	0x2d
	.long	0xffd
	.uleb128 0x8
	.long	.LASF398
	.byte	0xa
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF399
	.byte	0xa
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF400
	.byte	0xa
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF401
	.byte	0xa
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF402
	.byte	0xa
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF403
	.byte	0xa
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF404
	.byte	0xa
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF405
	.byte	0xa
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF406
	.byte	0xa
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF407
	.byte	0xa
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF408
	.byte	0xa
	.byte	0x3d
	.long	0x2ed
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0xd61
	.long	0x100d
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xb5d
	.long	0x101d
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x102d
	.long	0x102d
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1033
	.uleb128 0x1b
	.long	.LASF409
	.uleb128 0x7
	.long	.LASF410
	.byte	0x9
	.byte	0x50
	.long	0xd86
	.uleb128 0x4
	.long	.LASF411
	.byte	0x30
	.byte	0x9
	.byte	0x53
	.long	0x108c
	.uleb128 0x8
	.long	.LASF412
	.byte	0x9
	.byte	0x54
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF413
	.byte	0x9
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF414
	.byte	0x9
	.byte	0x57
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF415
	.byte	0x9
	.byte	0x58
	.long	0x304
	.byte	0x18
	.uleb128 0x8
	.long	.LASF416
	.byte	0x9
	.byte	0x59
	.long	0x1038
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF417
	.byte	0x9
	.byte	0x5a
	.long	0x1097
	.uleb128 0x3
	.byte	0x8
	.long	0x1043
	.uleb128 0x7
	.long	.LASF418
	.byte	0xb
	.byte	0x29
	.long	0x2c4
	.uleb128 0x4
	.long	.LASF419
	.byte	0x28
	.byte	0x7
	.byte	0x2b
	.long	0x10e5
	.uleb128 0x8
	.long	.LASF420
	.byte	0x7
	.byte	0x2d
	.long	0x10e5
	.byte	0
	.uleb128 0x8
	.long	.LASF421
	.byte	0x7
	.byte	0x2e
	.long	0x10e5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF300
	.byte	0x7
	.byte	0x2f
	.long	0x2a9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF422
	.byte	0x7
	.byte	0x30
	.long	0x10eb
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10a8
	.uleb128 0x13
	.long	0x2c4
	.long	0x10fb
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF423
	.byte	0x7
	.byte	0x31
	.long	0x10a8
	.uleb128 0x3
	.byte	0x8
	.long	0x10fb
	.uleb128 0x7
	.long	.LASF424
	.byte	0x7
	.byte	0x39
	.long	0xa59
	.uleb128 0x7
	.long	.LASF392
	.byte	0x7
	.byte	0x39
	.long	0xa8a
	.uleb128 0x7
	.long	.LASF425
	.byte	0x8
	.byte	0x1f
	.long	0x110c
	.uleb128 0x7
	.long	.LASF426
	.byte	0x8
	.byte	0x21
	.long	0x1117
	.uleb128 0x7
	.long	.LASF427
	.byte	0x8
	.byte	0x74
	.long	0x2b2
	.uleb128 0x4
	.long	.LASF428
	.byte	0x40
	.byte	0x8
	.byte	0x77
	.long	0x11bc
	.uleb128 0x8
	.long	.LASF429
	.byte	0x8
	.byte	0x79
	.long	0x11bc
	.byte	0
	.uleb128 0x8
	.long	.LASF430
	.byte	0x8
	.byte	0x79
	.long	0x11bc
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x8
	.byte	0x7c
	.long	0xb5d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF431
	.byte	0x8
	.byte	0x7c
	.long	0xb5d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF432
	.byte	0x8
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0x82
	.long	0x2b0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF315
	.byte	0x8
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF433
	.byte	0x8
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF313
	.byte	0x8
	.byte	0x86
	.long	0x1138
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1143
	.uleb128 0x7
	.long	.LASF434
	.byte	0x8
	.byte	0x88
	.long	0x11bc
	.uleb128 0x4
	.long	.LASF435
	.byte	0x96
	.byte	0xc
	.byte	0xc3
	.long	0x11f2
	.uleb128 0x8
	.long	.LASF436
	.byte	0xc
	.byte	0xc6
	.long	0x11f2
	.byte	0
	.uleb128 0x8
	.long	.LASF437
	.byte	0xc
	.byte	0xc7
	.long	0x1208
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.long	0x2e0
	.long	0x1208
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	0x2e0
	.long	0x1218
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x1c
	.long	.LASF438
	.value	0x108
	.byte	0xc
	.byte	0xce
	.long	0x12ea
	.uleb128 0x8
	.long	.LASF420
	.byte	0xc
	.byte	0xd1
	.long	0x12ea
	.byte	0
	.uleb128 0x8
	.long	.LASF421
	.byte	0xc
	.byte	0xd1
	.long	0x12ea
	.byte	0x8
	.uleb128 0x8
	.long	.LASF439
	.byte	0xc
	.byte	0xd5
	.long	0x12ea
	.byte	0x10
	.uleb128 0x8
	.long	.LASF440
	.byte	0xc
	.byte	0xd8
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF441
	.byte	0xc
	.byte	0xda
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF442
	.byte	0xc
	.byte	0xdd
	.long	0x1122
	.byte	0x28
	.uleb128 0x8
	.long	.LASF443
	.byte	0xc
	.byte	0xde
	.long	0x1122
	.byte	0x40
	.uleb128 0x6
	.string	"rld"
	.byte	0xc
	.byte	0xe1
	.long	0x12f5
	.byte	0x58
	.uleb128 0x8
	.long	.LASF444
	.byte	0xc
	.byte	0xe2
	.long	0x13e
	.byte	0x60
	.uleb128 0x8
	.long	.LASF445
	.byte	0xc
	.byte	0xe5
	.long	0x109d
	.byte	0x68
	.uleb128 0x8
	.long	.LASF446
	.byte	0xc
	.byte	0xe8
	.long	0x11cd
	.byte	0x70
	.uleb128 0x1d
	.long	.LASF447
	.byte	0xc
	.byte	0xeb
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x104
	.uleb128 0x1d
	.long	.LASF448
	.byte	0xc
	.byte	0xee
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x104
	.uleb128 0x1d
	.long	.LASF449
	.byte	0xc
	.byte	0xf0
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x104
	.uleb128 0x1d
	.long	.LASF450
	.byte	0xc
	.byte	0xf2
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x104
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1218
	.uleb128 0x1b
	.long	.LASF451
	.uleb128 0x3
	.byte	0x8
	.long	0x12f0
	.uleb128 0x4
	.long	.LASF452
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.long	0x1338
	.uleb128 0x8
	.long	.LASF453
	.byte	0xd
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF454
	.byte	0xd
	.byte	0x19
	.long	0x31d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF455
	.byte	0xd
	.byte	0x1a
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF420
	.byte	0xd
	.byte	0x1b
	.long	0x1338
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12fb
	.uleb128 0x4
	.long	.LASF456
	.byte	0x20
	.byte	0xd
	.byte	0x23
	.long	0x137b
	.uleb128 0x8
	.long	.LASF298
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF457
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF458
	.byte	0xd
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF420
	.byte	0xd
	.byte	0x28
	.long	0x137b
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x133e
	.uleb128 0x4
	.long	.LASF459
	.byte	0x58
	.byte	0xd
	.byte	0x35
	.long	0x142a
	.uleb128 0x8
	.long	.LASF460
	.byte	0xd
	.byte	0x39
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF461
	.byte	0xd
	.byte	0x3c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF462
	.byte	0xd
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF463
	.byte	0xd
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF458
	.byte	0xd
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF456
	.byte	0xd
	.byte	0x4f
	.long	0x137b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF464
	.byte	0xd
	.byte	0x53
	.long	0x13e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF465
	.byte	0xd
	.byte	0x57
	.long	0x13e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF466
	.byte	0xd
	.byte	0x58
	.long	0x304
	.byte	0x30
	.uleb128 0x8
	.long	.LASF467
	.byte	0xd
	.byte	0x5e
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF468
	.byte	0xd
	.byte	0x63
	.long	0x142a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF469
	.byte	0xd
	.byte	0x67
	.long	0x1430
	.byte	0x48
	.uleb128 0x8
	.long	.LASF470
	.byte	0xd
	.byte	0x6b
	.long	0xd05
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cb
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF471
	.byte	0x30
	.byte	0xd
	.byte	0x77
	.long	0x1497
	.uleb128 0x8
	.long	.LASF472
	.byte	0xd
	.byte	0x7b
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF473
	.byte	0xd
	.byte	0x8c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF474
	.byte	0xd
	.byte	0x92
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF475
	.byte	0xd
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF476
	.byte	0xd
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF477
	.byte	0xd
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF478
	.byte	0xd
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1c
	.long	.LASF479
	.value	0x1b0
	.byte	0xd
	.byte	0xae
	.long	0x1917
	.uleb128 0x6
	.string	"eh"
	.byte	0xd
	.byte	0xb0
	.long	0x191c
	.byte	0
	.uleb128 0x8
	.long	.LASF480
	.byte	0xd
	.byte	0xb1
	.long	0x1927
	.byte	0x8
	.uleb128 0x8
	.long	.LASF282
	.byte	0xd
	.byte	0xb2
	.long	0x192d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF481
	.byte	0xd
	.byte	0xb3
	.long	0x1933
	.byte	0x18
	.uleb128 0x8
	.long	.LASF482
	.byte	0xd
	.byte	0xb4
	.long	0x193e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF415
	.byte	0xd
	.byte	0xb9
	.long	0x304
	.byte	0x28
	.uleb128 0x8
	.long	.LASF483
	.byte	0xd
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF484
	.byte	0xd
	.byte	0xbf
	.long	0x1944
	.byte	0x38
	.uleb128 0x8
	.long	.LASF485
	.byte	0xd
	.byte	0xc4
	.long	0x13e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF486
	.byte	0xd
	.byte	0xc9
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF487
	.byte	0xd
	.byte	0xce
	.long	0x13e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF488
	.byte	0xd
	.byte	0xd2
	.long	0x13e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF489
	.byte	0xd
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF490
	.byte	0xd
	.byte	0xda
	.long	0x29d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF491
	.byte	0xd
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF492
	.byte	0xd
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF493
	.byte	0xd
	.byte	0xe7
	.long	0x304
	.byte	0x88
	.uleb128 0x8
	.long	.LASF494
	.byte	0xd
	.byte	0xeb
	.long	0x194f
	.byte	0x90
	.uleb128 0x8
	.long	.LASF495
	.byte	0xd
	.byte	0xee
	.long	0x13e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF496
	.byte	0xd
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF497
	.byte	0xd
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF498
	.byte	0xd
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF499
	.byte	0xd
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF500
	.byte	0xd
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF501
	.byte	0xd
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF502
	.byte	0xd
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF503
	.byte	0xd
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF504
	.byte	0xd
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF505
	.byte	0xd
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF506
	.byte	0xd
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF507
	.byte	0xd
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1e
	.long	.LASF508
	.byte	0xd
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1e
	.long	.LASF509
	.byte	0xd
	.value	0x12f
	.long	0x2b2
	.value	0x108
	.uleb128 0x1e
	.long	.LASF510
	.byte	0xd
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1e
	.long	.LASF511
	.byte	0xd
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1e
	.long	.LASF512
	.byte	0xd
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1e
	.long	.LASF513
	.byte	0xd
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1e
	.long	.LASF514
	.byte	0xd
	.value	0x148
	.long	0x2a9
	.value	0x130
	.uleb128 0x1e
	.long	.LASF515
	.byte	0xd
	.value	0x14e
	.long	0xd05
	.value	0x138
	.uleb128 0x1e
	.long	.LASF516
	.byte	0xd
	.value	0x151
	.long	0x195a
	.value	0x140
	.uleb128 0x1e
	.long	.LASF517
	.byte	0xd
	.value	0x154
	.long	0x13e
	.value	0x148
	.uleb128 0x1e
	.long	.LASF518
	.byte	0xd
	.value	0x157
	.long	0x13e
	.value	0x14c
	.uleb128 0x1e
	.long	.LASF519
	.byte	0xd
	.value	0x15d
	.long	0x13e
	.value	0x150
	.uleb128 0x1e
	.long	.LASF520
	.byte	0xd
	.value	0x161
	.long	0x1338
	.value	0x158
	.uleb128 0x1e
	.long	.LASF521
	.byte	0xd
	.value	0x164
	.long	0x13e
	.value	0x160
	.uleb128 0x1e
	.long	.LASF522
	.byte	0xd
	.value	0x165
	.long	0x13e
	.value	0x164
	.uleb128 0x1e
	.long	.LASF523
	.byte	0xd
	.value	0x167
	.long	0x2b0
	.value	0x168
	.uleb128 0x1e
	.long	.LASF524
	.byte	0xd
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1e
	.long	.LASF525
	.byte	0xd
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1e
	.long	.LASF526
	.byte	0xd
	.value	0x16d
	.long	0x13e
	.value	0x180
	.uleb128 0x1e
	.long	.LASF527
	.byte	0xd
	.value	0x170
	.long	0x13e
	.value	0x184
	.uleb128 0x1e
	.long	.LASF528
	.byte	0xd
	.value	0x175
	.long	0x1965
	.value	0x188
	.uleb128 0x1e
	.long	.LASF529
	.byte	0xd
	.value	0x177
	.long	0x13e
	.value	0x190
	.uleb128 0x1e
	.long	.LASF530
	.byte	0xd
	.value	0x179
	.long	0x13e
	.value	0x194
	.uleb128 0x1e
	.long	.LASF531
	.byte	0xd
	.value	0x17c
	.long	0x1970
	.value	0x198
	.uleb128 0x1e
	.long	.LASF532
	.byte	0xd
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1f
	.long	.LASF533
	.byte	0xd
	.value	0x188
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF534
	.byte	0xd
	.value	0x18c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF535
	.byte	0xd
	.value	0x18f
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF536
	.byte	0xd
	.value	0x192
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF537
	.byte	0xd
	.value	0x195
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF538
	.byte	0xd
	.value	0x198
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF539
	.byte	0xd
	.value	0x19c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF540
	.byte	0xd
	.value	0x19f
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF541
	.byte	0xd
	.value	0x1a3
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF542
	.byte	0xd
	.value	0x1a7
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF543
	.byte	0xd
	.value	0x1aa
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF544
	.byte	0xd
	.value	0x1ad
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF545
	.byte	0xd
	.value	0x1b2
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF546
	.byte	0xd
	.value	0x1b6
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF547
	.byte	0xd
	.value	0x1b9
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF548
	.byte	0xd
	.value	0x1bd
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF549
	.byte	0xd
	.value	0x1c1
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF550
	.byte	0xd
	.value	0x1c5
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF551
	.byte	0xd
	.value	0x1cb
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF552
	.byte	0xd
	.value	0x1d4
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF553
	.byte	0xd
	.value	0x1d7
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF554
	.byte	0xd
	.value	0x1da
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF555
	.byte	0xd
	.value	0x1dd
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF556
	.byte	0xd
	.value	0x1e0
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1b
	.long	.LASF557
	.uleb128 0x3
	.byte	0x8
	.long	0x1917
	.uleb128 0x1b
	.long	.LASF558
	.uleb128 0x3
	.byte	0x8
	.long	0x1922
	.uleb128 0x3
	.byte	0x8
	.long	0x1436
	.uleb128 0x3
	.byte	0x8
	.long	0x1381
	.uleb128 0x1b
	.long	.LASF559
	.uleb128 0x3
	.byte	0x8
	.long	0x1939
	.uleb128 0x3
	.byte	0x8
	.long	0x1497
	.uleb128 0x1b
	.long	.LASF560
	.uleb128 0x3
	.byte	0x8
	.long	0x194a
	.uleb128 0x1b
	.long	.LASF561
	.uleb128 0x3
	.byte	0x8
	.long	0x1955
	.uleb128 0x1b
	.long	.LASF562
	.uleb128 0x3
	.byte	0x8
	.long	0x1960
	.uleb128 0x1b
	.long	.LASF563
	.uleb128 0x3
	.byte	0x8
	.long	0x196b
	.uleb128 0x20
	.long	.LASF570
	.byte	0x1
	.byte	0x6f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a71
	.uleb128 0x21
	.long	.LASF564
	.byte	0x1
	.byte	0x71
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF283
	.byte	0x1
	.byte	0x72
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.long	.LASF565
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x74
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x74
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.byte	0x75
	.long	0x31d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF579
	.long	0x1a81
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11051
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.byte	0xbe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.byte	0xbf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF566
	.byte	0x1
	.byte	0xc0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF567
	.byte	0x1
	.byte	0xc1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF568
	.byte	0x1
	.byte	0xc2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF569
	.byte	0x1
	.byte	0xc3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"ok"
	.byte	0x1
	.byte	0xc4
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2ed
	.long	0x1a81
	.uleb128 0x14
	.long	0x145
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x1a71
	.uleb128 0x25
	.long	.LASF571
	.byte	0x1
	.byte	0xf2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1abc
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xf4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0xf4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x10e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b74
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x110
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x110
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x110
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0x111
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF573
	.byte	0x1
	.value	0x112
	.long	0x109d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1b52
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x11d
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF574
	.byte	0x1
	.value	0x11e
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.long	.LASF575
	.byte	0x1
	.value	0x12d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF576
	.byte	0x1
	.value	0x161
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d62
	.uleb128 0x28
	.long	.LASF577
	.byte	0x1
	.value	0x163
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x28
	.long	.LASF420
	.byte	0x1
	.value	0x163
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.long	.LASF578
	.byte	0x1
	.value	0x164
	.long	0x1d62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x23
	.long	.LASF579
	.long	0x1d82
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11132
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x28
	.long	.LASF441
	.byte	0x1
	.value	0x16b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x16c
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1c2c
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x17a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1d3e
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x18d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x28
	.long	.LASF580
	.byte	0x1
	.value	0x18e
	.long	0x109d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x24
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.long	.LASF581
	.byte	0x1
	.value	0x19d
	.long	0x1106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x28
	.long	.LASF582
	.byte	0x1
	.value	0x19d
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x28
	.long	.LASF583
	.byte	0x1
	.value	0x19d
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.long	.LASF584
	.byte	0x1
	.value	0x19d
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.long	.LASF585
	.byte	0x1
	.value	0x19d
	.long	0x2c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x28
	.long	.LASF586
	.byte	0x1
	.value	0x19d
	.long	0x2c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0x19d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.long	.LASF55
	.byte	0x1
	.value	0x19d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0x19d
	.long	0x31d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x1cf
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x31d
	.long	0x1d72
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.long	0x2ed
	.long	0x1d82
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	0x1d72
	.uleb128 0x2b
	.long	.LASF589
	.byte	0x1
	.value	0x1e2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e31
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x1e3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF587
	.byte	0x1
	.value	0x1e4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF416
	.byte	0x1
	.value	0x1e5
	.long	0x2b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x1e7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF574
	.byte	0x1
	.value	0x1e7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1e7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0x1e8
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.long	.LASF588
	.byte	0x1
	.value	0x1ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF590
	.byte	0x1
	.value	0x203
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec9
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x204
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF587
	.byte	0x1
	.value	0x205
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF416
	.byte	0x1
	.value	0x206
	.long	0x2b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x208
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF574
	.byte	0x1
	.value	0x208
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x208
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0x209
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF283
	.byte	0x1
	.value	0x20a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.long	.LASF591
	.byte	0x1
	.value	0x224
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7e
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x225
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x227
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x228
	.long	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x229
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x229
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x244
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF592
	.byte	0x1
	.value	0x245
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.long	.LASF55
	.byte	0x1
	.value	0x24a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF596
	.byte	0x1
	.value	0x271
	.long	0x13e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x209a
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x1
	.value	0x272
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF593
	.byte	0x1
	.value	0x273
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF56
	.byte	0x1
	.value	0x274
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF594
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF578
	.byte	0x1
	.value	0x276
	.long	0x209a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x278
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x278
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"pat"
	.byte	0x1
	.value	0x279
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x27a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF595
	.byte	0x1
	.value	0x27b
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"new"
	.byte	0x1
	.value	0x27c
	.long	0x12ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"mem"
	.byte	0x1
	.value	0x27d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF579
	.long	0x20b0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11238
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x28f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"ok"
	.byte	0x1
	.value	0x290
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31d
	.uleb128 0x13
	.long	0x2ed
	.long	0x20b0
	.uleb128 0x14
	.long	0x145
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.long	0x20a0
	.uleb128 0x2e
	.long	.LASF597
	.byte	0x1
	.value	0x2bd
	.long	0x13e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d1
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x1
	.value	0x2be
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF593
	.byte	0x1
	.value	0x2bf
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF56
	.byte	0x1
	.value	0x2c0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF598
	.byte	0x1
	.value	0x2c1
	.long	0x21d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF578
	.byte	0x1
	.value	0x2c2
	.long	0x209a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x2c4
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x2c5
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"pat"
	.byte	0x1
	.value	0x2c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x2c7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF595
	.byte	0x1
	.value	0x2c8
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"new"
	.byte	0x1
	.value	0x2c9
	.long	0x12ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"mem"
	.byte	0x1
	.value	0x2ca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF579
	.long	0x21e7
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11265
	.uleb128 0x24
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x2dc
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"ok"
	.byte	0x1
	.value	0x2dd
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x109d
	.uleb128 0x13
	.long	0x2ed
	.long	0x21e7
	.uleb128 0x14
	.long	0x145
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.long	0x21d7
	.uleb128 0x2e
	.long	.LASF599
	.byte	0x1
	.value	0x308
	.long	0x12ea
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e0
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x1
	.value	0x309
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF593
	.byte	0x1
	.value	0x30a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x30b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x30c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF441
	.byte	0x1
	.value	0x30e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"new"
	.byte	0x1
	.value	0x30f
	.long	0x12ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF579
	.long	0x22f0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11290
	.uleb128 0x24
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x28
	.long	.LASF600
	.byte	0x1
	.value	0x321
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x27
	.string	"reg"
	.byte	0x1
	.value	0x334
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.value	0x335
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x335
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2ed
	.long	0x22f0
	.uleb128 0x14
	.long	0x145
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	0x22e0
	.uleb128 0x13
	.long	0x31d
	.long	0x230b
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.uleb128 0x14
	.long	0x145
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.long	.LASF601
	.byte	0x1
	.byte	0x35
	.long	0x22f5
	.uleb128 0x9
	.byte	0x3
	.quad	regno_save_mode
	.uleb128 0x13
	.long	0x2d
	.long	0x2336
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.uleb128 0x14
	.long	0x145
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.long	.LASF602
	.byte	0x1
	.byte	0x3b
	.long	0x2320
	.uleb128 0x9
	.byte	0x3
	.quad	regno_save_mem
	.uleb128 0x13
	.long	0x13e
	.long	0x2361
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.long	.LASF603
	.byte	0x1
	.byte	0x44
	.long	0x234b
	.uleb128 0x9
	.byte	0x3
	.quad	reg_save_code
	.uleb128 0x21
	.long	.LASF604
	.byte	0x1
	.byte	0x46
	.long	0x234b
	.uleb128 0x9
	.byte	0x3
	.quad	reg_restore_code
	.uleb128 0x21
	.long	.LASF605
	.byte	0x1
	.byte	0x4a
	.long	0x109d
	.uleb128 0x9
	.byte	0x3
	.quad	hard_regs_saved
	.uleb128 0x21
	.long	.LASF606
	.byte	0x1
	.byte	0x4e
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	n_regs_saved
	.uleb128 0x21
	.long	.LASF607
	.byte	0x1
	.byte	0x52
	.long	0x109d
	.uleb128 0x9
	.byte	0x3
	.quad	referenced_regs
	.uleb128 0x21
	.long	.LASF608
	.byte	0x1
	.byte	0x56
	.long	0x109d
	.uleb128 0x9
	.byte	0x3
	.quad	this_insn_sets
	.uleb128 0x2f
	.long	.LASF609
	.byte	0x4
	.byte	0x62
	.long	0x13e
	.uleb128 0x2f
	.long	.LASF610
	.byte	0x4
	.byte	0xd6
	.long	0x139
	.uleb128 0x30
	.long	.LASF611
	.byte	0x4
	.value	0x19c
	.long	0x14c
	.uleb128 0x13
	.long	0x492
	.long	0x2411
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF134
	.byte	0x6
	.byte	0x34
	.long	0x241c
	.uleb128 0xa
	.long	0x2401
	.uleb128 0x13
	.long	0x2cb
	.long	0x2431
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF612
	.byte	0x6
	.byte	0x50
	.long	0x243c
	.uleb128 0xa
	.long	0x2421
	.uleb128 0x13
	.long	0x2d2
	.long	0x2451
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF613
	.byte	0x6
	.byte	0x60
	.long	0x245c
	.uleb128 0xa
	.long	0x2441
	.uleb128 0x13
	.long	0x2cb
	.long	0x2471
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x2f
	.long	.LASF614
	.byte	0x2
	.byte	0x36
	.long	0x247c
	.uleb128 0xa
	.long	0x2461
	.uleb128 0x13
	.long	0x304
	.long	0x2491
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x2f
	.long	.LASF615
	.byte	0x2
	.byte	0x3c
	.long	0x249c
	.uleb128 0xa
	.long	0x2481
	.uleb128 0x13
	.long	0x2ed
	.long	0x24b1
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x2f
	.long	.LASF616
	.byte	0x2
	.byte	0x3f
	.long	0x24bc
	.uleb128 0xa
	.long	0x24a1
	.uleb128 0x2f
	.long	.LASF617
	.byte	0xa
	.byte	0x2a
	.long	0x13e
	.uleb128 0x2f
	.long	.LASF618
	.byte	0xa
	.byte	0x41
	.long	0x108c
	.uleb128 0x2f
	.long	.LASF619
	.byte	0xa
	.byte	0x9d
	.long	0x24e2
	.uleb128 0x3
	.byte	0x8
	.long	0x2e0
	.uleb128 0x13
	.long	0x2ed
	.long	0x24f8
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x30
	.long	.LASF620
	.byte	0xb
	.value	0x196
	.long	0x24e8
	.uleb128 0x30
	.long	.LASF621
	.byte	0xb
	.value	0x19a
	.long	0x109d
	.uleb128 0x30
	.long	.LASF622
	.byte	0xb
	.value	0x1a5
	.long	0x24e8
	.uleb128 0x30
	.long	.LASF623
	.byte	0xb
	.value	0x1a9
	.long	0x109d
	.uleb128 0x13
	.long	0x109d
	.long	0x2538
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x30
	.long	.LASF624
	.byte	0xb
	.value	0x1c7
	.long	0x2528
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x8
	.byte	0xec
	.long	0x108c
	.uleb128 0x2f
	.long	.LASF626
	.byte	0xc
	.byte	0xa9
	.long	0xd05
	.uleb128 0x2f
	.long	.LASF627
	.byte	0xc
	.byte	0xaa
	.long	0xd05
	.uleb128 0x2f
	.long	.LASF628
	.byte	0xc
	.byte	0xf7
	.long	0x12ea
	.uleb128 0x30
	.long	.LASF629
	.byte	0xd
	.value	0x1e4
	.long	0x1944
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF333:
	.string	"REG_BR_PROB"
.LASF363:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF527:
	.string	"profile_label_no"
.LASF290:
	.string	"rtstr"
.LASF350:
	.string	"NOTE_INSN_DELETED"
.LASF218:
	.string	"UMOD"
.LASF272:
	.string	"min_align"
.LASF387:
	.string	"varray_data_tag"
.LASF631:
	.string	"caller-save.c"
.LASF298:
	.string	"first"
.LASF521:
	.string	"inlinable"
.LASF553:
	.string	"uses_const_pool"
.LASF259:
	.string	"CONSTANT_P_RTX"
.LASF622:
	.string	"call_fixed_regs"
.LASF440:
	.string	"block"
.LASF289:
	.string	"rtuint"
.LASF293:
	.string	"rt_cselib"
.LASF162:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF526:
	.string	"inl_max_label_num"
.LASF222:
	.string	"LSHIFTRT"
.LASF589:
	.string	"mark_set_regs"
.LASF156:
	.string	"MATCH_PAR_DUP"
.LASF632:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF620:
	.string	"call_used_regs"
.LASF217:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF150:
	.string	"MATCH_OPERAND"
.LASF461:
	.string	"x_first_label_num"
.LASF131:
	.string	"CCFPmode"
.LASF26:
	.string	"reg_class"
.LASF239:
	.string	"UNLE"
.LASF38:
	.string	"LEGACY_REGS"
.LASF277:
	.string	"max_after_base"
.LASF240:
	.string	"UNLT"
.LASF554:
	.string	"uses_pic_offset_table"
.LASF560:
	.string	"initial_value_struct"
.LASF433:
	.string	"probability"
.LASF103:
	.string	"CTImode"
.LASF420:
	.string	"next"
.LASF101:
	.string	"CSImode"
.LASF40:
	.string	"FP_TOP_REG"
.LASF261:
	.string	"VEC_MERGE"
.LASF524:
	.string	"original_decl_initial"
.LASF598:
	.string	"to_save"
.LASF389:
	.string	"uhint"
.LASF194:
	.string	"RETURN"
.LASF390:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF137:
	.string	"MODE_FLOAT"
.LASF281:
	.string	"alias"
.LASF278:
	.string	"offset_unsigned"
.LASF107:
	.string	"V2SImode"
.LASF550:
	.string	"stdarg"
.LASF511:
	.string	"x_trampoline_list"
.LASF35:
	.string	"Q_REGS"
.LASF181:
	.string	"CODE_LABEL"
.LASF102:
	.string	"CDImode"
.LASF187:
	.string	"UNSPEC"
.LASF180:
	.string	"BARRIER"
.LASF356:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF183:
	.string	"COND_EXEC"
.LASF197:
	.string	"CONST_INT"
.LASF193:
	.string	"CALL"
.LASF60:
	.string	"maybe_vaarg"
.LASF532:
	.string	"epilogue_delay_list"
.LASF109:
	.string	"V4QImode"
.LASF172:
	.string	"ATTR"
.LASF313:
	.string	"count"
.LASF291:
	.string	"rttype"
.LASF615:
	.string	"rtx_format"
.LASF29:
	.string	"DREG"
.LASF303:
	.string	"head_tree"
.LASF47:
	.string	"FLOAT_SSE_REGS"
.LASF380:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF108:
	.string	"V2DImode"
.LASF501:
	.string	"x_return_label"
.LASF21:
	.string	"PROCESSOR_K6"
.LASF417:
	.string	"varray_type"
.LASF286:
	.string	"mem_attrs"
.LASF402:
	.string	"refs"
.LASF327:
	.string	"REG_UNUSED"
.LASF165:
	.string	"DEFINE_DELAY"
.LASF215:
	.string	"MINUS"
.LASF508:
	.string	"x_clobber_return_insn"
.LASF32:
	.string	"SIREG"
.LASF396:
	.string	"sched_info_tag"
.LASF205:
	.string	"STRICT_LOW_PART"
.LASF442:
	.string	"live_throughout"
.LASF147:
	.string	"INCLUDE"
.LASF376:
	.string	"GR_FRAME_POINTER"
.LASF577:
	.string	"chain"
.LASF311:
	.string	"index"
.LASF403:
	.string	"freq"
.LASF243:
	.string	"ZERO_EXTEND"
.LASF246:
	.string	"FLOAT_TRUNCATE"
.LASF477:
	.string	"x_forced_labels"
.LASF373:
	.string	"GR_PC"
.LASF574:
	.string	"endregno"
.LASF31:
	.string	"BREG"
.LASF118:
	.string	"V2SFmode"
.LASF410:
	.string	"varray_data"
.LASF562:
	.string	"machine_function"
.LASF247:
	.string	"FLOAT"
.LASF339:
	.string	"REG_EH_CONTEXT"
.LASF73:
	.string	"machine_mode"
.LASF623:
	.string	"call_fixed_reg_set"
.LASF628:
	.string	"reload_insn_chain"
.LASF296:
	.string	"rtmem"
.LASF520:
	.string	"fixup_var_refs_queue"
.LASF256:
	.string	"RANGE_REG"
.LASF294:
	.string	"rtbit"
.LASF419:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF80:
	.string	"TImode"
.LASF232:
	.string	"PRE_MODIFY"
.LASF535:
	.string	"returns_pointer"
.LASF245:
	.string	"FLOAT_EXTEND"
.LASF400:
	.string	"last_note_uid"
.LASF480:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF351:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF596:
	.string	"insert_restore"
.LASF78:
	.string	"SImode"
.LASF189:
	.string	"ADDR_VEC"
.LASF558:
	.string	"stmt_status"
.LASF119:
	.string	"V2DFmode"
.LASF271:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF285:
	.string	"align"
.LASF59:
	.string	"sse_regno"
.LASF300:
	.string	"indx"
.LASF528:
	.string	"machine"
.LASF208:
	.string	"SYMBOL_REF"
.LASF349:
	.string	"NOTE_INSN_BIAS"
.LASF371:
	.string	"NOTE_INSN_MAX"
.LASF475:
	.string	"x_saveregs_value"
.LASF624:
	.string	"reg_class_contents"
.LASF161:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF213:
	.string	"COMPARE"
.LASF241:
	.string	"LTGT"
.LASF455:
	.string	"unsignedp"
.LASF253:
	.string	"HIGH"
.LASF210:
	.string	"QUEUED"
.LASF36:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF79:
	.string	"DImode"
.LASF385:
	.string	"const_equiv_data"
.LASF494:
	.string	"hard_reg_initial_vals"
.LASF473:
	.string	"x_inhibit_defer_pop"
.LASF114:
	.string	"V8HImode"
.LASF231:
	.string	"POST_INC"
.LASF17:
	.string	"PROCESSOR_I386"
.LASF92:
	.string	"TFmode"
.LASF66:
	.string	"unsigned char"
.LASF41:
	.string	"FP_SECOND_REG"
.LASF478:
	.string	"x_pending_chain"
.LASF493:
	.string	"cannot_inline"
.LASF613:
	.string	"mode_bitsize"
.LASF23:
	.string	"PROCESSOR_PENTIUM4"
.LASF407:
	.string	"basic_block"
.LASF75:
	.string	"BImode"
.LASF229:
	.string	"PRE_INC"
.LASF326:
	.string	"REG_NO_CONFLICT"
.LASF89:
	.string	"SFmode"
.LASF481:
	.string	"emit"
.LASF569:
	.string	"restinsn"
.LASF178:
	.string	"JUMP_INSN"
.LASF308:
	.string	"cond_local_set"
.LASF24:
	.string	"PROCESSOR_max"
.LASF434:
	.string	"edge"
.LASF141:
	.string	"MODE_COMPLEX_FLOAT"
.LASF593:
	.string	"before_p"
.LASF607:
	.string	"referenced_regs"
.LASF295:
	.string	"rttree"
.LASF583:
	.string	"bit_num_"
.LASF348:
	.string	"insn_note"
.LASF367:
	.string	"NOTE_INSN_RANGE_END"
.LASF160:
	.string	"DEFINE_SPLIT"
.LASF542:
	.string	"has_nonlocal_goto"
.LASF556:
	.string	"arg_pointer_save_area_init"
.LASF199:
	.string	"CONST_VECTOR"
.LASF157:
	.string	"MATCH_INSN"
.LASF606:
	.string	"n_regs_saved"
.LASF576:
	.string	"save_call_clobbered_regs"
.LASF502:
	.string	"x_save_expr_regs"
.LASF578:
	.string	"save_mode"
.LASF90:
	.string	"DFmode"
.LASF43:
	.string	"SSE_REGS"
.LASF427:
	.string	"gcov_type"
.LASF64:
	.string	"size_t"
.LASF191:
	.string	"PREFETCH"
.LASF52:
	.string	"LIM_REG_CLASSES"
.LASF51:
	.string	"ALL_REGS"
.LASF485:
	.string	"pops_args"
.LASF84:
	.string	"PSImode"
.LASF504:
	.string	"x_rtl_expr_chain"
.LASF255:
	.string	"RANGE_INFO"
.LASF611:
	.string	"ix86_cpu"
.LASF386:
	.string	"rtunion_def"
.LASF570:
	.string	"init_caller_save"
.LASF171:
	.string	"DEFINE_ATTR"
.LASF173:
	.string	"SET_ATTR"
.LASF98:
	.string	"TCmode"
.LASF496:
	.string	"x_nonlocal_labels"
.LASF248:
	.string	"UNSIGNED_FLOAT"
.LASF338:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF395:
	.string	"cselib_val_struct"
.LASF370:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF220:
	.string	"ROTATE"
.LASF306:
	.string	"succ"
.LASF244:
	.string	"TRUNCATE"
.LASF331:
	.string	"REG_DEP_ANTI"
.LASF95:
	.string	"SCmode"
.LASF439:
	.string	"next_need_reload"
.LASF614:
	.string	"rtx_length"
.LASF381:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF85:
	.string	"PDImode"
.LASF352:
	.string	"NOTE_INSN_BLOCK_END"
.LASF392:
	.string	"bitmap"
.LASF361:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF616:
	.string	"rtx_class"
.LASF600:
	.string	"link"
.LASF315:
	.string	"flags"
.LASF470:
	.string	"x_regno_reg_rtx"
.LASF148:
	.string	"EXPR_LIST"
.LASF175:
	.string	"EQ_ATTR"
.LASF128:
	.string	"CCGOCmode"
.LASF206:
	.string	"CONCAT"
.LASF18:
	.string	"PROCESSOR_I486"
.LASF429:
	.string	"pred_next"
.LASF274:
	.string	"min_after_vec"
.LASF212:
	.string	"COND"
.LASF138:
	.string	"MODE_PARTIAL_INT"
.LASF512:
	.string	"x_parm_birth_insn"
.LASF514:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF436:
	.string	"regs"
.LASF96:
	.string	"DCmode"
.LASF163:
	.string	"DEFINE_COMBINE"
.LASF630:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF567:
	.string	"restpat"
.LASF506:
	.string	"x_tail_recursion_reentry"
.LASF221:
	.string	"ASHIFTRT"
.LASF451:
	.string	"reload"
.LASF126:
	.string	"CCmode"
.LASF19:
	.string	"PROCESSOR_PENTIUM"
.LASF594:
	.string	"maxrestore"
.LASF304:
	.string	"end_tree"
.LASF42:
	.string	"FLOAT_REGS"
.LASF354:
	.string	"NOTE_INSN_LOOP_END"
.LASF124:
	.string	"V16SFmode"
.LASF368:
	.string	"NOTE_INSN_LIVE"
.LASF168:
	.string	"DEFINE_COND_EXEC"
.LASF452:
	.string	"var_refs_queue"
.LASF597:
	.string	"insert_save"
.LASF474:
	.string	"x_stack_pointer_delta"
.LASF627:
	.string	"reg_equiv_mem"
.LASF164:
	.string	"DEFINE_EXPAND"
.LASF545:
	.string	"is_thunk"
.LASF581:
	.string	"ptr_"
.LASF413:
	.string	"elements_used"
.LASF115:
	.string	"V8SImode"
.LASF498:
	.string	"x_nonlocal_goto_handler_labels"
.LASF177:
	.string	"INSN"
.LASF288:
	.string	"rtint"
.LASF207:
	.string	"LABEL_REF"
.LASF330:
	.string	"REG_LABEL"
.LASF617:
	.string	"max_regno"
.LASF409:
	.string	"elt_list"
.LASF318:
	.string	"REG_DEAD"
.LASF358:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF561:
	.string	"temp_slot"
.LASF447:
	.string	"need_reload"
.LASF612:
	.string	"mode_size"
.LASF321:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF426:
	.string	"regset"
.LASF127:
	.string	"CCGCmode"
.LASF310:
	.string	"global_live_at_end"
.LASF203:
	.string	"SCRATCH"
.LASF113:
	.string	"V8QImode"
.LASF116:
	.string	"V8DImode"
.LASF144:
	.string	"MAX_MODE_CLASS"
.LASF618:
	.string	"reg_n_info"
.LASF610:
	.string	"x86_partial_reg_stall"
.LASF584:
	.string	"word_num_"
.LASF242:
	.string	"SIGN_EXTEND"
.LASF537:
	.string	"calls_setjmp"
.LASF573:
	.string	"hard_regs_used"
.LASF621:
	.string	"call_used_reg_set"
.LASF572:
	.string	"setup_save_areas"
.LASF264:
	.string	"VEC_DUPLICATE"
.LASF424:
	.string	"bitmap_head"
.LASF499:
	.string	"x_nonlocal_goto_stack_level"
.LASF492:
	.string	"internal_arg_pointer"
.LASF282:
	.string	"expr"
.LASF364:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF565:
	.string	"address"
.LASF497:
	.string	"x_nonlocal_goto_handler_slots"
.LASF122:
	.string	"V8SFmode"
.LASF441:
	.string	"insn"
.LASF33:
	.string	"DIREG"
.LASF329:
	.string	"REG_CC_USER"
.LASF580:
	.string	"hard_regs_to_save"
.LASF186:
	.string	"ASM_OPERANDS"
.LASF517:
	.string	"x_temp_slot_level"
.LASF130:
	.string	"CCZmode"
.LASF355:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF37:
	.string	"INDEX_REGS"
.LASF25:
	.string	"processor_type"
.LASF435:
	.string	"needs"
.LASF582:
	.string	"indx_"
.LASF543:
	.string	"contains_functions"
.LASF482:
	.string	"varasm"
.LASF344:
	.string	"REG_NON_LOCAL_GOTO"
.LASF190:
	.string	"ADDR_DIFF_VEC"
.LASF547:
	.string	"profile"
.LASF252:
	.string	"ZERO_EXTRACT"
.LASF388:
	.string	"hint"
.LASF185:
	.string	"ASM_INPUT"
.LASF235:
	.string	"ORDERED"
.LASF123:
	.string	"V8DFmode"
.LASF454:
	.string	"promoted_mode"
.LASF412:
	.string	"num_elements"
.LASF249:
	.string	"UNSIGNED_FIX"
.LASF534:
	.string	"returns_pcc_struct"
.LASF57:
	.string	"sse_words"
.LASF39:
	.string	"GENERAL_REGS"
.LASF415:
	.string	"name"
.LASF149:
	.string	"INSN_LIST"
.LASF257:
	.string	"RANGE_VAR"
.LASF408:
	.string	"changes_mode"
.LASF136:
	.string	"MODE_INT"
.LASF414:
	.string	"element_size"
.LASF489:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF56:
	.string	"regno"
.LASF471:
	.string	"expr_status"
.LASF541:
	.string	"has_nonlocal_label"
.LASF258:
	.string	"RANGE_LIVE"
.LASF472:
	.string	"x_pending_stack_adjust"
.LASF106:
	.string	"V2HImode"
.LASF486:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF394:
	.string	"const_equiv"
.LASF604:
	.string	"reg_restore_code"
.LASF399:
	.string	"last_uid"
.LASF292:
	.string	"rt_addr_diff_vec_flags"
.LASF443:
	.string	"dead_or_set"
.LASF378:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF564:
	.string	"addr_reg"
.LASF46:
	.string	"FP_SECOND_SSE_REGS"
.LASF267:
	.string	"SS_MINUS"
.LASF154:
	.string	"MATCH_PARALLEL"
.LASF111:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF320:
	.string	"REG_EQUIV"
.LASF67:
	.string	"short unsigned int"
.LASF68:
	.string	"signed char"
.LASF153:
	.string	"MATCH_OPERATOR"
.LASF411:
	.string	"varray_head_tag"
.LASF299:
	.string	"current"
.LASF464:
	.string	"x_cur_insn_uid"
.LASF513:
	.string	"x_last_parm_insn"
.LASF269:
	.string	"SS_TRUNCATE"
.LASF334:
	.string	"REG_EXEC_COUNT"
.LASF522:
	.string	"no_debugging_symbols"
.LASF273:
	.string	"base_after_vec"
.LASF158:
	.string	"DEFINE_INSN"
.LASF112:
	.string	"V4DImode"
.LASF312:
	.string	"loop_depth"
.LASF49:
	.string	"INT_SSE_REGS"
.LASF379:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF466:
	.string	"x_last_filename"
.LASF332:
	.string	"REG_DEP_OUTPUT"
.LASF167:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF268:
	.string	"US_MINUS"
.LASF491:
	.string	"return_rtx"
.LASF45:
	.string	"FP_TOP_SSE_REGS"
.LASF251:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF405:
	.string	"live_length"
.LASF192:
	.string	"CLOBBER"
.LASF428:
	.string	"edge_def"
.LASF465:
	.string	"x_last_linenum"
.LASF602:
	.string	"regno_save_mem"
.LASF142:
	.string	"MODE_VECTOR_INT"
.LASF336:
	.string	"REG_SAVE_AREA"
.LASF260:
	.string	"CALL_PLACEHOLDER"
.LASF479:
	.string	"function"
.LASF120:
	.string	"V4SFmode"
.LASF546:
	.string	"instrument_entry_exit"
.LASF590:
	.string	"add_stored_regs"
.LASF509:
	.string	"x_frame_offset"
.LASF601:
	.string	"regno_save_mode"
.LASF214:
	.string	"PLUS"
.LASF230:
	.string	"POST_DEC"
.LASF422:
	.string	"bits"
.LASF77:
	.string	"HImode"
.LASF316:
	.string	"rtunion"
.LASF357:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF140:
	.string	"MODE_COMPLEX_INT"
.LASF557:
	.string	"eh_status"
.LASF591:
	.string	"mark_referenced_regs"
.LASF456:
	.string	"sequence_stack"
.LASF63:
	.string	"long int"
.LASF383:
	.string	"GR_VIRTUAL_CFA"
.LASF625:
	.string	"basic_block_info"
.LASF322:
	.string	"REG_WAS_0"
.LASF343:
	.string	"REG_NORETURN"
.LASF91:
	.string	"XFmode"
.LASF536:
	.string	"needs_context"
.LASF342:
	.string	"REG_MAYBE_DEAD"
.LASF121:
	.string	"V4DFmode"
.LASF599:
	.string	"insert_one_insn"
.LASF4:
	.string	"unchanging"
.LASF317:
	.string	"reg_note"
.LASF540:
	.string	"calls_eh_return"
.LASF519:
	.string	"x_target_temp_slot_level"
.LASF487:
	.string	"pretend_args_size"
.LASF145:
	.string	"rtx_code"
.LASF61:
	.string	"CUMULATIVE_ARGS"
.LASF457:
	.string	"last"
.LASF549:
	.string	"varargs"
.LASF595:
	.string	"numregs"
.LASF30:
	.string	"CREG"
.LASF551:
	.string	"x_whole_function_mode_p"
.LASF146:
	.string	"UNKNOWN"
.LASF188:
	.string	"UNSPEC_VOLATILE"
.LASF563:
	.string	"language_function"
.LASF360:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF65:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF87:
	.string	"HFmode"
.LASF525:
	.string	"inl_last_parm_insn"
.LASF195:
	.string	"TRAP_IF"
.LASF575:
	.string	"do_save"
.LASF404:
	.string	"deaths"
.LASF340:
	.string	"REG_EH_REGION"
.LASF323:
	.string	"REG_RETVAL"
.LASF99:
	.string	"CQImode"
.LASF70:
	.string	"char"
.LASF533:
	.string	"returns_struct"
.LASF97:
	.string	"XCmode"
.LASF507:
	.string	"x_arg_pointer_save_area"
.LASF28:
	.string	"AREG"
.LASF586:
	.string	"mask_"
.LASF505:
	.string	"x_tail_recursion_label"
.LASF568:
	.string	"saveinsn"
.LASF531:
	.string	"language"
.LASF223:
	.string	"ROTATERT"
.LASF209:
	.string	"ADDRESSOF"
.LASF345:
	.string	"REG_SETJMP"
.LASF105:
	.string	"V2QImode"
.LASF460:
	.string	"x_reg_rtx_no"
.LASF83:
	.string	"PHImode"
.LASF453:
	.string	"modified"
.LASF469:
	.string	"regno_decl"
.LASF397:
	.string	"reg_info_def"
.LASF104:
	.string	"COImode"
.LASF448:
	.string	"need_operand_change"
.LASF228:
	.string	"PRE_DEC"
.LASF359:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF377:
	.string	"GR_HARD_FRAME_POINTER"
.LASF328:
	.string	"REG_CC_SETTER"
.LASF539:
	.string	"calls_alloca"
.LASF518:
	.string	"x_var_temp_slot_level"
.LASF135:
	.string	"MODE_RANDOM"
.LASF266:
	.string	"US_PLUS"
.LASF125:
	.string	"BLKmode"
.LASF94:
	.string	"HCmode"
.LASF626:
	.string	"reg_equiv_address"
.LASF425:
	.string	"regset_head"
.LASF603:
	.string	"reg_save_code"
.LASF200:
	.string	"CONST_STRING"
.LASF263:
	.string	"VEC_CONCAT"
.LASF284:
	.string	"size"
.LASF275:
	.string	"max_after_vec"
.LASF335:
	.string	"REG_NOALIAS"
.LASF176:
	.string	"ATTR_FLAG"
.LASF132:
	.string	"CCFPUmode"
.LASF319:
	.string	"REG_INC"
.LASF166:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF510:
	.string	"x_context_display"
.LASF587:
	.string	"setter"
.LASF170:
	.string	"ADDRESS"
.LASF432:
	.string	"insns"
.LASF446:
	.string	"need"
.LASF523:
	.string	"original_arg_vector"
.LASF22:
	.string	"PROCESSOR_ATHLON"
.LASF555:
	.string	"uses_eh_lsda"
.LASF391:
	.string	"cptr"
.LASF297:
	.string	"bitmap_head_def"
.LASF406:
	.string	"calls_crossed"
.LASF270:
	.string	"US_TRUNCATE"
.LASF619:
	.string	"reg_renumber"
.LASF372:
	.string	"global_rtl_index"
.LASF55:
	.string	"nregs"
.LASF265:
	.string	"SS_PLUS"
.LASF227:
	.string	"UMAX"
.LASF44:
	.string	"MMX_REGS"
.LASF279:
	.string	"scale"
.LASF76:
	.string	"QImode"
.LASF609:
	.string	"target_flags"
.LASF445:
	.string	"used_spill_regs"
.LASF416:
	.string	"data"
.LASF375:
	.string	"GR_STACK_POINTER"
.LASF88:
	.string	"TQFmode"
.LASF585:
	.string	"word_"
.LASF302:
	.string	"head"
.LASF20:
	.string	"PROCESSOR_PENTIUMPRO"
.LASF54:
	.string	"words"
.LASF276:
	.string	"min_after_base"
.LASF393:
	.string	"sched"
.LASF552:
	.string	"x_dont_save_pending_sizes_p"
.LASF53:
	.string	"ix86_args"
.LASF571:
	.string	"init_save_areas"
.LASF27:
	.string	"NO_REGS"
.LASF629:
	.string	"cfun"
.LASF488:
	.string	"outgoing_args_size"
.LASF81:
	.string	"OImode"
.LASF341:
	.string	"REG_SAVE_NOTE"
.LASF225:
	.string	"SMAX"
.LASF384:
	.string	"GR_MAX"
.LASF34:
	.string	"AD_REGS"
.LASF262:
	.string	"VEC_SELECT"
.LASF325:
	.string	"REG_NONNEG"
.LASF529:
	.string	"stack_alignment_needed"
.LASF459:
	.string	"emit_status"
.LASF143:
	.string	"MODE_VECTOR_FLOAT"
.LASF233:
	.string	"POST_MODIFY"
.LASF438:
	.string	"insn_chain"
.LASF337:
	.string	"REG_BR_PRED"
.LASF159:
	.string	"DEFINE_PEEPHOLE"
.LASF71:
	.string	"long long unsigned int"
.LASF366:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF283:
	.string	"offset"
.LASF280:
	.string	"addr_diff_vec_flags"
.LASF155:
	.string	"MATCH_OP_DUP"
.LASF169:
	.string	"SEQUENCE"
.LASF86:
	.string	"QFmode"
.LASF401:
	.string	"sets"
.LASF490:
	.string	"args_info"
.LASF548:
	.string	"limit_stack"
.LASF196:
	.string	"RESX"
.LASF431:
	.string	"dest"
.LASF184:
	.string	"PARALLEL"
.LASF592:
	.string	"hardregno"
.LASF13:
	.string	"num_elem"
.LASF234:
	.string	"UNORDERED"
.LASF133:
	.string	"MAX_MACHINE_MODE"
.LASF309:
	.string	"global_live_at_start"
.LASF50:
	.string	"FLOAT_INT_SSE_REGS"
.LASF151:
	.string	"MATCH_SCRATCH"
.LASF201:
	.string	"CONST"
.LASF468:
	.string	"regno_pointer_align"
.LASF250:
	.string	"SQRT"
.LASF449:
	.string	"need_elim"
.LASF374:
	.string	"GR_CC0"
.LASF134:
	.string	"mode_class"
.LASF216:
	.string	"MULT"
.LASF139:
	.string	"MODE_CC"
.LASF307:
	.string	"local_set"
.LASF82:
	.string	"PQImode"
.LASF458:
	.string	"sequence_rtl_expr"
.LASF588:
	.string	"inner"
.LASF450:
	.string	"is_caller_save_insn"
.LASF516:
	.string	"x_temp_slots"
.LASF503:
	.string	"x_stack_slot_list"
.LASF515:
	.string	"x_parm_reg_stack_loc"
.LASF179:
	.string	"CALL_INSN"
.LASF566:
	.string	"savepat"
.LASF204:
	.string	"SUBREG"
.LASF538:
	.string	"calls_longjmp"
.LASF117:
	.string	"V16QImode"
.LASF346:
	.string	"REG_ALWAYS_RETURN"
.LASF483:
	.string	"decl"
.LASF72:
	.string	"long long int"
.LASF324:
	.string	"REG_LIBCALL"
.LASF93:
	.string	"QCmode"
.LASF202:
	.string	"VALUE"
.LASF182:
	.string	"NOTE"
.LASF58:
	.string	"sse_nregs"
.LASF226:
	.string	"UMIN"
.LASF152:
	.string	"MATCH_DUP"
.LASF418:
	.string	"HARD_REG_ELT_TYPE"
.LASF301:
	.string	"basic_block_def"
.LASF605:
	.string	"hard_regs_saved"
.LASF559:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF353:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF423:
	.string	"bitmap_element"
.LASF495:
	.string	"x_function_call_count"
.LASF100:
	.string	"CHImode"
.LASF369:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF174:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF467:
	.string	"regno_pointer_align_length"
.LASF462:
	.string	"x_first_insn"
.LASF476:
	.string	"x_apply_args_value"
.LASF48:
	.string	"FLOAT_INT_REGS"
.LASF198:
	.string	"CONST_DOUBLE"
.LASF398:
	.string	"first_uid"
.LASF129:
	.string	"CCNOmode"
.LASF110:
	.string	"V4HImode"
.LASF236:
	.string	"UNEQ"
.LASF219:
	.string	"ASHIFT"
.LASF224:
	.string	"SMIN"
.LASF579:
	.string	"__FUNCTION__"
.LASF211:
	.string	"IF_THEN_ELSE"
.LASF437:
	.string	"groups"
.LASF365:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF484:
	.string	"outer"
.LASF444:
	.string	"n_reloads"
.LASF362:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF62:
	.string	"unsigned int"
.LASF608:
	.string	"this_insn_sets"
.LASF633:
	.string	"tree_node"
.LASF500:
	.string	"x_cleanup_label"
.LASF237:
	.string	"UNGE"
.LASF69:
	.string	"short int"
.LASF305:
	.string	"pred"
.LASF238:
	.string	"UNGT"
.LASF544:
	.string	"has_computed_jump"
.LASF463:
	.string	"x_last_insn"
.LASF421:
	.string	"prev"
.LASF530:
	.string	"preferred_stack_boundary"
.LASF74:
	.string	"VOIDmode"
.LASF347:
	.string	"REG_VTABLE_REF"
.LASF382:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF254:
	.string	"LO_SUM"
.LASF314:
	.string	"frequency"
.LASF287:
	.string	"rtwint"
.LASF430:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
