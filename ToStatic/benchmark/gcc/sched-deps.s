	.file	"sched-deps.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sched-deps.c -mtune=generic -march=x86-64 -g
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
	.local	reg_pending_sets_head
	.comm	reg_pending_sets_head,24,16
	.local	reg_pending_clobbers_head
	.comm	reg_pending_clobbers_head,24,16
	.local	reg_pending_uses_head
	.comm	reg_pending_uses_head,24,16
	.local	reg_pending_sets
	.comm	reg_pending_sets,8,8
	.local	reg_pending_clobbers
	.comm	reg_pending_clobbers,8,8
	.local	reg_pending_uses
	.comm	reg_pending_uses,8,8
	.local	reg_pending_barrier
	.comm	reg_pending_barrier,1,1
	.local	true_dependency_cache
	.comm	true_dependency_cache,8,8
	.local	anti_dependency_cache
	.comm	anti_dependency_cache,8,8
	.local	output_dependency_cache
	.comm	output_dependency_cache,8,8
	.type	deps_may_trap_p, @function
deps_may_trap_p:
.LFB2:
	.file 1 "sched-deps.c"
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mem, mem
	.loc 1 102 0
	movq	-24(%rbp), %rax	# mem, tmp74
	movq	8(%rax), %rax	# mem_2(D)->fld[0].rtx, tmp75
	movq	%rax, -8(%rbp)	# tmp75, addr
	.loc 1 104 0
	movq	-8(%rbp), %rax	# addr, tmp76
	movzwl	(%rax), %eax	# addr_3->code, D.13194
	cmpw	$61, %ax	#, D.13194
	jne	.L2	#,
	.loc 1 105 0
	movq	-8(%rbp), %rax	# addr, tmp77
	movl	8(%rax), %eax	# addr_3->fld[0].rtuint, D.13195
	cmpl	$52, %eax	#, D.13195
	jbe	.L2	#,
	.loc 1 106 0
	movq	reg_known_value(%rip), %rdx	# reg_known_value, reg_known_value.0
	movq	-8(%rbp), %rax	# addr, tmp78
	movl	8(%rax), %eax	# addr_3->fld[0].rtuint, D.13195
	movl	%eax, %eax	# D.13195, D.13196
	salq	$3, %rax	#, D.13196
	addq	%rdx, %rax	# reg_known_value.0, D.13197
	movq	(%rax), %rax	# *_10, D.13198
	testq	%rax, %rax	# D.13198
	je	.L2	#,
	.loc 1 107 0
	movq	reg_known_value(%rip), %rdx	# reg_known_value, reg_known_value.1
	movq	-8(%rbp), %rax	# addr, tmp79
	movl	8(%rax), %eax	# addr_3->fld[0].rtuint, D.13195
	movl	%eax, %eax	# D.13195, D.13196
	salq	$3, %rax	#, D.13196
	addq	%rdx, %rax	# reg_known_value.1, D.13197
	movq	(%rax), %rax	# *_16, tmp80
	movq	%rax, -8(%rbp)	# tmp80, addr
.L2:
	.loc 1 108 0
	movq	-8(%rbp), %rax	# addr, tmp81
	movq	%rax, %rdi	# tmp81,
	call	rtx_addr_can_trap_p	#
	.loc 1 109 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	deps_may_trap_p, .-deps_may_trap_p
	.globl	find_insn_list
	.type	find_insn_list, @function
find_insn_list:
.LFB3:
	.loc 1 118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	movq	%rsi, -16(%rbp)	# list, list
	.loc 1 119 0
	jmp	.L5	#
.L8:
	.loc 1 121 0
	movq	-16(%rbp), %rax	# list, tmp62
	movq	8(%rax), %rax	# list_1->fld[0].rtx, D.13201
	cmpq	-8(%rbp), %rax	# insn, D.13201
	jne	.L6	#,
	.loc 1 122 0
	movq	-16(%rbp), %rax	# list, D.13200
	jmp	.L7	#
.L6:
	.loc 1 123 0
	movq	-16(%rbp), %rax	# list, tmp63
	movq	16(%rax), %rax	# list_1->fld[1].rtx, tmp64
	movq	%rax, -16(%rbp)	# tmp64, list
.L5:
	.loc 1 119 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, list
	jne	.L8	#,
	.loc 1 125 0
	movl	$0, %eax	#, D.13200
.L7:
	.loc 1 126 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	find_insn_list, .-find_insn_list
	.type	get_condition, @function
get_condition:
.LFB4:
	.loc 1 133 0
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
	movq	%rdi, -56(%rbp)	# insn, insn
	.loc 1 134 0
	movq	-56(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp84
	movq	%rax, -48(%rbp)	# tmp84, pat
	.loc 1 137 0
	cmpq	$0, -48(%rbp)	#, pat
	jne	.L10	#,
	.loc 1 138 0
	movl	$0, %eax	#, D.13202
	jmp	.L11	#
.L10:
	.loc 1 139 0
	movq	-48(%rbp), %rax	# pat, tmp85
	movzwl	(%rax), %eax	# pat_3->code, D.13203
	cmpw	$38, %ax	#, D.13203
	jne	.L12	#,
	.loc 1 140 0
	movq	-48(%rbp), %rax	# pat, tmp86
	movq	8(%rax), %rax	# pat_3->fld[0].rtx, D.13202
	jmp	.L11	#
.L12:
	.loc 1 141 0
	movq	-56(%rbp), %rax	# insn, tmp87
	movzwl	(%rax), %eax	# insn_2(D)->code, D.13203
	cmpw	$33, %ax	#, D.13203
	je	.L13	#,
	.loc 1 142 0
	movl	$0, %eax	#, D.13202
	jmp	.L11	#
.L13:
	.loc 1 143 0
	movq	-48(%rbp), %rax	# pat, tmp88
	movzwl	(%rax), %eax	# pat_3->code, D.13203
	cmpw	$47, %ax	#, D.13203
	jne	.L14	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# pat, tmp89
	movq	16(%rax), %rdx	# pat_3->fld[1].rtx, D.13204
	movq	global_rtl(%rip), %rax	# global_rtl, D.13204
	cmpq	%rax, %rdx	# D.13204, D.13204
	je	.L15	#,
.L14:
	.loc 1 144 0 is_stmt 1
	movl	$0, %eax	#, D.13202
	jmp	.L11	#
.L15:
	.loc 1 145 0
	movq	-48(%rbp), %rax	# pat, tmp90
	movq	8(%rax), %rax	# pat_3->fld[0].rtx, D.13204
	movzwl	(%rax), %eax	# _12->code, D.13203
	cmpw	$72, %ax	#, D.13203
	je	.L16	#,
	.loc 1 146 0
	movl	$0, %eax	#, D.13202
	jmp	.L11	#
.L16:
	.loc 1 147 0
	movq	-48(%rbp), %rax	# pat, tmp91
	movq	8(%rax), %rax	# pat_3->fld[0].rtx, tmp92
	movq	%rax, -48(%rbp)	# tmp92, pat
	.loc 1 148 0
	movq	-48(%rbp), %rax	# pat, tmp93
	movq	8(%rax), %rax	# pat_15->fld[0].rtx, tmp94
	movq	%rax, -40(%rbp)	# tmp94, cond
	.loc 1 149 0
	movq	-40(%rbp), %rax	# cond, tmp95
	movq	16(%rax), %rax	# cond_16->fld[1].rtx, D.13204
	movzwl	(%rax), %eax	# _17->code, D.13203
	cmpw	$67, %ax	#, D.13203
	jne	.L17	#,
	.loc 1 150 0
	movq	-40(%rbp), %rax	# cond, tmp96
	movq	24(%rax), %rdx	# cond_16->fld[2].rtx, D.13204
	movq	global_rtl(%rip), %rax	# global_rtl, D.13204
	cmpq	%rax, %rdx	# D.13204, D.13204
	jne	.L17	#,
	.loc 1 151 0
	movq	-40(%rbp), %rax	# cond, D.13202
	jmp	.L11	#
.L17:
	.loc 1 152 0
	movq	-40(%rbp), %rax	# cond, tmp97
	movq	24(%rax), %rax	# cond_16->fld[2].rtx, D.13204
	movzwl	(%rax), %eax	# _22->code, D.13203
	cmpw	$67, %ax	#, D.13203
	jne	.L18	#,
	.loc 1 153 0
	movq	-40(%rbp), %rax	# cond, tmp98
	movq	16(%rax), %rdx	# cond_16->fld[1].rtx, D.13204
	movq	global_rtl(%rip), %rax	# global_rtl, D.13204
	cmpq	%rax, %rdx	# D.13204, D.13204
	jne	.L18	#,
	.loc 1 154 0
	movq	-40(%rbp), %rax	# cond, tmp99
	movq	16(%rax), %r13	# cond_16->fld[1].rtx, D.13204
	movq	-40(%rbp), %rax	# cond, tmp100
	movq	8(%rax), %r12	# cond_16->fld[0].rtx, D.13204
	movq	-40(%rbp), %rax	# cond, tmp101
	movzbl	2(%rax), %eax	# cond_16->mode, D.13205
	movzbl	%al, %ebx	# D.13205, D.13206
	movq	-40(%rbp), %rax	# cond, tmp102
	movzwl	(%rax), %eax	# cond_16->code, D.13203
	movzwl	%ax, %eax	# D.13203, D.13207
	movl	%eax, %edi	# D.13207,
	call	reverse_condition	#
	movq	%r13, %rcx	# D.13204,
	movq	%r12, %rdx	# D.13204,
	movl	%ebx, %esi	# D.13206,
	movl	%eax, %edi	# D.13207,
	call	gen_rtx_fmt_ee	#
	jmp	.L11	#
.L18:
	.loc 1 157 0
	movl	$0, %eax	#, D.13202
.L11:
	.loc 1 158 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_condition, .-get_condition
	.type	conditions_mutex_p, @function
conditions_mutex_p:
.LFB5:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# cond1, cond1
	movq	%rsi, -32(%rbp)	# cond2, cond2
	.loc 1 166 0
	movq	-24(%rbp), %rax	# cond1, tmp76
	movzwl	(%rax), %eax	# cond1_2(D)->code, D.13209
	movzwl	%ax, %eax	# D.13209, D.13208
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13210
	cmpb	$60, %al	#, D.13210
	jne	.L20	#,
	.loc 1 167 0
	movq	-32(%rbp), %rax	# cond2, tmp78
	movzwl	(%rax), %eax	# cond2_6(D)->code, D.13209
	movzwl	%ax, %eax	# D.13209, D.13208
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13210
	cmpb	$60, %al	#, D.13210
	jne	.L20	#,
	.loc 1 168 0
	movq	-24(%rbp), %rax	# cond1, tmp80
	movzwl	(%rax), %eax	# cond1_2(D)->code, D.13209
	movzwl	%ax, %ebx	# D.13209, D.13211
	movq	-32(%rbp), %rax	# cond2, tmp81
	movzwl	(%rax), %eax	# cond2_6(D)->code, D.13209
	movzwl	%ax, %eax	# D.13209, D.13212
	movl	%eax, %edi	# D.13212,
	call	reverse_condition	#
	cmpl	%eax, %ebx	# D.13212, D.13211
	jne	.L20	#,
	.loc 1 169 0
	movq	-24(%rbp), %rax	# cond1, tmp82
	movq	8(%rax), %rdx	# cond1_2(D)->fld[0].rtx, D.13213
	movq	-32(%rbp), %rax	# cond2, tmp83
	movq	8(%rax), %rax	# cond2_6(D)->fld[0].rtx, D.13213
	cmpq	%rax, %rdx	# D.13213, D.13213
	jne	.L20	#,
	.loc 1 170 0
	movq	-24(%rbp), %rax	# cond1, tmp84
	movq	16(%rax), %rdx	# cond1_2(D)->fld[1].rtx, D.13213
	movq	-32(%rbp), %rax	# cond2, tmp85
	movq	16(%rax), %rax	# cond2_6(D)->fld[1].rtx, D.13213
	cmpq	%rax, %rdx	# D.13213, D.13213
	jne	.L20	#,
	.loc 1 171 0
	movl	$1, %eax	#, D.13208
	jmp	.L21	#
.L20:
	.loc 1 172 0
	movl	$0, %eax	#, D.13208
.L21:
	.loc 1 173 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	conditions_mutex_p, .-conditions_mutex_p
	.section	.rodata
.LC0:
	.string	"sched-deps.c"
	.text
	.globl	add_dependence
	.type	add_dependence, @function
add_dependence:
.LFB6:
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# elem, elem
	movl	%edx, -68(%rbp)	# dep_type, dep_type
	.loc 1 190 0
	movq	-56(%rbp), %rax	# insn, tmp501
	cmpq	-64(%rbp), %rax	# elem, tmp501
	jne	.L23	#,
	.loc 1 191 0
	jmp	.L22	#
.L23:
	.loc 1 196 0
	movq	-64(%rbp), %rax	# elem, tmp502
	movzwl	(%rax), %eax	# elem_8(D)->code, D.13214
	cmpw	$37, %ax	#, D.13214
	jne	.L25	#,
	.loc 1 197 0
	jmp	.L22	#
.L25:
	.loc 1 204 0
	movq	-56(%rbp), %rax	# insn, tmp503
	movzwl	(%rax), %eax	# insn_7(D)->code, D.13214
	cmpw	$34, %ax	#, D.13214
	je	.L26	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# elem, tmp504
	movzwl	(%rax), %eax	# elem_8(D)->code, D.13214
	cmpw	$34, %ax	#, D.13214
	je	.L26	#,
	.loc 1 206 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp505
	movq	%rax, %rdi	# tmp505,
	call	get_condition	#
	movq	%rax, -24(%rbp)	# tmp506, cond1
	.loc 1 207 0
	movq	-64(%rbp), %rax	# elem, tmp507
	movq	%rax, %rdi	# tmp507,
	call	get_condition	#
	movq	%rax, -16(%rbp)	# tmp508, cond2
	.loc 1 208 0
	cmpq	$0, -24(%rbp)	#, cond1
	je	.L26	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, cond2
	je	.L26	#,
	.loc 1 209 0 is_stmt 1
	movq	-16(%rbp), %rdx	# cond2, tmp509
	movq	-24(%rbp), %rax	# cond1, tmp510
	movq	%rdx, %rsi	# tmp509,
	movq	%rax, %rdi	# tmp510,
	call	conditions_mutex_p	#
	testl	%eax, %eax	# D.13215
	je	.L26	#,
	.loc 1 212 0
	movq	-64(%rbp), %rdx	# elem, tmp511
	movq	-24(%rbp), %rax	# cond1, tmp512
	movq	%rdx, %rsi	# tmp511,
	movq	%rax, %rdi	# tmp512,
	call	modified_in_p	#
	testl	%eax, %eax	# D.13215
	jne	.L26	#,
	.loc 1 215 0
	movq	-56(%rbp), %rdx	# insn, tmp513
	movq	-16(%rbp), %rax	# cond2, tmp514
	movq	%rdx, %rsi	# tmp513,
	movq	%rax, %rdi	# tmp514,
	call	modified_in_p	#
	testl	%eax, %eax	# D.13215
	jne	.L26	#,
	.loc 1 216 0
	jmp	.L22	#
.L26:
	.loc 1 224 0
	movq	-64(%rbp), %rax	# elem, tmp515
	movq	%rax, %rdi	# tmp515,
	call	next_nonnote_insn	#
	movq	%rax, -32(%rbp)	# tmp516, next
	.loc 1 225 0
	cmpq	$0, -32(%rbp)	#, next
	je	.L27	#,
	.loc 1 225 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# next, tmp517
	movzbl	3(%rax), %eax	# *next_17, D.13216
	andl	$16, %eax	#, D.13216
	testb	%al, %al	# D.13216
	je	.L27	#,
	.loc 1 226 0 is_stmt 1
	movq	-32(%rbp), %rax	# next, tmp518
	movzwl	(%rax), %eax	# next_17->code, D.13214
	cmpw	$36, %ax	#, D.13214
	je	.L27	#,
.LBB2:
	.loc 1 237 0
	jmp	.L28	#
.L30:
	.loc 1 240 0
	movq	-8(%rbp), %rax	# nnext, tmp519
	movq	%rax, -32(%rbp)	# tmp519, next
.L28:
	.loc 1 237 0 discriminator 1
	movq	-32(%rbp), %rax	# next, tmp520
	movq	%rax, %rdi	# tmp520,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp521, nnext
	cmpq	$0, -8(%rbp)	#, nnext
	je	.L29	#,
	.loc 1 238 0
	movq	-8(%rbp), %rax	# nnext, tmp522
	movzbl	3(%rax), %eax	# *nnext_21, D.13216
	andl	$16, %eax	#, D.13216
	testb	%al, %al	# D.13216
	je	.L29	#,
	.loc 1 239 0
	movq	-8(%rbp), %rax	# nnext, tmp523
	movzwl	(%rax), %eax	# nnext_21->code, D.13214
	cmpw	$36, %ax	#, D.13214
	jne	.L30	#,
.L29:
	.loc 1 243 0
	movq	-56(%rbp), %rax	# insn, tmp524
	cmpq	-32(%rbp), %rax	# next, tmp524
	jne	.L31	#,
	.loc 1 244 0
	jmp	.L22	#
.L31:
	.loc 1 248 0
	movq	-32(%rbp), %rax	# next, tmp525
	movq	%rax, -64(%rbp)	# tmp525, elem
.L27:
.LBE2:
	.loc 1 251 0
	movl	$1, -48(%rbp)	#, present_p
	.loc 1 268 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.2
	testq	%rax, %rax	# true_dependency_cache.2
	je	.L32	#,
.LBB3:
	.loc 1 270 0
	movl	$0, -44(%rbp)	#, present_dep_type
	.loc 1 272 0
	movq	anti_dependency_cache(%rip), %rax	# anti_dependency_cache, anti_dependency_cache.3
	testq	%rax, %rax	# anti_dependency_cache.3
	je	.L33	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	output_dependency_cache(%rip), %rax	# output_dependency_cache, output_dependency_cache.4
	testq	%rax, %rax	# output_dependency_cache.4
	jne	.L34	#,
.L33:
	.loc 1 273 0 is_stmt 1
	movl	$__FUNCTION__.10915, %edx	#,
	movl	$273, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L34:
	.loc 1 274 0
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.5
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.6
	movq	-56(%rbp), %rax	# insn, tmp526
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp527
	addq	%rax, %rax	# tmp527
	addq	%rdx, %rax	# D.13217, tmp527
	salq	$4, %rax	#, tmp528
	addq	%rsi, %rax	# h_i_d.6, D.13218
	movl	16(%rax), %eax	# _37->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# true_dependency_cache.5, D.13219
	movq	(%rax), %rcx	# *_41, D.13220
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.7
	movq	-64(%rbp), %rax	# elem, tmp529
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp530
	addq	%rax, %rax	# tmp530
	addq	%rdx, %rax	# D.13217, tmp530
	salq	$4, %rax	#, tmp531
	addq	%rsi, %rax	# h_i_d.7, D.13218
	movl	16(%rax), %eax	# _47->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %eax	# D.13221, tmp532
	addq	$2, %rax	#, tmp533
	movq	(%rcx,%rax,8), %rsi	# _42->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.8
	movq	-64(%rbp), %rax	# elem, tmp534
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp535
	addq	%rax, %rax	# tmp535
	addq	%rdx, %rax	# D.13217, tmp535
	salq	$4, %rax	#, tmp536
	addq	%rcx, %rax	# h_i_d.8, D.13218
	movl	16(%rax), %eax	# _56->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	%eax, %ecx	# D.13215, tmp716
	shrq	%cl, %rsi	# tmp716, D.13217
	movq	%rsi, %rax	# D.13217, D.13217
	andl	$1, %eax	#, D.13217
	testq	%rax, %rax	# D.13217
	jne	.L35	#,
	.loc 1 277 0
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.9
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.10
	movq	-56(%rbp), %rax	# insn, tmp537
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp538
	addq	%rax, %rax	# tmp538
	addq	%rdx, %rax	# D.13217, tmp538
	salq	$4, %rax	#, tmp539
	addq	%rsi, %rax	# h_i_d.10, D.13218
	movl	16(%rax), %eax	# _66->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.9, D.13219
	movq	(%rax), %rcx	# *_70, D.13220
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.11
	movq	-64(%rbp), %rax	# elem, tmp540
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp541
	addq	%rax, %rax	# tmp541
	addq	%rdx, %rax	# D.13217, tmp541
	salq	$4, %rax	#, tmp542
	addq	%rsi, %rax	# h_i_d.11, D.13218
	movl	16(%rax), %eax	# _76->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %eax	# D.13221, tmp543
	addq	$2, %rax	#, tmp544
	movq	(%rcx,%rax,8), %rsi	# _71->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.12
	movq	-64(%rbp), %rax	# elem, tmp545
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp546
	addq	%rax, %rax	# tmp546
	addq	%rdx, %rax	# D.13217, tmp546
	salq	$4, %rax	#, tmp547
	addq	%rcx, %rax	# h_i_d.12, D.13218
	movl	16(%rax), %eax	# _85->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	%eax, %ecx	# D.13215, tmp718
	shrq	%cl, %rsi	# tmp718, D.13217
	movq	%rsi, %rax	# D.13217, D.13217
	andl	$1, %eax	#, D.13217
	testq	%rax, %rax	# D.13217
	je	.L36	#,
	.loc 1 279 0
	movl	$14, -44(%rbp)	#, present_dep_type
	jmp	.L35	#
.L36:
	.loc 1 280 0
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.13
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.14
	movq	-56(%rbp), %rax	# insn, tmp548
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp549
	addq	%rax, %rax	# tmp549
	addq	%rdx, %rax	# D.13217, tmp549
	salq	$4, %rax	#, tmp550
	addq	%rsi, %rax	# h_i_d.14, D.13218
	movl	16(%rax), %eax	# _96->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.13, D.13219
	movq	(%rax), %rcx	# *_100, D.13220
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.15
	movq	-64(%rbp), %rax	# elem, tmp551
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp552
	addq	%rax, %rax	# tmp552
	addq	%rdx, %rax	# D.13217, tmp552
	salq	$4, %rax	#, tmp553
	addq	%rsi, %rax	# h_i_d.15, D.13218
	movl	16(%rax), %eax	# _106->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %eax	# D.13221, tmp554
	addq	$2, %rax	#, tmp555
	movq	(%rcx,%rax,8), %rsi	# _101->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.16
	movq	-64(%rbp), %rax	# elem, tmp556
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp557
	addq	%rax, %rax	# tmp557
	addq	%rdx, %rax	# D.13217, tmp557
	salq	$4, %rax	#, tmp558
	addq	%rcx, %rax	# h_i_d.16, D.13218
	movl	16(%rax), %eax	# _115->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	%eax, %ecx	# D.13215, tmp720
	shrq	%cl, %rsi	# tmp720, D.13217
	movq	%rsi, %rax	# D.13217, D.13217
	andl	$1, %eax	#, D.13217
	testq	%rax, %rax	# D.13217
	je	.L37	#,
	.loc 1 282 0
	movl	$15, -44(%rbp)	#, present_dep_type
	jmp	.L35	#
.L37:
	.loc 1 284 0
	movl	$0, -48(%rbp)	#, present_p
.L35:
	.loc 1 285 0
	cmpl	$0, -48(%rbp)	#, present_p
	je	.L32	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %edx	# dep_type, dep_type.17
	movl	-44(%rbp), %eax	# present_dep_type, present_dep_type.18
	cmpl	%eax, %edx	# present_dep_type.18, dep_type.17
	jl	.L32	#,
	.loc 1 286 0 is_stmt 1
	jmp	.L22	#
.L32:
.LBE3:
	.loc 1 291 0
	cmpl	$0, -48(%rbp)	#, present_p
	je	.L38	#,
	.loc 1 292 0
	movq	-56(%rbp), %rax	# insn, tmp559
	movq	48(%rax), %rax	# insn_7(D)->fld[5].rtx, tmp560
	movq	%rax, -40(%rbp)	# tmp560, link
	jmp	.L39	#
.L48:
	.loc 1 293 0
	movq	-40(%rbp), %rax	# link, tmp561
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.13222
	cmpq	-64(%rbp), %rax	# elem, D.13222
	jne	.L40	#,
	.loc 1 298 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.19
	testq	%rax, %rax	# true_dependency_cache.19
	je	.L41	#,
	.loc 1 300 0
	movq	-40(%rbp), %rax	# link, tmp562
	movzbl	2(%rax), %eax	# link_2->mode, D.13216
	cmpb	$14, %al	#, D.13216
	jne	.L42	#,
	.loc 1 301 0
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.20
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.21
	movq	-56(%rbp), %rax	# insn, tmp563
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp564
	addq	%rax, %rax	# tmp564
	addq	%rdx, %rax	# D.13217, tmp564
	salq	$4, %rax	#, tmp565
	addq	%rsi, %rax	# h_i_d.21, D.13218
	movl	16(%rax), %eax	# _134->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.20, D.13219
	movq	(%rax), %rdi	# *_138, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.22
	movq	-64(%rbp), %rax	# elem, tmp566
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp567
	addq	%rax, %rax	# tmp567
	addq	%rdx, %rax	# D.13217, tmp567
	salq	$4, %rax	#, tmp568
	addq	%rcx, %rax	# h_i_d.22, D.13218
	movl	16(%rax), %eax	# _144->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.23
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.24
	movq	-56(%rbp), %rax	# insn, tmp569
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp570
	addq	%rax, %rax	# tmp570
	addq	%rdx, %rax	# D.13217, tmp570
	salq	$4, %rax	#, tmp571
	addq	%r8, %rax	# h_i_d.24, D.13218
	movl	16(%rax), %eax	# _153->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.23, D.13219
	movq	(%rax), %rax	# *_157, D.13220
	movl	%esi, %edx	# D.13221, tmp572
	addq	$2, %rdx	#, tmp573
	movq	(%rax,%rdx,8), %r8	# _158->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.25
	movq	-64(%rbp), %rax	# elem, tmp574
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp575
	addq	%rax, %rax	# tmp575
	addq	%rdx, %rax	# D.13217, tmp575
	salq	$4, %rax	#, tmp576
	addq	%rcx, %rax	# h_i_d.25, D.13218
	movl	16(%rax), %eax	# _164->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp577
	movl	%eax, %ecx	# D.13215, tmp723
	salq	%cl, %rdx	# tmp723, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	notq	%rax	# D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	andq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp578
	addq	$2, %rax	#, tmp579
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _139->elms
	jmp	.L41	#
.L42:
	.loc 1 303 0
	movq	-40(%rbp), %rax	# link, tmp580
	movzbl	2(%rax), %eax	# link_2->mode, D.13216
	cmpb	$15, %al	#, D.13216
	jne	.L43	#,
	.loc 1 304 0
	movq	output_dependency_cache(%rip), %rax	# output_dependency_cache, output_dependency_cache.26
	testq	%rax, %rax	# output_dependency_cache.26
	je	.L43	#,
	.loc 1 305 0
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.27
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.28
	movq	-56(%rbp), %rax	# insn, tmp581
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp582
	addq	%rax, %rax	# tmp582
	addq	%rdx, %rax	# D.13217, tmp582
	salq	$4, %rax	#, tmp583
	addq	%rsi, %rax	# h_i_d.28, D.13218
	movl	16(%rax), %eax	# _177->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.27, D.13219
	movq	(%rax), %rdi	# *_181, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.29
	movq	-64(%rbp), %rax	# elem, tmp584
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp585
	addq	%rax, %rax	# tmp585
	addq	%rdx, %rax	# D.13217, tmp585
	salq	$4, %rax	#, tmp586
	addq	%rcx, %rax	# h_i_d.29, D.13218
	movl	16(%rax), %eax	# _187->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.30
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.31
	movq	-56(%rbp), %rax	# insn, tmp587
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp588
	addq	%rax, %rax	# tmp588
	addq	%rdx, %rax	# D.13217, tmp588
	salq	$4, %rax	#, tmp589
	addq	%r8, %rax	# h_i_d.31, D.13218
	movl	16(%rax), %eax	# _196->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.30, D.13219
	movq	(%rax), %rax	# *_200, D.13220
	movl	%esi, %edx	# D.13221, tmp590
	addq	$2, %rdx	#, tmp591
	movq	(%rax,%rdx,8), %r8	# _201->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.32
	movq	-64(%rbp), %rax	# elem, tmp592
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp593
	addq	%rax, %rax	# tmp593
	addq	%rdx, %rax	# D.13217, tmp593
	salq	$4, %rax	#, tmp594
	addq	%rcx, %rax	# h_i_d.32, D.13218
	movl	16(%rax), %eax	# _207->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp595
	movl	%eax, %ecx	# D.13215, tmp727
	salq	%cl, %rdx	# tmp727, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	notq	%rax	# D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	andq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp596
	addq	$2, %rax	#, tmp597
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _182->elms
	jmp	.L41	#
.L43:
	.loc 1 308 0
	movl	$__FUNCTION__.10915, %edx	#,
	movl	$308, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L41:
	.loc 1 314 0
	movl	-68(%rbp), %edx	# dep_type, dep_type.33
	movq	-40(%rbp), %rax	# link, tmp598
	movzbl	2(%rax), %eax	# link_2->mode, D.13216
	movzbl	%al, %eax	# D.13216, D.13215
	cmpl	%eax, %edx	# D.13215, dep_type.33
	jge	.L44	#,
	.loc 1 315 0
	movl	-68(%rbp), %eax	# dep_type, tmp599
	movl	%eax, %edx	# tmp599, D.13216
	movq	-40(%rbp), %rax	# link, tmp600
	movb	%dl, 2(%rax)	# D.13216, link_2->mode
.L44:
	.loc 1 320 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.34
	testq	%rax, %rax	# true_dependency_cache.34
	je	.L45	#,
	.loc 1 322 0
	movq	-40(%rbp), %rax	# link, tmp601
	movzbl	2(%rax), %eax	# link_2->mode, D.13216
	testb	%al, %al	# D.13216
	jne	.L46	#,
	.loc 1 323 0
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.35
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.36
	movq	-56(%rbp), %rax	# insn, tmp602
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp603
	addq	%rax, %rax	# tmp603
	addq	%rdx, %rax	# D.13217, tmp603
	salq	$4, %rax	#, tmp604
	addq	%rsi, %rax	# h_i_d.36, D.13218
	movl	16(%rax), %eax	# _224->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# true_dependency_cache.35, D.13219
	movq	(%rax), %rdi	# *_228, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.37
	movq	-64(%rbp), %rax	# elem, tmp605
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp606
	addq	%rax, %rax	# tmp606
	addq	%rdx, %rax	# D.13217, tmp606
	salq	$4, %rax	#, tmp607
	addq	%rcx, %rax	# h_i_d.37, D.13218
	movl	16(%rax), %eax	# _234->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.38
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.39
	movq	-56(%rbp), %rax	# insn, tmp608
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp609
	addq	%rax, %rax	# tmp609
	addq	%rdx, %rax	# D.13217, tmp609
	salq	$4, %rax	#, tmp610
	addq	%r8, %rax	# h_i_d.39, D.13218
	movl	16(%rax), %eax	# _243->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# true_dependency_cache.38, D.13219
	movq	(%rax), %rax	# *_247, D.13220
	movl	%esi, %edx	# D.13221, tmp611
	addq	$2, %rdx	#, tmp612
	movq	(%rax,%rdx,8), %r8	# _248->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.40
	movq	-64(%rbp), %rax	# elem, tmp613
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp614
	addq	%rax, %rax	# tmp614
	addq	%rdx, %rax	# D.13217, tmp614
	salq	$4, %rax	#, tmp615
	addq	%rcx, %rax	# h_i_d.40, D.13218
	movl	16(%rax), %eax	# _254->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp616
	movl	%eax, %ecx	# D.13215, tmp731
	salq	%cl, %rdx	# tmp731, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	orq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp617
	addq	$2, %rax	#, tmp618
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _229->elms
	jmp	.L45	#
.L46:
	.loc 1 325 0
	movq	-40(%rbp), %rax	# link, tmp619
	movzbl	2(%rax), %eax	# link_2->mode, D.13216
	cmpb	$14, %al	#, D.13216
	jne	.L47	#,
	.loc 1 326 0
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.41
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.42
	movq	-56(%rbp), %rax	# insn, tmp620
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp621
	addq	%rax, %rax	# tmp621
	addq	%rdx, %rax	# D.13217, tmp621
	salq	$4, %rax	#, tmp622
	addq	%rsi, %rax	# h_i_d.42, D.13218
	movl	16(%rax), %eax	# _265->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.41, D.13219
	movq	(%rax), %rdi	# *_269, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.43
	movq	-64(%rbp), %rax	# elem, tmp623
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp624
	addq	%rax, %rax	# tmp624
	addq	%rdx, %rax	# D.13217, tmp624
	salq	$4, %rax	#, tmp625
	addq	%rcx, %rax	# h_i_d.43, D.13218
	movl	16(%rax), %eax	# _275->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.44
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.45
	movq	-56(%rbp), %rax	# insn, tmp626
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp627
	addq	%rax, %rax	# tmp627
	addq	%rdx, %rax	# D.13217, tmp627
	salq	$4, %rax	#, tmp628
	addq	%r8, %rax	# h_i_d.45, D.13218
	movl	16(%rax), %eax	# _284->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.44, D.13219
	movq	(%rax), %rax	# *_288, D.13220
	movl	%esi, %edx	# D.13221, tmp629
	addq	$2, %rdx	#, tmp630
	movq	(%rax,%rdx,8), %r8	# _289->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.46
	movq	-64(%rbp), %rax	# elem, tmp631
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp632
	addq	%rax, %rax	# tmp632
	addq	%rdx, %rax	# D.13217, tmp632
	salq	$4, %rax	#, tmp633
	addq	%rcx, %rax	# h_i_d.46, D.13218
	movl	16(%rax), %eax	# _295->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp634
	movl	%eax, %ecx	# D.13215, tmp735
	salq	%cl, %rdx	# tmp735, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	orq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp635
	addq	$2, %rax	#, tmp636
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _270->elms
	jmp	.L45	#
.L47:
	.loc 1 328 0
	movq	-40(%rbp), %rax	# link, tmp637
	movzbl	2(%rax), %eax	# link_2->mode, D.13216
	cmpb	$15, %al	#, D.13216
	jne	.L45	#,
	.loc 1 329 0
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.47
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.48
	movq	-56(%rbp), %rax	# insn, tmp638
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp639
	addq	%rax, %rax	# tmp639
	addq	%rdx, %rax	# D.13217, tmp639
	salq	$4, %rax	#, tmp640
	addq	%rsi, %rax	# h_i_d.48, D.13218
	movl	16(%rax), %eax	# _306->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.47, D.13219
	movq	(%rax), %rdi	# *_310, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.49
	movq	-64(%rbp), %rax	# elem, tmp641
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp642
	addq	%rax, %rax	# tmp642
	addq	%rdx, %rax	# D.13217, tmp642
	salq	$4, %rax	#, tmp643
	addq	%rcx, %rax	# h_i_d.49, D.13218
	movl	16(%rax), %eax	# _316->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.50
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.51
	movq	-56(%rbp), %rax	# insn, tmp644
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp645
	addq	%rax, %rax	# tmp645
	addq	%rdx, %rax	# D.13217, tmp645
	salq	$4, %rax	#, tmp646
	addq	%r8, %rax	# h_i_d.51, D.13218
	movl	16(%rax), %eax	# _325->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.50, D.13219
	movq	(%rax), %rax	# *_329, D.13220
	movl	%esi, %edx	# D.13221, tmp647
	addq	$2, %rdx	#, tmp648
	movq	(%rax,%rdx,8), %r8	# _330->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.52
	movq	-64(%rbp), %rax	# elem, tmp649
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp650
	addq	%rax, %rax	# tmp650
	addq	%rdx, %rax	# D.13217, tmp650
	salq	$4, %rax	#, tmp651
	addq	%rcx, %rax	# h_i_d.52, D.13218
	movl	16(%rax), %eax	# _336->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp652
	movl	%eax, %ecx	# D.13215, tmp739
	salq	%cl, %rdx	# tmp739, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	orq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp653
	addq	$2, %rax	#, tmp654
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _311->elms
	.loc 1 333 0
	jmp	.L22	#
.L45:
	jmp	.L22	#
.L40:
	.loc 1 292 0
	movq	-40(%rbp), %rax	# link, tmp655
	movq	16(%rax), %rax	# link_2->fld[1].rtx, tmp656
	movq	%rax, -40(%rbp)	# tmp656, link
.L39:
	.loc 1 292 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, link
	jne	.L48	#,
.L38:
	.loc 1 337 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp657
	movq	48(%rax), %rdx	# insn_7(D)->fld[5].rtx, D.13222
	movq	-64(%rbp), %rax	# elem, tmp658
	movq	%rdx, %rsi	# D.13222,
	movq	%rax, %rdi	# tmp658,
	call	alloc_INSN_LIST	#
	movq	%rax, -40(%rbp)	# tmp659, link
	.loc 1 338 0
	movq	-56(%rbp), %rax	# insn, tmp660
	movq	-40(%rbp), %rdx	# link, tmp661
	movq	%rdx, 48(%rax)	# tmp661, insn_7(D)->fld[5].rtx
	.loc 1 341 0
	movl	-68(%rbp), %eax	# dep_type, tmp662
	movl	%eax, %edx	# tmp662, D.13216
	movq	-40(%rbp), %rax	# link, tmp663
	movb	%dl, 2(%rax)	# D.13216, link_343->mode
	.loc 1 346 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.53
	testq	%rax, %rax	# true_dependency_cache.53
	je	.L22	#,
	.loc 1 348 0
	cmpl	$0, -68(%rbp)	#, dep_type
	jne	.L49	#,
	.loc 1 349 0
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.54
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.55
	movq	-56(%rbp), %rax	# insn, tmp664
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp665
	addq	%rax, %rax	# tmp665
	addq	%rdx, %rax	# D.13217, tmp665
	salq	$4, %rax	#, tmp666
	addq	%rsi, %rax	# h_i_d.55, D.13218
	movl	16(%rax), %eax	# _351->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# true_dependency_cache.54, D.13219
	movq	(%rax), %rdi	# *_355, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.56
	movq	-64(%rbp), %rax	# elem, tmp667
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp668
	addq	%rax, %rax	# tmp668
	addq	%rdx, %rax	# D.13217, tmp668
	salq	$4, %rax	#, tmp669
	addq	%rcx, %rax	# h_i_d.56, D.13218
	movl	16(%rax), %eax	# _361->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.57
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.58
	movq	-56(%rbp), %rax	# insn, tmp670
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp671
	addq	%rax, %rax	# tmp671
	addq	%rdx, %rax	# D.13217, tmp671
	salq	$4, %rax	#, tmp672
	addq	%r8, %rax	# h_i_d.58, D.13218
	movl	16(%rax), %eax	# _370->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# true_dependency_cache.57, D.13219
	movq	(%rax), %rax	# *_374, D.13220
	movl	%esi, %edx	# D.13221, tmp673
	addq	$2, %rdx	#, tmp674
	movq	(%rax,%rdx,8), %r8	# _375->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.59
	movq	-64(%rbp), %rax	# elem, tmp675
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp676
	addq	%rax, %rax	# tmp676
	addq	%rdx, %rax	# D.13217, tmp676
	salq	$4, %rax	#, tmp677
	addq	%rcx, %rax	# h_i_d.59, D.13218
	movl	16(%rax), %eax	# _381->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp678
	movl	%eax, %ecx	# D.13215, tmp743
	salq	%cl, %rdx	# tmp743, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	orq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp679
	addq	$2, %rax	#, tmp680
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _356->elms
	jmp	.L22	#
.L49:
	.loc 1 350 0
	cmpl	$14, -68(%rbp)	#, dep_type
	jne	.L50	#,
	.loc 1 351 0
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.60
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.61
	movq	-56(%rbp), %rax	# insn, tmp681
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp682
	addq	%rax, %rax	# tmp682
	addq	%rdx, %rax	# D.13217, tmp682
	salq	$4, %rax	#, tmp683
	addq	%rsi, %rax	# h_i_d.61, D.13218
	movl	16(%rax), %eax	# _391->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.60, D.13219
	movq	(%rax), %rdi	# *_395, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.62
	movq	-64(%rbp), %rax	# elem, tmp684
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp685
	addq	%rax, %rax	# tmp685
	addq	%rdx, %rax	# D.13217, tmp685
	salq	$4, %rax	#, tmp686
	addq	%rcx, %rax	# h_i_d.62, D.13218
	movl	16(%rax), %eax	# _401->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.63
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.64
	movq	-56(%rbp), %rax	# insn, tmp687
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp688
	addq	%rax, %rax	# tmp688
	addq	%rdx, %rax	# D.13217, tmp688
	salq	$4, %rax	#, tmp689
	addq	%r8, %rax	# h_i_d.64, D.13218
	movl	16(%rax), %eax	# _410->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# anti_dependency_cache.63, D.13219
	movq	(%rax), %rax	# *_414, D.13220
	movl	%esi, %edx	# D.13221, tmp690
	addq	$2, %rdx	#, tmp691
	movq	(%rax,%rdx,8), %r8	# _415->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.65
	movq	-64(%rbp), %rax	# elem, tmp692
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp693
	addq	%rax, %rax	# tmp693
	addq	%rdx, %rax	# D.13217, tmp693
	salq	$4, %rax	#, tmp694
	addq	%rcx, %rax	# h_i_d.65, D.13218
	movl	16(%rax), %eax	# _421->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp695
	movl	%eax, %ecx	# D.13215, tmp747
	salq	%cl, %rdx	# tmp747, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	orq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp696
	addq	$2, %rax	#, tmp697
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _396->elms
	jmp	.L22	#
.L50:
	.loc 1 352 0
	cmpl	$15, -68(%rbp)	#, dep_type
	jne	.L22	#,
	.loc 1 353 0
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.66
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.67
	movq	-56(%rbp), %rax	# insn, tmp698
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp699
	addq	%rax, %rax	# tmp699
	addq	%rdx, %rax	# D.13217, tmp699
	salq	$4, %rax	#, tmp700
	addq	%rsi, %rax	# h_i_d.67, D.13218
	movl	16(%rax), %eax	# _431->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.66, D.13219
	movq	(%rax), %rdi	# *_435, D.13220
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.68
	movq	-64(%rbp), %rax	# elem, tmp701
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp702
	addq	%rax, %rax	# tmp702
	addq	%rdx, %rax	# D.13217, tmp702
	salq	$4, %rax	#, tmp703
	addq	%rcx, %rax	# h_i_d.68, D.13218
	movl	16(%rax), %eax	# _441->luid, D.13215
	shrl	$6, %eax	#, D.13221
	movl	%eax, %esi	# D.13221, D.13221
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.69
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.70
	movq	-56(%rbp), %rax	# insn, tmp704
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp705
	addq	%rax, %rax	# tmp705
	addq	%rdx, %rax	# D.13217, tmp705
	salq	$4, %rax	#, tmp706
	addq	%r8, %rax	# h_i_d.70, D.13218
	movl	16(%rax), %eax	# _450->luid, D.13215
	cltq
	salq	$3, %rax	#, D.13217
	addq	%rcx, %rax	# output_dependency_cache.69, D.13219
	movq	(%rax), %rax	# *_454, D.13220
	movl	%esi, %edx	# D.13221, tmp707
	addq	$2, %rdx	#, tmp708
	movq	(%rax,%rdx,8), %r8	# _455->elms, D.13217
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.71
	movq	-64(%rbp), %rax	# elem, tmp709
	movl	8(%rax), %eax	# elem_1->fld[0].rtint, D.13215
	movslq	%eax, %rdx	# D.13215, D.13217
	movq	%rdx, %rax	# D.13217, tmp710
	addq	%rax, %rax	# tmp710
	addq	%rdx, %rax	# D.13217, tmp710
	salq	$4, %rax	#, tmp711
	addq	%rcx, %rax	# h_i_d.71, D.13218
	movl	16(%rax), %eax	# _461->luid, D.13215
	andl	$63, %eax	#, D.13215
	movl	$1, %edx	#, tmp712
	movl	%eax, %ecx	# D.13215, tmp751
	salq	%cl, %rdx	# tmp751, D.13217
	movq	%rdx, %rax	# D.13217, D.13217
	movq	%r8, %rdx	# D.13217, D.13217
	orq	%rax, %rdx	# D.13217, D.13217
	movl	%esi, %eax	# D.13221, tmp713
	addq	$2, %rax	#, tmp714
	movq	%rdx, (%rdi,%rax,8)	# D.13217, _436->elms
.L22:
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_dependence, .-add_dependence
	.type	add_dependence_list, @function
add_dependence_list:
.LFB7:
	.loc 1 364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	movq	%rsi, -16(%rbp)	# list, list
	movl	%edx, -20(%rbp)	# dep_type, dep_type
	.loc 1 365 0
	jmp	.L52	#
.L53:
	.loc 1 366 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp60
	movq	8(%rax), %rcx	# list_1->fld[0].rtx, D.13224
	movl	-20(%rbp), %edx	# dep_type, tmp61
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	%rcx, %rsi	# D.13224,
	movq	%rax, %rdi	# tmp62,
	call	add_dependence	#
	.loc 1 365 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp63
	movq	16(%rax), %rax	# list_1->fld[1].rtx, tmp64
	movq	%rax, -16(%rbp)	# tmp64, list
.L52:
	.loc 1 365 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, list
	jne	.L53	#,
	.loc 1 367 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	add_dependence_list, .-add_dependence_list
	.type	add_dependence_list_and_free, @function
add_dependence_list_and_free:
.LFB8:
	.loc 1 376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# listp, listp
	movl	%edx, -36(%rbp)	# dep_type, dep_type
	.loc 1 378 0
	movq	-32(%rbp), %rax	# listp, tmp60
	movq	(%rax), %rax	# *listp_2(D), tmp61
	movq	%rax, -16(%rbp)	# tmp61, list
	movq	-32(%rbp), %rax	# listp, tmp62
	movq	$0, (%rax)	#, *listp_2(D)
	jmp	.L55	#
.L56:
	.loc 1 380 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp63
	movq	16(%rax), %rax	# list_1->fld[1].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, next
	.loc 1 381 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp65
	movq	8(%rax), %rcx	# list_1->fld[0].rtx, D.13225
	movl	-36(%rbp), %edx	# dep_type, tmp66
	movq	-24(%rbp), %rax	# insn, tmp67
	movq	%rcx, %rsi	# D.13225,
	movq	%rax, %rdi	# tmp67,
	call	add_dependence	#
	.loc 1 382 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp68
	movq	%rax, %rdi	# tmp68,
	call	free_INSN_LIST_node	#
	.loc 1 378 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp69
	movq	%rax, -16(%rbp)	# tmp69, list
.L55:
	.loc 1 378 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, list
	jne	.L56	#,
	.loc 1 384 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	add_dependence_list_and_free, .-add_dependence_list_and_free
	.type	remove_dependence, @function
remove_dependence:
.LFB9:
	.loc 1 393 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# elem, elem
	.loc 1 395 0
	movl	$0, -28(%rbp)	#, found
	.loc 1 397 0
	movq	$0, -24(%rbp)	#, prev
	movq	-40(%rbp), %rax	# insn, tmp187
	movq	48(%rax), %rax	# insn_8(D)->fld[5].rtx, tmp188
	movq	%rax, -16(%rbp)	# tmp188, link
	jmp	.L58	#
.L66:
	.loc 1 399 0
	movq	-16(%rbp), %rax	# link, tmp189
	movq	16(%rax), %rax	# link_3->fld[1].rtx, tmp190
	movq	%rax, -8(%rbp)	# tmp190, next
	.loc 1 400 0
	movq	-16(%rbp), %rax	# link, tmp191
	movq	8(%rax), %rax	# link_3->fld[0].rtx, D.13226
	cmpq	-48(%rbp), %rax	# elem, D.13226
	jne	.L59	#,
	.loc 1 402 0
	cmpq	$0, -24(%rbp)	#, prev
	je	.L60	#,
	.loc 1 403 0
	movq	-24(%rbp), %rax	# prev, tmp192
	movq	-8(%rbp), %rdx	# next, tmp193
	movq	%rdx, 16(%rax)	# tmp193, prev_2->fld[1].rtx
	jmp	.L61	#
.L60:
	.loc 1 405 0
	movq	-40(%rbp), %rax	# insn, tmp194
	movq	-8(%rbp), %rdx	# next, tmp195
	movq	%rdx, 48(%rax)	# tmp195, insn_8(D)->fld[5].rtx
.L61:
	.loc 1 410 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.72
	testq	%rax, %rax	# true_dependency_cache.72
	je	.L62	#,
	.loc 1 412 0
	movq	-16(%rbp), %rax	# link, tmp196
	movzbl	2(%rax), %eax	# link_3->mode, D.13227
	testb	%al, %al	# D.13227
	jne	.L63	#,
	.loc 1 413 0
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.73
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.74
	movq	-40(%rbp), %rax	# insn, tmp197
	movl	8(%rax), %eax	# insn_8(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp198
	addq	%rax, %rax	# tmp198
	addq	%rdx, %rax	# D.13229, tmp198
	salq	$4, %rax	#, tmp199
	addq	%rsi, %rax	# h_i_d.74, D.13230
	movl	16(%rax), %eax	# _20->luid, D.13228
	cltq
	salq	$3, %rax	#, D.13229
	addq	%rcx, %rax	# true_dependency_cache.73, D.13231
	movq	(%rax), %rdi	# *_24, D.13232
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.75
	movq	-48(%rbp), %rax	# elem, tmp200
	movl	8(%rax), %eax	# elem_12(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp201
	addq	%rax, %rax	# tmp201
	addq	%rdx, %rax	# D.13229, tmp201
	salq	$4, %rax	#, tmp202
	addq	%rcx, %rax	# h_i_d.75, D.13230
	movl	16(%rax), %eax	# _30->luid, D.13228
	shrl	$6, %eax	#, D.13233
	movl	%eax, %esi	# D.13233, D.13233
	movq	true_dependency_cache(%rip), %rcx	# true_dependency_cache, true_dependency_cache.76
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.77
	movq	-40(%rbp), %rax	# insn, tmp203
	movl	8(%rax), %eax	# insn_8(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp204
	addq	%rax, %rax	# tmp204
	addq	%rdx, %rax	# D.13229, tmp204
	salq	$4, %rax	#, tmp205
	addq	%r8, %rax	# h_i_d.77, D.13230
	movl	16(%rax), %eax	# _39->luid, D.13228
	cltq
	salq	$3, %rax	#, D.13229
	addq	%rcx, %rax	# true_dependency_cache.76, D.13231
	movq	(%rax), %rax	# *_43, D.13232
	movl	%esi, %edx	# D.13233, tmp206
	addq	$2, %rdx	#, tmp207
	movq	(%rax,%rdx,8), %r8	# _44->elms, D.13229
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.78
	movq	-48(%rbp), %rax	# elem, tmp208
	movl	8(%rax), %eax	# elem_12(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp209
	addq	%rax, %rax	# tmp209
	addq	%rdx, %rax	# D.13229, tmp209
	salq	$4, %rax	#, tmp210
	addq	%rcx, %rax	# h_i_d.78, D.13230
	movl	16(%rax), %eax	# _50->luid, D.13228
	andl	$63, %eax	#, D.13228
	movl	$1, %edx	#, tmp211
	movl	%eax, %ecx	# D.13228, tmp255
	salq	%cl, %rdx	# tmp255, D.13229
	movq	%rdx, %rax	# D.13229, D.13229
	notq	%rax	# D.13229
	movq	%r8, %rdx	# D.13229, D.13229
	andq	%rax, %rdx	# D.13229, D.13229
	movl	%esi, %eax	# D.13233, tmp212
	addq	$2, %rax	#, tmp213
	movq	%rdx, (%rdi,%rax,8)	# D.13229, _25->elms
	jmp	.L62	#
.L63:
	.loc 1 415 0
	movq	-16(%rbp), %rax	# link, tmp214
	movzbl	2(%rax), %eax	# link_3->mode, D.13227
	cmpb	$14, %al	#, D.13227
	jne	.L64	#,
	.loc 1 416 0
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.79
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.80
	movq	-40(%rbp), %rax	# insn, tmp215
	movl	8(%rax), %eax	# insn_8(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp216
	addq	%rax, %rax	# tmp216
	addq	%rdx, %rax	# D.13229, tmp216
	salq	$4, %rax	#, tmp217
	addq	%rsi, %rax	# h_i_d.80, D.13230
	movl	16(%rax), %eax	# _62->luid, D.13228
	cltq
	salq	$3, %rax	#, D.13229
	addq	%rcx, %rax	# anti_dependency_cache.79, D.13231
	movq	(%rax), %rdi	# *_66, D.13232
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.81
	movq	-48(%rbp), %rax	# elem, tmp218
	movl	8(%rax), %eax	# elem_12(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp219
	addq	%rax, %rax	# tmp219
	addq	%rdx, %rax	# D.13229, tmp219
	salq	$4, %rax	#, tmp220
	addq	%rcx, %rax	# h_i_d.81, D.13230
	movl	16(%rax), %eax	# _72->luid, D.13228
	shrl	$6, %eax	#, D.13233
	movl	%eax, %esi	# D.13233, D.13233
	movq	anti_dependency_cache(%rip), %rcx	# anti_dependency_cache, anti_dependency_cache.82
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.83
	movq	-40(%rbp), %rax	# insn, tmp221
	movl	8(%rax), %eax	# insn_8(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp222
	addq	%rax, %rax	# tmp222
	addq	%rdx, %rax	# D.13229, tmp222
	salq	$4, %rax	#, tmp223
	addq	%r8, %rax	# h_i_d.83, D.13230
	movl	16(%rax), %eax	# _81->luid, D.13228
	cltq
	salq	$3, %rax	#, D.13229
	addq	%rcx, %rax	# anti_dependency_cache.82, D.13231
	movq	(%rax), %rax	# *_85, D.13232
	movl	%esi, %edx	# D.13233, tmp224
	addq	$2, %rdx	#, tmp225
	movq	(%rax,%rdx,8), %r8	# _86->elms, D.13229
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.84
	movq	-48(%rbp), %rax	# elem, tmp226
	movl	8(%rax), %eax	# elem_12(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp227
	addq	%rax, %rax	# tmp227
	addq	%rdx, %rax	# D.13229, tmp227
	salq	$4, %rax	#, tmp228
	addq	%rcx, %rax	# h_i_d.84, D.13230
	movl	16(%rax), %eax	# _92->luid, D.13228
	andl	$63, %eax	#, D.13228
	movl	$1, %edx	#, tmp229
	movl	%eax, %ecx	# D.13228, tmp259
	salq	%cl, %rdx	# tmp259, D.13229
	movq	%rdx, %rax	# D.13229, D.13229
	notq	%rax	# D.13229
	movq	%r8, %rdx	# D.13229, D.13229
	andq	%rax, %rdx	# D.13229, D.13229
	movl	%esi, %eax	# D.13233, tmp230
	addq	$2, %rax	#, tmp231
	movq	%rdx, (%rdi,%rax,8)	# D.13229, _67->elms
	jmp	.L62	#
.L64:
	.loc 1 418 0
	movq	-16(%rbp), %rax	# link, tmp232
	movzbl	2(%rax), %eax	# link_3->mode, D.13227
	cmpb	$15, %al	#, D.13227
	jne	.L62	#,
	.loc 1 419 0
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.85
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.86
	movq	-40(%rbp), %rax	# insn, tmp233
	movl	8(%rax), %eax	# insn_8(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp234
	addq	%rax, %rax	# tmp234
	addq	%rdx, %rax	# D.13229, tmp234
	salq	$4, %rax	#, tmp235
	addq	%rsi, %rax	# h_i_d.86, D.13230
	movl	16(%rax), %eax	# _104->luid, D.13228
	cltq
	salq	$3, %rax	#, D.13229
	addq	%rcx, %rax	# output_dependency_cache.85, D.13231
	movq	(%rax), %rdi	# *_108, D.13232
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.87
	movq	-48(%rbp), %rax	# elem, tmp236
	movl	8(%rax), %eax	# elem_12(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp237
	addq	%rax, %rax	# tmp237
	addq	%rdx, %rax	# D.13229, tmp237
	salq	$4, %rax	#, tmp238
	addq	%rcx, %rax	# h_i_d.87, D.13230
	movl	16(%rax), %eax	# _114->luid, D.13228
	shrl	$6, %eax	#, D.13233
	movl	%eax, %esi	# D.13233, D.13233
	movq	output_dependency_cache(%rip), %rcx	# output_dependency_cache, output_dependency_cache.88
	movq	h_i_d(%rip), %r8	# h_i_d, h_i_d.89
	movq	-40(%rbp), %rax	# insn, tmp239
	movl	8(%rax), %eax	# insn_8(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp240
	addq	%rax, %rax	# tmp240
	addq	%rdx, %rax	# D.13229, tmp240
	salq	$4, %rax	#, tmp241
	addq	%r8, %rax	# h_i_d.89, D.13230
	movl	16(%rax), %eax	# _123->luid, D.13228
	cltq
	salq	$3, %rax	#, D.13229
	addq	%rcx, %rax	# output_dependency_cache.88, D.13231
	movq	(%rax), %rax	# *_127, D.13232
	movl	%esi, %edx	# D.13233, tmp242
	addq	$2, %rdx	#, tmp243
	movq	(%rax,%rdx,8), %r8	# _128->elms, D.13229
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.90
	movq	-48(%rbp), %rax	# elem, tmp244
	movl	8(%rax), %eax	# elem_12(D)->fld[0].rtint, D.13228
	movslq	%eax, %rdx	# D.13228, D.13229
	movq	%rdx, %rax	# D.13229, tmp245
	addq	%rax, %rax	# tmp245
	addq	%rdx, %rax	# D.13229, tmp245
	salq	$4, %rax	#, tmp246
	addq	%rcx, %rax	# h_i_d.90, D.13230
	movl	16(%rax), %eax	# _134->luid, D.13228
	andl	$63, %eax	#, D.13228
	movl	$1, %edx	#, tmp247
	movl	%eax, %ecx	# D.13228, tmp263
	salq	%cl, %rdx	# tmp263, D.13229
	movq	%rdx, %rax	# D.13229, D.13229
	notq	%rax	# D.13229
	movq	%r8, %rdx	# D.13229, D.13229
	andq	%rax, %rdx	# D.13229, D.13229
	movl	%esi, %eax	# D.13233, tmp248
	addq	$2, %rax	#, tmp249
	movq	%rdx, (%rdi,%rax,8)	# D.13229, _109->elms
.L62:
	.loc 1 424 0 discriminator 1
	movq	-16(%rbp), %rax	# link, tmp250
	movq	%rax, %rdi	# tmp250,
	call	free_INSN_LIST_node	#
	.loc 1 426 0 discriminator 1
	movl	$1, -28(%rbp)	#, found
	jmp	.L65	#
.L59:
	.loc 1 429 0
	movq	-16(%rbp), %rax	# link, tmp251
	movq	%rax, -24(%rbp)	# tmp251, prev
.L65:
	.loc 1 397 0
	movq	-8(%rbp), %rax	# next, tmp252
	movq	%rax, -16(%rbp)	# tmp252, link
.L58:
	.loc 1 397 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L66	#,
	.loc 1 432 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, found
	jne	.L67	#,
	.loc 1 433 0
	movl	$__FUNCTION__.10948, %edx	#,
	movl	$433, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L67:
	.loc 1 434 0
	nop
	.loc 1 435 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	remove_dependence, .-remove_dependence
	.type	group_leader, @function
group_leader:
.LFB10:
	.loc 1 443 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
.L71:
	.loc 1 448 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp64
	movq	%rax, -8(%rbp)	# tmp64, prev
	.loc 1 449 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp65
	movq	%rax, %rdi	# tmp65,
	call	next_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp66, insn
	.loc 1 451 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	je	.L70	#,
	movq	-24(%rbp), %rax	# insn, tmp67
	movzbl	3(%rax), %eax	# *insn_4, D.13234
	andl	$16, %eax	#, D.13234
	testb	%al, %al	# D.13234
	je	.L70	#,
	movq	-24(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_4->code, D.13235
	cmpw	$36, %ax	#, D.13235
	jne	.L71	#,
.L70:
	.loc 1 453 0
	movq	-8(%rbp), %rax	# prev, D.13236
	.loc 1 454 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	group_leader, .-group_leader
	.type	set_sched_group_p, @function
set_sched_group_p:
.LFB11:
	.loc 1 462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 465 0
	movq	-24(%rbp), %rax	# insn, tmp64
	movzbl	3(%rax), %edx	# insn_2(D)->in_struct, tmp67
	orl	$16, %edx	#, tmp68
	movb	%dl, 3(%rax)	# tmp68, insn_2(D)->in_struct
	.loc 1 470 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movq	%rax, %rdi	# tmp69,
	call	prev_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp70, prev
	.loc 1 477 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	48(%rax), %rdx	# insn_2(D)->fld[5].rtx, D.13237
	movq	-8(%rbp), %rax	# prev, tmp72
	movq	%rdx, %rsi	# D.13237,
	movq	%rax, %rdi	# tmp72,
	call	find_insn_list	#
	testq	%rax, %rax	# D.13237
	je	.L74	#,
	.loc 1 478 0
	movq	-8(%rbp), %rdx	# prev, tmp73
	movq	-24(%rbp), %rax	# insn, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	remove_dependence	#
.L74:
	.loc 1 480 0
	movq	-8(%rbp), %rax	# prev, tmp75
	movq	48(%rax), %rax	# prev_3->fld[5].rtx, tmp76
	movq	%rax, -16(%rbp)	# tmp76, link
	jmp	.L75	#
.L76:
	.loc 1 481 0 discriminator 2
	movq	-16(%rbp), %rax	# link, tmp77
	movzbl	2(%rax), %eax	# link_1->mode, D.13238
	movzbl	%al, %edx	# D.13238, D.13239
	movq	-16(%rbp), %rax	# link, tmp78
	movq	8(%rax), %rcx	# link_1->fld[0].rtx, D.13237
	movq	-24(%rbp), %rax	# insn, tmp79
	movq	%rcx, %rsi	# D.13237,
	movq	%rax, %rdi	# tmp79,
	call	add_dependence	#
	.loc 1 480 0 discriminator 2
	movq	-16(%rbp), %rax	# link, tmp80
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp81
	movq	%rax, -16(%rbp)	# tmp81, link
.L75:
	.loc 1 480 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L76	#,
	.loc 1 482 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	set_sched_group_p, .-set_sched_group_p
	.globl	add_insn_mem_dependence
	.type	add_insn_mem_dependence, @function
add_insn_mem_dependence:
.LFB12:
	.loc 1 503 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# deps, deps
	movq	%rsi, -32(%rbp)	# insn_list, insn_list
	movq	%rdx, -40(%rbp)	# mem_list, mem_list
	movq	%rcx, -48(%rbp)	# insn, insn
	movq	%r8, -56(%rbp)	# mem, mem
	.loc 1 506 0
	movq	-32(%rbp), %rax	# insn_list, tmp68
	movq	(%rax), %rdx	# *insn_list_2(D), D.13240
	movq	-48(%rbp), %rax	# insn, tmp69
	movq	%rdx, %rsi	# D.13240,
	movq	%rax, %rdi	# tmp69,
	call	alloc_INSN_LIST	#
	movq	%rax, -8(%rbp)	# tmp70, link
	.loc 1 507 0
	movq	-32(%rbp), %rax	# insn_list, tmp71
	movq	-8(%rbp), %rdx	# link, tmp72
	movq	%rdx, (%rax)	# tmp72, *insn_list_2(D)
	.loc 1 509 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.91
	movzbl	96(%rax), %eax	# *current_sched_info.91_6, D.13241
	andl	$2, %eax	#, D.13241
	testb	%al, %al	# D.13241
	je	.L78	#,
	.loc 1 511 0
	movq	-56(%rbp), %rax	# mem, tmp73
	movq	%rax, %rdi	# tmp73,
	call	shallow_copy_rtx	#
	movq	%rax, -56(%rbp)	# tmp74, mem
	.loc 1 512 0
	movq	-56(%rbp), %rax	# mem, tmp75
	movq	8(%rax), %rax	# mem_10->fld[0].rtx, D.13240
	movq	%rax, %rdi	# D.13240,
	call	cselib_subst_to_values	#
	movq	-56(%rbp), %rdx	# mem, tmp76
	movq	%rax, 8(%rdx)	# D.13240, mem_10->fld[0].rtx
.L78:
	.loc 1 514 0
	movq	-40(%rbp), %rax	# mem_list, tmp77
	movq	(%rax), %rdx	# *mem_list_13(D), D.13240
	movq	-56(%rbp), %rax	# mem, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$0, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, -8(%rbp)	# tmp79, link
	.loc 1 515 0
	movq	-40(%rbp), %rax	# mem_list, tmp80
	movq	-8(%rbp), %rdx	# link, tmp81
	movq	%rdx, (%rax)	# tmp81, *mem_list_13(D)
	.loc 1 517 0
	movq	-24(%rbp), %rax	# deps, tmp82
	movl	32(%rax), %eax	# deps_16(D)->pending_lists_length, D.13242
	leal	1(%rax), %edx	#, D.13242
	movq	-24(%rbp), %rax	# deps, tmp83
	movl	%edx, 32(%rax)	# D.13242, deps_16(D)->pending_lists_length
	.loc 1 518 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	add_insn_mem_dependence, .-add_insn_mem_dependence
	.type	flush_pending_lists, @function
flush_pending_lists:
.LFB13:
	.loc 1 529 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# deps, deps
	movq	%rsi, -16(%rbp)	# insn, insn
	movl	%edx, -20(%rbp)	# for_read, for_read
	movl	%ecx, -24(%rbp)	# for_write, for_write
	.loc 1 530 0
	cmpl	$0, -24(%rbp)	#, for_write
	je	.L80	#,
	.loc 1 532 0
	movq	-8(%rbp), %rcx	# deps, D.13243
	movq	-16(%rbp), %rax	# insn, tmp67
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13243,
	movq	%rax, %rdi	# tmp67,
	call	add_dependence_list_and_free	#
	.loc 1 534 0
	movq	-8(%rbp), %rax	# deps, tmp68
	addq	$8, %rax	#, D.13243
	movq	%rax, %rdi	# D.13243,
	call	free_EXPR_LIST_list	#
.L80:
	.loc 1 537 0
	cmpl	$0, -20(%rbp)	#, for_read
	je	.L81	#,
	.loc 1 537 0 is_stmt 0 discriminator 1
	movl	$14, %eax	#, iftmp.92
	jmp	.L82	#
.L81:
	.loc 1 537 0 discriminator 2
	movl	$15, %eax	#, iftmp.92
.L82:
	.loc 1 537 0 discriminator 3
	movq	-8(%rbp), %rdx	# deps, tmp69
	leaq	16(%rdx), %rsi	#, D.13243
	movq	-16(%rbp), %rcx	# insn, tmp70
	movl	%eax, %edx	# iftmp.92,
	movq	%rcx, %rdi	# tmp70,
	call	add_dependence_list_and_free	#
	.loc 1 539 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# deps, tmp71
	addq	$24, %rax	#, D.13243
	movq	%rax, %rdi	# D.13243,
	call	free_EXPR_LIST_list	#
	.loc 1 540 0 discriminator 3
	movq	-8(%rbp), %rax	# deps, tmp72
	movl	$0, 32(%rax)	#, deps_4(D)->pending_lists_length
	.loc 1 542 0 discriminator 3
	cmpl	$0, -20(%rbp)	#, for_read
	je	.L83	#,
	.loc 1 542 0 is_stmt 0 discriminator 1
	movl	$14, %eax	#, iftmp.93
	jmp	.L84	#
.L83:
	.loc 1 542 0 discriminator 2
	movl	$15, %eax	#, iftmp.93
.L84:
	.loc 1 542 0 discriminator 3
	movq	-8(%rbp), %rdx	# deps, tmp73
	leaq	40(%rdx), %rsi	#, D.13243
	movq	-16(%rbp), %rcx	# insn, tmp74
	movl	%eax, %edx	# iftmp.93,
	movq	%rcx, %rdi	# tmp74,
	call	add_dependence_list_and_free	#
	.loc 1 544 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# insn, tmp75
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	alloc_INSN_LIST	#
	movq	-8(%rbp), %rdx	# deps, tmp76
	movq	%rax, 40(%rdx)	# D.13244, deps_4(D)->last_pending_memory_flush
	.loc 1 545 0 discriminator 3
	movq	-8(%rbp), %rax	# deps, tmp77
	movl	$1, 36(%rax)	#, deps_4(D)->pending_flush_length
	.loc 1 546 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	flush_pending_lists, .-flush_pending_lists
	.type	sched_analyze_1, @function
sched_analyze_1:
.LFB14:
	.loc 1 557 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# deps, deps
	movq	%rsi, -80(%rbp)	# x, x
	movq	%rdx, -88(%rbp)	# insn, insn
	.loc 1 559 0
	movq	-80(%rbp), %rax	# x, tmp170
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, tmp171
	movq	%rax, -48(%rbp)	# tmp171, dest
	.loc 1 560 0
	movq	-80(%rbp), %rax	# x, tmp172
	movzwl	(%rax), %eax	# x_19(D)->code, D.13245
	movzwl	%ax, %eax	# D.13245, tmp173
	movl	%eax, -56(%rbp)	# tmp173, code
	.loc 1 562 0
	cmpq	$0, -48(%rbp)	#, dest
	jne	.L86	#,
	.loc 1 563 0
	jmp	.L85	#
.L86:
	.loc 1 565 0
	movq	-48(%rbp), %rax	# dest, tmp174
	movzwl	(%rax), %eax	# dest_20->code, D.13245
	cmpw	$39, %ax	#, D.13245
	jne	.L88	#,
.LBB4:
	.loc 1 569 0
	movq	-48(%rbp), %rax	# dest, tmp175
	movq	8(%rax), %rax	# dest_20->fld[0].rtvec, D.13246
	movl	(%rax), %eax	# _24->num_elem, D.13247
	subl	$1, %eax	#, tmp176
	movl	%eax, -64(%rbp)	# tmp176, i
	jmp	.L89	#
.L91:
	.loc 1 570 0
	movq	-48(%rbp), %rax	# dest, tmp177
	movq	8(%rax), %rax	# dest_20->fld[0].rtvec, D.13246
	movl	-64(%rbp), %edx	# i, tmp179
	movslq	%edx, %rdx	# tmp179, tmp178
	movq	8(%rax,%rdx,8), %rax	# _27->elem, D.13248
	movq	8(%rax), %rax	# _28->fld[0].rtx, D.13248
	testq	%rax, %rax	# D.13248
	je	.L90	#,
	.loc 1 572 0
	movq	-48(%rbp), %rax	# dest, tmp180
	movq	8(%rax), %rax	# dest_20->fld[0].rtvec, D.13246
	movl	-64(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, tmp181
	movq	8(%rax,%rdx,8), %rax	# _30->elem, D.13248
	.loc 1 571 0
	movq	8(%rax), %rax	# _31->fld[0].rtx, D.13248
	movq	%rax, %rdx	# D.13248,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp183
	movq	-72(%rbp), %rax	# deps, tmp184
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp184,
	call	sched_analyze_1	#
.L90:
	.loc 1 569 0
	subl	$1, -64(%rbp)	#, i
.L89:
	.loc 1 569 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jns	.L91	#,
	.loc 1 576 0 is_stmt 1
	movq	-80(%rbp), %rax	# x, tmp185
	movzwl	(%rax), %eax	# x_19(D)->code, D.13245
	cmpw	$47, %ax	#, D.13245
	jne	.L92	#,
	.loc 1 577 0
	movq	-80(%rbp), %rax	# x, tmp186
	movq	16(%rax), %rcx	# x_19(D)->fld[1].rtx, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp187
	movq	-72(%rbp), %rax	# deps, tmp188
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp188,
	call	sched_analyze_2	#
	.loc 1 578 0
	jmp	.L85	#
.L92:
	jmp	.L85	#
.L88:
.LBE4:
	.loc 1 581 0
	jmp	.L93	#
.L96:
	.loc 1 584 0
	movq	-48(%rbp), %rax	# dest, tmp189
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$133, %ax	#, D.13245
	je	.L94	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# dest, tmp190
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$132, %ax	#, D.13245
	jne	.L95	#,
.L94:
	.loc 1 587 0 is_stmt 1
	movq	-48(%rbp), %rax	# dest, tmp191
	movq	16(%rax), %rcx	# dest_1->fld[1].rtx, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp192
	movq	-72(%rbp), %rax	# deps, tmp193
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp193,
	call	sched_analyze_2	#
	.loc 1 588 0
	movq	-48(%rbp), %rax	# dest, tmp194
	movq	24(%rax), %rcx	# dest_1->fld[2].rtx, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp195
	movq	-72(%rbp), %rax	# deps, tmp196
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp196,
	call	sched_analyze_2	#
.L95:
	.loc 1 590 0
	movq	-48(%rbp), %rax	# dest, tmp197
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp198
	movq	%rax, -48(%rbp)	# tmp198, dest
.L93:
	.loc 1 581 0 discriminator 1
	movq	-48(%rbp), %rax	# dest, tmp199
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$64, %ax	#, D.13245
	je	.L96	#,
	.loc 1 581 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp200
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$63, %ax	#, D.13245
	je	.L96	#,
	.loc 1 582 0 is_stmt 1
	movq	-48(%rbp), %rax	# dest, tmp201
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$133, %ax	#, D.13245
	je	.L96	#,
	.loc 1 582 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# dest, tmp202
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$132, %ax	#, D.13245
	je	.L96	#,
	.loc 1 593 0 is_stmt 1
	movq	-48(%rbp), %rax	# dest, tmp203
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$61, %ax	#, D.13245
	jne	.L97	#,
	.loc 1 595 0
	movq	-48(%rbp), %rax	# dest, tmp204
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.13249
	movl	%eax, -52(%rbp)	# D.13249, regno
	.loc 1 599 0
	cmpl	$52, -52(%rbp)	#, regno
	jg	.L98	#,
.LBB5:
	.loc 1 601 0
	cmpl	$7, -52(%rbp)	#, regno
	jle	.L99	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, regno
	jle	.L100	#,
.L99:
	.loc 1 601 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, regno
	jle	.L101	#,
	.loc 1 601 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, regno
	jle	.L100	#,
.L101:
	.loc 1 601 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, regno
	jle	.L102	#,
	.loc 1 601 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, regno
	jle	.L100	#,
.L102:
	.loc 1 601 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, regno
	jle	.L103	#,
	.loc 1 601 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, regno
	jg	.L103	#,
.L100:
	movq	-48(%rbp), %rax	# dest, tmp205
	movzbl	2(%rax), %eax	# dest_1->mode, D.13250
	movzbl	%al, %eax	# D.13250, D.13247
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13251
	cmpl	$5, %eax	#, D.13251
	je	.L104	#,
	.loc 1 601 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp207
	movzbl	2(%rax), %eax	# dest_1->mode, D.13250
	movzbl	%al, %eax	# D.13250, D.13247
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13251
	cmpl	$6, %eax	#, D.13251
	jne	.L105	#,
.L104:
	.loc 1 601 0 discriminator 1
	movl	$2, %eax	#, iftmp.95
	jmp	.L106	#
.L105:
	movl	$1, %eax	#, iftmp.95
.L106:
	.loc 1 601 0 discriminator 3
	jmp	.L107	#
.L103:
	.loc 1 601 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp209
	movzbl	2(%rax), %eax	# dest_1->mode, D.13250
	cmpb	$18, %al	#, D.13250
	jne	.L108	#,
	.loc 1 601 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.98
	andl	$33554432, %eax	#, D.13247
	testl	%eax, %eax	# D.13247
	je	.L109	#,
	movl	$2, %eax	#, iftmp.97
	jmp	.L107	#
.L109:
	.loc 1 601 0 discriminator 2
	movl	$3, %eax	#, iftmp.97
	jmp	.L107	#
.L108:
	movq	-48(%rbp), %rax	# dest, tmp210
	movzbl	2(%rax), %eax	# dest_1->mode, D.13250
	cmpb	$24, %al	#, D.13250
	jne	.L112	#,
	.loc 1 601 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.101
	andl	$33554432, %eax	#, D.13247
	testl	%eax, %eax	# D.13247
	je	.L113	#,
	movl	$4, %eax	#, iftmp.100
	jmp	.L107	#
.L113:
	.loc 1 601 0 discriminator 2
	movl	$6, %eax	#, iftmp.100
	jmp	.L107	#
.L112:
	movq	-48(%rbp), %rax	# dest, tmp211
	movzbl	2(%rax), %eax	# dest_1->mode, D.13250
	movzbl	%al, %eax	# D.13250, D.13247
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13250
	movzbl	%al, %edx	# D.13250, D.13247
	movl	target_flags(%rip), %eax	# target_flags, target_flags.103
	andl	$33554432, %eax	#, D.13247
	testl	%eax, %eax	# D.13247
	je	.L116	#,
	.loc 1 601 0 discriminator 1
	movl	$8, %eax	#, iftmp.102
	jmp	.L117	#
.L116:
	.loc 1 601 0 discriminator 2
	movl	$4, %eax	#, iftmp.102
.L117:
	.loc 1 601 0 discriminator 3
	addl	%edx, %eax	# D.13247, D.13247
	subl	$1, %eax	#, D.13247
	movl	target_flags(%rip), %edx	# target_flags, target_flags.105
	andl	$33554432, %edx	#, D.13247
	testl	%edx, %edx	# D.13247
	je	.L118	#,
	.loc 1 601 0 discriminator 1
	movl	$8, %ebx	#, iftmp.104
	jmp	.L119	#
.L118:
	.loc 1 601 0 discriminator 2
	movl	$4, %ebx	#, iftmp.104
.L119:
	.loc 1 601 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.104
.L107:
	movl	%eax, -60(%rbp)	# iftmp.94, i
	.loc 1 602 0 is_stmt 1 discriminator 3
	cmpl	$47, -56(%rbp)	#, code
	jne	.L120	#,
	.loc 1 604 0
	jmp	.L121	#
.L122:
	.loc 1 605 0
	movl	-60(%rbp), %eax	# i, tmp215
	movl	-52(%rbp), %edx	# regno, tmp216
	addl	%eax, %edx	# tmp215, D.13247
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.106
	movl	%edx, %esi	# D.13247,
	movq	%rax, %rdi	# reg_pending_sets.106,
	call	bitmap_set_bit	#
.L121:
	.loc 1 604 0 discriminator 1
	subl	$1, -60(%rbp)	#, i
	cmpl	$0, -60(%rbp)	#, i
	jns	.L122	#,
.LBE5:
	jmp	.L131	#
.L120:
.LBB6:
	.loc 1 609 0
	jmp	.L124	#
.L125:
	.loc 1 610 0
	movl	-60(%rbp), %eax	# i, tmp217
	movl	-52(%rbp), %edx	# regno, tmp218
	addl	%eax, %edx	# tmp217, D.13247
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.107
	movl	%edx, %esi	# D.13247,
	movq	%rax, %rdi	# reg_pending_clobbers.107,
	call	bitmap_set_bit	#
.L124:
	.loc 1 609 0 discriminator 1
	subl	$1, -60(%rbp)	#, i
	cmpl	$0, -60(%rbp)	#, i
	jns	.L125	#,
.LBE6:
	jmp	.L131	#
.L98:
	.loc 1 616 0
	movq	-72(%rbp), %rax	# deps, tmp219
	movl	68(%rax), %eax	# deps_34(D)->max_reg, D.13247
	cmpl	-52(%rbp), %eax	# regno, D.13247
	jg	.L127	#,
	.loc 1 618 0
	movq	-88(%rbp), %rax	# insn, tmp220
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.13248
	movzwl	(%rax), %eax	# _92->code, D.13245
	cmpw	$48, %ax	#, D.13245
	je	.L131	#,
	.loc 1 619 0
	movq	-88(%rbp), %rax	# insn, tmp221
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.13248
	movzwl	(%rax), %eax	# _94->code, D.13245
	cmpw	$49, %ax	#, D.13245
	je	.L131	#,
	.loc 1 620 0
	movl	$__FUNCTION__.10999, %edx	#,
	movl	$620, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L127:
	.loc 1 624 0
	cmpl	$47, -56(%rbp)	#, code
	jne	.L128	#,
	.loc 1 625 0
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.108
	movl	-52(%rbp), %edx	# regno, tmp222
	movl	%edx, %esi	# tmp222,
	movq	%rax, %rdi	# reg_pending_sets.108,
	call	bitmap_set_bit	#
	jmp	.L129	#
.L128:
	.loc 1 627 0
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.109
	movl	-52(%rbp), %edx	# regno, tmp223
	movl	%edx, %esi	# tmp223,
	movq	%rax, %rdi	# reg_pending_clobbers.109,
	call	bitmap_set_bit	#
.L129:
	.loc 1 632 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.110
	testl	%eax, %eax	# reload_completed.110
	jne	.L130	#,
	.loc 1 633 0
	movq	reg_known_equiv_p(%rip), %rdx	# reg_known_equiv_p, reg_known_equiv_p.111
	movl	-52(%rbp), %eax	# regno, tmp224
	cltq
	addq	%rdx, %rax	# reg_known_equiv_p.111, D.13253
	movzbl	(%rax), %eax	# *_101, D.13254
	testb	%al, %al	# D.13254
	je	.L130	#,
	.loc 1 634 0
	movq	reg_known_value(%rip), %rax	# reg_known_value, reg_known_value.112
	movl	-52(%rbp), %edx	# regno, tmp225
	movslq	%edx, %rdx	# tmp225, D.13255
	salq	$3, %rdx	#, D.13255
	addq	%rdx, %rax	# D.13255, D.13256
	movq	(%rax), %rax	# *_106, D.13248
	movzwl	(%rax), %eax	# _107->code, D.13245
	cmpw	$66, %ax	#, D.13245
	jne	.L130	#,
	.loc 1 635 0
	movq	reg_known_value(%rip), %rax	# reg_known_value, reg_known_value.113
	movl	-52(%rbp), %edx	# regno, tmp226
	movslq	%edx, %rdx	# tmp226, D.13255
	salq	$3, %rdx	#, D.13255
	addq	%rdx, %rax	# D.13255, D.13256
	movq	(%rax), %rax	# *_112, D.13248
	movq	8(%rax), %rcx	# _113->fld[0].rtx, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp227
	movq	-72(%rbp), %rax	# deps, tmp228
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp228,
	call	sched_analyze_2	#
.L130:
	.loc 1 639 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.114
	movl	-52(%rbp), %edx	# regno, tmp230
	movslq	%edx, %rdx	# tmp230, tmp229
	addq	$4, %rdx	#, tmp231
	movq	(%rax,%rdx,8), %rax	# reg_n_info.114_115->data.reg, D.13257
	movl	32(%rax), %eax	# _116->calls_crossed, D.13247
	testl	%eax, %eax	# D.13247
	jne	.L131	#,
	.loc 1 640 0
	movq	-72(%rbp), %rax	# deps, tmp232
	movq	48(%rax), %rcx	# deps_34(D)->last_function_call, D.13248
	movq	-88(%rbp), %rax	# insn, tmp233
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp233,
	call	add_dependence_list	#
	jmp	.L131	#
.L97:
	.loc 1 643 0
	movq	-48(%rbp), %rax	# dest, tmp234
	movzwl	(%rax), %eax	# dest_1->code, D.13245
	cmpw	$66, %ax	#, D.13245
	jne	.L131	#,
.LBB7:
	.loc 1 646 0
	movq	-48(%rbp), %rax	# dest, tmp235
	movq	%rax, -40(%rbp)	# tmp235, t
	.loc 1 648 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.115
	movzbl	96(%rax), %eax	# *current_sched_info.115_121, D.13250
	andl	$2, %eax	#, D.13250
	testb	%al, %al	# D.13250
	je	.L132	#,
	.loc 1 650 0
	movq	-48(%rbp), %rax	# dest, tmp236
	movq	%rax, %rdi	# tmp236,
	call	shallow_copy_rtx	#
	movq	%rax, -40(%rbp)	# tmp237, t
	.loc 1 651 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.117
	andl	$33554432, %eax	#, D.13247
	testl	%eax, %eax	# D.13247
	je	.L133	#,
	.loc 1 651 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.116
	jmp	.L134	#
.L133:
	.loc 1 651 0 discriminator 2
	movl	$4, %eax	#, iftmp.116
.L134:
	.loc 1 651 0 discriminator 3
	movq	-40(%rbp), %rdx	# t, tmp238
	movq	8(%rdx), %rcx	# t_124->fld[0].rtx, D.13248
	movl	$1, %edx	#,
	movl	%eax, %esi	# iftmp.116,
	movq	%rcx, %rdi	# D.13248,
	call	cselib_lookup	#
	.loc 1 652 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# t, tmp239
	movq	8(%rax), %rax	# t_124->fld[0].rtx, D.13248
	movq	%rax, %rdi	# D.13248,
	call	cselib_subst_to_values	#
	movq	-40(%rbp), %rdx	# t, tmp240
	movq	%rax, 8(%rdx)	# D.13248, t_124->fld[0].rtx
.L132:
	.loc 1 655 0
	movq	-72(%rbp), %rax	# deps, tmp241
	movl	32(%rax), %edx	# deps_34(D)->pending_lists_length, D.13247
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.118
	addq	$72, %rax	#, D.13258
	movl	8(%rax), %eax	# _134->value, D.13247
	cmpl	%eax, %edx	# D.13247, D.13247
	jle	.L135	#,
	.loc 1 662 0
	movq	-88(%rbp), %rsi	# insn, tmp242
	movq	-72(%rbp), %rax	# deps, tmp243
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp243,
	call	flush_pending_lists	#
	jmp	.L136	#
.L135:
.LBB8:
	.loc 1 668 0
	movq	-72(%rbp), %rax	# deps, tmp244
	movq	(%rax), %rax	# deps_34(D)->pending_read_insns, tmp245
	movq	%rax, -32(%rbp)	# tmp245, pending
	.loc 1 669 0
	movq	-72(%rbp), %rax	# deps, tmp246
	movq	8(%rax), %rax	# deps_34(D)->pending_read_mems, tmp247
	movq	%rax, -24(%rbp)	# tmp247, pending_mem
	.loc 1 670 0
	jmp	.L137	#
.L139:
	.loc 1 672 0
	movq	-24(%rbp), %rax	# pending_mem, tmp248
	movq	8(%rax), %rax	# pending_mem_8->fld[0].rtx, D.13248
	movq	-40(%rbp), %rdx	# t, tmp249
	movq	%rdx, %rsi	# tmp249,
	movq	%rax, %rdi	# D.13248,
	call	anti_dependence	#
	testl	%eax, %eax	# D.13247
	je	.L138	#,
	.loc 1 673 0
	movq	-32(%rbp), %rax	# pending, tmp250
	movq	8(%rax), %rcx	# pending_6->fld[0].rtx, D.13248
	movq	-88(%rbp), %rax	# insn, tmp251
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp251,
	call	add_dependence	#
.L138:
	.loc 1 675 0
	movq	-32(%rbp), %rax	# pending, tmp252
	movq	16(%rax), %rax	# pending_6->fld[1].rtx, tmp253
	movq	%rax, -32(%rbp)	# tmp253, pending
	.loc 1 676 0
	movq	-24(%rbp), %rax	# pending_mem, tmp254
	movq	16(%rax), %rax	# pending_mem_8->fld[1].rtx, tmp255
	movq	%rax, -24(%rbp)	# tmp255, pending_mem
.L137:
	.loc 1 670 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, pending
	jne	.L139	#,
	.loc 1 679 0
	movq	-72(%rbp), %rax	# deps, tmp256
	movq	16(%rax), %rax	# deps_34(D)->pending_write_insns, tmp257
	movq	%rax, -32(%rbp)	# tmp257, pending
	.loc 1 680 0
	movq	-72(%rbp), %rax	# deps, tmp258
	movq	24(%rax), %rax	# deps_34(D)->pending_write_mems, tmp259
	movq	%rax, -24(%rbp)	# tmp259, pending_mem
	.loc 1 681 0
	jmp	.L140	#
.L142:
	.loc 1 683 0
	movq	-24(%rbp), %rax	# pending_mem, tmp260
	movq	8(%rax), %rax	# pending_mem_9->fld[0].rtx, D.13248
	movq	-40(%rbp), %rdx	# t, tmp261
	movq	%rdx, %rsi	# tmp261,
	movq	%rax, %rdi	# D.13248,
	call	output_dependence	#
	testl	%eax, %eax	# D.13247
	je	.L141	#,
	.loc 1 684 0
	movq	-32(%rbp), %rax	# pending, tmp262
	movq	8(%rax), %rcx	# pending_7->fld[0].rtx, D.13248
	movq	-88(%rbp), %rax	# insn, tmp263
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp263,
	call	add_dependence	#
.L141:
	.loc 1 686 0
	movq	-32(%rbp), %rax	# pending, tmp264
	movq	16(%rax), %rax	# pending_7->fld[1].rtx, tmp265
	movq	%rax, -32(%rbp)	# tmp265, pending
	.loc 1 687 0
	movq	-24(%rbp), %rax	# pending_mem, tmp266
	movq	16(%rax), %rax	# pending_mem_9->fld[1].rtx, tmp267
	movq	%rax, -24(%rbp)	# tmp267, pending_mem
.L140:
	.loc 1 681 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, pending
	jne	.L142	#,
	.loc 1 690 0
	movq	-72(%rbp), %rax	# deps, tmp268
	movq	40(%rax), %rcx	# deps_34(D)->last_pending_memory_flush, D.13248
	movq	-88(%rbp), %rax	# insn, tmp269
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp269,
	call	add_dependence_list	#
	.loc 1 693 0
	movq	-72(%rbp), %rax	# deps, tmp270
	leaq	24(%rax), %rdi	#, D.13256
	movq	-72(%rbp), %rax	# deps, tmp271
	leaq	16(%rax), %rsi	#, D.13256
	movq	-48(%rbp), %rcx	# dest, tmp272
	movq	-88(%rbp), %rdx	# insn, tmp273
	movq	-72(%rbp), %rax	# deps, tmp274
	movq	%rcx, %r8	# tmp272,
	movq	%rdx, %rcx	# tmp273,
	movq	%rdi, %rdx	# D.13256,
	movq	%rax, %rdi	# tmp274,
	call	add_insn_mem_dependence	#
.L136:
.LBE8:
	.loc 1 696 0
	movq	-48(%rbp), %rax	# dest, tmp275
	movq	8(%rax), %rcx	# dest_1->fld[0].rtx, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp276
	movq	-72(%rbp), %rax	# deps, tmp277
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp277,
	call	sched_analyze_2	#
.L131:
.LBE7:
	.loc 1 700 0
	movq	-80(%rbp), %rax	# x, tmp278
	movzwl	(%rax), %eax	# x_19(D)->code, D.13245
	cmpw	$47, %ax	#, D.13245
	jne	.L85	#,
	.loc 1 701 0
	movq	-80(%rbp), %rax	# x, tmp279
	movq	16(%rax), %rcx	# x_19(D)->fld[1].rtx, D.13248
	movq	-88(%rbp), %rdx	# insn, tmp280
	movq	-72(%rbp), %rax	# deps, tmp281
	movq	%rcx, %rsi	# D.13248,
	movq	%rax, %rdi	# tmp281,
	call	sched_analyze_2	#
.L85:
	.loc 1 702 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sched_analyze_1, .-sched_analyze_1
	.type	sched_analyze_2, @function
sched_analyze_2:
.LFB15:
	.loc 1 711 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# deps, deps
	movq	%rsi, -96(%rbp)	# x, x
	movq	%rdx, -104(%rbp)	# insn, insn
	.loc 1 717 0
	cmpq	$0, -96(%rbp)	#, x
	jne	.L144	#,
	.loc 1 718 0
	jmp	.L143	#
.L144:
	.loc 1 720 0
	movq	-96(%rbp), %rax	# x, tmp167
	movzwl	(%rax), %eax	# x_20(D)->code, D.13259
	movzwl	%ax, %eax	# D.13259, tmp168
	movl	%eax, -64(%rbp)	# tmp168, code
	.loc 1 722 0
	movl	-64(%rbp), %eax	# code, tmp170
	subl	$40, %eax	#, tmp169
	cmpl	$61, %eax	#, tmp169
	ja	.L207	#,
	movl	%eax, %eax	# tmp169, tmp171
	movq	.L148(,%rax,8), %rax	#, tmp172
	jmp	*%rax	# tmp172
	.section	.rodata
	.align 8
	.align 4
.L148:
	.quad	.L147
	.quad	.L147
	.quad	.L207
	.quad	.L147
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L149
	.quad	.L207
	.quad	.L208
	.quad	.L208
	.quad	.L208
	.quad	.L207
	.quad	.L208
	.quad	.L207
	.quad	.L207
	.quad	.L151
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L152
	.quad	.L208
	.quad	.L208
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L207
	.quad	.L153
	.quad	.L153
	.quad	.L153
	.quad	.L153
	.quad	.L154
	.quad	.L154
	.text
.L151:
.LBB9:
	.loc 1 744 0
	movq	-96(%rbp), %rax	# x, tmp173
	movl	8(%rax), %eax	# x_20(D)->fld[0].rtuint, D.13260
	movl	%eax, -60(%rbp)	# D.13260, regno
	.loc 1 745 0
	cmpl	$52, -60(%rbp)	#, regno
	jg	.L155	#,
.LBB10:
	.loc 1 747 0
	cmpl	$7, -60(%rbp)	#, regno
	jle	.L156	#,
	.loc 1 747 0 is_stmt 0 discriminator 1
	cmpl	$15, -60(%rbp)	#, regno
	jle	.L157	#,
.L156:
	.loc 1 747 0 discriminator 2
	cmpl	$20, -60(%rbp)	#, regno
	jle	.L158	#,
	.loc 1 747 0 discriminator 1
	cmpl	$28, -60(%rbp)	#, regno
	jle	.L157	#,
.L158:
	.loc 1 747 0 discriminator 2
	cmpl	$44, -60(%rbp)	#, regno
	jle	.L159	#,
	.loc 1 747 0 discriminator 1
	cmpl	$52, -60(%rbp)	#, regno
	jle	.L157	#,
.L159:
	.loc 1 747 0 discriminator 2
	cmpl	$28, -60(%rbp)	#, regno
	jle	.L160	#,
	.loc 1 747 0 discriminator 1
	cmpl	$36, -60(%rbp)	#, regno
	jg	.L160	#,
.L157:
	movq	-96(%rbp), %rax	# x, tmp174
	movzbl	2(%rax), %eax	# x_20(D)->mode, D.13261
	movzbl	%al, %eax	# D.13261, D.13262
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13263
	cmpl	$5, %eax	#, D.13263
	je	.L161	#,
	.loc 1 747 0 discriminator 2
	movq	-96(%rbp), %rax	# x, tmp176
	movzbl	2(%rax), %eax	# x_20(D)->mode, D.13261
	movzbl	%al, %eax	# D.13261, D.13262
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13263
	cmpl	$6, %eax	#, D.13263
	jne	.L162	#,
.L161:
	.loc 1 747 0 discriminator 1
	movl	$2, %eax	#, iftmp.120
	jmp	.L163	#
.L162:
	movl	$1, %eax	#, iftmp.120
.L163:
	.loc 1 747 0 discriminator 3
	jmp	.L164	#
.L160:
	.loc 1 747 0 discriminator 2
	movq	-96(%rbp), %rax	# x, tmp178
	movzbl	2(%rax), %eax	# x_20(D)->mode, D.13261
	cmpb	$18, %al	#, D.13261
	jne	.L165	#,
	.loc 1 747 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.123
	andl	$33554432, %eax	#, D.13262
	testl	%eax, %eax	# D.13262
	je	.L166	#,
	movl	$2, %eax	#, iftmp.122
	jmp	.L164	#
.L166:
	.loc 1 747 0 discriminator 2
	movl	$3, %eax	#, iftmp.122
	jmp	.L164	#
.L165:
	movq	-96(%rbp), %rax	# x, tmp179
	movzbl	2(%rax), %eax	# x_20(D)->mode, D.13261
	cmpb	$24, %al	#, D.13261
	jne	.L169	#,
	.loc 1 747 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.126
	andl	$33554432, %eax	#, D.13262
	testl	%eax, %eax	# D.13262
	je	.L170	#,
	movl	$4, %eax	#, iftmp.125
	jmp	.L164	#
.L170:
	.loc 1 747 0 discriminator 2
	movl	$6, %eax	#, iftmp.125
	jmp	.L164	#
.L169:
	movq	-96(%rbp), %rax	# x, tmp180
	movzbl	2(%rax), %eax	# x_20(D)->mode, D.13261
	movzbl	%al, %eax	# D.13261, D.13262
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13261
	movzbl	%al, %edx	# D.13261, D.13262
	movl	target_flags(%rip), %eax	# target_flags, target_flags.128
	andl	$33554432, %eax	#, D.13262
	testl	%eax, %eax	# D.13262
	je	.L173	#,
	.loc 1 747 0 discriminator 1
	movl	$8, %eax	#, iftmp.127
	jmp	.L174	#
.L173:
	.loc 1 747 0 discriminator 2
	movl	$4, %eax	#, iftmp.127
.L174:
	.loc 1 747 0 discriminator 3
	addl	%edx, %eax	# D.13262, D.13262
	subl	$1, %eax	#, D.13262
	movl	target_flags(%rip), %edx	# target_flags, target_flags.130
	andl	$33554432, %edx	#, D.13262
	testl	%edx, %edx	# D.13262
	je	.L175	#,
	.loc 1 747 0 discriminator 1
	movl	$8, %ebx	#, iftmp.129
	jmp	.L176	#
.L175:
	.loc 1 747 0 discriminator 2
	movl	$4, %ebx	#, iftmp.129
.L176:
	.loc 1 747 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.129
.L164:
	movl	%eax, -68(%rbp)	# iftmp.119, i
	.loc 1 748 0 is_stmt 1 discriminator 3
	jmp	.L177	#
.L178:
	.loc 1 749 0
	movl	-68(%rbp), %eax	# i, tmp184
	movl	-60(%rbp), %edx	# regno, tmp185
	addl	%eax, %edx	# tmp184, D.13262
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.131
	movl	%edx, %esi	# D.13262,
	movq	%rax, %rdi	# reg_pending_uses.131,
	call	bitmap_set_bit	#
.L177:
	.loc 1 748 0 discriminator 1
	subl	$1, -68(%rbp)	#, i
	cmpl	$0, -68(%rbp)	#, i
	jns	.L178	#,
.LBE10:
	jmp	.L179	#
.L155:
	.loc 1 754 0
	movq	-88(%rbp), %rax	# deps, tmp186
	movl	68(%rax), %eax	# deps_67(D)->max_reg, D.13262
	cmpl	-60(%rbp), %eax	# regno, D.13262
	jg	.L180	#,
	.loc 1 756 0
	movq	-104(%rbp), %rax	# insn, tmp187
	movq	32(%rax), %rax	# insn_69(D)->fld[3].rtx, D.13264
	movzwl	(%rax), %eax	# _70->code, D.13259
	cmpw	$48, %ax	#, D.13259
	je	.L179	#,
	.loc 1 757 0
	movq	-104(%rbp), %rax	# insn, tmp188
	movq	32(%rax), %rax	# insn_69(D)->fld[3].rtx, D.13264
	movzwl	(%rax), %eax	# _72->code, D.13259
	cmpw	$49, %ax	#, D.13259
	je	.L179	#,
	.loc 1 758 0
	movl	$__FUNCTION__.11030, %edx	#,
	movl	$758, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L180:
	.loc 1 762 0
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.132
	movl	-60(%rbp), %edx	# regno, tmp189
	movl	%edx, %esi	# tmp189,
	movq	%rax, %rdi	# reg_pending_uses.132,
	call	bitmap_set_bit	#
	.loc 1 767 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.133
	testl	%eax, %eax	# reload_completed.133
	jne	.L181	#,
	.loc 1 768 0
	movq	reg_known_equiv_p(%rip), %rdx	# reg_known_equiv_p, reg_known_equiv_p.134
	movl	-60(%rbp), %eax	# regno, tmp190
	cltq
	addq	%rdx, %rax	# reg_known_equiv_p.134, D.13266
	movzbl	(%rax), %eax	# *_78, D.13267
	testb	%al, %al	# D.13267
	je	.L181	#,
	.loc 1 769 0
	movq	reg_known_value(%rip), %rax	# reg_known_value, reg_known_value.135
	movl	-60(%rbp), %edx	# regno, tmp191
	movslq	%edx, %rdx	# tmp191, D.13268
	salq	$3, %rdx	#, D.13268
	addq	%rdx, %rax	# D.13268, D.13269
	movq	(%rax), %rax	# *_83, D.13264
	movzwl	(%rax), %eax	# _84->code, D.13259
	cmpw	$66, %ax	#, D.13259
	jne	.L181	#,
	.loc 1 770 0
	movq	reg_known_value(%rip), %rax	# reg_known_value, reg_known_value.136
	movl	-60(%rbp), %edx	# regno, tmp192
	movslq	%edx, %rdx	# tmp192, D.13268
	salq	$3, %rdx	#, D.13268
	addq	%rdx, %rax	# D.13268, D.13269
	movq	(%rax), %rax	# *_89, D.13264
	movq	8(%rax), %rcx	# _90->fld[0].rtx, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp193
	movq	-88(%rbp), %rax	# deps, tmp194
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp194,
	call	sched_analyze_2	#
.L181:
	.loc 1 775 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.137
	movl	-60(%rbp), %edx	# regno, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	addq	$4, %rdx	#, tmp197
	movq	(%rax,%rdx,8), %rax	# reg_n_info.137_92->data.reg, D.13270
	movl	32(%rax), %eax	# _93->calls_crossed, D.13262
	testl	%eax, %eax	# D.13262
	jne	.L179	#,
	.loc 1 777 0
	movq	-88(%rbp), %rax	# deps, tmp198
	movq	56(%rax), %rdx	# deps_67(D)->sched_before_next_call, D.13264
	movq	-104(%rbp), %rax	# insn, tmp199
	movq	%rdx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp199,
	call	alloc_INSN_LIST	#
	movq	-88(%rbp), %rdx	# deps, tmp200
	movq	%rax, 56(%rdx)	# D.13264, deps_67(D)->sched_before_next_call
	.loc 1 779 0
	jmp	.L143	#
.L179:
	jmp	.L143	#
.L152:
.LBE9:
.LBB11:
	.loc 1 787 0
	movq	-96(%rbp), %rax	# x, tmp201
	movq	%rax, -32(%rbp)	# tmp201, t
	.loc 1 789 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.138
	movzbl	96(%rax), %eax	# *current_sched_info.138_98, D.13261
	andl	$2, %eax	#, D.13261
	testb	%al, %al	# D.13261
	je	.L182	#,
	.loc 1 791 0
	movq	-32(%rbp), %rax	# t, tmp202
	movq	%rax, %rdi	# tmp202,
	call	shallow_copy_rtx	#
	movq	%rax, -32(%rbp)	# tmp203, t
	.loc 1 792 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.140
	andl	$33554432, %eax	#, D.13262
	testl	%eax, %eax	# D.13262
	je	.L183	#,
	.loc 1 792 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.139
	jmp	.L184	#
.L183:
	.loc 1 792 0 discriminator 2
	movl	$4, %eax	#, iftmp.139
.L184:
	.loc 1 792 0 discriminator 3
	movq	-32(%rbp), %rdx	# t, tmp204
	movq	8(%rdx), %rcx	# t_101->fld[0].rtx, D.13264
	movl	$1, %edx	#,
	movl	%eax, %esi	# iftmp.139,
	movq	%rcx, %rdi	# D.13264,
	call	cselib_lookup	#
	.loc 1 793 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# t, tmp205
	movq	8(%rax), %rax	# t_101->fld[0].rtx, D.13264
	movq	%rax, %rdi	# D.13264,
	call	cselib_subst_to_values	#
	movq	-32(%rbp), %rdx	# t, tmp206
	movq	%rax, 8(%rdx)	# D.13264, t_101->fld[0].rtx
.L182:
	.loc 1 795 0
	movq	-88(%rbp), %rax	# deps, tmp207
	movq	(%rax), %rax	# deps_67(D)->pending_read_insns, tmp208
	movq	%rax, -48(%rbp)	# tmp208, pending
	.loc 1 796 0
	movq	-88(%rbp), %rax	# deps, tmp209
	movq	8(%rax), %rax	# deps_67(D)->pending_read_mems, tmp210
	movq	%rax, -40(%rbp)	# tmp210, pending_mem
	.loc 1 797 0
	jmp	.L185	#
.L187:
	.loc 1 799 0
	movq	-40(%rbp), %rax	# pending_mem, tmp211
	movq	8(%rax), %rax	# pending_mem_8->fld[0].rtx, D.13264
	movq	-32(%rbp), %rdx	# t, tmp212
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# D.13264,
	call	read_dependence	#
	testl	%eax, %eax	# D.13262
	je	.L186	#,
	.loc 1 800 0
	movq	-48(%rbp), %rax	# pending, tmp213
	movq	8(%rax), %rcx	# pending_6->fld[0].rtx, D.13264
	movq	-104(%rbp), %rax	# insn, tmp214
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp214,
	call	add_dependence	#
.L186:
	.loc 1 802 0
	movq	-48(%rbp), %rax	# pending, tmp215
	movq	16(%rax), %rax	# pending_6->fld[1].rtx, tmp216
	movq	%rax, -48(%rbp)	# tmp216, pending
	.loc 1 803 0
	movq	-40(%rbp), %rax	# pending_mem, tmp217
	movq	16(%rax), %rax	# pending_mem_8->fld[1].rtx, tmp218
	movq	%rax, -40(%rbp)	# tmp218, pending_mem
.L185:
	.loc 1 797 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, pending
	jne	.L187	#,
	.loc 1 806 0
	movq	-88(%rbp), %rax	# deps, tmp219
	movq	16(%rax), %rax	# deps_67(D)->pending_write_insns, tmp220
	movq	%rax, -48(%rbp)	# tmp220, pending
	.loc 1 807 0
	movq	-88(%rbp), %rax	# deps, tmp221
	movq	24(%rax), %rax	# deps_67(D)->pending_write_mems, tmp222
	movq	%rax, -40(%rbp)	# tmp222, pending_mem
	.loc 1 808 0
	jmp	.L188	#
.L190:
	.loc 1 810 0
	movq	-40(%rbp), %rax	# pending_mem, tmp223
	movq	8(%rax), %rax	# pending_mem_9->fld[0].rtx, D.13264
	movq	-32(%rbp), %rdx	# t, tmp224
	movl	$rtx_varies_p, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.13264,
	call	true_dependence	#
	testl	%eax, %eax	# D.13262
	je	.L189	#,
	.loc 1 812 0
	movq	-48(%rbp), %rax	# pending, tmp225
	movq	8(%rax), %rcx	# pending_7->fld[0].rtx, D.13264
	movq	-104(%rbp), %rax	# insn, tmp226
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp226,
	call	add_dependence	#
.L189:
	.loc 1 814 0
	movq	-48(%rbp), %rax	# pending, tmp227
	movq	16(%rax), %rax	# pending_7->fld[1].rtx, tmp228
	movq	%rax, -48(%rbp)	# tmp228, pending
	.loc 1 815 0
	movq	-40(%rbp), %rax	# pending_mem, tmp229
	movq	16(%rax), %rax	# pending_mem_9->fld[1].rtx, tmp230
	movq	%rax, -40(%rbp)	# tmp230, pending_mem
.L188:
	.loc 1 808 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, pending
	jne	.L190	#,
	.loc 1 818 0
	movq	-88(%rbp), %rax	# deps, tmp231
	movq	40(%rax), %rax	# deps_67(D)->last_pending_memory_flush, tmp232
	movq	%rax, -56(%rbp)	# tmp232, u
	jmp	.L191	#
.L194:
	.loc 1 819 0
	movq	-56(%rbp), %rax	# u, tmp233
	movq	8(%rax), %rax	# u_5->fld[0].rtx, D.13264
	movzwl	(%rax), %eax	# _124->code, D.13259
	cmpw	$33, %ax	#, D.13259
	jne	.L192	#,
	.loc 1 820 0
	movq	-96(%rbp), %rax	# x, tmp234
	movq	%rax, %rdi	# tmp234,
	call	deps_may_trap_p	#
	testl	%eax, %eax	# D.13262
	je	.L193	#,
.L192:
	.loc 1 821 0
	movq	-56(%rbp), %rax	# u, tmp235
	movq	8(%rax), %rcx	# u_5->fld[0].rtx, D.13264
	movq	-104(%rbp), %rax	# insn, tmp236
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp236,
	call	add_dependence	#
.L193:
	.loc 1 818 0
	movq	-56(%rbp), %rax	# u, tmp237
	movq	16(%rax), %rax	# u_5->fld[1].rtx, tmp238
	movq	%rax, -56(%rbp)	# tmp238, u
.L191:
	.loc 1 818 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, u
	jne	.L194	#,
	.loc 1 825 0 is_stmt 1
	movq	-88(%rbp), %rax	# deps, tmp239
	leaq	8(%rax), %rdi	#, D.13269
	movq	-88(%rbp), %rsi	# deps, D.13269
	movq	-96(%rbp), %rcx	# x, tmp240
	movq	-104(%rbp), %rdx	# insn, tmp241
	movq	-88(%rbp), %rax	# deps, tmp242
	movq	%rcx, %r8	# tmp240,
	movq	%rdx, %rcx	# tmp241,
	movq	%rdi, %rdx	# D.13269,
	movq	%rax, %rdi	# tmp242,
	call	add_insn_mem_dependence	#
	.loc 1 829 0
	movq	-96(%rbp), %rax	# x, tmp243
	movq	8(%rax), %rcx	# x_20(D)->fld[0].rtx, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp244
	movq	-88(%rbp), %rax	# deps, tmp245
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp245,
	call	sched_analyze_2	#
	.loc 1 830 0
	jmp	.L143	#
.L149:
.LBE11:
	.loc 1 835 0
	movq	-104(%rbp), %rsi	# insn, tmp246
	movq	-88(%rbp), %rax	# deps, tmp247
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp247,
	call	flush_pending_lists	#
	.loc 1 836 0
	jmp	.L195	#
.L147:
	.loc 1 849 0
	cmpl	$41, -64(%rbp)	#, code
	jne	.L196	#,
	.loc 1 849 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# x, tmp248
	movzbl	3(%rax), %eax	# *x_20(D), D.13261
	andl	$8, %eax	#, D.13261
	testb	%al, %al	# D.13261
	je	.L197	#,
.L196:
	.loc 1 850 0 is_stmt 1
	movb	$1, reg_pending_barrier(%rip)	#, reg_pending_barrier
.L197:
	.loc 1 857 0
	cmpl	$41, -64(%rbp)	#, code
	jne	.L198	#,
	.loc 1 859 0
	movl	$0, -72(%rbp)	#, j
	jmp	.L199	#
.L200:
	.loc 1 860 0 discriminator 2
	movq	-96(%rbp), %rax	# x, tmp249
	movq	32(%rax), %rax	# x_20(D)->fld[3].rtvec, D.13271
	movl	-72(%rbp), %edx	# j, tmp251
	movslq	%edx, %rdx	# tmp251, tmp250
	movq	8(%rax,%rdx,8), %rcx	# _137->elem, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp252
	movq	-88(%rbp), %rax	# deps, tmp253
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp253,
	call	sched_analyze_2	#
	.loc 1 859 0 discriminator 2
	addl	$1, -72(%rbp)	#, j
.L199:
	.loc 1 859 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# x, tmp254
	movq	32(%rax), %rax	# x_20(D)->fld[3].rtvec, D.13271
	movl	(%rax), %eax	# _135->num_elem, D.13262
	cmpl	-72(%rbp), %eax	# j, D.13262
	jg	.L200	#,
	.loc 1 861 0 is_stmt 1
	jmp	.L143	#
.L198:
	.loc 1 863 0
	jmp	.L195	#
.L153:
	.loc 1 876 0
	movq	-96(%rbp), %rax	# x, tmp255
	movq	8(%rax), %rcx	# x_20(D)->fld[0].rtx, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp256
	movq	-88(%rbp), %rax	# deps, tmp257
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp257,
	call	sched_analyze_2	#
	.loc 1 877 0
	movq	-104(%rbp), %rdx	# insn, tmp258
	movq	-96(%rbp), %rcx	# x, tmp259
	movq	-88(%rbp), %rax	# deps, tmp260
	movq	%rcx, %rsi	# tmp259,
	movq	%rax, %rdi	# tmp260,
	call	sched_analyze_1	#
	.loc 1 878 0
	jmp	.L143	#
.L154:
	.loc 1 883 0
	movq	-96(%rbp), %rax	# x, tmp261
	movq	8(%rax), %rcx	# x_20(D)->fld[0].rtx, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp262
	movq	-88(%rbp), %rax	# deps, tmp263
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp263,
	call	sched_analyze_2	#
	.loc 1 884 0
	movq	-96(%rbp), %rax	# x, tmp264
	movq	16(%rax), %rcx	# x_20(D)->fld[1].rtx, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp265
	movq	-88(%rbp), %rax	# deps, tmp266
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp266,
	call	sched_analyze_2	#
	.loc 1 885 0
	movq	-104(%rbp), %rdx	# insn, tmp267
	movq	-96(%rbp), %rcx	# x, tmp268
	movq	-88(%rbp), %rax	# deps, tmp269
	movq	%rcx, %rsi	# tmp268,
	movq	%rax, %rdi	# tmp269,
	call	sched_analyze_1	#
	.loc 1 886 0
	jmp	.L143	#
.L207:
	.loc 1 889 0
	nop
.L195:
	.loc 1 893 0
	movl	-64(%rbp), %eax	# code, code.141
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp271
	movq	%rax, -24(%rbp)	# tmp271, fmt
	.loc 1 894 0
	movl	-64(%rbp), %eax	# code, code.142
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13261
	movzbl	%al, %eax	# D.13261, D.13262
	subl	$1, %eax	#, tmp273
	movl	%eax, -76(%rbp)	# tmp273, i
	jmp	.L201	#
.L206:
	.loc 1 896 0
	movl	-76(%rbp), %eax	# i, tmp274
	movslq	%eax, %rdx	# tmp274, D.13265
	movq	-24(%rbp), %rax	# fmt, tmp275
	addq	%rdx, %rax	# D.13265, D.13272
	movzbl	(%rax), %eax	# *_150, D.13267
	cmpb	$101, %al	#, D.13267
	jne	.L202	#,
	.loc 1 897 0
	movq	-96(%rbp), %rax	# x, tmp276
	movl	-76(%rbp), %edx	# i, tmp278
	movslq	%edx, %rdx	# tmp278, tmp277
	movq	8(%rax,%rdx,8), %rcx	# x_20(D)->fld[i_1].rtx, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp279
	movq	-88(%rbp), %rax	# deps, tmp280
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp280,
	call	sched_analyze_2	#
	jmp	.L203	#
.L202:
	.loc 1 898 0
	movl	-76(%rbp), %eax	# i, tmp281
	movslq	%eax, %rdx	# tmp281, D.13265
	movq	-24(%rbp), %rax	# fmt, tmp282
	addq	%rdx, %rax	# D.13265, D.13272
	movzbl	(%rax), %eax	# *_154, D.13267
	cmpb	$69, %al	#, D.13267
	jne	.L203	#,
	.loc 1 899 0
	movl	$0, -72(%rbp)	#, j
	jmp	.L204	#
.L205:
	.loc 1 900 0 discriminator 2
	movq	-96(%rbp), %rax	# x, tmp283
	movl	-76(%rbp), %edx	# i, tmp285
	movslq	%edx, %rdx	# tmp285, tmp284
	movq	8(%rax,%rdx,8), %rax	# x_20(D)->fld[i_1].rtvec, D.13271
	movl	-72(%rbp), %edx	# j, tmp287
	movslq	%edx, %rdx	# tmp287, tmp286
	movq	8(%rax,%rdx,8), %rcx	# _159->elem, D.13264
	movq	-104(%rbp), %rdx	# insn, tmp288
	movq	-88(%rbp), %rax	# deps, tmp289
	movq	%rcx, %rsi	# D.13264,
	movq	%rax, %rdi	# tmp289,
	call	sched_analyze_2	#
	.loc 1 899 0 discriminator 2
	addl	$1, -72(%rbp)	#, j
.L204:
	.loc 1 899 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# x, tmp290
	movl	-76(%rbp), %edx	# i, tmp292
	movslq	%edx, %rdx	# tmp292, tmp291
	movq	8(%rax,%rdx,8), %rax	# x_20(D)->fld[i_1].rtvec, D.13271
	movl	(%rax), %eax	# _157->num_elem, D.13262
	cmpl	-72(%rbp), %eax	# j, D.13262
	jg	.L205	#,
.L203:
	.loc 1 894 0 is_stmt 1
	subl	$1, -76(%rbp)	#, i
.L201:
	.loc 1 894 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, i
	jns	.L206	#,
	jmp	.L143	#
.L208:
	.loc 1 733 0 is_stmt 1
	nop
.L143:
	.loc 1 902 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sched_analyze_2, .-sched_analyze_2
	.type	sched_analyze_insn, @function
sched_analyze_insn:
.LFB16:
	.loc 1 911 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$512, %rsp	#,
	movq	%rdi, -488(%rbp)	# deps, deps
	movq	%rsi, -496(%rbp)	# x, x
	movq	%rdx, -504(%rbp)	# insn, insn
	movq	%rcx, -512(%rbp)	# loop_notes, loop_notes
	.loc 1 912 0
	movq	-496(%rbp), %rax	# x, tmp304
	movzwl	(%rax), %eax	# x_105(D)->code, D.13273
	movzwl	%ax, %eax	# D.13273, tmp305
	movl	%eax, -476(%rbp)	# tmp305, code
	.loc 1 916 0
	cmpl	$38, -476(%rbp)	#, code
	jne	.L210	#,
	.loc 1 918 0
	movq	-496(%rbp), %rax	# x, tmp306
	movq	8(%rax), %rcx	# x_105(D)->fld[0].rtx, D.13274
	movq	-504(%rbp), %rdx	# insn, tmp307
	movq	-488(%rbp), %rax	# deps, tmp308
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp308,
	call	sched_analyze_2	#
	.loc 1 922 0
	movq	-496(%rbp), %rax	# x, tmp309
	movq	16(%rax), %rax	# x_105(D)->fld[1].rtx, tmp310
	movq	%rax, -496(%rbp)	# tmp310, x
	.loc 1 923 0
	movq	-496(%rbp), %rax	# x, tmp311
	movzwl	(%rax), %eax	# x_111->code, D.13273
	movzwl	%ax, %eax	# D.13273, tmp312
	movl	%eax, -476(%rbp)	# tmp312, code
.L210:
	.loc 1 925 0
	cmpl	$47, -476(%rbp)	#, code
	je	.L211	#,
	.loc 1 925 0 is_stmt 0 discriminator 1
	cmpl	$49, -476(%rbp)	#, code
	jne	.L212	#,
.L211:
	.loc 1 926 0 is_stmt 1
	movq	-504(%rbp), %rdx	# insn, tmp313
	movq	-496(%rbp), %rcx	# x, tmp314
	movq	-488(%rbp), %rax	# deps, tmp315
	movq	%rcx, %rsi	# tmp314,
	movq	%rax, %rdi	# tmp315,
	call	sched_analyze_1	#
	jmp	.L213	#
.L212:
	.loc 1 927 0
	cmpl	$39, -476(%rbp)	#, code
	jne	.L214	#,
.LBB12:
	.loc 1 930 0
	movq	-496(%rbp), %rax	# x, tmp316
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13275
	movl	(%rax), %eax	# _114->num_elem, D.13276
	subl	$1, %eax	#, tmp317
	movl	%eax, -468(%rbp)	# tmp317, i
	jmp	.L215	#
.L220:
.LBB13:
	.loc 1 932 0
	movq	-496(%rbp), %rax	# x, tmp318
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13275
	movl	-468(%rbp), %edx	# i, tmp320
	movslq	%edx, %rdx	# tmp320, tmp319
	movq	8(%rax,%rdx,8), %rax	# _117->elem, tmp321
	movq	%rax, -352(%rbp)	# tmp321, sub
	.loc 1 933 0
	movq	-352(%rbp), %rax	# sub, tmp322
	movzwl	(%rax), %eax	# sub_118->code, D.13273
	movzwl	%ax, %eax	# D.13273, tmp323
	movl	%eax, -476(%rbp)	# tmp323, code
	.loc 1 935 0
	cmpl	$38, -476(%rbp)	#, code
	jne	.L216	#,
	.loc 1 937 0
	movq	-352(%rbp), %rax	# sub, tmp324
	movq	8(%rax), %rcx	# sub_118->fld[0].rtx, D.13274
	movq	-504(%rbp), %rdx	# insn, tmp325
	movq	-488(%rbp), %rax	# deps, tmp326
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp326,
	call	sched_analyze_2	#
	.loc 1 938 0
	movq	-352(%rbp), %rax	# sub, tmp327
	movq	16(%rax), %rax	# sub_118->fld[1].rtx, tmp328
	movq	%rax, -352(%rbp)	# tmp328, sub
	.loc 1 939 0
	movq	-352(%rbp), %rax	# sub, tmp329
	movzwl	(%rax), %eax	# sub_122->code, D.13273
	movzwl	%ax, %eax	# D.13273, tmp330
	movl	%eax, -476(%rbp)	# tmp330, code
.L216:
	.loc 1 941 0
	cmpl	$47, -476(%rbp)	#, code
	je	.L217	#,
	.loc 1 941 0 is_stmt 0 discriminator 1
	cmpl	$49, -476(%rbp)	#, code
	jne	.L218	#,
.L217:
	.loc 1 942 0 is_stmt 1
	movq	-504(%rbp), %rdx	# insn, tmp331
	movq	-352(%rbp), %rcx	# sub, tmp332
	movq	-488(%rbp), %rax	# deps, tmp333
	movq	%rcx, %rsi	# tmp332,
	movq	%rax, %rdi	# tmp333,
	call	sched_analyze_1	#
	jmp	.L219	#
.L218:
	.loc 1 944 0
	movq	-504(%rbp), %rdx	# insn, tmp334
	movq	-352(%rbp), %rcx	# sub, tmp335
	movq	-488(%rbp), %rax	# deps, tmp336
	movq	%rcx, %rsi	# tmp335,
	movq	%rax, %rdi	# tmp336,
	call	sched_analyze_2	#
.L219:
.LBE13:
	.loc 1 930 0
	subl	$1, -468(%rbp)	#, i
.L215:
	.loc 1 930 0 is_stmt 0 discriminator 1
	cmpl	$0, -468(%rbp)	#, i
	jns	.L220	#,
.LBE12:
	jmp	.L213	#
.L214:
	.loc 1 948 0 is_stmt 1
	movq	-504(%rbp), %rdx	# insn, tmp337
	movq	-496(%rbp), %rcx	# x, tmp338
	movq	-488(%rbp), %rax	# deps, tmp339
	movq	%rcx, %rsi	# tmp338,
	movq	%rax, %rdi	# tmp339,
	call	sched_analyze_2	#
.L213:
	.loc 1 951 0
	movq	-504(%rbp), %rax	# insn, tmp340
	movzwl	(%rax), %eax	# insn_110(D)->code, D.13273
	cmpw	$34, %ax	#, D.13273
	jne	.L221	#,
	.loc 1 953 0
	movq	-504(%rbp), %rax	# insn, tmp341
	movq	64(%rax), %rax	# insn_110(D)->fld[7].rtx, tmp342
	movq	%rax, -360(%rbp)	# tmp342, link
	jmp	.L222	#
.L225:
	.loc 1 955 0
	movq	-360(%rbp), %rax	# link, tmp343
	movq	8(%rax), %rax	# link_4->fld[0].rtx, D.13274
	movzwl	(%rax), %eax	# _128->code, D.13273
	cmpw	$49, %ax	#, D.13273
	jne	.L223	#,
	.loc 1 956 0
	movq	-360(%rbp), %rax	# link, tmp344
	movq	8(%rax), %rcx	# link_4->fld[0].rtx, D.13274
	movq	-504(%rbp), %rdx	# insn, tmp345
	movq	-488(%rbp), %rax	# deps, tmp346
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp346,
	call	sched_analyze_1	#
	jmp	.L224	#
.L223:
	.loc 1 958 0
	movq	-360(%rbp), %rax	# link, tmp347
	movq	8(%rax), %rcx	# link_4->fld[0].rtx, D.13274
	movq	-504(%rbp), %rdx	# insn, tmp348
	movq	-488(%rbp), %rax	# deps, tmp349
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp349,
	call	sched_analyze_2	#
.L224:
	.loc 1 953 0
	movq	-360(%rbp), %rax	# link, tmp350
	movq	16(%rax), %rax	# link_4->fld[1].rtx, tmp351
	movq	%rax, -360(%rbp)	# tmp351, link
.L222:
	.loc 1 953 0 is_stmt 0 discriminator 1
	cmpq	$0, -360(%rbp)	#, link
	jne	.L225	#,
	.loc 1 960 0 is_stmt 1
	movq	-504(%rbp), %rax	# insn, tmp352
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# tmp352,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13274
	je	.L221	#,
	.loc 1 961 0
	movb	$1, reg_pending_barrier(%rip)	#, reg_pending_barrier
.L221:
	.loc 1 964 0
	movq	-504(%rbp), %rax	# insn, tmp353
	movzwl	(%rax), %eax	# insn_110(D)->code, D.13273
	cmpw	$33, %ax	#, D.13273
	jne	.L226	#,
.LBB14:
	.loc 1 967 0
	movq	-504(%rbp), %rax	# insn, tmp354
	movq	%rax, %rdi	# tmp354,
	call	next_nonnote_insn	#
	movq	%rax, -184(%rbp)	# tmp355, next
	.loc 1 968 0
	cmpq	$0, -184(%rbp)	#, next
	je	.L227	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# next, tmp356
	movzwl	(%rax), %eax	# next_135->code, D.13273
	cmpw	$35, %ax	#, D.13273
	jne	.L227	#,
	.loc 1 969 0 is_stmt 1
	movb	$1, reg_pending_barrier(%rip)	#, reg_pending_barrier
	jmp	.L226	#
.L227:
.LBB15:
	.loc 1 974 0
	leaq	-32(%rbp), %rax	#, tmp357
	movq	%rax, %rdi	# tmp357,
	call	bitmap_initialize	#
	.loc 1 976 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.143
	movq	56(%rax), %rax	# current_sched_info.143_137->compute_jump_reg_dependencies, D.13277
	leaq	-32(%rbp), %rcx	#, tmp358
	movq	-504(%rbp), %rdx	# insn, tmp359
	movq	%rcx, %rsi	# tmp358,
	movq	%rdx, %rdi	# tmp359,
	call	*%rax	# D.13277
	.loc 1 977 0
	movq	reg_pending_uses(%rip), %rsi	# reg_pending_uses, reg_pending_uses.144
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.145
	leaq	-32(%rbp), %rdx	#, tmp360
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# reg_pending_uses.145,
	call	bitmap_operation	#
	.loc 1 978 0
	leaq	-32(%rbp), %rax	#, tmp361
	movq	%rax, %rdi	# tmp361,
	call	bitmap_clear	#
	.loc 1 984 0
	movq	-488(%rbp), %rax	# deps, tmp362
	movq	16(%rax), %rax	# deps_109(D)->pending_write_insns, tmp363
	movq	%rax, -344(%rbp)	# tmp363, pending
	.loc 1 985 0
	movq	-488(%rbp), %rax	# deps, tmp364
	movq	24(%rax), %rax	# deps_109(D)->pending_write_mems, tmp365
	movq	%rax, -336(%rbp)	# tmp365, pending_mem
	.loc 1 986 0
	jmp	.L228	#
.L229:
	.loc 1 988 0
	movq	-344(%rbp), %rax	# pending, tmp366
	movq	8(%rax), %rcx	# pending_8->fld[0].rtx, D.13274
	movq	-504(%rbp), %rax	# insn, tmp367
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp367,
	call	add_dependence	#
	.loc 1 989 0
	movq	-344(%rbp), %rax	# pending, tmp368
	movq	16(%rax), %rax	# pending_8->fld[1].rtx, tmp369
	movq	%rax, -344(%rbp)	# tmp369, pending
	.loc 1 990 0
	movq	-336(%rbp), %rax	# pending_mem, tmp370
	movq	16(%rax), %rax	# pending_mem_10->fld[1].rtx, tmp371
	movq	%rax, -336(%rbp)	# tmp371, pending_mem
.L228:
	.loc 1 986 0 discriminator 1
	cmpq	$0, -344(%rbp)	#, pending
	jne	.L229	#,
	.loc 1 993 0
	movq	-488(%rbp), %rax	# deps, tmp372
	movq	(%rax), %rax	# deps_109(D)->pending_read_insns, tmp373
	movq	%rax, -344(%rbp)	# tmp373, pending
	.loc 1 994 0
	movq	-488(%rbp), %rax	# deps, tmp374
	movq	8(%rax), %rax	# deps_109(D)->pending_read_mems, tmp375
	movq	%rax, -336(%rbp)	# tmp375, pending_mem
	.loc 1 995 0
	jmp	.L230	#
.L232:
	.loc 1 997 0
	movq	-336(%rbp), %rax	# pending_mem, tmp376
	movq	8(%rax), %rax	# pending_mem_11->fld[0].rtx, D.13274
	movzbl	3(%rax), %eax	# *_148, D.13278
	andl	$8, %eax	#, D.13278
	testb	%al, %al	# D.13278
	je	.L231	#,
	.loc 1 998 0
	movq	-344(%rbp), %rax	# pending, tmp377
	movq	8(%rax), %rcx	# pending_9->fld[0].rtx, D.13274
	movq	-504(%rbp), %rax	# insn, tmp378
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp378,
	call	add_dependence	#
.L231:
	.loc 1 999 0
	movq	-344(%rbp), %rax	# pending, tmp379
	movq	16(%rax), %rax	# pending_9->fld[1].rtx, tmp380
	movq	%rax, -344(%rbp)	# tmp380, pending
	.loc 1 1000 0
	movq	-336(%rbp), %rax	# pending_mem, tmp381
	movq	16(%rax), %rax	# pending_mem_11->fld[1].rtx, tmp382
	movq	%rax, -336(%rbp)	# tmp382, pending_mem
.L230:
	.loc 1 995 0 discriminator 1
	cmpq	$0, -344(%rbp)	#, pending
	jne	.L232	#,
	.loc 1 1003 0
	movq	-488(%rbp), %rax	# deps, tmp383
	movq	40(%rax), %rcx	# deps_109(D)->last_pending_memory_flush, D.13274
	movq	-504(%rbp), %rax	# insn, tmp384
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp384,
	call	add_dependence_list	#
.L226:
.LBE15:
.LBE14:
	.loc 1 1012 0
	cmpq	$0, -512(%rbp)	#, loop_notes
	je	.L233	#,
.LBB16:
	.loc 1 1019 0
	movq	-512(%rbp), %rax	# loop_notes, tmp385
	movq	%rax, -328(%rbp)	# tmp385, link
	.loc 1 1020 0
	jmp	.L234	#
.L237:
	.loc 1 1022 0
	movq	-328(%rbp), %rax	# link, tmp386
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.13274
	movq	8(%rax), %rax	# _158->fld[0].rtwint, D.13279
	cmpq	$-96, %rax	#, D.13279
	je	.L235	#,
	.loc 1 1023 0
	movq	-328(%rbp), %rax	# link, tmp387
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.13274
	movq	8(%rax), %rax	# _160->fld[0].rtwint, D.13279
	cmpq	$-95, %rax	#, D.13279
	je	.L235	#,
	.loc 1 1024 0
	movq	-328(%rbp), %rax	# link, tmp388
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.13274
	movq	8(%rax), %rax	# _162->fld[0].rtwint, D.13279
	cmpq	$-86, %rax	#, D.13279
	je	.L235	#,
	.loc 1 1025 0
	movq	-328(%rbp), %rax	# link, tmp389
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.13274
	movq	8(%rax), %rax	# _164->fld[0].rtwint, D.13279
	cmpq	$-85, %rax	#, D.13279
	jne	.L236	#,
.L235:
	.loc 1 1026 0
	movb	$1, reg_pending_barrier(%rip)	#, reg_pending_barrier
.L236:
	.loc 1 1028 0
	movq	-328(%rbp), %rax	# link, tmp390
	movq	16(%rax), %rax	# link_12->fld[1].rtx, tmp391
	movq	%rax, -328(%rbp)	# tmp391, link
.L234:
	.loc 1 1020 0 discriminator 1
	movq	-328(%rbp), %rax	# link, tmp392
	movq	16(%rax), %rax	# link_12->fld[1].rtx, D.13274
	testq	%rax, %rax	# D.13274
	jne	.L237	#,
	.loc 1 1030 0
	movq	-504(%rbp), %rax	# insn, tmp393
	movq	56(%rax), %rdx	# insn_110(D)->fld[6].rtx, D.13274
	movq	-328(%rbp), %rax	# link, tmp394
	movq	%rdx, 16(%rax)	# D.13274, link_12->fld[1].rtx
	.loc 1 1031 0
	movq	-504(%rbp), %rax	# insn, tmp395
	movq	-512(%rbp), %rdx	# loop_notes, tmp396
	movq	%rdx, 56(%rax)	# tmp396, insn_110(D)->fld[6].rtx
.L233:
.LBE16:
	.loc 1 1037 0
	movq	-504(%rbp), %rax	# insn, tmp397
	movq	%rax, %rdi	# tmp397,
	call	can_throw_internal	#
	testb	%al, %al	# D.13280
	je	.L238	#,
	.loc 1 1038 0
	movb	$1, reg_pending_barrier(%rip)	#, reg_pending_barrier
.L238:
	.loc 1 1041 0
	movzbl	reg_pending_barrier(%rip), %eax	# reg_pending_barrier, reg_pending_barrier.146
	testb	%al, %al	# reg_pending_barrier.146
	je	.L239	#,
	.loc 1 1043 0
	movq	-504(%rbp), %rax	# insn, tmp398
	movq	32(%rax), %rax	# insn_110(D)->fld[3].rtx, D.13274
	movzwl	(%rax), %eax	# _170->code, D.13273
	cmpw	$38, %ax	#, D.13273
	jne	.L240	#,
.LBB17:
	.loc 1 1045 0
	movq	-488(%rbp), %rax	# deps, tmp399
	movq	80(%rax), %rax	# deps_109(D)->reg_last_in_use.first, tmp400
	movq	%rax, -320(%rbp)	# tmp400, ptr_
	movl	$0, -400(%rbp)	#, indx_
	movl	$0, -464(%rbp)	#, bit_num_
	movl	$0, -460(%rbp)	#, word_num_
	jmp	.L241	#
.L243:
	.loc 1 1045 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# ptr_, tmp401
	movq	(%rax), %rax	# ptr__13->next, tmp402
	movq	%rax, -320(%rbp)	# tmp402, ptr_
.L241:
	cmpq	$0, -320(%rbp)	#, ptr_
	je	.L242	#,
	.loc 1 1045 0 discriminator 2
	movq	-320(%rbp), %rax	# ptr_, tmp403
	movl	16(%rax), %eax	# ptr__13->indx, D.13281
	cmpl	-400(%rbp), %eax	# indx_, D.13281
	jb	.L243	#,
.L242:
	.loc 1 1045 0 discriminator 3
	cmpq	$0, -320(%rbp)	#, ptr_
	je	.L244	#,
	.loc 1 1045 0 discriminator 1
	movq	-320(%rbp), %rax	# ptr_, tmp404
	movl	16(%rax), %eax	# ptr__13->indx, D.13281
	cmpl	-400(%rbp), %eax	# indx_, D.13281
	je	.L244	#,
	movl	$0, -464(%rbp)	#, bit_num_
	movl	$0, -460(%rbp)	#, word_num_
	jmp	.L245	#
.L244:
	.loc 1 1045 0 discriminator 2
	jmp	.L245	#
.L252:
	.loc 1 1045 0
	jmp	.L246	#
.L251:
.LBB18:
	.loc 1 1045 0 discriminator 2
	movq	-320(%rbp), %rax	# ptr_, tmp405
	movl	-460(%rbp), %edx	# word_num_, tmp406
	addq	$2, %rdx	#, tmp407
	movq	8(%rax,%rdx,8), %rax	# ptr__14->bits, tmp408
	movq	%rax, -312(%rbp)	# tmp408, word_
	cmpq	$0, -312(%rbp)	#, word_
	je	.L247	#,
	.loc 1 1045 0 discriminator 1
	jmp	.L248	#
.L250:
.LBB19:
	.loc 1 1045 0 discriminator 2
	movl	-464(%rbp), %eax	# bit_num_, bit_num_.147
	movl	$1, %edx	#, tmp409
	movl	%eax, %ecx	# bit_num_.147, tmp707
	salq	%cl, %rdx	# tmp707, tmp410
	movq	%rdx, %rax	# tmp410, tmp410
	movq	%rax, -176(%rbp)	# tmp410, mask_
	movq	-176(%rbp), %rax	# mask_, tmp411
	movq	-312(%rbp), %rdx	# word_, tmp412
	andq	%rdx, %rax	# tmp412, D.13282
	testq	%rax, %rax	# D.13282
	je	.L249	#,
	.loc 1 1045 0 discriminator 1
	movq	-176(%rbp), %rax	# mask_, tmp413
	notq	%rax	# D.13282
	andq	%rax, -312(%rbp)	# D.13282, word_
	movq	-320(%rbp), %rax	# ptr_, tmp414
	movl	16(%rax), %eax	# ptr__14->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-460(%rbp), %eax	# word_num_, tmp415
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-464(%rbp), %eax	# bit_num_, tmp416
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB20:
	movq	-488(%rbp), %rax	# deps, tmp417
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp418
	movslq	%edx, %rdx	# tmp418, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp419
	movq	%rax, -168(%rbp)	# tmp419, reg_last
	movq	-168(%rbp), %rax	# reg_last, tmp420
	movq	(%rax), %rcx	# reg_last_196->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp421
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp421,
	call	add_dependence_list	#
	movq	-168(%rbp), %rax	# reg_last, tmp422
	movq	8(%rax), %rcx	# reg_last_196->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp423
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp423,
	call	add_dependence_list	#
	movq	-168(%rbp), %rax	# reg_last, tmp424
	movq	16(%rax), %rcx	# reg_last_196->clobbers, D.13274
	movq	-504(%rbp), %rax	# insn, tmp425
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp425,
	call	add_dependence_list	#
.LBE20:
	cmpq	$0, -312(%rbp)	#, word_
	jne	.L249	#,
	jmp	.L247	#
.L249:
.LBE19:
	.loc 1 1045 0 discriminator 2
	addl	$1, -464(%rbp)	#, bit_num_
.L248:
	.loc 1 1045 0 discriminator 1
	cmpl	$63, -464(%rbp)	#, bit_num_
	jbe	.L250	#,
.L247:
	.loc 1 1045 0 discriminator 2
	movl	$0, -464(%rbp)	#, bit_num_
.LBE18:
	addl	$1, -460(%rbp)	#, word_num_
.L246:
	.loc 1 1045 0 discriminator 1
	cmpl	$1, -460(%rbp)	#, word_num_
	jbe	.L251	#,
	.loc 1 1045 0 discriminator 3
	movl	$0, -460(%rbp)	#, word_num_
	movq	-320(%rbp), %rax	# ptr_, tmp426
	movq	(%rax), %rax	# ptr__14->next, tmp427
	movq	%rax, -320(%rbp)	# tmp427, ptr_
.L245:
	.loc 1 1045 0 discriminator 1
	cmpq	$0, -320(%rbp)	#, ptr_
	jne	.L252	#,
.LBE17:
	jmp	.L253	#
.L240:
.LBB21:
	.loc 1 1055 0 is_stmt 1
	movq	-488(%rbp), %rax	# deps, tmp428
	movq	80(%rax), %rax	# deps_109(D)->reg_last_in_use.first, tmp429
	movq	%rax, -304(%rbp)	# tmp429, ptr_
	movl	$0, -396(%rbp)	#, indx_
	movl	$0, -456(%rbp)	#, bit_num_
	movl	$0, -452(%rbp)	#, word_num_
	jmp	.L254	#
.L256:
	.loc 1 1055 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# ptr_, tmp430
	movq	(%rax), %rax	# ptr__24->next, tmp431
	movq	%rax, -304(%rbp)	# tmp431, ptr_
.L254:
	cmpq	$0, -304(%rbp)	#, ptr_
	je	.L255	#,
	.loc 1 1055 0 discriminator 2
	movq	-304(%rbp), %rax	# ptr_, tmp432
	movl	16(%rax), %eax	# ptr__24->indx, D.13281
	cmpl	-396(%rbp), %eax	# indx_, D.13281
	jb	.L256	#,
.L255:
	.loc 1 1055 0 discriminator 3
	cmpq	$0, -304(%rbp)	#, ptr_
	je	.L257	#,
	.loc 1 1055 0 discriminator 1
	movq	-304(%rbp), %rax	# ptr_, tmp433
	movl	16(%rax), %eax	# ptr__24->indx, D.13281
	cmpl	-396(%rbp), %eax	# indx_, D.13281
	je	.L257	#,
	movl	$0, -456(%rbp)	#, bit_num_
	movl	$0, -452(%rbp)	#, word_num_
	jmp	.L258	#
.L257:
	.loc 1 1055 0 discriminator 2
	jmp	.L258	#
.L265:
	.loc 1 1055 0
	jmp	.L259	#
.L264:
.LBB22:
	.loc 1 1055 0 discriminator 2
	movq	-304(%rbp), %rax	# ptr_, tmp434
	movl	-452(%rbp), %edx	# word_num_, tmp435
	addq	$2, %rdx	#, tmp436
	movq	8(%rax,%rdx,8), %rax	# ptr__25->bits, tmp437
	movq	%rax, -296(%rbp)	# tmp437, word_
	cmpq	$0, -296(%rbp)	#, word_
	je	.L260	#,
	.loc 1 1055 0 discriminator 1
	jmp	.L261	#
.L263:
.LBB23:
	.loc 1 1055 0 discriminator 2
	movl	-456(%rbp), %eax	# bit_num_, bit_num_.148
	movl	$1, %edx	#, tmp438
	movl	%eax, %ecx	# bit_num_.148, tmp710
	salq	%cl, %rdx	# tmp710, tmp439
	movq	%rdx, %rax	# tmp439, tmp439
	movq	%rax, -160(%rbp)	# tmp439, mask_
	movq	-160(%rbp), %rax	# mask_, tmp440
	movq	-296(%rbp), %rdx	# word_, tmp441
	andq	%rdx, %rax	# tmp441, D.13282
	testq	%rax, %rax	# D.13282
	je	.L262	#,
	.loc 1 1055 0 discriminator 1
	movq	-160(%rbp), %rax	# mask_, tmp442
	notq	%rax	# D.13282
	andq	%rax, -296(%rbp)	# D.13282, word_
	movq	-304(%rbp), %rax	# ptr_, tmp443
	movl	16(%rax), %eax	# ptr__25->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-452(%rbp), %eax	# word_num_, tmp444
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-456(%rbp), %eax	# bit_num_, tmp445
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB24:
	movq	-488(%rbp), %rax	# deps, tmp446
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp447
	movslq	%edx, %rdx	# tmp447, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp448
	movq	%rax, -152(%rbp)	# tmp448, reg_last
	movq	-152(%rbp), %rcx	# reg_last, D.13284
	movq	-504(%rbp), %rax	# insn, tmp449
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp449,
	call	add_dependence_list_and_free	#
	movq	-152(%rbp), %rax	# reg_last, tmp450
	leaq	8(%rax), %rcx	#, D.13284
	movq	-504(%rbp), %rax	# insn, tmp451
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp451,
	call	add_dependence_list_and_free	#
	movq	-152(%rbp), %rax	# reg_last, tmp452
	leaq	16(%rax), %rcx	#, D.13284
	movq	-504(%rbp), %rax	# insn, tmp453
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp453,
	call	add_dependence_list_and_free	#
	movq	-152(%rbp), %rax	# reg_last, tmp454
	movl	$0, 24(%rax)	#, reg_last_229->uses_length
	movq	-152(%rbp), %rax	# reg_last, tmp455
	movl	$0, 28(%rax)	#, reg_last_229->clobbers_length
.LBE24:
	cmpq	$0, -296(%rbp)	#, word_
	jne	.L262	#,
	jmp	.L260	#
.L262:
.LBE23:
	.loc 1 1055 0 discriminator 2
	addl	$1, -456(%rbp)	#, bit_num_
.L261:
	.loc 1 1055 0 discriminator 1
	cmpl	$63, -456(%rbp)	#, bit_num_
	jbe	.L263	#,
.L260:
	.loc 1 1055 0 discriminator 2
	movl	$0, -456(%rbp)	#, bit_num_
.LBE22:
	addl	$1, -452(%rbp)	#, word_num_
.L259:
	.loc 1 1055 0 discriminator 1
	cmpl	$1, -452(%rbp)	#, word_num_
	jbe	.L264	#,
	.loc 1 1055 0 discriminator 3
	movl	$0, -452(%rbp)	#, word_num_
	movq	-304(%rbp), %rax	# ptr_, tmp456
	movq	(%rax), %rax	# ptr__25->next, tmp457
	movq	%rax, -304(%rbp)	# tmp457, ptr_
.L258:
	.loc 1 1055 0 discriminator 1
	cmpq	$0, -304(%rbp)	#, ptr_
	jne	.L265	#,
.L253:
.LBE21:
	.loc 1 1067 0 is_stmt 1
	movl	$0, -472(%rbp)	#, i
	jmp	.L266	#
.L267:
.LBB25:
	.loc 1 1069 0 discriminator 2
	movq	-488(%rbp), %rax	# deps, tmp458
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp459
	movslq	%edx, %rdx	# tmp459, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp460
	movq	%rax, -144(%rbp)	# tmp460, reg_last
	.loc 1 1070 0 discriminator 2
	movq	-144(%rbp), %rax	# reg_last, tmp461
	movq	8(%rax), %rdx	# reg_last_243->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp462
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp462,
	call	alloc_INSN_LIST	#
	movq	-144(%rbp), %rdx	# reg_last, tmp463
	movq	%rax, 8(%rdx)	# D.13274, reg_last_243->sets
	.loc 1 1071 0 discriminator 2
	movq	-488(%rbp), %rax	# deps, tmp464
	leaq	80(%rax), %rdx	#, D.13285
	movl	-472(%rbp), %eax	# i, tmp465
	movl	%eax, %esi	# tmp465,
	movq	%rdx, %rdi	# D.13285,
	call	bitmap_set_bit	#
.LBE25:
	.loc 1 1067 0 discriminator 2
	addl	$1, -472(%rbp)	#, i
.L266:
	.loc 1 1067 0 is_stmt 0 discriminator 1
	movq	-488(%rbp), %rax	# deps, tmp466
	movl	68(%rax), %eax	# deps_109(D)->max_reg, D.13276
	cmpl	-472(%rbp), %eax	# i, D.13276
	jg	.L267	#,
	.loc 1 1074 0 is_stmt 1
	movq	-504(%rbp), %rsi	# insn, tmp467
	movq	-488(%rbp), %rax	# deps, tmp468
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp468,
	call	flush_pending_lists	#
	.loc 1 1075 0
	movb	$0, reg_pending_barrier(%rip)	#, reg_pending_barrier
	jmp	.L268	#
.L239:
	.loc 1 1081 0
	movq	-504(%rbp), %rax	# insn, tmp469
	movq	32(%rax), %rax	# insn_110(D)->fld[3].rtx, D.13274
	movzwl	(%rax), %eax	# _248->code, D.13273
	cmpw	$38, %ax	#, D.13273
	jne	.L269	#,
.LBB26:
	.loc 1 1083 0
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.149
	movq	(%rax), %rax	# reg_pending_uses.149_250->first, tmp470
	movq	%rax, -288(%rbp)	# tmp470, ptr_
	movl	$0, -392(%rbp)	#, indx_
	movl	$0, -448(%rbp)	#, bit_num_
	movl	$0, -444(%rbp)	#, word_num_
	jmp	.L270	#
.L272:
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# ptr_, tmp471
	movq	(%rax), %rax	# ptr__35->next, tmp472
	movq	%rax, -288(%rbp)	# tmp472, ptr_
.L270:
	cmpq	$0, -288(%rbp)	#, ptr_
	je	.L271	#,
	.loc 1 1083 0 discriminator 2
	movq	-288(%rbp), %rax	# ptr_, tmp473
	movl	16(%rax), %eax	# ptr__35->indx, D.13281
	cmpl	-392(%rbp), %eax	# indx_, D.13281
	jb	.L272	#,
.L271:
	.loc 1 1083 0 discriminator 3
	cmpq	$0, -288(%rbp)	#, ptr_
	je	.L273	#,
	.loc 1 1083 0 discriminator 1
	movq	-288(%rbp), %rax	# ptr_, tmp474
	movl	16(%rax), %eax	# ptr__35->indx, D.13281
	cmpl	-392(%rbp), %eax	# indx_, D.13281
	je	.L273	#,
	movl	$0, -448(%rbp)	#, bit_num_
	movl	$0, -444(%rbp)	#, word_num_
	jmp	.L274	#
.L273:
	.loc 1 1083 0 discriminator 2
	jmp	.L274	#
.L281:
	.loc 1 1083 0
	jmp	.L275	#
.L280:
.LBB27:
	.loc 1 1083 0 discriminator 2
	movq	-288(%rbp), %rax	# ptr_, tmp475
	movl	-444(%rbp), %edx	# word_num_, tmp476
	addq	$2, %rdx	#, tmp477
	movq	8(%rax,%rdx,8), %rax	# ptr__36->bits, tmp478
	movq	%rax, -280(%rbp)	# tmp478, word_
	cmpq	$0, -280(%rbp)	#, word_
	je	.L276	#,
	.loc 1 1083 0 discriminator 1
	jmp	.L277	#
.L279:
.LBB28:
	.loc 1 1083 0 discriminator 2
	movl	-448(%rbp), %eax	# bit_num_, bit_num_.150
	movl	$1, %edx	#, tmp479
	movl	%eax, %ecx	# bit_num_.150, tmp713
	salq	%cl, %rdx	# tmp713, tmp480
	movq	%rdx, %rax	# tmp480, tmp480
	movq	%rax, -136(%rbp)	# tmp480, mask_
	movq	-136(%rbp), %rax	# mask_, tmp481
	movq	-280(%rbp), %rdx	# word_, tmp482
	andq	%rdx, %rax	# tmp482, D.13282
	testq	%rax, %rax	# D.13282
	je	.L278	#,
	.loc 1 1083 0 discriminator 1
	movq	-136(%rbp), %rax	# mask_, tmp483
	notq	%rax	# D.13282
	andq	%rax, -280(%rbp)	# D.13282, word_
	movq	-288(%rbp), %rax	# ptr_, tmp484
	movl	16(%rax), %eax	# ptr__36->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-444(%rbp), %eax	# word_num_, tmp485
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-448(%rbp), %eax	# bit_num_, tmp486
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB29:
	movq	-488(%rbp), %rax	# deps, tmp487
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp488
	movslq	%edx, %rdx	# tmp488, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp489
	movq	%rax, -128(%rbp)	# tmp489, reg_last
	movq	-128(%rbp), %rax	# reg_last, tmp490
	movq	8(%rax), %rcx	# reg_last_275->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp491
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp491,
	call	add_dependence_list	#
	movq	-128(%rbp), %rax	# reg_last, tmp492
	movq	16(%rax), %rcx	# reg_last_275->clobbers, D.13274
	movq	-504(%rbp), %rax	# insn, tmp493
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp493,
	call	add_dependence_list	#
	movq	-128(%rbp), %rax	# reg_last, tmp494
	movq	(%rax), %rdx	# reg_last_275->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp495
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp495,
	call	alloc_INSN_LIST	#
	movq	-128(%rbp), %rdx	# reg_last, tmp496
	movq	%rax, (%rdx)	# D.13274, reg_last_275->uses
	movq	-128(%rbp), %rax	# reg_last, tmp497
	movl	24(%rax), %eax	# reg_last_275->uses_length, D.13276
	leal	1(%rax), %edx	#, D.13276
	movq	-128(%rbp), %rax	# reg_last, tmp498
	movl	%edx, 24(%rax)	# D.13276, reg_last_275->uses_length
.LBE29:
	cmpq	$0, -280(%rbp)	#, word_
	jne	.L278	#,
	jmp	.L276	#
.L278:
.LBE28:
	.loc 1 1083 0 discriminator 2
	addl	$1, -448(%rbp)	#, bit_num_
.L277:
	.loc 1 1083 0 discriminator 1
	cmpl	$63, -448(%rbp)	#, bit_num_
	jbe	.L279	#,
.L276:
	.loc 1 1083 0 discriminator 2
	movl	$0, -448(%rbp)	#, bit_num_
.LBE27:
	addl	$1, -444(%rbp)	#, word_num_
.L275:
	.loc 1 1083 0 discriminator 1
	cmpl	$1, -444(%rbp)	#, word_num_
	jbe	.L280	#,
	.loc 1 1083 0 discriminator 3
	movl	$0, -444(%rbp)	#, word_num_
	movq	-288(%rbp), %rax	# ptr_, tmp499
	movq	(%rax), %rax	# ptr__36->next, tmp500
	movq	%rax, -288(%rbp)	# tmp500, ptr_
.L274:
	.loc 1 1083 0 discriminator 1
	cmpq	$0, -288(%rbp)	#, ptr_
	jne	.L281	#,
.LBE26:
.LBB30:
	.loc 1 1091 0 is_stmt 1
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.151
	movq	(%rax), %rax	# reg_pending_clobbers.151_287->first, tmp501
	movq	%rax, -272(%rbp)	# tmp501, ptr_
	movl	$0, -388(%rbp)	#, indx_
	movl	$0, -440(%rbp)	#, bit_num_
	movl	$0, -436(%rbp)	#, word_num_
	jmp	.L282	#
.L284:
	.loc 1 1091 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# ptr_, tmp502
	movq	(%rax), %rax	# ptr__46->next, tmp503
	movq	%rax, -272(%rbp)	# tmp503, ptr_
.L282:
	cmpq	$0, -272(%rbp)	#, ptr_
	je	.L283	#,
	.loc 1 1091 0 discriminator 2
	movq	-272(%rbp), %rax	# ptr_, tmp504
	movl	16(%rax), %eax	# ptr__46->indx, D.13281
	cmpl	-388(%rbp), %eax	# indx_, D.13281
	jb	.L284	#,
.L283:
	.loc 1 1091 0 discriminator 3
	cmpq	$0, -272(%rbp)	#, ptr_
	je	.L285	#,
	.loc 1 1091 0 discriminator 1
	movq	-272(%rbp), %rax	# ptr_, tmp505
	movl	16(%rax), %eax	# ptr__46->indx, D.13281
	cmpl	-388(%rbp), %eax	# indx_, D.13281
	je	.L285	#,
	movl	$0, -440(%rbp)	#, bit_num_
	movl	$0, -436(%rbp)	#, word_num_
	jmp	.L286	#
.L285:
	.loc 1 1091 0 discriminator 2
	jmp	.L286	#
.L293:
	.loc 1 1091 0
	jmp	.L287	#
.L292:
.LBB31:
	.loc 1 1091 0 discriminator 2
	movq	-272(%rbp), %rax	# ptr_, tmp506
	movl	-436(%rbp), %edx	# word_num_, tmp507
	addq	$2, %rdx	#, tmp508
	movq	8(%rax,%rdx,8), %rax	# ptr__47->bits, tmp509
	movq	%rax, -264(%rbp)	# tmp509, word_
	cmpq	$0, -264(%rbp)	#, word_
	je	.L288	#,
	.loc 1 1091 0 discriminator 1
	jmp	.L289	#
.L291:
.LBB32:
	.loc 1 1091 0 discriminator 2
	movl	-440(%rbp), %eax	# bit_num_, bit_num_.152
	movl	$1, %edx	#, tmp510
	movl	%eax, %ecx	# bit_num_.152, tmp716
	salq	%cl, %rdx	# tmp716, tmp511
	movq	%rdx, %rax	# tmp511, tmp511
	movq	%rax, -120(%rbp)	# tmp511, mask_
	movq	-120(%rbp), %rax	# mask_, tmp512
	movq	-264(%rbp), %rdx	# word_, tmp513
	andq	%rdx, %rax	# tmp513, D.13282
	testq	%rax, %rax	# D.13282
	je	.L290	#,
	.loc 1 1091 0 discriminator 1
	movq	-120(%rbp), %rax	# mask_, tmp514
	notq	%rax	# D.13282
	andq	%rax, -264(%rbp)	# D.13282, word_
	movq	-272(%rbp), %rax	# ptr_, tmp515
	movl	16(%rax), %eax	# ptr__47->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-436(%rbp), %eax	# word_num_, tmp516
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-440(%rbp), %eax	# bit_num_, tmp517
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB33:
	movq	-488(%rbp), %rax	# deps, tmp518
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp519
	movslq	%edx, %rdx	# tmp519, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp520
	movq	%rax, -112(%rbp)	# tmp520, reg_last
	movq	-112(%rbp), %rax	# reg_last, tmp521
	movq	8(%rax), %rcx	# reg_last_312->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp522
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp522,
	call	add_dependence_list	#
	movq	-112(%rbp), %rax	# reg_last, tmp523
	movq	(%rax), %rcx	# reg_last_312->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp524
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp524,
	call	add_dependence_list	#
	movq	-112(%rbp), %rax	# reg_last, tmp525
	movq	16(%rax), %rdx	# reg_last_312->clobbers, D.13274
	movq	-504(%rbp), %rax	# insn, tmp526
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp526,
	call	alloc_INSN_LIST	#
	movq	-112(%rbp), %rdx	# reg_last, tmp527
	movq	%rax, 16(%rdx)	# D.13274, reg_last_312->clobbers
	movq	-112(%rbp), %rax	# reg_last, tmp528
	movl	28(%rax), %eax	# reg_last_312->clobbers_length, D.13276
	leal	1(%rax), %edx	#, D.13276
	movq	-112(%rbp), %rax	# reg_last, tmp529
	movl	%edx, 28(%rax)	# D.13276, reg_last_312->clobbers_length
.LBE33:
	cmpq	$0, -264(%rbp)	#, word_
	jne	.L290	#,
	jmp	.L288	#
.L290:
.LBE32:
	.loc 1 1091 0 discriminator 2
	addl	$1, -440(%rbp)	#, bit_num_
.L289:
	.loc 1 1091 0 discriminator 1
	cmpl	$63, -440(%rbp)	#, bit_num_
	jbe	.L291	#,
.L288:
	.loc 1 1091 0 discriminator 2
	movl	$0, -440(%rbp)	#, bit_num_
.LBE31:
	addl	$1, -436(%rbp)	#, word_num_
.L287:
	.loc 1 1091 0 discriminator 1
	cmpl	$1, -436(%rbp)	#, word_num_
	jbe	.L292	#,
	.loc 1 1091 0 discriminator 3
	movl	$0, -436(%rbp)	#, word_num_
	movq	-272(%rbp), %rax	# ptr_, tmp530
	movq	(%rax), %rax	# ptr__47->next, tmp531
	movq	%rax, -272(%rbp)	# tmp531, ptr_
.L286:
	.loc 1 1091 0 discriminator 1
	cmpq	$0, -272(%rbp)	#, ptr_
	jne	.L293	#,
.LBE30:
.LBB34:
	.loc 1 1099 0 is_stmt 1
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.153
	movq	(%rax), %rax	# reg_pending_sets.153_324->first, tmp532
	movq	%rax, -256(%rbp)	# tmp532, ptr_
	movl	$0, -384(%rbp)	#, indx_
	movl	$0, -432(%rbp)	#, bit_num_
	movl	$0, -428(%rbp)	#, word_num_
	jmp	.L294	#
.L296:
	.loc 1 1099 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# ptr_, tmp533
	movq	(%rax), %rax	# ptr__57->next, tmp534
	movq	%rax, -256(%rbp)	# tmp534, ptr_
.L294:
	cmpq	$0, -256(%rbp)	#, ptr_
	je	.L295	#,
	.loc 1 1099 0 discriminator 2
	movq	-256(%rbp), %rax	# ptr_, tmp535
	movl	16(%rax), %eax	# ptr__57->indx, D.13281
	cmpl	-384(%rbp), %eax	# indx_, D.13281
	jb	.L296	#,
.L295:
	.loc 1 1099 0 discriminator 3
	cmpq	$0, -256(%rbp)	#, ptr_
	je	.L297	#,
	.loc 1 1099 0 discriminator 1
	movq	-256(%rbp), %rax	# ptr_, tmp536
	movl	16(%rax), %eax	# ptr__57->indx, D.13281
	cmpl	-384(%rbp), %eax	# indx_, D.13281
	je	.L297	#,
	movl	$0, -432(%rbp)	#, bit_num_
	movl	$0, -428(%rbp)	#, word_num_
	jmp	.L298	#
.L297:
	.loc 1 1099 0 discriminator 2
	jmp	.L298	#
.L305:
	.loc 1 1099 0
	jmp	.L299	#
.L304:
.LBB35:
	.loc 1 1099 0 discriminator 2
	movq	-256(%rbp), %rax	# ptr_, tmp537
	movl	-428(%rbp), %edx	# word_num_, tmp538
	addq	$2, %rdx	#, tmp539
	movq	8(%rax,%rdx,8), %rax	# ptr__58->bits, tmp540
	movq	%rax, -248(%rbp)	# tmp540, word_
	cmpq	$0, -248(%rbp)	#, word_
	je	.L300	#,
	.loc 1 1099 0 discriminator 1
	jmp	.L301	#
.L303:
.LBB36:
	.loc 1 1099 0 discriminator 2
	movl	-432(%rbp), %eax	# bit_num_, bit_num_.154
	movl	$1, %edx	#, tmp541
	movl	%eax, %ecx	# bit_num_.154, tmp719
	salq	%cl, %rdx	# tmp719, tmp542
	movq	%rdx, %rax	# tmp542, tmp542
	movq	%rax, -104(%rbp)	# tmp542, mask_
	movq	-104(%rbp), %rax	# mask_, tmp543
	movq	-248(%rbp), %rdx	# word_, tmp544
	andq	%rdx, %rax	# tmp544, D.13282
	testq	%rax, %rax	# D.13282
	je	.L302	#,
	.loc 1 1099 0 discriminator 1
	movq	-104(%rbp), %rax	# mask_, tmp545
	notq	%rax	# D.13282
	andq	%rax, -248(%rbp)	# D.13282, word_
	movq	-256(%rbp), %rax	# ptr_, tmp546
	movl	16(%rax), %eax	# ptr__58->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-428(%rbp), %eax	# word_num_, tmp547
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-432(%rbp), %eax	# bit_num_, tmp548
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB37:
	movq	-488(%rbp), %rax	# deps, tmp549
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp550
	movslq	%edx, %rdx	# tmp550, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp551
	movq	%rax, -96(%rbp)	# tmp551, reg_last
	movq	-96(%rbp), %rax	# reg_last, tmp552
	movq	8(%rax), %rcx	# reg_last_349->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp553
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp553,
	call	add_dependence_list	#
	movq	-96(%rbp), %rax	# reg_last, tmp554
	movq	16(%rax), %rcx	# reg_last_349->clobbers, D.13274
	movq	-504(%rbp), %rax	# insn, tmp555
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp555,
	call	add_dependence_list	#
	movq	-96(%rbp), %rax	# reg_last, tmp556
	movq	(%rax), %rcx	# reg_last_349->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp557
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp557,
	call	add_dependence_list	#
	movq	-96(%rbp), %rax	# reg_last, tmp558
	movq	8(%rax), %rdx	# reg_last_349->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp559
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp559,
	call	alloc_INSN_LIST	#
	movq	-96(%rbp), %rdx	# reg_last, tmp560
	movq	%rax, 8(%rdx)	# D.13274, reg_last_349->sets
.LBE37:
	cmpq	$0, -248(%rbp)	#, word_
	jne	.L302	#,
	jmp	.L300	#
.L302:
.LBE36:
	.loc 1 1099 0 discriminator 2
	addl	$1, -432(%rbp)	#, bit_num_
.L301:
	.loc 1 1099 0 discriminator 1
	cmpl	$63, -432(%rbp)	#, bit_num_
	jbe	.L303	#,
.L300:
	.loc 1 1099 0 discriminator 2
	movl	$0, -432(%rbp)	#, bit_num_
.LBE35:
	addl	$1, -428(%rbp)	#, word_num_
.L299:
	.loc 1 1099 0 discriminator 1
	cmpl	$1, -428(%rbp)	#, word_num_
	jbe	.L304	#,
	.loc 1 1099 0 discriminator 3
	movl	$0, -428(%rbp)	#, word_num_
	movq	-256(%rbp), %rax	# ptr_, tmp561
	movq	(%rax), %rax	# ptr__58->next, tmp562
	movq	%rax, -256(%rbp)	# tmp562, ptr_
.L298:
	.loc 1 1099 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, ptr_
	jne	.L305	#,
.LBE34:
	jmp	.L306	#
.L269:
.LBB38:
	.loc 1 1110 0 is_stmt 1
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.155
	movq	(%rax), %rax	# reg_pending_uses.155_360->first, tmp563
	movq	%rax, -240(%rbp)	# tmp563, ptr_
	movl	$0, -380(%rbp)	#, indx_
	movl	$0, -424(%rbp)	#, bit_num_
	movl	$0, -420(%rbp)	#, word_num_
	jmp	.L307	#
.L309:
	.loc 1 1110 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# ptr_, tmp564
	movq	(%rax), %rax	# ptr__68->next, tmp565
	movq	%rax, -240(%rbp)	# tmp565, ptr_
.L307:
	cmpq	$0, -240(%rbp)	#, ptr_
	je	.L308	#,
	.loc 1 1110 0 discriminator 2
	movq	-240(%rbp), %rax	# ptr_, tmp566
	movl	16(%rax), %eax	# ptr__68->indx, D.13281
	cmpl	-380(%rbp), %eax	# indx_, D.13281
	jb	.L309	#,
.L308:
	.loc 1 1110 0 discriminator 3
	cmpq	$0, -240(%rbp)	#, ptr_
	je	.L310	#,
	.loc 1 1110 0 discriminator 1
	movq	-240(%rbp), %rax	# ptr_, tmp567
	movl	16(%rax), %eax	# ptr__68->indx, D.13281
	cmpl	-380(%rbp), %eax	# indx_, D.13281
	je	.L310	#,
	movl	$0, -424(%rbp)	#, bit_num_
	movl	$0, -420(%rbp)	#, word_num_
	jmp	.L311	#
.L310:
	.loc 1 1110 0 discriminator 2
	jmp	.L311	#
.L318:
	.loc 1 1110 0
	jmp	.L312	#
.L317:
.LBB39:
	.loc 1 1110 0 discriminator 2
	movq	-240(%rbp), %rax	# ptr_, tmp568
	movl	-420(%rbp), %edx	# word_num_, tmp569
	addq	$2, %rdx	#, tmp570
	movq	8(%rax,%rdx,8), %rax	# ptr__69->bits, tmp571
	movq	%rax, -232(%rbp)	# tmp571, word_
	cmpq	$0, -232(%rbp)	#, word_
	je	.L313	#,
	.loc 1 1110 0 discriminator 1
	jmp	.L314	#
.L316:
.LBB40:
	.loc 1 1110 0 discriminator 2
	movl	-424(%rbp), %eax	# bit_num_, bit_num_.156
	movl	$1, %edx	#, tmp572
	movl	%eax, %ecx	# bit_num_.156, tmp722
	salq	%cl, %rdx	# tmp722, tmp573
	movq	%rdx, %rax	# tmp573, tmp573
	movq	%rax, -88(%rbp)	# tmp573, mask_
	movq	-88(%rbp), %rax	# mask_, tmp574
	movq	-232(%rbp), %rdx	# word_, tmp575
	andq	%rdx, %rax	# tmp575, D.13282
	testq	%rax, %rax	# D.13282
	je	.L315	#,
	.loc 1 1110 0 discriminator 1
	movq	-88(%rbp), %rax	# mask_, tmp576
	notq	%rax	# D.13282
	andq	%rax, -232(%rbp)	# D.13282, word_
	movq	-240(%rbp), %rax	# ptr_, tmp577
	movl	16(%rax), %eax	# ptr__69->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-420(%rbp), %eax	# word_num_, tmp578
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-424(%rbp), %eax	# bit_num_, tmp579
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB41:
	movq	-488(%rbp), %rax	# deps, tmp580
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp581
	movslq	%edx, %rdx	# tmp581, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp582
	movq	%rax, -80(%rbp)	# tmp582, reg_last
	movq	-80(%rbp), %rax	# reg_last, tmp583
	movq	8(%rax), %rcx	# reg_last_385->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp584
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp584,
	call	add_dependence_list	#
	movq	-80(%rbp), %rax	# reg_last, tmp585
	movq	16(%rax), %rcx	# reg_last_385->clobbers, D.13274
	movq	-504(%rbp), %rax	# insn, tmp586
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp586,
	call	add_dependence_list	#
	movq	-80(%rbp), %rax	# reg_last, tmp587
	movl	24(%rax), %eax	# reg_last_385->uses_length, D.13276
	leal	1(%rax), %edx	#, D.13276
	movq	-80(%rbp), %rax	# reg_last, tmp588
	movl	%edx, 24(%rax)	# D.13276, reg_last_385->uses_length
	movq	-80(%rbp), %rax	# reg_last, tmp589
	movq	(%rax), %rdx	# reg_last_385->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp590
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp590,
	call	alloc_INSN_LIST	#
	movq	-80(%rbp), %rdx	# reg_last, tmp591
	movq	%rax, (%rdx)	# D.13274, reg_last_385->uses
.LBE41:
	cmpq	$0, -232(%rbp)	#, word_
	jne	.L315	#,
	jmp	.L313	#
.L315:
.LBE40:
	.loc 1 1110 0 discriminator 2
	addl	$1, -424(%rbp)	#, bit_num_
.L314:
	.loc 1 1110 0 discriminator 1
	cmpl	$63, -424(%rbp)	#, bit_num_
	jbe	.L316	#,
.L313:
	.loc 1 1110 0 discriminator 2
	movl	$0, -424(%rbp)	#, bit_num_
.LBE39:
	addl	$1, -420(%rbp)	#, word_num_
.L312:
	.loc 1 1110 0 discriminator 1
	cmpl	$1, -420(%rbp)	#, word_num_
	jbe	.L317	#,
	.loc 1 1110 0 discriminator 3
	movl	$0, -420(%rbp)	#, word_num_
	movq	-240(%rbp), %rax	# ptr_, tmp592
	movq	(%rax), %rax	# ptr__69->next, tmp593
	movq	%rax, -240(%rbp)	# tmp593, ptr_
.L311:
	.loc 1 1110 0 discriminator 1
	cmpq	$0, -240(%rbp)	#, ptr_
	jne	.L318	#,
.LBE38:
.LBB42:
	.loc 1 1118 0 is_stmt 1
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.157
	movq	(%rax), %rax	# reg_pending_clobbers.157_397->first, tmp594
	movq	%rax, -224(%rbp)	# tmp594, ptr_
	movl	$0, -376(%rbp)	#, indx_
	movl	$0, -416(%rbp)	#, bit_num_
	movl	$0, -412(%rbp)	#, word_num_
	jmp	.L319	#
.L321:
	.loc 1 1118 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# ptr_, tmp595
	movq	(%rax), %rax	# ptr__79->next, tmp596
	movq	%rax, -224(%rbp)	# tmp596, ptr_
.L319:
	cmpq	$0, -224(%rbp)	#, ptr_
	je	.L320	#,
	.loc 1 1118 0 discriminator 2
	movq	-224(%rbp), %rax	# ptr_, tmp597
	movl	16(%rax), %eax	# ptr__79->indx, D.13281
	cmpl	-376(%rbp), %eax	# indx_, D.13281
	jb	.L321	#,
.L320:
	.loc 1 1118 0 discriminator 3
	cmpq	$0, -224(%rbp)	#, ptr_
	je	.L322	#,
	.loc 1 1118 0 discriminator 1
	movq	-224(%rbp), %rax	# ptr_, tmp598
	movl	16(%rax), %eax	# ptr__79->indx, D.13281
	cmpl	-376(%rbp), %eax	# indx_, D.13281
	je	.L322	#,
	movl	$0, -416(%rbp)	#, bit_num_
	movl	$0, -412(%rbp)	#, word_num_
	jmp	.L323	#
.L322:
	.loc 1 1118 0 discriminator 2
	jmp	.L323	#
.L333:
	.loc 1 1118 0
	jmp	.L324	#
.L332:
.LBB43:
	.loc 1 1118 0 discriminator 2
	movq	-224(%rbp), %rax	# ptr_, tmp599
	movl	-412(%rbp), %edx	# word_num_, tmp600
	addq	$2, %rdx	#, tmp601
	movq	8(%rax,%rdx,8), %rax	# ptr__80->bits, tmp602
	movq	%rax, -216(%rbp)	# tmp602, word_
	cmpq	$0, -216(%rbp)	#, word_
	je	.L325	#,
	.loc 1 1118 0 discriminator 1
	jmp	.L326	#
.L331:
.LBB44:
	.loc 1 1118 0 discriminator 2
	movl	-416(%rbp), %eax	# bit_num_, bit_num_.158
	movl	$1, %edx	#, tmp603
	movl	%eax, %ecx	# bit_num_.158, tmp725
	salq	%cl, %rdx	# tmp725, tmp604
	movq	%rdx, %rax	# tmp604, tmp604
	movq	%rax, -72(%rbp)	# tmp604, mask_
	movq	-72(%rbp), %rax	# mask_, tmp605
	movq	-216(%rbp), %rdx	# word_, tmp606
	andq	%rdx, %rax	# tmp606, D.13282
	testq	%rax, %rax	# D.13282
	je	.L327	#,
	.loc 1 1118 0 discriminator 1
	movq	-72(%rbp), %rax	# mask_, tmp607
	notq	%rax	# D.13282
	andq	%rax, -216(%rbp)	# D.13282, word_
	movq	-224(%rbp), %rax	# ptr_, tmp608
	movl	16(%rax), %eax	# ptr__80->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-412(%rbp), %eax	# word_num_, tmp609
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-416(%rbp), %eax	# bit_num_, tmp610
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB45:
	movq	-488(%rbp), %rax	# deps, tmp611
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp612
	movslq	%edx, %rdx	# tmp612, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp613
	movq	%rax, -64(%rbp)	# tmp613, reg_last
	movq	-64(%rbp), %rax	# reg_last, tmp614
	movq	8(%rax), %rcx	# reg_last_422->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp615
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp615,
	call	add_dependence_list	#
	movq	-64(%rbp), %rax	# reg_last, tmp616
	movq	(%rax), %rcx	# reg_last_422->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp617
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp617,
	call	add_dependence_list	#
	movq	-64(%rbp), %rax	# reg_last, tmp618
	movl	24(%rax), %edx	# reg_last_422->uses_length, D.13276
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.159
	addq	$72, %rax	#, D.13286
	movl	8(%rax), %eax	# _427->value, D.13276
	cmpl	%eax, %edx	# D.13276, D.13276
	jg	.L328	#,
	.loc 1 1118 0 discriminator 2
	movq	-64(%rbp), %rax	# reg_last, tmp619
	movl	28(%rax), %edx	# reg_last_422->clobbers_length, D.13276
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.160
	addq	$72, %rax	#, D.13286
	movl	8(%rax), %eax	# _431->value, D.13276
	cmpl	%eax, %edx	# D.13276, D.13276
	jle	.L329	#,
.L328:
	.loc 1 1118 0 discriminator 1
	movq	-64(%rbp), %rax	# reg_last, tmp620
	leaq	8(%rax), %rcx	#, D.13284
	movq	-504(%rbp), %rax	# insn, tmp621
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp621,
	call	add_dependence_list_and_free	#
	movq	-64(%rbp), %rcx	# reg_last, D.13284
	movq	-504(%rbp), %rax	# insn, tmp622
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp622,
	call	add_dependence_list_and_free	#
	movq	-64(%rbp), %rax	# reg_last, tmp623
	leaq	16(%rax), %rcx	#, D.13284
	movq	-504(%rbp), %rax	# insn, tmp624
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp624,
	call	add_dependence_list_and_free	#
	movq	-64(%rbp), %rax	# reg_last, tmp625
	movl	$0, 28(%rax)	#, reg_last_422->clobbers_length
	movq	-64(%rbp), %rax	# reg_last, tmp626
	movl	$0, 24(%rax)	#, reg_last_422->uses_length
	jmp	.L330	#
.L329:
	movq	-64(%rbp), %rax	# reg_last, tmp627
	movq	8(%rax), %rcx	# reg_last_422->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp628
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp628,
	call	add_dependence_list	#
	movq	-64(%rbp), %rax	# reg_last, tmp629
	movq	(%rax), %rcx	# reg_last_422->uses, D.13274
	movq	-504(%rbp), %rax	# insn, tmp630
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp630,
	call	add_dependence_list	#
.L330:
	movq	-64(%rbp), %rax	# reg_last, tmp631
	movl	28(%rax), %eax	# reg_last_422->clobbers_length, D.13276
	leal	1(%rax), %edx	#, D.13276
	movq	-64(%rbp), %rax	# reg_last, tmp632
	movl	%edx, 28(%rax)	# D.13276, reg_last_422->clobbers_length
	movq	-64(%rbp), %rax	# reg_last, tmp633
	movq	16(%rax), %rdx	# reg_last_422->clobbers, D.13274
	movq	-504(%rbp), %rax	# insn, tmp634
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp634,
	call	alloc_INSN_LIST	#
	movq	-64(%rbp), %rdx	# reg_last, tmp635
	movq	%rax, 16(%rdx)	# D.13274, reg_last_422->clobbers
.LBE45:
	cmpq	$0, -216(%rbp)	#, word_
	jne	.L327	#,
	jmp	.L325	#
.L327:
.LBE44:
	.loc 1 1118 0 discriminator 2
	addl	$1, -416(%rbp)	#, bit_num_
.L326:
	.loc 1 1118 0 discriminator 1
	cmpl	$63, -416(%rbp)	#, bit_num_
	jbe	.L331	#,
.L325:
	.loc 1 1118 0 discriminator 2
	movl	$0, -416(%rbp)	#, bit_num_
.LBE43:
	addl	$1, -412(%rbp)	#, word_num_
.L324:
	.loc 1 1118 0 discriminator 1
	cmpl	$1, -412(%rbp)	#, word_num_
	jbe	.L332	#,
	.loc 1 1118 0 discriminator 3
	movl	$0, -412(%rbp)	#, word_num_
	movq	-224(%rbp), %rax	# ptr_, tmp636
	movq	(%rax), %rax	# ptr__80->next, tmp637
	movq	%rax, -224(%rbp)	# tmp637, ptr_
.L323:
	.loc 1 1118 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, ptr_
	jne	.L333	#,
.LBE42:
.LBB46:
	.loc 1 1143 0 is_stmt 1
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.161
	movq	(%rax), %rax	# reg_pending_sets.161_447->first, tmp638
	movq	%rax, -208(%rbp)	# tmp638, ptr_
	movl	$0, -372(%rbp)	#, indx_
	movl	$0, -408(%rbp)	#, bit_num_
	movl	$0, -404(%rbp)	#, word_num_
	jmp	.L334	#
.L336:
	.loc 1 1143 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# ptr_, tmp639
	movq	(%rax), %rax	# ptr__90->next, tmp640
	movq	%rax, -208(%rbp)	# tmp640, ptr_
.L334:
	cmpq	$0, -208(%rbp)	#, ptr_
	je	.L335	#,
	.loc 1 1143 0 discriminator 2
	movq	-208(%rbp), %rax	# ptr_, tmp641
	movl	16(%rax), %eax	# ptr__90->indx, D.13281
	cmpl	-372(%rbp), %eax	# indx_, D.13281
	jb	.L336	#,
.L335:
	.loc 1 1143 0 discriminator 3
	cmpq	$0, -208(%rbp)	#, ptr_
	je	.L337	#,
	.loc 1 1143 0 discriminator 1
	movq	-208(%rbp), %rax	# ptr_, tmp642
	movl	16(%rax), %eax	# ptr__90->indx, D.13281
	cmpl	-372(%rbp), %eax	# indx_, D.13281
	je	.L337	#,
	movl	$0, -408(%rbp)	#, bit_num_
	movl	$0, -404(%rbp)	#, word_num_
	jmp	.L338	#
.L337:
	.loc 1 1143 0 discriminator 2
	jmp	.L338	#
.L345:
	.loc 1 1143 0
	jmp	.L339	#
.L344:
.LBB47:
	.loc 1 1143 0 discriminator 2
	movq	-208(%rbp), %rax	# ptr_, tmp643
	movl	-404(%rbp), %edx	# word_num_, tmp644
	addq	$2, %rdx	#, tmp645
	movq	8(%rax,%rdx,8), %rax	# ptr__91->bits, tmp646
	movq	%rax, -200(%rbp)	# tmp646, word_
	cmpq	$0, -200(%rbp)	#, word_
	je	.L340	#,
	.loc 1 1143 0 discriminator 1
	jmp	.L341	#
.L343:
.LBB48:
	.loc 1 1143 0 discriminator 2
	movl	-408(%rbp), %eax	# bit_num_, bit_num_.162
	movl	$1, %edx	#, tmp647
	movl	%eax, %ecx	# bit_num_.162, tmp728
	salq	%cl, %rdx	# tmp728, tmp648
	movq	%rdx, %rax	# tmp648, tmp648
	movq	%rax, -56(%rbp)	# tmp648, mask_
	movq	-56(%rbp), %rax	# mask_, tmp649
	movq	-200(%rbp), %rdx	# word_, tmp650
	andq	%rdx, %rax	# tmp650, D.13282
	testq	%rax, %rax	# D.13282
	je	.L342	#,
	.loc 1 1143 0 discriminator 1
	movq	-56(%rbp), %rax	# mask_, tmp651
	notq	%rax	# D.13282
	andq	%rax, -200(%rbp)	# D.13282, word_
	movq	-208(%rbp), %rax	# ptr_, tmp652
	movl	16(%rax), %eax	# ptr__91->indx, D.13281
	leal	(%rax,%rax), %edx	#, D.13281
	movl	-404(%rbp), %eax	# word_num_, tmp653
	addl	%edx, %eax	# D.13281, D.13281
	sall	$6, %eax	#, D.13281
	movl	%eax, %edx	# D.13281, D.13281
	movl	-408(%rbp), %eax	# bit_num_, tmp654
	addl	%edx, %eax	# D.13281, D.13281
	movl	%eax, -472(%rbp)	# D.13281, i
.LBB49:
	movq	-488(%rbp), %rax	# deps, tmp655
	movq	72(%rax), %rax	# deps_109(D)->reg_last, D.13283
	movl	-472(%rbp), %edx	# i, tmp656
	movslq	%edx, %rdx	# tmp656, D.13282
	salq	$5, %rdx	#, D.13282
	addq	%rdx, %rax	# D.13282, tmp657
	movq	%rax, -48(%rbp)	# tmp657, reg_last
	movq	-48(%rbp), %rax	# reg_last, tmp658
	leaq	8(%rax), %rcx	#, D.13284
	movq	-504(%rbp), %rax	# insn, tmp659
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp659,
	call	add_dependence_list_and_free	#
	movq	-48(%rbp), %rax	# reg_last, tmp660
	leaq	16(%rax), %rcx	#, D.13284
	movq	-504(%rbp), %rax	# insn, tmp661
	movl	$15, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp661,
	call	add_dependence_list_and_free	#
	movq	-48(%rbp), %rcx	# reg_last, D.13284
	movq	-504(%rbp), %rax	# insn, tmp662
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13284,
	movq	%rax, %rdi	# tmp662,
	call	add_dependence_list_and_free	#
	movq	-48(%rbp), %rax	# reg_last, tmp663
	movq	8(%rax), %rdx	# reg_last_472->sets, D.13274
	movq	-504(%rbp), %rax	# insn, tmp664
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp664,
	call	alloc_INSN_LIST	#
	movq	-48(%rbp), %rdx	# reg_last, tmp665
	movq	%rax, 8(%rdx)	# D.13274, reg_last_472->sets
	movq	-48(%rbp), %rax	# reg_last, tmp666
	movl	$0, 24(%rax)	#, reg_last_472->uses_length
	movq	-48(%rbp), %rax	# reg_last, tmp667
	movl	$0, 28(%rax)	#, reg_last_472->clobbers_length
.LBE49:
	cmpq	$0, -200(%rbp)	#, word_
	jne	.L342	#,
	jmp	.L340	#
.L342:
.LBE48:
	.loc 1 1143 0 discriminator 2
	addl	$1, -408(%rbp)	#, bit_num_
.L341:
	.loc 1 1143 0 discriminator 1
	cmpl	$63, -408(%rbp)	#, bit_num_
	jbe	.L343	#,
.L340:
	.loc 1 1143 0 discriminator 2
	movl	$0, -408(%rbp)	#, bit_num_
.LBE47:
	addl	$1, -404(%rbp)	#, word_num_
.L339:
	.loc 1 1143 0 discriminator 1
	cmpl	$1, -404(%rbp)	#, word_num_
	jbe	.L344	#,
	.loc 1 1143 0 discriminator 3
	movl	$0, -404(%rbp)	#, word_num_
	movq	-208(%rbp), %rax	# ptr_, tmp668
	movq	(%rax), %rax	# ptr__91->next, tmp669
	movq	%rax, -208(%rbp)	# tmp669, ptr_
.L338:
	.loc 1 1143 0 discriminator 1
	cmpq	$0, -208(%rbp)	#, ptr_
	jne	.L345	#,
.L306:
.LBE46:
	.loc 1 1158 0 is_stmt 1
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.163
	movq	-488(%rbp), %rdx	# deps, tmp670
	leaq	80(%rdx), %rsi	#, D.13285
	movq	-488(%rbp), %rdx	# deps, tmp671
	leaq	80(%rdx), %rdi	#, D.13285
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# reg_pending_uses.163,
	call	bitmap_operation	#
	.loc 1 1159 0
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.164
	movq	-488(%rbp), %rdx	# deps, tmp672
	leaq	80(%rdx), %rsi	#, D.13285
	movq	-488(%rbp), %rdx	# deps, tmp673
	leaq	80(%rdx), %rdi	#, D.13285
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# reg_pending_clobbers.164,
	call	bitmap_operation	#
	.loc 1 1160 0
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.165
	movq	-488(%rbp), %rdx	# deps, tmp674
	leaq	80(%rdx), %rsi	#, D.13285
	movq	-488(%rbp), %rdx	# deps, tmp675
	leaq	80(%rdx), %rdi	#, D.13285
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# reg_pending_sets.165,
	call	bitmap_operation	#
.L268:
	.loc 1 1162 0
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.166
	movq	%rax, %rdi	# reg_pending_uses.166,
	call	bitmap_clear	#
	.loc 1 1163 0
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.167
	movq	%rax, %rdi	# reg_pending_clobbers.167,
	call	bitmap_clear	#
	.loc 1 1164 0
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.168
	movq	%rax, %rdi	# reg_pending_sets.168,
	call	bitmap_clear	#
	.loc 1 1175 0
	movq	-488(%rbp), %rax	# deps, tmp676
	movzbl	64(%rax), %eax	# deps_109(D)->in_post_call_group_p, D.13280
	testb	%al, %al	# D.13280
	je	.L209	#,
.LBB50:
	.loc 1 1177 0
	movq	-504(%rbp), %rax	# insn, tmp677
	movzwl	(%rax), %eax	# insn_110(D)->code, D.13273
	movzwl	%ax, %eax	# D.13273, D.13276
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13287
	cmpb	$105, %al	#, D.13287
	jne	.L347	#,
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movq	-504(%rbp), %rax	# insn, tmp679
	movq	32(%rax), %rax	# insn_110(D)->fld[3].rtx, D.13274
	movzwl	(%rax), %eax	# _499->code, D.13273
	cmpw	$47, %ax	#, D.13273
	jne	.L348	#,
	.loc 1 1177 0 discriminator 3
	movq	-504(%rbp), %rax	# insn, tmp680
	movq	32(%rax), %rax	# insn_110(D)->fld[3].rtx, iftmp.170
	jmp	.L350	#
.L348:
	.loc 1 1177 0 discriminator 4
	movq	-504(%rbp), %rax	# insn, tmp681
	movq	32(%rax), %rdx	# insn_110(D)->fld[3].rtx, D.13274
	movq	-504(%rbp), %rax	# insn, tmp682
	movq	%rdx, %rsi	# D.13274,
	movq	%rax, %rdi	# tmp682,
	call	single_set_2	#
	jmp	.L350	#
.L347:
	.loc 1 1177 0 discriminator 2
	movl	$0, %eax	#, iftmp.169
.L350:
	.loc 1 1177 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.169, set
	.loc 1 1180 0 is_stmt 1 discriminator 5
	cmpq	$0, -40(%rbp)	#, set
	jne	.L351	#,
	.loc 1 1181 0
	jmp	.L352	#
.L351:
	.loc 1 1183 0
	movq	-40(%rbp), %rax	# set, tmp683
	movq	8(%rax), %rax	# set_506->fld[0].rtx, tmp684
	movq	%rax, -192(%rbp)	# tmp684, tmp
	.loc 1 1184 0
	movq	-192(%rbp), %rax	# tmp, tmp685
	movzwl	(%rax), %eax	# tmp_507->code, D.13273
	cmpw	$63, %ax	#, D.13273
	jne	.L353	#,
	.loc 1 1185 0
	movq	-192(%rbp), %rax	# tmp, tmp686
	movq	8(%rax), %rax	# tmp_507->fld[0].rtx, tmp687
	movq	%rax, -192(%rbp)	# tmp687, tmp
.L353:
	.loc 1 1186 0
	movq	-192(%rbp), %rax	# tmp, tmp688
	movzwl	(%rax), %eax	# tmp_101->code, D.13273
	cmpw	$61, %ax	#, D.13273
	jne	.L354	#,
	.loc 1 1187 0
	movq	-192(%rbp), %rax	# tmp, tmp689
	movl	8(%rax), %eax	# tmp_101->fld[0].rtuint, D.13281
	movl	%eax, -368(%rbp)	# D.13281, dest_regno
	.loc 1 1191 0
	movq	-40(%rbp), %rax	# set, tmp690
	movq	16(%rax), %rax	# set_506->fld[1].rtx, tmp691
	movq	%rax, -192(%rbp)	# tmp691, tmp
	.loc 1 1192 0
	movq	-192(%rbp), %rax	# tmp, tmp692
	movzwl	(%rax), %eax	# tmp_513->code, D.13273
	cmpw	$63, %ax	#, D.13273
	jne	.L356	#,
	jmp	.L360	#
.L354:
	.loc 1 1189 0
	jmp	.L352	#
.L360:
	.loc 1 1193 0
	movq	-192(%rbp), %rax	# tmp, tmp693
	movq	8(%rax), %rax	# tmp_513->fld[0].rtx, tmp694
	movq	%rax, -192(%rbp)	# tmp694, tmp
.L356:
	.loc 1 1194 0
	movq	-192(%rbp), %rax	# tmp, tmp695
	movzwl	(%rax), %eax	# tmp_102->code, D.13273
	cmpw	$61, %ax	#, D.13273
	jne	.L357	#,
	.loc 1 1195 0
	movq	-192(%rbp), %rax	# tmp, tmp696
	movl	8(%rax), %eax	# tmp_102->fld[0].rtuint, D.13281
	movl	%eax, -364(%rbp)	# D.13281, src_regno
	.loc 1 1199 0
	cmpl	$52, -364(%rbp)	#, src_regno
	jle	.L359	#,
	jmp	.L361	#
.L357:
	.loc 1 1197 0
	jmp	.L352	#
.L361:
	.loc 1 1200 0
	cmpl	$52, -368(%rbp)	#, dest_regno
	jg	.L352	#,
.L359:
	.loc 1 1202 0
	movq	-504(%rbp), %rax	# insn, tmp697
	movq	%rax, %rdi	# tmp697,
	call	set_sched_group_p	#
	.loc 1 1203 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.171
	movq	-504(%rbp), %rax	# insn, tmp698
	movl	8(%rax), %eax	# insn_110(D)->fld[0].rtint, D.13276
	movslq	%eax, %rdx	# D.13276, D.13282
	movq	%rdx, %rax	# D.13282, tmp699
	addq	%rax, %rax	# tmp699
	addq	%rdx, %rax	# D.13282, tmp699
	salq	$4, %rax	#, tmp700
	addq	%rcx, %rax	# h_i_d.171, D.13288
	movzbl	46(%rax), %edx	# _523->cant_move, tmp703
	orl	$1, %edx	#, tmp704
	movb	%dl, 46(%rax)	# tmp704, _523->cant_move
	jmp	.L209	#
.L352:
	.loc 1 1208 0
	movq	-488(%rbp), %rax	# deps, tmp705
	movb	$0, 64(%rax)	#, deps_109(D)->in_post_call_group_p
.L209:
.LBE50:
	.loc 1 1211 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sched_analyze_insn, .-sched_analyze_insn
	.globl	sched_analyze
	.type	sched_analyze, @function
sched_analyze:
.LFB17:
	.loc 1 1220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# deps, deps
	movq	%rsi, -48(%rbp)	# head, head
	movq	%rdx, -56(%rbp)	# tail, tail
	.loc 1 1222 0
	movq	$0, -16(%rbp)	#, loop_notes
	.loc 1 1224 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.172
	movzbl	96(%rax), %eax	# *current_sched_info.172_7, D.13289
	andl	$2, %eax	#, D.13289
	testb	%al, %al	# D.13289
	je	.L363	#,
	.loc 1 1225 0
	call	cselib_init	#
.L363:
	.loc 1 1227 0
	movq	-48(%rbp), %rax	# head, tmp129
	movq	%rax, -24(%rbp)	# tmp129, insn
.L390:
	.loc 1 1229 0
	movq	-24(%rbp), %rax	# insn, tmp130
	movzwl	(%rax), %eax	# insn_1->code, D.13290
	cmpw	$32, %ax	#, D.13290
	je	.L364	#,
	.loc 1 1229 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp131
	movzwl	(%rax), %eax	# insn_1->code, D.13290
	cmpw	$33, %ax	#, D.13290
	jne	.L365	#,
.L364:
	.loc 1 1232 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp132
	addq	$48, %rax	#, D.13294
	movq	%rax, %rdi	# D.13294,
	call	free_INSN_LIST_list	#
	.loc 1 1235 0
	movq	-24(%rbp), %rax	# insn, tmp133
	movzbl	3(%rax), %edx	# insn_1->in_struct, tmp136
	andl	$-17, %edx	#, tmp137
	movb	%dl, 3(%rax)	# tmp137, insn_1->in_struct
	.loc 1 1239 0
	movq	-24(%rbp), %rax	# insn, tmp138
	movzwl	(%rax), %eax	# insn_1->code, D.13290
	cmpw	$33, %ax	#, D.13290
	jne	.L366	#,
	.loc 1 1242 0
	movq	-40(%rbp), %rax	# deps, tmp139
	movl	36(%rax), %eax	# deps_36(D)->pending_flush_length, D.13291
	leal	1(%rax), %ecx	#, D.13291
	movq	-40(%rbp), %rdx	# deps, tmp140
	movl	%ecx, 36(%rdx)	# D.13291, deps_36(D)->pending_flush_length
	movq	compiler_params(%rip), %rdx	# compiler_params, compiler_params.173
	addq	$72, %rdx	#, D.13300
	movl	8(%rdx), %edx	# _79->value, D.13291
	cmpl	%edx, %eax	# D.13291, D.13291
	jle	.L367	#,
	.loc 1 1243 0
	movq	-24(%rbp), %rsi	# insn, tmp141
	movq	-40(%rbp), %rax	# deps, tmp142
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp142,
	call	flush_pending_lists	#
	jmp	.L366	#
.L367:
	.loc 1 1246 0
	movq	-40(%rbp), %rax	# deps, tmp143
	movq	40(%rax), %rdx	# deps_36(D)->last_pending_memory_flush, D.13295
	movq	-24(%rbp), %rax	# insn, tmp144
	movq	%rdx, %rsi	# D.13295,
	movq	%rax, %rdi	# tmp144,
	call	alloc_INSN_LIST	#
	movq	-40(%rbp), %rdx	# deps, tmp145
	movq	%rax, 40(%rdx)	# D.13295, deps_36(D)->last_pending_memory_flush
.L366:
	.loc 1 1248 0
	movq	-24(%rbp), %rax	# insn, tmp146
	movq	32(%rax), %rsi	# insn_1->fld[3].rtx, D.13295
	movq	-16(%rbp), %rcx	# loop_notes, tmp147
	movq	-24(%rbp), %rdx	# insn, tmp148
	movq	-40(%rbp), %rax	# deps, tmp149
	movq	%rax, %rdi	# tmp149,
	call	sched_analyze_insn	#
	.loc 1 1249 0
	movq	$0, -16(%rbp)	#, loop_notes
	jmp	.L368	#
.L365:
	.loc 1 1251 0
	movq	-24(%rbp), %rax	# insn, tmp150
	movzwl	(%rax), %eax	# insn_1->code, D.13290
	cmpw	$34, %ax	#, D.13290
	jne	.L369	#,
.LBB51:
	.loc 1 1256 0
	movq	-24(%rbp), %rax	# insn, tmp151
	movzbl	3(%rax), %edx	# insn_1->in_struct, tmp154
	andl	$-17, %edx	#, tmp155
	movb	%dl, 3(%rax)	# tmp155, insn_1->in_struct
	.loc 1 1258 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.174
	movq	-24(%rbp), %rax	# insn, tmp156
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.13291
	movslq	%eax, %rdx	# D.13291, D.13292
	movq	%rdx, %rax	# D.13292, tmp157
	addq	%rax, %rax	# tmp157
	addq	%rdx, %rax	# D.13292, tmp157
	salq	$4, %rax	#, tmp158
	addq	%rcx, %rax	# h_i_d.174, D.13293
	movzbl	46(%rax), %edx	# _19->cant_move, tmp161
	orl	$1, %edx	#, tmp162
	movb	%dl, 46(%rax)	# tmp162, _19->cant_move
	.loc 1 1261 0
	movq	-24(%rbp), %rax	# insn, tmp163
	addq	$48, %rax	#, D.13294
	movq	%rax, %rdi	# D.13294,
	call	free_INSN_LIST_list	#
	.loc 1 1263 0
	movq	-24(%rbp), %rax	# insn, tmp164
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13295
	je	.L370	#,
	.loc 1 1267 0
	movb	$1, reg_pending_barrier(%rip)	#, reg_pending_barrier
	jmp	.L371	#
.L370:
	.loc 1 1271 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L372	#
.L378:
	.loc 1 1273 0
	movl	-28(%rbp), %eax	# i, tmp166
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.13296
	testb	%al, %al	# D.13296
	je	.L373	#,
	.loc 1 1275 0
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.175
	movl	-28(%rbp), %edx	# i, tmp167
	movl	%edx, %esi	# tmp167,
	movq	%rax, %rdi	# reg_pending_sets.175,
	call	bitmap_set_bit	#
	.loc 1 1276 0
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.176
	movl	-28(%rbp), %edx	# i, tmp168
	movl	%edx, %esi	# tmp168,
	movq	%rax, %rdi	# reg_pending_uses.176,
	call	bitmap_set_bit	#
	jmp	.L374	#
.L373:
	.loc 1 1279 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.177
	movl	-28(%rbp), %eax	# i, tmp169
	movl	%eax, %ecx	# tmp169, tmp229
	shrq	%cl, %rdx	# tmp229, D.13292
	movq	%rdx, %rax	# D.13292, D.13292
	andl	$1, %eax	#, D.13292
	testq	%rax, %rax	# D.13292
	je	.L375	#,
	.loc 1 1280 0
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.178
	movl	-28(%rbp), %edx	# i, tmp170
	movl	%edx, %esi	# tmp170,
	movq	%rax, %rdi	# reg_pending_clobbers.178,
	call	bitmap_set_bit	#
	jmp	.L374	#
.L375:
	.loc 1 1284 0
	movl	-28(%rbp), %eax	# i, tmp172
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.13296
	testb	%al, %al	# D.13296
	je	.L376	#,
	.loc 1 1285 0
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.179
	movl	-28(%rbp), %edx	# i, tmp173
	movl	%edx, %esi	# tmp173,
	movq	%rax, %rdi	# reg_pending_uses.179,
	call	bitmap_set_bit	#
	jmp	.L374	#
.L376:
	.loc 1 1291 0
	cmpl	$20, -28(%rbp)	#, i
	je	.L377	#,
	.loc 1 1292 0
	cmpl	$6, -28(%rbp)	#, i
	jne	.L374	#,
	.loc 1 1293 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.180
	testl	%eax, %eax	# reload_completed.180
	je	.L377	#,
	.loc 1 1293 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.181
	testl	%eax, %eax	# frame_pointer_needed.181
	je	.L374	#,
.L377:
	.loc 1 1294 0 is_stmt 1
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.182
	movl	-28(%rbp), %edx	# i, tmp174
	movl	%edx, %esi	# tmp174,
	movq	%rax, %rdi	# reg_pending_uses.182,
	call	bitmap_set_bit	#
.L374:
	.loc 1 1271 0
	addl	$1, -28(%rbp)	#, i
.L372:
	.loc 1 1271 0 is_stmt 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, i
	jle	.L378	#,
.L371:
	.loc 1 1299 0 is_stmt 1
	movq	-40(%rbp), %rax	# deps, tmp175
	leaq	56(%rax), %rcx	#, D.13294
	movq	-24(%rbp), %rax	# insn, tmp176
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# D.13294,
	movq	%rax, %rdi	# tmp176,
	call	add_dependence_list_and_free	#
	.loc 1 1302 0
	movq	-24(%rbp), %rax	# insn, tmp177
	movq	32(%rax), %rsi	# insn_1->fld[3].rtx, D.13295
	movq	-16(%rbp), %rcx	# loop_notes, tmp178
	movq	-24(%rbp), %rdx	# insn, tmp179
	movq	-40(%rbp), %rax	# deps, tmp180
	movq	%rax, %rdi	# tmp180,
	call	sched_analyze_insn	#
	.loc 1 1303 0
	movq	$0, -16(%rbp)	#, loop_notes
	.loc 1 1309 0
	movq	-24(%rbp), %rax	# insn, tmp181
	movzbl	3(%rax), %eax	# *insn_1, D.13289
	andl	$4, %eax	#, D.13289
	testb	%al, %al	# D.13289
	sete	%al	#, D.13297
	movzbl	%al, %edx	# D.13297, D.13291
	movq	-24(%rbp), %rsi	# insn, tmp182
	movq	-40(%rbp), %rax	# deps, tmp183
	movl	%edx, %ecx	# D.13291,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp183,
	call	flush_pending_lists	#
	.loc 1 1312 0
	movq	-40(%rbp), %rax	# deps, tmp184
	addq	$48, %rax	#, D.13294
	movq	%rax, %rdi	# D.13294,
	call	free_INSN_LIST_list	#
	.loc 1 1313 0
	movq	-24(%rbp), %rax	# insn, tmp185
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	alloc_INSN_LIST	#
	movq	-40(%rbp), %rdx	# deps, tmp186
	movq	%rax, 48(%rdx)	# D.13295, deps_36(D)->last_function_call
	.loc 1 1317 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.183
	testl	%eax, %eax	# reload_completed.183
	jne	.L379	#,
	.loc 1 1318 0
	movq	-40(%rbp), %rax	# deps, tmp187
	movb	$1, 64(%rax)	#, deps_36(D)->in_post_call_group_p
.LBE51:
	jmp	.L368	#
.L379:
	jmp	.L368	#
.L369:
	.loc 1 1324 0
	movq	-24(%rbp), %rax	# insn, tmp188
	movzwl	(%rax), %eax	# insn_1->code, D.13290
	cmpw	$37, %ax	#, D.13290
	jne	.L380	#,
	.loc 1 1325 0
	movq	-24(%rbp), %rax	# insn, tmp189
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-83, %eax	#, D.13291
	je	.L381	#,
	.loc 1 1326 0
	movq	-24(%rbp), %rax	# insn, tmp190
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-82, %eax	#, D.13291
	jne	.L380	#,
.L381:
	.loc 1 1328 0
	movq	-24(%rbp), %rax	# insn, tmp191
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13295
	movq	-16(%rbp), %rdx	# loop_notes, tmp192
	movq	%rax, %rsi	# D.13295,
	movl	$24, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, -16(%rbp)	# tmp193, loop_notes
	.loc 1 1331 0
	movq	-24(%rbp), %rax	# insn, tmp194
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	.loc 1 1330 0
	cltq
	movq	%rax, %rsi	# D.13298,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-16(%rbp), %rdx	# loop_notes, tmp195
	movq	%rax, %rsi	# D.13295,
	movl	$24, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, -16(%rbp)	# tmp196, loop_notes
	jmp	.L368	#
.L380:
	.loc 1 1334 0
	movq	-24(%rbp), %rax	# insn, tmp197
	movzwl	(%rax), %eax	# insn_1->code, D.13290
	cmpw	$37, %ax	#, D.13290
	jne	.L368	#,
	.loc 1 1335 0
	movq	-24(%rbp), %rax	# insn, tmp198
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-96, %eax	#, D.13291
	je	.L382	#,
	.loc 1 1336 0
	movq	-24(%rbp), %rax	# insn, tmp199
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-95, %eax	#, D.13291
	je	.L382	#,
	.loc 1 1337 0
	movq	-24(%rbp), %rax	# insn, tmp200
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-86, %eax	#, D.13291
	je	.L382	#,
	.loc 1 1338 0
	movq	-24(%rbp), %rax	# insn, tmp201
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-85, %eax	#, D.13291
	jne	.L368	#,
.L382:
.LBB52:
	.loc 1 1342 0
	movq	-24(%rbp), %rax	# insn, tmp202
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-86, %eax	#, D.13291
	je	.L383	#,
	.loc 1 1343 0
	movq	-24(%rbp), %rax	# insn, tmp203
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	cmpl	$-85, %eax	#, D.13291
	jne	.L384	#,
.L383:
	.loc 1 1344 0
	movq	-24(%rbp), %rax	# insn, tmp204
	movl	32(%rax), %eax	# insn_1->fld[3].rtint, D.13291
	cltq
	movq	%rax, %rsi	# D.13298,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -8(%rbp)	# tmp205, rtx_region
	jmp	.L385	#
.L384:
	.loc 1 1346 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -8(%rbp)	# tmp206, rtx_region
.L385:
	.loc 1 1348 0
	movq	-16(%rbp), %rdx	# loop_notes, tmp207
	movq	-8(%rbp), %rax	# rtx_region, tmp208
	movq	%rax, %rsi	# tmp208,
	movl	$24, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, -16(%rbp)	# tmp209, loop_notes
	.loc 1 1352 0
	movq	-24(%rbp), %rax	# insn, tmp210
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13291
	.loc 1 1351 0
	cltq
	movq	%rax, %rsi	# D.13298,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-16(%rbp), %rdx	# loop_notes, tmp211
	movq	%rax, %rsi	# D.13295,
	movl	$24, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, -16(%rbp)	# tmp212, loop_notes
	.loc 1 1354 0
	movq	-24(%rbp), %rax	# insn, tmp213
	movzbl	3(%rax), %eax	# *insn_1, tmp216
	shrb	$2, %al	#, D.13299
	andl	$1, %eax	#, D.13299
	movq	-16(%rbp), %rdx	# loop_notes, tmp217
	andl	$1, %eax	#, tmp219
	leal	0(,%rax,4), %ecx	#, tmp220
	movzbl	3(%rdx), %eax	# loop_notes_71->unchanging, tmp221
	andl	$-5, %eax	#, tmp222
	orl	%ecx, %eax	# tmp220, tmp223
	movb	%al, 3(%rdx)	# tmp223, loop_notes_71->unchanging
.L368:
.LBE52:
	.loc 1 1357 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.184
	movzbl	96(%rax), %eax	# *current_sched_info.184_85, D.13289
	andl	$2, %eax	#, D.13289
	testb	%al, %al	# D.13289
	je	.L386	#,
	.loc 1 1358 0
	movq	-24(%rbp), %rax	# insn, tmp224
	movq	%rax, %rdi	# tmp224,
	call	cselib_process_insn	#
.L386:
	.loc 1 1359 0
	movq	-24(%rbp), %rax	# insn, tmp225
	cmpq	-56(%rbp), %rax	# tail, tmp225
	jne	.L387	#,
	.loc 1 1361 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.185
	movzbl	96(%rax), %eax	# *current_sched_info.185_89, D.13289
	andl	$2, %eax	#, D.13289
	testb	%al, %al	# D.13289
	je	.L388	#,
	.loc 1 1362 0
	call	cselib_finish	#
	.loc 1 1363 0
	jmp	.L362	#
.L388:
	jmp	.L362	#
.L387:
	.loc 1 1227 0
	movq	-24(%rbp), %rax	# insn, tmp226
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp227
	movq	%rax, -24(%rbp)	# tmp227, insn
	.loc 1 1365 0
	jmp	.L390	#
.L362:
	.loc 1 1367 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sched_analyze, .-sched_analyze
	.globl	compute_forward_dependences
	.type	compute_forward_dependences, @function
compute_forward_dependences:
.LFB18:
	.loc 1 1376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# head, head
	movq	%rsi, -64(%rbp)	# tail, tail
	.loc 1 1381 0
	movq	-64(%rbp), %rax	# tail, tmp89
	movq	24(%rax), %rax	# tail_4(D)->fld[2].rtx, tmp90
	movq	%rax, -24(%rbp)	# tmp90, next_tail
	.loc 1 1382 0
	movq	-56(%rbp), %rax	# head, tmp91
	movq	%rax, -40(%rbp)	# tmp91, insn
	jmp	.L392	#
.L399:
	.loc 1 1384 0
	movq	-40(%rbp), %rax	# insn, tmp92
	movzwl	(%rax), %eax	# insn_2->code, D.13301
	movzwl	%ax, %eax	# D.13301, D.13302
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13303
	cmpb	$105, %al	#, D.13303
	je	.L393	#,
	.loc 1 1385 0
	jmp	.L394	#
.L393:
	.loc 1 1387 0
	movq	-40(%rbp), %rax	# insn, tmp94
	movq	%rax, %rdi	# tmp94,
	call	group_leader	#
	movq	%rax, -40(%rbp)	# tmp95, insn
	.loc 1 1389 0
	movq	-40(%rbp), %rax	# insn, tmp96
	movq	48(%rax), %rax	# insn_11->fld[5].rtx, tmp97
	movq	%rax, -32(%rbp)	# tmp97, link
	jmp	.L395	#
.L398:
.LBB53:
	.loc 1 1391 0
	movq	-32(%rbp), %rax	# link, tmp98
	movq	8(%rax), %rax	# link_3->fld[0].rtx, D.13304
	movq	%rax, %rdi	# D.13304,
	call	group_leader	#
	movq	%rax, -16(%rbp)	# tmp99, x
	.loc 1 1394 0
	movq	-32(%rbp), %rax	# link, tmp100
	movq	8(%rax), %rax	# link_3->fld[0].rtx, D.13304
	cmpq	-16(%rbp), %rax	# x, D.13304
	je	.L396	#,
	.loc 1 1395 0
	jmp	.L397	#
.L396:
	.loc 1 1417 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.186
	movq	-16(%rbp), %rax	# x, tmp101
	movl	8(%rax), %eax	# x_14->fld[0].rtint, D.13302
	movslq	%eax, %rdx	# D.13302, D.13305
	movq	%rdx, %rax	# D.13305, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# D.13305, tmp102
	salq	$4, %rax	#, tmp103
	addq	%rcx, %rax	# h_i_d.186, D.13306
	movq	(%rax), %rdx	# _20->depend, D.13304
	movq	-40(%rbp), %rax	# insn, tmp104
	movq	%rdx, %rsi	# D.13304,
	movq	%rax, %rdi	# tmp104,
	call	alloc_INSN_LIST	#
	movq	%rax, -8(%rbp)	# tmp105, new_link
	.loc 1 1419 0
	movq	-32(%rbp), %rax	# link, tmp106
	movzbl	2(%rax), %eax	# link_3->mode, D.13307
	movzbl	%al, %eax	# D.13307, tmp107
	movl	%eax, -44(%rbp)	# tmp107, dep_type
	.loc 1 1420 0
	movl	-44(%rbp), %eax	# dep_type, tmp108
	movl	%eax, %edx	# tmp108, D.13307
	movq	-8(%rbp), %rax	# new_link, tmp109
	movb	%dl, 2(%rax)	# D.13307, new_link_22->mode
	.loc 1 1422 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.187
	movq	-16(%rbp), %rax	# x, tmp110
	movl	8(%rax), %eax	# x_14->fld[0].rtint, D.13302
	movslq	%eax, %rdx	# D.13302, D.13305
	movq	%rdx, %rax	# D.13305, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# D.13305, tmp111
	salq	$4, %rax	#, tmp112
	leaq	(%rcx,%rax), %rdx	#, D.13306
	movq	-8(%rbp), %rax	# new_link, tmp113
	movq	%rax, (%rdx)	# tmp113, _30->depend
	.loc 1 1423 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.188
	movq	-40(%rbp), %rax	# insn, tmp114
	movl	8(%rax), %eax	# insn_11->fld[0].rtint, D.13302
	movslq	%eax, %rdx	# D.13302, D.13305
	movq	%rdx, %rax	# D.13305, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# D.13305, tmp115
	salq	$4, %rax	#, tmp116
	addq	%rax, %rcx	# D.13305, D.13306
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.189
	movq	-40(%rbp), %rax	# insn, tmp117
	movl	8(%rax), %eax	# insn_11->fld[0].rtint, D.13302
	movslq	%eax, %rdx	# D.13302, D.13305
	movq	%rdx, %rax	# D.13305, tmp118
	addq	%rax, %rax	# tmp118
	addq	%rdx, %rax	# D.13305, tmp118
	salq	$4, %rax	#, tmp119
	addq	%rsi, %rax	# h_i_d.189, D.13306
	movl	24(%rax), %eax	# _40->dep_count, D.13302
	addl	$1, %eax	#, D.13302
	movl	%eax, 24(%rcx)	# D.13302, _35->dep_count
.L397:
.LBE53:
	.loc 1 1389 0
	movq	-32(%rbp), %rax	# link, tmp120
	movq	16(%rax), %rax	# link_3->fld[1].rtx, tmp121
	movq	%rax, -32(%rbp)	# tmp121, link
.L395:
	.loc 1 1389 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L398	#,
.L394:
	.loc 1 1382 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp122
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp123
	movq	%rax, -40(%rbp)	# tmp123, insn
.L392:
	.loc 1 1382 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp124
	cmpq	-24(%rbp), %rax	# next_tail, tmp124
	jne	.L399	#,
	.loc 1 1426 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	compute_forward_dependences, .-compute_forward_dependences
	.globl	init_deps
	.type	init_deps, @function
init_deps:
.LFB19:
	.loc 1 1434 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# deps, deps
	.loc 1 1435 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.191
	testl	%eax, %eax	# reload_completed.191
	jne	.L401	#,
	.loc 1 1435 0 is_stmt 0 discriminator 1
	call	max_reg_num	#
	jmp	.L402	#
.L401:
	.loc 1 1435 0 discriminator 2
	movl	$53, %eax	#, iftmp.190
.L402:
	.loc 1 1435 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.190, max_reg
	.loc 1 1437 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp64
	movl	-4(%rbp), %edx	# max_reg, tmp65
	movl	%edx, 68(%rax)	# tmp65, deps_6(D)->max_reg
	.loc 1 1439 0 discriminator 3
	movl	-4(%rbp), %eax	# max_reg, tmp66
	cltq
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.13308,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp67, D.13309
	.loc 1 1438 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp68
	movq	%rdx, 72(%rax)	# D.13309, deps_6(D)->reg_last
	.loc 1 1440 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp69
	addq	$80, %rax	#, D.13310
	movq	%rax, %rdi	# D.13310,
	call	bitmap_initialize	#
	.loc 1 1442 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp70
	movq	$0, (%rax)	#, deps_6(D)->pending_read_insns
	.loc 1 1443 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp71
	movq	$0, 8(%rax)	#, deps_6(D)->pending_read_mems
	.loc 1 1444 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp72
	movq	$0, 16(%rax)	#, deps_6(D)->pending_write_insns
	.loc 1 1445 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp73
	movq	$0, 24(%rax)	#, deps_6(D)->pending_write_mems
	.loc 1 1446 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp74
	movl	$0, 32(%rax)	#, deps_6(D)->pending_lists_length
	.loc 1 1447 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp75
	movl	$0, 36(%rax)	#, deps_6(D)->pending_flush_length
	.loc 1 1448 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp76
	movq	$0, 40(%rax)	#, deps_6(D)->last_pending_memory_flush
	.loc 1 1449 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp77
	movq	$0, 48(%rax)	#, deps_6(D)->last_function_call
	.loc 1 1450 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp78
	movq	$0, 56(%rax)	#, deps_6(D)->sched_before_next_call
	.loc 1 1451 0 discriminator 3
	movq	-24(%rbp), %rax	# deps, tmp79
	movb	$0, 64(%rax)	#, deps_6(D)->in_post_call_group_p
	.loc 1 1452 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	init_deps, .-init_deps
	.globl	free_deps
	.type	free_deps, @function
free_deps:
.LFB20:
	.loc 1 1459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# deps, deps
	.loc 1 1462 0
	movq	-56(%rbp), %rax	# deps, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_INSN_LIST_list	#
	.loc 1 1463 0
	movq	-56(%rbp), %rax	# deps, tmp82
	addq	$8, %rax	#, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_EXPR_LIST_list	#
	.loc 1 1464 0
	movq	-56(%rbp), %rax	# deps, tmp83
	addq	$16, %rax	#, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_INSN_LIST_list	#
	.loc 1 1465 0
	movq	-56(%rbp), %rax	# deps, tmp84
	addq	$24, %rax	#, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_EXPR_LIST_list	#
	.loc 1 1466 0
	movq	-56(%rbp), %rax	# deps, tmp85
	addq	$40, %rax	#, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_INSN_LIST_list	#
.LBB54:
	.loc 1 1471 0
	movq	-56(%rbp), %rax	# deps, tmp86
	movq	80(%rax), %rax	# deps_12(D)->reg_last_in_use.first, tmp87
	movq	%rax, -32(%rbp)	# tmp87, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L404	#
.L406:
	.loc 1 1471 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp88
	movq	(%rax), %rax	# ptr__1->next, tmp89
	movq	%rax, -32(%rbp)	# tmp89, ptr_
.L404:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L405	#,
	.loc 1 1471 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp90
	movl	16(%rax), %eax	# ptr__1->indx, D.13312
	cmpl	-40(%rbp), %eax	# indx_, D.13312
	jb	.L406	#,
.L405:
	.loc 1 1471 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L407	#,
	.loc 1 1471 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp91
	movl	16(%rax), %eax	# ptr__1->indx, D.13312
	cmpl	-40(%rbp), %eax	# indx_, D.13312
	je	.L407	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L408	#
.L407:
	.loc 1 1471 0 discriminator 2
	jmp	.L408	#
.L415:
	.loc 1 1471 0
	jmp	.L409	#
.L414:
.LBB55:
	.loc 1 1471 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp92
	movl	-44(%rbp), %edx	# word_num_, tmp93
	addq	$2, %rdx	#, tmp94
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp95
	movq	%rax, -24(%rbp)	# tmp95, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L410	#,
	.loc 1 1471 0 discriminator 1
	jmp	.L411	#
.L413:
.LBB56:
	.loc 1 1471 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.192
	movl	$1, %edx	#, tmp96
	movl	%eax, %ecx	# bit_num_.192, tmp114
	salq	%cl, %rdx	# tmp114, tmp97
	movq	%rdx, %rax	# tmp97, tmp97
	movq	%rax, -16(%rbp)	# tmp97, mask_
	movq	-16(%rbp), %rax	# mask_, tmp98
	movq	-24(%rbp), %rdx	# word_, tmp99
	andq	%rdx, %rax	# tmp99, D.13313
	testq	%rax, %rax	# D.13313
	je	.L412	#,
	.loc 1 1471 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp100
	notq	%rax	# D.13313
	andq	%rax, -24(%rbp)	# D.13313, word_
	movq	-32(%rbp), %rax	# ptr_, tmp101
	movl	16(%rax), %eax	# ptr__2->indx, D.13312
	leal	(%rax,%rax), %edx	#, D.13312
	movl	-44(%rbp), %eax	# word_num_, tmp102
	addl	%edx, %eax	# D.13312, D.13312
	sall	$6, %eax	#, D.13312
	movl	%eax, %edx	# D.13312, D.13312
	movl	-48(%rbp), %eax	# bit_num_, tmp103
	addl	%edx, %eax	# D.13312, D.13312
	movl	%eax, -36(%rbp)	# D.13312, i
.LBB57:
	movq	-56(%rbp), %rax	# deps, tmp104
	movq	72(%rax), %rax	# deps_12(D)->reg_last, D.13314
	movl	-36(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, D.13313
	salq	$5, %rdx	#, D.13313
	addq	%rdx, %rax	# D.13313, tmp106
	movq	%rax, -8(%rbp)	# tmp106, reg_last
	movq	-8(%rbp), %rax	# reg_last, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_INSN_LIST_list	#
	movq	-8(%rbp), %rax	# reg_last, tmp107
	addq	$8, %rax	#, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_INSN_LIST_list	#
	movq	-8(%rbp), %rax	# reg_last, tmp108
	addq	$16, %rax	#, D.13311
	movq	%rax, %rdi	# D.13311,
	call	free_INSN_LIST_list	#
.LBE57:
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L412	#,
	jmp	.L410	#
.L412:
.LBE56:
	.loc 1 1471 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L411:
	.loc 1 1471 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L413	#,
.L410:
	.loc 1 1471 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE55:
	addl	$1, -44(%rbp)	#, word_num_
.L409:
	.loc 1 1471 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L414	#,
	.loc 1 1471 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp109
	movq	(%rax), %rax	# ptr__2->next, tmp110
	movq	%rax, -32(%rbp)	# tmp110, ptr_
.L408:
	.loc 1 1471 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L415	#,
.LBE54:
	.loc 1 1478 0 is_stmt 1
	movq	-56(%rbp), %rax	# deps, tmp111
	addq	$80, %rax	#, D.13315
	movq	%rax, %rdi	# D.13315,
	call	bitmap_clear	#
	.loc 1 1480 0
	movq	-56(%rbp), %rax	# deps, tmp112
	movq	72(%rax), %rax	# deps_12(D)->reg_last, D.13314
	movq	%rax, %rdi	# D.13314,
	call	free	#
	.loc 1 1481 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	free_deps, .-free_deps
	.globl	init_dependency_caches
	.type	init_dependency_caches, @function
init_dependency_caches:
.LFB21:
	.loc 1 1490 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# luid, luid
	.loc 1 1497 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.193
	movl	-4(%rbp), %eax	# luid, tmp78
	cltd
	idivl	%ecx	# n_basic_blocks.193
	cmpl	$500, %eax	#, D.13316
	jle	.L416	#,
	.loc 1 1499 0
	movl	-4(%rbp), %edx	# luid, luid.194
	movl	-4(%rbp), %eax	# luid, luid.195
	movl	%edx, %esi	# luid.194,
	movl	%eax, %edi	# luid.195,
	call	sbitmap_vector_alloc	#
	movq	%rax, true_dependency_cache(%rip)	# true_dependency_cache.196, true_dependency_cache
	.loc 1 1500 0
	movl	-4(%rbp), %edx	# luid, luid.197
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.198
	movl	%edx, %esi	# luid.197,
	movq	%rax, %rdi	# true_dependency_cache.198,
	call	sbitmap_vector_zero	#
	.loc 1 1501 0
	movl	-4(%rbp), %edx	# luid, luid.199
	movl	-4(%rbp), %eax	# luid, luid.200
	movl	%edx, %esi	# luid.199,
	movl	%eax, %edi	# luid.200,
	call	sbitmap_vector_alloc	#
	movq	%rax, anti_dependency_cache(%rip)	# anti_dependency_cache.201, anti_dependency_cache
	.loc 1 1502 0
	movl	-4(%rbp), %edx	# luid, luid.202
	movq	anti_dependency_cache(%rip), %rax	# anti_dependency_cache, anti_dependency_cache.203
	movl	%edx, %esi	# luid.202,
	movq	%rax, %rdi	# anti_dependency_cache.203,
	call	sbitmap_vector_zero	#
	.loc 1 1503 0
	movl	-4(%rbp), %edx	# luid, luid.204
	movl	-4(%rbp), %eax	# luid, luid.205
	movl	%edx, %esi	# luid.204,
	movl	%eax, %edi	# luid.205,
	call	sbitmap_vector_alloc	#
	movq	%rax, output_dependency_cache(%rip)	# output_dependency_cache.206, output_dependency_cache
	.loc 1 1504 0
	movl	-4(%rbp), %edx	# luid, luid.207
	movq	output_dependency_cache(%rip), %rax	# output_dependency_cache, output_dependency_cache.208
	movl	%edx, %esi	# luid.207,
	movq	%rax, %rdi	# output_dependency_cache.208,
	call	sbitmap_vector_zero	#
.L416:
	.loc 1 1510 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	init_dependency_caches, .-init_dependency_caches
	.globl	free_dependency_caches
	.type	free_dependency_caches, @function
free_dependency_caches:
.LFB22:
	.loc 1 1516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1517 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.209
	testq	%rax, %rax	# true_dependency_cache.209
	je	.L418	#,
	.loc 1 1519 0
	movq	true_dependency_cache(%rip), %rax	# true_dependency_cache, true_dependency_cache.210
	movq	%rax, %rdi	# true_dependency_cache.210,
	call	free	#
	.loc 1 1520 0
	movq	$0, true_dependency_cache(%rip)	#, true_dependency_cache
	.loc 1 1521 0
	movq	anti_dependency_cache(%rip), %rax	# anti_dependency_cache, anti_dependency_cache.211
	movq	%rax, %rdi	# anti_dependency_cache.211,
	call	free	#
	.loc 1 1522 0
	movq	$0, anti_dependency_cache(%rip)	#, anti_dependency_cache
	.loc 1 1523 0
	movq	output_dependency_cache(%rip), %rax	# output_dependency_cache, output_dependency_cache.212
	movq	%rax, %rdi	# output_dependency_cache.212,
	call	free	#
	.loc 1 1524 0
	movq	$0, output_dependency_cache(%rip)	#, output_dependency_cache
.L418:
	.loc 1 1530 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	free_dependency_caches, .-free_dependency_caches
	.globl	init_deps_global
	.type	init_deps_global, @function
init_deps_global:
.LFB23:
	.loc 1 1537 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1538 0
	movl	$reg_pending_sets_head, %edi	#,
	call	bitmap_initialize	#
	movq	%rax, reg_pending_sets(%rip)	# reg_pending_sets.213, reg_pending_sets
	.loc 1 1539 0
	movl	$reg_pending_clobbers_head, %edi	#,
	call	bitmap_initialize	#
	movq	%rax, reg_pending_clobbers(%rip)	# reg_pending_clobbers.214, reg_pending_clobbers
	.loc 1 1540 0
	movl	$reg_pending_uses_head, %edi	#,
	call	bitmap_initialize	#
	movq	%rax, reg_pending_uses(%rip)	# reg_pending_uses.215, reg_pending_uses
	.loc 1 1541 0
	movb	$0, reg_pending_barrier(%rip)	#, reg_pending_barrier
	.loc 1 1542 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	init_deps_global, .-init_deps_global
	.globl	finish_deps_global
	.type	finish_deps_global, @function
finish_deps_global:
.LFB24:
	.loc 1 1548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1549 0
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.216
	testq	%rax, %rax	# reg_pending_sets.216
	je	.L422	#,
	.loc 1 1549 0 is_stmt 0 discriminator 1
	movq	reg_pending_sets(%rip), %rax	# reg_pending_sets, reg_pending_sets.217
	movq	%rax, %rdi	# reg_pending_sets.217,
	call	bitmap_clear	#
	movq	$0, reg_pending_sets(%rip)	#, reg_pending_sets
.L422:
	.loc 1 1550 0 is_stmt 1
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.218
	testq	%rax, %rax	# reg_pending_clobbers.218
	je	.L423	#,
	.loc 1 1550 0 is_stmt 0 discriminator 1
	movq	reg_pending_clobbers(%rip), %rax	# reg_pending_clobbers, reg_pending_clobbers.219
	movq	%rax, %rdi	# reg_pending_clobbers.219,
	call	bitmap_clear	#
	movq	$0, reg_pending_clobbers(%rip)	#, reg_pending_clobbers
.L423:
	.loc 1 1551 0 is_stmt 1
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.220
	testq	%rax, %rax	# reg_pending_uses.220
	je	.L421	#,
	.loc 1 1551 0 is_stmt 0 discriminator 1
	movq	reg_pending_uses(%rip), %rax	# reg_pending_uses, reg_pending_uses.221
	movq	%rax, %rdi	# reg_pending_uses.221,
	call	bitmap_clear	#
	movq	$0, reg_pending_uses(%rip)	#, reg_pending_uses
.L421:
	.loc 1 1552 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	finish_deps_global, .-finish_deps_global
	.section	.rodata
	.type	__FUNCTION__.10915, @object
	.size	__FUNCTION__.10915, 15
__FUNCTION__.10915:
	.string	"add_dependence"
	.align 16
	.type	__FUNCTION__.10948, @object
	.size	__FUNCTION__.10948, 18
__FUNCTION__.10948:
	.string	"remove_dependence"
	.align 16
	.type	__FUNCTION__.10999, @object
	.size	__FUNCTION__.10999, 16
__FUNCTION__.10999:
	.string	"sched_analyze_1"
	.align 16
	.type	__FUNCTION__.11030, @object
	.size	__FUNCTION__.11030, 16
__FUNCTION__.11030:
	.string	"sched_analyze_2"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "i386.h"
	.file 6 "machmode.h"
	.file 7 "cselib.h"
	.file 8 "bitmap.h"
	.file 9 "basic-block.h"
	.file 10 "hard-reg-set.h"
	.file 11 "sbitmap.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "sched-int.h"
	.file 15 "params.h"
	.file 16 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a1b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF580
	.byte	0x1
	.long	.LASF581
	.long	.LASF582
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
	.long	0xaf2
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
	.long	0xb02
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
	.long	.LASF583
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF54
	.byte	0x4
	.byte	0x5
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
	.uleb128 0x3
	.byte	0x8
	.long	0x235
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF51
	.uleb128 0xf
	.long	0x235
	.long	0x24c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x252
	.uleb128 0x11
	.long	0x235
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF52
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x12
	.long	.LASF55
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x3da
	.uleb128 0xd
	.long	.LASF56
	.sleb128 0
	.uleb128 0xd
	.long	.LASF57
	.sleb128 1
	.uleb128 0xd
	.long	.LASF58
	.sleb128 2
	.uleb128 0xd
	.long	.LASF59
	.sleb128 3
	.uleb128 0xd
	.long	.LASF60
	.sleb128 4
	.uleb128 0xd
	.long	.LASF61
	.sleb128 5
	.uleb128 0xd
	.long	.LASF62
	.sleb128 6
	.uleb128 0xd
	.long	.LASF63
	.sleb128 7
	.uleb128 0xd
	.long	.LASF64
	.sleb128 8
	.uleb128 0xd
	.long	.LASF65
	.sleb128 9
	.uleb128 0xd
	.long	.LASF66
	.sleb128 10
	.uleb128 0xd
	.long	.LASF67
	.sleb128 11
	.uleb128 0xd
	.long	.LASF68
	.sleb128 12
	.uleb128 0xd
	.long	.LASF69
	.sleb128 13
	.uleb128 0xd
	.long	.LASF70
	.sleb128 14
	.uleb128 0xd
	.long	.LASF71
	.sleb128 15
	.uleb128 0xd
	.long	.LASF72
	.sleb128 16
	.uleb128 0xd
	.long	.LASF73
	.sleb128 17
	.uleb128 0xd
	.long	.LASF74
	.sleb128 18
	.uleb128 0xd
	.long	.LASF75
	.sleb128 19
	.uleb128 0xd
	.long	.LASF76
	.sleb128 20
	.uleb128 0xd
	.long	.LASF77
	.sleb128 21
	.uleb128 0xd
	.long	.LASF78
	.sleb128 22
	.uleb128 0xd
	.long	.LASF79
	.sleb128 23
	.uleb128 0xd
	.long	.LASF80
	.sleb128 24
	.uleb128 0xd
	.long	.LASF81
	.sleb128 25
	.uleb128 0xd
	.long	.LASF82
	.sleb128 26
	.uleb128 0xd
	.long	.LASF83
	.sleb128 27
	.uleb128 0xd
	.long	.LASF84
	.sleb128 28
	.uleb128 0xd
	.long	.LASF85
	.sleb128 29
	.uleb128 0xd
	.long	.LASF86
	.sleb128 30
	.uleb128 0xd
	.long	.LASF87
	.sleb128 31
	.uleb128 0xd
	.long	.LASF88
	.sleb128 32
	.uleb128 0xd
	.long	.LASF89
	.sleb128 33
	.uleb128 0xd
	.long	.LASF90
	.sleb128 34
	.uleb128 0xd
	.long	.LASF91
	.sleb128 35
	.uleb128 0xd
	.long	.LASF92
	.sleb128 36
	.uleb128 0xd
	.long	.LASF93
	.sleb128 37
	.uleb128 0xd
	.long	.LASF94
	.sleb128 38
	.uleb128 0xd
	.long	.LASF95
	.sleb128 39
	.uleb128 0xd
	.long	.LASF96
	.sleb128 40
	.uleb128 0xd
	.long	.LASF97
	.sleb128 41
	.uleb128 0xd
	.long	.LASF98
	.sleb128 42
	.uleb128 0xd
	.long	.LASF99
	.sleb128 43
	.uleb128 0xd
	.long	.LASF100
	.sleb128 44
	.uleb128 0xd
	.long	.LASF101
	.sleb128 45
	.uleb128 0xd
	.long	.LASF102
	.sleb128 46
	.uleb128 0xd
	.long	.LASF103
	.sleb128 47
	.uleb128 0xd
	.long	.LASF104
	.sleb128 48
	.uleb128 0xd
	.long	.LASF105
	.sleb128 49
	.uleb128 0xd
	.long	.LASF106
	.sleb128 50
	.uleb128 0xd
	.long	.LASF107
	.sleb128 51
	.uleb128 0xd
	.long	.LASF108
	.sleb128 52
	.uleb128 0xd
	.long	.LASF109
	.sleb128 53
	.uleb128 0xd
	.long	.LASF110
	.sleb128 54
	.uleb128 0xd
	.long	.LASF111
	.sleb128 55
	.uleb128 0xd
	.long	.LASF112
	.sleb128 56
	.uleb128 0xd
	.long	.LASF113
	.sleb128 57
	.uleb128 0xd
	.long	.LASF114
	.sleb128 58
	.uleb128 0xd
	.long	.LASF115
	.sleb128 59
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x423
	.uleb128 0xd
	.long	.LASF117
	.sleb128 0
	.uleb128 0xd
	.long	.LASF118
	.sleb128 1
	.uleb128 0xd
	.long	.LASF119
	.sleb128 2
	.uleb128 0xd
	.long	.LASF120
	.sleb128 3
	.uleb128 0xd
	.long	.LASF121
	.sleb128 4
	.uleb128 0xd
	.long	.LASF122
	.sleb128 5
	.uleb128 0xd
	.long	.LASF123
	.sleb128 6
	.uleb128 0xd
	.long	.LASF124
	.sleb128 7
	.uleb128 0xd
	.long	.LASF125
	.sleb128 8
	.uleb128 0xd
	.long	.LASF126
	.sleb128 9
	.byte	0
	.uleb128 0x12
	.long	.LASF127
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x81f
	.uleb128 0xd
	.long	.LASF128
	.sleb128 0
	.uleb128 0x13
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF129
	.sleb128 2
	.uleb128 0xd
	.long	.LASF130
	.sleb128 3
	.uleb128 0xd
	.long	.LASF131
	.sleb128 4
	.uleb128 0xd
	.long	.LASF132
	.sleb128 5
	.uleb128 0xd
	.long	.LASF133
	.sleb128 6
	.uleb128 0xd
	.long	.LASF134
	.sleb128 7
	.uleb128 0xd
	.long	.LASF135
	.sleb128 8
	.uleb128 0xd
	.long	.LASF136
	.sleb128 9
	.uleb128 0xd
	.long	.LASF137
	.sleb128 10
	.uleb128 0xd
	.long	.LASF138
	.sleb128 11
	.uleb128 0xd
	.long	.LASF139
	.sleb128 12
	.uleb128 0xd
	.long	.LASF140
	.sleb128 13
	.uleb128 0xd
	.long	.LASF141
	.sleb128 14
	.uleb128 0xd
	.long	.LASF142
	.sleb128 15
	.uleb128 0xd
	.long	.LASF143
	.sleb128 16
	.uleb128 0xd
	.long	.LASF144
	.sleb128 17
	.uleb128 0xd
	.long	.LASF145
	.sleb128 18
	.uleb128 0xd
	.long	.LASF146
	.sleb128 19
	.uleb128 0xd
	.long	.LASF147
	.sleb128 20
	.uleb128 0xd
	.long	.LASF148
	.sleb128 21
	.uleb128 0xd
	.long	.LASF149
	.sleb128 22
	.uleb128 0xd
	.long	.LASF150
	.sleb128 23
	.uleb128 0xd
	.long	.LASF151
	.sleb128 24
	.uleb128 0xd
	.long	.LASF152
	.sleb128 25
	.uleb128 0xd
	.long	.LASF153
	.sleb128 26
	.uleb128 0xd
	.long	.LASF154
	.sleb128 27
	.uleb128 0xd
	.long	.LASF155
	.sleb128 28
	.uleb128 0xd
	.long	.LASF156
	.sleb128 29
	.uleb128 0xd
	.long	.LASF157
	.sleb128 30
	.uleb128 0xd
	.long	.LASF158
	.sleb128 31
	.uleb128 0xd
	.long	.LASF159
	.sleb128 32
	.uleb128 0xd
	.long	.LASF160
	.sleb128 33
	.uleb128 0xd
	.long	.LASF161
	.sleb128 34
	.uleb128 0xd
	.long	.LASF162
	.sleb128 35
	.uleb128 0xd
	.long	.LASF163
	.sleb128 36
	.uleb128 0xd
	.long	.LASF164
	.sleb128 37
	.uleb128 0xd
	.long	.LASF165
	.sleb128 38
	.uleb128 0xd
	.long	.LASF166
	.sleb128 39
	.uleb128 0xd
	.long	.LASF167
	.sleb128 40
	.uleb128 0xd
	.long	.LASF168
	.sleb128 41
	.uleb128 0xd
	.long	.LASF169
	.sleb128 42
	.uleb128 0xd
	.long	.LASF170
	.sleb128 43
	.uleb128 0xd
	.long	.LASF171
	.sleb128 44
	.uleb128 0xd
	.long	.LASF172
	.sleb128 45
	.uleb128 0xd
	.long	.LASF173
	.sleb128 46
	.uleb128 0x13
	.string	"SET"
	.sleb128 47
	.uleb128 0x13
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF174
	.sleb128 49
	.uleb128 0xd
	.long	.LASF175
	.sleb128 50
	.uleb128 0xd
	.long	.LASF176
	.sleb128 51
	.uleb128 0xd
	.long	.LASF177
	.sleb128 52
	.uleb128 0xd
	.long	.LASF178
	.sleb128 53
	.uleb128 0xd
	.long	.LASF179
	.sleb128 54
	.uleb128 0xd
	.long	.LASF180
	.sleb128 55
	.uleb128 0xd
	.long	.LASF181
	.sleb128 56
	.uleb128 0xd
	.long	.LASF182
	.sleb128 57
	.uleb128 0xd
	.long	.LASF183
	.sleb128 58
	.uleb128 0x13
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF184
	.sleb128 60
	.uleb128 0x13
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF185
	.sleb128 62
	.uleb128 0xd
	.long	.LASF186
	.sleb128 63
	.uleb128 0xd
	.long	.LASF187
	.sleb128 64
	.uleb128 0xd
	.long	.LASF188
	.sleb128 65
	.uleb128 0x13
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF189
	.sleb128 67
	.uleb128 0xd
	.long	.LASF190
	.sleb128 68
	.uleb128 0x13
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF191
	.sleb128 70
	.uleb128 0xd
	.long	.LASF192
	.sleb128 71
	.uleb128 0xd
	.long	.LASF193
	.sleb128 72
	.uleb128 0xd
	.long	.LASF194
	.sleb128 73
	.uleb128 0xd
	.long	.LASF195
	.sleb128 74
	.uleb128 0xd
	.long	.LASF196
	.sleb128 75
	.uleb128 0xd
	.long	.LASF197
	.sleb128 76
	.uleb128 0x13
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF198
	.sleb128 78
	.uleb128 0x13
	.string	"DIV"
	.sleb128 79
	.uleb128 0x13
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF199
	.sleb128 81
	.uleb128 0xd
	.long	.LASF200
	.sleb128 82
	.uleb128 0x13
	.string	"AND"
	.sleb128 83
	.uleb128 0x13
	.string	"IOR"
	.sleb128 84
	.uleb128 0x13
	.string	"XOR"
	.sleb128 85
	.uleb128 0x13
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF201
	.sleb128 87
	.uleb128 0xd
	.long	.LASF202
	.sleb128 88
	.uleb128 0xd
	.long	.LASF203
	.sleb128 89
	.uleb128 0xd
	.long	.LASF204
	.sleb128 90
	.uleb128 0xd
	.long	.LASF205
	.sleb128 91
	.uleb128 0xd
	.long	.LASF206
	.sleb128 92
	.uleb128 0xd
	.long	.LASF207
	.sleb128 93
	.uleb128 0xd
	.long	.LASF208
	.sleb128 94
	.uleb128 0xd
	.long	.LASF209
	.sleb128 95
	.uleb128 0xd
	.long	.LASF210
	.sleb128 96
	.uleb128 0xd
	.long	.LASF211
	.sleb128 97
	.uleb128 0xd
	.long	.LASF212
	.sleb128 98
	.uleb128 0xd
	.long	.LASF213
	.sleb128 99
	.uleb128 0xd
	.long	.LASF214
	.sleb128 100
	.uleb128 0xd
	.long	.LASF215
	.sleb128 101
	.uleb128 0x13
	.string	"NE"
	.sleb128 102
	.uleb128 0x13
	.string	"EQ"
	.sleb128 103
	.uleb128 0x13
	.string	"GE"
	.sleb128 104
	.uleb128 0x13
	.string	"GT"
	.sleb128 105
	.uleb128 0x13
	.string	"LE"
	.sleb128 106
	.uleb128 0x13
	.string	"LT"
	.sleb128 107
	.uleb128 0x13
	.string	"GEU"
	.sleb128 108
	.uleb128 0x13
	.string	"GTU"
	.sleb128 109
	.uleb128 0x13
	.string	"LEU"
	.sleb128 110
	.uleb128 0x13
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF216
	.sleb128 112
	.uleb128 0xd
	.long	.LASF217
	.sleb128 113
	.uleb128 0xd
	.long	.LASF218
	.sleb128 114
	.uleb128 0xd
	.long	.LASF219
	.sleb128 115
	.uleb128 0xd
	.long	.LASF220
	.sleb128 116
	.uleb128 0xd
	.long	.LASF221
	.sleb128 117
	.uleb128 0xd
	.long	.LASF222
	.sleb128 118
	.uleb128 0xd
	.long	.LASF223
	.sleb128 119
	.uleb128 0xd
	.long	.LASF224
	.sleb128 120
	.uleb128 0xd
	.long	.LASF225
	.sleb128 121
	.uleb128 0xd
	.long	.LASF226
	.sleb128 122
	.uleb128 0xd
	.long	.LASF227
	.sleb128 123
	.uleb128 0xd
	.long	.LASF228
	.sleb128 124
	.uleb128 0xd
	.long	.LASF229
	.sleb128 125
	.uleb128 0x13
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF230
	.sleb128 127
	.uleb128 0xd
	.long	.LASF231
	.sleb128 128
	.uleb128 0x13
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF232
	.sleb128 130
	.uleb128 0x13
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF233
	.sleb128 132
	.uleb128 0xd
	.long	.LASF234
	.sleb128 133
	.uleb128 0xd
	.long	.LASF235
	.sleb128 134
	.uleb128 0xd
	.long	.LASF236
	.sleb128 135
	.uleb128 0xd
	.long	.LASF237
	.sleb128 136
	.uleb128 0xd
	.long	.LASF238
	.sleb128 137
	.uleb128 0xd
	.long	.LASF239
	.sleb128 138
	.uleb128 0xd
	.long	.LASF240
	.sleb128 139
	.uleb128 0xd
	.long	.LASF241
	.sleb128 140
	.uleb128 0xd
	.long	.LASF242
	.sleb128 141
	.uleb128 0xd
	.long	.LASF243
	.sleb128 142
	.uleb128 0xd
	.long	.LASF244
	.sleb128 143
	.uleb128 0xd
	.long	.LASF245
	.sleb128 144
	.uleb128 0xd
	.long	.LASF246
	.sleb128 145
	.uleb128 0xd
	.long	.LASF247
	.sleb128 146
	.uleb128 0xd
	.long	.LASF248
	.sleb128 147
	.uleb128 0xd
	.long	.LASF249
	.sleb128 148
	.uleb128 0xd
	.long	.LASF250
	.sleb128 149
	.uleb128 0xd
	.long	.LASF251
	.sleb128 150
	.uleb128 0xd
	.long	.LASF252
	.sleb128 151
	.uleb128 0x13
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF253
	.sleb128 153
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x8a0
	.uleb128 0x5
	.long	.LASF254
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF255
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF256
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF259
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF260
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF261
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x2
	.byte	0x56
	.long	0x81f
	.uleb128 0x14
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x8f0
	.uleb128 0x8
	.long	.LASF263
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF264
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF265
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF266
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF267
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0x2
	.byte	0x63
	.long	0x8ab
	.uleb128 0x15
	.long	.LASF391
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x996
	.uleb128 0x16
	.long	.LASF269
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x16
	.long	.LASF270
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x16
	.long	.LASF271
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x16
	.long	.LASF272
	.byte	0x2
	.byte	0x6c
	.long	0x24c
	.uleb128 0x17
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x16
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x16
	.long	.LASF273
	.byte	0x2
	.byte	0x6f
	.long	0x265
	.uleb128 0x16
	.long	.LASF274
	.byte	0x2
	.byte	0x70
	.long	0x8a0
	.uleb128 0x16
	.long	.LASF275
	.byte	0x2
	.byte	0x71
	.long	0x9d1
	.uleb128 0x16
	.long	.LASF276
	.byte	0x2
	.byte	0x72
	.long	0xa08
	.uleb128 0x16
	.long	.LASF277
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x17
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xadb
	.uleb128 0x16
	.long	.LASF278
	.byte	0x2
	.byte	0x75
	.long	0xae1
	.byte	0
	.uleb128 0x4
	.long	.LASF279
	.byte	0x20
	.byte	0x7
	.byte	0x17
	.long	0x9d1
	.uleb128 0x8
	.long	.LASF280
	.byte	0x7
	.byte	0x1a
	.long	0x1f1
	.byte	0
	.uleb128 0x6
	.string	"u"
	.byte	0x7
	.byte	0x21
	.long	0x156f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x7
	.byte	0x25
	.long	0x15bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF282
	.byte	0x7
	.byte	0x28
	.long	0x10a9
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x996
	.uleb128 0x4
	.long	.LASF283
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0xa08
	.uleb128 0x8
	.long	.LASF284
	.byte	0x8
	.byte	0x35
	.long	0xd48
	.byte	0
	.uleb128 0x8
	.long	.LASF285
	.byte	0x8
	.byte	0x36
	.long	0xd48
	.byte	0x8
	.uleb128 0x8
	.long	.LASF286
	.byte	0x8
	.byte	0x37
	.long	0x1f1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9d7
	.uleb128 0x4
	.long	.LASF287
	.byte	0x70
	.byte	0x9
	.byte	0xae
	.long	0xadb
	.uleb128 0x8
	.long	.LASF288
	.byte	0x9
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x9
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF289
	.byte	0x9
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF290
	.byte	0x9
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF291
	.byte	0x9
	.byte	0xb7
	.long	0x11d9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF292
	.byte	0x9
	.byte	0xb7
	.long	0x11d9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF293
	.byte	0x9
	.byte	0xbc
	.long	0x1144
	.byte	0x30
	.uleb128 0x8
	.long	.LASF294
	.byte	0x9
	.byte	0xc0
	.long	0x1144
	.byte	0x38
	.uleb128 0x8
	.long	.LASF295
	.byte	0x9
	.byte	0xc6
	.long	0x1144
	.byte	0x40
	.uleb128 0x8
	.long	.LASF296
	.byte	0x9
	.byte	0xc8
	.long	0x1144
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0xcb
	.long	0x1f8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF297
	.byte	0x9
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF298
	.byte	0x9
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF299
	.byte	0x9
	.byte	0xd4
	.long	0x114f
	.byte	0x60
	.uleb128 0x8
	.long	.LASF300
	.byte	0x9
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF301
	.byte	0x9
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa0e
	.uleb128 0x3
	.byte	0x8
	.long	0x8f0
	.uleb128 0x7
	.long	.LASF302
	.byte	0x2
	.byte	0x76
	.long	0x8fb
	.uleb128 0xf
	.long	0xae7
	.long	0xb02
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0xb12
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF303
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xbd4
	.uleb128 0xd
	.long	.LASF304
	.sleb128 1
	.uleb128 0xd
	.long	.LASF305
	.sleb128 2
	.uleb128 0xd
	.long	.LASF306
	.sleb128 3
	.uleb128 0xd
	.long	.LASF307
	.sleb128 4
	.uleb128 0xd
	.long	.LASF308
	.sleb128 5
	.uleb128 0xd
	.long	.LASF309
	.sleb128 6
	.uleb128 0xd
	.long	.LASF310
	.sleb128 7
	.uleb128 0xd
	.long	.LASF311
	.sleb128 8
	.uleb128 0xd
	.long	.LASF312
	.sleb128 9
	.uleb128 0xd
	.long	.LASF313
	.sleb128 10
	.uleb128 0xd
	.long	.LASF314
	.sleb128 11
	.uleb128 0xd
	.long	.LASF315
	.sleb128 12
	.uleb128 0xd
	.long	.LASF316
	.sleb128 13
	.uleb128 0xd
	.long	.LASF317
	.sleb128 14
	.uleb128 0xd
	.long	.LASF318
	.sleb128 15
	.uleb128 0xd
	.long	.LASF319
	.sleb128 16
	.uleb128 0xd
	.long	.LASF320
	.sleb128 17
	.uleb128 0xd
	.long	.LASF321
	.sleb128 18
	.uleb128 0xd
	.long	.LASF322
	.sleb128 19
	.uleb128 0xd
	.long	.LASF323
	.sleb128 20
	.uleb128 0xd
	.long	.LASF324
	.sleb128 21
	.uleb128 0xd
	.long	.LASF325
	.sleb128 22
	.uleb128 0xd
	.long	.LASF326
	.sleb128 23
	.uleb128 0xd
	.long	.LASF327
	.sleb128 24
	.uleb128 0xd
	.long	.LASF328
	.sleb128 25
	.uleb128 0xd
	.long	.LASF329
	.sleb128 26
	.uleb128 0xd
	.long	.LASF330
	.sleb128 27
	.uleb128 0xd
	.long	.LASF331
	.sleb128 28
	.uleb128 0xd
	.long	.LASF332
	.sleb128 29
	.uleb128 0xd
	.long	.LASF333
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF334
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xc83
	.uleb128 0xd
	.long	.LASF335
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF336
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF337
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF338
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF339
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF340
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF341
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF342
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF343
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF344
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF345
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF346
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF347
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF348
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF349
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF350
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF351
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF352
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF353
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF354
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF355
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF356
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF357
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF358
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xcdf
	.uleb128 0xd
	.long	.LASF359
	.sleb128 0
	.uleb128 0xd
	.long	.LASF360
	.sleb128 1
	.uleb128 0xd
	.long	.LASF361
	.sleb128 2
	.uleb128 0xd
	.long	.LASF362
	.sleb128 3
	.uleb128 0xd
	.long	.LASF363
	.sleb128 4
	.uleb128 0xd
	.long	.LASF364
	.sleb128 5
	.uleb128 0xd
	.long	.LASF365
	.sleb128 6
	.uleb128 0xd
	.long	.LASF366
	.sleb128 7
	.uleb128 0xd
	.long	.LASF367
	.sleb128 8
	.uleb128 0xd
	.long	.LASF368
	.sleb128 9
	.uleb128 0xd
	.long	.LASF369
	.sleb128 10
	.uleb128 0xd
	.long	.LASF370
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF371
	.byte	0xa
	.byte	0x29
	.long	0x20c
	.uleb128 0x4
	.long	.LASF372
	.byte	0x28
	.byte	0x8
	.byte	0x2b
	.long	0xd27
	.uleb128 0x8
	.long	.LASF373
	.byte	0x8
	.byte	0x2d
	.long	0xd27
	.byte	0
	.uleb128 0x8
	.long	.LASF374
	.byte	0x8
	.byte	0x2e
	.long	0xd27
	.byte	0x8
	.uleb128 0x8
	.long	.LASF286
	.byte	0x8
	.byte	0x2f
	.long	0x1f1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF375
	.byte	0x8
	.byte	0x30
	.long	0xd2d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcea
	.uleb128 0xf
	.long	0x20c
	.long	0xd3d
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF376
	.byte	0x8
	.byte	0x31
	.long	0xcea
	.uleb128 0x3
	.byte	0x8
	.long	0xd3d
	.uleb128 0x7
	.long	.LASF377
	.byte	0x8
	.byte	0x39
	.long	0x9d7
	.uleb128 0x7
	.long	.LASF378
	.byte	0x8
	.byte	0x39
	.long	0xa08
	.uleb128 0x12
	.long	.LASF379
	.byte	0x4
	.byte	0x8
	.byte	0x3c
	.long	0xd8f
	.uleb128 0xd
	.long	.LASF380
	.sleb128 0
	.uleb128 0xd
	.long	.LASF381
	.sleb128 1
	.uleb128 0xd
	.long	.LASF382
	.sleb128 2
	.uleb128 0xd
	.long	.LASF383
	.sleb128 3
	.uleb128 0xd
	.long	.LASF384
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF385
	.byte	0x18
	.byte	0xb
	.byte	0x1f
	.long	0xdcc
	.uleb128 0x8
	.long	.LASF386
	.byte	0xb
	.byte	0x21
	.long	0x1f1
	.byte	0
	.uleb128 0x8
	.long	.LASF266
	.byte	0xb
	.byte	0x22
	.long	0x1f1
	.byte	0x4
	.uleb128 0x8
	.long	.LASF387
	.byte	0xb
	.byte	0x23
	.long	0x1f1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF388
	.byte	0xb
	.byte	0x24
	.long	0xdcc
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0x20c
	.long	0xddc
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF389
	.byte	0xb
	.byte	0x25
	.long	0xde7
	.uleb128 0x3
	.byte	0x8
	.long	0xd8f
	.uleb128 0x4
	.long	.LASF390
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xe12
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
	.uleb128 0x15
	.long	.LASF392
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0xef7
	.uleb128 0x17
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x23c
	.uleb128 0x17
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0xef7
	.uleb128 0x17
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0xf07
	.uleb128 0x17
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0xf17
	.uleb128 0x17
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0xf27
	.uleb128 0x17
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0xf37
	.uleb128 0x17
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0xf47
	.uleb128 0x17
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0xdcc
	.uleb128 0x16
	.long	.LASF393
	.byte	0xc
	.byte	0x43
	.long	0xf47
	.uleb128 0x16
	.long	.LASF394
	.byte	0xc
	.byte	0x44
	.long	0xdcc
	.uleb128 0x16
	.long	.LASF395
	.byte	0xc
	.byte	0x45
	.long	0xf57
	.uleb128 0x16
	.long	.LASF396
	.byte	0xc
	.byte	0x46
	.long	0xf67
	.uleb128 0x17
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0xf77
	.uleb128 0x16
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0xf87
	.uleb128 0x16
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0xf97
	.uleb128 0x16
	.long	.LASF378
	.byte	0xc
	.byte	0x4a
	.long	0xfa7
	.uleb128 0x16
	.long	.LASF397
	.byte	0xc
	.byte	0x4b
	.long	0xfb7
	.uleb128 0x17
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0xfd2
	.uleb128 0x16
	.long	.LASF398
	.byte	0xc
	.byte	0x4d
	.long	0x1079
	.uleb128 0x17
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x1089
	.uleb128 0x17
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x1099
	.byte	0
	.uleb128 0xf
	.long	0x213
	.long	0xf07
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x228
	.long	0xf17
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x21a
	.long	0xf27
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x139
	.long	0xf37
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1f1
	.long	0xf47
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1fa
	.long	0xf57
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1f8
	.long	0xf67
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x22f
	.long	0xf77
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x38
	.long	0xf87
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf8
	.long	0xf97
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x12e
	.long	0xfa7
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xa08
	.long	0xfb7
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xfc7
	.long	0xfc7
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfcd
	.uleb128 0x18
	.long	.LASF464
	.uleb128 0xf
	.long	0xfe2
	.long	0xfe2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfe8
	.uleb128 0x4
	.long	.LASF399
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x1079
	.uleb128 0x8
	.long	.LASF400
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF401
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF402
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF403
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF404
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF405
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF406
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF407
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF408
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF409
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF410
	.byte	0xd
	.byte	0x3d
	.long	0x235
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	0xded
	.long	0x1089
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xadb
	.long	0x1099
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x10a9
	.long	0x10a9
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10af
	.uleb128 0x4
	.long	.LASF411
	.byte	0x10
	.byte	0x7
	.byte	0x37
	.long	0x10d4
	.uleb128 0x8
	.long	.LASF373
	.byte	0x7
	.byte	0x39
	.long	0x10a9
	.byte	0
	.uleb128 0x6
	.string	"elt"
	.byte	0x7
	.byte	0x3a
	.long	0x15d0
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF412
	.byte	0xc
	.byte	0x50
	.long	0xe12
	.uleb128 0x4
	.long	.LASF413
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x1128
	.uleb128 0x8
	.long	.LASF414
	.byte	0xc
	.byte	0x54
	.long	0x201
	.byte	0
	.uleb128 0x8
	.long	.LASF415
	.byte	0xc
	.byte	0x55
	.long	0x201
	.byte	0x8
	.uleb128 0x8
	.long	.LASF416
	.byte	0xc
	.byte	0x57
	.long	0x201
	.byte	0x10
	.uleb128 0x8
	.long	.LASF417
	.byte	0xc
	.byte	0x58
	.long	0x24c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF418
	.byte	0xc
	.byte	0x59
	.long	0x10d4
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF419
	.byte	0xc
	.byte	0x5a
	.long	0x1133
	.uleb128 0x3
	.byte	0x8
	.long	0x10df
	.uleb128 0x7
	.long	.LASF420
	.byte	0x9
	.byte	0x1f
	.long	0xd4e
	.uleb128 0x7
	.long	.LASF421
	.byte	0x9
	.byte	0x21
	.long	0xd59
	.uleb128 0x7
	.long	.LASF422
	.byte	0x9
	.byte	0x74
	.long	0x1fa
	.uleb128 0x4
	.long	.LASF423
	.byte	0x40
	.byte	0x9
	.byte	0x77
	.long	0x11d3
	.uleb128 0x8
	.long	.LASF424
	.byte	0x9
	.byte	0x79
	.long	0x11d3
	.byte	0
	.uleb128 0x8
	.long	.LASF425
	.byte	0x9
	.byte	0x79
	.long	0x11d3
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x9
	.byte	0x7c
	.long	0xadb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF426
	.byte	0x9
	.byte	0x7c
	.long	0xadb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF427
	.byte	0x9
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0x82
	.long	0x1f8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF301
	.byte	0x9
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF428
	.byte	0x9
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF299
	.byte	0x9
	.byte	0x86
	.long	0x114f
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x115a
	.uleb128 0x7
	.long	.LASF429
	.byte	0x9
	.byte	0x88
	.long	0x11d3
	.uleb128 0x3
	.byte	0x8
	.long	0xddc
	.uleb128 0x11
	.long	0x24c
	.uleb128 0x19
	.long	0x139
	.long	0x11fe
	.uleb128 0x1a
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11ef
	.uleb128 0x19
	.long	0x139
	.long	0x1218
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1204
	.uleb128 0x4
	.long	.LASF430
	.byte	0x20
	.byte	0xe
	.byte	0x5e
	.long	0x1267
	.uleb128 0x8
	.long	.LASF431
	.byte	0xe
	.byte	0x60
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF403
	.byte	0xe
	.byte	0x61
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF432
	.byte	0xe
	.byte	0x62
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF433
	.byte	0xe
	.byte	0x63
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF434
	.byte	0xe
	.byte	0x64
	.long	0x139
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.long	.LASF435
	.byte	0x68
	.byte	0xe
	.byte	0x1b
	.long	0x1310
	.uleb128 0x8
	.long	.LASF436
	.byte	0xe
	.byte	0x27
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF437
	.byte	0xe
	.byte	0x2a
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF438
	.byte	0xe
	.byte	0x2d
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF439
	.byte	0xe
	.byte	0x30
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF440
	.byte	0xe
	.byte	0x36
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF441
	.byte	0xe
	.byte	0x3a
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF442
	.byte	0xe
	.byte	0x45
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF443
	.byte	0xe
	.byte	0x4a
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF444
	.byte	0xe
	.byte	0x50
	.long	0x2d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF445
	.byte	0xe
	.byte	0x54
	.long	0x1310
	.byte	0x40
	.uleb128 0x8
	.long	.LASF446
	.byte	0xe
	.byte	0x58
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF447
	.byte	0xe
	.byte	0x65
	.long	0x1317
	.byte	0x48
	.uleb128 0x8
	.long	.LASF448
	.byte	0xe
	.byte	0x69
	.long	0x1139
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF449
	.uleb128 0x3
	.byte	0x8
	.long	0x121e
	.uleb128 0x4
	.long	.LASF450
	.byte	0x68
	.byte	0xe
	.byte	0x71
	.long	0x13d8
	.uleb128 0x8
	.long	.LASF451
	.byte	0xe
	.byte	0x75
	.long	0x13ee
	.byte	0
	.uleb128 0x8
	.long	.LASF452
	.byte	0xe
	.byte	0x78
	.long	0x11fe
	.byte	0x8
	.uleb128 0x8
	.long	.LASF453
	.byte	0xe
	.byte	0x7a
	.long	0x13f9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF454
	.byte	0xe
	.byte	0x7e
	.long	0x11fe
	.byte	0x18
	.uleb128 0x8
	.long	.LASF455
	.byte	0xe
	.byte	0x82
	.long	0x1218
	.byte	0x20
	.uleb128 0x8
	.long	.LASF456
	.byte	0xe
	.byte	0x87
	.long	0x1413
	.byte	0x28
	.uleb128 0x8
	.long	.LASF457
	.byte	0xe
	.byte	0x8a
	.long	0x1218
	.byte	0x30
	.uleb128 0x8
	.long	.LASF458
	.byte	0xe
	.byte	0x8e
	.long	0x1429
	.byte	0x38
	.uleb128 0x8
	.long	.LASF459
	.byte	0xe
	.byte	0x91
	.long	0x2d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF460
	.byte	0xe
	.byte	0x91
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF288
	.byte	0xe
	.byte	0x95
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF461
	.byte	0xe
	.byte	0x95
	.long	0x2d
	.byte	0x58
	.uleb128 0x5
	.long	.LASF462
	.byte	0xe
	.byte	0x98
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x60
	.uleb128 0x5
	.long	.LASF463
	.byte	0xe
	.byte	0x9d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x60
	.byte	0
	.uleb128 0x1b
	.long	0x13e3
	.uleb128 0x1a
	.long	0x13e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13e9
	.uleb128 0x18
	.long	.LASF465
	.uleb128 0x3
	.byte	0x8
	.long	0x13d8
	.uleb128 0x1c
	.long	0x139
	.uleb128 0x3
	.byte	0x8
	.long	0x13f4
	.uleb128 0x19
	.long	0x24c
	.long	0x1413
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13ff
	.uleb128 0x1b
	.long	0x1429
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x1144
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1419
	.uleb128 0x4
	.long	.LASF466
	.byte	0x30
	.byte	0xe
	.byte	0xa5
	.long	0x14fc
	.uleb128 0x8
	.long	.LASF467
	.byte	0xe
	.byte	0xa9
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF468
	.byte	0xe
	.byte	0xad
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF469
	.byte	0xe
	.byte	0xb0
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF470
	.byte	0xe
	.byte	0xb3
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF471
	.byte	0xe
	.byte	0xb8
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF472
	.byte	0xe
	.byte	0xbc
	.long	0x1f1
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF473
	.byte	0xe
	.byte	0xbf
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF474
	.byte	0xe
	.byte	0xc3
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF475
	.byte	0xe
	.byte	0xc5
	.long	0x228
	.byte	0x28
	.uleb128 0x8
	.long	.LASF476
	.byte	0xe
	.byte	0xc8
	.long	0x228
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF477
	.byte	0xe
	.byte	0xcc
	.long	0x228
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF478
	.byte	0xe
	.byte	0xcf
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF479
	.byte	0xe
	.byte	0xd3
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF480
	.byte	0xe
	.byte	0xd4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF481
	.byte	0xe
	.byte	0xd7
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2c
	.byte	0
	.uleb128 0x4
	.long	.LASF482
	.byte	0x18
	.byte	0xf
	.byte	0x2c
	.long	0x152d
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0x30
	.long	0x11ea
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0xf
	.byte	0x32
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF484
	.byte	0xf
	.byte	0x34
	.long	0x11ea
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF482
	.byte	0xf
	.byte	0x35
	.long	0x14fc
	.uleb128 0x12
	.long	.LASF485
	.byte	0x4
	.byte	0xf
	.byte	0x49
	.long	0x156f
	.uleb128 0xd
	.long	.LASF486
	.sleb128 0
	.uleb128 0xd
	.long	.LASF487
	.sleb128 1
	.uleb128 0xd
	.long	.LASF488
	.sleb128 2
	.uleb128 0xd
	.long	.LASF489
	.sleb128 3
	.uleb128 0xd
	.long	.LASF490
	.sleb128 4
	.uleb128 0xd
	.long	.LASF491
	.sleb128 5
	.uleb128 0xd
	.long	.LASF492
	.sleb128 6
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.long	0x158e
	.uleb128 0x16
	.long	.LASF493
	.byte	0x7
	.byte	0x1e
	.long	0x2d
	.uleb128 0x16
	.long	.LASF494
	.byte	0x7
	.byte	0x20
	.long	0x9d1
	.byte	0
	.uleb128 0x4
	.long	.LASF495
	.byte	0x18
	.byte	0x7
	.byte	0x2c
	.long	0x15bf
	.uleb128 0x8
	.long	.LASF373
	.byte	0x7
	.byte	0x2f
	.long	0x15bf
	.byte	0
	.uleb128 0x6
	.string	"loc"
	.byte	0x7
	.byte	0x31
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF496
	.byte	0x7
	.byte	0x33
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x158e
	.uleb128 0x7
	.long	.LASF497
	.byte	0x7
	.byte	0x29
	.long	0x996
	.uleb128 0x3
	.byte	0x8
	.long	0x15c5
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x1
	.byte	0x63
	.long	0x139
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1614
	.uleb128 0x1f
	.string	"mem"
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF502
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF584
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1652
	.uleb128 0x22
	.long	.LASF498
	.byte	0x1
	.byte	0x74
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF499
	.byte	0x1
	.byte	0x75
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x1
	.byte	0x83
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x169f
	.uleb128 0x22
	.long	.LASF498
	.byte	0x1
	.byte	0x84
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"pat"
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF503
	.byte	0x1
	.byte	0x87
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x1
	.byte	0xa3
	.long	0x139
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x16dd
	.uleb128 0x22
	.long	.LASF505
	.byte	0x1
	.byte	0xa4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF506
	.byte	0x1
	.byte	0xa4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.long	.LASF520
	.byte	0x1
	.byte	0xb4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c6
	.uleb128 0x22
	.long	.LASF498
	.byte	0x1
	.byte	0xb5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF14
	.byte	0x1
	.byte	0xb6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF507
	.byte	0x1
	.byte	0xb7
	.long	0xb12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF508
	.byte	0x1
	.byte	0xb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF373
	.byte	0x1
	.byte	0xb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF509
	.byte	0x1
	.byte	0xba
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF505
	.byte	0x1
	.byte	0xbb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF506
	.byte	0x1
	.byte	0xbb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF517
	.long	0x17d6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10915
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x17a4
	.uleb128 0x20
	.long	.LASF510
	.byte	0x1
	.byte	0xec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x28
	.long	.LASF511
	.byte	0x1
	.value	0x10e
	.long	0xb12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x17d6
	.uleb128 0x10
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.long	0x17c6
	.uleb128 0x29
	.long	.LASF512
	.byte	0x1
	.value	0x169
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1827
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x16a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF499
	.byte	0x1
	.value	0x16a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF507
	.byte	0x1
	.value	0x16b
	.long	0xb12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x29
	.long	.LASF513
	.byte	0x1
	.value	0x174
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1891
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x175
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF514
	.byte	0x1
	.value	0x176
	.long	0xc83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF507
	.byte	0x1
	.value	0x177
	.long	0xb12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF499
	.byte	0x1
	.value	0x179
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF373
	.byte	0x1
	.value	0x179
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF515
	.byte	0x1
	.value	0x186
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x191d
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x187
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x188
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF374
	.byte	0x1
	.value	0x18a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.value	0x18a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF373
	.byte	0x1
	.value	0x18a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF516
	.byte	0x1
	.value	0x18b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF517
	.long	0x192d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10948
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x192d
	.uleb128 0x10
	.long	0x140
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.long	0x191d
	.uleb128 0x2b
	.long	.LASF518
	.byte	0x1
	.value	0x1b9
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1973
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x1ba
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF374
	.byte	0x1
	.value	0x1bc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF519
	.byte	0x1
	.value	0x1cc
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x19bf
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x1cd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.value	0x1cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF374
	.byte	0x1
	.value	0x1cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF521
	.byte	0x1
	.value	0x1f4
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a39
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x1f5
	.long	0x1a39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF522
	.byte	0x1
	.value	0x1f6
	.long	0xc83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF523
	.byte	0x1
	.value	0x1f6
	.long	0xc83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x1f6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"mem"
	.byte	0x1
	.value	0x1f6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.value	0x1f8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1267
	.uleb128 0x29
	.long	.LASF524
	.byte	0x1
	.value	0x20d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9a
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x20e
	.long	0x1a39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x20f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF525
	.byte	0x1
	.value	0x210
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF526
	.byte	0x1
	.value	0x210
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF527
	.byte	0x1
	.value	0x229
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb4
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x22a
	.long	0x1a39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x22b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x22c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF528
	.byte	0x1
	.value	0x22e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF426
	.byte	0x1
	.value	0x22f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x230
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF517
	.long	0x1bc4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10999
	.uleb128 0x26
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1b4c
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x237
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0
	.long	0x1b64
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x259
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.value	0x286
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.long	.LASF529
	.byte	0x1
	.value	0x29a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF530
	.byte	0x1
	.value	0x29a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x1bc4
	.uleb128 0x10
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.long	0x1bb4
	.uleb128 0x29
	.long	.LASF531
	.byte	0x1
	.value	0x2c3
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf5
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x2c4
	.long	0x1a39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x2c5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x2c6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x2c8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x2c9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x2ca
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x2cb
	.long	0x24c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF517
	.long	0x1cf5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11030
	.uleb128 0x26
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1ca9
	.uleb128 0x28
	.long	.LASF528
	.byte	0x1
	.value	0x2e8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x2eb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x311
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF529
	.byte	0x1
	.value	0x312
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF530
	.byte	0x1
	.value	0x312
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.value	0x313
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1bb4
	.uleb128 0x29
	.long	.LASF532
	.byte	0x1
	.value	0x38b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x24be
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x38c
	.long	0x1a39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x38d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x38d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2a
	.long	.LASF533
	.byte	0x1
	.value	0x38e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x390
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.value	0x391
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x392
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x30
	.long	.LASF585
	.byte	0x1
	.value	0x4b7
	.quad	.L352
	.uleb128 0x26
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1dda
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x3a1
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2e
	.string	"sub"
	.byte	0x1
	.value	0x3a4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1e41
	.uleb128 0x28
	.long	.LASF373
	.byte	0x1
	.value	0x3c6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.long	.LASF529
	.byte	0x1
	.value	0x3cc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x28
	.long	.LASF530
	.byte	0x1
	.value	0x3cc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.value	0x3cd
	.long	0x1139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1e67
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.value	0x3f6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1f23
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x415
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x415
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x415
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x415
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x27
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x415
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x27
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x415
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x415
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1fdf
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x41f
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x41f
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x41f
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x41f
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x27
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x41f
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x41f
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x41f
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x2005
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x42d
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x26
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x20c1
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x43b
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x43b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x43b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x43b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x43b
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x43b
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x43b
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x217d
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x443
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x443
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x443
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x443
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x27
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x443
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x443
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x443
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2239
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x44b
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x44b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x44b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x44b
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x44b
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x27
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x44b
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x44b
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x22f5
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x456
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x456
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x456
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x456
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x27
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x456
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x27
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x456
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x456
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x23b1
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x45e
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x45e
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x45e
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x45e
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x27
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x45e
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x45e
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x45e
	.long	0x1317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x246c
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x477
	.long	0xd48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x477
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x477
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x477
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x27
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x477
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x27
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x477
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x477
	.long	0x1317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.value	0x499
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x499
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF540
	.byte	0x1
	.value	0x49a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x28
	.long	.LASF541
	.byte	0x1
	.value	0x49a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF542
	.byte	0x1
	.value	0x4c1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2576
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x4c2
	.long	0x1a39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF288
	.byte	0x1
	.value	0x4c3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF461
	.byte	0x1
	.value	0x4c3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF498
	.byte	0x1
	.value	0x4c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF533
	.byte	0x1
	.value	0x4c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF517
	.long	0x2586
	.uleb128 0x26
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x2554
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x4e5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x27
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x28
	.long	.LASF543
	.byte	0x1
	.value	0x53c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x235
	.long	0x2586
	.uleb128 0x10
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.long	0x2576
	.uleb128 0x2c
	.long	.LASF544
	.byte	0x1
	.value	0x55e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2634
	.uleb128 0x2a
	.long	.LASF288
	.byte	0x1
	.value	0x55f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF461
	.byte	0x1
	.value	0x55f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF498
	.byte	0x1
	.value	0x561
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF508
	.byte	0x1
	.value	0x561
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF460
	.byte	0x1
	.value	0x562
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF507
	.byte	0x1
	.value	0x563
	.long	0xb12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x56f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF545
	.byte	0x1
	.value	0x570
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x598
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2671
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x599
	.long	0x1a39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF446
	.byte	0x1
	.value	0x59b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF547
	.byte	0x1
	.value	0x5b1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x275e
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x5b2
	.long	0x1a39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5b4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.value	0x5bf
	.long	0xd48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.value	0x5bf
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.value	0x5bf
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.value	0x5bf
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.value	0x5bf
	.long	0x20c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x5bf
	.long	0x20c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x5bf
	.long	0x1317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF548
	.byte	0x1
	.value	0x5d0
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x278c
	.uleb128 0x2a
	.long	.LASF469
	.byte	0x1
	.value	0x5d1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF549
	.byte	0x1
	.value	0x5eb
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF550
	.byte	0x1
	.value	0x600
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF551
	.byte	0x1
	.value	0x60b
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF552
	.byte	0x1
	.byte	0x2f
	.long	0x1139
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_sets_head
	.uleb128 0x20
	.long	.LASF553
	.byte	0x1
	.byte	0x30
	.long	0x1139
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_clobbers_head
	.uleb128 0x20
	.long	.LASF554
	.byte	0x1
	.byte	0x31
	.long	0x1139
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_uses_head
	.uleb128 0x20
	.long	.LASF555
	.byte	0x1
	.byte	0x33
	.long	0x1144
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_sets
	.uleb128 0x20
	.long	.LASF556
	.byte	0x1
	.byte	0x34
	.long	0x1144
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_clobbers
	.uleb128 0x20
	.long	.LASF557
	.byte	0x1
	.byte	0x35
	.long	0x1144
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_uses
	.uleb128 0x20
	.long	.LASF558
	.byte	0x1
	.byte	0x36
	.long	0x1310
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pending_barrier
	.uleb128 0x20
	.long	.LASF559
	.byte	0x1
	.byte	0x45
	.long	0x11e4
	.uleb128 0x9
	.byte	0x3
	.quad	true_dependency_cache
	.uleb128 0x20
	.long	.LASF560
	.byte	0x1
	.byte	0x46
	.long	0x11e4
	.uleb128 0x9
	.byte	0x3
	.quad	anti_dependency_cache
	.uleb128 0x20
	.long	.LASF561
	.byte	0x1
	.byte	0x47
	.long	0x11e4
	.uleb128 0x9
	.byte	0x3
	.quad	output_dependency_cache
	.uleb128 0x33
	.long	.LASF562
	.byte	0x5
	.byte	0x62
	.long	0x139
	.uleb128 0xf
	.long	0x3da
	.long	0x28c7
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.long	.LASF116
	.byte	0x6
	.byte	0x34
	.long	0x28d2
	.uleb128 0x11
	.long	0x28b7
	.uleb128 0xf
	.long	0x213
	.long	0x28e7
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.long	.LASF563
	.byte	0x6
	.byte	0x50
	.long	0x28f2
	.uleb128 0x11
	.long	0x28d7
	.uleb128 0xf
	.long	0x213
	.long	0x2907
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF564
	.byte	0x2
	.byte	0x36
	.long	0x2912
	.uleb128 0x11
	.long	0x28f7
	.uleb128 0xf
	.long	0x24c
	.long	0x2927
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF565
	.byte	0x2
	.byte	0x3c
	.long	0x2932
	.uleb128 0x11
	.long	0x2917
	.uleb128 0xf
	.long	0x235
	.long	0x2947
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF566
	.byte	0x2
	.byte	0x3f
	.long	0x2952
	.uleb128 0x11
	.long	0x2937
	.uleb128 0xf
	.long	0x2d
	.long	0x2967
	.uleb128 0x10
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x34
	.long	.LASF567
	.byte	0x2
	.value	0x652
	.long	0x2957
	.uleb128 0x34
	.long	.LASF568
	.byte	0x2
	.value	0x6d2
	.long	0x139
	.uleb128 0xf
	.long	0x235
	.long	0x298f
	.uleb128 0x10
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x34
	.long	.LASF569
	.byte	0xa
	.value	0x18b
	.long	0x297f
	.uleb128 0x34
	.long	.LASF570
	.byte	0xa
	.value	0x1b0
	.long	0x297f
	.uleb128 0x34
	.long	.LASF571
	.byte	0xa
	.value	0x1b9
	.long	0xcdf
	.uleb128 0x33
	.long	.LASF572
	.byte	0x9
	.byte	0xe4
	.long	0x139
	.uleb128 0x33
	.long	.LASF573
	.byte	0xd
	.byte	0x41
	.long	0x1128
	.uleb128 0x34
	.long	.LASF574
	.byte	0x10
	.value	0x244
	.long	0x139
	.uleb128 0x33
	.long	.LASF575
	.byte	0xe
	.byte	0xa0
	.long	0x29e0
	.uleb128 0x3
	.byte	0x8
	.long	0x131d
	.uleb128 0x33
	.long	.LASF576
	.byte	0xe
	.byte	0xda
	.long	0x29f1
	.uleb128 0x3
	.byte	0x8
	.long	0x142f
	.uleb128 0x33
	.long	.LASF577
	.byte	0xf
	.byte	0x3a
	.long	0x2a02
	.uleb128 0x3
	.byte	0x8
	.long	0x152d
	.uleb128 0x33
	.long	.LASF578
	.byte	0x1
	.byte	0x2c
	.long	0x22f
	.uleb128 0x33
	.long	.LASF579
	.byte	0x1
	.byte	0x2d
	.long	0xc83
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF319:
	.string	"REG_BR_PROB"
.LASF349:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF272:
	.string	"rtstr"
.LASF336:
	.string	"NOTE_INSN_DELETED"
.LASF515:
	.string	"remove_dependence"
.LASF200:
	.string	"UMOD"
.LASF254:
	.string	"min_align"
.LASF483:
	.string	"option"
.LASF493:
	.string	"val_rtx"
.LASF392:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF284:
	.string	"first"
.LASF241:
	.string	"CONSTANT_P_RTX"
.LASF555:
	.string	"reg_pending_sets"
.LASF570:
	.string	"global_regs"
.LASF449:
	.string	"_Bool"
.LASF271:
	.string	"rtuint"
.LASF572:
	.string	"n_basic_blocks"
.LASF275:
	.string	"rt_cselib"
.LASF144:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF204:
	.string	"LSHIFTRT"
.LASF138:
	.string	"MATCH_PAR_DUP"
.LASF582:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF199:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF132:
	.string	"MATCH_OPERAND"
.LASF113:
	.string	"CCFPmode"
.LASF520:
	.string	"add_dependence"
.LASF54:
	.string	"reg_class"
.LASF221:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF448:
	.string	"reg_last_in_use"
.LASF259:
	.string	"max_after_base"
.LASF222:
	.string	"UNLT"
.LASF434:
	.string	"clobbers_length"
.LASF428:
	.string	"probability"
.LASF85:
	.string	"CTImode"
.LASF373:
	.string	"next"
.LASF577:
	.string	"compiler_params"
.LASF439:
	.string	"pending_write_mems"
.LASF546:
	.string	"init_deps"
.LASF476:
	.string	"units"
.LASF83:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF488:
	.string	"PARAM_MAX_DELAY_SLOT_LIVE_SEARCH"
.LASF243:
	.string	"VEC_MERGE"
.LASF394:
	.string	"uhint"
.LASF176:
	.string	"RETURN"
.LASF395:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF550:
	.string	"init_deps_global"
.LASF119:
	.string	"MODE_FLOAT"
.LASF557:
	.string	"reg_pending_uses"
.LASF263:
	.string	"alias"
.LASF260:
	.string	"offset_unsigned"
.LASF89:
	.string	"V2SImode"
.LASF452:
	.string	"can_schedule_ready_p"
.LASF25:
	.string	"Q_REGS"
.LASF163:
	.string	"CODE_LABEL"
.LASF84:
	.string	"CDImode"
.LASF169:
	.string	"UNSPEC"
.LASF162:
	.string	"BARRIER"
.LASF342:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF165:
	.string	"COND_EXEC"
.LASF179:
	.string	"CONST_INT"
.LASF175:
	.string	"CALL"
.LASF511:
	.string	"present_dep_type"
.LASF91:
	.string	"V4QImode"
.LASF380:
	.string	"BITMAP_AND"
.LASF154:
	.string	"ATTR"
.LASF299:
	.string	"count"
.LASF273:
	.string	"rttype"
.LASF470:
	.string	"priority"
.LASF565:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF510:
	.string	"nnext"
.LASF289:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF366:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF540:
	.string	"src_regno"
.LASF90:
	.string	"V2DImode"
.LASF447:
	.string	"reg_last"
.LASF419:
	.string	"varray_type"
.LASF268:
	.string	"mem_attrs"
.LASF404:
	.string	"refs"
.LASF313:
	.string	"REG_UNUSED"
.LASF147:
	.string	"DEFINE_DELAY"
.LASF197:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF464:
	.string	"sched_info_tag"
.LASF187:
	.string	"STRICT_LOW_PART"
.LASF521:
	.string	"add_insn_mem_dependence"
.LASF458:
	.string	"compute_jump_reg_dependencies"
.LASF129:
	.string	"INCLUDE"
.LASF362:
	.string	"GR_FRAME_POINTER"
.LASF297:
	.string	"index"
.LASF405:
	.string	"freq"
.LASF225:
	.string	"ZERO_EXTEND"
.LASF228:
	.string	"FLOAT_TRUNCATE"
.LASF359:
	.string	"GR_PC"
.LASF446:
	.string	"max_reg"
.LASF21:
	.string	"BREG"
.LASF100:
	.string	"V2SFmode"
.LASF412:
	.string	"varray_data"
.LASF229:
	.string	"FLOAT"
.LASF325:
	.string	"REG_EH_CONTEXT"
.LASF55:
	.string	"machine_mode"
.LASF482:
	.string	"param_info"
.LASF278:
	.string	"rtmem"
.LASF529:
	.string	"pending"
.LASF238:
	.string	"RANGE_REG"
.LASF276:
	.string	"rtbit"
.LASF372:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF62:
	.string	"TImode"
.LASF214:
	.string	"PRE_MODIFY"
.LASF227:
	.string	"FLOAT_EXTEND"
.LASF402:
	.string	"last_note_uid"
.LASF444:
	.string	"sched_before_next_call"
.LASF500:
	.string	"deps_may_trap_p"
.LASF6:
	.string	"in_struct"
.LASF337:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF518:
	.string	"group_leader"
.LASF60:
	.string	"SImode"
.LASF479:
	.string	"fed_by_spec_load"
.LASF171:
	.string	"ADDR_VEC"
.LASF101:
	.string	"V2DFmode"
.LASF253:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF267:
	.string	"align"
.LASF286:
	.string	"indx"
.LASF560:
	.string	"anti_dependency_cache"
.LASF190:
	.string	"SYMBOL_REF"
.LASF335:
	.string	"NOTE_INSN_BIAS"
.LASF442:
	.string	"last_pending_memory_flush"
.LASF357:
	.string	"NOTE_INSN_MAX"
.LASF143:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF195:
	.string	"COMPARE"
.LASF223:
	.string	"LTGT"
.LASF235:
	.string	"HIGH"
.LASF192:
	.string	"QUEUED"
.LASF504:
	.string	"conditions_mutex_p"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF61:
	.string	"DImode"
.LASF388:
	.string	"elms"
.LASF390:
	.string	"const_equiv_data"
.LASF96:
	.string	"V8HImode"
.LASF471:
	.string	"dep_count"
.LASF213:
	.string	"POST_INC"
.LASF379:
	.string	"bitmap_bits"
.LASF462:
	.string	"queue_must_finish_empty"
.LASF381:
	.string	"BITMAP_AND_COMPL"
.LASF74:
	.string	"TFmode"
.LASF47:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF443:
	.string	"last_function_call"
.LASF409:
	.string	"basic_block"
.LASF57:
	.string	"BImode"
.LASF211:
	.string	"PRE_INC"
.LASF312:
	.string	"REG_NO_CONFLICT"
.LASF71:
	.string	"SFmode"
.LASF432:
	.string	"clobbers"
.LASF160:
	.string	"JUMP_INSN"
.LASF294:
	.string	"cond_local_set"
.LASF429:
	.string	"edge"
.LASF123:
	.string	"MODE_COMPLEX_FLOAT"
.LASF445:
	.string	"in_post_call_group_p"
.LASF277:
	.string	"rttree"
.LASF536:
	.string	"bit_num_"
.LASF334:
	.string	"insn_note"
.LASF473:
	.string	"ref_count"
.LASF353:
	.string	"NOTE_INSN_RANGE_END"
.LASF142:
	.string	"DEFINE_SPLIT"
.LASF181:
	.string	"CONST_VECTOR"
.LASF139:
	.string	"MATCH_INSN"
.LASF72:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF422:
	.string	"gcov_type"
.LASF45:
	.string	"size_t"
.LASF173:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF66:
	.string	"PSImode"
.LASF237:
	.string	"RANGE_INFO"
.LASF391:
	.string	"rtunion_def"
.LASF153:
	.string	"DEFINE_ATTR"
.LASF155:
	.string	"SET_ATTR"
.LASF80:
	.string	"TCmode"
.LASF230:
	.string	"UNSIGNED_FLOAT"
.LASF324:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF279:
	.string	"cselib_val_struct"
.LASF356:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF457:
	.string	"contributes_to_priority"
.LASF523:
	.string	"mem_list"
.LASF202:
	.string	"ROTATE"
.LASF292:
	.string	"succ"
.LASF226:
	.string	"TRUNCATE"
.LASF317:
	.string	"REG_DEP_ANTI"
.LASF77:
	.string	"SCmode"
.LASF564:
	.string	"rtx_length"
.LASF567:
	.string	"global_rtl"
.LASF367:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF67:
	.string	"PDImode"
.LASF338:
	.string	"NOTE_INSN_BLOCK_END"
.LASF472:
	.string	"blockage"
.LASF378:
	.string	"bitmap"
.LASF347:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF566:
	.string	"rtx_class"
.LASF508:
	.string	"link"
.LASF301:
	.string	"flags"
.LASF130:
	.string	"EXPR_LIST"
.LASF157:
	.string	"EQ_ATTR"
.LASF110:
	.string	"CCGOCmode"
.LASF188:
	.string	"CONCAT"
.LASF424:
	.string	"pred_next"
.LASF256:
	.string	"min_after_vec"
.LASF194:
	.string	"COND"
.LASF385:
	.string	"simple_bitmap_def"
.LASF547:
	.string	"free_deps"
.LASF120:
	.string	"MODE_PARTIAL_INT"
.LASF15:
	.string	"tree"
.LASF78:
	.string	"DCmode"
.LASF553:
	.string	"reg_pending_clobbers_head"
.LASF145:
	.string	"DEFINE_COMBINE"
.LASF580:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF203:
	.string	"ASHIFTRT"
.LASF497:
	.string	"cselib_val"
.LASF108:
	.string	"CCmode"
.LASF290:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF340:
	.string	"NOTE_INSN_LOOP_END"
.LASF106:
	.string	"V16SFmode"
.LASF556:
	.string	"reg_pending_clobbers"
.LASF383:
	.string	"BITMAP_XOR"
.LASF354:
	.string	"NOTE_INSN_LIVE"
.LASF150:
	.string	"DEFINE_COND_EXEC"
.LASF502:
	.string	"addr"
.LASF433:
	.string	"uses_length"
.LASF146:
	.string	"DEFINE_EXPAND"
.LASF514:
	.string	"listp"
.LASF534:
	.string	"ptr_"
.LASF415:
	.string	"elements_used"
.LASF97:
	.string	"V8SImode"
.LASF159:
	.string	"INSN"
.LASF270:
	.string	"rtint"
.LASF189:
	.string	"LABEL_REF"
.LASF316:
	.string	"REG_LABEL"
.LASF411:
	.string	"elt_list"
.LASF304:
	.string	"REG_DEAD"
.LASF344:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF563:
	.string	"mode_size"
.LASF307:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF421:
	.string	"regset"
.LASF469:
	.string	"luid"
.LASF109:
	.string	"CCGCmode"
.LASF526:
	.string	"for_write"
.LASF296:
	.string	"global_live_at_end"
.LASF571:
	.string	"regs_invalidated_by_call"
.LASF499:
	.string	"list"
.LASF185:
	.string	"SCRATCH"
.LASF95:
	.string	"V8QImode"
.LASF98:
	.string	"V8DImode"
.LASF126:
	.string	"MAX_MODE_CLASS"
.LASF573:
	.string	"reg_n_info"
.LASF507:
	.string	"dep_type"
.LASF537:
	.string	"word_num_"
.LASF224:
	.string	"SIGN_EXTEND"
.LASF280:
	.string	"value"
.LASF246:
	.string	"VEC_DUPLICATE"
.LASF377:
	.string	"bitmap_head"
.LASF496:
	.string	"setting_insn"
.LASF264:
	.string	"expr"
.LASF350:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF524:
	.string	"flush_pending_lists"
.LASF474:
	.string	"tick"
.LASF104:
	.string	"V8SFmode"
.LASF498:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF315:
	.string	"REG_CC_USER"
.LASF168:
	.string	"ASM_OPERANDS"
.LASF112:
	.string	"CCZmode"
.LASF341:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF535:
	.string	"indx_"
.LASF330:
	.string	"REG_NON_LOCAL_GOTO"
.LASF172:
	.string	"ADDR_DIFF_VEC"
.LASF506:
	.string	"cond2"
.LASF234:
	.string	"ZERO_EXTRACT"
.LASF393:
	.string	"hint"
.LASF167:
	.string	"ASM_INPUT"
.LASF217:
	.string	"ORDERED"
.LASF105:
	.string	"V8DFmode"
.LASF414:
	.string	"num_elements"
.LASF231:
	.string	"UNSIGNED_FIX"
.LASF512:
	.string	"add_dependence_list"
.LASF516:
	.string	"found"
.LASF29:
	.string	"GENERAL_REGS"
.LASF417:
	.string	"name"
.LASF131:
	.string	"INSN_LIST"
.LASF239:
	.string	"RANGE_VAR"
.LASF410:
	.string	"changes_mode"
.LASF118:
	.string	"MODE_INT"
.LASF416:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF528:
	.string	"regno"
.LASF487:
	.string	"PARAM_MAX_DELAY_SLOT_INSN_SEARCH"
.LASF240:
	.string	"RANGE_LIVE"
.LASF88:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF485:
	.string	"compiler_param"
.LASF398:
	.string	"const_equiv"
.LASF401:
	.string	"last_uid"
.LASF274:
	.string	"rt_addr_diff_vec_flags"
.LASF364:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF575:
	.string	"current_sched_info"
.LASF249:
	.string	"SS_MINUS"
.LASF136:
	.string	"MATCH_PARALLEL"
.LASF93:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF306:
	.string	"REG_EQUIV"
.LASF480:
	.string	"is_load_insn"
.LASF48:
	.string	"short unsigned int"
.LASF437:
	.string	"pending_read_mems"
.LASF49:
	.string	"signed char"
.LASF135:
	.string	"MATCH_OPERATOR"
.LASF413:
	.string	"varray_head_tag"
.LASF285:
	.string	"current"
.LASF463:
	.string	"use_cselib"
.LASF251:
	.string	"SS_TRUNCATE"
.LASF320:
	.string	"REG_EXEC_COUNT"
.LASF569:
	.string	"fixed_regs"
.LASF255:
	.string	"base_after_vec"
.LASF140:
	.string	"DEFINE_INSN"
.LASF94:
	.string	"V4DImode"
.LASF298:
	.string	"loop_depth"
.LASF503:
	.string	"cond"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF365:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF399:
	.string	"reg_info_def"
.LASF318:
	.string	"REG_DEP_OUTPUT"
.LASF386:
	.string	"n_bits"
.LASF149:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF250:
	.string	"US_MINUS"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF233:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF407:
	.string	"live_length"
.LASF174:
	.string	"CLOBBER"
.LASF423:
	.string	"edge_def"
.LASF124:
	.string	"MODE_VECTOR_INT"
.LASF322:
	.string	"REG_SAVE_AREA"
.LASF242:
	.string	"CALL_PLACEHOLDER"
.LASF102:
	.string	"V4SFmode"
.LASF519:
	.string	"set_sched_group_p"
.LASF196:
	.string	"PLUS"
.LASF212:
	.string	"POST_DEC"
.LASF375:
	.string	"bits"
.LASF59:
	.string	"HImode"
.LASF302:
	.string	"rtunion"
.LASF343:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF122:
	.string	"MODE_COMPLEX_INT"
.LASF44:
	.string	"long int"
.LASF369:
	.string	"GR_VIRTUAL_CFA"
.LASF308:
	.string	"REG_WAS_0"
.LASF329:
	.string	"REG_NORETURN"
.LASF73:
	.string	"XFmode"
.LASF328:
	.string	"REG_MAYBE_DEAD"
.LASF436:
	.string	"pending_read_insns"
.LASF478:
	.string	"cant_move"
.LASF103:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF303:
	.string	"reg_note"
.LASF484:
	.string	"help"
.LASF127:
	.string	"rtx_code"
.LASF558:
	.string	"reg_pending_barrier"
.LASF513:
	.string	"add_dependence_list_and_free"
.LASF440:
	.string	"pending_lists_length"
.LASF20:
	.string	"CREG"
.LASF475:
	.string	"cost"
.LASF128:
	.string	"UNKNOWN"
.LASF170:
	.string	"UNSPEC_VOLATILE"
.LASF346:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF46:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF533:
	.string	"loop_notes"
.LASF69:
	.string	"HFmode"
.LASF177:
	.string	"TRAP_IF"
.LASF548:
	.string	"init_dependency_caches"
.LASF406:
	.string	"deaths"
.LASF326:
	.string	"REG_EH_REGION"
.LASF545:
	.string	"new_link"
.LASF579:
	.string	"reg_known_value"
.LASF309:
	.string	"REG_RETVAL"
.LASF495:
	.string	"elt_loc_list"
.LASF81:
	.string	"CQImode"
.LASF465:
	.string	"ready_list"
.LASF51:
	.string	"char"
.LASF79:
	.string	"XCmode"
.LASF438:
	.string	"pending_write_insns"
.LASF18:
	.string	"AREG"
.LASF539:
	.string	"mask_"
.LASF494:
	.string	"next_free"
.LASF205:
	.string	"ROTATERT"
.LASF505:
	.string	"cond1"
.LASF191:
	.string	"ADDRESSOF"
.LASF331:
	.string	"REG_SETJMP"
.LASF430:
	.string	"deps_reg"
.LASF87:
	.string	"V2QImode"
.LASF65:
	.string	"PHImode"
.LASF384:
	.string	"BITMAP_IOR_COMPL"
.LASF86:
	.string	"COImode"
.LASF210:
	.string	"PRE_DEC"
.LASF345:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF363:
	.string	"GR_HARD_FRAME_POINTER"
.LASF314:
	.string	"REG_CC_SETTER"
.LASF578:
	.string	"reg_known_equiv_p"
.LASF522:
	.string	"insn_list"
.LASF117:
	.string	"MODE_RANDOM"
.LASF248:
	.string	"US_PLUS"
.LASF585:
	.string	"end_call_group"
.LASF107:
	.string	"BLKmode"
.LASF450:
	.string	"sched_info"
.LASF76:
	.string	"HCmode"
.LASF530:
	.string	"pending_mem"
.LASF281:
	.string	"locs"
.LASF420:
	.string	"regset_head"
.LASF490:
	.string	"PARAM_MAX_GCSE_MEMORY"
.LASF182:
	.string	"CONST_STRING"
.LASF245:
	.string	"VEC_CONCAT"
.LASF266:
	.string	"size"
.LASF554:
	.string	"reg_pending_uses_head"
.LASF257:
	.string	"max_after_vec"
.LASF321:
	.string	"REG_NOALIAS"
.LASF158:
	.string	"ATTR_FLAG"
.LASF527:
	.string	"sched_analyze_1"
.LASF531:
	.string	"sched_analyze_2"
.LASF114:
	.string	"CCFPUmode"
.LASF305:
	.string	"REG_INC"
.LASF148:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF389:
	.string	"sbitmap"
.LASF152:
	.string	"ADDRESS"
.LASF427:
	.string	"insns"
.LASF501:
	.string	"get_condition"
.LASF435:
	.string	"deps"
.LASF396:
	.string	"cptr"
.LASF283:
	.string	"bitmap_head_def"
.LASF461:
	.string	"tail"
.LASF467:
	.string	"depend"
.LASF456:
	.string	"print_insn"
.LASF408:
	.string	"calls_crossed"
.LASF252:
	.string	"US_TRUNCATE"
.LASF282:
	.string	"addr_list"
.LASF358:
	.string	"global_rtl_index"
.LASF247:
	.string	"SS_PLUS"
.LASF209:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF261:
	.string	"scale"
.LASF58:
	.string	"QImode"
.LASF509:
	.string	"present_p"
.LASF562:
	.string	"target_flags"
.LASF418:
	.string	"data"
.LASF361:
	.string	"GR_STACK_POINTER"
.LASF70:
	.string	"TQFmode"
.LASF538:
	.string	"word_"
.LASF288:
	.string	"head"
.LASF258:
	.string	"min_after_base"
.LASF397:
	.string	"sched"
.LASF453:
	.string	"schedule_more_p"
.LASF561:
	.string	"output_dependency_cache"
.LASF17:
	.string	"NO_REGS"
.LASF543:
	.string	"rtx_region"
.LASF63:
	.string	"OImode"
.LASF327:
	.string	"REG_SAVE_NOTE"
.LASF387:
	.string	"bytes"
.LASF207:
	.string	"SMAX"
.LASF370:
	.string	"GR_MAX"
.LASF244:
	.string	"VEC_SELECT"
.LASF489:
	.string	"PARAM_MAX_PENDING_LIST_LENGTH"
.LASF311:
	.string	"REG_NONNEG"
.LASF125:
	.string	"MODE_VECTOR_FLOAT"
.LASF215:
	.string	"POST_MODIFY"
.LASF477:
	.string	"reg_weight"
.LASF323:
	.string	"REG_BR_PRED"
.LASF141:
	.string	"DEFINE_PEEPHOLE"
.LASF52:
	.string	"long long unsigned int"
.LASF352:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF265:
	.string	"offset"
.LASF262:
	.string	"addr_diff_vec_flags"
.LASF137:
	.string	"MATCH_OP_DUP"
.LASF151:
	.string	"SEQUENCE"
.LASF549:
	.string	"free_dependency_caches"
.LASF68:
	.string	"QFmode"
.LASF552:
	.string	"reg_pending_sets_head"
.LASF403:
	.string	"sets"
.LASF581:
	.string	"sched-deps.c"
.LASF492:
	.string	"LAST_PARAM"
.LASF525:
	.string	"for_read"
.LASF178:
	.string	"RESX"
.LASF426:
	.string	"dest"
.LASF166:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF460:
	.string	"next_tail"
.LASF216:
	.string	"UNORDERED"
.LASF115:
	.string	"MAX_MACHINE_MODE"
.LASF441:
	.string	"pending_flush_length"
.LASF295:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF133:
	.string	"MATCH_SCRATCH"
.LASF183:
	.string	"CONST"
.LASF551:
	.string	"finish_deps_global"
.LASF532:
	.string	"sched_analyze_insn"
.LASF232:
	.string	"SQRT"
.LASF360:
	.string	"GR_CC0"
.LASF116:
	.string	"mode_class"
.LASF198:
	.string	"MULT"
.LASF121:
	.string	"MODE_CC"
.LASF293:
	.string	"local_set"
.LASF64:
	.string	"PQImode"
.LASF455:
	.string	"rank"
.LASF481:
	.string	"priority_known"
.LASF161:
	.string	"CALL_INSN"
.LASF541:
	.string	"dest_regno"
.LASF186:
	.string	"SUBREG"
.LASF99:
	.string	"V16QImode"
.LASF332:
	.string	"REG_ALWAYS_RETURN"
.LASF53:
	.string	"long long int"
.LASF310:
	.string	"REG_LIBCALL"
.LASF75:
	.string	"QCmode"
.LASF184:
	.string	"VALUE"
.LASF164:
	.string	"NOTE"
.LASF208:
	.string	"UMIN"
.LASF134:
	.string	"MATCH_DUP"
.LASF371:
	.string	"HARD_REG_ELT_TYPE"
.LASF287:
	.string	"basic_block_def"
.LASF568:
	.string	"reload_completed"
.LASF382:
	.string	"BITMAP_IOR"
.LASF7:
	.string	"used"
.LASF451:
	.string	"init_ready_list"
.LASF559:
	.string	"true_dependency_cache"
.LASF431:
	.string	"uses"
.LASF339:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF376:
	.string	"bitmap_element"
.LASF466:
	.string	"haifa_insn_data"
.LASF82:
	.string	"CHImode"
.LASF355:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF156:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF180:
	.string	"CONST_DOUBLE"
.LASF400:
	.string	"first_uid"
.LASF111:
	.string	"CCNOmode"
.LASF92:
	.string	"V4HImode"
.LASF491:
	.string	"PARAM_MAX_GCSE_PASSES"
.LASF218:
	.string	"UNEQ"
.LASF201:
	.string	"ASHIFT"
.LASF468:
	.string	"line_note"
.LASF206:
	.string	"SMIN"
.LASF517:
	.string	"__FUNCTION__"
.LASF193:
	.string	"IF_THEN_ELSE"
.LASF574:
	.string	"frame_pointer_needed"
.LASF584:
	.string	"find_insn_list"
.LASF351:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF348:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF43:
	.string	"unsigned int"
.LASF454:
	.string	"new_ready"
.LASF583:
	.string	"tree_node"
.LASF542:
	.string	"sched_analyze"
.LASF219:
	.string	"UNGE"
.LASF50:
	.string	"short int"
.LASF291:
	.string	"pred"
.LASF220:
	.string	"UNGT"
.LASF374:
	.string	"prev"
.LASF459:
	.string	"prev_head"
.LASF56:
	.string	"VOIDmode"
.LASF333:
	.string	"REG_VTABLE_REF"
.LASF486:
	.string	"PARAM_MAX_INLINE_INSNS"
.LASF576:
	.string	"h_i_d"
.LASF368:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF236:
	.string	"LO_SUM"
.LASF544:
	.string	"compute_forward_dependences"
.LASF300:
	.string	"frequency"
.LASF269:
	.string	"rtwint"
.LASF425:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
