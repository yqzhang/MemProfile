	.file	"local-alloc.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 local-alloc.c -mtune=generic -march=x86-64 -g
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
	.local	next_qty
	.comm	next_qty,4,4
	.local	qty
	.comm	qty,8,8
	.local	qty_phys_copy_sugg
	.comm	qty_phys_copy_sugg,8,8
	.local	qty_phys_sugg
	.comm	qty_phys_sugg,8,8
	.local	qty_phys_num_copy_sugg
	.comm	qty_phys_num_copy_sugg,8,8
	.local	qty_phys_num_sugg
	.comm	qty_phys_num_sugg,8,8
	.local	reg_next_in_qty
	.comm	reg_next_in_qty,8,8
	.local	reg_qty
	.comm	reg_qty,8,8
	.local	reg_offset
	.comm	reg_offset,8,8
	.comm	reg_renumber,8,8
	.local	regs_live
	.comm	regs_live,8,8
	.local	regs_live_at
	.comm	regs_live_at,8,8
	.local	this_insn_number
	.comm	this_insn_number,4,4
	.local	this_insn
	.comm	this_insn,8,8
	.local	reg_equiv
	.comm	reg_equiv,8,8
	.local	recorded_label_ref
	.comm	recorded_label_ref,4,4
	.type	alloc_qty, @function
alloc_qty:
.LFB2:
	.file 1 "local-alloc.c"
	.loc 1 315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# regno, regno
	movl	%esi, -40(%rbp)	# mode, mode
	movl	%edx, -44(%rbp)	# size, size
	movl	%ecx, -48(%rbp)	# birth, birth
	.loc 1 316 0
	movl	next_qty(%rip), %eax	# next_qty, next_qty.0
	leal	1(%rax), %edx	#, next_qty.2
	movl	%edx, next_qty(%rip)	# next_qty.2, next_qty
	movl	%eax, -20(%rbp)	# next_qty.1, qtyno
	.loc 1 318 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.3
	movl	-36(%rbp), %edx	# regno, tmp127
	movslq	%edx, %rdx	# tmp127, D.14864
	salq	$2, %rdx	#, D.14864
	addq	%rax, %rdx	# reg_qty.3, D.14865
	movl	-20(%rbp), %eax	# qtyno, tmp128
	movl	%eax, (%rdx)	# tmp128, *_9
	.loc 1 319 0
	movq	reg_offset(%rip), %rdx	# reg_offset, reg_offset.4
	movl	-36(%rbp), %eax	# regno, tmp129
	cltq
	addq	%rdx, %rax	# reg_offset.4, D.14867
	movb	$0, (%rax)	#, *_12
	.loc 1 320 0
	movq	reg_next_in_qty(%rip), %rax	# reg_next_in_qty, reg_next_in_qty.5
	movl	-36(%rbp), %edx	# regno, tmp130
	movslq	%edx, %rdx	# tmp130, D.14864
	salq	$2, %rdx	#, D.14864
	addq	%rdx, %rax	# D.14864, D.14865
	movl	$-1, (%rax)	#, *_16
	.loc 1 322 0
	movq	qty(%rip), %rcx	# qty, qty.6
	movl	-20(%rbp), %eax	# qtyno, tmp131
	movslq	%eax, %rdx	# tmp131, D.14864
	movq	%rdx, %rax	# D.14864, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.14864, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# D.14864, tmp132
	salq	$2, %rax	#, tmp133
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movl	-36(%rbp), %eax	# regno, tmp134
	movl	%eax, 24(%rdx)	# tmp134, _20->first_reg
	.loc 1 323 0
	movq	qty(%rip), %rcx	# qty, qty.7
	movl	-20(%rbp), %eax	# qtyno, tmp135
	movslq	%eax, %rdx	# tmp135, D.14864
	movq	%rdx, %rax	# D.14864, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.14864, tmp136
	addq	%rax, %rax	# tmp136
	addq	%rdx, %rax	# D.14864, tmp136
	salq	$2, %rax	#, tmp137
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movl	-44(%rbp), %eax	# size, tmp138
	movl	%eax, 16(%rdx)	# tmp138, _24->size
	.loc 1 324 0
	movq	qty(%rip), %rcx	# qty, qty.8
	movl	-20(%rbp), %eax	# qtyno, tmp139
	movslq	%eax, %rdx	# tmp139, D.14864
	movq	%rdx, %rax	# D.14864, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.14864, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# D.14864, tmp140
	salq	$2, %rax	#, tmp141
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movl	-40(%rbp), %eax	# mode, tmp142
	movl	%eax, 36(%rdx)	# tmp142, _29->mode
	.loc 1 325 0
	movq	qty(%rip), %rcx	# qty, qty.9
	movl	-20(%rbp), %eax	# qtyno, tmp143
	movslq	%eax, %rdx	# tmp143, D.14864
	movq	%rdx, %rax	# D.14864, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.14864, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# D.14864, tmp144
	salq	$2, %rax	#, tmp145
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movl	-48(%rbp), %eax	# birth, tmp146
	movl	%eax, 8(%rdx)	# tmp146, _34->birth
	.loc 1 326 0
	movq	qty(%rip), %rcx	# qty, qty.10
	movl	-20(%rbp), %eax	# qtyno, tmp147
	movslq	%eax, %rdx	# tmp147, D.14864
	movq	%rdx, %rax	# D.14864, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.14864, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# D.14864, tmp148
	salq	$2, %rax	#, tmp149
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.11
	movl	-36(%rbp), %ecx	# regno, tmp151
	movslq	%ecx, %rcx	# tmp151, tmp150
	addq	$4, %rcx	#, tmp152
	movq	(%rax,%rcx,8), %rax	# reg_n_info.11_40->data.reg, D.14869
	movl	32(%rax), %eax	# _41->calls_crossed, D.14870
	movl	%eax, 20(%rdx)	# D.14870, _39->n_calls_crossed
	.loc 1 327 0
	movq	qty(%rip), %rcx	# qty, qty.12
	movl	-20(%rbp), %eax	# qtyno, tmp153
	movslq	%eax, %rdx	# tmp153, D.14864
	movq	%rdx, %rax	# D.14864, tmp154
	salq	$2, %rax	#, tmp154
	addq	%rdx, %rax	# D.14864, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rdx, %rax	# D.14864, tmp154
	salq	$2, %rax	#, tmp155
	leaq	(%rcx,%rax), %rbx	#, D.14868
	movl	-36(%rbp), %eax	# regno, tmp156
	movl	%eax, %edi	# tmp156,
	call	reg_preferred_class	#
	movl	%eax, 28(%rbx)	# D.14871, _46->min_class
	.loc 1 328 0
	movq	qty(%rip), %rcx	# qty, qty.13
	movl	-20(%rbp), %eax	# qtyno, tmp157
	movslq	%eax, %rdx	# tmp157, D.14864
	movq	%rdx, %rax	# D.14864, tmp158
	salq	$2, %rax	#, tmp158
	addq	%rdx, %rax	# D.14864, tmp158
	addq	%rax, %rax	# tmp158
	addq	%rdx, %rax	# D.14864, tmp158
	salq	$2, %rax	#, tmp159
	leaq	(%rcx,%rax), %rbx	#, D.14868
	movl	-36(%rbp), %eax	# regno, tmp160
	movl	%eax, %edi	# tmp160,
	call	reg_alternate_class	#
	movl	%eax, 32(%rbx)	# D.14871, _51->alternate_class
	.loc 1 329 0
	movq	qty(%rip), %rcx	# qty, qty.14
	movl	-20(%rbp), %eax	# qtyno, tmp161
	movslq	%eax, %rdx	# tmp161, D.14864
	movq	%rdx, %rax	# D.14864, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.14864, tmp162
	addq	%rax, %rax	# tmp162
	addq	%rdx, %rax	# D.14864, tmp162
	salq	$2, %rax	#, tmp163
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.15
	movl	-36(%rbp), %ecx	# regno, tmp165
	movslq	%ecx, %rcx	# tmp165, tmp164
	addq	$4, %rcx	#, tmp166
	movq	(%rax,%rcx,8), %rax	# reg_n_info.15_57->data.reg, D.14869
	movl	16(%rax), %eax	# _58->refs, D.14870
	movl	%eax, (%rdx)	# D.14870, _56->n_refs
	.loc 1 330 0
	movq	qty(%rip), %rcx	# qty, qty.16
	movl	-20(%rbp), %eax	# qtyno, tmp167
	movslq	%eax, %rdx	# tmp167, D.14864
	movq	%rdx, %rax	# D.14864, tmp168
	salq	$2, %rax	#, tmp168
	addq	%rdx, %rax	# D.14864, tmp168
	addq	%rax, %rax	# tmp168
	addq	%rdx, %rax	# D.14864, tmp168
	salq	$2, %rax	#, tmp169
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.17
	movl	-36(%rbp), %ecx	# regno, tmp171
	movslq	%ecx, %rcx	# tmp171, tmp170
	addq	$4, %rcx	#, tmp172
	movq	(%rax,%rcx,8), %rax	# reg_n_info.17_64->data.reg, D.14869
	movl	20(%rax), %eax	# _65->freq, D.14870
	movl	%eax, 4(%rdx)	# D.14870, _63->freq
	.loc 1 331 0
	movq	qty(%rip), %rcx	# qty, qty.18
	movl	-20(%rbp), %eax	# qtyno, tmp173
	movslq	%eax, %rdx	# tmp173, D.14864
	movq	%rdx, %rax	# D.14864, tmp174
	salq	$2, %rax	#, tmp174
	addq	%rdx, %rax	# D.14864, tmp174
	addq	%rax, %rax	# tmp174
	addq	%rdx, %rax	# D.14864, tmp174
	salq	$2, %rax	#, tmp175
	leaq	(%rcx,%rax), %rdx	#, D.14868
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.19
	movl	-36(%rbp), %ecx	# regno, tmp177
	movslq	%ecx, %rcx	# tmp177, tmp176
	addq	$4, %rcx	#, tmp178
	movq	(%rax,%rcx,8), %rax	# reg_n_info.19_71->data.reg, D.14869
	movzbl	40(%rax), %eax	# _72->changes_mode, D.14872
	movb	%al, 42(%rdx)	# D.14872, _70->changes_mode
	.loc 1 332 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	alloc_qty, .-alloc_qty
	.globl	local_alloc
	.type	local_alloc, @function
local_alloc:
.LFB3:
	.loc 1 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 344 0
	movl	$0, recorded_label_ref(%rip)	#, recorded_label_ref
	.loc 1 350 0
	call	x86_order_regs_for_local_alloc	#
	.loc 1 355 0
	call	update_equiv_regs	#
	.loc 1 359 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.20
	subl	$53, %eax	#, tmp146
	movl	%eax, -4(%rbp)	# tmp146, max_qty
	.loc 1 365 0
	movl	-4(%rbp), %eax	# max_qty, tmp147
	movslq	%eax, %rdx	# tmp147, D.14873
	movq	%rdx, %rax	# D.14873, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.14873, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# D.14873, tmp148
	salq	$2, %rax	#, tmp149
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, qty(%rip)	# qty.21, qty
	.loc 1 367 0
	movl	-4(%rbp), %eax	# max_qty, tmp151
	cltq
	salq	$3, %rax	#, D.14873
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, qty_phys_copy_sugg(%rip)	# qty_phys_copy_sugg.22, qty_phys_copy_sugg
	.loc 1 368 0
	movl	-4(%rbp), %eax	# max_qty, tmp153
	cltq
	addq	%rax, %rax	# D.14873
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, qty_phys_num_copy_sugg(%rip)	# qty_phys_num_copy_sugg.23, qty_phys_num_copy_sugg
	.loc 1 369 0
	movl	-4(%rbp), %eax	# max_qty, tmp155
	cltq
	salq	$3, %rax	#, D.14873
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, qty_phys_sugg(%rip)	# qty_phys_sugg.24, qty_phys_sugg
	.loc 1 370 0
	movl	-4(%rbp), %eax	# max_qty, tmp157
	cltq
	addq	%rax, %rax	# D.14873
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, qty_phys_num_sugg(%rip)	# qty_phys_num_sugg.25, qty_phys_num_sugg
	.loc 1 372 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.26
	cltq
	salq	$2, %rax	#, D.14873
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, reg_qty(%rip)	# reg_qty.27, reg_qty
	.loc 1 373 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.28
	cltq
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, reg_offset(%rip)	# reg_offset.29, reg_offset
	.loc 1 374 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.30
	cltq
	salq	$2, %rax	#, D.14873
	movq	%rax, %rdi	# D.14873,
	call	xmalloc	#
	movq	%rax, reg_next_in_qty(%rip)	# reg_next_in_qty.31, reg_next_in_qty
	.loc 1 383 0
	movl	$53, -8(%rbp)	#, i
	jmp	.L3	#
.L6:
	.loc 1 385 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.32
	movl	-8(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	addq	$4, %rdx	#, tmp164
	movq	(%rax,%rdx,8), %rax	# reg_n_info.32_34->data.reg, D.14874
	movl	36(%rax), %eax	# _35->basic_block, D.14875
	testl	%eax, %eax	# D.14875
	js	.L4	#,
	.loc 1 385 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.33
	movl	-8(%rbp), %edx	# i, tmp166
	movslq	%edx, %rdx	# tmp166, tmp165
	addq	$4, %rdx	#, tmp167
	movq	(%rax,%rdx,8), %rax	# reg_n_info.33_37->data.reg, D.14874
	movl	24(%rax), %eax	# _38->deaths, D.14875
	cmpl	$1, %eax	#, D.14875
	jne	.L4	#,
	.loc 1 386 0 is_stmt 1
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.34
	movl	-8(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, D.14873
	salq	$2, %rdx	#, D.14873
	addq	%rdx, %rax	# D.14873, D.14876
	movl	$-2, (%rax)	#, *_43
	jmp	.L5	#
.L4:
	.loc 1 388 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.35
	movl	-8(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, D.14873
	salq	$2, %rdx	#, D.14873
	addq	%rdx, %rax	# D.14873, D.14876
	movl	$-1, (%rax)	#, *_47
.L5:
	.loc 1 383 0
	addl	$1, -8(%rbp)	#, i
.L3:
	.loc 1 383 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.36
	cmpl	%eax, -8(%rbp)	# max_regno.36, i
	jl	.L6	#,
	.loc 1 392 0 is_stmt 1
	movl	-4(%rbp), %eax	# max_qty, tmp170
	movl	%eax, next_qty(%rip)	# tmp170, next_qty
	.loc 1 396 0
	movl	$0, -12(%rbp)	#, b
	jmp	.L7	#
.L12:
	.loc 1 405 0
	movl	next_qty(%rip), %eax	# next_qty, next_qty.37
	cmpl	$5, %eax	#, next_qty.37
	jg	.L8	#,
	.loc 1 407 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L9	#
.L10:
	.loc 1 409 0 discriminator 2
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.38
	movl	-8(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, D.14873
	salq	$3, %rdx	#, D.14873
	addq	%rdx, %rax	# D.14873, D.14877
	movq	$0, (%rax)	#, *_57
	.loc 1 410 0 discriminator 2
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.39
	movl	-8(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, D.14873
	addq	%rdx, %rdx	# D.14873
	addq	%rdx, %rax	# D.14873, D.14878
	movw	$0, (%rax)	#, *_61
	.loc 1 411 0 discriminator 2
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.40
	movl	-8(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, D.14873
	salq	$3, %rdx	#, D.14873
	addq	%rdx, %rax	# D.14873, D.14877
	movq	$0, (%rax)	#, *_65
	.loc 1 412 0 discriminator 2
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.41
	movl	-8(%rbp), %edx	# i, tmp174
	movslq	%edx, %rdx	# tmp174, D.14873
	addq	%rdx, %rdx	# D.14873
	addq	%rdx, %rax	# D.14873, D.14878
	movw	$0, (%rax)	#, *_69
	.loc 1 407 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L9:
	.loc 1 407 0 is_stmt 0 discriminator 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.42
	cmpl	%eax, -8(%rbp)	# next_qty.42, i
	jl	.L10	#,
	jmp	.L11	#
.L8:
	.loc 1 420 0 is_stmt 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.43
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14873
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.44
	movl	$0, %esi	#,
	movq	%rax, %rdi	# qty_phys_copy_sugg.44,
	call	memset	#
	.loc 1 421 0
	movl	next_qty(%rip), %eax	# next_qty, next_qty.45
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14873
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.46
	movl	$0, %esi	#,
	movq	%rax, %rdi	# qty_phys_num_copy_sugg.46,
	call	memset	#
	.loc 1 422 0
	movl	next_qty(%rip), %eax	# next_qty, next_qty.47
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14873
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.48
	movl	$0, %esi	#,
	movq	%rax, %rdi	# qty_phys_sugg.48,
	call	memset	#
	.loc 1 423 0
	movl	next_qty(%rip), %eax	# next_qty, next_qty.49
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14873
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.50
	movl	$0, %esi	#,
	movq	%rax, %rdi	# qty_phys_num_sugg.50,
	call	memset	#
.L11:
	.loc 1 426 0
	movl	$0, next_qty(%rip)	#, next_qty
	.loc 1 428 0
	movl	-12(%rbp), %eax	# b, tmp175
	movl	%eax, %edi	# tmp175,
	call	block_alloc	#
	.loc 1 396 0
	addl	$1, -12(%rbp)	#, b
.L7:
	.loc 1 396 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.51
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.51, b
	jl	.L12	#,
	.loc 1 431 0 is_stmt 1
	movq	qty(%rip), %rax	# qty, qty.52
	movq	%rax, %rdi	# qty.52,
	call	free	#
	.loc 1 432 0
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.53
	movq	%rax, %rdi	# qty_phys_copy_sugg.53,
	call	free	#
	.loc 1 433 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.54
	movq	%rax, %rdi	# qty_phys_num_copy_sugg.54,
	call	free	#
	.loc 1 434 0
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.55
	movq	%rax, %rdi	# qty_phys_sugg.55,
	call	free	#
	.loc 1 435 0
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.56
	movq	%rax, %rdi	# qty_phys_num_sugg.56,
	call	free	#
	.loc 1 437 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.57
	movq	%rax, %rdi	# reg_qty.57,
	call	free	#
	.loc 1 438 0
	movq	reg_offset(%rip), %rax	# reg_offset, reg_offset.58
	movq	%rax, %rdi	# reg_offset.58,
	call	free	#
	.loc 1 439 0
	movq	reg_next_in_qty(%rip), %rax	# reg_next_in_qty, reg_next_in_qty.59
	movq	%rax, %rdi	# reg_next_in_qty.59,
	call	free	#
	.loc 1 441 0
	movl	recorded_label_ref(%rip), %eax	# recorded_label_ref, D.14875
	.loc 1 442 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	local_alloc, .-local_alloc
	.local	equiv_mem
	.comm	equiv_mem,8,8
	.local	equiv_mem_modified
	.comm	equiv_mem_modified,4,4
	.type	validate_equiv_mem_from_store, @function
validate_equiv_mem_from_store:
.LFB4:
	.loc 1 459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# dest, dest
	movq	%rsi, -16(%rbp)	# set, set
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 460 0
	movq	-8(%rbp), %rax	# dest, tmp65
	movzwl	(%rax), %eax	# dest_1(D)->code, D.14879
	cmpw	$61, %ax	#, D.14879
	jne	.L15	#,
	.loc 1 461 0
	movq	equiv_mem(%rip), %rdx	# equiv_mem, equiv_mem.60
	movq	-8(%rbp), %rax	# dest, tmp66
	movq	%rdx, %rsi	# equiv_mem.60,
	movq	%rax, %rdi	# tmp66,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14880
	jne	.L16	#,
.L15:
	.loc 1 462 0
	movq	-8(%rbp), %rax	# dest, tmp67
	movzwl	(%rax), %eax	# dest_1(D)->code, D.14879
	cmpw	$66, %ax	#, D.14879
	jne	.L14	#,
	.loc 1 463 0
	movq	equiv_mem(%rip), %rdx	# equiv_mem, equiv_mem.61
	movq	-8(%rbp), %rax	# dest, tmp68
	movl	$rtx_varies_p, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	true_dependence	#
	testl	%eax, %eax	# D.14880
	je	.L14	#,
.L16:
	.loc 1 464 0
	movl	$1, equiv_mem_modified(%rip)	#, equiv_mem_modified
.L14:
	.loc 1 465 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	validate_equiv_mem_from_store, .-validate_equiv_mem_from_store
	.type	validate_equiv_mem, @function
validate_equiv_mem:
.LFB5:
	.loc 1 479 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# start, start
	movq	%rsi, -32(%rbp)	# reg, reg
	movq	%rdx, -40(%rbp)	# memref, memref
	.loc 1 483 0
	movq	-40(%rbp), %rax	# memref, tmp79
	movq	%rax, equiv_mem(%rip)	# tmp79, equiv_mem
	.loc 1 484 0
	movl	$0, equiv_mem_modified(%rip)	#, equiv_mem_modified
	.loc 1 488 0
	movq	-40(%rbp), %rax	# memref, tmp80
	movq	%rax, %rdi	# tmp80,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14881
	je	.L19	#,
	.loc 1 489 0
	movl	$0, %eax	#, D.14881
	jmp	.L20	#
.L19:
	.loc 1 491 0
	movq	-24(%rbp), %rax	# start, tmp81
	movq	%rax, -16(%rbp)	# tmp81, insn
	jmp	.L21	#
.L31:
	.loc 1 493 0
	movq	-16(%rbp), %rax	# insn, tmp82
	movzwl	(%rax), %eax	# insn_1->code, D.14882
	movzwl	%ax, %eax	# D.14882, D.14881
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14883
	cmpb	$105, %al	#, D.14883
	je	.L22	#,
	.loc 1 494 0
	jmp	.L23	#
.L22:
	.loc 1 496 0
	movq	-32(%rbp), %rdx	# reg, tmp84
	movq	-16(%rbp), %rax	# insn, tmp85
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14884
	je	.L24	#,
	.loc 1 497 0
	movl	$1, %eax	#, D.14881
	jmp	.L20	#
.L24:
	.loc 1 499 0
	movq	-16(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.14882
	cmpw	$34, %ax	#, D.14882
	jne	.L25	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# memref, tmp87
	movzbl	3(%rax), %eax	# *memref_4(D), D.14885
	andl	$4, %eax	#, D.14885
	testb	%al, %al	# D.14885
	jne	.L25	#,
	.loc 1 500 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp88
	movzbl	3(%rax), %eax	# *insn_1, D.14885
	andl	$4, %eax	#, D.14885
	testb	%al, %al	# D.14885
	jne	.L25	#,
	.loc 1 501 0
	movl	$0, %eax	#, D.14881
	jmp	.L20	#
.L25:
	.loc 1 503 0
	movq	-16(%rbp), %rax	# insn, tmp89
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14884
	movl	$0, %edx	#,
	movl	$validate_equiv_mem_from_store, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	note_stores	#
	.loc 1 510 0
	movq	-16(%rbp), %rax	# insn, tmp90
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp91
	movq	%rax, -8(%rbp)	# tmp91, note
	jmp	.L26	#
.L29:
	.loc 1 511 0
	movq	-8(%rbp), %rax	# note, tmp92
	movzbl	2(%rax), %eax	# note_2->mode, D.14885
	cmpb	$2, %al	#, D.14885
	je	.L27	#,
	.loc 1 512 0
	movq	-8(%rbp), %rax	# note, tmp93
	movzbl	2(%rax), %eax	# note_2->mode, D.14885
	cmpb	$1, %al	#, D.14885
	jne	.L28	#,
.L27:
	.loc 1 513 0
	movq	-8(%rbp), %rax	# note, tmp94
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.14884
	movzwl	(%rax), %eax	# _26->code, D.14882
	cmpw	$61, %ax	#, D.14882
	jne	.L28	#,
	.loc 1 514 0
	movq	-8(%rbp), %rax	# note, tmp95
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.14884
	movq	-40(%rbp), %rdx	# memref, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# D.14884,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14881
	je	.L28	#,
	.loc 1 515 0
	movl	$0, %eax	#, D.14881
	jmp	.L20	#
.L28:
	.loc 1 510 0
	movq	-8(%rbp), %rax	# note, tmp97
	movq	16(%rax), %rax	# note_2->fld[1].rtx, tmp98
	movq	%rax, -8(%rbp)	# tmp98, note
.L26:
	.loc 1 510 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, note
	jne	.L29	#,
.L23:
	.loc 1 491 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp99
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp100
	movq	%rax, -16(%rbp)	# tmp100, insn
.L21:
	.loc 1 491 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	je	.L30	#,
	.loc 1 491 0 discriminator 2
	movl	equiv_mem_modified(%rip), %eax	# equiv_mem_modified, equiv_mem_modified.62
	testl	%eax, %eax	# equiv_mem_modified.62
	je	.L31	#,
.L30:
	.loc 1 518 0 is_stmt 1
	movl	$0, %eax	#, D.14881
.L20:
	.loc 1 519 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	validate_equiv_mem, .-validate_equiv_mem
	.type	equiv_init_varies_p, @function
equiv_init_varies_p:
.LFB6:
	.loc 1 526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 527 0
	movq	-40(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_6(D)->code, D.14887
	movzwl	%ax, %eax	# D.14887, tmp95
	movl	%eax, -12(%rbp)	# tmp95, code
	.loc 1 531 0
	movl	-12(%rbp), %eax	# code, tmp97
	subl	$41, %eax	#, tmp96
	cmpl	$30, %eax	#, tmp96
	ja	.L54	#,
	movl	%eax, %eax	# tmp96, tmp98
	movq	.L35(,%rax,8), %rax	#, tmp99
	jmp	*%rax	# tmp99
	.section	.rodata
	.align 8
	.align 4
.L35:
	.quad	.L34
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L54
	.quad	.L36
	.quad	.L54
	.quad	.L54
	.quad	.L37
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L38
	.quad	.L36
	.quad	.L36
	.quad	.L54
	.quad	.L54
	.quad	.L39
	.text
.L38:
	.loc 1 534 0
	movq	-40(%rbp), %rax	# x, tmp100
	movzbl	3(%rax), %eax	# *x_6(D), D.14888
	andl	$4, %eax	#, D.14888
	testb	%al, %al	# D.14888
	je	.L40	#,
	.loc 1 534 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp101
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.14889
	movq	%rax, %rdi	# D.14889,
	call	equiv_init_varies_p	#
	testl	%eax, %eax	# D.14886
	je	.L41	#,
.L40:
	.loc 1 534 0 discriminator 1
	movl	$1, %eax	#, iftmp.63
	jmp	.L42	#
.L41:
	.loc 1 534 0 discriminator 3
	movl	$0, %eax	#, iftmp.63
.L42:
	.loc 1 534 0 discriminator 4
	jmp	.L43	#
.L39:
	.loc 1 537 0 is_stmt 1
	movl	$1, %eax	#, D.14886
	jmp	.L43	#
.L36:
	.loc 1 545 0
	movl	$0, %eax	#, D.14886
	jmp	.L43	#
.L37:
	.loc 1 548 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.65
	movq	-40(%rbp), %rax	# x, tmp102
	movl	8(%rax), %eax	# x_6(D)->fld[0].rtuint, D.14890
	movl	%eax, %edx	# D.14890, D.14891
	movq	%rdx, %rax	# D.14891, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# D.14891, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# reg_equiv.65, D.14892
	movzbl	(%rax), %eax	# _22->replace, D.14893
	testb	%al, %al	# D.14893
	jne	.L44	#,
	.loc 1 548 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp105
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.14886
	je	.L44	#,
	.loc 1 548 0 discriminator 3
	movl	$1, %eax	#, iftmp.64
	jmp	.L45	#
.L44:
	.loc 1 548 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L45:
	.loc 1 548 0 discriminator 4
	jmp	.L43	#
.L34:
	.loc 1 551 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp106
	movzbl	3(%rax), %eax	# *x_6(D), D.14888
	andl	$8, %eax	#, D.14888
	testb	%al, %al	# D.14888
	je	.L33	#,
	.loc 1 552 0
	movl	$1, %eax	#, D.14886
	jmp	.L43	#
.L33:
.L54:
	.loc 1 557 0
	nop
	.loc 1 560 0
	movl	-12(%rbp), %eax	# code, code.66
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp108
	movq	%rax, -8(%rbp)	# tmp108, fmt
	.loc 1 561 0
	movl	-12(%rbp), %eax	# code, code.67
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14888
	movzbl	%al, %eax	# D.14888, D.14886
	subl	$1, %eax	#, tmp110
	movl	%eax, -20(%rbp)	# tmp110, i
	jmp	.L46	#
.L52:
	.loc 1 562 0
	movl	-20(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, D.14894
	movq	-8(%rbp), %rax	# fmt, tmp112
	addq	%rdx, %rax	# D.14894, D.14895
	movzbl	(%rax), %eax	# *_38, D.14893
	cmpb	$101, %al	#, D.14893
	jne	.L47	#,
	.loc 1 564 0
	movq	-40(%rbp), %rax	# x, tmp113
	movl	-20(%rbp), %edx	# i, tmp115
	movslq	%edx, %rdx	# tmp115, tmp114
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtx, D.14889
	movq	%rax, %rdi	# D.14889,
	call	equiv_init_varies_p	#
	testl	%eax, %eax	# D.14886
	je	.L48	#,
	.loc 1 565 0
	movl	$1, %eax	#, D.14886
	jmp	.L43	#
.L47:
	.loc 1 567 0
	movl	-20(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, D.14894
	movq	-8(%rbp), %rax	# fmt, tmp117
	addq	%rdx, %rax	# D.14894, D.14895
	movzbl	(%rax), %eax	# *_44, D.14893
	cmpb	$69, %al	#, D.14893
	jne	.L48	#,
.LBB2:
	.loc 1 570 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L49	#
.L51:
	.loc 1 571 0
	movq	-40(%rbp), %rax	# x, tmp118
	movl	-20(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtvec, D.14896
	movl	-16(%rbp), %edx	# j, tmp122
	movslq	%edx, %rdx	# tmp122, tmp121
	movq	8(%rax,%rdx,8), %rax	# _49->elem, D.14889
	movq	%rax, %rdi	# D.14889,
	call	equiv_init_varies_p	#
	testl	%eax, %eax	# D.14886
	je	.L50	#,
	.loc 1 572 0
	movl	$1, %eax	#, D.14886
	jmp	.L43	#
.L50:
	.loc 1 570 0
	addl	$1, -16(%rbp)	#, j
.L49:
	.loc 1 570 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp123
	movl	-20(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, tmp124
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtvec, D.14896
	movl	(%rax), %eax	# _47->num_elem, D.14886
	cmpl	-16(%rbp), %eax	# j, D.14886
	jg	.L51	#,
.L48:
.LBE2:
	.loc 1 561 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L46:
	.loc 1 561 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L52	#,
	.loc 1 575 0 is_stmt 1
	movl	$0, %eax	#, D.14886
.L43:
	.loc 1 576 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	equiv_init_varies_p, .-equiv_init_varies_p
	.type	equiv_init_movable_p, @function
equiv_init_movable_p:
.LFB7:
	.loc 1 587 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# regno, regno
	.loc 1 590 0
	movq	-40(%rbp), %rax	# x, tmp103
	movzwl	(%rax), %eax	# x_5(D)->code, D.14898
	movzwl	%ax, %eax	# D.14898, tmp104
	movl	%eax, -12(%rbp)	# tmp104, code
	.loc 1 592 0
	movl	-12(%rbp), %eax	# code, tmp106
	subl	$41, %eax	#, tmp105
	cmpl	$60, %eax	#, tmp105
	ja	.L79	#,
	movl	%eax, %eax	# tmp105, tmp107
	movq	.L58(,%rax,8), %rax	#, tmp108
	jmp	*%rax	# tmp108
	.section	.rodata
	.align 8
	.align 4
.L58:
	.quad	.L57
	.quad	.L79
	.quad	.L59
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L60
	.quad	.L79
	.quad	.L61
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L62
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L61
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.text
.L60:
	.loc 1 595 0
	movq	-40(%rbp), %rax	# x, tmp109
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.14899
	movl	-44(%rbp), %edx	# regno, tmp110
	movl	%edx, %esi	# tmp110,
	movq	%rax, %rdi	# D.14899,
	call	equiv_init_movable_p	#
	jmp	.L64	#
.L61:
	.loc 1 599 0
	movl	$0, %eax	#, D.14897
	jmp	.L64	#
.L63:
	.loc 1 607 0
	movl	$0, %eax	#, D.14897
	jmp	.L64	#
.L62:
	.loc 1 610 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.69
	movq	-40(%rbp), %rax	# x, tmp111
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.14900
	movl	%eax, %edx	# D.14900, D.14901
	movq	%rdx, %rax	# D.14901, tmp112
	salq	$2, %rax	#, tmp112
	addq	%rdx, %rax	# D.14901, tmp112
	salq	$3, %rax	#, tmp113
	addq	%rcx, %rax	# reg_equiv.69, D.14902
	movl	24(%rax), %ecx	# _17->loop_depth, D.14897
	movq	reg_equiv(%rip), %rsi	# reg_equiv, reg_equiv.70
	movl	-44(%rbp), %eax	# regno, tmp114
	movslq	%eax, %rdx	# tmp114, D.14901
	movq	%rdx, %rax	# D.14901, tmp115
	salq	$2, %rax	#, tmp115
	addq	%rdx, %rax	# D.14901, tmp115
	salq	$3, %rax	#, tmp116
	addq	%rsi, %rax	# reg_equiv.70, D.14902
	movl	24(%rax), %eax	# _22->loop_depth, D.14897
	.loc 1 612 0
	cmpl	%eax, %ecx	# D.14897, D.14897
	jl	.L65	#,
	.loc 1 611 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.71
	movq	-40(%rbp), %rax	# x, tmp117
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.14900
	movl	%eax, %edx	# D.14900, D.14901
	movq	%rdx, %rax	# D.14901, tmp118
	salq	$2, %rax	#, tmp118
	addq	%rdx, %rax	# D.14901, tmp118
	salq	$3, %rax	#, tmp119
	addq	%rcx, %rax	# reg_equiv.71, D.14902
	movzbl	(%rax), %eax	# _28->replace, D.14903
	testb	%al, %al	# D.14903
	jne	.L66	#,
.L65:
	.loc 1 612 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.72
	movq	-40(%rbp), %rdx	# x, tmp120
	movl	8(%rdx), %edx	# x_5(D)->fld[0].rtuint, D.14900
	movl	%edx, %edx	# D.14900, tmp121
	addq	$4, %rdx	#, tmp122
	movq	(%rax,%rdx,8), %rax	# reg_n_info.72_30->data.reg, D.14904
	movl	36(%rax), %eax	# _32->basic_block, D.14897
	testl	%eax, %eax	# D.14897
	jns	.L67	#,
	.loc 1 612 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp123
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.14897
	jne	.L67	#,
.L66:
	.loc 1 612 0 discriminator 1
	movl	$1, %eax	#, iftmp.68
	jmp	.L68	#
.L67:
	.loc 1 612 0 discriminator 3
	movl	$0, %eax	#, iftmp.68
.L68:
	.loc 1 610 0 is_stmt 1
	jmp	.L64	#
.L59:
	.loc 1 615 0
	movl	$0, %eax	#, D.14897
	jmp	.L64	#
.L57:
	.loc 1 618 0
	movq	-40(%rbp), %rax	# x, tmp124
	movzbl	3(%rax), %eax	# *x_5(D), D.14905
	andl	$8, %eax	#, D.14905
	testb	%al, %al	# D.14905
	je	.L56	#,
	.loc 1 619 0
	movl	$0, %eax	#, D.14897
	jmp	.L64	#
.L56:
.L79:
	.loc 1 624 0
	nop
	.loc 1 627 0
	movl	-12(%rbp), %eax	# code, code.73
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp126
	movq	%rax, -8(%rbp)	# tmp126, fmt
	.loc 1 628 0
	movl	-12(%rbp), %eax	# code, code.74
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14905
	movzbl	%al, %eax	# D.14905, D.14897
	subl	$1, %eax	#, tmp128
	movl	%eax, -20(%rbp)	# tmp128, i
	jmp	.L69	#
.L77:
	.loc 1 629 0
	movl	-20(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, D.14906
	movq	-8(%rbp), %rax	# fmt, tmp130
	addq	%rdx, %rax	# D.14906, D.14907
	movzbl	(%rax), %eax	# *_49, D.14903
	movsbl	%al, %eax	# D.14903, D.14897
	cmpl	$69, %eax	#, D.14897
	je	.L71	#,
	cmpl	$101, %eax	#, D.14897
	jne	.L70	#,
	.loc 1 632 0
	movq	-40(%rbp), %rax	# x, tmp131
	movl	-20(%rbp), %edx	# i, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtx, D.14899
	movl	-44(%rbp), %edx	# regno, tmp134
	movl	%edx, %esi	# tmp134,
	movq	%rax, %rdi	# D.14899,
	call	equiv_init_movable_p	#
	testl	%eax, %eax	# D.14897
	jne	.L73	#,
	.loc 1 633 0
	movl	$0, %eax	#, D.14897
	jmp	.L64	#
.L73:
	.loc 1 634 0
	jmp	.L70	#
.L71:
	.loc 1 636 0
	movq	-40(%rbp), %rax	# x, tmp135
	movl	-20(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.14908
	movl	(%rax), %eax	# _55->num_elem, D.14897
	subl	$1, %eax	#, tmp138
	movl	%eax, -16(%rbp)	# tmp138, j
	jmp	.L74	#
.L76:
	.loc 1 637 0
	movq	-40(%rbp), %rax	# x, tmp139
	movl	-20(%rbp), %edx	# i, tmp141
	movslq	%edx, %rdx	# tmp141, tmp140
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.14908
	movl	-16(%rbp), %edx	# j, tmp143
	movslq	%edx, %rdx	# tmp143, tmp142
	movq	8(%rax,%rdx,8), %rax	# _58->elem, D.14899
	movl	-44(%rbp), %edx	# regno, tmp144
	movl	%edx, %esi	# tmp144,
	movq	%rax, %rdi	# D.14899,
	call	equiv_init_movable_p	#
	testl	%eax, %eax	# D.14897
	jne	.L75	#,
	.loc 1 638 0
	movl	$0, %eax	#, D.14897
	jmp	.L64	#
.L75:
	.loc 1 636 0
	subl	$1, -16(%rbp)	#, j
.L74:
	.loc 1 636 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L76	#,
	.loc 1 639 0 is_stmt 1
	nop
.L70:
	.loc 1 628 0
	subl	$1, -20(%rbp)	#, i
.L69:
	.loc 1 628 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L77	#,
	.loc 1 642 0 is_stmt 1
	movl	$1, %eax	#, D.14897
.L64:
	.loc 1 643 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	equiv_init_movable_p, .-equiv_init_movable_p
	.type	contains_replace_regs, @function
contains_replace_regs:
.LFB8:
	.loc 1 650 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 653 0
	movq	-40(%rbp), %rax	# x, tmp83
	movzwl	(%rax), %eax	# x_4(D)->code, D.14910
	movzwl	%ax, %eax	# D.14910, tmp84
	movl	%eax, -12(%rbp)	# tmp84, code
	.loc 1 655 0
	movl	-12(%rbp), %eax	# code, tmp86
	subl	$54, %eax	#, tmp85
	cmpl	$80, %eax	#, tmp85
	ja	.L96	#,
	movl	%eax, %eax	# tmp85, tmp87
	movq	.L83(,%rax,8), %rax	#, tmp88
	jmp	*%rax	# tmp88
	.section	.rodata
	.align 8
	.align 4
.L83:
	.quad	.L82
	.quad	.L82
	.quad	.L82
	.quad	.L96
	.quad	.L82
	.quad	.L82
	.quad	.L96
	.quad	.L84
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L82
	.quad	.L82
	.quad	.L82
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L96
	.quad	.L82
	.text
.L82:
	.loc 1 666 0
	movl	$0, %eax	#, D.14909
	jmp	.L85	#
.L84:
	.loc 1 669 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.75
	movq	-40(%rbp), %rax	# x, tmp89
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.14911
	movl	%eax, %edx	# D.14911, D.14912
	movq	%rdx, %rax	# D.14912, tmp90
	salq	$2, %rax	#, tmp90
	addq	%rdx, %rax	# D.14912, tmp90
	salq	$3, %rax	#, tmp91
	addq	%rcx, %rax	# reg_equiv.75, D.14913
	movzbl	(%rax), %eax	# _12->replace, D.14914
	movsbl	%al, %eax	# D.14914, D.14909
	jmp	.L85	#
.L96:
	.loc 1 672 0
	nop
	.loc 1 675 0
	movl	-12(%rbp), %eax	# code, code.76
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp93
	movq	%rax, -8(%rbp)	# tmp93, fmt
	.loc 1 676 0
	movl	-12(%rbp), %eax	# code, code.77
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14915
	movzbl	%al, %eax	# D.14915, D.14909
	subl	$1, %eax	#, tmp95
	movl	%eax, -20(%rbp)	# tmp95, i
	jmp	.L86	#
.L94:
	.loc 1 677 0
	movl	-20(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, D.14916
	movq	-8(%rbp), %rax	# fmt, tmp97
	addq	%rdx, %rax	# D.14916, D.14917
	movzbl	(%rax), %eax	# *_22, D.14914
	movsbl	%al, %eax	# D.14914, D.14909
	cmpl	$69, %eax	#, D.14909
	je	.L88	#,
	cmpl	$101, %eax	#, D.14909
	jne	.L87	#,
	.loc 1 680 0
	movq	-40(%rbp), %rax	# x, tmp98
	movl	-20(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.14918
	movq	%rax, %rdi	# D.14918,
	call	contains_replace_regs	#
	testl	%eax, %eax	# D.14909
	je	.L90	#,
	.loc 1 681 0
	movl	$1, %eax	#, D.14909
	jmp	.L85	#
.L90:
	.loc 1 682 0
	jmp	.L87	#
.L88:
	.loc 1 684 0
	movq	-40(%rbp), %rax	# x, tmp101
	movl	-20(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.14919
	movl	(%rax), %eax	# _28->num_elem, D.14909
	subl	$1, %eax	#, tmp104
	movl	%eax, -16(%rbp)	# tmp104, j
	jmp	.L91	#
.L93:
	.loc 1 685 0
	movq	-40(%rbp), %rax	# x, tmp105
	movl	-20(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.14919
	movl	-16(%rbp), %edx	# j, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# _31->elem, D.14918
	movq	%rax, %rdi	# D.14918,
	call	contains_replace_regs	#
	testl	%eax, %eax	# D.14909
	je	.L92	#,
	.loc 1 686 0
	movl	$1, %eax	#, D.14909
	jmp	.L85	#
.L92:
	.loc 1 684 0
	subl	$1, -16(%rbp)	#, j
.L91:
	.loc 1 684 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L93	#,
	.loc 1 687 0 is_stmt 1
	nop
.L87:
	.loc 1 676 0
	subl	$1, -20(%rbp)	#, i
.L86:
	.loc 1 676 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L94	#,
	.loc 1 690 0 is_stmt 1
	movl	$0, %eax	#, D.14909
.L85:
	.loc 1 691 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	contains_replace_regs, .-contains_replace_regs
	.type	memref_referenced_p, @function
memref_referenced_p:
.LFB9:
	.loc 1 700 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# memref, memref
	movq	%rsi, -48(%rbp)	# x, x
	.loc 1 703 0
	movq	-48(%rbp), %rax	# x, tmp100
	movzwl	(%rax), %eax	# x_5(D)->code, D.14921
	movzwl	%ax, %eax	# D.14921, tmp101
	movl	%eax, -12(%rbp)	# tmp101, code
	.loc 1 705 0
	movl	-12(%rbp), %eax	# code, tmp103
	subl	$47, %eax	#, tmp102
	cmpl	$88, %eax	#, tmp102
	ja	.L120	#,
	movl	%eax, %eax	# tmp102, tmp104
	movq	.L100(,%rax,8), %rax	#, tmp105
	jmp	*%rax	# tmp105
	.section	.rodata
	.align 8
	.align 4
.L100:
	.quad	.L99
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L101
	.quad	.L101
	.quad	.L101
	.quad	.L120
	.quad	.L101
	.quad	.L101
	.quad	.L120
	.quad	.L102
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L103
	.quad	.L101
	.quad	.L101
	.quad	.L101
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L101
	.quad	.L101
	.text
.L101:
	.loc 1 717 0
	movl	$0, %eax	#, D.14920
	jmp	.L104	#
.L102:
	.loc 1 720 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.79
	movq	-48(%rbp), %rax	# x, tmp106
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.14922
	movl	%eax, %edx	# D.14922, D.14923
	movq	%rdx, %rax	# D.14923, tmp107
	salq	$2, %rax	#, tmp107
	addq	%rdx, %rax	# D.14923, tmp107
	salq	$3, %rax	#, tmp108
	addq	%rcx, %rax	# reg_equiv.79, D.14924
	movq	8(%rax), %rax	# _13->replacement, D.14925
	.loc 1 721 0
	testq	%rax, %rax	# D.14925
	je	.L105	#,
	.loc 1 722 0 discriminator 1
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.80
	movq	-48(%rbp), %rax	# x, tmp109
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.14922
	movl	%eax, %edx	# D.14922, D.14923
	movq	%rdx, %rax	# D.14923, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# D.14923, tmp110
	salq	$3, %rax	#, tmp111
	addq	%rcx, %rax	# reg_equiv.80, D.14924
	.loc 1 721 0 discriminator 1
	movq	8(%rax), %rdx	# _19->replacement, D.14925
	movq	-40(%rbp), %rax	# memref, tmp112
	movq	%rdx, %rsi	# D.14925,
	movq	%rax, %rdi	# tmp112,
	call	memref_referenced_p	#
	testl	%eax, %eax	# D.14920
	je	.L105	#,
	.loc 1 721 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.78
	jmp	.L106	#
.L105:
	.loc 1 721 0 discriminator 2
	movl	$0, %eax	#, iftmp.78
.L106:
	.loc 1 720 0 is_stmt 1
	jmp	.L104	#
.L103:
	.loc 1 725 0
	movq	-48(%rbp), %rdx	# x, tmp113
	movq	-40(%rbp), %rax	# memref, tmp114
	movl	$rtx_varies_p, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	true_dependence	#
	testl	%eax, %eax	# D.14920
	je	.L107	#,
	.loc 1 726 0
	movl	$1, %eax	#, D.14920
	jmp	.L104	#
.L107:
	.loc 1 727 0
	jmp	.L108	#
.L99:
	.loc 1 732 0
	movq	-48(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.14925
	movzwl	(%rax), %eax	# _28->code, D.14921
	cmpw	$66, %ax	#, D.14921
	jne	.L109	#,
	.loc 1 734 0
	movq	-48(%rbp), %rax	# x, tmp116
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.14925
	movq	8(%rax), %rdx	# _30->fld[0].rtx, D.14925
	movq	-40(%rbp), %rax	# memref, tmp117
	movq	%rdx, %rsi	# D.14925,
	movq	%rax, %rdi	# tmp117,
	call	memref_referenced_p	#
	testl	%eax, %eax	# D.14920
	je	.L110	#,
	.loc 1 735 0
	movl	$1, %eax	#, D.14920
	jmp	.L104	#
.L109:
	.loc 1 737 0
	movq	-48(%rbp), %rax	# x, tmp118
	movq	8(%rax), %rdx	# x_5(D)->fld[0].rtx, D.14925
	movq	-40(%rbp), %rax	# memref, tmp119
	movq	%rdx, %rsi	# D.14925,
	movq	%rax, %rdi	# tmp119,
	call	memref_referenced_p	#
	testl	%eax, %eax	# D.14920
	je	.L110	#,
	.loc 1 738 0
	movl	$1, %eax	#, D.14920
	jmp	.L104	#
.L110:
	.loc 1 740 0
	movq	-48(%rbp), %rax	# x, tmp120
	movq	16(%rax), %rdx	# x_5(D)->fld[1].rtx, D.14925
	movq	-40(%rbp), %rax	# memref, tmp121
	movq	%rdx, %rsi	# D.14925,
	movq	%rax, %rdi	# tmp121,
	call	memref_referenced_p	#
	jmp	.L104	#
.L120:
	.loc 1 743 0
	nop
.L108:
	.loc 1 746 0
	movl	-12(%rbp), %eax	# code, code.81
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp123
	movq	%rax, -8(%rbp)	# tmp123, fmt
	.loc 1 747 0
	movl	-12(%rbp), %eax	# code, code.82
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.14926
	movzbl	%al, %eax	# D.14926, D.14920
	subl	$1, %eax	#, tmp125
	movl	%eax, -20(%rbp)	# tmp125, i
	jmp	.L111	#
.L119:
	.loc 1 748 0
	movl	-20(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, D.14927
	movq	-8(%rbp), %rax	# fmt, tmp127
	addq	%rdx, %rax	# D.14927, D.14928
	movzbl	(%rax), %eax	# *_46, D.14929
	movsbl	%al, %eax	# D.14929, D.14920
	cmpl	$69, %eax	#, D.14920
	je	.L113	#,
	cmpl	$101, %eax	#, D.14920
	jne	.L112	#,
	.loc 1 751 0
	movq	-48(%rbp), %rax	# x, tmp128
	movl	-20(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, tmp129
	movq	8(%rax,%rdx,8), %rdx	# x_5(D)->fld[i_1].rtx, D.14925
	movq	-40(%rbp), %rax	# memref, tmp131
	movq	%rdx, %rsi	# D.14925,
	movq	%rax, %rdi	# tmp131,
	call	memref_referenced_p	#
	testl	%eax, %eax	# D.14920
	je	.L115	#,
	.loc 1 752 0
	movl	$1, %eax	#, D.14920
	jmp	.L104	#
.L115:
	.loc 1 753 0
	jmp	.L112	#
.L113:
	.loc 1 755 0
	movq	-48(%rbp), %rax	# x, tmp132
	movl	-20(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.14930
	movl	(%rax), %eax	# _52->num_elem, D.14920
	subl	$1, %eax	#, tmp135
	movl	%eax, -16(%rbp)	# tmp135, j
	jmp	.L116	#
.L118:
	.loc 1 756 0
	movq	-48(%rbp), %rax	# x, tmp136
	movl	-20(%rbp), %edx	# i, tmp138
	movslq	%edx, %rdx	# tmp138, tmp137
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.14930
	movl	-16(%rbp), %edx	# j, tmp140
	movslq	%edx, %rdx	# tmp140, tmp139
	movq	8(%rax,%rdx,8), %rdx	# _55->elem, D.14925
	movq	-40(%rbp), %rax	# memref, tmp141
	movq	%rdx, %rsi	# D.14925,
	movq	%rax, %rdi	# tmp141,
	call	memref_referenced_p	#
	testl	%eax, %eax	# D.14920
	je	.L117	#,
	.loc 1 757 0
	movl	$1, %eax	#, D.14920
	jmp	.L104	#
.L117:
	.loc 1 755 0
	subl	$1, -16(%rbp)	#, j
.L116:
	.loc 1 755 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L118	#,
	.loc 1 758 0 is_stmt 1
	nop
.L112:
	.loc 1 747 0
	subl	$1, -20(%rbp)	#, i
.L111:
	.loc 1 747 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L119	#,
	.loc 1 761 0 is_stmt 1
	movl	$0, %eax	#, D.14920
.L104:
	.loc 1 762 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	memref_referenced_p, .-memref_referenced_p
	.type	memref_used_between_p, @function
memref_used_between_p:
.LFB10:
	.loc 1 772 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# memref, memref
	movq	%rsi, -32(%rbp)	# start, start
	movq	%rdx, -40(%rbp)	# end, end
	.loc 1 775 0
	movq	-32(%rbp), %rax	# start, tmp67
	movq	24(%rax), %rax	# start_3(D)->fld[2].rtx, tmp68
	movq	%rax, -8(%rbp)	# tmp68, insn
	jmp	.L122	#
.L125:
	.loc 1 777 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_1->code, D.14933
	movzwl	%ax, %eax	# D.14933, D.14931
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14934
	cmpb	$105, %al	#, D.14934
	jne	.L123	#,
	.loc 1 777 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.14932
	movq	-24(%rbp), %rax	# memref, tmp72
	movq	%rdx, %rsi	# D.14932,
	movq	%rax, %rdi	# tmp72,
	call	memref_referenced_p	#
	testl	%eax, %eax	# D.14931
	je	.L123	#,
	.loc 1 778 0 is_stmt 1
	movl	$1, %eax	#, D.14931
	jmp	.L124	#
.L123:
	.loc 1 776 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, insn
.L122:
	.loc 1 775 0 discriminator 1
	movq	-40(%rbp), %rax	# end, tmp75
	movq	24(%rax), %rax	# end_5(D)->fld[2].rtx, D.14932
	cmpq	-8(%rbp), %rax	# insn, D.14932
	jne	.L125	#,
	.loc 1 780 0
	movl	$0, %eax	#, D.14931
.L124:
	.loc 1 781 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	memref_used_between_p, .-memref_used_between_p
	.globl	function_invariant_p
	.type	function_invariant_p, @function
function_invariant_p:
.LFB11:
	.loc 1 793 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 794 0
	movq	-8(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$67, %ax	#, D.14936
	je	.L127	#,
	.loc 1 794 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp93
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$68, %ax	#, D.14936
	je	.L127	#,
	movq	-8(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$54, %ax	#, D.14936
	je	.L127	#,
	movq	-8(%rbp), %rax	# x, tmp95
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$55, %ax	#, D.14936
	je	.L127	#,
	movq	-8(%rbp), %rax	# x, tmp96
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$58, %ax	#, D.14936
	je	.L127	#,
	movq	-8(%rbp), %rax	# x, tmp97
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$134, %ax	#, D.14936
	je	.L127	#,
	movq	-8(%rbp), %rax	# x, tmp98
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$56, %ax	#, D.14936
	je	.L127	#,
	movq	-8(%rbp), %rax	# x, tmp99
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$140, %ax	#, D.14936
	jne	.L128	#,
.L127:
	.loc 1 795 0 is_stmt 1
	movl	$1, %eax	#, D.14935
	jmp	.L129	#
.L128:
	.loc 1 796 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.14937
	cmpq	-8(%rbp), %rax	# x, D.14937
	je	.L130	#,
	.loc 1 796 0 is_stmt 0 discriminator 1
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.14937
	cmpq	-8(%rbp), %rax	# x, D.14937
	jne	.L131	#,
.L130:
	.loc 1 797 0 is_stmt 1
	movl	$1, %eax	#, D.14935
	jmp	.L129	#
.L131:
	.loc 1 798 0
	movq	-8(%rbp), %rax	# x, tmp100
	movzwl	(%rax), %eax	# x_2(D)->code, D.14936
	cmpw	$75, %ax	#, D.14936
	jne	.L132	#,
	.loc 1 799 0
	movq	-8(%rbp), %rax	# x, tmp101
	movq	8(%rax), %rdx	# x_2(D)->fld[0].rtx, D.14937
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.14937
	cmpq	%rax, %rdx	# D.14937, D.14937
	je	.L133	#,
	.loc 1 799 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp102
	movq	8(%rax), %rdx	# x_2(D)->fld[0].rtx, D.14937
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.14937
	cmpq	%rax, %rdx	# D.14937, D.14937
	jne	.L132	#,
.L133:
	.loc 1 800 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp103
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _18->code, D.14936
	cmpw	$67, %ax	#, D.14936
	je	.L134	#,
	.loc 1 800 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp104
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _20->code, D.14936
	cmpw	$68, %ax	#, D.14936
	je	.L134	#,
	movq	-8(%rbp), %rax	# x, tmp105
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _22->code, D.14936
	cmpw	$54, %ax	#, D.14936
	je	.L134	#,
	movq	-8(%rbp), %rax	# x, tmp106
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _24->code, D.14936
	cmpw	$55, %ax	#, D.14936
	je	.L134	#,
	movq	-8(%rbp), %rax	# x, tmp107
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _26->code, D.14936
	cmpw	$58, %ax	#, D.14936
	je	.L134	#,
	movq	-8(%rbp), %rax	# x, tmp108
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _28->code, D.14936
	cmpw	$134, %ax	#, D.14936
	je	.L134	#,
	movq	-8(%rbp), %rax	# x, tmp109
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _30->code, D.14936
	cmpw	$56, %ax	#, D.14936
	je	.L134	#,
	movq	-8(%rbp), %rax	# x, tmp110
	movq	16(%rax), %rax	# x_2(D)->fld[1].rtx, D.14937
	movzwl	(%rax), %eax	# _32->code, D.14936
	cmpw	$140, %ax	#, D.14936
	jne	.L132	#,
.L134:
	.loc 1 801 0 is_stmt 1
	movl	$1, %eax	#, D.14935
	jmp	.L129	#
.L132:
	.loc 1 802 0
	movl	$0, %eax	#, D.14935
.L129:
	.loc 1 803 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	function_invariant_p, .-function_invariant_p
	.section	.rodata
.LC0:
	.string	"local-alloc.c"
	.text
	.type	update_equiv_regs, @function
update_equiv_regs:
.LFB12:
	.loc 1 815 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 820 0
	movl	$0, -236(%rbp)	#, clear_regnos
	.loc 1 822 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.83
	cltq
	movl	$40, %esi	#,
	movq	%rax, %rdi	# D.14938,
	call	xcalloc	#
	movq	%rax, reg_equiv(%rip)	# reg_equiv.84, reg_equiv
	.loc 1 823 0
	leaq	-48(%rbp), %rax	#, tmp358
	movq	%rax, %rdi	# tmp358,
	call	bitmap_initialize	#
	.loc 1 825 0
	call	init_alias_analysis	#
	.loc 1 830 0
	movl	$0, -240(%rbp)	#, block
	jmp	.L136	#
.L166:
.LBB3:
	.loc 1 832 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.85
	movl	-240(%rbp), %edx	# block, tmp360
	movslq	%edx, %rdx	# tmp360, tmp359
	addq	$4, %rdx	#, tmp361
	movq	(%rax,%rdx,8), %rax	# basic_block_info.85_40->data.bb, tmp362
	movq	%rax, -136(%rbp)	# tmp362, bb
	.loc 1 833 0
	movq	-136(%rbp), %rax	# bb, tmp363
	movl	92(%rax), %eax	# bb_41->loop_depth, tmp364
	movl	%eax, -216(%rbp)	# tmp364, loop_depth
	.loc 1 835 0
	movq	-136(%rbp), %rax	# bb, tmp365
	movq	(%rax), %rax	# bb_41->head, tmp366
	movq	%rax, -192(%rbp)	# tmp366, insn
	jmp	.L137	#
.L165:
.LBB4:
	.loc 1 842 0
	movq	-192(%rbp), %rax	# insn, tmp367
	movzwl	(%rax), %eax	# insn_1->code, D.14940
	movzwl	%ax, %eax	# D.14940, D.14941
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14942
	cmpb	$105, %al	#, D.14942
	je	.L138	#,
	.loc 1 843 0
	jmp	.L139	#
.L138:
	.loc 1 845 0
	movq	-192(%rbp), %rax	# insn, tmp369
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp370
	movq	%rax, -184(%rbp)	# tmp370, note
	jmp	.L140	#
.L142:
	.loc 1 846 0
	movq	-184(%rbp), %rax	# note, tmp371
	movzbl	2(%rax), %eax	# note_10->mode, D.14943
	cmpb	$2, %al	#, D.14943
	jne	.L141	#,
	.loc 1 847 0
	movq	-184(%rbp), %rax	# note, tmp372
	movq	8(%rax), %rax	# note_10->fld[0].rtx, D.14939
	movq	-184(%rbp), %rcx	# note, tmp373
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp373,
	movq	%rax, %rdi	# D.14939,
	call	no_equiv	#
.L141:
	.loc 1 845 0
	movq	-184(%rbp), %rax	# note, tmp374
	movq	16(%rax), %rax	# note_10->fld[1].rtx, tmp375
	movq	%rax, -184(%rbp)	# tmp375, note
.L140:
	.loc 1 845 0 is_stmt 0 discriminator 1
	cmpq	$0, -184(%rbp)	#, note
	jne	.L142	#,
	.loc 1 849 0 is_stmt 1
	movq	-192(%rbp), %rax	# insn, tmp376
	movzwl	(%rax), %eax	# insn_1->code, D.14940
	movzwl	%ax, %eax	# D.14940, D.14941
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14942
	cmpb	$105, %al	#, D.14942
	jne	.L143	#,
	.loc 1 849 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# insn, tmp378
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14939
	movzwl	(%rax), %eax	# _56->code, D.14940
	cmpw	$47, %ax	#, D.14940
	jne	.L144	#,
	.loc 1 849 0 discriminator 3
	movq	-192(%rbp), %rax	# insn, tmp379
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, iftmp.87
	jmp	.L146	#
.L144:
	.loc 1 849 0 discriminator 4
	movq	-192(%rbp), %rax	# insn, tmp380
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.14939
	movq	-192(%rbp), %rax	# insn, tmp381
	movq	%rdx, %rsi	# D.14939,
	movq	%rax, %rdi	# tmp381,
	call	single_set_2	#
	jmp	.L146	#
.L143:
	.loc 1 849 0 discriminator 2
	movl	$0, %eax	#, iftmp.86
.L146:
	.loc 1 849 0 discriminator 5
	movq	%rax, -128(%rbp)	# iftmp.86, set
	.loc 1 853 0 is_stmt 1 discriminator 5
	cmpq	$0, -128(%rbp)	#, set
	jne	.L147	#,
	.loc 1 855 0
	movq	-192(%rbp), %rax	# insn, tmp382
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14939
	movl	$0, %edx	#,
	movl	$no_equiv, %esi	#,
	movq	%rax, %rdi	# D.14939,
	call	note_stores	#
	.loc 1 856 0
	jmp	.L139	#
.L147:
	.loc 1 858 0
	movq	-192(%rbp), %rax	# insn, tmp383
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14939
	movzwl	(%rax), %eax	# _65->code, D.14940
	cmpw	$39, %ax	#, D.14940
	jne	.L148	#,
.LBB5:
	.loc 1 862 0
	movq	-192(%rbp), %rax	# insn, tmp384
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14939
	movq	8(%rax), %rax	# _67->fld[0].rtvec, D.14944
	movl	(%rax), %eax	# _68->num_elem, D.14941
	subl	$1, %eax	#, tmp385
	movl	%eax, -232(%rbp)	# tmp385, i
	jmp	.L149	#
.L151:
.LBB6:
	.loc 1 864 0
	movq	-192(%rbp), %rax	# insn, tmp386
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14939
	movq	8(%rax), %rax	# _71->fld[0].rtvec, D.14944
	movl	-232(%rbp), %edx	# i, tmp388
	movslq	%edx, %rdx	# tmp388, tmp387
	movq	8(%rax,%rdx,8), %rax	# _72->elem, tmp389
	movq	%rax, -120(%rbp)	# tmp389, part
	.loc 1 865 0
	movq	-120(%rbp), %rax	# part, tmp390
	cmpq	-128(%rbp), %rax	# set, tmp390
	je	.L150	#,
	.loc 1 866 0
	movq	-120(%rbp), %rax	# part, tmp391
	movl	$0, %edx	#,
	movl	$no_equiv, %esi	#,
	movq	%rax, %rdi	# tmp391,
	call	note_stores	#
.L150:
.LBE6:
	.loc 1 862 0
	subl	$1, -232(%rbp)	#, i
.L149:
	.loc 1 862 0 is_stmt 0 discriminator 1
	cmpl	$0, -232(%rbp)	#, i
	jns	.L151	#,
.L148:
.LBE5:
	.loc 1 870 0 is_stmt 1
	movq	-128(%rbp), %rax	# set, tmp392
	movq	8(%rax), %rax	# set_63->fld[0].rtx, tmp393
	movq	%rax, -112(%rbp)	# tmp393, dest
	.loc 1 871 0
	movq	-128(%rbp), %rax	# set, tmp394
	movq	16(%rax), %rax	# set_63->fld[1].rtx, tmp395
	movq	%rax, -104(%rbp)	# tmp395, src
	.loc 1 894 0
	movq	-112(%rbp), %rax	# dest, tmp396
	movzwl	(%rax), %eax	# dest_75->code, D.14940
	cmpw	$66, %ax	#, D.14940
	jne	.L152	#,
	.loc 1 894 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# src, tmp397
	movzwl	(%rax), %eax	# src_76->code, D.14940
	cmpw	$61, %ax	#, D.14940
	jne	.L152	#,
	.loc 1 895 0 is_stmt 1
	movq	-104(%rbp), %rax	# src, tmp398
	movl	8(%rax), %eax	# src_76->fld[0].rtuint, D.14945
	movl	%eax, -212(%rbp)	# D.14945, regno
	cmpl	$52, -212(%rbp)	#, regno
	jle	.L152	#,
	.loc 1 896 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.88
	movl	-212(%rbp), %edx	# regno, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	addq	$4, %rdx	#, tmp401
	movq	(%rax,%rdx,8), %rax	# reg_n_info.88_81->data.reg, D.14946
	movl	36(%rax), %eax	# _82->basic_block, D.14941
	testl	%eax, %eax	# D.14941
	js	.L152	#,
	.loc 1 897 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.89
	movl	-212(%rbp), %edx	# regno, tmp403
	movslq	%edx, %rdx	# tmp403, tmp402
	addq	$4, %rdx	#, tmp404
	movq	(%rax,%rdx,8), %rax	# reg_n_info.89_84->data.reg, D.14946
	movl	12(%rax), %eax	# _85->sets, D.14941
	cmpl	$1, %eax	#, D.14941
	jne	.L152	#,
	.loc 1 898 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.90
	movl	-212(%rbp), %eax	# regno, tmp405
	movslq	%eax, %rdx	# tmp405, D.14938
	movq	%rdx, %rax	# D.14938, tmp406
	salq	$2, %rax	#, tmp406
	addq	%rdx, %rax	# D.14938, tmp406
	salq	$3, %rax	#, tmp407
	addq	%rcx, %rax	# reg_equiv.90, D.14947
	movq	32(%rax), %rax	# _90->init_insns, D.14939
	testq	%rax, %rax	# D.14939
	je	.L152	#,
	.loc 1 899 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.91
	movl	-212(%rbp), %eax	# regno, tmp408
	movslq	%eax, %rdx	# tmp408, D.14938
	movq	%rdx, %rax	# D.14938, tmp409
	salq	$2, %rax	#, tmp409
	addq	%rdx, %rax	# D.14938, tmp409
	salq	$3, %rax	#, tmp410
	addq	%rcx, %rax	# reg_equiv.91, D.14947
	movq	32(%rax), %rdx	# _95->init_insns, D.14939
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14939
	cmpq	%rax, %rdx	# D.14939, D.14939
	je	.L152	#,
	.loc 1 900 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.92
	movl	-212(%rbp), %eax	# regno, tmp411
	movslq	%eax, %rdx	# tmp411, D.14938
	movq	%rdx, %rax	# D.14938, tmp412
	salq	$2, %rax	#, tmp412
	addq	%rdx, %rax	# D.14938, tmp412
	salq	$3, %rax	#, tmp413
	addq	%rcx, %rax	# reg_equiv.92, D.14947
	movq	32(%rax), %rax	# _101->init_insns, D.14939
	movq	8(%rax), %rax	# _102->fld[0].rtx, D.14939
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14939,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14939
	jne	.L152	#,
	.loc 1 902 0
	movq	-112(%rbp), %rax	# dest, tmp414
	movq	8(%rax), %rax	# dest_75->fld[0].rtx, D.14939
	movq	%rax, %rdi	# D.14939,
	call	contains_replace_regs	#
	testl	%eax, %eax	# D.14941
	jne	.L152	#,
.LBB7:
	.loc 1 904 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.93
	movl	-212(%rbp), %eax	# regno, tmp415
	movslq	%eax, %rdx	# tmp415, D.14938
	movq	%rdx, %rax	# D.14938, tmp416
	salq	$2, %rax	#, tmp416
	addq	%rdx, %rax	# D.14938, tmp416
	salq	$3, %rax	#, tmp417
	addq	%rcx, %rax	# reg_equiv.93, D.14947
	movq	32(%rax), %rax	# _110->init_insns, D.14939
	movq	8(%rax), %rax	# _111->fld[0].rtx, tmp418
	movq	%rax, -96(%rbp)	# tmp418, init_insn
	.loc 1 905 0
	movq	-112(%rbp), %rdx	# dest, tmp419
	movq	-104(%rbp), %rcx	# src, tmp420
	movq	-96(%rbp), %rax	# init_insn, tmp421
	movq	%rcx, %rsi	# tmp420,
	movq	%rax, %rdi	# tmp421,
	call	validate_equiv_mem	#
	testl	%eax, %eax	# D.14941
	je	.L152	#,
	.loc 1 906 0
	movq	-192(%rbp), %rdx	# insn, tmp422
	movq	-96(%rbp), %rcx	# init_insn, tmp423
	movq	-112(%rbp), %rax	# dest, tmp424
	movq	%rcx, %rsi	# tmp423,
	movq	%rax, %rdi	# tmp424,
	call	memref_used_between_p	#
	testl	%eax, %eax	# D.14941
	jne	.L152	#,
	.loc 1 908 0
	movq	-96(%rbp), %rax	# init_insn, tmp425
	movq	56(%rax), %rdx	# init_insn_112->fld[6].rtx, D.14939
	movq	-112(%rbp), %rax	# dest, tmp426
	movq	%rdx, %rcx	# D.14939,
	movq	%rax, %rdx	# tmp426,
	movl	$3, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-96(%rbp), %rdx	# init_insn, tmp427
	movq	%rax, 56(%rdx)	# D.14939, init_insn_112->fld[6].rtx
.L152:
.LBE7:
	.loc 1 923 0
	movq	-112(%rbp), %rax	# dest, tmp428
	movzwl	(%rax), %eax	# dest_75->code, D.14940
	cmpw	$61, %ax	#, D.14940
	jne	.L153	#,
	.loc 1 924 0
	movq	-112(%rbp), %rax	# dest, tmp429
	movl	8(%rax), %eax	# dest_75->fld[0].rtuint, D.14945
	movl	%eax, -212(%rbp)	# D.14945, regno
	cmpl	$52, -212(%rbp)	#, regno
	jle	.L153	#,
	.loc 1 925 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.94
	movl	-212(%rbp), %eax	# regno, tmp430
	movslq	%eax, %rdx	# tmp430, D.14938
	movq	%rdx, %rax	# D.14938, tmp431
	salq	$2, %rax	#, tmp431
	addq	%rdx, %rax	# D.14938, tmp431
	salq	$3, %rax	#, tmp432
	addq	%rcx, %rax	# reg_equiv.94, D.14947
	movq	32(%rax), %rdx	# _123->init_insns, D.14939
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14939
	cmpq	%rax, %rdx	# D.14939, D.14939
	je	.L153	#,
	.loc 1 926 0
	movl	-212(%rbp), %eax	# regno, tmp433
	movl	%eax, %edi	# tmp433,
	call	reg_preferred_class	#
	cmpl	$1, %eax	#, D.14948
	je	.L154	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# regno, tmp434
	movl	%eax, %edi	# tmp434,
	call	reg_preferred_class	#
	cmpl	$2, %eax	#, D.14948
	je	.L154	#,
	movl	-212(%rbp), %eax	# regno, tmp435
	movl	%eax, %edi	# tmp435,
	call	reg_preferred_class	#
	cmpl	$3, %eax	#, D.14948
	je	.L154	#,
	movl	-212(%rbp), %eax	# regno, tmp436
	movl	%eax, %edi	# tmp436,
	call	reg_preferred_class	#
	cmpl	$4, %eax	#, D.14948
	je	.L154	#,
	movl	-212(%rbp), %eax	# regno, tmp437
	movl	%eax, %edi	# tmp437,
	call	reg_preferred_class	#
	cmpl	$7, %eax	#, D.14948
	je	.L154	#,
	movl	-212(%rbp), %eax	# regno, tmp438
	movl	%eax, %edi	# tmp438,
	call	reg_preferred_class	#
	cmpl	$5, %eax	#, D.14948
	je	.L154	#,
	movl	-212(%rbp), %eax	# regno, tmp439
	movl	%eax, %edi	# tmp439,
	call	reg_preferred_class	#
	cmpl	$6, %eax	#, D.14948
	jne	.L155	#,
.L154:
	.loc 1 927 0 is_stmt 1
	movq	-104(%rbp), %rax	# src, tmp440
	movzwl	(%rax), %eax	# src_76->code, D.14940
	cmpw	$66, %ax	#, D.14940
	jne	.L155	#,
.L153:
	.loc 1 931 0
	movq	-128(%rbp), %rax	# set, tmp441
	movl	$0, %edx	#,
	movl	$no_equiv, %esi	#,
	movq	%rax, %rdi	# tmp441,
	call	note_stores	#
	.loc 1 932 0
	jmp	.L139	#
.L155:
	.loc 1 935 0
	movq	-192(%rbp), %rax	# insn, tmp442
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp442,
	call	find_reg_note	#
	movq	%rax, -184(%rbp)	# tmp443, note
	.loc 1 940 0
	cmpq	$0, -184(%rbp)	#, note
	jne	.L156	#,
	.loc 1 940 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# src, tmp444
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp444,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.14941
	jne	.L156	#,
	.loc 1 941 0 is_stmt 1
	movq	-104(%rbp), %rdx	# src, tmp445
	movq	-192(%rbp), %rax	# insn, tmp446
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp446,
	call	set_unique_reg_note	#
	movq	%rax, -184(%rbp)	# tmp447, note
.L156:
	.loc 1 945 0
	cmpq	$0, -184(%rbp)	#, note
	je	.L157	#,
	.loc 1 945 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# note, tmp448
	movq	8(%rax), %rax	# note_11->fld[0].rtx, D.14939
	movzwl	(%rax), %eax	# _137->code, D.14940
	cmpw	$3, %ax	#, D.14940
	jne	.L157	#,
	.loc 1 946 0 is_stmt 1
	movq	$0, -184(%rbp)	#, note
.L157:
	.loc 1 948 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.95
	movl	-212(%rbp), %edx	# regno, tmp450
	movslq	%edx, %rdx	# tmp450, tmp449
	addq	$4, %rdx	#, tmp451
	movq	(%rax,%rdx,8), %rax	# reg_n_info.95_140->data.reg, D.14946
	movl	12(%rax), %eax	# _141->sets, D.14941
	cmpl	$1, %eax	#, D.14941
	je	.L158	#,
	.loc 1 949 0
	cmpq	$0, -184(%rbp)	#, note
	je	.L159	#,
	.loc 1 950 0
	movq	-184(%rbp), %rax	# note, tmp452
	movq	8(%rax), %rax	# note_12->fld[0].rtx, D.14939
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14939,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.14941
	jne	.L159	#,
	.loc 1 951 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.96
	movl	-212(%rbp), %eax	# regno, tmp453
	movslq	%eax, %rdx	# tmp453, D.14938
	movq	%rdx, %rax	# D.14938, tmp454
	salq	$2, %rax	#, tmp454
	addq	%rdx, %rax	# D.14938, tmp454
	salq	$3, %rax	#, tmp455
	addq	%rcx, %rax	# reg_equiv.96, D.14947
	movq	8(%rax), %rax	# _148->replacement, D.14939
	testq	%rax, %rax	# D.14939
	je	.L158	#,
	.loc 1 953 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.97
	movl	-212(%rbp), %eax	# regno, tmp456
	movslq	%eax, %rdx	# tmp456, D.14938
	movq	%rdx, %rax	# D.14938, tmp457
	salq	$2, %rax	#, tmp457
	addq	%rdx, %rax	# D.14938, tmp457
	salq	$3, %rax	#, tmp458
	addq	%rcx, %rax	# reg_equiv.97, D.14947
	.loc 1 952 0
	movq	8(%rax), %rdx	# _153->replacement, D.14939
	movq	-184(%rbp), %rax	# note, tmp459
	movq	8(%rax), %rax	# note_12->fld[0].rtx, D.14939
	movq	%rdx, %rsi	# D.14939,
	movq	%rax, %rdi	# D.14939,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14941
	jne	.L158	#,
.L159:
	.loc 1 955 0
	movq	-128(%rbp), %rcx	# set, tmp460
	movq	-112(%rbp), %rax	# dest, tmp461
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp460,
	movq	%rax, %rdi	# tmp461,
	call	no_equiv	#
	.loc 1 956 0
	jmp	.L139	#
.L158:
	.loc 1 959 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.98
	movl	-212(%rbp), %eax	# regno, tmp462
	movslq	%eax, %rdx	# tmp462, D.14938
	movq	%rdx, %rax	# D.14938, tmp463
	salq	$2, %rax	#, tmp463
	addq	%rdx, %rax	# D.14938, tmp463
	salq	$3, %rax	#, tmp464
	leaq	(%rcx,%rax), %rbx	#, D.14947
	.loc 1 960 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.99
	movl	-212(%rbp), %eax	# regno, tmp465
	movslq	%eax, %rdx	# tmp465, D.14938
	movq	%rdx, %rax	# D.14938, tmp466
	salq	$2, %rax	#, tmp466
	addq	%rdx, %rax	# D.14938, tmp466
	salq	$3, %rax	#, tmp467
	addq	%rcx, %rax	# reg_equiv.99, D.14947
	movq	32(%rax), %rdx	# _164->init_insns, D.14939
	movq	-192(%rbp), %rax	# insn, tmp468
	movq	%rdx, %rcx	# D.14939,
	movq	%rax, %rdx	# tmp468,
	movl	$0, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	%rax, 32(%rbx)	# D.14939, _160->init_insns
	.loc 1 964 0
	cmpq	$0, -184(%rbp)	#, note
	je	.L160	#,
	.loc 1 964 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# note, tmp469
	movq	8(%rax), %rax	# note_12->fld[0].rtx, D.14939
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14939,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.14941
	jne	.L160	#,
	.loc 1 965 0 is_stmt 1
	movq	-184(%rbp), %rax	# note, tmp470
	movb	$3, 2(%rax)	#, note_12->mode
.L160:
	.loc 1 982 0
	movq	-192(%rbp), %rax	# insn, tmp471
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp471,
	call	find_reg_note	#
	movq	%rax, -184(%rbp)	# tmp472, note
	.loc 1 984 0
	cmpq	$0, -184(%rbp)	#, note
	jne	.L161	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.100
	movl	-212(%rbp), %edx	# regno, tmp474
	movslq	%edx, %rdx	# tmp474, tmp473
	addq	$4, %rdx	#, tmp475
	movq	(%rax,%rdx,8), %rax	# reg_n_info.100_170->data.reg, D.14946
	movl	36(%rax), %eax	# _171->basic_block, D.14941
	testl	%eax, %eax	# D.14941
	js	.L161	#,
	.loc 1 985 0 is_stmt 1
	movq	-128(%rbp), %rax	# set, tmp476
	movq	16(%rax), %rax	# set_63->fld[1].rtx, D.14939
	movzwl	(%rax), %eax	# _173->code, D.14940
	cmpw	$66, %ax	#, D.14940
	jne	.L161	#,
	.loc 1 986 0
	movq	-128(%rbp), %rax	# set, tmp477
	movq	16(%rax), %rdx	# set_63->fld[1].rtx, D.14939
	movq	-112(%rbp), %rcx	# dest, tmp478
	movq	-192(%rbp), %rax	# insn, tmp479
	movq	%rcx, %rsi	# tmp478,
	movq	%rax, %rdi	# tmp479,
	call	validate_equiv_mem	#
	testl	%eax, %eax	# D.14941
	je	.L161	#,
	.loc 1 987 0
	movq	-192(%rbp), %rax	# insn, tmp480
	movq	56(%rax), %rdx	# insn_1->fld[6].rtx, D.14939
	movq	-128(%rbp), %rax	# set, tmp481
	movq	16(%rax), %rax	# set_63->fld[1].rtx, D.14939
	movq	%rdx, %rcx	# D.14939,
	movq	%rax, %rdx	# D.14939,
	movl	$3, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -184(%rbp)	# tmp482, note
	movq	-192(%rbp), %rax	# insn, tmp483
	movq	-184(%rbp), %rdx	# note, tmp484
	movq	%rdx, 56(%rax)	# tmp484, insn_1->fld[6].rtx
.L161:
	.loc 1 990 0
	cmpq	$0, -184(%rbp)	#, note
	je	.L139	#,
.LBB8:
	.loc 1 992 0
	movq	-112(%rbp), %rax	# dest, tmp485
	movl	8(%rax), %eax	# dest_75->fld[0].rtuint, D.14945
	movl	%eax, -208(%rbp)	# D.14945, regno
	.loc 1 999 0
	movq	-184(%rbp), %rax	# note, tmp486
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.14939
	movzwl	(%rax), %eax	# _182->code, D.14940
	cmpw	$67, %ax	#, D.14940
	je	.L162	#,
	.loc 1 1000 0
	movq	-184(%rbp), %rax	# note, tmp487
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.14939
	movzwl	(%rax), %eax	# _184->code, D.14940
	cmpw	$58, %ax	#, D.14940
	jne	.L163	#,
	.loc 1 1001 0
	movq	-184(%rbp), %rax	# note, tmp488
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.14939
	movq	8(%rax), %rax	# _186->fld[0].rtx, D.14939
	movzwl	(%rax), %eax	# _187->code, D.14940
	cmpw	$75, %ax	#, D.14940
	jne	.L163	#,
	.loc 1 1002 0
	movq	-184(%rbp), %rax	# note, tmp489
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.14939
	movq	8(%rax), %rax	# _189->fld[0].rtx, D.14939
	movq	8(%rax), %rax	# _190->fld[0].rtx, D.14939
	movzwl	(%rax), %eax	# _191->code, D.14940
	cmpw	$67, %ax	#, D.14940
	jne	.L163	#,
.L162:
	.loc 1 1004 0
	movl	$1, recorded_label_ref(%rip)	#, recorded_label_ref
.L163:
	.loc 1 1006 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.101
	movl	-208(%rbp), %eax	# regno, tmp490
	movslq	%eax, %rdx	# tmp490, D.14938
	movq	%rdx, %rax	# D.14938, tmp491
	salq	$2, %rax	#, tmp491
	addq	%rdx, %rax	# D.14938, tmp491
	salq	$3, %rax	#, tmp492
	leaq	(%rcx,%rax), %rdx	#, D.14947
	movq	-184(%rbp), %rax	# note, tmp493
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.14939
	movq	%rax, 8(%rdx)	# D.14939, _196->replacement
	.loc 1 1007 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.102
	movl	-208(%rbp), %eax	# regno, tmp494
	movslq	%eax, %rdx	# tmp494, D.14938
	movq	%rdx, %rax	# D.14938, tmp495
	salq	$2, %rax	#, tmp495
	addq	%rdx, %rax	# D.14938, tmp495
	salq	$3, %rax	#, tmp496
	addq	%rcx, %rax	# reg_equiv.102, D.14947
	movq	-128(%rbp), %rdx	# set, tmp497
	addq	$16, %rdx	#, D.14949
	movq	%rdx, 16(%rax)	# D.14949, _201->src_p
	.loc 1 1008 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.103
	movl	-208(%rbp), %eax	# regno, tmp498
	movslq	%eax, %rdx	# tmp498, D.14938
	movq	%rdx, %rax	# D.14938, tmp499
	salq	$2, %rax	#, tmp499
	addq	%rdx, %rax	# D.14938, tmp499
	salq	$3, %rax	#, tmp500
	leaq	(%rcx,%rax), %rdx	#, D.14947
	movl	-216(%rbp), %eax	# loop_depth, tmp501
	movl	%eax, 24(%rdx)	# tmp501, _206->loop_depth
	.loc 1 1011 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.104
	movl	-208(%rbp), %edx	# regno, tmp503
	movslq	%edx, %rdx	# tmp503, tmp502
	addq	$4, %rdx	#, tmp504
	movq	(%rax,%rdx,8), %rax	# reg_n_info.104_207->data.reg, D.14946
	movl	28(%rax), %eax	# _208->live_length, D.14941
	testl	%eax, %eax	# D.14941
	js	.L139	#,
	.loc 1 1011 0 is_stmt 0 discriminator 1
	movl	optimize(%rip), %eax	# optimize, optimize.105
	testl	%eax, %eax	# optimize.105
	je	.L139	#,
	.loc 1 1015 0 is_stmt 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.106
	movl	-208(%rbp), %edx	# regno, tmp506
	movslq	%edx, %rdx	# tmp506, tmp505
	addq	$4, %rdx	#, tmp507
	movq	(%rax,%rdx,8), %rax	# reg_n_info.106_211->data.reg, D.14946
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.107
	movl	-208(%rbp), %ecx	# regno, tmp509
	movslq	%ecx, %rcx	# tmp509, tmp508
	addq	$4, %rcx	#, tmp510
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.107_213->data.reg, D.14946
	movl	28(%rdx), %edx	# _214->live_length, D.14941
	addl	%edx, %edx	# D.14941
	movl	%edx, 28(%rax)	# D.14941, _212->live_length
	.loc 1 1027 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.108
	movl	-208(%rbp), %edx	# regno, tmp512
	movslq	%edx, %rdx	# tmp512, tmp511
	addq	$4, %rdx	#, tmp513
	movq	(%rax,%rdx,8), %rax	# reg_n_info.108_217->data.reg, D.14946
	movl	16(%rax), %eax	# _218->refs, D.14941
	cmpl	$2, %eax	#, D.14941
	jne	.L139	#,
	.loc 1 1028 0
	movq	-184(%rbp), %rax	# note, tmp514
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.14939
	movq	-104(%rbp), %rdx	# src, tmp515
	movq	%rdx, %rsi	# tmp515,
	movq	%rax, %rdi	# D.14939,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14941
	jne	.L164	#,
	.loc 1 1029 0
	movq	-104(%rbp), %rax	# src, tmp516
	movq	%rax, %rdi	# tmp516,
	call	equiv_init_varies_p	#
	testl	%eax, %eax	# D.14941
	jne	.L139	#,
.L164:
	.loc 1 1030 0
	movq	-192(%rbp), %rax	# insn, tmp517
	movzwl	(%rax), %eax	# insn_1->code, D.14940
	cmpw	$32, %ax	#, D.14940
	jne	.L139	#,
	.loc 1 1031 0
	movq	-192(%rbp), %rax	# insn, tmp518
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14939
	movl	-208(%rbp), %edx	# regno, tmp519
	movl	%edx, %esi	# tmp519,
	movq	%rax, %rdi	# D.14939,
	call	equiv_init_movable_p	#
	testl	%eax, %eax	# D.14941
	je	.L139	#,
	.loc 1 1032 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.109
	movl	-208(%rbp), %eax	# regno, tmp520
	movslq	%eax, %rdx	# tmp520, D.14938
	movq	%rdx, %rax	# D.14938, tmp521
	salq	$2, %rax	#, tmp521
	addq	%rdx, %rax	# D.14938, tmp521
	salq	$3, %rax	#, tmp522
	addq	%rcx, %rax	# reg_equiv.109, D.14947
	movb	$1, (%rax)	#, _229->replace
.L139:
.LBE8:
.LBE4:
	.loc 1 835 0
	movq	-192(%rbp), %rax	# insn, tmp523
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp524
	movq	%rax, -192(%rbp)	# tmp524, insn
.L137:
	.loc 1 835 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# bb, tmp525
	movq	8(%rax), %rax	# bb_41->end, D.14939
	movq	24(%rax), %rax	# _44->fld[2].rtx, D.14939
	cmpq	-192(%rbp), %rax	# insn, D.14939
	jne	.L165	#,
.LBE3:
	.loc 1 830 0 is_stmt 1
	addl	$1, -240(%rbp)	#, block
.L136:
	.loc 1 830 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.110
	cmpl	%eax, -240(%rbp)	# n_basic_blocks.110, block
	jl	.L166	#,
	.loc 1 1046 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.111
	subl	$1, %eax	#, tmp526
	movl	%eax, -240(%rbp)	# tmp526, block
	jmp	.L167	#
.L186:
.LBB9:
	.loc 1 1048 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.112
	movl	-240(%rbp), %edx	# block, tmp528
	movslq	%edx, %rdx	# tmp528, tmp527
	addq	$4, %rdx	#, tmp529
	movq	(%rax,%rdx,8), %rax	# basic_block_info.112_234->data.bb, tmp530
	movq	%rax, -88(%rbp)	# tmp530, bb
	.loc 1 1050 0
	movq	-88(%rbp), %rax	# bb, tmp531
	movl	92(%rax), %eax	# bb_235->loop_depth, tmp532
	movl	%eax, -216(%rbp)	# tmp532, loop_depth
	.loc 1 1051 0
	movq	-88(%rbp), %rax	# bb, tmp533
	movq	8(%rax), %rax	# bb_235->end, tmp534
	movq	%rax, -192(%rbp)	# tmp534, insn
	jmp	.L168	#
.L185:
.LBB10:
	.loc 1 1055 0
	movq	-192(%rbp), %rax	# insn, tmp535
	movzwl	(%rax), %eax	# insn_2->code, D.14940
	movzwl	%ax, %eax	# D.14940, D.14941
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14942
	cmpb	$105, %al	#, D.14942
	je	.L169	#,
	.loc 1 1056 0
	jmp	.L170	#
.L169:
	.loc 1 1058 0
	movq	-192(%rbp), %rax	# insn, tmp537
	movq	56(%rax), %rax	# insn_2->fld[6].rtx, tmp538
	movq	%rax, -176(%rbp)	# tmp538, link
	jmp	.L171	#
.L184:
	.loc 1 1060 0
	movq	-176(%rbp), %rax	# link, tmp539
	movzbl	2(%rax), %eax	# link_15->mode, D.14943
	cmpb	$1, %al	#, D.14943
	jne	.L172	#,
	.loc 1 1062 0
	movq	-192(%rbp), %rax	# insn, tmp540
	movq	32(%rax), %rdx	# insn_2->fld[3].rtx, D.14939
	movq	-176(%rbp), %rax	# link, tmp541
	movq	8(%rax), %rax	# link_15->fld[0].rtx, D.14939
	movq	%rdx, %rsi	# D.14939,
	movq	%rax, %rdi	# D.14939,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14941
	je	.L172	#,
.LBB11:
	.loc 1 1064 0
	movq	-176(%rbp), %rax	# link, tmp542
	movq	8(%rax), %rax	# link_15->fld[0].rtx, D.14939
	movl	8(%rax), %eax	# _248->fld[0].rtuint, D.14945
	movl	%eax, -204(%rbp)	# D.14945, regno
	.loc 1 1067 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.113
	movl	-204(%rbp), %eax	# regno, tmp543
	movslq	%eax, %rdx	# tmp543, D.14938
	movq	%rdx, %rax	# D.14938, tmp544
	salq	$2, %rax	#, tmp544
	addq	%rdx, %rax	# D.14938, tmp544
	salq	$3, %rax	#, tmp545
	addq	%rcx, %rax	# reg_equiv.113, D.14947
	movzbl	(%rax), %eax	# _254->replace, D.14942
	testb	%al, %al	# D.14942
	je	.L173	#,
	.loc 1 1068 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.114
	movl	-204(%rbp), %eax	# regno, tmp546
	movslq	%eax, %rdx	# tmp546, D.14938
	movq	%rdx, %rax	# D.14938, tmp547
	salq	$2, %rax	#, tmp547
	addq	%rdx, %rax	# D.14938, tmp547
	salq	$3, %rax	#, tmp548
	addq	%rcx, %rax	# reg_equiv.114, D.14947
	movl	24(%rax), %eax	# _259->loop_depth, D.14941
	cmpl	-216(%rbp), %eax	# loop_depth, D.14941
	jge	.L174	#,
.L173:
	.loc 1 1069 0
	jmp	.L172	#
.L174:
	.loc 1 1076 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.115
	movl	-204(%rbp), %eax	# regno, tmp549
	movslq	%eax, %rdx	# tmp549, D.14938
	movq	%rdx, %rax	# D.14938, tmp550
	salq	$2, %rax	#, tmp550
	addq	%rdx, %rax	# D.14938, tmp550
	salq	$3, %rax	#, tmp551
	addq	%rcx, %rax	# reg_equiv.115, D.14947
	movq	32(%rax), %rax	# _264->init_insns, D.14939
	testq	%rax, %rax	# D.14939
	je	.L175	#,
	.loc 1 1077 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.116
	movl	-204(%rbp), %eax	# regno, tmp552
	movslq	%eax, %rdx	# tmp552, D.14938
	movq	%rdx, %rax	# D.14938, tmp553
	salq	$2, %rax	#, tmp553
	addq	%rdx, %rax	# D.14938, tmp553
	salq	$3, %rax	#, tmp554
	addq	%rcx, %rax	# reg_equiv.116, D.14947
	movq	32(%rax), %rax	# _269->init_insns, D.14939
	movq	16(%rax), %rax	# _270->fld[1].rtx, D.14939
	testq	%rax, %rax	# D.14939
	je	.L176	#,
.L175:
	.loc 1 1078 0
	movl	$__FUNCTION__.11223, %edx	#,
	movl	$1078, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L176:
	.loc 1 1079 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.117
	movl	-204(%rbp), %eax	# regno, tmp555
	movslq	%eax, %rdx	# tmp555, D.14938
	movq	%rdx, %rax	# D.14938, tmp556
	salq	$2, %rax	#, tmp556
	addq	%rdx, %rax	# D.14938, tmp556
	salq	$3, %rax	#, tmp557
	addq	%rcx, %rax	# reg_equiv.117, D.14947
	movq	32(%rax), %rax	# _275->init_insns, D.14939
	movq	8(%rax), %rax	# _276->fld[0].rtx, tmp558
	movq	%rax, -80(%rbp)	# tmp558, equiv_insn
	.loc 1 1084 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp559
	movq	%rax, %rdi	# tmp559,
	call	can_throw_internal	#
	testb	%al, %al	# D.14950
	je	.L177	#,
	.loc 1 1085 0
	jmp	.L172	#
.L177:
	.loc 1 1087 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp560
	movq	32(%rax), %rax	# equiv_insn_277->fld[3].rtx, D.14939
	movq	%rax, %rdi	# D.14939,
	call	asm_noperands	#
	testl	%eax, %eax	# D.14941
	jns	.L178	#,
	.loc 1 1089 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.118
	movl	-204(%rbp), %eax	# regno, tmp561
	movslq	%eax, %rdx	# tmp561, D.14938
	movq	%rdx, %rax	# D.14938, tmp562
	salq	$2, %rax	#, tmp562
	addq	%rdx, %rax	# D.14938, tmp562
	salq	$3, %rax	#, tmp563
	addq	%rcx, %rax	# reg_equiv.118, D.14947
	movq	16(%rax), %rax	# _284->src_p, D.14949
	.loc 1 1088 0
	movq	(%rax), %rcx	# *_285, D.14939
	movq	cfun(%rip), %rax	# cfun, cfun.119
	movq	24(%rax), %rax	# cfun.119_287->emit, D.14951
	movq	80(%rax), %rax	# _288->x_regno_reg_rtx, D.14949
	movl	-204(%rbp), %edx	# regno, tmp564
	movslq	%edx, %rdx	# tmp564, D.14938
	salq	$3, %rdx	#, D.14938
	addq	%rdx, %rax	# D.14938, D.14949
	movq	(%rax), %rax	# *_292, D.14939
	movq	-192(%rbp), %rdx	# insn, tmp565
	movq	%rcx, %rsi	# D.14939,
	movq	%rax, %rdi	# D.14939,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.14941
	je	.L178	#,
.LBB12:
	.loc 1 1096 0
	movq	-176(%rbp), %rax	# link, tmp566
	movq	%rax, -160(%rbp)	# tmp566, last_link
	jmp	.L179	#
.L180:
	.loc 1 1097 0
	movq	-160(%rbp), %rax	# last_link, tmp567
	movq	16(%rax), %rax	# last_link_17->fld[1].rtx, tmp568
	movq	%rax, -160(%rbp)	# tmp568, last_link
.L179:
	.loc 1 1096 0 discriminator 1
	movq	-160(%rbp), %rax	# last_link, tmp569
	movq	16(%rax), %rax	# last_link_17->fld[1].rtx, D.14939
	testq	%rax, %rax	# D.14939
	jne	.L180	#,
	.loc 1 1101 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp570
	movq	56(%rax), %rax	# equiv_insn_277->fld[6].rtx, tmp571
	movq	%rax, -168(%rbp)	# tmp571, equiv_link
	.loc 1 1102 0
	jmp	.L181	#
.L182:
	.loc 1 1104 0
	movq	-168(%rbp), %rax	# equiv_link, tmp572
	movq	%rax, -72(%rbp)	# tmp572, note
	.loc 1 1105 0
	movq	-168(%rbp), %rax	# equiv_link, tmp573
	movq	16(%rax), %rax	# equiv_link_16->fld[1].rtx, tmp574
	movq	%rax, -168(%rbp)	# tmp574, equiv_link
	.loc 1 1106 0
	movq	-72(%rbp), %rax	# note, tmp575
	movzbl	2(%rax), %eax	# note_299->mode, D.14943
	cmpb	$1, %al	#, D.14943
	jne	.L181	#,
	.loc 1 1108 0
	movq	-72(%rbp), %rdx	# note, tmp576
	movq	-80(%rbp), %rax	# equiv_insn, tmp577
	movq	%rdx, %rsi	# tmp576,
	movq	%rax, %rdi	# tmp577,
	call	remove_note	#
	.loc 1 1109 0
	movq	-160(%rbp), %rax	# last_link, tmp578
	movq	-72(%rbp), %rdx	# note, tmp579
	movq	%rdx, 16(%rax)	# tmp579, last_link_18->fld[1].rtx
	.loc 1 1110 0
	movq	-72(%rbp), %rax	# note, tmp580
	movq	$0, 16(%rax)	#, note_299->fld[1].rtx
	.loc 1 1111 0
	movq	-72(%rbp), %rax	# note, tmp581
	movq	%rax, -160(%rbp)	# tmp581, last_link
.L181:
	.loc 1 1102 0 discriminator 1
	cmpq	$0, -168(%rbp)	#, equiv_link
	jne	.L182	#,
	.loc 1 1115 0
	movl	-204(%rbp), %eax	# regno, regno.120
	movq	-192(%rbp), %rdx	# insn, tmp582
	movq	%rdx, %rsi	# tmp582,
	movl	%eax, %edi	# regno.120,
	call	remove_death	#
	.loc 1 1116 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.121
	movl	-204(%rbp), %edx	# regno, tmp584
	movslq	%edx, %rdx	# tmp584, tmp583
	addq	$4, %rdx	#, tmp585
	movq	(%rax,%rdx,8), %rax	# reg_n_info.121_304->data.reg, D.14946
	movl	$0, 16(%rax)	#, _305->refs
	.loc 1 1117 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.122
	movl	-204(%rbp), %edx	# regno, tmp587
	movslq	%edx, %rdx	# tmp587, tmp586
	addq	$4, %rdx	#, tmp588
	movq	(%rax,%rdx,8), %rax	# reg_n_info.122_306->data.reg, D.14946
	movl	$0, 20(%rax)	#, _307->freq
	.loc 1 1118 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp589
	movq	%rax, %rdi	# tmp589,
	call	delete_insn	#
	.loc 1 1120 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.123
	movl	-204(%rbp), %eax	# regno, tmp590
	movslq	%eax, %rdx	# tmp590, D.14938
	movq	%rdx, %rax	# D.14938, tmp591
	salq	$2, %rax	#, tmp591
	addq	%rdx, %rax	# D.14938, tmp591
	salq	$3, %rax	#, tmp592
	addq	%rax, %rcx	# D.14938, D.14947
	.loc 1 1121 0
	movq	reg_equiv(%rip), %rsi	# reg_equiv, reg_equiv.124
	movl	-204(%rbp), %eax	# regno, tmp593
	movslq	%eax, %rdx	# tmp593, D.14938
	movq	%rdx, %rax	# D.14938, tmp594
	salq	$2, %rax	#, tmp594
	addq	%rdx, %rax	# D.14938, tmp594
	salq	$3, %rax	#, tmp595
	addq	%rsi, %rax	# reg_equiv.124, D.14947
	movq	32(%rax), %rax	# _315->init_insns, D.14939
	movq	16(%rax), %rax	# _316->fld[1].rtx, D.14939
	movq	%rax, 32(%rcx)	# D.14939, _311->init_insns
.LBE12:
	.loc 1 1090 0
	jmp	.L172	#
.L178:
	.loc 1 1125 0
	movq	-192(%rbp), %rax	# insn, tmp596
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, D.14939
	cmpq	-80(%rbp), %rax	# equiv_insn, D.14939
	je	.L172	#,
.LBB13:
	.loc 1 1129 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp597
	movq	32(%rax), %rax	# equiv_insn_277->fld[3].rtx, D.14939
	movq	-192(%rbp), %rdx	# insn, tmp598
	movq	%rdx, %rsi	# tmp598,
	movq	%rax, %rdi	# D.14939,
	call	emit_insn_before	#
	movq	%rax, -64(%rbp)	# tmp599, new_insn
	.loc 1 1130 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp600
	movq	56(%rax), %rdx	# equiv_insn_277->fld[6].rtx, D.14939
	movq	-64(%rbp), %rax	# new_insn, tmp601
	movq	%rdx, 56(%rax)	# D.14939, new_insn_320->fld[6].rtx
	.loc 1 1131 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp602
	movq	$0, 56(%rax)	#, equiv_insn_277->fld[6].rtx
	.loc 1 1135 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp603
	movl	40(%rax), %edx	# equiv_insn_277->fld[4].rtint, D.14941
	movq	-64(%rbp), %rax	# new_insn, tmp604
	movl	%edx, 40(%rax)	# D.14941, new_insn_320->fld[4].rtint
	.loc 1 1137 0
	movq	-80(%rbp), %rax	# equiv_insn, tmp605
	movq	%rax, %rdi	# tmp605,
	call	delete_insn	#
	.loc 1 1139 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.125
	movl	-204(%rbp), %eax	# regno, tmp606
	movslq	%eax, %rdx	# tmp606, D.14938
	movq	%rdx, %rax	# D.14938, tmp607
	salq	$2, %rax	#, tmp607
	addq	%rdx, %rax	# D.14938, tmp607
	salq	$3, %rax	#, tmp608
	addq	%rcx, %rax	# reg_equiv.125, D.14947
	movq	32(%rax), %rax	# _326->init_insns, D.14939
	movq	-64(%rbp), %rdx	# new_insn, tmp609
	movq	%rdx, 8(%rax)	# tmp609, _327->fld[0].rtx
	.loc 1 1141 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.126
	movl	-204(%rbp), %edx	# regno, tmp611
	movslq	%edx, %rdx	# tmp611, tmp610
	addq	$4, %rdx	#, tmp612
	movq	(%rax,%rdx,8), %rax	# reg_n_info.126_328->data.reg, D.14946
	movl	$0, %edx	#, tmp613
	cmpl	$0, -240(%rbp)	#, block
	cmovns	-240(%rbp), %edx	# block,, D.14941
	movl	%edx, 36(%rax)	# D.14941, _329->basic_block
	.loc 1 1142 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.127
	movl	-204(%rbp), %edx	# regno, tmp615
	movslq	%edx, %rdx	# tmp615, tmp614
	addq	$4, %rdx	#, tmp616
	movq	(%rax,%rdx,8), %rax	# reg_n_info.127_331->data.reg, D.14946
	movl	$0, 32(%rax)	#, _332->calls_crossed
	.loc 1 1143 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.128
	movl	-204(%rbp), %edx	# regno, tmp618
	movslq	%edx, %rdx	# tmp618, tmp617
	addq	$4, %rdx	#, tmp619
	movq	(%rax,%rdx,8), %rax	# reg_n_info.128_333->data.reg, D.14946
	movl	$2, 28(%rax)	#, _334->live_length
	.loc 1 1145 0
	cmpl	$0, -240(%rbp)	#, block
	js	.L183	#,
	.loc 1 1145 0 is_stmt 0 discriminator 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.129
	movl	-240(%rbp), %edx	# block, tmp621
	movslq	%edx, %rdx	# tmp621, tmp620
	addq	$4, %rdx	#, tmp622
	movq	(%rax,%rdx,8), %rax	# basic_block_info.129_335->data.bb, D.14952
	movq	(%rax), %rax	# _336->head, D.14939
	cmpq	-192(%rbp), %rax	# insn, D.14939
	jne	.L183	#,
	.loc 1 1146 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.130
	movl	-240(%rbp), %edx	# block, tmp624
	movslq	%edx, %rdx	# tmp624, tmp623
	addq	$4, %rdx	#, tmp625
	movq	(%rax,%rdx,8), %rax	# basic_block_info.130_338->data.bb, D.14952
	movq	-192(%rbp), %rdx	# insn, tmp626
	movq	16(%rdx), %rdx	# insn_2->fld[1].rtx, D.14939
	movq	%rdx, (%rax)	# D.14939, _339->head
.L183:
	.loc 1 1150 0
	movl	-204(%rbp), %edx	# regno, tmp627
	leaq	-48(%rbp), %rax	#, tmp628
	movl	%edx, %esi	# tmp627,
	movq	%rax, %rdi	# tmp628,
	call	bitmap_set_bit	#
	.loc 1 1151 0
	addl	$1, -236(%rbp)	#, clear_regnos
.L172:
.LBE13:
.LBE11:
	.loc 1 1058 0
	movq	-176(%rbp), %rax	# link, tmp629
	movq	16(%rax), %rax	# link_15->fld[1].rtx, tmp630
	movq	%rax, -176(%rbp)	# tmp630, link
.L171:
	.loc 1 1058 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, link
	jne	.L184	#,
.L170:
.LBE10:
	.loc 1 1051 0 is_stmt 1
	movq	-192(%rbp), %rax	# insn, tmp631
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp632
	movq	%rax, -192(%rbp)	# tmp632, insn
.L168:
	.loc 1 1051 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# bb, tmp633
	movq	(%rax), %rax	# bb_235->head, D.14939
	movq	16(%rax), %rax	# _238->fld[1].rtx, D.14939
	cmpq	-192(%rbp), %rax	# insn, D.14939
	jne	.L185	#,
.LBE9:
	.loc 1 1046 0 is_stmt 1
	subl	$1, -240(%rbp)	#, block
.L167:
	.loc 1 1046 0 is_stmt 0 discriminator 1
	cmpl	$0, -240(%rbp)	#, block
	jns	.L186	#,
	.loc 1 1159 0 is_stmt 1
	cmpl	$0, -236(%rbp)	#, clear_regnos
	je	.L187	#,
.LBB14:
	.loc 1 1162 0
	cmpl	$8, -236(%rbp)	#, clear_regnos
	jle	.L188	#,
	.loc 1 1164 0
	movl	$0, -228(%rbp)	#, l
	jmp	.L189	#
.L190:
	.loc 1 1166 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.131
	movl	-228(%rbp), %edx	# l, tmp635
	movslq	%edx, %rdx	# tmp635, tmp634
	addq	$4, %rdx	#, tmp636
	movq	(%rax,%rdx,8), %rax	# basic_block_info.131_347->data.bb, D.14952
	movq	64(%rax), %rsi	# _348->global_live_at_start, D.14953
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.132
	movl	-228(%rbp), %edx	# l, tmp638
	movslq	%edx, %rdx	# tmp638, tmp637
	addq	$4, %rdx	#, tmp639
	movq	(%rax,%rdx,8), %rax	# basic_block_info.132_350->data.bb, D.14952
	movq	64(%rax), %rax	# _351->global_live_at_start, D.14953
	leaq	-48(%rbp), %rdx	#, tmp640
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.14953,
	call	bitmap_operation	#
	.loc 1 1168 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.133
	movl	-228(%rbp), %edx	# l, tmp642
	movslq	%edx, %rdx	# tmp642, tmp641
	addq	$4, %rdx	#, tmp643
	movq	(%rax,%rdx,8), %rax	# basic_block_info.133_353->data.bb, D.14952
	movq	72(%rax), %rsi	# _354->global_live_at_end, D.14953
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.134
	movl	-228(%rbp), %edx	# l, tmp645
	movslq	%edx, %rdx	# tmp645, tmp644
	addq	$4, %rdx	#, tmp646
	movq	(%rax,%rdx,8), %rax	# basic_block_info.134_356->data.bb, D.14952
	movq	72(%rax), %rax	# _357->global_live_at_end, D.14953
	leaq	-48(%rbp), %rdx	#, tmp647
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.14953,
	call	bitmap_operation	#
	.loc 1 1164 0 discriminator 2
	addl	$1, -228(%rbp)	#, l
.L189:
	.loc 1 1164 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.135
	cmpl	%eax, -228(%rbp)	# n_basic_blocks.135, l
	jl	.L190	#,
	jmp	.L187	#
.L188:
.LBB15:
	.loc 1 1173 0 is_stmt 1
	movq	-48(%rbp), %rax	# cleared_regs.first, tmp648
	movq	%rax, -152(%rbp)	# tmp648, ptr_
	movl	$0, -200(%rbp)	#, indx_
	movl	$0, -224(%rbp)	#, bit_num_
	movl	$0, -220(%rbp)	#, word_num_
	jmp	.L191	#
.L193:
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# ptr_, tmp649
	movq	(%rax), %rax	# ptr__21->next, tmp650
	movq	%rax, -152(%rbp)	# tmp650, ptr_
.L191:
	cmpq	$0, -152(%rbp)	#, ptr_
	je	.L192	#,
	.loc 1 1173 0 discriminator 2
	movq	-152(%rbp), %rax	# ptr_, tmp651
	movl	16(%rax), %eax	# ptr__21->indx, D.14945
	cmpl	-200(%rbp), %eax	# indx_, D.14945
	jb	.L193	#,
.L192:
	.loc 1 1173 0 discriminator 3
	cmpq	$0, -152(%rbp)	#, ptr_
	je	.L194	#,
	.loc 1 1173 0 discriminator 1
	movq	-152(%rbp), %rax	# ptr_, tmp652
	movl	16(%rax), %eax	# ptr__21->indx, D.14945
	cmpl	-200(%rbp), %eax	# indx_, D.14945
	je	.L194	#,
	movl	$0, -224(%rbp)	#, bit_num_
	movl	$0, -220(%rbp)	#, word_num_
	jmp	.L195	#
.L194:
	.loc 1 1173 0 discriminator 2
	jmp	.L195	#
.L204:
	.loc 1 1173 0
	jmp	.L196	#
.L203:
.LBB16:
	.loc 1 1173 0 discriminator 2
	movq	-152(%rbp), %rax	# ptr_, tmp653
	movl	-220(%rbp), %edx	# word_num_, tmp654
	addq	$2, %rdx	#, tmp655
	movq	8(%rax,%rdx,8), %rax	# ptr__22->bits, tmp656
	movq	%rax, -144(%rbp)	# tmp656, word_
	cmpq	$0, -144(%rbp)	#, word_
	je	.L197	#,
	.loc 1 1173 0 discriminator 1
	jmp	.L198	#
.L202:
.LBB17:
	.loc 1 1173 0 discriminator 2
	movl	-224(%rbp), %eax	# bit_num_, bit_num_.136
	movl	$1, %edx	#, tmp657
	movl	%eax, %ecx	# bit_num_.136, tmp677
	salq	%cl, %rdx	# tmp677, tmp658
	movq	%rdx, %rax	# tmp658, tmp658
	movq	%rax, -56(%rbp)	# tmp658, mask_
	movq	-56(%rbp), %rax	# mask_, tmp659
	movq	-144(%rbp), %rdx	# word_, tmp660
	andq	%rdx, %rax	# tmp660, D.14938
	testq	%rax, %rax	# D.14938
	je	.L199	#,
	.loc 1 1173 0 discriminator 1
	movq	-56(%rbp), %rax	# mask_, tmp661
	notq	%rax	# D.14938
	andq	%rax, -144(%rbp)	# D.14938, word_
	movq	-152(%rbp), %rax	# ptr_, tmp662
	movl	16(%rax), %eax	# ptr__22->indx, D.14945
	leal	(%rax,%rax), %edx	#, D.14945
	movl	-220(%rbp), %eax	# word_num_, tmp663
	addl	%edx, %eax	# D.14945, D.14945
	sall	$6, %eax	#, D.14945
	movl	%eax, %edx	# D.14945, D.14945
	movl	-224(%rbp), %eax	# bit_num_, tmp664
	addl	%edx, %eax	# D.14945, D.14945
	movl	%eax, -196(%rbp)	# D.14945, j
	movl	$0, -228(%rbp)	#, l
	jmp	.L200	#
.L201:
	.loc 1 1173 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.137
	movl	-228(%rbp), %edx	# l, tmp666
	movslq	%edx, %rdx	# tmp666, tmp665
	addq	$4, %rdx	#, tmp667
	movq	(%rax,%rdx,8), %rax	# basic_block_info.137_383->data.bb, D.14952
	movq	64(%rax), %rax	# _384->global_live_at_start, D.14953
	movl	-196(%rbp), %edx	# j, tmp668
	movl	%edx, %esi	# tmp668,
	movq	%rax, %rdi	# D.14953,
	call	bitmap_clear_bit	#
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.138
	movl	-228(%rbp), %edx	# l, tmp670
	movslq	%edx, %rdx	# tmp670, tmp669
	addq	$4, %rdx	#, tmp671
	movq	(%rax,%rdx,8), %rax	# basic_block_info.138_386->data.bb, D.14952
	movq	72(%rax), %rax	# _387->global_live_at_end, D.14953
	movl	-196(%rbp), %edx	# j, tmp672
	movl	%edx, %esi	# tmp672,
	movq	%rax, %rdi	# D.14953,
	call	bitmap_clear_bit	#
	addl	$1, -228(%rbp)	#, l
.L200:
	.loc 1 1173 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.139
	cmpl	%eax, -228(%rbp)	# n_basic_blocks.139, l
	jl	.L201	#,
	.loc 1 1173 0 discriminator 3
	cmpq	$0, -144(%rbp)	#, word_
	jne	.L199	#,
	.loc 1 1173 0 discriminator 1
	jmp	.L197	#
.L199:
.LBE17:
	.loc 1 1173 0 discriminator 2
	addl	$1, -224(%rbp)	#, bit_num_
.L198:
	.loc 1 1173 0 discriminator 1
	cmpl	$63, -224(%rbp)	#, bit_num_
	jbe	.L202	#,
.L197:
	.loc 1 1173 0 discriminator 2
	movl	$0, -224(%rbp)	#, bit_num_
.LBE16:
	addl	$1, -220(%rbp)	#, word_num_
.L196:
	.loc 1 1173 0 discriminator 1
	cmpl	$1, -220(%rbp)	#, word_num_
	jbe	.L203	#,
	.loc 1 1173 0 discriminator 3
	movl	$0, -220(%rbp)	#, word_num_
	movq	-152(%rbp), %rax	# ptr_, tmp673
	movq	(%rax), %rax	# ptr__22->next, tmp674
	movq	%rax, -152(%rbp)	# tmp674, ptr_
.L195:
	.loc 1 1173 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, ptr_
	jne	.L204	#,
.L187:
.LBE15:
.LBE14:
	.loc 1 1184 0 is_stmt 1
	call	end_alias_analysis	#
	.loc 1 1185 0
	leaq	-48(%rbp), %rax	#, tmp675
	movq	%rax, %rdi	# tmp675,
	call	bitmap_clear	#
	.loc 1 1186 0
	movq	reg_equiv(%rip), %rax	# reg_equiv, reg_equiv.140
	movq	%rax, %rdi	# reg_equiv.140,
	call	free	#
	.loc 1 1187 0
	addq	$232, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	update_equiv_regs, .-update_equiv_regs
	.type	no_equiv, @function
no_equiv:
.LFB13:
	.loc 1 1200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# reg, reg
	movq	%rsi, -48(%rbp)	# store, store
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 1204 0
	movq	-40(%rbp), %rax	# reg, tmp76
	movzwl	(%rax), %eax	# reg_2(D)->code, D.14955
	cmpw	$61, %ax	#, D.14955
	je	.L206	#,
	.loc 1 1205 0
	jmp	.L205	#
.L206:
	.loc 1 1206 0
	movq	-40(%rbp), %rax	# reg, tmp77
	movl	8(%rax), %eax	# reg_2(D)->fld[0].rtuint, D.14956
	movl	%eax, -20(%rbp)	# D.14956, regno
	.loc 1 1207 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.141
	movl	-20(%rbp), %eax	# regno, tmp78
	movslq	%eax, %rdx	# tmp78, D.14957
	movq	%rdx, %rax	# D.14957, tmp79
	salq	$2, %rax	#, tmp79
	addq	%rdx, %rax	# D.14957, tmp79
	salq	$3, %rax	#, tmp80
	addq	%rcx, %rax	# reg_equiv.141, D.14958
	movq	32(%rax), %rax	# _9->init_insns, tmp81
	movq	%rax, -16(%rbp)	# tmp81, list
	.loc 1 1208 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14959
	cmpq	-16(%rbp), %rax	# list, D.14959
	jne	.L208	#,
	.loc 1 1209 0
	jmp	.L205	#
.L208:
	.loc 1 1210 0
	jmp	.L209	#
.L210:
.LBB18:
	.loc 1 1212 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp82
	movq	8(%rax), %rax	# list_1->fld[0].rtx, tmp83
	movq	%rax, -8(%rbp)	# tmp83, insn
	.loc 1 1213 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp84
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.14959
	movq	-8(%rbp), %rax	# insn, tmp85
	movq	%rdx, %rsi	# D.14959,
	movq	%rax, %rdi	# tmp85,
	call	remove_note	#
.LBE18:
	.loc 1 1210 0 discriminator 2
	movq	-16(%rbp), %rax	# list, tmp86
	movq	16(%rax), %rax	# list_1->fld[1].rtx, tmp87
	movq	%rax, -16(%rbp)	# tmp87, list
.L209:
	.loc 1 1210 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, list
	jne	.L210	#,
	.loc 1 1215 0 is_stmt 1
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.142
	movl	-20(%rbp), %eax	# regno, tmp88
	movslq	%eax, %rdx	# tmp88, D.14957
	movq	%rdx, %rax	# D.14957, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# D.14957, tmp89
	salq	$3, %rax	#, tmp90
	leaq	(%rcx,%rax), %rdx	#, D.14958
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14959
	movq	%rax, 32(%rdx)	# D.14959, _18->init_insns
	.loc 1 1216 0
	movq	reg_equiv(%rip), %rcx	# reg_equiv, reg_equiv.143
	movl	-20(%rbp), %eax	# regno, tmp91
	movslq	%eax, %rdx	# tmp91, D.14957
	movq	%rdx, %rax	# D.14957, tmp92
	salq	$2, %rax	#, tmp92
	addq	%rdx, %rax	# D.14957, tmp92
	salq	$3, %rax	#, tmp93
	addq	%rcx, %rax	# reg_equiv.143, D.14958
	movq	$0, 8(%rax)	#, _23->replacement
.L205:
	.loc 1 1217 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	no_equiv, .-no_equiv
	.type	block_alloc, @function
block_alloc:
.LFB14:
	.loc 1 1225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)	# b, b
	.loc 1 1229 0
	movl	$0, -140(%rbp)	#, insn_number
	.loc 1 1230 0
	movl	$0, -136(%rbp)	#, insn_count
	.loc 1 1231 0
	call	get_max_uid	#
	movl	%eax, -108(%rbp)	# tmp429, max_uid
	.loc 1 1233 0
	movl	$-1, -132(%rbp)	#, no_conflict_combined_regno
	.loc 1 1237 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.144
	movl	-164(%rbp), %edx	# b, tmp431
	movslq	%edx, %rdx	# tmp431, tmp430
	addq	$4, %rdx	#, tmp432
	movq	(%rax,%rdx,8), %rax	# basic_block_info.144_49->data.bb, D.14960
	movq	8(%rax), %rax	# _51->end, tmp433
	movq	%rax, -88(%rbp)	# tmp433, insn
.L215:
	.loc 1 1240 0
	movq	-88(%rbp), %rax	# insn, tmp434
	movzwl	(%rax), %eax	# insn_7->code, D.14961
	cmpw	$37, %ax	#, D.14961
	je	.L212	#,
	.loc 1 1241 0
	addl	$1, -136(%rbp)	#, insn_count
	movl	-136(%rbp), %eax	# insn_count, tmp435
	cmpl	-108(%rbp), %eax	# max_uid, tmp435
	jle	.L212	#,
	.loc 1 1242 0
	movl	$__FUNCTION__.11293, %edx	#,
	movl	$1242, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L212:
	.loc 1 1243 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.145
	movl	-164(%rbp), %edx	# b, tmp437
	movslq	%edx, %rdx	# tmp437, tmp436
	addq	$4, %rdx	#, tmp438
	movq	(%rax,%rdx,8), %rax	# basic_block_info.145_55->data.bb, D.14960
	movq	(%rax), %rax	# _56->head, D.14962
	cmpq	-88(%rbp), %rax	# insn, D.14962
	jne	.L213	#,
	.loc 1 1244 0
	nop
	.loc 1 1250 0
	movl	-136(%rbp), %eax	# insn_count, tmp441
	addl	$1, %eax	#, D.14963
	addl	%eax, %eax	# D.14963
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14964,
	call	xcalloc	#
	movq	%rax, regs_live_at(%rip)	# regs_live_at.146, regs_live_at
	.loc 1 1255 0
	movq	$0, regs_live(%rip)	#, regs_live
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.147
	movl	-164(%rbp), %edx	# b, tmp444
	movslq	%edx, %rdx	# tmp444, tmp443
	addq	$4, %rdx	#, tmp445
	movq	(%rax,%rdx,8), %rax	# basic_block_info.147_62->data.bb, D.14960
	movq	64(%rax), %rax	# _63->global_live_at_start, D.14965
	movq	%rax, %rsi	# D.14965,
	movl	$regs_live, %edi	#,
	call	reg_set_to_hard_reg_set	#
	.loc 1 1261 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.148
	movl	-164(%rbp), %edx	# b, tmp447
	movslq	%edx, %rdx	# tmp447, tmp446
	addq	$4, %rdx	#, tmp448
	movq	(%rax,%rdx,8), %rax	# basic_block_info.148_65->data.bb, D.14960
	movq	(%rax), %rax	# _66->head, tmp449
	movq	%rax, -88(%rbp)	# tmp449, insn
	jmp	.L267	#
.L213:
	.loc 1 1245 0
	movq	-88(%rbp), %rax	# insn, tmp439
	movq	16(%rax), %rax	# insn_7->fld[1].rtx, tmp440
	movq	%rax, -88(%rbp)	# tmp440, insn
	.loc 1 1246 0
	jmp	.L215	#
.L267:
	.loc 1 1264 0
	movq	-88(%rbp), %rax	# insn, tmp450
	movzwl	(%rax), %eax	# insn_8->code, D.14961
	cmpw	$37, %ax	#, D.14961
	je	.L216	#,
	.loc 1 1265 0
	addl	$1, -140(%rbp)	#, insn_number
.L216:
	.loc 1 1267 0
	movq	-88(%rbp), %rax	# insn, tmp451
	movzwl	(%rax), %eax	# insn_8->code, D.14961
	movzwl	%ax, %eax	# D.14961, D.14963
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14966
	cmpb	$105, %al	#, D.14966
	jne	.L217	#,
.LBB19:
	.loc 1 1270 0
	movl	$0, -128(%rbp)	#, win
	.loc 1 1271 0
	movq	$0, -72(%rbp)	#, r1
	.loc 1 1272 0
	movl	$-1, -124(%rbp)	#, combined_regno
	.loc 1 1275 0
	movl	-140(%rbp), %eax	# insn_number, tmp453
	movl	%eax, this_insn_number(%rip)	# tmp453, this_insn_number
	.loc 1 1276 0
	movq	-88(%rbp), %rax	# insn, tmp454
	movq	%rax, this_insn(%rip)	# tmp454, this_insn
	.loc 1 1278 0
	movq	-88(%rbp), %rax	# insn, tmp455
	movq	%rax, %rdi	# tmp455,
	call	extract_insn	#
	.loc 1 1279 0
	movl	$-1, which_alternative(%rip)	#, which_alternative
	.loc 1 1299 0
	movl	optimize(%rip), %eax	# optimize, optimize.149
	testl	%eax, %eax	# optimize.149
	je	.L218	#,
	.loc 1 1300 0
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14966
	cmpb	$1, %al	#, D.14966
	jle	.L218	#,
	.loc 1 1301 0
	movq	recog_data+480(%rip), %rax	# recog_data.constraints, D.14967
	movzbl	(%rax), %eax	# *_78, D.14966
	cmpb	$61, %al	#, D.14966
	jne	.L218	#,
	.loc 1 1302 0
	movq	recog_data+480(%rip), %rax	# recog_data.constraints, D.14967
	addq	$1, %rax	#, D.14967
	movzbl	(%rax), %eax	# *_81, D.14966
	cmpb	$38, %al	#, D.14966
	je	.L218	#,
.LBB20:
	.loc 1 1305 0
	movl	$-1, -116(%rbp)	#, must_match_0
	.loc 1 1308 0
	movl	$0, -112(%rbp)	#, n_matching_alts
	.loc 1 1310 0
	movl	$1, -120(%rbp)	#, i
	jmp	.L219	#
.L221:
.LBB21:
	.loc 1 1312 0
	movl	-120(%rbp), %eax	# i, tmp457
	cltq
	addq	$60, %rax	#, tmp458
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, tmp459
	movq	%rax, -64(%rbp)	# tmp459, p
	.loc 1 1313 0
	movq	-64(%rbp), %rax	# p, tmp460
	movq	%rax, %rdi	# tmp460,
	call	requires_inout	#
	movl	%eax, -104(%rbp)	# tmp461, this_match
	.loc 1 1315 0
	movl	-104(%rbp), %eax	# this_match, tmp462
	addl	%eax, -112(%rbp)	# tmp462, n_matching_alts
	.loc 1 1316 0
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.14966
	movsbl	%al, %eax	# D.14966, D.14963
	cmpl	-104(%rbp), %eax	# this_match, D.14963
	jne	.L220	#,
	.loc 1 1317 0
	movl	-120(%rbp), %eax	# i, tmp463
	movl	%eax, -116(%rbp)	# tmp463, must_match_0
.L220:
.LBE21:
	.loc 1 1310 0
	addl	$1, -120(%rbp)	#, i
.L219:
	.loc 1 1310 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14966
	movsbl	%al, %eax	# D.14966, D.14963
	cmpl	-120(%rbp), %eax	# i, D.14963
	jg	.L221	#,
	.loc 1 1320 0 is_stmt 1
	movq	recog_data(%rip), %rax	# recog_data.operand, tmp464
	movq	%rax, -56(%rbp)	# tmp464, r0
	.loc 1 1321 0
	movl	$1, -120(%rbp)	#, i
	jmp	.L222	#
.L237:
	.loc 1 1327 0
	cmpl	$0, -116(%rbp)	#, must_match_0
	js	.L223	#,
	.loc 1 1327 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# i, tmp465
	cmpl	-116(%rbp), %eax	# must_match_0, tmp465
	je	.L223	#,
	.loc 1 1328 0 is_stmt 1
	movl	-116(%rbp), %eax	# must_match_0, tmp466
	addl	$1, %eax	#, D.14963
	cmpl	-120(%rbp), %eax	# i, D.14963
	jne	.L224	#,
	.loc 1 1329 0 discriminator 1
	movl	-120(%rbp), %eax	# i, tmp467
	subl	$1, %eax	#, D.14963
	cltq
	addq	$60, %rax	#, tmp469
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14967
	movzbl	(%rax), %eax	# *_101, D.14966
	.loc 1 1328 0 discriminator 1
	cmpb	$37, %al	#, D.14966
	je	.L223	#,
.L224:
	.loc 1 1330 0
	movl	-116(%rbp), %eax	# must_match_0, tmp470
	subl	$1, %eax	#, D.14963
	cmpl	-120(%rbp), %eax	# i, D.14963
	jne	.L225	#,
	.loc 1 1331 0 discriminator 1
	movl	-120(%rbp), %eax	# i, tmp472
	cltq
	addq	$60, %rax	#, tmp473
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14967
	movzbl	(%rax), %eax	# *_104, D.14966
	.loc 1 1330 0 discriminator 1
	cmpb	$37, %al	#, D.14966
	je	.L223	#,
.L225:
	.loc 1 1332 0
	jmp	.L226	#
.L223:
	.loc 1 1339 0
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.14966
	movsbl	%al, %eax	# D.14966, D.14963
	cmpl	-112(%rbp), %eax	# n_matching_alts, D.14963
	jne	.L227	#,
	.loc 1 1340 0
	movl	-120(%rbp), %eax	# i, tmp475
	cltq
	addq	$60, %rax	#, tmp476
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14967
	movq	%rax, %rdi	# D.14967,
	call	requires_inout	#
	testl	%eax, %eax	# D.14963
	jne	.L227	#,
	.loc 1 1341 0
	jmp	.L226	#
.L227:
	.loc 1 1343 0
	movl	-120(%rbp), %eax	# i, tmp478
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, tmp479
	movq	%rax, -72(%rbp)	# tmp479, r1
	.loc 1 1348 0
	movl	-120(%rbp), %eax	# i, tmp481
	cltq
	addq	$60, %rax	#, tmp482
	movq	recog_data(,%rax,8), %rax	# recog_data.constraints, D.14967
	movzbl	(%rax), %eax	# *_111, D.14966
	cmpb	$112, %al	#, D.14966
	jne	.L228	#,
	.loc 1 1349 0
	jmp	.L229	#
.L230:
	.loc 1 1350 0
	movq	-72(%rbp), %rax	# r1, tmp483
	movq	8(%rax), %rax	# r1_24->fld[0].rtx, tmp484
	movq	%rax, -72(%rbp)	# tmp484, r1
.L229:
	.loc 1 1349 0 discriminator 1
	movq	-72(%rbp), %rax	# r1, tmp485
	movzwl	(%rax), %eax	# r1_24->code, D.14961
	cmpw	$75, %ax	#, D.14961
	je	.L230	#,
	.loc 1 1349 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# r1, tmp486
	movzwl	(%rax), %eax	# r1_24->code, D.14961
	cmpw	$78, %ax	#, D.14961
	je	.L230	#,
.L228:
	.loc 1 1354 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.150
	movq	-72(%rbp), %rdx	# r1, tmp487
	movq	%rdx, %rsi	# tmp487,
	movq	%rax, %rdi	# cfun.150,
	call	get_hard_reg_initial_reg	#
	movq	%rax, -48(%rbp)	# tmp488, hard_reg
	.loc 1 1355 0
	cmpq	$0, -48(%rbp)	#, hard_reg
	je	.L231	#,
	.loc 1 1357 0
	movq	-48(%rbp), %rax	# hard_reg, tmp489
	movzwl	(%rax), %eax	# hard_reg_117->code, D.14961
	cmpw	$61, %ax	#, D.14961
	jne	.L231	#,
	.loc 1 1358 0
	movq	-48(%rbp), %rax	# hard_reg, tmp490
	movl	8(%rax), %eax	# hard_reg_117->fld[0].rtuint, D.14968
	cmpl	$52, %eax	#, D.14968
	ja	.L231	#,
	.loc 1 1360 0
	movq	-48(%rbp), %rax	# hard_reg, tmp491
	movl	8(%rax), %eax	# hard_reg_117->fld[0].rtuint, D.14968
	movl	%eax, %eax	# D.14968, tmp492
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.14966
	testb	%al, %al	# D.14966
	jne	.L231	#,
	.loc 1 1361 0
	jmp	.L226	#
.L231:
	.loc 1 1364 0
	movq	-56(%rbp), %rax	# r0, tmp493
	movzwl	(%rax), %eax	# r0_95->code, D.14961
	cmpw	$61, %ax	#, D.14961
	je	.L232	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# r0, tmp494
	movzwl	(%rax), %eax	# r0_95->code, D.14961
	cmpw	$63, %ax	#, D.14961
	jne	.L233	#,
.L232:
.LBB22:
	.loc 1 1371 0 is_stmt 1
	movl	-120(%rbp), %eax	# i, tmp496
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.14962
	cmpq	-72(%rbp), %rax	# r1, D.14962
	jne	.L234	#,
	.loc 1 1371 0 is_stmt 0 discriminator 1
	cmpl	$0, -116(%rbp)	#, must_match_0
	js	.L234	#,
	.loc 1 1371 0 discriminator 3
	movl	$1, %eax	#, iftmp.151
	jmp	.L235	#
.L234:
	.loc 1 1371 0 discriminator 2
	movl	$0, %eax	#, iftmp.151
.L235:
	.loc 1 1370 0 is_stmt 1
	movl	%eax, -100(%rbp)	# iftmp.151, may_save_copy
	.loc 1 1373 0
	movq	-72(%rbp), %rax	# r1, tmp497
	movzwl	(%rax), %eax	# r1_25->code, D.14961
	cmpw	$61, %ax	#, D.14961
	je	.L236	#,
	.loc 1 1373 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# r1, tmp498
	movzwl	(%rax), %eax	# r1_25->code, D.14961
	cmpw	$63, %ax	#, D.14961
	jne	.L233	#,
.L236:
	.loc 1 1374 0 is_stmt 1
	movq	-88(%rbp), %rdi	# insn, tmp499
	movl	-140(%rbp), %ecx	# insn_number, tmp500
	movl	-100(%rbp), %edx	# may_save_copy, tmp501
	movq	-56(%rbp), %rsi	# r0, tmp502
	movq	-72(%rbp), %rax	# r1, tmp503
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp499,
	movq	%rax, %rdi	# tmp503,
	call	combine_regs	#
	movl	%eax, -128(%rbp)	# tmp504, win
.L233:
.LBE22:
	.loc 1 1377 0
	cmpl	$0, -128(%rbp)	#, win
	je	.L226	#,
	.loc 1 1378 0
	jmp	.L218	#
.L226:
	.loc 1 1321 0
	addl	$1, -120(%rbp)	#, i
.L222:
	.loc 1 1321 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.14966
	movsbl	%al, %eax	# D.14966, D.14963
	cmpl	-120(%rbp), %eax	# i, D.14963
	jg	.L237	#,
.L218:
.LBE20:
	.loc 1 1396 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.152
	testl	%eax, %eax	# optimize.152
	je	.L238	#,
	.loc 1 1397 0
	movq	-88(%rbp), %rax	# insn, tmp505
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, D.14962
	movzwl	(%rax), %eax	# _133->code, D.14961
	cmpw	$49, %ax	#, D.14961
	jne	.L238	#,
	.loc 1 1398 0
	movq	-88(%rbp), %rax	# insn, tmp506
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, D.14962
	movq	8(%rax), %rax	# _135->fld[0].rtx, tmp507
	movq	%rax, -56(%rbp)	# tmp507, r0
	.loc 1 1399 0
	movq	-56(%rbp), %rax	# r0, tmp508
	movzwl	(%rax), %eax	# r0_136->code, D.14961
	.loc 1 1398 0
	cmpw	$61, %ax	#, D.14961
	jne	.L238	#,
	.loc 1 1400 0
	movq	-88(%rbp), %rax	# insn, tmp509
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp509,
	call	find_reg_note	#
	movq	%rax, -80(%rbp)	# tmp510, link
	cmpq	$0, -80(%rbp)	#, link
	je	.L238	#,
	.loc 1 1401 0
	movq	-80(%rbp), %rax	# link, tmp511
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	testq	%rax, %rax	# D.14962
	je	.L238	#,
	.loc 1 1402 0
	movq	-80(%rbp), %rax	# link, tmp512
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _140->code, D.14961
	cmpw	$32, %ax	#, D.14961
	jne	.L238	#,
	.loc 1 1403 0
	movq	-80(%rbp), %rax	# link, tmp513
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _142->code, D.14961
	movzwl	%ax, %eax	# D.14961, D.14963
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14966
	cmpb	$105, %al	#, D.14966
	jne	.L239	#,
	.loc 1 1403 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# link, tmp515
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movq	32(%rax), %rax	# _146->fld[3].rtx, D.14962
	movzwl	(%rax), %eax	# _147->code, D.14961
	cmpw	$47, %ax	#, D.14961
	jne	.L240	#,
	.loc 1 1403 0 discriminator 3
	movq	-80(%rbp), %rax	# link, tmp516
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movq	32(%rax), %rax	# _149->fld[3].rtx, iftmp.154
	jmp	.L242	#
.L240:
	.loc 1 1403 0 discriminator 4
	movq	-80(%rbp), %rax	# link, tmp517
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movq	32(%rax), %rdx	# _151->fld[3].rtx, D.14962
	movq	-80(%rbp), %rax	# link, tmp518
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movq	%rdx, %rsi	# D.14962,
	movq	%rax, %rdi	# D.14962,
	call	single_set_2	#
	jmp	.L242	#
.L239:
	.loc 1 1403 0 discriminator 2
	movl	$0, %eax	#, iftmp.153
.L242:
	.loc 1 1403 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.153, set
	cmpq	$0, -40(%rbp)	#, set
	je	.L238	#,
	.loc 1 1404 0 is_stmt 1
	movq	-40(%rbp), %rax	# set, tmp519
	movq	8(%rax), %rax	# set_157->fld[0].rtx, D.14962
	cmpq	-56(%rbp), %rax	# r0, D.14962
	jne	.L238	#,
	.loc 1 1404 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# set, tmp520
	movq	16(%rax), %rax	# set_157->fld[1].rtx, D.14962
	cmpq	-56(%rbp), %rax	# r0, D.14962
	jne	.L238	#,
	.loc 1 1405 0 is_stmt 1
	movq	-80(%rbp), %rax	# link, tmp521
	movq	8(%rax), %rax	# link_138->fld[0].rtx, D.14962
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.14962,
	call	find_reg_note	#
	movq	%rax, -32(%rbp)	# tmp522, note
	cmpq	$0, -32(%rbp)	#, note
	je	.L238	#,
	.loc 1 1408 0
	movq	-32(%rbp), %rax	# note, tmp523
	movq	8(%rax), %rax	# note_161->fld[0].rtx, tmp524
	movq	%rax, -72(%rbp)	# tmp524, r1
	movq	-72(%rbp), %rax	# r1, tmp525
	movzwl	(%rax), %eax	# r1_162->code, D.14961
	.loc 1 1410 0
	cmpw	$61, %ax	#, D.14961
	jne	.L243	#,
	.loc 1 1410 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rdx	# r1, tmp526
	movq	-56(%rbp), %rcx	# r0, tmp527
	movq	-88(%rbp), %rax	# insn, tmp528
	movq	%rcx, %rsi	# tmp527,
	movq	%rax, %rdi	# tmp528,
	call	no_conflict_p	#
	testl	%eax, %eax	# D.14963
	je	.L243	#,
	.loc 1 1410 0 discriminator 3
	movl	$1, %eax	#, iftmp.155
	jmp	.L244	#
.L243:
	.loc 1 1410 0 discriminator 2
	movl	$0, %eax	#, iftmp.155
.L244:
	.loc 1 1408 0 is_stmt 1
	testl	%eax, %eax	# iftmp.155
	je	.L245	#,
	.loc 1 1411 0
	movq	-88(%rbp), %rcx	# insn, tmp529
	movl	-140(%rbp), %edx	# insn_number, tmp530
	movq	-56(%rbp), %rsi	# r0, tmp531
	movq	-72(%rbp), %rax	# r1, tmp532
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp529,
	movl	%edx, %ecx	# tmp530,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp532,
	call	combine_regs	#
	movl	%eax, -128(%rbp)	# tmp533, win
	jmp	.L246	#
.L245:
	.loc 1 1412 0
	movq	-32(%rbp), %rax	# note, tmp534
	movq	8(%rax), %rax	# note_161->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _168->code, D.14961
	movzwl	%ax, %eax	# D.14961, D.14963
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, D.14967
	movzbl	(%rax), %eax	# *_171, D.14966
	cmpb	$101, %al	#, D.14966
	jne	.L247	#,
	.loc 1 1413 0
	movq	-32(%rbp), %rax	# note, tmp536
	movq	8(%rax), %rax	# note_161->fld[0].rtx, D.14962
	movq	8(%rax), %rax	# _173->fld[0].rtx, tmp537
	movq	%rax, -72(%rbp)	# tmp537, r1
	.loc 1 1414 0
	movq	-72(%rbp), %rax	# r1, tmp538
	movzwl	(%rax), %eax	# r1_174->code, D.14961
	cmpw	$61, %ax	#, D.14961
	je	.L248	#,
	.loc 1 1414 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# r1, tmp539
	movzwl	(%rax), %eax	# r1_174->code, D.14961
	cmpw	$63, %ax	#, D.14961
	jne	.L249	#,
.L248:
	.loc 1 1414 0 discriminator 1
	movl	$1, %eax	#, iftmp.156
	jmp	.L250	#
.L249:
	.loc 1 1414 0 discriminator 3
	movl	$0, %eax	#, iftmp.156
.L250:
	.loc 1 1413 0 is_stmt 1
	testl	%eax, %eax	# iftmp.156
	je	.L247	#,
	.loc 1 1415 0
	movq	-72(%rbp), %rdx	# r1, tmp540
	movq	-56(%rbp), %rcx	# r0, tmp541
	movq	-88(%rbp), %rax	# insn, tmp542
	movq	%rcx, %rsi	# tmp541,
	movq	%rax, %rdi	# tmp542,
	call	no_conflict_p	#
	testl	%eax, %eax	# D.14963
	je	.L247	#,
	.loc 1 1416 0
	movq	-88(%rbp), %rcx	# insn, tmp543
	movl	-140(%rbp), %edx	# insn_number, tmp544
	movq	-56(%rbp), %rsi	# r0, tmp545
	movq	-72(%rbp), %rax	# r1, tmp546
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp543,
	movl	%edx, %ecx	# tmp544,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp546,
	call	combine_regs	#
	movl	%eax, -128(%rbp)	# tmp547, win
	jmp	.L246	#
.L247:
	.loc 1 1420 0
	movq	-32(%rbp), %rax	# note, tmp548
	movq	8(%rax), %rax	# note_161->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _181->code, D.14961
	cmpw	$103, %ax	#, D.14961
	je	.L251	#,
	.loc 1 1421 0
	movq	-32(%rbp), %rax	# note, tmp549
	movq	8(%rax), %rax	# note_161->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _183->code, D.14961
	cmpw	$102, %ax	#, D.14961
	je	.L251	#,
	.loc 1 1422 0
	movq	-32(%rbp), %rax	# note, tmp550
	movq	8(%rax), %rax	# note_161->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _185->code, D.14961
	movzwl	%ax, %eax	# D.14961, D.14963
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14966
	cmpb	$99, %al	#, D.14966
	jne	.L246	#,
.L251:
	.loc 1 1423 0
	movq	-32(%rbp), %rax	# note, tmp552
	movq	8(%rax), %rax	# note_161->fld[0].rtx, D.14962
	movq	16(%rax), %rax	# _189->fld[1].rtx, tmp553
	movq	%rax, -72(%rbp)	# tmp553, r1
	.loc 1 1424 0
	movq	-72(%rbp), %rax	# r1, tmp554
	movzwl	(%rax), %eax	# r1_190->code, D.14961
	cmpw	$61, %ax	#, D.14961
	je	.L252	#,
	.loc 1 1424 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# r1, tmp555
	movzwl	(%rax), %eax	# r1_190->code, D.14961
	cmpw	$63, %ax	#, D.14961
	jne	.L253	#,
.L252:
	.loc 1 1424 0 discriminator 1
	movl	$1, %eax	#, iftmp.157
	jmp	.L254	#
.L253:
	.loc 1 1424 0 discriminator 3
	movl	$0, %eax	#, iftmp.157
.L254:
	.loc 1 1423 0 is_stmt 1
	testl	%eax, %eax	# iftmp.157
	je	.L246	#,
	.loc 1 1425 0
	movq	-72(%rbp), %rdx	# r1, tmp556
	movq	-56(%rbp), %rcx	# r0, tmp557
	movq	-88(%rbp), %rax	# insn, tmp558
	movq	%rcx, %rsi	# tmp557,
	movq	%rax, %rdi	# tmp558,
	call	no_conflict_p	#
	testl	%eax, %eax	# D.14963
	je	.L246	#,
	.loc 1 1426 0
	movq	-88(%rbp), %rcx	# insn, tmp559
	movl	-140(%rbp), %edx	# insn_number, tmp560
	movq	-56(%rbp), %rsi	# r0, tmp561
	movq	-72(%rbp), %rax	# r1, tmp562
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp559,
	movl	%edx, %ecx	# tmp560,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp562,
	call	combine_regs	#
	movl	%eax, -128(%rbp)	# tmp563, win
.L246:
	.loc 1 1430 0
	cmpl	$0, -128(%rbp)	#, win
	je	.L238	#,
	.loc 1 1431 0
	movq	-72(%rbp), %rax	# r1, tmp564
	movl	8(%rax), %eax	# r1_30->fld[0].rtuint, D.14968
	movl	%eax, -132(%rbp)	# D.14968, no_conflict_combined_regno
.L238:
	.loc 1 1439 0
	cmpl	$0, -128(%rbp)	#, win
	je	.L255	#,
	.loc 1 1441 0
	jmp	.L256	#
.L257:
	.loc 1 1442 0
	movq	-72(%rbp), %rax	# r1, tmp565
	movq	8(%rax), %rax	# r1_32->fld[0].rtx, tmp566
	movq	%rax, -72(%rbp)	# tmp566, r1
.L256:
	.loc 1 1441 0 discriminator 1
	movq	-72(%rbp), %rax	# r1, tmp567
	movzwl	(%rax), %eax	# r1_32->code, D.14961
	cmpw	$63, %ax	#, D.14961
	je	.L257	#,
	.loc 1 1443 0
	movq	-72(%rbp), %rax	# r1, tmp568
	movl	8(%rax), %eax	# r1_32->fld[0].rtuint, D.14968
	movl	%eax, -124(%rbp)	# D.14968, combined_regno
.L255:
	.loc 1 1449 0
	movq	-88(%rbp), %rax	# insn, tmp569
	movq	56(%rax), %rax	# insn_8->fld[6].rtx, tmp570
	movq	%rax, -80(%rbp)	# tmp570, link
	jmp	.L258	#
.L261:
	.loc 1 1450 0
	movq	-80(%rbp), %rax	# link, tmp571
	movzbl	2(%rax), %eax	# link_16->mode, D.14969
	cmpb	$1, %al	#, D.14969
	jne	.L259	#,
	.loc 1 1451 0
	movq	-80(%rbp), %rax	# link, tmp572
	movq	8(%rax), %rax	# link_16->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _205->code, D.14961
	cmpw	$61, %ax	#, D.14961
	jne	.L259	#,
	.loc 1 1452 0
	movq	-80(%rbp), %rax	# link, tmp573
	movq	8(%rax), %rax	# link_16->fld[0].rtx, D.14962
	movl	8(%rax), %eax	# _207->fld[0].rtuint, D.14968
	cmpl	-124(%rbp), %eax	# combined_regno, D.14963
	je	.L259	#,
	.loc 1 1453 0
	movq	-80(%rbp), %rax	# link, tmp574
	movq	8(%rax), %rax	# link_16->fld[0].rtx, D.14962
	movl	8(%rax), %eax	# _210->fld[0].rtuint, D.14968
	cmpl	-132(%rbp), %eax	# no_conflict_combined_regno, D.14963
	jne	.L260	#,
	.loc 1 1454 0
	movq	-80(%rbp), %rax	# link, tmp575
	movq	8(%rax), %rdx	# link_16->fld[0].rtx, D.14962
	movq	-88(%rbp), %rax	# insn, tmp576
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp576,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14962
	jne	.L259	#,
.L260:
	.loc 1 1456 0
	movq	-80(%rbp), %rax	# link, tmp577
	movq	8(%rax), %rax	# link_16->fld[0].rtx, D.14962
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14962,
	call	wipe_dead_reg	#
.L259:
	.loc 1 1449 0
	movq	-80(%rbp), %rax	# link, tmp578
	movq	16(%rax), %rax	# link_16->fld[1].rtx, tmp579
	movq	%rax, -80(%rbp)	# tmp579, link
.L258:
	.loc 1 1449 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L261	#,
	.loc 1 1462 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp580
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, D.14962
	movl	$0, %edx	#,
	movl	$reg_is_set, %esi	#,
	movq	%rax, %rdi	# D.14962,
	call	note_stores	#
	.loc 1 1470 0
	movq	-88(%rbp), %rax	# insn, tmp581
	movq	56(%rax), %rax	# insn_8->fld[6].rtx, tmp582
	movq	%rax, -80(%rbp)	# tmp582, link
	jmp	.L262	#
.L264:
	.loc 1 1471 0
	movq	-80(%rbp), %rax	# link, tmp583
	movzbl	2(%rax), %eax	# link_17->mode, D.14969
	cmpb	$10, %al	#, D.14969
	jne	.L263	#,
	.loc 1 1472 0
	movq	-80(%rbp), %rax	# link, tmp584
	movq	8(%rax), %rax	# link_17->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _220->code, D.14961
	cmpw	$61, %ax	#, D.14961
	jne	.L263	#,
	.loc 1 1473 0
	movq	-80(%rbp), %rax	# link, tmp585
	movq	8(%rax), %rax	# link_17->fld[0].rtx, D.14962
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14962,
	call	wipe_dead_reg	#
.L263:
	.loc 1 1470 0
	movq	-80(%rbp), %rax	# link, tmp586
	movq	16(%rax), %rax	# link_17->fld[1].rtx, tmp587
	movq	%rax, -80(%rbp)	# tmp587, link
.L262:
	.loc 1 1470 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L264	#,
	.loc 1 1478 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp588
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp588,
	call	find_reg_note	#
	movq	%rax, -32(%rbp)	# tmp589, note
	cmpq	$0, -32(%rbp)	#, note
	je	.L217	#,
	.loc 1 1479 0
	movq	-32(%rbp), %rax	# note, tmp590
	movq	8(%rax), %rax	# note_224->fld[0].rtx, D.14962
	movzwl	(%rax), %eax	# _225->code, D.14961
	cmpw	$32, %ax	#, D.14961
	jne	.L217	#,
	.loc 1 1480 0
	movq	-32(%rbp), %rax	# note, tmp591
	movq	8(%rax), %rax	# note_224->fld[0].rtx, D.14962
	movq	32(%rax), %rax	# _227->fld[3].rtx, D.14962
	movzwl	(%rax), %eax	# _228->code, D.14961
	cmpw	$49, %ax	#, D.14961
	jne	.L217	#,
	.loc 1 1481 0
	movl	$-1, -132(%rbp)	#, no_conflict_combined_regno
.L217:
.LBE19:
	.loc 1 1488 0
	movq	regs_live_at(%rip), %rax	# regs_live_at, regs_live_at.158
	movl	-140(%rbp), %edx	# insn_number, tmp592
	movslq	%edx, %rdx	# tmp592, D.14964
	salq	$4, %rdx	#, D.14964
	addq	%rdx, %rax	# D.14964, D.14970
	movq	regs_live_at(%rip), %rdx	# regs_live_at, regs_live_at.159
	movl	-140(%rbp), %ecx	# insn_number, tmp593
	movslq	%ecx, %rcx	# tmp593, D.14964
	salq	$4, %rcx	#, D.14964
	addq	%rcx, %rdx	# D.14964, D.14970
	movq	(%rdx), %rcx	# *_238, D.14964
	movq	regs_live(%rip), %rdx	# regs_live, regs_live.160
	orq	%rcx, %rdx	# D.14964, D.14964
	movq	%rdx, (%rax)	# D.14964, *_234
	.loc 1 1489 0
	movq	regs_live_at(%rip), %rax	# regs_live_at, regs_live_at.161
	movl	-140(%rbp), %edx	# insn_number, tmp594
	movslq	%edx, %rdx	# tmp594, D.14971
	salq	$4, %rdx	#, D.14971
	addq	$8, %rdx	#, D.14971
	addq	%rdx, %rax	# D.14971, D.14970
	movq	regs_live_at(%rip), %rdx	# regs_live_at, regs_live_at.162
	movl	-140(%rbp), %ecx	# insn_number, tmp595
	movslq	%ecx, %rcx	# tmp595, D.14971
	salq	$4, %rcx	#, D.14971
	addq	$8, %rcx	#, D.14971
	addq	%rcx, %rdx	# D.14971, D.14970
	movq	(%rdx), %rcx	# *_251, D.14964
	movq	regs_live(%rip), %rdx	# regs_live, regs_live.163
	orq	%rcx, %rdx	# D.14964, D.14964
	movq	%rdx, (%rax)	# D.14964, *_246
	.loc 1 1491 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.164
	movl	-164(%rbp), %edx	# b, tmp597
	movslq	%edx, %rdx	# tmp597, tmp596
	addq	$4, %rdx	#, tmp598
	movq	(%rax,%rdx,8), %rax	# basic_block_info.164_255->data.bb, D.14960
	movq	8(%rax), %rax	# _256->end, D.14962
	cmpq	-88(%rbp), %rax	# insn, D.14962
	jne	.L265	#,
	.loc 1 1492 0
	nop
	.loc 1 1505 0
	movl	next_qty(%rip), %eax	# next_qty, next_qty.165
	cltq
	salq	$2, %rax	#, D.14964
	movq	%rax, %rdi	# D.14964,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp601, qty_order
	.loc 1 1506 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L268	#
.L265:
	.loc 1 1494 0
	movq	-88(%rbp), %rax	# insn, tmp599
	movq	24(%rax), %rax	# insn_8->fld[2].rtx, tmp600
	movq	%rax, -88(%rbp)	# tmp600, insn
	.loc 1 1495 0
	jmp	.L267	#
.L269:
	.loc 1 1507 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp602
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14964
	movq	-24(%rbp), %rax	# qty_order, tmp603
	addq	%rax, %rdx	# tmp603, D.14972
	movl	-148(%rbp), %eax	# i, tmp604
	movl	%eax, (%rdx)	# tmp604, *_266
	.loc 1 1506 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L268:
	.loc 1 1506 0 is_stmt 0 discriminator 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.166
	cmpl	%eax, -148(%rbp)	# next_qty.166, i
	jl	.L269	#,
	.loc 1 1512 0 is_stmt 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.167
	cmpl	$2, %eax	#, next_qty.167
	je	.L271	#,
	cmpl	$2, %eax	#, next_qty.167
	jg	.L272	#,
	testl	%eax, %eax	# next_qty.167
	js	.L270	#,
	.loc 1 1532 0
	jmp	.L276	#
.L272:
	.loc 1 1512 0
	cmpl	$3, %eax	#, next_qty.167
	jne	.L270	#,
	.loc 1 1516 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	qty_sugg_compare	#
	testl	%eax, %eax	# D.14963
	jle	.L275	#,
	.loc 1 1517 0
	movq	-24(%rbp), %rax	# qty_order, tmp605
	movl	(%rax), %eax	# *qty_order_261, tmp606
	movl	%eax, -148(%rbp)	# tmp606, i
	movq	-24(%rbp), %rax	# qty_order, tmp607
	movl	4(%rax), %edx	# MEM[(int *)qty_order_261 + 4B], D.14963
	movq	-24(%rbp), %rax	# qty_order, tmp608
	movl	%edx, (%rax)	# D.14963, *qty_order_261
	movq	-24(%rbp), %rax	# qty_order, tmp609
	leaq	4(%rax), %rdx	#, D.14972
	movl	-148(%rbp), %eax	# i, tmp610
	movl	%eax, (%rdx)	# tmp610, *_272
.L275:
	.loc 1 1518 0
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	qty_sugg_compare	#
	testl	%eax, %eax	# D.14963
	jle	.L271	#,
	.loc 1 1519 0
	movq	-24(%rbp), %rax	# qty_order, tmp611
	movl	8(%rax), %eax	# MEM[(int *)qty_order_261 + 8B], tmp612
	movl	%eax, -148(%rbp)	# tmp612, i
	movq	-24(%rbp), %rax	# qty_order, tmp613
	leaq	8(%rax), %rdx	#, D.14972
	movq	-24(%rbp), %rax	# qty_order, tmp614
	movl	4(%rax), %eax	# MEM[(int *)qty_order_261 + 4B], D.14963
	movl	%eax, (%rdx)	# D.14963, *_275
	movq	-24(%rbp), %rax	# qty_order, tmp615
	leaq	4(%rax), %rdx	#, D.14972
	movl	-148(%rbp), %eax	# i, tmp616
	movl	%eax, (%rdx)	# tmp616, *_277
.L271:
	.loc 1 1524 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	qty_sugg_compare	#
	testl	%eax, %eax	# D.14963
	jle	.L273	#,
	.loc 1 1525 0
	movq	-24(%rbp), %rax	# qty_order, tmp617
	movl	(%rax), %eax	# *qty_order_261, tmp618
	movl	%eax, -148(%rbp)	# tmp618, i
	movq	-24(%rbp), %rax	# qty_order, tmp619
	movl	4(%rax), %edx	# MEM[(int *)qty_order_261 + 4B], D.14963
	movq	-24(%rbp), %rax	# qty_order, tmp620
	movl	%edx, (%rax)	# D.14963, *qty_order_261
	movq	-24(%rbp), %rax	# qty_order, tmp621
	leaq	4(%rax), %rdx	#, D.14972
	movl	-148(%rbp), %eax	# i, tmp622
	movl	%eax, (%rdx)	# tmp622, *_281
	.loc 1 1532 0
	jmp	.L276	#
.L273:
	jmp	.L276	#
.L270:
	.loc 1 1535 0
	movl	next_qty(%rip), %esi	# next_qty, next_qty.168
	movq	-24(%rbp), %rax	# qty_order, tmp623
	movl	$qty_sugg_compare_1, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp623,
	call	specqsort	#
.L276:
	.loc 1 1542 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L277	#
.L281:
	.loc 1 1544 0
	movl	-148(%rbp), %eax	# i, tmp624
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14964
	movq	-24(%rbp), %rax	# qty_order, tmp625
	addq	%rdx, %rax	# D.14964, D.14972
	movl	(%rax), %eax	# *_287, tmp626
	movl	%eax, -144(%rbp)	# tmp626, q
	.loc 1 1545 0
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.169
	movl	-144(%rbp), %edx	# q, tmp627
	movslq	%edx, %rdx	# tmp627, D.14964
	addq	%rdx, %rdx	# D.14964
	addq	%rdx, %rax	# D.14964, D.14973
	movzwl	(%rax), %eax	# *_292, D.14974
	testw	%ax, %ax	# D.14974
	jne	.L278	#,
	.loc 1 1545 0 is_stmt 0 discriminator 1
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.170
	movl	-144(%rbp), %edx	# q, tmp628
	movslq	%edx, %rdx	# tmp628, D.14964
	addq	%rdx, %rdx	# D.14964
	addq	%rdx, %rax	# D.14964, D.14973
	movzwl	(%rax), %eax	# *_297, D.14974
	testw	%ax, %ax	# D.14974
	je	.L279	#,
.L278:
	.loc 1 1546 0 is_stmt 1
	movq	qty(%rip), %rcx	# qty, qty.171
	movl	-144(%rbp), %eax	# q, tmp629
	movslq	%eax, %rdx	# tmp629, D.14964
	movq	%rdx, %rax	# D.14964, tmp630
	salq	$2, %rax	#, tmp630
	addq	%rdx, %rax	# D.14964, tmp630
	addq	%rax, %rax	# tmp630
	addq	%rdx, %rax	# D.14964, tmp630
	salq	$2, %rax	#, tmp631
	leaq	(%rcx,%rax), %rbx	#, D.14975
	.loc 1 1547 0
	movq	qty(%rip), %rcx	# qty, qty.172
	movl	-144(%rbp), %eax	# q, tmp632
	movslq	%eax, %rdx	# tmp632, D.14964
	movq	%rdx, %rax	# D.14964, tmp633
	salq	$2, %rax	#, tmp633
	addq	%rdx, %rax	# D.14964, tmp633
	addq	%rax, %rax	# tmp633
	addq	%rdx, %rax	# D.14964, tmp633
	salq	$2, %rax	#, tmp634
	addq	%rcx, %rax	# qty.172, D.14975
	.loc 1 1546 0
	movl	12(%rax), %ecx	# _310->death, D.14963
	.loc 1 1547 0
	movq	qty(%rip), %rsi	# qty, qty.173
	movl	-144(%rbp), %eax	# q, tmp635
	movslq	%eax, %rdx	# tmp635, D.14964
	movq	%rdx, %rax	# D.14964, tmp636
	salq	$2, %rax	#, tmp636
	addq	%rdx, %rax	# D.14964, tmp636
	addq	%rax, %rax	# tmp636
	addq	%rdx, %rax	# D.14964, tmp636
	salq	$2, %rax	#, tmp637
	addq	%rsi, %rax	# qty.173, D.14975
	.loc 1 1546 0
	movl	8(%rax), %edi	# _315->birth, D.14963
	movq	qty(%rip), %rsi	# qty, qty.174
	movl	-144(%rbp), %eax	# q, tmp638
	movslq	%eax, %rdx	# tmp638, D.14964
	movq	%rdx, %rax	# D.14964, tmp639
	salq	$2, %rax	#, tmp639
	addq	%rdx, %rax	# D.14964, tmp639
	addq	%rax, %rax	# tmp639
	addq	%rdx, %rax	# D.14964, tmp639
	salq	$2, %rax	#, tmp640
	addq	%rsi, %rax	# qty.174, D.14975
	movl	36(%rax), %esi	# _320->mode, D.14976
	movq	qty(%rip), %r8	# qty, qty.175
	movl	-144(%rbp), %eax	# q, tmp641
	movslq	%eax, %rdx	# tmp641, D.14964
	movq	%rdx, %rax	# D.14964, tmp642
	salq	$2, %rax	#, tmp642
	addq	%rdx, %rax	# D.14964, tmp642
	addq	%rax, %rax	# tmp642
	addq	%rdx, %rax	# D.14964, tmp642
	salq	$2, %rax	#, tmp643
	addq	%r8, %rax	# qty.175, D.14975
	movl	28(%rax), %eax	# _325->min_class, D.14977
	movl	-144(%rbp), %edx	# q, tmp644
	movl	%ecx, (%rsp)	# D.14963,
	movl	%edi, %r9d	# D.14963,
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.14977,
	call	find_free_reg	#
	movw	%ax, 40(%rbx)	# D.14974, _306->phys_reg
	jmp	.L280	#
.L279:
	.loc 1 1549 0
	movq	qty(%rip), %rcx	# qty, qty.176
	movl	-144(%rbp), %eax	# q, tmp645
	movslq	%eax, %rdx	# tmp645, D.14964
	movq	%rdx, %rax	# D.14964, tmp646
	salq	$2, %rax	#, tmp646
	addq	%rdx, %rax	# D.14964, tmp646
	addq	%rax, %rax	# tmp646
	addq	%rdx, %rax	# D.14964, tmp646
	salq	$2, %rax	#, tmp647
	addq	%rcx, %rax	# qty.176, D.14975
	movw	$-1, 40(%rax)	#, _302->phys_reg
.L280:
	.loc 1 1542 0
	addl	$1, -148(%rbp)	#, i
.L277:
	.loc 1 1542 0 is_stmt 0 discriminator 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.177
	cmpl	%eax, -148(%rbp)	# next_qty.177, i
	jl	.L281	#,
	.loc 1 1556 0 is_stmt 1
	movl	$0, -148(%rbp)	#, i
	jmp	.L282	#
.L283:
	.loc 1 1557 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp648
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14964
	movq	-24(%rbp), %rax	# qty_order, tmp649
	addq	%rax, %rdx	# tmp649, D.14972
	movl	-148(%rbp), %eax	# i, tmp650
	movl	%eax, (%rdx)	# tmp650, *_334
	.loc 1 1556 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L282:
	.loc 1 1556 0 is_stmt 0 discriminator 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.178
	cmpl	%eax, -148(%rbp)	# next_qty.178, i
	jl	.L283	#,
	.loc 1 1562 0 is_stmt 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.179
	cmpl	$2, %eax	#, next_qty.179
	je	.L285	#,
	cmpl	$2, %eax	#, next_qty.179
	jg	.L286	#,
	testl	%eax, %eax	# next_qty.179
	js	.L284	#,
	.loc 1 1582 0
	jmp	.L290	#
.L286:
	.loc 1 1562 0
	cmpl	$3, %eax	#, next_qty.179
	jne	.L284	#,
	.loc 1 1566 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	qty_compare	#
	testl	%eax, %eax	# D.14963
	jle	.L289	#,
	.loc 1 1567 0
	movq	-24(%rbp), %rax	# qty_order, tmp651
	movl	(%rax), %eax	# *qty_order_261, tmp652
	movl	%eax, -148(%rbp)	# tmp652, i
	movq	-24(%rbp), %rax	# qty_order, tmp653
	movl	4(%rax), %edx	# MEM[(int *)qty_order_261 + 4B], D.14963
	movq	-24(%rbp), %rax	# qty_order, tmp654
	movl	%edx, (%rax)	# D.14963, *qty_order_261
	movq	-24(%rbp), %rax	# qty_order, tmp655
	leaq	4(%rax), %rdx	#, D.14972
	movl	-148(%rbp), %eax	# i, tmp656
	movl	%eax, (%rdx)	# tmp656, *_340
.L289:
	.loc 1 1568 0
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	qty_compare	#
	testl	%eax, %eax	# D.14963
	jle	.L285	#,
	.loc 1 1569 0
	movq	-24(%rbp), %rax	# qty_order, tmp657
	movl	8(%rax), %eax	# MEM[(int *)qty_order_261 + 8B], tmp658
	movl	%eax, -148(%rbp)	# tmp658, i
	movq	-24(%rbp), %rax	# qty_order, tmp659
	leaq	8(%rax), %rdx	#, D.14972
	movq	-24(%rbp), %rax	# qty_order, tmp660
	movl	4(%rax), %eax	# MEM[(int *)qty_order_261 + 4B], D.14963
	movl	%eax, (%rdx)	# D.14963, *_343
	movq	-24(%rbp), %rax	# qty_order, tmp661
	leaq	4(%rax), %rdx	#, D.14972
	movl	-148(%rbp), %eax	# i, tmp662
	movl	%eax, (%rdx)	# tmp662, *_345
.L285:
	.loc 1 1574 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	qty_compare	#
	testl	%eax, %eax	# D.14963
	jle	.L287	#,
	.loc 1 1575 0
	movq	-24(%rbp), %rax	# qty_order, tmp663
	movl	(%rax), %eax	# *qty_order_261, tmp664
	movl	%eax, -148(%rbp)	# tmp664, i
	movq	-24(%rbp), %rax	# qty_order, tmp665
	movl	4(%rax), %edx	# MEM[(int *)qty_order_261 + 4B], D.14963
	movq	-24(%rbp), %rax	# qty_order, tmp666
	movl	%edx, (%rax)	# D.14963, *qty_order_261
	movq	-24(%rbp), %rax	# qty_order, tmp667
	leaq	4(%rax), %rdx	#, D.14972
	movl	-148(%rbp), %eax	# i, tmp668
	movl	%eax, (%rdx)	# tmp668, *_349
	.loc 1 1582 0
	jmp	.L290	#
.L287:
	jmp	.L290	#
.L284:
	.loc 1 1585 0
	movl	next_qty(%rip), %esi	# next_qty, next_qty.180
	movq	-24(%rbp), %rax	# qty_order, tmp669
	movl	$qty_compare_1, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp669,
	call	specqsort	#
.L290:
	.loc 1 1594 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L291	#
.L294:
	.loc 1 1596 0
	movl	-148(%rbp), %eax	# i, tmp670
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14964
	movq	-24(%rbp), %rax	# qty_order, tmp671
	addq	%rdx, %rax	# D.14964, D.14972
	movl	(%rax), %eax	# *_355, tmp672
	movl	%eax, -144(%rbp)	# tmp672, q
	.loc 1 1597 0
	movq	qty(%rip), %rcx	# qty, qty.181
	movl	-144(%rbp), %eax	# q, tmp673
	movslq	%eax, %rdx	# tmp673, D.14964
	movq	%rdx, %rax	# D.14964, tmp674
	salq	$2, %rax	#, tmp674
	addq	%rdx, %rax	# D.14964, tmp674
	addq	%rax, %rax	# tmp674
	addq	%rdx, %rax	# D.14964, tmp674
	salq	$2, %rax	#, tmp675
	addq	%rcx, %rax	# qty.181, D.14975
	movzwl	40(%rax), %eax	# _360->phys_reg, D.14974
	testw	%ax, %ax	# D.14974
	jns	.L292	#,
.LBB23:
	.loc 1 1617 0
	movq	qty(%rip), %rcx	# qty, qty.182
	movl	-144(%rbp), %eax	# q, tmp676
	movslq	%eax, %rdx	# tmp676, D.14964
	movq	%rdx, %rax	# D.14964, tmp677
	salq	$2, %rax	#, tmp677
	addq	%rdx, %rax	# D.14964, tmp677
	addq	%rax, %rax	# tmp677
	addq	%rdx, %rax	# D.14964, tmp677
	salq	$2, %rax	#, tmp678
	addq	%rcx, %rax	# qty.182, D.14975
	movl	8(%rax), %eax	# _365->birth, D.14963
	leal	-2(%rax), %esi	#, D.14963
	movq	qty(%rip), %rcx	# qty, qty.183
	movl	-144(%rbp), %eax	# q, tmp679
	movslq	%eax, %rdx	# tmp679, D.14964
	movq	%rdx, %rax	# D.14964, tmp680
	salq	$2, %rax	#, tmp680
	addq	%rdx, %rax	# D.14964, tmp680
	addq	%rax, %rax	# tmp680
	addq	%rdx, %rax	# D.14964, tmp680
	salq	$2, %rax	#, tmp681
	addq	%rcx, %rax	# qty.183, D.14975
	movl	8(%rax), %eax	# _371->birth, D.14963
	cltd
	shrl	$31, %edx	#, tmp683
	addl	%edx, %eax	# tmp683, tmp684
	andl	$1, %eax	#, tmp685
	subl	%edx, %eax	# tmp683, tmp686
	addl	%esi, %eax	# D.14963, D.14963
	movl	$0, %edx	#, tmp688
	testl	%eax, %eax	# D.14963
	cmovs	%edx, %eax	# D.14963,, tmp688, tmp687
	movl	%eax, -96(%rbp)	# tmp687, fake_birth
	.loc 1 1618 0
	movq	qty(%rip), %rcx	# qty, qty.184
	movl	-144(%rbp), %eax	# q, tmp689
	movslq	%eax, %rdx	# tmp689, D.14964
	movq	%rdx, %rax	# D.14964, tmp690
	salq	$2, %rax	#, tmp690
	addq	%rdx, %rax	# D.14964, tmp690
	addq	%rax, %rax	# tmp690
	addq	%rdx, %rax	# D.14964, tmp690
	salq	$2, %rax	#, tmp691
	addq	%rcx, %rax	# qty.184, D.14975
	movl	12(%rax), %eax	# _379->death, D.14963
	leal	2(%rax), %esi	#, D.14963
	movq	qty(%rip), %rcx	# qty, qty.185
	movl	-144(%rbp), %eax	# q, tmp692
	movslq	%eax, %rdx	# tmp692, D.14964
	movq	%rdx, %rax	# D.14964, tmp693
	salq	$2, %rax	#, tmp693
	addq	%rdx, %rax	# D.14964, tmp693
	addq	%rax, %rax	# tmp693
	addq	%rdx, %rax	# D.14964, tmp693
	salq	$2, %rax	#, tmp694
	addq	%rcx, %rax	# qty.185, D.14975
	movl	12(%rax), %eax	# _385->death, D.14963
	cltd
	shrl	$31, %edx	#, tmp696
	addl	%edx, %eax	# tmp696, tmp697
	andl	$1, %eax	#, tmp698
	subl	%edx, %eax	# tmp696, tmp699
	subl	%eax, %esi	# D.14963, D.14963
	movl	%esi, %edx	# D.14963, D.14963
	movl	-140(%rbp), %eax	# insn_number, tmp700
	addl	%eax, %eax	# D.14963
	addl	$1, %eax	#, D.14963
	cmpl	%eax, %edx	# D.14963, D.14963
	cmovle	%edx, %eax	# D.14963,, tmp701
	movl	%eax, -92(%rbp)	# tmp701, fake_death
	.loc 1 1643 0
	movq	qty(%rip), %rcx	# qty, qty.190
	movl	-144(%rbp), %eax	# q, tmp702
	movslq	%eax, %rdx	# tmp702, D.14964
	movq	%rdx, %rax	# D.14964, tmp703
	salq	$2, %rax	#, tmp703
	addq	%rdx, %rax	# D.14964, tmp703
	addq	%rax, %rax	# tmp703
	addq	%rdx, %rax	# D.14964, tmp703
	salq	$2, %rax	#, tmp704
	leaq	(%rcx,%rax), %rbx	#, D.14975
	.loc 1 1645 0
	movq	qty(%rip), %rcx	# qty, qty.191
	movl	-144(%rbp), %eax	# q, tmp705
	movslq	%eax, %rdx	# tmp705, D.14964
	movq	%rdx, %rax	# D.14964, tmp706
	salq	$2, %rax	#, tmp706
	addq	%rdx, %rax	# D.14964, tmp706
	addq	%rax, %rax	# tmp706
	addq	%rdx, %rax	# D.14964, tmp706
	salq	$2, %rax	#, tmp707
	addq	%rcx, %rax	# qty.191, D.14975
	.loc 1 1643 0
	movl	12(%rax), %ecx	# _399->death, D.14963
	.loc 1 1645 0
	movq	qty(%rip), %rsi	# qty, qty.192
	movl	-144(%rbp), %eax	# q, tmp708
	movslq	%eax, %rdx	# tmp708, D.14964
	movq	%rdx, %rax	# D.14964, tmp709
	salq	$2, %rax	#, tmp709
	addq	%rdx, %rax	# D.14964, tmp709
	addq	%rax, %rax	# tmp709
	addq	%rdx, %rax	# D.14964, tmp709
	salq	$2, %rax	#, tmp710
	addq	%rsi, %rax	# qty.192, D.14975
	.loc 1 1643 0
	movl	8(%rax), %edi	# _404->birth, D.14963
	.loc 1 1644 0
	movq	qty(%rip), %rsi	# qty, qty.193
	movl	-144(%rbp), %eax	# q, tmp711
	movslq	%eax, %rdx	# tmp711, D.14964
	movq	%rdx, %rax	# D.14964, tmp712
	salq	$2, %rax	#, tmp712
	addq	%rdx, %rax	# D.14964, tmp712
	addq	%rax, %rax	# tmp712
	addq	%rdx, %rax	# D.14964, tmp712
	salq	$2, %rax	#, tmp713
	addq	%rsi, %rax	# qty.193, D.14975
	.loc 1 1643 0
	movl	36(%rax), %esi	# _409->mode, D.14976
	movq	qty(%rip), %r8	# qty, qty.194
	movl	-144(%rbp), %eax	# q, tmp714
	movslq	%eax, %rdx	# tmp714, D.14964
	movq	%rdx, %rax	# D.14964, tmp715
	salq	$2, %rax	#, tmp715
	addq	%rdx, %rax	# D.14964, tmp715
	addq	%rax, %rax	# tmp715
	addq	%rdx, %rax	# D.14964, tmp715
	salq	$2, %rax	#, tmp716
	addq	%r8, %rax	# qty.194, D.14975
	movl	28(%rax), %eax	# _414->min_class, D.14977
	movl	-144(%rbp), %edx	# q, tmp717
	movl	%ecx, (%rsp)	# D.14963,
	movl	%edi, %r9d	# D.14963,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.14977,
	call	find_free_reg	#
	movw	%ax, 40(%rbx)	# D.14974, _395->phys_reg
	.loc 1 1646 0
	movq	qty(%rip), %rcx	# qty, qty.195
	movl	-144(%rbp), %eax	# q, tmp718
	movslq	%eax, %rdx	# tmp718, D.14964
	movq	%rdx, %rax	# D.14964, tmp719
	salq	$2, %rax	#, tmp719
	addq	%rdx, %rax	# D.14964, tmp719
	addq	%rax, %rax	# tmp719
	addq	%rdx, %rax	# D.14964, tmp719
	salq	$2, %rax	#, tmp720
	addq	%rcx, %rax	# qty.195, D.14975
	movzwl	40(%rax), %eax	# _421->phys_reg, D.14974
	testw	%ax, %ax	# D.14974
	js	.L293	#,
	.loc 1 1647 0
	jmp	.L292	#
.L293:
	.loc 1 1660 0
	movq	qty(%rip), %rcx	# qty, qty.199
	movl	-144(%rbp), %eax	# q, tmp721
	movslq	%eax, %rdx	# tmp721, D.14964
	movq	%rdx, %rax	# D.14964, tmp722
	salq	$2, %rax	#, tmp722
	addq	%rdx, %rax	# D.14964, tmp722
	addq	%rax, %rax	# tmp722
	addq	%rdx, %rax	# D.14964, tmp722
	salq	$2, %rax	#, tmp723
	addq	%rcx, %rax	# qty.199, D.14975
	movl	32(%rax), %eax	# _426->alternate_class, D.14977
	testl	%eax, %eax	# D.14977
	je	.L292	#,
	.loc 1 1661 0
	movq	qty(%rip), %rcx	# qty, qty.200
	movl	-144(%rbp), %eax	# q, tmp724
	movslq	%eax, %rdx	# tmp724, D.14964
	movq	%rdx, %rax	# D.14964, tmp725
	salq	$2, %rax	#, tmp725
	addq	%rdx, %rax	# D.14964, tmp725
	addq	%rax, %rax	# tmp725
	addq	%rdx, %rax	# D.14964, tmp725
	salq	$2, %rax	#, tmp726
	leaq	(%rcx,%rax), %rbx	#, D.14975
	.loc 1 1663 0
	movq	qty(%rip), %rcx	# qty, qty.201
	movl	-144(%rbp), %eax	# q, tmp727
	movslq	%eax, %rdx	# tmp727, D.14964
	movq	%rdx, %rax	# D.14964, tmp728
	salq	$2, %rax	#, tmp728
	addq	%rdx, %rax	# D.14964, tmp728
	addq	%rax, %rax	# tmp728
	addq	%rdx, %rax	# D.14964, tmp728
	salq	$2, %rax	#, tmp729
	addq	%rcx, %rax	# qty.201, D.14975
	.loc 1 1661 0
	movl	12(%rax), %ecx	# _435->death, D.14963
	.loc 1 1663 0
	movq	qty(%rip), %rsi	# qty, qty.202
	movl	-144(%rbp), %eax	# q, tmp730
	movslq	%eax, %rdx	# tmp730, D.14964
	movq	%rdx, %rax	# D.14964, tmp731
	salq	$2, %rax	#, tmp731
	addq	%rdx, %rax	# D.14964, tmp731
	addq	%rax, %rax	# tmp731
	addq	%rdx, %rax	# D.14964, tmp731
	salq	$2, %rax	#, tmp732
	addq	%rsi, %rax	# qty.202, D.14975
	.loc 1 1661 0
	movl	8(%rax), %edi	# _440->birth, D.14963
	.loc 1 1662 0
	movq	qty(%rip), %rsi	# qty, qty.203
	movl	-144(%rbp), %eax	# q, tmp733
	movslq	%eax, %rdx	# tmp733, D.14964
	movq	%rdx, %rax	# D.14964, tmp734
	salq	$2, %rax	#, tmp734
	addq	%rdx, %rax	# D.14964, tmp734
	addq	%rax, %rax	# tmp734
	addq	%rdx, %rax	# D.14964, tmp734
	salq	$2, %rax	#, tmp735
	addq	%rsi, %rax	# qty.203, D.14975
	.loc 1 1661 0
	movl	36(%rax), %esi	# _445->mode, D.14976
	movq	qty(%rip), %r8	# qty, qty.204
	movl	-144(%rbp), %eax	# q, tmp736
	movslq	%eax, %rdx	# tmp736, D.14964
	movq	%rdx, %rax	# D.14964, tmp737
	salq	$2, %rax	#, tmp737
	addq	%rdx, %rax	# D.14964, tmp737
	addq	%rax, %rax	# tmp737
	addq	%rdx, %rax	# D.14964, tmp737
	salq	$2, %rax	#, tmp738
	addq	%r8, %rax	# qty.204, D.14975
	movl	32(%rax), %eax	# _450->alternate_class, D.14977
	movl	-144(%rbp), %edx	# q, tmp739
	movl	%ecx, (%rsp)	# D.14963,
	movl	%edi, %r9d	# D.14963,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.14977,
	call	find_free_reg	#
	movw	%ax, 40(%rbx)	# D.14974, _431->phys_reg
.L292:
.LBE23:
	.loc 1 1594 0
	addl	$1, -148(%rbp)	#, i
.L291:
	.loc 1 1594 0 is_stmt 0 discriminator 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.205
	cmpl	%eax, -148(%rbp)	# next_qty.205, i
	jl	.L294	#,
	.loc 1 1670 0 is_stmt 1
	movl	$0, -144(%rbp)	#, q
	jmp	.L295	#
.L299:
	.loc 1 1671 0
	movq	qty(%rip), %rcx	# qty, qty.206
	movl	-144(%rbp), %eax	# q, tmp740
	movslq	%eax, %rdx	# tmp740, D.14964
	movq	%rdx, %rax	# D.14964, tmp741
	salq	$2, %rax	#, tmp741
	addq	%rdx, %rax	# D.14964, tmp741
	addq	%rax, %rax	# tmp741
	addq	%rdx, %rax	# D.14964, tmp741
	salq	$2, %rax	#, tmp742
	addq	%rcx, %rax	# qty.206, D.14975
	movzwl	40(%rax), %eax	# _460->phys_reg, D.14974
	testw	%ax, %ax	# D.14974
	js	.L296	#,
	.loc 1 1673 0
	movq	qty(%rip), %rcx	# qty, qty.207
	movl	-144(%rbp), %eax	# q, tmp743
	movslq	%eax, %rdx	# tmp743, D.14964
	movq	%rdx, %rax	# D.14964, tmp744
	salq	$2, %rax	#, tmp744
	addq	%rdx, %rax	# D.14964, tmp744
	addq	%rax, %rax	# tmp744
	addq	%rdx, %rax	# D.14964, tmp744
	salq	$2, %rax	#, tmp745
	addq	%rcx, %rax	# qty.207, D.14975
	movl	24(%rax), %eax	# _465->first_reg, tmp746
	movl	%eax, -148(%rbp)	# tmp746, i
	jmp	.L297	#
.L298:
	.loc 1 1674 0 discriminator 2
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.208
	movl	-148(%rbp), %edx	# i, tmp747
	movslq	%edx, %rdx	# tmp747, D.14964
	addq	%rdx, %rdx	# D.14964
	leaq	(%rax,%rdx), %rcx	#, D.14973
	movq	qty(%rip), %rsi	# qty, qty.209
	movl	-144(%rbp), %eax	# q, tmp748
	movslq	%eax, %rdx	# tmp748, D.14964
	movq	%rdx, %rax	# D.14964, tmp749
	salq	$2, %rax	#, tmp749
	addq	%rdx, %rax	# D.14964, tmp749
	addq	%rax, %rax	# tmp749
	addq	%rdx, %rax	# D.14964, tmp749
	salq	$2, %rax	#, tmp750
	addq	%rsi, %rax	# qty.209, D.14975
	movzwl	40(%rax), %eax	# _474->phys_reg, D.14974
	movl	%eax, %edx	# D.14974, D.14978
	movq	reg_offset(%rip), %rsi	# reg_offset, reg_offset.210
	movl	-148(%rbp), %eax	# i, tmp751
	cltq
	addq	%rsi, %rax	# reg_offset.210, D.14979
	movzbl	(%rax), %eax	# *_479, D.14966
	cbtw
	addl	%edx, %eax	# D.14978, D.14978
	movw	%ax, (%rcx)	# D.14974, *_470
	.loc 1 1673 0 discriminator 2
	movq	reg_next_in_qty(%rip), %rax	# reg_next_in_qty, reg_next_in_qty.211
	movl	-148(%rbp), %edx	# i, tmp752
	movslq	%edx, %rdx	# tmp752, D.14964
	salq	$2, %rdx	#, D.14964
	addq	%rdx, %rax	# D.14964, D.14972
	movl	(%rax), %eax	# *_487, tmp753
	movl	%eax, -148(%rbp)	# tmp753, i
.L297:
	.loc 1 1673 0 is_stmt 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, i
	jns	.L298	#,
.L296:
	.loc 1 1670 0 is_stmt 1
	addl	$1, -144(%rbp)	#, q
.L295:
	.loc 1 1670 0 is_stmt 0 discriminator 1
	movl	next_qty(%rip), %eax	# next_qty, next_qty.212
	cmpl	%eax, -144(%rbp)	# next_qty.212, q
	jl	.L299	#,
	.loc 1 1678 0 is_stmt 1
	movq	regs_live_at(%rip), %rax	# regs_live_at, regs_live_at.213
	movq	%rax, %rdi	# regs_live_at.213,
	call	free	#
	.loc 1 1679 0
	movq	-24(%rbp), %rax	# qty_order, tmp754
	movq	%rax, %rdi	# tmp754,
	call	free	#
	.loc 1 1680 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	block_alloc, .-block_alloc
	.type	qty_compare, @function
qty_compare:
.LFB15:
	.loc 1 1712 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# q1, q1
	movl	%esi, -24(%rbp)	# q2, q2
	.loc 1 1713 0
	movq	qty(%rip), %rcx	# qty, qty.214
	movl	-24(%rbp), %eax	# q2, tmp125
	movslq	%eax, %rdx	# tmp125, D.14982
	movq	%rdx, %rax	# D.14982, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# D.14982, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rdx, %rax	# D.14982, tmp126
	salq	$2, %rax	#, tmp127
	addq	%rcx, %rax	# qty.214, D.14983
	movl	(%rax), %eax	# _5->n_refs, D.14984
	cltq
	movq	%rax, %rdi	# D.14982,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14984
	movq	qty(%rip), %rsi	# qty, qty.215
	movl	-24(%rbp), %eax	# q2, tmp128
	movslq	%eax, %rdx	# tmp128, D.14982
	movq	%rdx, %rax	# D.14982, tmp129
	salq	$2, %rax	#, tmp129
	addq	%rdx, %rax	# D.14982, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.14982, tmp129
	salq	$2, %rax	#, tmp130
	addq	%rsi, %rax	# qty.215, D.14983
	movl	4(%rax), %eax	# _12->freq, D.14984
	imull	%eax, %ecx	# D.14984, D.14984
	movq	qty(%rip), %rsi	# qty, qty.216
	movl	-24(%rbp), %eax	# q2, tmp131
	movslq	%eax, %rdx	# tmp131, D.14982
	movq	%rdx, %rax	# D.14982, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.14982, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# D.14982, tmp132
	salq	$2, %rax	#, tmp133
	addq	%rsi, %rax	# qty.216, D.14983
	movl	16(%rax), %eax	# _18->size, D.14984
	imull	%eax, %ecx	# D.14984, D.14984
	movl	%ecx, %edx	# D.14984, D.14984
	movl	%edx, %eax	# D.14984, tmp134
	sall	$2, %eax	#, tmp134
	addl	%edx, %eax	# D.14984, tmp134
	addl	%eax, %eax	# tmp135
	movl	%eax, %ecx	# tmp134, D.14984
	movq	qty(%rip), %rsi	# qty, qty.217
	movl	-24(%rbp), %eax	# q2, tmp136
	movslq	%eax, %rdx	# tmp136, D.14982
	movq	%rdx, %rax	# D.14982, tmp137
	salq	$2, %rax	#, tmp137
	addq	%rdx, %rax	# D.14982, tmp137
	addq	%rax, %rax	# tmp137
	addq	%rdx, %rax	# D.14982, tmp137
	salq	$2, %rax	#, tmp138
	addq	%rsi, %rax	# qty.217, D.14983
	movl	12(%rax), %esi	# _25->death, D.14984
	movq	qty(%rip), %rdi	# qty, qty.218
	movl	-24(%rbp), %eax	# q2, tmp139
	movslq	%eax, %rdx	# tmp139, D.14982
	movq	%rdx, %rax	# D.14982, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.14982, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# D.14982, tmp140
	salq	$2, %rax	#, tmp141
	addq	%rdi, %rax	# qty.218, D.14983
	movl	8(%rax), %eax	# _30->birth, D.14984
	subl	%eax, %esi	# D.14984, D.14984
	movl	%esi, %ebx	# D.14984, D.14984
	movl	%ecx, %eax	# D.14984, tmp142
	cltd
	idivl	%ebx	# D.14984
	movl	%eax, %ebx	# tmp142, D.14984
	movq	qty(%rip), %rcx	# qty, qty.219
	movl	-20(%rbp), %eax	# q1, tmp144
	movslq	%eax, %rdx	# tmp144, D.14982
	movq	%rdx, %rax	# D.14982, tmp145
	salq	$2, %rax	#, tmp145
	addq	%rdx, %rax	# D.14982, tmp145
	addq	%rax, %rax	# tmp145
	addq	%rdx, %rax	# D.14982, tmp145
	salq	$2, %rax	#, tmp146
	addq	%rcx, %rax	# qty.219, D.14983
	movl	(%rax), %eax	# _38->n_refs, D.14984
	cltq
	movq	%rax, %rdi	# D.14982,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14984
	movq	qty(%rip), %rsi	# qty, qty.220
	movl	-20(%rbp), %eax	# q1, tmp147
	movslq	%eax, %rdx	# tmp147, D.14982
	movq	%rdx, %rax	# D.14982, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.14982, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# D.14982, tmp148
	salq	$2, %rax	#, tmp149
	addq	%rsi, %rax	# qty.220, D.14983
	movl	4(%rax), %eax	# _45->freq, D.14984
	imull	%eax, %ecx	# D.14984, D.14984
	movq	qty(%rip), %rsi	# qty, qty.221
	movl	-20(%rbp), %eax	# q1, tmp150
	movslq	%eax, %rdx	# tmp150, D.14982
	movq	%rdx, %rax	# D.14982, tmp151
	salq	$2, %rax	#, tmp151
	addq	%rdx, %rax	# D.14982, tmp151
	addq	%rax, %rax	# tmp151
	addq	%rdx, %rax	# D.14982, tmp151
	salq	$2, %rax	#, tmp152
	addq	%rsi, %rax	# qty.221, D.14983
	movl	16(%rax), %eax	# _51->size, D.14984
	imull	%eax, %ecx	# D.14984, D.14984
	movl	%ecx, %edx	# D.14984, D.14984
	movl	%edx, %eax	# D.14984, tmp153
	sall	$2, %eax	#, tmp153
	addl	%edx, %eax	# D.14984, tmp153
	addl	%eax, %eax	# tmp154
	movl	%eax, %ecx	# tmp153, D.14984
	movq	qty(%rip), %rsi	# qty, qty.222
	movl	-20(%rbp), %eax	# q1, tmp155
	movslq	%eax, %rdx	# tmp155, D.14982
	movq	%rdx, %rax	# D.14982, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.14982, tmp156
	addq	%rax, %rax	# tmp156
	addq	%rdx, %rax	# D.14982, tmp156
	salq	$2, %rax	#, tmp157
	addq	%rsi, %rax	# qty.222, D.14983
	movl	12(%rax), %esi	# _58->death, D.14984
	movq	qty(%rip), %rdi	# qty, qty.223
	movl	-20(%rbp), %eax	# q1, tmp158
	movslq	%eax, %rdx	# tmp158, D.14982
	movq	%rdx, %rax	# D.14982, tmp159
	salq	$2, %rax	#, tmp159
	addq	%rdx, %rax	# D.14982, tmp159
	addq	%rax, %rax	# tmp159
	addq	%rdx, %rax	# D.14982, tmp159
	salq	$2, %rax	#, tmp160
	addq	%rdi, %rax	# qty.223, D.14983
	movl	8(%rax), %eax	# _63->birth, D.14984
	subl	%eax, %esi	# D.14984, D.14984
	movl	%esi, %edi	# D.14984, D.14984
	movl	%ecx, %eax	# D.14984, tmp161
	cltd
	idivl	%edi	# D.14984
	subl	%eax, %ebx	# D.14984, D.14984
	movl	%ebx, %eax	# D.14984, D.14984
	.loc 1 1714 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	qty_compare, .-qty_compare
	.type	qty_compare_1, @function
qty_compare_1:
.LFB16:
	.loc 1 1720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# q1p, q1p
	movq	%rsi, -48(%rbp)	# q2p, q2p
	.loc 1 1721 0
	movq	-40(%rbp), %rax	# q1p, tmp125
	movl	(%rax), %eax	# MEM[(const int *)q1p_2(D)], tmp126
	movl	%eax, -28(%rbp)	# tmp126, q1
	movq	-48(%rbp), %rax	# q2p, tmp127
	movl	(%rax), %eax	# MEM[(const int *)q2p_4(D)], tmp128
	movl	%eax, -24(%rbp)	# tmp128, q2
	.loc 1 1722 0
	movq	qty(%rip), %rcx	# qty, qty.224
	movl	-24(%rbp), %eax	# q2, tmp129
	movslq	%eax, %rdx	# tmp129, D.14986
	movq	%rdx, %rax	# D.14986, tmp130
	salq	$2, %rax	#, tmp130
	addq	%rdx, %rax	# D.14986, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# D.14986, tmp130
	salq	$2, %rax	#, tmp131
	addq	%rcx, %rax	# qty.224, D.14987
	movl	(%rax), %eax	# _9->n_refs, D.14985
	cltq
	movq	%rax, %rdi	# D.14986,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14985
	movq	qty(%rip), %rsi	# qty, qty.225
	movl	-24(%rbp), %eax	# q2, tmp132
	movslq	%eax, %rdx	# tmp132, D.14986
	movq	%rdx, %rax	# D.14986, tmp133
	salq	$2, %rax	#, tmp133
	addq	%rdx, %rax	# D.14986, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# D.14986, tmp133
	salq	$2, %rax	#, tmp134
	addq	%rsi, %rax	# qty.225, D.14987
	movl	4(%rax), %eax	# _16->freq, D.14985
	imull	%eax, %ecx	# D.14985, D.14985
	movq	qty(%rip), %rsi	# qty, qty.226
	movl	-24(%rbp), %eax	# q2, tmp135
	movslq	%eax, %rdx	# tmp135, D.14986
	movq	%rdx, %rax	# D.14986, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.14986, tmp136
	addq	%rax, %rax	# tmp136
	addq	%rdx, %rax	# D.14986, tmp136
	salq	$2, %rax	#, tmp137
	addq	%rsi, %rax	# qty.226, D.14987
	movl	16(%rax), %eax	# _22->size, D.14985
	imull	%eax, %ecx	# D.14985, D.14985
	movl	%ecx, %edx	# D.14985, D.14985
	movl	%edx, %eax	# D.14985, tmp138
	sall	$2, %eax	#, tmp138
	addl	%edx, %eax	# D.14985, tmp138
	addl	%eax, %eax	# tmp139
	movl	%eax, %ecx	# tmp138, D.14985
	movq	qty(%rip), %rsi	# qty, qty.227
	movl	-24(%rbp), %eax	# q2, tmp140
	movslq	%eax, %rdx	# tmp140, D.14986
	movq	%rdx, %rax	# D.14986, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# D.14986, tmp141
	addq	%rax, %rax	# tmp141
	addq	%rdx, %rax	# D.14986, tmp141
	salq	$2, %rax	#, tmp142
	addq	%rsi, %rax	# qty.227, D.14987
	movl	12(%rax), %esi	# _29->death, D.14985
	movq	qty(%rip), %rdi	# qty, qty.228
	movl	-24(%rbp), %eax	# q2, tmp143
	movslq	%eax, %rdx	# tmp143, D.14986
	movq	%rdx, %rax	# D.14986, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.14986, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# D.14986, tmp144
	salq	$2, %rax	#, tmp145
	addq	%rdi, %rax	# qty.228, D.14987
	movl	8(%rax), %eax	# _34->birth, D.14985
	subl	%eax, %esi	# D.14985, D.14985
	movl	%esi, %ebx	# D.14985, D.14985
	movl	%ecx, %eax	# D.14985, tmp146
	cltd
	idivl	%ebx	# D.14985
	movl	%eax, %ebx	# tmp146, D.14985
	movq	qty(%rip), %rcx	# qty, qty.229
	movl	-28(%rbp), %eax	# q1, tmp148
	movslq	%eax, %rdx	# tmp148, D.14986
	movq	%rdx, %rax	# D.14986, tmp149
	salq	$2, %rax	#, tmp149
	addq	%rdx, %rax	# D.14986, tmp149
	addq	%rax, %rax	# tmp149
	addq	%rdx, %rax	# D.14986, tmp149
	salq	$2, %rax	#, tmp150
	addq	%rcx, %rax	# qty.229, D.14987
	movl	(%rax), %eax	# _41->n_refs, D.14985
	cltq
	movq	%rax, %rdi	# D.14986,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14985
	movq	qty(%rip), %rsi	# qty, qty.230
	movl	-28(%rbp), %eax	# q1, tmp151
	movslq	%eax, %rdx	# tmp151, D.14986
	movq	%rdx, %rax	# D.14986, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.14986, tmp152
	addq	%rax, %rax	# tmp152
	addq	%rdx, %rax	# D.14986, tmp152
	salq	$2, %rax	#, tmp153
	addq	%rsi, %rax	# qty.230, D.14987
	movl	4(%rax), %eax	# _48->freq, D.14985
	imull	%eax, %ecx	# D.14985, D.14985
	movq	qty(%rip), %rsi	# qty, qty.231
	movl	-28(%rbp), %eax	# q1, tmp154
	movslq	%eax, %rdx	# tmp154, D.14986
	movq	%rdx, %rax	# D.14986, tmp155
	salq	$2, %rax	#, tmp155
	addq	%rdx, %rax	# D.14986, tmp155
	addq	%rax, %rax	# tmp155
	addq	%rdx, %rax	# D.14986, tmp155
	salq	$2, %rax	#, tmp156
	addq	%rsi, %rax	# qty.231, D.14987
	movl	16(%rax), %eax	# _54->size, D.14985
	imull	%eax, %ecx	# D.14985, D.14985
	movl	%ecx, %edx	# D.14985, D.14985
	movl	%edx, %eax	# D.14985, tmp157
	sall	$2, %eax	#, tmp157
	addl	%edx, %eax	# D.14985, tmp157
	addl	%eax, %eax	# tmp158
	movl	%eax, %ecx	# tmp157, D.14985
	movq	qty(%rip), %rsi	# qty, qty.232
	movl	-28(%rbp), %eax	# q1, tmp159
	movslq	%eax, %rdx	# tmp159, D.14986
	movq	%rdx, %rax	# D.14986, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# D.14986, tmp160
	addq	%rax, %rax	# tmp160
	addq	%rdx, %rax	# D.14986, tmp160
	salq	$2, %rax	#, tmp161
	addq	%rsi, %rax	# qty.232, D.14987
	movl	12(%rax), %esi	# _61->death, D.14985
	movq	qty(%rip), %rdi	# qty, qty.233
	movl	-28(%rbp), %eax	# q1, tmp162
	movslq	%eax, %rdx	# tmp162, D.14986
	movq	%rdx, %rax	# D.14986, tmp163
	salq	$2, %rax	#, tmp163
	addq	%rdx, %rax	# D.14986, tmp163
	addq	%rax, %rax	# tmp163
	addq	%rdx, %rax	# D.14986, tmp163
	salq	$2, %rax	#, tmp164
	addq	%rdi, %rax	# qty.233, D.14987
	movl	8(%rax), %eax	# _66->birth, D.14985
	subl	%eax, %esi	# D.14985, D.14985
	movl	%esi, %edi	# D.14985, D.14985
	movl	%ecx, %eax	# D.14985, tmp165
	cltd
	idivl	%edi	# D.14985
	subl	%eax, %ebx	# D.14985, tmp167
	movl	%ebx, %eax	# tmp167, tmp167
	movl	%eax, -20(%rbp)	# tmp167, tem
	.loc 1 1724 0
	cmpl	$0, -20(%rbp)	#, tem
	je	.L303	#,
	.loc 1 1725 0
	movl	-20(%rbp), %eax	# tem, D.14985
	jmp	.L304	#
.L303:
	.loc 1 1729 0
	movl	-24(%rbp), %eax	# q2, tmp168
	movl	-28(%rbp), %edx	# q1, tmp169
	subl	%eax, %edx	# tmp168, D.14985
	movl	%edx, %eax	# D.14985, D.14985
.L304:
	.loc 1 1730 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	qty_compare_1, .-qty_compare_1
	.type	qty_sugg_compare, @function
qty_sugg_compare:
.LFB17:
	.loc 1 1747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# q1, q1
	movl	%esi, -40(%rbp)	# q2, q2
	.loc 1 1748 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.235
	movl	-36(%rbp), %edx	# q1, tmp159
	movslq	%edx, %rdx	# tmp159, D.14989
	addq	%rdx, %rdx	# D.14989
	addq	%rdx, %rax	# D.14989, D.14990
	movzwl	(%rax), %eax	# *_8, D.14991
	testw	%ax, %ax	# D.14991
	je	.L306	#,
	.loc 1 1748 0 is_stmt 0 discriminator 1
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.236
	movl	-36(%rbp), %edx	# q1, tmp160
	movslq	%edx, %rdx	# tmp160, D.14989
	addq	%rdx, %rdx	# D.14989
	addq	%rdx, %rax	# D.14989, D.14990
	movzwl	(%rax), %eax	# *_13, D.14991
	movswl	%ax, %edx	# D.14991, iftmp.234
	jmp	.L307	#
.L306:
	.loc 1 1748 0 discriminator 2
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.237
	movl	-36(%rbp), %edx	# q1, tmp161
	movslq	%edx, %rdx	# tmp161, D.14989
	addq	%rdx, %rdx	# D.14989
	addq	%rdx, %rax	# D.14989, D.14990
	movzwl	(%rax), %eax	# *_19, D.14991
	cwtl
	imull	$53, %eax, %edx	#, D.14988, iftmp.234
.L307:
	.loc 1 1748 0 discriminator 3
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.239
	movl	-40(%rbp), %ecx	# q2, tmp162
	movslq	%ecx, %rcx	# tmp162, D.14989
	addq	%rcx, %rcx	# D.14989
	addq	%rcx, %rax	# D.14989, D.14990
	movzwl	(%rax), %eax	# *_27, D.14991
	testw	%ax, %ax	# D.14991
	je	.L308	#,
	.loc 1 1748 0 discriminator 1
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.240
	movl	-40(%rbp), %ecx	# q2, tmp163
	movslq	%ecx, %rcx	# tmp163, D.14989
	addq	%rcx, %rcx	# D.14989
	addq	%rcx, %rax	# D.14989, D.14990
	movzwl	(%rax), %eax	# *_32, D.14991
	cwtl
	jmp	.L309	#
.L308:
	.loc 1 1748 0 discriminator 2
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.241
	movl	-40(%rbp), %ecx	# q2, tmp164
	movslq	%ecx, %rcx	# tmp164, D.14989
	addq	%rcx, %rcx	# D.14989
	addq	%rcx, %rax	# D.14989, D.14990
	movzwl	(%rax), %eax	# *_38, D.14991
	cwtl
	imull	$53, %eax, %eax	#, D.14988, iftmp.238
.L309:
	.loc 1 1748 0 discriminator 3
	subl	%eax, %edx	# iftmp.238, tmp165
	movl	%edx, %eax	# tmp165, tmp165
	movl	%eax, -20(%rbp)	# tmp165, tem
	.loc 1 1750 0 is_stmt 1 discriminator 3
	cmpl	$0, -20(%rbp)	#, tem
	je	.L310	#,
	.loc 1 1751 0
	movl	-20(%rbp), %eax	# tem, D.14988
	jmp	.L311	#
.L310:
	.loc 1 1753 0
	movq	qty(%rip), %rcx	# qty, qty.242
	movl	-40(%rbp), %eax	# q2, tmp166
	movslq	%eax, %rdx	# tmp166, D.14989
	movq	%rdx, %rax	# D.14989, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# D.14989, tmp167
	addq	%rax, %rax	# tmp167
	addq	%rdx, %rax	# D.14989, tmp167
	salq	$2, %rax	#, tmp168
	addq	%rcx, %rax	# qty.242, D.14992
	movl	(%rax), %eax	# _47->n_refs, D.14988
	cltq
	movq	%rax, %rdi	# D.14989,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14988
	movq	qty(%rip), %rsi	# qty, qty.243
	movl	-40(%rbp), %eax	# q2, tmp169
	movslq	%eax, %rdx	# tmp169, D.14989
	movq	%rdx, %rax	# D.14989, tmp170
	salq	$2, %rax	#, tmp170
	addq	%rdx, %rax	# D.14989, tmp170
	addq	%rax, %rax	# tmp170
	addq	%rdx, %rax	# D.14989, tmp170
	salq	$2, %rax	#, tmp171
	addq	%rsi, %rax	# qty.243, D.14992
	movl	4(%rax), %eax	# _54->freq, D.14988
	imull	%eax, %ecx	# D.14988, D.14988
	movq	qty(%rip), %rsi	# qty, qty.244
	movl	-40(%rbp), %eax	# q2, tmp172
	movslq	%eax, %rdx	# tmp172, D.14989
	movq	%rdx, %rax	# D.14989, tmp173
	salq	$2, %rax	#, tmp173
	addq	%rdx, %rax	# D.14989, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# D.14989, tmp173
	salq	$2, %rax	#, tmp174
	addq	%rsi, %rax	# qty.244, D.14992
	movl	16(%rax), %eax	# _60->size, D.14988
	imull	%eax, %ecx	# D.14988, D.14988
	movl	%ecx, %edx	# D.14988, D.14988
	movl	%edx, %eax	# D.14988, tmp175
	sall	$2, %eax	#, tmp175
	addl	%edx, %eax	# D.14988, tmp175
	addl	%eax, %eax	# tmp176
	movl	%eax, %ecx	# tmp175, D.14988
	movq	qty(%rip), %rsi	# qty, qty.245
	movl	-40(%rbp), %eax	# q2, tmp177
	movslq	%eax, %rdx	# tmp177, D.14989
	movq	%rdx, %rax	# D.14989, tmp178
	salq	$2, %rax	#, tmp178
	addq	%rdx, %rax	# D.14989, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# D.14989, tmp178
	salq	$2, %rax	#, tmp179
	addq	%rsi, %rax	# qty.245, D.14992
	movl	12(%rax), %esi	# _67->death, D.14988
	movq	qty(%rip), %rdi	# qty, qty.246
	movl	-40(%rbp), %eax	# q2, tmp180
	movslq	%eax, %rdx	# tmp180, D.14989
	movq	%rdx, %rax	# D.14989, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# D.14989, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.14989, tmp181
	salq	$2, %rax	#, tmp182
	addq	%rdi, %rax	# qty.246, D.14992
	movl	8(%rax), %eax	# _72->birth, D.14988
	subl	%eax, %esi	# D.14988, D.14988
	movl	%esi, %ebx	# D.14988, D.14988
	movl	%ecx, %eax	# D.14988, tmp183
	cltd
	idivl	%ebx	# D.14988
	movl	%eax, %ebx	# tmp183, D.14988
	movq	qty(%rip), %rcx	# qty, qty.247
	movl	-36(%rbp), %eax	# q1, tmp185
	movslq	%eax, %rdx	# tmp185, D.14989
	movq	%rdx, %rax	# D.14989, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.14989, tmp186
	addq	%rax, %rax	# tmp186
	addq	%rdx, %rax	# D.14989, tmp186
	salq	$2, %rax	#, tmp187
	addq	%rcx, %rax	# qty.247, D.14992
	movl	(%rax), %eax	# _79->n_refs, D.14988
	cltq
	movq	%rax, %rdi	# D.14989,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14988
	movq	qty(%rip), %rsi	# qty, qty.248
	movl	-36(%rbp), %eax	# q1, tmp188
	movslq	%eax, %rdx	# tmp188, D.14989
	movq	%rdx, %rax	# D.14989, tmp189
	salq	$2, %rax	#, tmp189
	addq	%rdx, %rax	# D.14989, tmp189
	addq	%rax, %rax	# tmp189
	addq	%rdx, %rax	# D.14989, tmp189
	salq	$2, %rax	#, tmp190
	addq	%rsi, %rax	# qty.248, D.14992
	movl	4(%rax), %eax	# _86->freq, D.14988
	imull	%eax, %ecx	# D.14988, D.14988
	movq	qty(%rip), %rsi	# qty, qty.249
	movl	-36(%rbp), %eax	# q1, tmp191
	movslq	%eax, %rdx	# tmp191, D.14989
	movq	%rdx, %rax	# D.14989, tmp192
	salq	$2, %rax	#, tmp192
	addq	%rdx, %rax	# D.14989, tmp192
	addq	%rax, %rax	# tmp192
	addq	%rdx, %rax	# D.14989, tmp192
	salq	$2, %rax	#, tmp193
	addq	%rsi, %rax	# qty.249, D.14992
	movl	16(%rax), %eax	# _92->size, D.14988
	imull	%eax, %ecx	# D.14988, D.14988
	movl	%ecx, %edx	# D.14988, D.14988
	movl	%edx, %eax	# D.14988, tmp194
	sall	$2, %eax	#, tmp194
	addl	%edx, %eax	# D.14988, tmp194
	addl	%eax, %eax	# tmp195
	movl	%eax, %ecx	# tmp194, D.14988
	movq	qty(%rip), %rsi	# qty, qty.250
	movl	-36(%rbp), %eax	# q1, tmp196
	movslq	%eax, %rdx	# tmp196, D.14989
	movq	%rdx, %rax	# D.14989, tmp197
	salq	$2, %rax	#, tmp197
	addq	%rdx, %rax	# D.14989, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# D.14989, tmp197
	salq	$2, %rax	#, tmp198
	addq	%rsi, %rax	# qty.250, D.14992
	movl	12(%rax), %esi	# _99->death, D.14988
	movq	qty(%rip), %rdi	# qty, qty.251
	movl	-36(%rbp), %eax	# q1, tmp199
	movslq	%eax, %rdx	# tmp199, D.14989
	movq	%rdx, %rax	# D.14989, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rdx, %rax	# D.14989, tmp200
	addq	%rax, %rax	# tmp200
	addq	%rdx, %rax	# D.14989, tmp200
	salq	$2, %rax	#, tmp201
	addq	%rdi, %rax	# qty.251, D.14992
	movl	8(%rax), %eax	# _104->birth, D.14988
	subl	%eax, %esi	# D.14988, D.14988
	movl	%esi, %edi	# D.14988, D.14988
	movl	%ecx, %eax	# D.14988, tmp202
	cltd
	idivl	%edi	# D.14988
	subl	%eax, %ebx	# D.14988, D.14988
	movl	%ebx, %eax	# D.14988, D.14988
.L311:
	.loc 1 1754 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	qty_sugg_compare, .-qty_sugg_compare
	.type	qty_sugg_compare_1, @function
qty_sugg_compare_1:
.LFB18:
	.loc 1 1760 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# q1p, q1p
	movq	%rsi, -48(%rbp)	# q2p, q2p
	.loc 1 1761 0
	movq	-40(%rbp), %rax	# q1p, tmp159
	movl	(%rax), %eax	# MEM[(const int *)q1p_4(D)], tmp160
	movl	%eax, -28(%rbp)	# tmp160, q1
	movq	-48(%rbp), %rax	# q2p, tmp161
	movl	(%rax), %eax	# MEM[(const int *)q2p_6(D)], tmp162
	movl	%eax, -24(%rbp)	# tmp162, q2
	.loc 1 1762 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.253
	movl	-28(%rbp), %edx	# q1, tmp163
	movslq	%edx, %rdx	# tmp163, D.14994
	addq	%rdx, %rdx	# D.14994
	addq	%rdx, %rax	# D.14994, D.14995
	movzwl	(%rax), %eax	# *_11, D.14996
	testw	%ax, %ax	# D.14996
	je	.L313	#,
	.loc 1 1762 0 is_stmt 0 discriminator 1
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.254
	movl	-28(%rbp), %edx	# q1, tmp164
	movslq	%edx, %rdx	# tmp164, D.14994
	addq	%rdx, %rdx	# D.14994
	addq	%rdx, %rax	# D.14994, D.14995
	movzwl	(%rax), %eax	# *_16, D.14996
	movswl	%ax, %edx	# D.14996, iftmp.252
	jmp	.L314	#
.L313:
	.loc 1 1762 0 discriminator 2
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.255
	movl	-28(%rbp), %edx	# q1, tmp165
	movslq	%edx, %rdx	# tmp165, D.14994
	addq	%rdx, %rdx	# D.14994
	addq	%rdx, %rax	# D.14994, D.14995
	movzwl	(%rax), %eax	# *_22, D.14996
	cwtl
	imull	$53, %eax, %edx	#, D.14993, iftmp.252
.L314:
	.loc 1 1762 0 discriminator 3
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.257
	movl	-24(%rbp), %ecx	# q2, tmp166
	movslq	%ecx, %rcx	# tmp166, D.14994
	addq	%rcx, %rcx	# D.14994
	addq	%rcx, %rax	# D.14994, D.14995
	movzwl	(%rax), %eax	# *_29, D.14996
	testw	%ax, %ax	# D.14996
	je	.L315	#,
	.loc 1 1762 0 discriminator 1
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.258
	movl	-24(%rbp), %ecx	# q2, tmp167
	movslq	%ecx, %rcx	# tmp167, D.14994
	addq	%rcx, %rcx	# D.14994
	addq	%rcx, %rax	# D.14994, D.14995
	movzwl	(%rax), %eax	# *_34, D.14996
	cwtl
	jmp	.L316	#
.L315:
	.loc 1 1762 0 discriminator 2
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.259
	movl	-24(%rbp), %ecx	# q2, tmp168
	movslq	%ecx, %rcx	# tmp168, D.14994
	addq	%rcx, %rcx	# D.14994
	addq	%rcx, %rax	# D.14994, D.14995
	movzwl	(%rax), %eax	# *_40, D.14996
	cwtl
	imull	$53, %eax, %eax	#, D.14993, iftmp.256
.L316:
	.loc 1 1762 0 discriminator 3
	subl	%eax, %edx	# iftmp.256, tmp169
	movl	%edx, %eax	# tmp169, tmp169
	movl	%eax, -20(%rbp)	# tmp169, tem
	.loc 1 1764 0 is_stmt 1 discriminator 3
	cmpl	$0, -20(%rbp)	#, tem
	je	.L317	#,
	.loc 1 1765 0
	movl	-20(%rbp), %eax	# tem, D.14993
	jmp	.L318	#
.L317:
	.loc 1 1767 0
	movq	qty(%rip), %rcx	# qty, qty.260
	movl	-24(%rbp), %eax	# q2, tmp170
	movslq	%eax, %rdx	# tmp170, D.14994
	movq	%rdx, %rax	# D.14994, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.14994, tmp171
	addq	%rax, %rax	# tmp171
	addq	%rdx, %rax	# D.14994, tmp171
	salq	$2, %rax	#, tmp172
	addq	%rcx, %rax	# qty.260, D.14997
	movl	(%rax), %eax	# _49->n_refs, D.14993
	cltq
	movq	%rax, %rdi	# D.14994,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14993
	movq	qty(%rip), %rsi	# qty, qty.261
	movl	-24(%rbp), %eax	# q2, tmp173
	movslq	%eax, %rdx	# tmp173, D.14994
	movq	%rdx, %rax	# D.14994, tmp174
	salq	$2, %rax	#, tmp174
	addq	%rdx, %rax	# D.14994, tmp174
	addq	%rax, %rax	# tmp174
	addq	%rdx, %rax	# D.14994, tmp174
	salq	$2, %rax	#, tmp175
	addq	%rsi, %rax	# qty.261, D.14997
	movl	4(%rax), %eax	# _56->freq, D.14993
	imull	%eax, %ecx	# D.14993, D.14993
	movq	qty(%rip), %rsi	# qty, qty.262
	movl	-24(%rbp), %eax	# q2, tmp176
	movslq	%eax, %rdx	# tmp176, D.14994
	movq	%rdx, %rax	# D.14994, tmp177
	salq	$2, %rax	#, tmp177
	addq	%rdx, %rax	# D.14994, tmp177
	addq	%rax, %rax	# tmp177
	addq	%rdx, %rax	# D.14994, tmp177
	salq	$2, %rax	#, tmp178
	addq	%rsi, %rax	# qty.262, D.14997
	movl	16(%rax), %eax	# _62->size, D.14993
	imull	%eax, %ecx	# D.14993, D.14993
	movl	%ecx, %edx	# D.14993, D.14993
	movl	%edx, %eax	# D.14993, tmp179
	sall	$2, %eax	#, tmp179
	addl	%edx, %eax	# D.14993, tmp179
	addl	%eax, %eax	# tmp180
	movl	%eax, %ecx	# tmp179, D.14993
	movq	qty(%rip), %rsi	# qty, qty.263
	movl	-24(%rbp), %eax	# q2, tmp181
	movslq	%eax, %rdx	# tmp181, D.14994
	movq	%rdx, %rax	# D.14994, tmp182
	salq	$2, %rax	#, tmp182
	addq	%rdx, %rax	# D.14994, tmp182
	addq	%rax, %rax	# tmp182
	addq	%rdx, %rax	# D.14994, tmp182
	salq	$2, %rax	#, tmp183
	addq	%rsi, %rax	# qty.263, D.14997
	movl	12(%rax), %esi	# _69->death, D.14993
	movq	qty(%rip), %rdi	# qty, qty.264
	movl	-24(%rbp), %eax	# q2, tmp184
	movslq	%eax, %rdx	# tmp184, D.14994
	movq	%rdx, %rax	# D.14994, tmp185
	salq	$2, %rax	#, tmp185
	addq	%rdx, %rax	# D.14994, tmp185
	addq	%rax, %rax	# tmp185
	addq	%rdx, %rax	# D.14994, tmp185
	salq	$2, %rax	#, tmp186
	addq	%rdi, %rax	# qty.264, D.14997
	movl	8(%rax), %eax	# _74->birth, D.14993
	subl	%eax, %esi	# D.14993, D.14993
	movl	%esi, %ebx	# D.14993, D.14993
	movl	%ecx, %eax	# D.14993, tmp187
	cltd
	idivl	%ebx	# D.14993
	movl	%eax, %ebx	# tmp187, D.14993
	movq	qty(%rip), %rcx	# qty, qty.265
	movl	-28(%rbp), %eax	# q1, tmp189
	movslq	%eax, %rdx	# tmp189, D.14994
	movq	%rdx, %rax	# D.14994, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# D.14994, tmp190
	addq	%rax, %rax	# tmp190
	addq	%rdx, %rax	# D.14994, tmp190
	salq	$2, %rax	#, tmp191
	addq	%rcx, %rax	# qty.265, D.14997
	movl	(%rax), %eax	# _81->n_refs, D.14993
	cltq
	movq	%rax, %rdi	# D.14994,
	call	floor_log2_wide	#
	movl	%eax, %ecx	#, D.14993
	movq	qty(%rip), %rsi	# qty, qty.266
	movl	-28(%rbp), %eax	# q1, tmp192
	movslq	%eax, %rdx	# tmp192, D.14994
	movq	%rdx, %rax	# D.14994, tmp193
	salq	$2, %rax	#, tmp193
	addq	%rdx, %rax	# D.14994, tmp193
	addq	%rax, %rax	# tmp193
	addq	%rdx, %rax	# D.14994, tmp193
	salq	$2, %rax	#, tmp194
	addq	%rsi, %rax	# qty.266, D.14997
	movl	4(%rax), %eax	# _88->freq, D.14993
	imull	%eax, %ecx	# D.14993, D.14993
	movq	qty(%rip), %rsi	# qty, qty.267
	movl	-28(%rbp), %eax	# q1, tmp195
	movslq	%eax, %rdx	# tmp195, D.14994
	movq	%rdx, %rax	# D.14994, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# D.14994, tmp196
	addq	%rax, %rax	# tmp196
	addq	%rdx, %rax	# D.14994, tmp196
	salq	$2, %rax	#, tmp197
	addq	%rsi, %rax	# qty.267, D.14997
	movl	16(%rax), %eax	# _94->size, D.14993
	imull	%eax, %ecx	# D.14993, D.14993
	movl	%ecx, %edx	# D.14993, D.14993
	movl	%edx, %eax	# D.14993, tmp198
	sall	$2, %eax	#, tmp198
	addl	%edx, %eax	# D.14993, tmp198
	addl	%eax, %eax	# tmp199
	movl	%eax, %ecx	# tmp198, D.14993
	movq	qty(%rip), %rsi	# qty, qty.268
	movl	-28(%rbp), %eax	# q1, tmp200
	movslq	%eax, %rdx	# tmp200, D.14994
	movq	%rdx, %rax	# D.14994, tmp201
	salq	$2, %rax	#, tmp201
	addq	%rdx, %rax	# D.14994, tmp201
	addq	%rax, %rax	# tmp201
	addq	%rdx, %rax	# D.14994, tmp201
	salq	$2, %rax	#, tmp202
	addq	%rsi, %rax	# qty.268, D.14997
	movl	12(%rax), %esi	# _101->death, D.14993
	movq	qty(%rip), %rdi	# qty, qty.269
	movl	-28(%rbp), %eax	# q1, tmp203
	movslq	%eax, %rdx	# tmp203, D.14994
	movq	%rdx, %rax	# D.14994, tmp204
	salq	$2, %rax	#, tmp204
	addq	%rdx, %rax	# D.14994, tmp204
	addq	%rax, %rax	# tmp204
	addq	%rdx, %rax	# D.14994, tmp204
	salq	$2, %rax	#, tmp205
	addq	%rdi, %rax	# qty.269, D.14997
	movl	8(%rax), %eax	# _106->birth, D.14993
	subl	%eax, %esi	# D.14993, D.14993
	movl	%esi, %edi	# D.14993, D.14993
	movl	%ecx, %eax	# D.14993, tmp206
	cltd
	idivl	%edi	# D.14993
	subl	%eax, %ebx	# D.14993, tmp208
	movl	%ebx, %eax	# tmp208, tmp208
	movl	%eax, -20(%rbp)	# tmp208, tem
	.loc 1 1768 0
	cmpl	$0, -20(%rbp)	#, tem
	je	.L319	#,
	.loc 1 1769 0
	movl	-20(%rbp), %eax	# tem, D.14993
	jmp	.L318	#
.L319:
	.loc 1 1773 0
	movl	-24(%rbp), %eax	# q2, tmp209
	movl	-28(%rbp), %edx	# q1, tmp210
	subl	%eax, %edx	# tmp209, D.14993
	movl	%edx, %eax	# D.14993, D.14993
.L318:
	.loc 1 1774 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	qty_sugg_compare_1, .-qty_sugg_compare_1
	.type	combine_regs, @function
combine_regs:
.LFB19:
	.loc 1 1808 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# usedreg, usedreg
	movq	%rsi, -80(%rbp)	# setreg, setreg
	movl	%edx, -84(%rbp)	# may_save_copy, may_save_copy
	movl	%ecx, -88(%rbp)	# insn_number, insn_number
	movq	%r8, -96(%rbp)	# insn, insn
	movl	%r9d, -100(%rbp)	# already_dead, already_dead
	.loc 1 1810 0
	movl	$0, -60(%rbp)	#, offset
	.loc 1 1818 0
	jmp	.L321	#
.L329:
.LBB24:
	.loc 1 1820 0
	movq	-72(%rbp), %rax	# usedreg, tmp567
	movq	8(%rax), %rax	# usedreg_1->fld[0].rtx, tmp568
	movq	%rax, -32(%rbp)	# tmp568, subreg
	.loc 1 1822 0
	movq	-32(%rbp), %rax	# subreg, tmp569
	movzwl	(%rax), %eax	# subreg_45->code, D.14999
	cmpw	$61, %ax	#, D.14999
	jne	.L322	#,
	.loc 1 1824 0
	movq	-32(%rbp), %rax	# subreg, tmp570
	movzbl	2(%rax), %eax	# subreg_45->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15000
	movzbl	%al, %edx	# D.15000, D.14998
	movl	target_flags(%rip), %eax	# target_flags, target_flags.271
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L323	#,
	.loc 1 1824 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.270
	jmp	.L324	#
.L323:
	.loc 1 1824 0 discriminator 2
	movl	$4, %eax	#, iftmp.270
.L324:
	.loc 1 1824 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.270, D.14998
	jle	.L325	#,
	.loc 1 1825 0 is_stmt 1
	movl	$0, -84(%rbp)	#, may_save_copy
.L325:
	.loc 1 1827 0
	movq	-32(%rbp), %rax	# subreg, tmp572
	movl	8(%rax), %eax	# subreg_45->fld[0].rtuint, D.15001
	cmpl	$52, %eax	#, D.15001
	ja	.L326	#,
	.loc 1 1831 0
	movq	-72(%rbp), %rax	# usedreg, tmp573
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	.loc 1 1828 0
	movzbl	%al, %ecx	# D.15000, D.15002
	movq	-72(%rbp), %rax	# usedreg, tmp574
	movl	16(%rax), %edx	# usedreg_1->fld[1].rtuint, D.15001
	.loc 1 1829 0
	movq	-32(%rbp), %rax	# subreg, tmp575
	movzbl	2(%rax), %eax	# subreg_45->mode, D.15000
	.loc 1 1828 0
	movzbl	%al, %esi	# D.15000, D.15002
	movq	-32(%rbp), %rax	# subreg, tmp576
	movl	8(%rax), %eax	# subreg_45->fld[0].rtuint, D.15001
	movl	%eax, %edi	# D.15001,
	call	subreg_regno_offset	#
	movl	-60(%rbp), %edx	# offset, offset.272
	addl	%edx, %eax	# offset.272, D.15001
	movl	%eax, -60(%rbp)	# D.15001, offset
	jmp	.L322	#
.L326:
	.loc 1 1833 0
	movq	-72(%rbp), %rax	# usedreg, tmp577
	movl	16(%rax), %eax	# usedreg_1->fld[1].rtuint, D.15001
	.loc 1 1834 0
	movl	target_flags(%rip), %edx	# target_flags, target_flags.274
	andl	$33554432, %edx	#, D.14998
	testl	%edx, %edx	# D.14998
	je	.L327	#,
	.loc 1 1834 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.273
	jmp	.L328	#
.L327:
	.loc 1 1834 0 discriminator 2
	movl	$4, %ebx	#, iftmp.273
.L328:
	.loc 1 1834 0 discriminator 3
	movl	$0, %edx	#, tmp579
	divl	%ebx	# iftmp.273
	movl	%eax, %edx	# tmp578, D.15001
	.loc 1 1833 0 is_stmt 1 discriminator 3
	movl	-60(%rbp), %eax	# offset, offset.275
	addl	%edx, %eax	# D.15001, D.15001
	movl	%eax, -60(%rbp)	# D.15001, offset
.L322:
	.loc 1 1837 0
	movq	-32(%rbp), %rax	# subreg, tmp580
	movq	%rax, -72(%rbp)	# tmp580, usedreg
.L321:
.LBE24:
	.loc 1 1818 0 discriminator 1
	movq	-72(%rbp), %rax	# usedreg, tmp581
	movzwl	(%rax), %eax	# usedreg_1->code, D.14999
	cmpw	$63, %ax	#, D.14999
	je	.L329	#,
	.loc 1 1840 0
	movq	-72(%rbp), %rax	# usedreg, tmp582
	movzwl	(%rax), %eax	# usedreg_1->code, D.14999
	cmpw	$61, %ax	#, D.14999
	je	.L330	#,
	.loc 1 1841 0
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L330:
	.loc 1 1843 0
	movq	-72(%rbp), %rax	# usedreg, tmp583
	movl	8(%rax), %eax	# usedreg_1->fld[0].rtuint, D.15001
	movl	%eax, -44(%rbp)	# D.15001, ureg
	.loc 1 1844 0
	cmpl	$52, -44(%rbp)	#, ureg
	jg	.L332	#,
	.loc 1 1845 0
	cmpl	$7, -44(%rbp)	#, ureg
	jle	.L333	#,
	.loc 1 1845 0 is_stmt 0 discriminator 1
	cmpl	$15, -44(%rbp)	#, ureg
	jle	.L334	#,
.L333:
	.loc 1 1845 0 discriminator 2
	cmpl	$20, -44(%rbp)	#, ureg
	jle	.L335	#,
	.loc 1 1845 0 discriminator 1
	cmpl	$28, -44(%rbp)	#, ureg
	jle	.L334	#,
.L335:
	.loc 1 1845 0 discriminator 2
	cmpl	$44, -44(%rbp)	#, ureg
	jle	.L336	#,
	.loc 1 1845 0 discriminator 1
	cmpl	$52, -44(%rbp)	#, ureg
	jle	.L334	#,
.L336:
	.loc 1 1845 0 discriminator 2
	cmpl	$28, -44(%rbp)	#, ureg
	jle	.L337	#,
	.loc 1 1845 0 discriminator 1
	cmpl	$36, -44(%rbp)	#, ureg
	jg	.L337	#,
.L334:
	movq	-72(%rbp), %rax	# usedreg, tmp584
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15003
	cmpl	$5, %eax	#, D.15003
	je	.L338	#,
	.loc 1 1845 0 discriminator 2
	movq	-72(%rbp), %rax	# usedreg, tmp586
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15003
	cmpl	$6, %eax	#, D.15003
	jne	.L339	#,
.L338:
	.loc 1 1845 0 discriminator 1
	movl	$2, %eax	#, iftmp.277
	jmp	.L340	#
.L339:
	movl	$1, %eax	#, iftmp.277
.L340:
	.loc 1 1845 0 discriminator 3
	jmp	.L341	#
.L337:
	.loc 1 1845 0 discriminator 2
	movq	-72(%rbp), %rax	# usedreg, tmp588
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$18, %al	#, D.15000
	jne	.L342	#,
	.loc 1 1845 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.280
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L343	#,
	movl	$2, %eax	#, iftmp.279
	jmp	.L341	#
.L343:
	.loc 1 1845 0 discriminator 2
	movl	$3, %eax	#, iftmp.279
	jmp	.L341	#
.L342:
	movq	-72(%rbp), %rax	# usedreg, tmp589
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$24, %al	#, D.15000
	jne	.L346	#,
	.loc 1 1845 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.283
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L347	#,
	movl	$4, %eax	#, iftmp.282
	jmp	.L341	#
.L347:
	.loc 1 1845 0 discriminator 2
	movl	$6, %eax	#, iftmp.282
	jmp	.L341	#
.L346:
	movq	-72(%rbp), %rax	# usedreg, tmp590
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15000
	movzbl	%al, %edx	# D.15000, D.14998
	movl	target_flags(%rip), %eax	# target_flags, target_flags.285
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L350	#,
	.loc 1 1845 0 discriminator 1
	movl	$8, %eax	#, iftmp.284
	jmp	.L351	#
.L350:
	.loc 1 1845 0 discriminator 2
	movl	$4, %eax	#, iftmp.284
.L351:
	.loc 1 1845 0 discriminator 3
	addl	%edx, %eax	# D.14998, D.14998
	subl	$1, %eax	#, D.14998
	movl	target_flags(%rip), %edx	# target_flags, target_flags.287
	andl	$33554432, %edx	#, D.14998
	testl	%edx, %edx	# D.14998
	je	.L352	#,
	.loc 1 1845 0 discriminator 1
	movl	$8, %ebx	#, iftmp.286
	jmp	.L353	#
.L352:
	.loc 1 1845 0 discriminator 2
	movl	$4, %ebx	#, iftmp.286
.L353:
	.loc 1 1845 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.286
.L341:
	movl	%eax, -56(%rbp)	# iftmp.276, usize
	.loc 1 1851 0 is_stmt 1 discriminator 3
	jmp	.L359	#
.L332:
	.loc 1 1847 0
	movq	-72(%rbp), %rax	# usedreg, tmp594
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15000
	.loc 1 1848 0
	movzbl	%al, %edx	# D.15000, D.14998
	movl	target_flags(%rip), %eax	# target_flags, target_flags.289
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L355	#,
	.loc 1 1848 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.288
	jmp	.L356	#
.L355:
	.loc 1 1848 0 discriminator 2
	movl	$3, %eax	#, iftmp.288
.L356:
	.loc 1 1848 0 discriminator 3
	addl	%edx, %eax	# D.14998, D.14998
	.loc 1 1849 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.291
	andl	$33554432, %edx	#, D.14998
	testl	%edx, %edx	# D.14998
	je	.L357	#,
	.loc 1 1849 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.290
	jmp	.L358	#
.L357:
	.loc 1 1849 0 discriminator 2
	movl	$4, %ebx	#, iftmp.290
.L358:
	.loc 1 1847 0 is_stmt 1
	cltd
	idivl	%ebx	# iftmp.290
	movl	%eax, -56(%rbp)	# tmp596, usize
	.loc 1 1851 0
	jmp	.L359	#
.L367:
.LBB25:
	.loc 1 1853 0
	movq	-80(%rbp), %rax	# setreg, tmp598
	movq	8(%rax), %rax	# setreg_2->fld[0].rtx, tmp599
	movq	%rax, -24(%rbp)	# tmp599, subreg
	.loc 1 1855 0
	movq	-24(%rbp), %rax	# subreg, tmp600
	movzwl	(%rax), %eax	# subreg_136->code, D.14999
	cmpw	$61, %ax	#, D.14999
	jne	.L360	#,
	.loc 1 1857 0
	movq	-24(%rbp), %rax	# subreg, tmp601
	movzbl	2(%rax), %eax	# subreg_136->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15000
	movzbl	%al, %edx	# D.15000, D.14998
	movl	target_flags(%rip), %eax	# target_flags, target_flags.293
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L361	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.292
	jmp	.L362	#
.L361:
	.loc 1 1857 0 discriminator 2
	movl	$4, %eax	#, iftmp.292
.L362:
	.loc 1 1857 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.292, D.14998
	jle	.L363	#,
	.loc 1 1858 0 is_stmt 1
	movl	$0, -84(%rbp)	#, may_save_copy
.L363:
	.loc 1 1860 0
	movq	-24(%rbp), %rax	# subreg, tmp603
	movl	8(%rax), %eax	# subreg_136->fld[0].rtuint, D.15001
	cmpl	$52, %eax	#, D.15001
	ja	.L364	#,
	.loc 1 1861 0
	movl	-60(%rbp), %ebx	# offset, offset.294
	.loc 1 1864 0
	movq	-80(%rbp), %rax	# setreg, tmp604
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	.loc 1 1861 0
	movzbl	%al, %ecx	# D.15000, D.15002
	movq	-80(%rbp), %rax	# setreg, tmp605
	movl	16(%rax), %edx	# setreg_2->fld[1].rtuint, D.15001
	.loc 1 1862 0
	movq	-24(%rbp), %rax	# subreg, tmp606
	movzbl	2(%rax), %eax	# subreg_136->mode, D.15000
	.loc 1 1861 0
	movzbl	%al, %esi	# D.15000, D.15002
	movq	-24(%rbp), %rax	# subreg, tmp607
	movl	8(%rax), %eax	# subreg_136->fld[0].rtuint, D.15001
	movl	%eax, %edi	# D.15001,
	call	subreg_regno_offset	#
	subl	%eax, %ebx	# D.15001, D.15001
	movl	%ebx, %eax	# D.15001, D.15001
	movl	%eax, -60(%rbp)	# D.15001, offset
	jmp	.L360	#
.L364:
	.loc 1 1866 0
	movl	-60(%rbp), %ecx	# offset, offset.295
	movq	-80(%rbp), %rax	# setreg, tmp608
	movl	16(%rax), %eax	# setreg_2->fld[1].rtuint, D.15001
	.loc 1 1867 0
	movl	target_flags(%rip), %edx	# target_flags, target_flags.297
	andl	$33554432, %edx	#, D.14998
	testl	%edx, %edx	# D.14998
	je	.L365	#,
	.loc 1 1867 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.296
	jmp	.L366	#
.L365:
	.loc 1 1867 0 discriminator 2
	movl	$4, %ebx	#, iftmp.296
.L366:
	.loc 1 1867 0 discriminator 3
	movl	$0, %edx	#, tmp610
	divl	%ebx	# iftmp.296
	.loc 1 1866 0 is_stmt 1 discriminator 3
	subl	%eax, %ecx	# D.15001, D.15001
	movl	%ecx, %eax	# D.15001, D.15001
	movl	%eax, -60(%rbp)	# D.15001, offset
.L360:
	.loc 1 1870 0
	movq	-24(%rbp), %rax	# subreg, tmp611
	movq	%rax, -80(%rbp)	# tmp611, setreg
.L359:
.LBE25:
	.loc 1 1851 0 discriminator 1
	movq	-80(%rbp), %rax	# setreg, tmp612
	movzwl	(%rax), %eax	# setreg_2->code, D.14999
	cmpw	$63, %ax	#, D.14999
	je	.L367	#,
	.loc 1 1873 0
	movq	-80(%rbp), %rax	# setreg, tmp613
	movzwl	(%rax), %eax	# setreg_2->code, D.14999
	cmpw	$61, %ax	#, D.14999
	je	.L368	#,
	.loc 1 1874 0
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L368:
	.loc 1 1876 0
	movq	-80(%rbp), %rax	# setreg, tmp614
	movl	8(%rax), %eax	# setreg_2->fld[0].rtuint, D.15001
	movl	%eax, -40(%rbp)	# D.15001, sreg
	.loc 1 1877 0
	cmpl	$52, -40(%rbp)	#, sreg
	jg	.L369	#,
	.loc 1 1878 0
	cmpl	$7, -40(%rbp)	#, sreg
	jle	.L370	#,
	.loc 1 1878 0 is_stmt 0 discriminator 1
	cmpl	$15, -40(%rbp)	#, sreg
	jle	.L371	#,
.L370:
	.loc 1 1878 0 discriminator 2
	cmpl	$20, -40(%rbp)	#, sreg
	jle	.L372	#,
	.loc 1 1878 0 discriminator 1
	cmpl	$28, -40(%rbp)	#, sreg
	jle	.L371	#,
.L372:
	.loc 1 1878 0 discriminator 2
	cmpl	$44, -40(%rbp)	#, sreg
	jle	.L373	#,
	.loc 1 1878 0 discriminator 1
	cmpl	$52, -40(%rbp)	#, sreg
	jle	.L371	#,
.L373:
	.loc 1 1878 0 discriminator 2
	cmpl	$28, -40(%rbp)	#, sreg
	jle	.L374	#,
	.loc 1 1878 0 discriminator 1
	cmpl	$36, -40(%rbp)	#, sreg
	jg	.L374	#,
.L371:
	movq	-80(%rbp), %rax	# setreg, tmp615
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15003
	cmpl	$5, %eax	#, D.15003
	je	.L375	#,
	.loc 1 1878 0 discriminator 2
	movq	-80(%rbp), %rax	# setreg, tmp617
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15003
	cmpl	$6, %eax	#, D.15003
	jne	.L376	#,
.L375:
	.loc 1 1878 0 discriminator 1
	movl	$2, %eax	#, iftmp.299
	jmp	.L377	#
.L376:
	movl	$1, %eax	#, iftmp.299
.L377:
	.loc 1 1878 0 discriminator 3
	jmp	.L378	#
.L374:
	.loc 1 1878 0 discriminator 2
	movq	-80(%rbp), %rax	# setreg, tmp619
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	cmpb	$18, %al	#, D.15000
	jne	.L379	#,
	.loc 1 1878 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.302
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L380	#,
	movl	$2, %eax	#, iftmp.301
	jmp	.L378	#
.L380:
	.loc 1 1878 0 discriminator 2
	movl	$3, %eax	#, iftmp.301
	jmp	.L378	#
.L379:
	movq	-80(%rbp), %rax	# setreg, tmp620
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	cmpb	$24, %al	#, D.15000
	jne	.L383	#,
	.loc 1 1878 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.305
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L384	#,
	movl	$4, %eax	#, iftmp.304
	jmp	.L378	#
.L384:
	.loc 1 1878 0 discriminator 2
	movl	$6, %eax	#, iftmp.304
	jmp	.L378	#
.L383:
	movq	-80(%rbp), %rax	# setreg, tmp621
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15000
	movzbl	%al, %edx	# D.15000, D.14998
	movl	target_flags(%rip), %eax	# target_flags, target_flags.307
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L387	#,
	.loc 1 1878 0 discriminator 1
	movl	$8, %eax	#, iftmp.306
	jmp	.L388	#
.L387:
	.loc 1 1878 0 discriminator 2
	movl	$4, %eax	#, iftmp.306
.L388:
	.loc 1 1878 0 discriminator 3
	addl	%edx, %eax	# D.14998, D.14998
	subl	$1, %eax	#, D.14998
	movl	target_flags(%rip), %edx	# target_flags, target_flags.309
	andl	$33554432, %edx	#, D.14998
	testl	%edx, %edx	# D.14998
	je	.L389	#,
	.loc 1 1878 0 discriminator 1
	movl	$8, %ebx	#, iftmp.308
	jmp	.L390	#
.L389:
	.loc 1 1878 0 discriminator 2
	movl	$4, %ebx	#, iftmp.308
.L390:
	.loc 1 1878 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.308
.L378:
	movl	%eax, -52(%rbp)	# iftmp.298, ssize
	jmp	.L391	#
.L369:
	.loc 1 1880 0 is_stmt 1
	movq	-80(%rbp), %rax	# setreg, tmp625
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.14998
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15000
	.loc 1 1881 0
	movzbl	%al, %edx	# D.15000, D.14998
	movl	target_flags(%rip), %eax	# target_flags, target_flags.311
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L392	#,
	.loc 1 1881 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.310
	jmp	.L393	#
.L392:
	.loc 1 1881 0 discriminator 2
	movl	$3, %eax	#, iftmp.310
.L393:
	.loc 1 1881 0 discriminator 3
	addl	%edx, %eax	# D.14998, D.14998
	.loc 1 1882 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.313
	andl	$33554432, %edx	#, D.14998
	testl	%edx, %edx	# D.14998
	je	.L394	#,
	.loc 1 1882 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.312
	jmp	.L395	#
.L394:
	.loc 1 1882 0 discriminator 2
	movl	$4, %ebx	#, iftmp.312
.L395:
	.loc 1 1880 0 is_stmt 1
	cltd
	idivl	%ebx	# iftmp.312
	movl	%eax, -52(%rbp)	# tmp627, ssize
.L391:
	.loc 1 1887 0
	cmpl	$52, -44(%rbp)	#, ureg
	jle	.L396	#,
	.loc 1 1887 0 is_stmt 0 discriminator 1
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.314
	movl	-44(%rbp), %edx	# ureg, tmp629
	movslq	%edx, %rdx	# tmp629, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_228, D.14998
	testl	%eax, %eax	# D.14998
	js	.L397	#,
.L396:
	.loc 1 1889 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, offset
	jle	.L398	#,
	.loc 1 1889 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# offset, tmp630
	movl	-56(%rbp), %edx	# usize, tmp631
	addl	%edx, %eax	# tmp631, D.14998
	cmpl	-52(%rbp), %eax	# ssize, D.14998
	jg	.L397	#,
.L398:
	.loc 1 1890 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, offset
	jns	.L399	#,
	.loc 1 1890 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# offset, tmp632
	movl	-56(%rbp), %edx	# usize, tmp633
	addl	%edx, %eax	# tmp633, D.14998
	cmpl	-52(%rbp), %eax	# ssize, D.14998
	jl	.L397	#,
.L399:
	.loc 1 1893 0 is_stmt 1
	movl	-52(%rbp), %eax	# ssize, tmp634
	cmpl	-56(%rbp), %eax	# usize, tmp634
	jle	.L400	#,
	.loc 1 1893 0 is_stmt 0 discriminator 1
	cmpl	$52, -44(%rbp)	#, ureg
	jle	.L400	#,
	.loc 1 1894 0 is_stmt 1
	movq	qty(%rip), %rcx	# qty, qty.315
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.316
	movl	-44(%rbp), %edx	# ureg, tmp635
	movslq	%edx, %rdx	# tmp635, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_236, D.14998
	movslq	%eax, %rdx	# D.14998, D.15004
	movq	%rdx, %rax	# D.15004, tmp636
	salq	$2, %rax	#, tmp636
	addq	%rdx, %rax	# D.15004, tmp636
	addq	%rax, %rax	# tmp636
	addq	%rdx, %rax	# D.15004, tmp636
	salq	$2, %rax	#, tmp637
	addq	%rcx, %rax	# qty.315, D.15006
	movl	16(%rax), %eax	# _240->size, D.14998
	cmpl	-56(%rbp), %eax	# usize, D.14998
	jg	.L397	#,
.L400:
	.loc 1 1896 0
	cmpl	$52, -40(%rbp)	#, sreg
	jle	.L401	#,
	.loc 1 1896 0 is_stmt 0 discriminator 1
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.317
	movl	-40(%rbp), %edx	# sreg, tmp638
	movslq	%edx, %rdx	# tmp638, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_245, D.14998
	cmpl	$-1, %eax	#, D.14998
	je	.L397	#,
.L401:
	.loc 1 1900 0 is_stmt 1
	cmpl	$52, -44(%rbp)	#, ureg
	jle	.L402	#,
	.loc 1 1901 0
	movq	-72(%rbp), %rdx	# usedreg, tmp639
	movq	-96(%rbp), %rax	# insn, tmp640
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp640,
	call	find_reg_note	#
	testq	%rax, %rax	# D.15007
	jne	.L397	#,
.L402:
	.loc 1 1905 0
	movl	-44(%rbp), %eax	# ureg, tmp641
	cmpl	-40(%rbp), %eax	# sreg, tmp641
	je	.L397	#,
	.loc 1 1907 0
	cmpl	$52, -44(%rbp)	#, ureg
	jg	.L403	#,
	.loc 1 1907 0 is_stmt 0 discriminator 1
	cmpl	$52, -40(%rbp)	#, sreg
	jle	.L397	#,
.L403:
	.loc 1 1910 0 is_stmt 1
	movq	-72(%rbp), %rax	# usedreg, tmp642
	movzbl	2(%rax), %edx	# usedreg_1->mode, D.15000
	movq	-80(%rbp), %rax	# setreg, tmp643
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	cmpb	%al, %dl	# D.15000, D.15000
	je	.L404	#,
	.loc 1 1910 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# usedreg, tmp644
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$3, %al	#, D.15000
	je	.L405	#,
	movq	-72(%rbp), %rax	# usedreg, tmp645
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$4, %al	#, D.15000
	je	.L405	#,
	movq	-72(%rbp), %rax	# usedreg, tmp646
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$2, %al	#, D.15000
	jne	.L406	#,
	.loc 1 1910 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.318
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	jne	.L405	#,
	.loc 1 1910 0 discriminator 1
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.319
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.320
	movl	%eax, %ecx	# ix86_cpu.321, tmp768
	sarl	%cl, %edx	# tmp768, D.14998
	movl	%edx, %eax	# D.14998, D.14998
	andl	$1, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L405	#,
.L406:
	movq	-72(%rbp), %rax	# usedreg, tmp647
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$5, %al	#, D.15000
	jne	.L397	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.322
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L397	#,
.L405:
	.loc 1 1910 0 discriminator 2
	movq	-80(%rbp), %rax	# setreg, tmp648
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	cmpb	$3, %al	#, D.15000
	je	.L404	#,
	.loc 1 1910 0 discriminator 1
	movq	-80(%rbp), %rax	# setreg, tmp649
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	cmpb	$4, %al	#, D.15000
	je	.L404	#,
	movq	-72(%rbp), %rax	# usedreg, tmp650
	movzbl	2(%rax), %eax	# usedreg_1->mode, D.15000
	cmpb	$2, %al	#, D.15000
	jne	.L407	#,
	.loc 1 1910 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.323
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	jne	.L404	#,
	.loc 1 1910 0 discriminator 1
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.324
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.325
	movl	%eax, %ecx	# ix86_cpu.326, tmp770
	sarl	%cl, %edx	# tmp770, D.14998
	movl	%edx, %eax	# D.14998, D.14998
	andl	$1, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	je	.L404	#,
.L407:
	movq	-80(%rbp), %rax	# setreg, tmp651
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	cmpb	$5, %al	#, D.15000
	jne	.L397	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.327
	andl	$33554432, %eax	#, D.14998
	testl	%eax, %eax	# D.14998
	jne	.L404	#,
.L397:
	.loc 1 1911 0 is_stmt 1
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L404:
	.loc 1 1920 0
	cmpl	$52, -44(%rbp)	#, ureg
	jg	.L408	#,
	.loc 1 1924 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.328
	movl	-40(%rbp), %edx	# sreg, tmp652
	movslq	%edx, %rdx	# tmp652, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_280, D.14998
	cmpl	$-2, %eax	#, D.14998
	jne	.L409	#,
	.loc 1 1925 0
	movl	-88(%rbp), %eax	# insn_number, tmp653
	leal	(%rax,%rax), %edx	#, D.14998
	movq	-80(%rbp), %rax	# setreg, tmp654
	movl	%edx, %esi	# D.14998,
	movq	%rax, %rdi	# tmp654,
	call	reg_is_born	#
.L409:
	.loc 1 1927 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.329
	movl	-40(%rbp), %edx	# sreg, tmp655
	movslq	%edx, %rdx	# tmp655, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_287, D.14998
	testl	%eax, %eax	# D.14998
	js	.L410	#,
	.loc 1 1929 0
	cmpl	$0, -84(%rbp)	#, may_save_copy
	je	.L411	#,
	.loc 1 1930 0
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.330
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.331
	movl	-40(%rbp), %ecx	# sreg, tmp656
	movslq	%ecx, %rcx	# tmp656, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_293, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15008
	movq	(%rax), %rdx	# *_297, D.15004
	movl	-44(%rbp), %eax	# ureg, tmp657
	movl	%eax, %ecx	# tmp657, tmp772
	shrq	%cl, %rdx	# tmp772, D.15004
	movq	%rdx, %rax	# D.15004, D.15004
	andl	$1, %eax	#, D.15004
	testq	%rax, %rax	# D.15004
	jne	.L411	#,
	.loc 1 1932 0
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.332
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.333
	movl	-40(%rbp), %ecx	# sreg, tmp658
	movslq	%ecx, %rcx	# tmp658, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_305, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rax, %rdx	# qty_phys_copy_sugg.332, D.15008
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.334
	movq	reg_qty(%rip), %rcx	# reg_qty, reg_qty.335
	movl	-40(%rbp), %esi	# sreg, tmp659
	movslq	%esi, %rsi	# tmp659, D.15004
	salq	$2, %rsi	#, D.15004
	addq	%rsi, %rcx	# D.15004, D.15005
	movl	(%rcx), %ecx	# *_314, D.14998
	movslq	%ecx, %rcx	# D.14998, D.15004
	salq	$3, %rcx	#, D.15004
	addq	%rcx, %rax	# D.15004, D.15008
	movq	(%rax), %rsi	# *_318, D.15004
	movl	-44(%rbp), %eax	# ureg, tmp660
	movl	$1, %edi	#, tmp661
	movl	%eax, %ecx	# tmp660, tmp774
	salq	%cl, %rdi	# tmp774, D.15004
	movq	%rdi, %rax	# D.15004, D.15004
	orq	%rsi, %rax	# D.15004, D.15004
	movq	%rax, (%rdx)	# D.15004, *_309
	.loc 1 1933 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.336
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.337
	movl	-40(%rbp), %ecx	# sreg, tmp662
	movslq	%ecx, %rcx	# tmp662, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_326, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	addq	%rdx, %rdx	# D.15004
	addq	%rdx, %rax	# D.15004, D.15009
	movzwl	(%rax), %edx	# *_330, D.15010
	addl	$1, %edx	#, D.15010
	movw	%dx, (%rax)	# D.15010, *_330
	jmp	.L410	#
.L411:
	.loc 1 1935 0
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.338
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.339
	movl	-40(%rbp), %ecx	# sreg, tmp663
	movslq	%ecx, %rcx	# tmp663, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_338, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15008
	movq	(%rax), %rdx	# *_342, D.15004
	movl	-44(%rbp), %eax	# ureg, tmp664
	movl	%eax, %ecx	# tmp664, tmp776
	shrq	%cl, %rdx	# tmp776, D.15004
	movq	%rdx, %rax	# D.15004, D.15004
	andl	$1, %eax	#, D.15004
	testq	%rax, %rax	# D.15004
	jne	.L410	#,
	.loc 1 1937 0
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.340
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.341
	movl	-40(%rbp), %ecx	# sreg, tmp665
	movslq	%ecx, %rcx	# tmp665, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_350, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rax, %rdx	# qty_phys_sugg.340, D.15008
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.342
	movq	reg_qty(%rip), %rcx	# reg_qty, reg_qty.343
	movl	-40(%rbp), %esi	# sreg, tmp666
	movslq	%esi, %rsi	# tmp666, D.15004
	salq	$2, %rsi	#, D.15004
	addq	%rsi, %rcx	# D.15004, D.15005
	movl	(%rcx), %ecx	# *_359, D.14998
	movslq	%ecx, %rcx	# D.14998, D.15004
	salq	$3, %rcx	#, D.15004
	addq	%rcx, %rax	# D.15004, D.15008
	movq	(%rax), %rsi	# *_363, D.15004
	movl	-44(%rbp), %eax	# ureg, tmp667
	movl	$1, %edi	#, tmp668
	movl	%eax, %ecx	# tmp667, tmp778
	salq	%cl, %rdi	# tmp778, D.15004
	movq	%rdi, %rax	# D.15004, D.15004
	orq	%rsi, %rax	# D.15004, D.15004
	movq	%rax, (%rdx)	# D.15004, *_354
	.loc 1 1938 0
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.344
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.345
	movl	-40(%rbp), %ecx	# sreg, tmp669
	movslq	%ecx, %rcx	# tmp669, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_371, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	addq	%rdx, %rdx	# D.15004
	addq	%rdx, %rax	# D.15004, D.15009
	movzwl	(%rax), %edx	# *_375, D.15010
	addl	$1, %edx	#, D.15010
	movw	%dx, (%rax)	# D.15010, *_375
.L410:
	.loc 1 1941 0
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L408:
	.loc 1 1946 0
	cmpl	$52, -40(%rbp)	#, sreg
	jg	.L412	#,
	.loc 1 1948 0
	cmpl	$0, -84(%rbp)	#, may_save_copy
	je	.L413	#,
	.loc 1 1949 0
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.346
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.347
	movl	-44(%rbp), %ecx	# ureg, tmp670
	movslq	%ecx, %rcx	# tmp670, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_384, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15008
	movq	(%rax), %rdx	# *_388, D.15004
	movl	-40(%rbp), %eax	# sreg, tmp671
	movl	%eax, %ecx	# tmp671, tmp780
	shrq	%cl, %rdx	# tmp780, D.15004
	movq	%rdx, %rax	# D.15004, D.15004
	andl	$1, %eax	#, D.15004
	testq	%rax, %rax	# D.15004
	jne	.L413	#,
	.loc 1 1951 0
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.348
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.349
	movl	-44(%rbp), %ecx	# ureg, tmp672
	movslq	%ecx, %rcx	# tmp672, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_396, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rax, %rdx	# qty_phys_copy_sugg.348, D.15008
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.350
	movq	reg_qty(%rip), %rcx	# reg_qty, reg_qty.351
	movl	-44(%rbp), %esi	# ureg, tmp673
	movslq	%esi, %rsi	# tmp673, D.15004
	salq	$2, %rsi	#, D.15004
	addq	%rsi, %rcx	# D.15004, D.15005
	movl	(%rcx), %ecx	# *_405, D.14998
	movslq	%ecx, %rcx	# D.14998, D.15004
	salq	$3, %rcx	#, D.15004
	addq	%rcx, %rax	# D.15004, D.15008
	movq	(%rax), %rsi	# *_409, D.15004
	movl	-40(%rbp), %eax	# sreg, tmp674
	movl	$1, %edi	#, tmp675
	movl	%eax, %ecx	# tmp674, tmp782
	salq	%cl, %rdi	# tmp782, D.15004
	movq	%rdi, %rax	# D.15004, D.15004
	orq	%rsi, %rax	# D.15004, D.15004
	movq	%rax, (%rdx)	# D.15004, *_400
	.loc 1 1952 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.352
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.353
	movl	-44(%rbp), %ecx	# ureg, tmp676
	movslq	%ecx, %rcx	# tmp676, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_417, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	addq	%rdx, %rdx	# D.15004
	addq	%rdx, %rax	# D.15004, D.15009
	movzwl	(%rax), %edx	# *_421, D.15010
	addl	$1, %edx	#, D.15010
	movw	%dx, (%rax)	# D.15010, *_421
	jmp	.L414	#
.L413:
	.loc 1 1954 0
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.354
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.355
	movl	-44(%rbp), %ecx	# ureg, tmp677
	movslq	%ecx, %rcx	# tmp677, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_429, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15008
	movq	(%rax), %rdx	# *_433, D.15004
	movl	-40(%rbp), %eax	# sreg, tmp678
	movl	%eax, %ecx	# tmp678, tmp784
	shrq	%cl, %rdx	# tmp784, D.15004
	movq	%rdx, %rax	# D.15004, D.15004
	andl	$1, %eax	#, D.15004
	testq	%rax, %rax	# D.15004
	jne	.L414	#,
	.loc 1 1956 0
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.356
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.357
	movl	-44(%rbp), %ecx	# ureg, tmp679
	movslq	%ecx, %rcx	# tmp679, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_441, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	salq	$3, %rdx	#, D.15004
	addq	%rax, %rdx	# qty_phys_sugg.356, D.15008
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.358
	movq	reg_qty(%rip), %rcx	# reg_qty, reg_qty.359
	movl	-44(%rbp), %esi	# ureg, tmp680
	movslq	%esi, %rsi	# tmp680, D.15004
	salq	$2, %rsi	#, D.15004
	addq	%rsi, %rcx	# D.15004, D.15005
	movl	(%rcx), %ecx	# *_450, D.14998
	movslq	%ecx, %rcx	# D.14998, D.15004
	salq	$3, %rcx	#, D.15004
	addq	%rcx, %rax	# D.15004, D.15008
	movq	(%rax), %rsi	# *_454, D.15004
	movl	-40(%rbp), %eax	# sreg, tmp681
	movl	$1, %edi	#, tmp682
	movl	%eax, %ecx	# tmp681, tmp786
	salq	%cl, %rdi	# tmp786, D.15004
	movq	%rdi, %rax	# D.15004, D.15004
	orq	%rsi, %rax	# D.15004, D.15004
	movq	%rax, (%rdx)	# D.15004, *_445
	.loc 1 1957 0
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.360
	movq	reg_qty(%rip), %rdx	# reg_qty, reg_qty.361
	movl	-44(%rbp), %ecx	# ureg, tmp683
	movslq	%ecx, %rcx	# tmp683, D.15004
	salq	$2, %rcx	#, D.15004
	addq	%rcx, %rdx	# D.15004, D.15005
	movl	(%rdx), %edx	# *_462, D.14998
	movslq	%edx, %rdx	# D.14998, D.15004
	addq	%rdx, %rdx	# D.15004
	addq	%rdx, %rax	# D.15004, D.15009
	movzwl	(%rax), %edx	# *_466, D.15010
	addl	$1, %edx	#, D.15010
	movw	%dx, (%rax)	# D.15010, *_466
.L414:
	.loc 1 1959 0
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L412:
	.loc 1 1965 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.362
	movl	-40(%rbp), %edx	# sreg, tmp684
	movslq	%edx, %rdx	# tmp684, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_474, D.14998
	cmpl	$-1, %eax	#, D.14998
	jge	.L415	#,
	.loc 1 1968 0
	movq	cfun(%rip), %rax	# cfun, cfun.363
	movzbl	425(%rax), %eax	# *cfun.363_476, D.15000
	andl	$1, %eax	#, D.15000
	testb	%al, %al	# D.15000
	je	.L416	#,
	.loc 1 1969 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.364
	movl	-44(%rbp), %edx	# ureg, tmp686
	movslq	%edx, %rdx	# tmp686, tmp685
	addq	$4, %rdx	#, tmp687
	movq	(%rax,%rdx,8), %rax	# reg_n_info.364_479->data.reg, D.15011
	movl	32(%rax), %eax	# _480->calls_crossed, D.14998
	.loc 1 1970 0
	testl	%eax, %eax	# D.14998
	setg	%cl	#, D.15012
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.365
	movl	-40(%rbp), %edx	# sreg, tmp689
	movslq	%edx, %rdx	# tmp689, tmp688
	addq	$4, %rdx	#, tmp690
	movq	(%rax,%rdx,8), %rax	# reg_n_info.365_483->data.reg, D.15011
	movl	32(%rax), %eax	# _484->calls_crossed, D.14998
	testl	%eax, %eax	# D.14998
	setg	%al	#, D.15012
	xorl	%ecx, %eax	# D.15012, D.15012
	.loc 1 1969 0
	testb	%al, %al	# D.15012
	je	.L416	#,
.L415:
	.loc 1 1971 0
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L416:
	.loc 1 1977 0
	cmpl	$0, -100(%rbp)	#, already_dead
	jne	.L417	#,
	.loc 1 1977 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# ureg, ureg.366
	movq	-96(%rbp), %rax	# insn, tmp691
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp691,
	call	find_regno_note	#
	testq	%rax, %rax	# D.15007
	je	.L418	#,
.L417:
	.loc 1 1978 0 is_stmt 1
	movq	qty(%rip), %rcx	# qty, qty.367
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.368
	movl	-44(%rbp), %edx	# ureg, tmp692
	movslq	%edx, %rdx	# tmp692, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_495, D.14998
	movslq	%eax, %rdx	# D.14998, D.15004
	movq	%rdx, %rax	# D.15004, tmp693
	salq	$2, %rax	#, tmp693
	addq	%rdx, %rax	# D.15004, tmp693
	addq	%rax, %rax	# tmp693
	addq	%rdx, %rax	# D.15004, tmp693
	salq	$2, %rax	#, tmp694
	addq	%rcx, %rax	# qty.367, D.15006
	movl	28(%rax), %edx	# _499->min_class, D.15013
	movl	-40(%rbp), %eax	# sreg, tmp695
	movl	%edx, %esi	# D.15013,
	movl	%eax, %edi	# tmp695,
	call	reg_meets_class_p	#
	testl	%eax, %eax	# D.14998
	je	.L418	#,
	.loc 1 1981 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.369
	movl	-44(%rbp), %edx	# ureg, tmp696
	movslq	%edx, %rdx	# tmp696, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_505, tmp697
	movl	%eax, -36(%rbp)	# tmp697, sqty
	.loc 1 1982 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.370
	movl	-40(%rbp), %edx	# sreg, tmp698
	movslq	%edx, %rdx	# tmp698, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rax, %rdx	# reg_qty.370, D.15005
	movl	-36(%rbp), %eax	# sqty, tmp699
	movl	%eax, (%rdx)	# tmp699, *_510
	.loc 1 1983 0
	movq	reg_offset(%rip), %rdx	# reg_offset, reg_offset.371
	movl	-40(%rbp), %eax	# sreg, tmp700
	cltq
	addq	%rax, %rdx	# D.15014, D.15015
	movq	reg_offset(%rip), %rcx	# reg_offset, reg_offset.372
	movl	-44(%rbp), %eax	# ureg, tmp701
	cltq
	addq	%rcx, %rax	# reg_offset.372, D.15015
	movzbl	(%rax), %eax	# *_516, D.15016
	movl	%eax, %ecx	# D.15016, D.15017
	movl	-60(%rbp), %eax	# offset, tmp702
	addl	%ecx, %eax	# D.15017, D.15017
	movb	%al, (%rdx)	# D.15016, *_513
	.loc 1 1984 0
	movq	reg_next_in_qty(%rip), %rax	# reg_next_in_qty, reg_next_in_qty.373
	movl	-40(%rbp), %edx	# sreg, tmp703
	movslq	%edx, %rdx	# tmp703, D.15004
	salq	$2, %rdx	#, D.15004
	leaq	(%rax,%rdx), %rcx	#, D.15005
	movq	qty(%rip), %rsi	# qty, qty.374
	movl	-36(%rbp), %eax	# sqty, tmp704
	movslq	%eax, %rdx	# tmp704, D.15004
	movq	%rdx, %rax	# D.15004, tmp705
	salq	$2, %rax	#, tmp705
	addq	%rdx, %rax	# D.15004, tmp705
	addq	%rax, %rax	# tmp705
	addq	%rdx, %rax	# D.15004, tmp705
	salq	$2, %rax	#, tmp706
	addq	%rsi, %rax	# qty.374, D.15006
	movl	24(%rax), %eax	# _529->first_reg, D.14998
	movl	%eax, (%rcx)	# D.14998, *_525
	.loc 1 1985 0
	movq	qty(%rip), %rcx	# qty, qty.375
	movl	-36(%rbp), %eax	# sqty, tmp707
	movslq	%eax, %rdx	# tmp707, D.15004
	movq	%rdx, %rax	# D.15004, tmp708
	salq	$2, %rax	#, tmp708
	addq	%rdx, %rax	# D.15004, tmp708
	addq	%rax, %rax	# tmp708
	addq	%rdx, %rax	# D.15004, tmp708
	salq	$2, %rax	#, tmp709
	leaq	(%rcx,%rax), %rdx	#, D.15006
	movl	-40(%rbp), %eax	# sreg, tmp710
	movl	%eax, 24(%rdx)	# tmp710, _534->first_reg
	.loc 1 1988 0
	movl	-40(%rbp), %edx	# sreg, tmp711
	movl	-36(%rbp), %eax	# sqty, tmp712
	movl	%edx, %esi	# tmp711,
	movl	%eax, %edi	# tmp712,
	call	update_qty_class	#
	.loc 1 1991 0
	movq	qty(%rip), %rcx	# qty, qty.376
	movl	-36(%rbp), %eax	# sqty, tmp713
	movslq	%eax, %rdx	# tmp713, D.15004
	movq	%rdx, %rax	# D.15004, tmp714
	salq	$2, %rax	#, tmp714
	addq	%rdx, %rax	# D.15004, tmp714
	addq	%rax, %rax	# tmp714
	addq	%rdx, %rax	# D.15004, tmp714
	salq	$2, %rax	#, tmp715
	addq	%rax, %rcx	# D.15004, D.15006
	movq	qty(%rip), %rsi	# qty, qty.377
	movl	-36(%rbp), %eax	# sqty, tmp716
	movslq	%eax, %rdx	# tmp716, D.15004
	movq	%rdx, %rax	# D.15004, tmp717
	salq	$2, %rax	#, tmp717
	addq	%rdx, %rax	# D.15004, tmp717
	addq	%rax, %rax	# tmp717
	addq	%rdx, %rax	# D.15004, tmp717
	salq	$2, %rax	#, tmp718
	addq	%rsi, %rax	# qty.377, D.15006
	movl	20(%rax), %edx	# _542->n_calls_crossed, D.14998
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.378
	movl	-40(%rbp), %esi	# sreg, tmp720
	movslq	%esi, %rsi	# tmp720, tmp719
	addq	$4, %rsi	#, tmp721
	movq	(%rax,%rsi,8), %rax	# reg_n_info.378_544->data.reg, D.15011
	movl	32(%rax), %eax	# _545->calls_crossed, D.14998
	addl	%edx, %eax	# D.14998, D.14998
	movl	%eax, 20(%rcx)	# D.14998, _538->n_calls_crossed
	.loc 1 1992 0
	movq	qty(%rip), %rcx	# qty, qty.379
	movl	-36(%rbp), %eax	# sqty, tmp722
	movslq	%eax, %rdx	# tmp722, D.15004
	movq	%rdx, %rax	# D.15004, tmp723
	salq	$2, %rax	#, tmp723
	addq	%rdx, %rax	# D.15004, tmp723
	addq	%rax, %rax	# tmp723
	addq	%rdx, %rax	# D.15004, tmp723
	salq	$2, %rax	#, tmp724
	addq	%rax, %rcx	# D.15004, D.15006
	movq	qty(%rip), %rsi	# qty, qty.380
	movl	-36(%rbp), %eax	# sqty, tmp725
	movslq	%eax, %rdx	# tmp725, D.15004
	movq	%rdx, %rax	# D.15004, tmp726
	salq	$2, %rax	#, tmp726
	addq	%rdx, %rax	# D.15004, tmp726
	addq	%rax, %rax	# tmp726
	addq	%rdx, %rax	# D.15004, tmp726
	salq	$2, %rax	#, tmp727
	addq	%rsi, %rax	# qty.380, D.15006
	movl	(%rax), %edx	# _555->n_refs, D.14998
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.381
	movl	-40(%rbp), %esi	# sreg, tmp729
	movslq	%esi, %rsi	# tmp729, tmp728
	addq	$4, %rsi	#, tmp730
	movq	(%rax,%rsi,8), %rax	# reg_n_info.381_557->data.reg, D.15011
	movl	16(%rax), %eax	# _558->refs, D.14998
	addl	%edx, %eax	# D.14998, D.14998
	movl	%eax, (%rcx)	# D.14998, _551->n_refs
	.loc 1 1993 0
	movq	qty(%rip), %rcx	# qty, qty.382
	movl	-36(%rbp), %eax	# sqty, tmp731
	movslq	%eax, %rdx	# tmp731, D.15004
	movq	%rdx, %rax	# D.15004, tmp732
	salq	$2, %rax	#, tmp732
	addq	%rdx, %rax	# D.15004, tmp732
	addq	%rax, %rax	# tmp732
	addq	%rdx, %rax	# D.15004, tmp732
	salq	$2, %rax	#, tmp733
	addq	%rax, %rcx	# D.15004, D.15006
	movq	qty(%rip), %rsi	# qty, qty.383
	movl	-36(%rbp), %eax	# sqty, tmp734
	movslq	%eax, %rdx	# tmp734, D.15004
	movq	%rdx, %rax	# D.15004, tmp735
	salq	$2, %rax	#, tmp735
	addq	%rdx, %rax	# D.15004, tmp735
	addq	%rax, %rax	# tmp735
	addq	%rdx, %rax	# D.15004, tmp735
	salq	$2, %rax	#, tmp736
	addq	%rsi, %rax	# qty.383, D.15006
	movl	4(%rax), %edx	# _568->freq, D.14998
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.384
	movl	-40(%rbp), %esi	# sreg, tmp738
	movslq	%esi, %rsi	# tmp738, tmp737
	addq	$4, %rsi	#, tmp739
	movq	(%rax,%rsi,8), %rax	# reg_n_info.384_570->data.reg, D.15011
	movl	20(%rax), %eax	# _571->freq, D.14998
	addl	%edx, %eax	# D.14998, D.14998
	movl	%eax, 4(%rcx)	# D.14998, _564->freq
	.loc 1 1994 0
	movl	-56(%rbp), %eax	# usize, tmp740
	cmpl	-52(%rbp), %eax	# ssize, tmp740
	jge	.L419	#,
.LBB26:
	.loc 1 1998 0
	movq	qty(%rip), %rcx	# qty, qty.385
	movl	-36(%rbp), %eax	# sqty, tmp741
	movslq	%eax, %rdx	# tmp741, D.15004
	movq	%rdx, %rax	# D.15004, tmp742
	salq	$2, %rax	#, tmp742
	addq	%rdx, %rax	# D.15004, tmp742
	addq	%rax, %rax	# tmp742
	addq	%rdx, %rax	# D.15004, tmp742
	salq	$2, %rax	#, tmp743
	addq	%rcx, %rax	# qty.385, D.15006
	movl	24(%rax), %eax	# _577->first_reg, tmp744
	movl	%eax, -48(%rbp)	# tmp744, i
	jmp	.L420	#
.L421:
	.loc 1 1999 0 discriminator 2
	movq	reg_offset(%rip), %rdx	# reg_offset, reg_offset.386
	movl	-48(%rbp), %eax	# i, tmp745
	cltq
	addq	%rax, %rdx	# D.15014, D.15015
	movq	reg_offset(%rip), %rcx	# reg_offset, reg_offset.387
	movl	-48(%rbp), %eax	# i, tmp746
	cltq
	addq	%rcx, %rax	# reg_offset.387, D.15015
	movzbl	(%rax), %eax	# *_584, D.15016
	movl	%eax, %ecx	# D.15016, D.15017
	movl	-60(%rbp), %eax	# offset, tmp747
	subl	%eax, %ecx	# D.15017, D.15017
	movl	%ecx, %eax	# D.15017, D.15017
	movb	%al, (%rdx)	# D.15016, *_581
	.loc 1 1998 0 discriminator 2
	movq	reg_next_in_qty(%rip), %rax	# reg_next_in_qty, reg_next_in_qty.388
	movl	-48(%rbp), %edx	# i, tmp748
	movslq	%edx, %rdx	# tmp748, D.15004
	salq	$2, %rdx	#, D.15004
	addq	%rdx, %rax	# D.15004, D.15005
	movl	(%rax), %eax	# *_593, tmp749
	movl	%eax, -48(%rbp)	# tmp749, i
.L420:
	.loc 1 1998 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, i
	jns	.L421	#,
	.loc 1 2001 0 is_stmt 1
	movq	qty(%rip), %rcx	# qty, qty.389
	movl	-36(%rbp), %eax	# sqty, tmp750
	movslq	%eax, %rdx	# tmp750, D.15004
	movq	%rdx, %rax	# D.15004, tmp751
	salq	$2, %rax	#, tmp751
	addq	%rdx, %rax	# D.15004, tmp751
	addq	%rax, %rax	# tmp751
	addq	%rdx, %rax	# D.15004, tmp751
	salq	$2, %rax	#, tmp752
	leaq	(%rcx,%rax), %rdx	#, D.15006
	movl	-52(%rbp), %eax	# ssize, tmp753
	movl	%eax, 16(%rdx)	# tmp753, _598->size
	.loc 1 2002 0
	movq	qty(%rip), %rcx	# qty, qty.390
	movl	-36(%rbp), %eax	# sqty, tmp754
	movslq	%eax, %rdx	# tmp754, D.15004
	movq	%rdx, %rax	# D.15004, tmp755
	salq	$2, %rax	#, tmp755
	addq	%rdx, %rax	# D.15004, tmp755
	addq	%rax, %rax	# tmp755
	addq	%rdx, %rax	# D.15004, tmp755
	salq	$2, %rax	#, tmp756
	leaq	(%rcx,%rax), %rdx	#, D.15006
	movq	-80(%rbp), %rax	# setreg, tmp757
	movzbl	2(%rax), %eax	# setreg_2->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.15002
	movl	%eax, 36(%rdx)	# D.15002, _602->mode
.LBE26:
	.loc 1 1994 0
	jmp	.L422	#
.L419:
	.loc 1 1994 0 is_stmt 0 discriminator 1
	jmp	.L422	#
.L418:
	.loc 1 2006 0 is_stmt 1
	movl	$0, %eax	#, D.14998
	jmp	.L331	#
.L422:
	.loc 1 2008 0
	movl	$1, %eax	#, D.14998
.L331:
	.loc 1 2009 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	combine_regs, .-combine_regs
	.type	reg_meets_class_p, @function
reg_meets_class_p:
.LFB20:
	.loc 1 2019 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# reg, reg
	movl	%esi, -24(%rbp)	# class, class
	.loc 1 2020 0
	movl	-20(%rbp), %eax	# reg, tmp64
	movl	%eax, %edi	# tmp64,
	call	reg_preferred_class	#
	movl	%eax, -4(%rbp)	# tmp65, rclass
	.loc 1 2021 0
	movl	-24(%rbp), %edx	# class, tmp66
	movl	-4(%rbp), %eax	# rclass, tmp67
	movl	%edx, %esi	# tmp66,
	movl	%eax, %edi	# tmp67,
	call	reg_class_subset_p	#
	.loc 1 2022 0
	testl	%eax, %eax	# D.15018
	jne	.L424	#,
	.loc 1 2022 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %edx	# rclass, tmp68
	movl	-24(%rbp), %eax	# class, tmp69
	movl	%edx, %esi	# tmp68,
	movl	%eax, %edi	# tmp69,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.15018
	je	.L425	#,
.L424:
	.loc 1 2022 0 discriminator 1
	movl	$1, %eax	#, iftmp.391
	jmp	.L426	#
.L425:
	.loc 1 2022 0 discriminator 3
	movl	$0, %eax	#, iftmp.391
.L426:
	.loc 1 2023 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	reg_meets_class_p, .-reg_meets_class_p
	.type	update_qty_class, @function
update_qty_class:
.LFB21:
	.loc 1 2031 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# qtyno, qtyno
	movl	%esi, -24(%rbp)	# reg, reg
	.loc 1 2032 0
	movl	-24(%rbp), %eax	# reg, tmp86
	movl	%eax, %edi	# tmp86,
	call	reg_preferred_class	#
	movl	%eax, -4(%rbp)	# tmp87, rclass
	.loc 1 2033 0
	movq	qty(%rip), %rcx	# qty, qty.392
	movl	-20(%rbp), %eax	# qtyno, tmp88
	movslq	%eax, %rdx	# tmp88, D.15019
	movq	%rdx, %rax	# D.15019, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# D.15019, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# D.15019, tmp89
	salq	$2, %rax	#, tmp90
	addq	%rcx, %rax	# qty.392, D.15020
	movl	28(%rax), %edx	# _7->min_class, D.15021
	movl	-4(%rbp), %eax	# rclass, tmp91
	movl	%edx, %esi	# D.15021,
	movl	%eax, %edi	# tmp91,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.15022
	je	.L429	#,
	.loc 1 2034 0
	movq	qty(%rip), %rcx	# qty, qty.393
	movl	-20(%rbp), %eax	# qtyno, tmp92
	movslq	%eax, %rdx	# tmp92, D.15019
	movq	%rdx, %rax	# D.15019, tmp93
	salq	$2, %rax	#, tmp93
	addq	%rdx, %rax	# D.15019, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# D.15019, tmp93
	salq	$2, %rax	#, tmp94
	leaq	(%rcx,%rax), %rdx	#, D.15020
	movl	-4(%rbp), %eax	# rclass, tmp95
	movl	%eax, 28(%rdx)	# tmp95, _13->min_class
.L429:
	.loc 1 2036 0
	movl	-24(%rbp), %eax	# reg, tmp96
	movl	%eax, %edi	# tmp96,
	call	reg_alternate_class	#
	movl	%eax, -4(%rbp)	# tmp97, rclass
	.loc 1 2037 0
	movq	qty(%rip), %rcx	# qty, qty.394
	movl	-20(%rbp), %eax	# qtyno, tmp98
	movslq	%eax, %rdx	# tmp98, D.15019
	movq	%rdx, %rax	# D.15019, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# D.15019, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# D.15019, tmp99
	salq	$2, %rax	#, tmp100
	addq	%rcx, %rax	# qty.394, D.15020
	movl	32(%rax), %edx	# _18->alternate_class, D.15021
	movl	-4(%rbp), %eax	# rclass, tmp101
	movl	%edx, %esi	# D.15021,
	movl	%eax, %edi	# tmp101,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.15022
	je	.L430	#,
	.loc 1 2038 0
	movq	qty(%rip), %rcx	# qty, qty.395
	movl	-20(%rbp), %eax	# qtyno, tmp102
	movslq	%eax, %rdx	# tmp102, D.15019
	movq	%rdx, %rax	# D.15019, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# D.15019, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# D.15019, tmp103
	salq	$2, %rax	#, tmp104
	leaq	(%rcx,%rax), %rdx	#, D.15020
	movl	-4(%rbp), %eax	# rclass, tmp105
	movl	%eax, 32(%rdx)	# tmp105, _24->alternate_class
.L430:
	.loc 1 2040 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.396
	movl	-24(%rbp), %edx	# reg, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	addq	$4, %rdx	#, tmp108
	movq	(%rax,%rdx,8), %rax	# reg_n_info.396_25->data.reg, D.15023
	movzbl	40(%rax), %eax	# _26->changes_mode, D.15024
	testb	%al, %al	# D.15024
	je	.L428	#,
	.loc 1 2041 0
	movq	qty(%rip), %rcx	# qty, qty.397
	movl	-20(%rbp), %eax	# qtyno, tmp109
	movslq	%eax, %rdx	# tmp109, D.15019
	movq	%rdx, %rax	# D.15019, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# D.15019, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.15019, tmp110
	salq	$2, %rax	#, tmp111
	addq	%rcx, %rax	# qty.397, D.15020
	movb	$1, 42(%rax)	#, _31->changes_mode
.L428:
	.loc 1 2042 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	update_qty_class, .-update_qty_class
	.type	reg_is_set, @function
reg_is_set:
.LFB22:
	.loc 1 2058 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	movq	%rsi, -16(%rbp)	# setter, setter
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 2062 0
	movq	-8(%rbp), %rax	# reg, tmp67
	movzwl	(%rax), %eax	# reg_1(D)->code, D.15025
	cmpw	$63, %ax	#, D.15025
	je	.L433	#,
	.loc 1 2063 0
	movq	-8(%rbp), %rax	# reg, tmp68
	movzwl	(%rax), %eax	# reg_1(D)->code, D.15025
	cmpw	$61, %ax	#, D.15025
	je	.L433	#,
	.loc 1 2064 0
	jmp	.L432	#
.L433:
	.loc 1 2070 0
	movl	this_insn_number(%rip), %eax	# this_insn_number, this_insn_number.398
	leal	(%rax,%rax), %edx	#, D.15026
	movq	-16(%rbp), %rax	# setter, tmp69
	movzwl	(%rax), %eax	# setter_6(D)->code, D.15025
	cmpw	$49, %ax	#, D.15025
	sete	%al	#, D.15027
	movzbl	%al, %eax	# D.15027, D.15026
	subl	%eax, %edx	# D.15026, D.15026
	movq	-8(%rbp), %rax	# reg, tmp70
	movl	%edx, %esi	# D.15026,
	movq	%rax, %rdi	# tmp70,
	call	reg_is_born	#
.L432:
	.loc 1 2071 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	reg_is_set, .-reg_is_set
	.type	reg_is_born, @function
reg_is_born:
.LFB23:
	.loc 1 2080 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# reg, reg
	movl	%esi, -44(%rbp)	# birth, birth
	.loc 1 2083 0
	movq	-40(%rbp), %rax	# reg, tmp112
	movzwl	(%rax), %eax	# reg_5(D)->code, D.15028
	cmpw	$63, %ax	#, D.15028
	jne	.L436	#,
	.loc 1 2085 0
	movq	-40(%rbp), %rax	# reg, tmp113
	movq	8(%rax), %rax	# reg_5(D)->fld[0].rtx, D.15029
	movl	8(%rax), %eax	# _7->fld[0].rtuint, D.15030
	movl	%eax, -20(%rbp)	# D.15030, regno
	.loc 1 2086 0
	cmpl	$52, -20(%rbp)	#, regno
	jg	.L438	#,
	.loc 1 2087 0
	movq	-40(%rbp), %rax	# reg, tmp114
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	subreg_hard_regno	#
	movl	%eax, -20(%rbp)	# tmp115, regno
	jmp	.L438	#
.L436:
	.loc 1 2090 0
	movq	-40(%rbp), %rax	# reg, tmp116
	movl	8(%rax), %eax	# reg_5(D)->fld[0].rtuint, D.15030
	movl	%eax, -20(%rbp)	# D.15030, regno
.L438:
	.loc 1 2092 0
	cmpl	$52, -20(%rbp)	#, regno
	jg	.L439	#,
	.loc 1 2094 0
	movq	-40(%rbp), %rax	# reg, tmp117
	movzbl	2(%rax), %eax	# reg_5(D)->mode, D.15031
	movzbl	%al, %ecx	# D.15031, D.15032
	movl	-20(%rbp), %eax	# regno, tmp118
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.15032,
	movl	%eax, %edi	# tmp118,
	call	mark_life	#
	.loc 1 2098 0
	movl	this_insn_number(%rip), %eax	# this_insn_number, this_insn_number.399
	addl	%eax, %eax	# D.15033
	cmpl	-44(%rbp), %eax	# birth, D.15033
	jle	.L435	#,
	.loc 1 2099 0
	movl	this_insn_number(%rip), %eax	# this_insn_number, this_insn_number.400
	leal	(%rax,%rax), %ecx	#, D.15033
	movq	-40(%rbp), %rax	# reg, tmp119
	movzbl	2(%rax), %eax	# reg_5(D)->mode, D.15031
	movzbl	%al, %esi	# D.15031, D.15032
	movl	-44(%rbp), %edx	# birth, tmp120
	movl	-20(%rbp), %eax	# regno, tmp121
	movl	%ecx, %r8d	# D.15033,
	movl	%edx, %ecx	# tmp120,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp121,
	call	post_mark_life	#
	jmp	.L435	#
.L439:
	.loc 1 2103 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.401
	movl	-20(%rbp), %edx	# regno, tmp122
	movslq	%edx, %rdx	# tmp122, D.15034
	salq	$2, %rdx	#, D.15034
	addq	%rdx, %rax	# D.15034, D.15035
	movl	(%rax), %eax	# *_25, D.15033
	cmpl	$-2, %eax	#, D.15033
	jne	.L442	#,
	.loc 1 2104 0
	movq	cfun(%rip), %rax	# cfun, cfun.402
	movq	24(%rax), %rax	# cfun.402_27->emit, D.15036
	movq	80(%rax), %rax	# _28->x_regno_reg_rtx, D.15037
	movl	-20(%rbp), %edx	# regno, tmp123
	movslq	%edx, %rdx	# tmp123, D.15034
	salq	$3, %rdx	#, D.15034
	addq	%rdx, %rax	# D.15034, D.15037
	movq	(%rax), %rax	# *_32, D.15029
	movzbl	2(%rax), %eax	# _33->mode, D.15031
	movzbl	%al, %eax	# D.15031, D.15033
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15031
	movzbl	%al, %edx	# D.15031, D.15033
	movl	target_flags(%rip), %eax	# target_flags, target_flags.404
	andl	$33554432, %eax	#, D.15033
	testl	%eax, %eax	# D.15033
	je	.L443	#,
	.loc 1 2104 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.403
	jmp	.L444	#
.L443:
	.loc 1 2104 0 discriminator 2
	movl	$4, %eax	#, iftmp.403
.L444:
	.loc 1 2104 0 discriminator 3
	addl	%edx, %eax	# D.15033, D.15033
	subl	$1, %eax	#, D.15033
	movl	target_flags(%rip), %edx	# target_flags, target_flags.406
	andl	$33554432, %edx	#, D.15033
	testl	%edx, %edx	# D.15033
	je	.L445	#,
	.loc 1 2104 0 discriminator 1
	movl	$8, %ebx	#, iftmp.405
	jmp	.L446	#
.L445:
	.loc 1 2104 0 discriminator 2
	movl	$4, %ebx	#, iftmp.405
.L446:
	.loc 1 2104 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.405
	movl	%eax, %edx	# tmp125, D.15033
	movq	-40(%rbp), %rax	# reg, tmp127
	movzbl	2(%rax), %eax	# reg_5(D)->mode, D.15031
	movzbl	%al, %esi	# D.15031, D.15032
	movl	-44(%rbp), %ecx	# birth, tmp128
	movl	-20(%rbp), %eax	# regno, tmp129
	movl	%eax, %edi	# tmp129,
	call	alloc_qty	#
.L442:
	.loc 1 2107 0 is_stmt 1
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.407
	movl	-20(%rbp), %edx	# regno, tmp130
	movslq	%edx, %rdx	# tmp130, D.15034
	salq	$2, %rdx	#, D.15034
	addq	%rdx, %rax	# D.15034, D.15035
	movl	(%rax), %eax	# *_54, D.15033
	testl	%eax, %eax	# D.15033
	js	.L435	#,
	.loc 1 2108 0
	movq	qty(%rip), %rcx	# qty, qty.408
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.409
	movl	-20(%rbp), %edx	# regno, tmp131
	movslq	%edx, %rdx	# tmp131, D.15034
	salq	$2, %rdx	#, D.15034
	addq	%rdx, %rax	# D.15034, D.15035
	movl	(%rax), %eax	# *_60, D.15033
	movslq	%eax, %rdx	# D.15033, D.15034
	movq	%rdx, %rax	# D.15034, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.15034, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# D.15034, tmp132
	salq	$2, %rax	#, tmp133
	addq	%rcx, %rax	# qty.408, D.15038
	movl	$-1, 12(%rax)	#, _64->death
.L435:
	.loc 1 2110 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	reg_is_born, .-reg_is_born
	.type	wipe_dead_reg, @function
wipe_dead_reg:
.LFB24:
	.loc 1 2121 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movl	%esi, -28(%rbp)	# output_p, output_p
	.loc 1 2122 0
	movq	-24(%rbp), %rax	# reg, tmp108
	movl	8(%rax), %eax	# reg_6(D)->fld[0].rtuint, D.15039
	movl	%eax, -12(%rbp)	# D.15039, regno
	.loc 1 2135 0
	movq	this_insn(%rip), %rax	# this_insn, this_insn.410
	movq	32(%rax), %rax	# this_insn.410_9->fld[3].rtx, D.15040
	movzwl	(%rax), %eax	# _10->code, D.15041
	cmpw	$39, %ax	#, D.15041
	jne	.L448	#,
	.loc 1 2136 0
	movq	this_insn(%rip), %rax	# this_insn, this_insn.411
	movq	%rax, %rdi	# this_insn.411,
	call	multiple_sets	#
	testl	%eax, %eax	# D.15042
	je	.L448	#,
.LBB27:
	.loc 1 2139 0
	movq	this_insn(%rip), %rax	# this_insn, this_insn.412
	movq	32(%rax), %rax	# this_insn.412_15->fld[3].rtx, D.15040
	movq	8(%rax), %rax	# _16->fld[0].rtvec, D.15043
	movl	(%rax), %eax	# _17->num_elem, D.15042
	subl	$1, %eax	#, tmp109
	movl	%eax, -16(%rbp)	# tmp109, i
	jmp	.L449	#
.L451:
.LBB28:
	.loc 1 2141 0
	movq	this_insn(%rip), %rax	# this_insn, this_insn.413
	movq	32(%rax), %rax	# this_insn.413_20->fld[3].rtx, D.15040
	movq	8(%rax), %rax	# _21->fld[0].rtvec, D.15043
	movl	-16(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# _22->elem, tmp112
	movq	%rax, -8(%rbp)	# tmp112, set
	.loc 1 2142 0
	movq	-8(%rbp), %rax	# set, tmp113
	movzwl	(%rax), %eax	# set_23->code, D.15041
	cmpw	$47, %ax	#, D.15041
	jne	.L450	#,
	.loc 1 2143 0
	movq	-8(%rbp), %rax	# set, tmp114
	movq	8(%rax), %rax	# set_23->fld[0].rtx, D.15040
	movzwl	(%rax), %eax	# _25->code, D.15041
	cmpw	$61, %ax	#, D.15041
	je	.L450	#,
	.loc 1 2144 0
	movq	-8(%rbp), %rax	# set, tmp115
	movq	8(%rax), %rdx	# set_23->fld[0].rtx, D.15040
	movq	-24(%rbp), %rax	# reg, tmp116
	movq	%rdx, %rsi	# D.15040,
	movq	%rax, %rdi	# tmp116,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15042
	jne	.L450	#,
	.loc 1 2145 0
	movq	-8(%rbp), %rax	# set, tmp117
	movq	8(%rax), %rdx	# set_23->fld[0].rtx, D.15040
	movq	-24(%rbp), %rax	# reg, tmp118
	movq	%rdx, %rsi	# D.15040,
	movq	%rax, %rdi	# tmp118,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.15042
	je	.L450	#,
	.loc 1 2146 0
	movl	$1, -28(%rbp)	#, output_p
.L450:
.LBE28:
	.loc 1 2139 0
	subl	$1, -16(%rbp)	#, i
.L449:
	.loc 1 2139 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	jns	.L451	#,
.L448:
.LBE27:
	.loc 1 2153 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, output_p
	jne	.L452	#,
	.loc 1 2153 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %edx	# regno, regno.414
	movq	this_insn(%rip), %rax	# this_insn, this_insn.415
	movl	$2, %esi	#,
	movq	%rax, %rdi	# this_insn.415,
	call	find_regno_note	#
	testq	%rax, %rax	# D.15040
	je	.L452	#,
	.loc 1 2154 0 is_stmt 1
	movl	$1, -28(%rbp)	#, output_p
.L452:
	.loc 1 2156 0
	cmpl	$52, -12(%rbp)	#, regno
	jg	.L453	#,
	.loc 1 2158 0
	movq	-24(%rbp), %rax	# reg, tmp119
	movzbl	2(%rax), %eax	# reg_6(D)->mode, D.15044
	movzbl	%al, %ecx	# D.15044, D.15045
	movl	-12(%rbp), %eax	# regno, tmp120
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.15045,
	movl	%eax, %edi	# tmp120,
	call	mark_life	#
	.loc 1 2163 0
	cmpl	$0, -28(%rbp)	#, output_p
	je	.L447	#,
	.loc 1 2165 0
	movl	this_insn_number(%rip), %eax	# this_insn_number, this_insn_number.416
	addl	%eax, %eax	# D.15042
	.loc 1 2164 0
	leal	1(%rax), %ecx	#, D.15042
	movl	this_insn_number(%rip), %eax	# this_insn_number, this_insn_number.417
	leal	(%rax,%rax), %edx	#, D.15042
	movq	-24(%rbp), %rax	# reg, tmp121
	movzbl	2(%rax), %eax	# reg_6(D)->mode, D.15044
	movzbl	%al, %esi	# D.15044, D.15045
	movl	-12(%rbp), %eax	# regno, tmp122
	movl	%ecx, %r8d	# D.15042,
	movl	%edx, %ecx	# D.15042,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp122,
	call	post_mark_life	#
	jmp	.L447	#
.L453:
	.loc 1 2168 0
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.418
	movl	-12(%rbp), %edx	# regno, tmp123
	movslq	%edx, %rdx	# tmp123, D.15046
	salq	$2, %rdx	#, D.15046
	addq	%rdx, %rax	# D.15046, D.15047
	movl	(%rax), %eax	# *_49, D.15042
	testl	%eax, %eax	# D.15042
	js	.L447	#,
	.loc 1 2169 0
	movq	qty(%rip), %rcx	# qty, qty.419
	movq	reg_qty(%rip), %rax	# reg_qty, reg_qty.420
	movl	-12(%rbp), %edx	# regno, tmp124
	movslq	%edx, %rdx	# tmp124, D.15046
	salq	$2, %rdx	#, D.15046
	addq	%rdx, %rax	# D.15046, D.15047
	movl	(%rax), %eax	# *_55, D.15042
	movslq	%eax, %rdx	# D.15042, D.15046
	movq	%rdx, %rax	# D.15046, tmp125
	salq	$2, %rax	#, tmp125
	addq	%rdx, %rax	# D.15046, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rdx, %rax	# D.15046, tmp125
	salq	$2, %rax	#, tmp126
	addq	%rcx, %rax	# qty.419, D.15048
	movl	this_insn_number(%rip), %edx	# this_insn_number, this_insn_number.421
	leal	(%rdx,%rdx), %ecx	#, D.15042
	movl	-28(%rbp), %edx	# output_p, tmp127
	addl	%ecx, %edx	# D.15042, D.15042
	movl	%edx, 12(%rax)	# D.15042, _59->death
.L447:
	.loc 1 2170 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	wipe_dead_reg, .-wipe_dead_reg
	.type	find_free_reg, @function
find_free_reg:
.LFB25:
	.loc 1 2193 0
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
	movl	%edi, -52(%rbp)	# class, class
	movl	%esi, -56(%rbp)	# mode, mode
	movl	%edx, -60(%rbp)	# qtyno, qtyno
	movl	%ecx, -64(%rbp)	# accept_call_clobbered, accept_call_clobbered
	movl	%r8d, -68(%rbp)	# just_try_suggested, just_try_suggested
	movl	%r9d, -72(%rbp)	# born_index, born_index
	.loc 1 2205 0
	cmpl	$0, -72(%rbp)	#, born_index
	js	.L457	#,
	.loc 1 2205 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# born_index, tmp169
	cmpl	16(%rbp), %eax	# dead_index, tmp169
	jle	.L458	#,
.L457:
	.loc 1 2206 0 is_stmt 1
	movl	$__FUNCTION__.11458, %edx	#,
	movl	$2206, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L458:
	.loc 1 2210 0
	movq	cfun(%rip), %rax	# cfun, cfun.422
	movzbl	425(%rax), %eax	# *cfun.422_21, D.15050
	andl	$1, %eax	#, D.15050
	testb	%al, %al	# D.15050
	je	.L459	#,
	.loc 1 2211 0
	movq	qty(%rip), %rcx	# qty, qty.423
	movl	-60(%rbp), %eax	# qtyno, tmp170
	movslq	%eax, %rdx	# tmp170, D.15051
	movq	%rdx, %rax	# D.15051, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.15051, tmp171
	addq	%rax, %rax	# tmp171
	addq	%rdx, %rax	# D.15051, tmp171
	salq	$2, %rax	#, tmp172
	addq	%rcx, %rax	# qty.423, D.15052
	movl	20(%rax), %eax	# _28->n_calls_crossed, D.15049
	testl	%eax, %eax	# D.15049
	jle	.L459	#,
	.loc 1 2212 0
	movl	$-1, %eax	#, D.15049
	jmp	.L460	#
.L459:
	.loc 1 2214 0
	cmpl	$0, -64(%rbp)	#, accept_call_clobbered
	je	.L461	#,
	.loc 1 2215 0
	movq	call_fixed_reg_set(%rip), %rbx	# call_fixed_reg_set, used
	jmp	.L462	#
.L461:
	.loc 1 2216 0
	movq	qty(%rip), %rcx	# qty, qty.424
	movl	-60(%rbp), %eax	# qtyno, tmp173
	movslq	%eax, %rdx	# tmp173, D.15051
	movq	%rdx, %rax	# D.15051, tmp174
	salq	$2, %rax	#, tmp174
	addq	%rdx, %rax	# D.15051, tmp174
	addq	%rax, %rax	# tmp174
	addq	%rdx, %rax	# D.15051, tmp174
	salq	$2, %rax	#, tmp175
	addq	%rcx, %rax	# qty.424, D.15052
	movl	20(%rax), %eax	# _36->n_calls_crossed, D.15049
	testl	%eax, %eax	# D.15049
	jne	.L463	#,
	.loc 1 2217 0
	movq	fixed_reg_set(%rip), %rbx	# fixed_reg_set, used
	jmp	.L462	#
.L463:
	.loc 1 2219 0
	movq	call_used_reg_set(%rip), %rbx	# call_used_reg_set, used
.L462:
	.loc 1 2221 0
	cmpl	$0, -64(%rbp)	#, accept_call_clobbered
	je	.L464	#,
	.loc 1 2222 0
	movq	losing_caller_save_reg_set(%rip), %rax	# losing_caller_save_reg_set, losing_caller_save_reg_set.425
	orq	%rax, %rbx	# losing_caller_save_reg_set.425, used
.L464:
	.loc 1 2224 0
	movl	-72(%rbp), %eax	# born_index, tmp176
	movl	%eax, -32(%rbp)	# tmp176, ins
	jmp	.L465	#
.L466:
	.loc 1 2225 0 discriminator 2
	movq	regs_live_at(%rip), %rax	# regs_live_at, regs_live_at.426
	movl	-32(%rbp), %edx	# ins, tmp177
	movslq	%edx, %rdx	# tmp177, D.15051
	salq	$3, %rdx	#, D.15051
	addq	%rdx, %rax	# D.15051, D.15053
	movq	(%rax), %rax	# *_46, D.15051
	orq	%rax, %rbx	# D.15051, used
	.loc 1 2224 0 discriminator 2
	addl	$1, -32(%rbp)	#, ins
.L465:
	.loc 1 2224 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# ins, tmp178
	cmpl	16(%rbp), %eax	# dead_index, tmp178
	jl	.L466	#,
	.loc 1 2227 0 is_stmt 1
	movl	-52(%rbp), %eax	# class, class.427
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15051
	notq	%rax	# D.15051
	orq	%rax, %rbx	# D.15051, used
	.loc 1 2236 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L467	#
.L468:
	.loc 1 2237 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp181
	cltq
	movl	eliminables.11457(,%rax,8), %eax	# eliminables[i_1].from, D.15049
	movl	$1, %edx	#, tmp182
	movl	%eax, %ecx	# D.15049, tmp230
	salq	%cl, %rdx	# tmp230, D.15051
	movq	%rdx, %rax	# D.15051, D.15051
	orq	%rax, %rbx	# D.15051, used
	.loc 1 2236 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L467:
	.loc 1 2236 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, i
	jle	.L468	#,
	.loc 1 2241 0 is_stmt 1
	orq	$64, %rbx	#, used
	.loc 1 2259 0
	movq	%rbx, %r12	# used, first_used
	.loc 1 2261 0
	cmpl	$0, -68(%rbp)	#, just_try_suggested
	je	.L469	#,
	.loc 1 2263 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.428
	movl	-60(%rbp), %edx	# qtyno, tmp183
	movslq	%edx, %rdx	# tmp183, D.15051
	addq	%rdx, %rdx	# D.15051
	addq	%rdx, %rax	# D.15051, D.15054
	movzwl	(%rax), %eax	# *_66, D.15055
	testw	%ax, %ax	# D.15055
	je	.L470	#,
	.loc 1 2264 0
	movq	qty_phys_copy_sugg(%rip), %rax	# qty_phys_copy_sugg, qty_phys_copy_sugg.429
	movl	-60(%rbp), %edx	# qtyno, tmp184
	movslq	%edx, %rdx	# tmp184, D.15051
	salq	$3, %rdx	#, D.15051
	addq	%rdx, %rax	# D.15051, D.15053
	movq	(%rax), %rax	# *_71, D.15051
	notq	%rax	# D.15051
	orq	%rax, %r12	# D.15051, first_used
	jmp	.L469	#
.L470:
	.loc 1 2266 0
	movq	qty_phys_sugg(%rip), %rax	# qty_phys_sugg, qty_phys_sugg.430
	movl	-60(%rbp), %edx	# qtyno, tmp185
	movslq	%edx, %rdx	# tmp185, D.15051
	salq	$3, %rdx	#, D.15051
	addq	%rdx, %rax	# D.15051, D.15053
	movq	(%rax), %rax	# *_78, D.15051
	notq	%rax	# D.15051
	orq	%rax, %r12	# D.15051, first_used
.L469:
	.loc 1 2270 0
	movq	reg_class_contents+192(%rip), %rax	# reg_class_contents, D.15051
	movq	%r12, %rdx	# first_used, D.15051
	notq	%rdx	# D.15051
	andq	%rdx, %rax	# D.15051, D.15051
	testq	%rax, %rax	# D.15051
	jne	.L471	#,
	.loc 1 2270 0 is_stmt 0 discriminator 1
	jmp	.L472	#
.L471:
	.loc 1 2274 0 is_stmt 1
	movl	$0, -36(%rbp)	#, i
	jmp	.L473	#
.L499:
.LBB29:
	.loc 1 2277 0
	movl	-36(%rbp), %eax	# i, tmp187
	cltq
	movl	reg_alloc_order(,%rax,4), %eax	# reg_alloc_order, tmp188
	movl	%eax, -24(%rbp)	# tmp188, regno
	.loc 1 2281 0
	movl	-24(%rbp), %eax	# regno, tmp189
	movq	%r12, %rdi	# first_used, D.15051
	movl	%eax, %ecx	# tmp189, tmp233
	shrq	%cl, %rdi	# tmp233, D.15051
	movq	%rdi, %rax	# D.15051, D.15051
	andl	$1, %eax	#, D.15051
	testq	%rax, %rax	# D.15051
	jne	.L474	#,
	.loc 1 2282 0
	movl	-56(%rbp), %edx	# mode, tmp190
	movl	-24(%rbp), %eax	# regno, tmp191
	movl	%edx, %esi	# tmp190,
	movl	%eax, %edi	# tmp191,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15049
	je	.L474	#,
.LBB30:
	.loc 1 2288 0
	cmpl	$7, -24(%rbp)	#, regno
	jle	.L475	#,
	.loc 1 2288 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, regno
	jle	.L476	#,
.L475:
	.loc 1 2288 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, regno
	jle	.L477	#,
	.loc 1 2288 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L476	#,
.L477:
	.loc 1 2288 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, regno
	jle	.L478	#,
	.loc 1 2288 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jle	.L476	#,
.L478:
	.loc 1 2288 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L479	#,
	.loc 1 2288 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, regno
	jg	.L479	#,
.L476:
	movl	-56(%rbp), %eax	# mode, mode.433
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15056
	cmpl	$5, %eax	#, D.15056
	je	.L480	#,
	.loc 1 2288 0 discriminator 2
	movl	-56(%rbp), %eax	# mode, mode.434
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15056
	cmpl	$6, %eax	#, D.15056
	jne	.L481	#,
.L480:
	.loc 1 2288 0 discriminator 1
	movl	$2, %eax	#, iftmp.432
	jmp	.L482	#
.L481:
	movl	$1, %eax	#, iftmp.432
.L482:
	.loc 1 2288 0 discriminator 3
	jmp	.L483	#
.L479:
	.loc 1 2288 0 discriminator 2
	cmpl	$18, -56(%rbp)	#, mode
	jne	.L484	#,
	.loc 1 2288 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.437
	andl	$33554432, %eax	#, D.15049
	testl	%eax, %eax	# D.15049
	je	.L485	#,
	movl	$2, %eax	#, iftmp.436
	jmp	.L483	#
.L485:
	.loc 1 2288 0 discriminator 2
	movl	$3, %eax	#, iftmp.436
	jmp	.L483	#
.L484:
	cmpl	$24, -56(%rbp)	#, mode
	jne	.L488	#,
	.loc 1 2288 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.440
	andl	$33554432, %eax	#, D.15049
	testl	%eax, %eax	# D.15049
	je	.L489	#,
	movl	$4, %eax	#, iftmp.439
	jmp	.L483	#
.L489:
	.loc 1 2288 0 discriminator 2
	movl	$6, %eax	#, iftmp.439
	jmp	.L483	#
.L488:
	movl	-56(%rbp), %eax	# mode, mode.441
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15050
	movzbl	%al, %edx	# D.15050, D.15049
	movl	target_flags(%rip), %eax	# target_flags, target_flags.443
	andl	$33554432, %eax	#, D.15049
	testl	%eax, %eax	# D.15049
	je	.L492	#,
	.loc 1 2288 0 discriminator 1
	movl	$8, %eax	#, iftmp.442
	jmp	.L493	#
.L492:
	.loc 1 2288 0 discriminator 2
	movl	$4, %eax	#, iftmp.442
.L493:
	.loc 1 2288 0 discriminator 3
	addl	%edx, %eax	# D.15049, D.15049
	subl	$1, %eax	#, D.15049
	movl	target_flags(%rip), %edx	# target_flags, target_flags.445
	andl	$33554432, %edx	#, D.15049
	testl	%edx, %edx	# D.15049
	je	.L494	#,
	.loc 1 2288 0 discriminator 1
	movl	$8, %esi	#, iftmp.444
	jmp	.L495	#
.L494:
	.loc 1 2288 0 discriminator 2
	movl	$4, %esi	#, iftmp.444
.L495:
	.loc 1 2288 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.444
.L483:
	movl	%eax, -20(%rbp)	# iftmp.431, size1
	.loc 1 2289 0 is_stmt 1 discriminator 3
	movl	$1, -28(%rbp)	#, j
	jmp	.L496	#
.L498:
	.loc 1 2289 0 is_stmt 0 discriminator 1
	addl	$1, -28(%rbp)	#, j
.L496:
	movl	-28(%rbp), %eax	# j, tmp197
	cmpl	-20(%rbp), %eax	# size1, tmp197
	jge	.L497	#,
	.loc 1 2289 0 discriminator 2
	movl	-28(%rbp), %eax	# j, tmp198
	movl	-24(%rbp), %edx	# regno, tmp199
	addl	%edx, %eax	# tmp199, D.15049
	movq	%rbx, %rdi	# used, D.15051
	movl	%eax, %ecx	# D.15049, tmp236
	shrq	%cl, %rdi	# tmp236, D.15051
	movq	%rdi, %rax	# D.15051, D.15051
	andl	$1, %eax	#, D.15051
	testq	%rax, %rax	# D.15051
	je	.L498	#,
.L497:
	.loc 1 2290 0 is_stmt 1
	movl	-28(%rbp), %eax	# j, tmp200
	cmpl	-20(%rbp), %eax	# size1, tmp200
	jne	.L474	#,
	.loc 1 2294 0
	movl	-72(%rbp), %edx	# born_index, tmp201
	movl	-56(%rbp), %esi	# mode, tmp202
	movl	-24(%rbp), %eax	# regno, tmp203
	movl	16(%rbp), %r8d	# dead_index,
	movl	%edx, %ecx	# tmp201,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp203,
	call	post_mark_life	#
	.loc 1 2295 0
	movl	-24(%rbp), %eax	# regno, D.15049
	jmp	.L460	#
.L474:
.LBE30:
.LBE29:
	.loc 1 2274 0
	addl	$1, -36(%rbp)	#, i
.L473:
	.loc 1 2274 0 is_stmt 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, i
	jle	.L499	#,
.L472:
	.loc 1 2311 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, just_try_suggested
	je	.L500	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.446
	movl	-60(%rbp), %edx	# qtyno, tmp204
	movslq	%edx, %rdx	# tmp204, D.15051
	addq	%rdx, %rdx	# D.15051
	addq	%rdx, %rax	# D.15051, D.15054
	movzwl	(%rax), %eax	# *_135, D.15055
	testw	%ax, %ax	# D.15055
	je	.L500	#,
	.loc 1 2312 0 is_stmt 1
	movq	qty_phys_num_sugg(%rip), %rax	# qty_phys_num_sugg, qty_phys_num_sugg.447
	movl	-60(%rbp), %edx	# qtyno, tmp205
	movslq	%edx, %rdx	# tmp205, D.15051
	addq	%rdx, %rdx	# D.15051
	addq	%rdx, %rax	# D.15051, D.15054
	movzwl	(%rax), %eax	# *_140, D.15055
	testw	%ax, %ax	# D.15055
	je	.L500	#,
	.loc 1 2315 0
	movq	qty_phys_num_copy_sugg(%rip), %rax	# qty_phys_num_copy_sugg, qty_phys_num_copy_sugg.448
	movl	-60(%rbp), %edx	# qtyno, tmp206
	movslq	%edx, %rdx	# tmp206, D.15051
	addq	%rdx, %rdx	# D.15051
	addq	%rdx, %rax	# D.15051, D.15054
	movw	$0, (%rax)	#, *_145
	.loc 1 2316 0
	movl	-72(%rbp), %r8d	# born_index, tmp207
	movl	-64(%rbp), %ecx	# accept_call_clobbered, tmp208
	movl	-60(%rbp), %edx	# qtyno, tmp209
	movl	-56(%rbp), %esi	# mode, tmp210
	movl	-52(%rbp), %eax	# class, tmp211
	movl	16(%rbp), %edi	# dead_index, tmp212
	movl	%edi, (%rsp)	# tmp212,
	movl	%r8d, %r9d	# tmp207,
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp211,
	call	find_free_reg	#
	jmp	.L460	#
.L500:
	.loc 1 2324 0
	cmpl	$0, -64(%rbp)	#, accept_call_clobbered
	jne	.L501	#,
	.loc 1 2325 0
	movl	flag_caller_saves(%rip), %eax	# flag_caller_saves, flag_caller_saves.449
	testl	%eax, %eax	# flag_caller_saves.449
	je	.L501	#,
	.loc 1 2326 0
	cmpl	$0, -68(%rbp)	#, just_try_suggested
	jne	.L501	#,
	.loc 1 2327 0
	movq	qty(%rip), %rcx	# qty, qty.450
	movl	-60(%rbp), %eax	# qtyno, tmp213
	movslq	%eax, %rdx	# tmp213, D.15051
	movq	%rdx, %rax	# D.15051, tmp214
	salq	$2, %rax	#, tmp214
	addq	%rdx, %rax	# D.15051, tmp214
	addq	%rax, %rax	# tmp214
	addq	%rdx, %rax	# D.15051, tmp214
	salq	$2, %rax	#, tmp215
	addq	%rcx, %rax	# qty.450, D.15052
	movl	20(%rax), %eax	# _151->n_calls_crossed, D.15049
	testl	%eax, %eax	# D.15049
	je	.L501	#,
	.loc 1 2328 0
	movq	qty(%rip), %rcx	# qty, qty.451
	movl	-60(%rbp), %eax	# qtyno, tmp216
	movslq	%eax, %rdx	# tmp216, D.15051
	movq	%rdx, %rax	# D.15051, tmp217
	salq	$2, %rax	#, tmp217
	addq	%rdx, %rax	# D.15051, tmp217
	addq	%rax, %rax	# tmp217
	addq	%rdx, %rax	# D.15051, tmp217
	salq	$2, %rax	#, tmp218
	addq	%rcx, %rax	# qty.451, D.15052
	movl	20(%rax), %eax	# _156->n_calls_crossed, D.15049
	leal	0(,%rax,4), %esi	#, D.15049
	movq	qty(%rip), %rcx	# qty, qty.452
	movl	-60(%rbp), %eax	# qtyno, tmp219
	movslq	%eax, %rdx	# tmp219, D.15051
	movq	%rdx, %rax	# D.15051, tmp220
	salq	$2, %rax	#, tmp220
	addq	%rdx, %rax	# D.15051, tmp220
	addq	%rax, %rax	# tmp220
	addq	%rdx, %rax	# D.15051, tmp220
	salq	$2, %rax	#, tmp221
	addq	%rcx, %rax	# qty.452, D.15052
	movl	(%rax), %eax	# _162->n_refs, D.15049
	cmpl	%eax, %esi	# D.15049, D.15049
	jge	.L501	#,
	.loc 1 2331 0
	movl	-72(%rbp), %edi	# born_index, tmp222
	movl	-60(%rbp), %edx	# qtyno, tmp223
	movl	-56(%rbp), %esi	# mode, tmp224
	movl	-52(%rbp), %eax	# class, tmp225
	movl	16(%rbp), %ecx	# dead_index, tmp226
	movl	%ecx, (%rsp)	# tmp226,
	movl	%edi, %r9d	# tmp222,
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp225,
	call	find_free_reg	#
	movl	%eax, -36(%rbp)	# tmp227, i
	.loc 1 2332 0
	cmpl	$0, -36(%rbp)	#, i
	js	.L502	#,
	.loc 1 2333 0
	movl	$1, caller_save_needed(%rip)	#, caller_save_needed
.L502:
	.loc 1 2334 0
	movl	-36(%rbp), %eax	# i, D.15049
	jmp	.L460	#
.L501:
	.loc 1 2336 0
	movl	$-1, %eax	#, D.15049
.L460:
	.loc 1 2337 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	find_free_reg, .-find_free_reg
	.type	mark_life, @function
mark_life:
.LFB26:
	.loc 1 2348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# regno, regno
	movl	%esi, -32(%rbp)	# mode, mode
	movl	%edx, -36(%rbp)	# life, life
	.loc 1 2349 0
	cmpl	$7, -28(%rbp)	#, regno
	jle	.L504	#,
	.loc 1 2349 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jle	.L505	#,
.L504:
	.loc 1 2349 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jle	.L506	#,
	.loc 1 2349 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L505	#,
.L506:
	.loc 1 2349 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jle	.L507	#,
	.loc 1 2349 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jle	.L505	#,
.L507:
	.loc 1 2349 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L508	#,
	.loc 1 2349 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	jg	.L508	#,
.L505:
	movl	-32(%rbp), %eax	# mode, mode.455
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15059
	cmpl	$5, %eax	#, D.15059
	je	.L509	#,
	.loc 1 2349 0 discriminator 2
	movl	-32(%rbp), %eax	# mode, mode.456
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15059
	cmpl	$6, %eax	#, D.15059
	jne	.L510	#,
.L509:
	.loc 1 2349 0 discriminator 1
	movl	$2, %eax	#, iftmp.454
	jmp	.L511	#
.L510:
	movl	$1, %eax	#, iftmp.454
.L511:
	.loc 1 2349 0 discriminator 3
	jmp	.L512	#
.L508:
	.loc 1 2349 0 discriminator 2
	cmpl	$18, -32(%rbp)	#, mode
	jne	.L513	#,
	.loc 1 2349 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.459
	andl	$33554432, %eax	#, D.15057
	testl	%eax, %eax	# D.15057
	je	.L514	#,
	movl	$2, %eax	#, iftmp.458
	jmp	.L512	#
.L514:
	.loc 1 2349 0 discriminator 2
	movl	$3, %eax	#, iftmp.458
	jmp	.L512	#
.L513:
	cmpl	$24, -32(%rbp)	#, mode
	jne	.L517	#,
	.loc 1 2349 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.462
	andl	$33554432, %eax	#, D.15057
	testl	%eax, %eax	# D.15057
	je	.L518	#,
	movl	$4, %eax	#, iftmp.461
	jmp	.L512	#
.L518:
	.loc 1 2349 0 discriminator 2
	movl	$6, %eax	#, iftmp.461
	jmp	.L512	#
.L517:
	movl	-32(%rbp), %eax	# mode, mode.463
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15058
	movzbl	%al, %edx	# D.15058, D.15057
	movl	target_flags(%rip), %eax	# target_flags, target_flags.465
	andl	$33554432, %eax	#, D.15057
	testl	%eax, %eax	# D.15057
	je	.L521	#,
	.loc 1 2349 0 discriminator 1
	movl	$8, %eax	#, iftmp.464
	jmp	.L522	#
.L521:
	.loc 1 2349 0 discriminator 2
	movl	$4, %eax	#, iftmp.464
.L522:
	.loc 1 2349 0 discriminator 3
	addl	%edx, %eax	# D.15057, D.15057
	subl	$1, %eax	#, D.15057
	movl	target_flags(%rip), %edx	# target_flags, target_flags.467
	andl	$33554432, %edx	#, D.15057
	testl	%edx, %edx	# D.15057
	je	.L523	#,
	.loc 1 2349 0 discriminator 1
	movl	$8, %ebx	#, iftmp.466
	jmp	.L524	#
.L523:
	.loc 1 2349 0 discriminator 2
	movl	$4, %ebx	#, iftmp.466
.L524:
	.loc 1 2349 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.466
.L512:
	movl	%eax, -12(%rbp)	# iftmp.453, j
	.loc 1 2350 0 is_stmt 1 discriminator 3
	cmpl	$0, -36(%rbp)	#, life
	je	.L525	#,
	.loc 1 2351 0
	jmp	.L526	#
.L527:
	.loc 1 2352 0
	movl	-12(%rbp), %eax	# j, tmp98
	movl	-28(%rbp), %edx	# regno, tmp99
	addl	%edx, %eax	# tmp99, D.15057
	movl	$1, %edx	#, tmp100
	movl	%eax, %ecx	# D.15057, tmp105
	salq	%cl, %rdx	# tmp105, D.15060
	movq	regs_live(%rip), %rax	# regs_live, regs_live.468
	orq	%rdx, %rax	# D.15060, regs_live.469
	movq	%rax, regs_live(%rip)	# regs_live.469, regs_live
.L526:
	.loc 1 2351 0 discriminator 1
	subl	$1, -12(%rbp)	#, j
	cmpl	$0, -12(%rbp)	#, j
	jns	.L527	#,
	jmp	.L503	#
.L525:
	.loc 1 2354 0
	jmp	.L529	#
.L530:
	.loc 1 2355 0
	movl	-12(%rbp), %eax	# j, tmp101
	movl	-28(%rbp), %edx	# regno, tmp102
	addl	%edx, %eax	# tmp102, D.15057
	movl	$1, %edx	#, tmp103
	movl	%eax, %ecx	# D.15057, tmp107
	salq	%cl, %rdx	# tmp107, D.15060
	movq	%rdx, %rax	# D.15060, D.15060
	notq	%rax	# D.15060
	movq	%rax, %rdx	# D.15060, D.15060
	movq	regs_live(%rip), %rax	# regs_live, regs_live.470
	andq	%rdx, %rax	# D.15060, regs_live.471
	movq	%rax, regs_live(%rip)	# regs_live.471, regs_live
.L529:
	.loc 1 2354 0 discriminator 1
	subl	$1, -12(%rbp)	#, j
	cmpl	$0, -12(%rbp)	#, j
	jns	.L530	#,
.L503:
	.loc 1 2356 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	mark_life, .-mark_life
	.type	post_mark_life, @function
post_mark_life:
.LFB27:
	.loc 1 2367 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# regno, regno
	movl	%esi, -32(%rbp)	# mode, mode
	movl	%edx, -36(%rbp)	# life, life
	movl	%ecx, -40(%rbp)	# birth, birth
	movl	%r8d, -44(%rbp)	# death, death
	.loc 1 2368 0
	cmpl	$7, -28(%rbp)	#, regno
	jle	.L532	#,
	.loc 1 2368 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jle	.L533	#,
.L532:
	.loc 1 2368 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jle	.L534	#,
	.loc 1 2368 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L533	#,
.L534:
	.loc 1 2368 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jle	.L535	#,
	.loc 1 2368 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jle	.L533	#,
.L535:
	.loc 1 2368 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L536	#,
	.loc 1 2368 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	jg	.L536	#,
.L533:
	movl	-32(%rbp), %eax	# mode, mode.474
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15063
	cmpl	$5, %eax	#, D.15063
	je	.L537	#,
	.loc 1 2368 0 discriminator 2
	movl	-32(%rbp), %eax	# mode, mode.475
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15063
	cmpl	$6, %eax	#, D.15063
	jne	.L538	#,
.L537:
	.loc 1 2368 0 discriminator 1
	movl	$2, %eax	#, iftmp.473
	jmp	.L539	#
.L538:
	movl	$1, %eax	#, iftmp.473
.L539:
	.loc 1 2368 0 discriminator 3
	jmp	.L540	#
.L536:
	.loc 1 2368 0 discriminator 2
	cmpl	$18, -32(%rbp)	#, mode
	jne	.L541	#,
	.loc 1 2368 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.478
	andl	$33554432, %eax	#, D.15061
	testl	%eax, %eax	# D.15061
	je	.L542	#,
	movl	$2, %eax	#, iftmp.477
	jmp	.L540	#
.L542:
	.loc 1 2368 0 discriminator 2
	movl	$3, %eax	#, iftmp.477
	jmp	.L540	#
.L541:
	cmpl	$24, -32(%rbp)	#, mode
	jne	.L545	#,
	.loc 1 2368 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.481
	andl	$33554432, %eax	#, D.15061
	testl	%eax, %eax	# D.15061
	je	.L546	#,
	movl	$4, %eax	#, iftmp.480
	jmp	.L540	#
.L546:
	.loc 1 2368 0 discriminator 2
	movl	$6, %eax	#, iftmp.480
	jmp	.L540	#
.L545:
	movl	-32(%rbp), %eax	# mode, mode.482
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15062
	movzbl	%al, %edx	# D.15062, D.15061
	movl	target_flags(%rip), %eax	# target_flags, target_flags.484
	andl	$33554432, %eax	#, D.15061
	testl	%eax, %eax	# D.15061
	je	.L549	#,
	.loc 1 2368 0 discriminator 1
	movl	$8, %eax	#, iftmp.483
	jmp	.L550	#
.L549:
	.loc 1 2368 0 discriminator 2
	movl	$4, %eax	#, iftmp.483
.L550:
	.loc 1 2368 0 discriminator 3
	addl	%edx, %eax	# D.15061, D.15061
	subl	$1, %eax	#, D.15061
	movl	target_flags(%rip), %edx	# target_flags, target_flags.486
	andl	$33554432, %edx	#, D.15061
	testl	%edx, %edx	# D.15061
	je	.L551	#,
	.loc 1 2368 0 discriminator 1
	movl	$8, %esi	#, iftmp.485
	jmp	.L552	#
.L551:
	.loc 1 2368 0 discriminator 2
	movl	$4, %esi	#, iftmp.485
.L552:
	.loc 1 2368 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.485
.L540:
	movl	%eax, -12(%rbp)	# iftmp.472, j
	.loc 1 2375 0 is_stmt 1 discriminator 3
	movl	$0, %ebx	#, this_reg
	.loc 1 2376 0 discriminator 3
	jmp	.L553	#
.L554:
	.loc 1 2377 0
	movl	-12(%rbp), %eax	# j, tmp113
	movl	-28(%rbp), %edx	# regno, tmp114
	addl	%edx, %eax	# tmp114, D.15061
	movl	$1, %edx	#, tmp115
	movl	%eax, %ecx	# D.15061, tmp124
	salq	%cl, %rdx	# tmp124, D.15064
	movq	%rdx, %rax	# D.15064, D.15064
	orq	%rax, %rbx	# D.15064, this_reg
.L553:
	.loc 1 2376 0 discriminator 1
	subl	$1, -12(%rbp)	#, j
	cmpl	$0, -12(%rbp)	#, j
	jns	.L554	#,
	.loc 1 2379 0
	cmpl	$0, -36(%rbp)	#, life
	je	.L555	#,
	.loc 1 2380 0
	jmp	.L556	#
.L557:
	.loc 1 2382 0
	movq	regs_live_at(%rip), %rax	# regs_live_at, regs_live_at.487
	movl	-40(%rbp), %edx	# birth, tmp116
	movslq	%edx, %rdx	# tmp116, D.15064
	salq	$3, %rdx	#, D.15064
	addq	%rdx, %rax	# D.15064, D.15065
	movq	regs_live_at(%rip), %rdx	# regs_live_at, regs_live_at.488
	movl	-40(%rbp), %ecx	# birth, tmp117
	movslq	%ecx, %rcx	# tmp117, D.15064
	salq	$3, %rcx	#, D.15064
	addq	%rcx, %rdx	# D.15064, D.15065
	movq	(%rdx), %rdx	# *_64, D.15064
	orq	%rbx, %rdx	# this_reg, D.15064
	movq	%rdx, (%rax)	# D.15064, *_60
	.loc 1 2383 0
	addl	$1, -40(%rbp)	#, birth
.L556:
	.loc 1 2380 0 discriminator 1
	movl	-40(%rbp), %eax	# birth, tmp118
	cmpl	-44(%rbp), %eax	# death, tmp118
	jl	.L557	#,
	jmp	.L531	#
.L555:
	.loc 1 2386 0
	jmp	.L559	#
.L560:
	.loc 1 2388 0
	movq	regs_live_at(%rip), %rax	# regs_live_at, regs_live_at.489
	movl	-40(%rbp), %edx	# birth, tmp119
	movslq	%edx, %rdx	# tmp119, D.15064
	salq	$3, %rdx	#, D.15064
	addq	%rdx, %rax	# D.15064, D.15065
	movq	regs_live_at(%rip), %rdx	# regs_live_at, regs_live_at.490
	movl	-40(%rbp), %ecx	# birth, tmp120
	movslq	%ecx, %rcx	# tmp120, D.15064
	salq	$3, %rcx	#, D.15064
	addq	%rcx, %rdx	# D.15064, D.15065
	movq	(%rdx), %rdx	# *_75, D.15064
	movq	%rbx, %rcx	# this_reg, D.15064
	notq	%rcx	# D.15064
	andq	%rcx, %rdx	# D.15064, D.15064
	movq	%rdx, (%rax)	# D.15064, *_71
	.loc 1 2389 0
	addl	$1, -40(%rbp)	#, birth
.L559:
	.loc 1 2386 0 discriminator 1
	movl	-40(%rbp), %eax	# birth, tmp121
	cmpl	-44(%rbp), %eax	# death, tmp121
	jl	.L560	#,
.L531:
	.loc 1 2391 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	post_mark_life, .-post_mark_life
	.type	no_conflict_p, @function
no_conflict_p:
.LFB28:
	.loc 1 2405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# r0, r0
	movq	%rdx, -56(%rbp)	# r1, r1
	.loc 1 2406 0
	movl	$0, -28(%rbp)	#, ok
	.loc 1 2407 0
	movq	-40(%rbp), %rax	# insn, tmp73
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp74, note
	.loc 1 2413 0
	cmpq	$0, -16(%rbp)	#, note
	je	.L562	#,
	.loc 1 2414 0
	movq	-56(%rbp), %rax	# r1, tmp75
	movzwl	(%rax), %eax	# r1_9(D)->code, D.15067
	cmpw	$61, %ax	#, D.15067
	jne	.L563	#,
	.loc 1 2414 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# r1, tmp76
	movl	8(%rax), %eax	# r1_9(D)->fld[0].rtuint, D.15068
	cmpl	$52, %eax	#, D.15068
	jbe	.L562	#,
.L563:
	.loc 1 2415 0 is_stmt 1
	movq	-56(%rbp), %rax	# r1, tmp77
	movzwl	(%rax), %eax	# r1_9(D)->code, D.15067
	cmpw	$63, %ax	#, D.15067
	jne	.L564	#,
	.loc 1 2415 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# r1, tmp78
	movq	8(%rax), %rax	# r1_9(D)->fld[0].rtx, D.15069
	movzwl	(%rax), %eax	# _13->code, D.15067
	cmpw	$61, %ax	#, D.15067
	jne	.L564	#,
	.loc 1 2416 0 is_stmt 1
	movq	-56(%rbp), %rax	# r1, tmp79
	movq	8(%rax), %rax	# r1_9(D)->fld[0].rtx, D.15069
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.15068
	cmpl	$52, %eax	#, D.15068
	ja	.L564	#,
.L562:
	.loc 1 2417 0
	movl	$0, %eax	#, D.15066
	jmp	.L565	#
.L564:
	.loc 1 2419 0
	movq	-16(%rbp), %rax	# note, tmp80
	movq	8(%rax), %rax	# note_8->fld[0].rtx, tmp81
	movq	%rax, -8(%rbp)	# tmp81, last
	.loc 1 2421 0
	movq	-40(%rbp), %rax	# insn, tmp82
	movq	24(%rax), %rax	# insn_7(D)->fld[2].rtx, tmp83
	movq	%rax, -24(%rbp)	# tmp83, p
	jmp	.L566	#
.L570:
	.loc 1 2422 0
	movq	-24(%rbp), %rax	# p, tmp84
	movzwl	(%rax), %eax	# p_4->code, D.15067
	movzwl	%ax, %eax	# D.15067, D.15066
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15070
	cmpb	$105, %al	#, D.15070
	jne	.L567	#,
	.loc 1 2424 0
	movq	-56(%rbp), %rdx	# r1, tmp86
	movq	-24(%rbp), %rax	# p, tmp87
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	find_reg_note	#
	testq	%rax, %rax	# D.15069
	je	.L568	#,
	.loc 1 2425 0
	movl	$1, -28(%rbp)	#, ok
.L568:
	.loc 1 2432 0
	movq	-56(%rbp), %rdx	# r1, tmp88
	movq	-24(%rbp), %rax	# p, tmp89
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	find_reg_note	#
	testq	%rax, %rax	# D.15069
	jne	.L567	#,
	.loc 1 2433 0
	movl	$0, %eax	#, D.15066
	jmp	.L565	#
.L567:
	.loc 1 2421 0
	movq	-24(%rbp), %rax	# p, tmp90
	movq	24(%rax), %rax	# p_4->fld[2].rtx, tmp91
	movq	%rax, -24(%rbp)	# tmp91, p
.L566:
	.loc 1 2421 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	je	.L569	#,
	.loc 1 2421 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp92
	cmpq	-8(%rbp), %rax	# last, tmp92
	jne	.L570	#,
.L569:
	.loc 1 2436 0 is_stmt 1
	movl	-28(%rbp), %eax	# ok, D.15066
.L565:
	.loc 1 2437 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	no_conflict_p, .-no_conflict_p
	.type	requires_inout, @function
requires_inout:
.LFB29:
	.loc 1 2446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 2448 0
	movl	$0, -12(%rbp)	#, found_zero
	.loc 1 2449 0
	movl	$0, -8(%rbp)	#, reg_allowed
	.loc 1 2450 0
	movl	$0, -4(%rbp)	#, num_matching_alts
	.loc 1 2452 0
	jmp	.L572	#
.L619:
	.loc 1 2453 0
	movsbl	-13(%rbp), %eax	# c, D.15071
	subl	$33, %eax	#, tmp105
	cmpl	$82, %eax	#, tmp105
	ja	.L573	#,
	movl	%eax, %eax	# tmp105, tmp106
	movq	.L575(,%rax,8), %rax	#, tmp107
	jmp	*%rax	# tmp107
	.section	.rodata
	.align 8
	.align 4
.L575:
	.quad	.L622
	.quad	.L573
	.quad	.L622
	.quad	.L573
	.quad	.L622
	.quad	.L622
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L622
	.quad	.L622
	.quad	.L576
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L577
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L623
	.quad	.L573
	.quad	.L573
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L622
	.quad	.L573
	.quad	.L622
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L579
	.quad	.L573
	.quad	.L622
	.quad	.L573
	.quad	.L573
	.quad	.L573
	.quad	.L622
	.quad	.L622
	.quad	.L622
	.quad	.L579
	.quad	.L573
	.quad	.L579
	.quad	.L622
	.text
.L576:
	.loc 1 2468 0
	cmpl	$0, -12(%rbp)	#, found_zero
	je	.L580	#,
	.loc 1 2468 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, reg_allowed
	jne	.L580	#,
	.loc 1 2469 0 is_stmt 1
	addl	$1, -4(%rbp)	#, num_matching_alts
.L580:
	.loc 1 2471 0
	movl	$0, -8(%rbp)	#, reg_allowed
	movl	-8(%rbp), %eax	# reg_allowed, tmp108
	movl	%eax, -12(%rbp)	# tmp108, found_zero
	.loc 1 2472 0
	jmp	.L572	#
.L577:
	.loc 1 2475 0
	movl	$1, -12(%rbp)	#, found_zero
	.loc 1 2476 0
	jmp	.L572	#
.L582:
	.loc 1 2482 0
	addq	$1, -24(%rbp)	#, p
	jmp	.L581	#
.L623:
	.loc 1 2481 0
	nop
.L581:
	.loc 1 2481 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp109
	movzbl	(%rax), %eax	# *p_1, D.15072
	movsbl	%al, %eax	# D.15072, D.15071
	movzbl	%al, %eax	# D.15071, D.15071
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.15073
	movzwl	%ax, %eax	# D.15073, D.15071
	andl	$4, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L582	#,
	.loc 1 2483 0 is_stmt 1
	jmp	.L572	#
.L573:
	.loc 1 2486 0
	cmpb	$114, -13(%rbp)	#, c
	je	.L583	#,
	.loc 1 2486 0 is_stmt 0 discriminator 1
	cmpb	$82, -13(%rbp)	#, c
	je	.L584	#,
	.loc 1 2486 0 discriminator 3
	cmpb	$113, -13(%rbp)	#, c
	je	.L585	#,
	.loc 1 2486 0 discriminator 5
	cmpb	$81, -13(%rbp)	#, c
	je	.L586	#,
	.loc 1 2486 0 discriminator 7
	cmpb	$102, -13(%rbp)	#, c
	jne	.L587	#,
	.loc 1 2486 0 discriminator 9
	movl	target_flags(%rip), %eax	# target_flags, target_flags.497
	andl	$1, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L588	#,
	.loc 1 2486 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.498
	andl	$32, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L588	#,
	.loc 1 2486 0 discriminator 13
	movl	$1, %eax	#, iftmp.496
	jmp	.L589	#
.L588:
	.loc 1 2486 0 discriminator 12
	movl	$0, %eax	#, iftmp.496
.L589:
	.loc 1 2486 0 discriminator 14
	andl	$1, %eax	#, iftmp.495
	jmp	.L618	#
.L587:
	.loc 1 2486 0 discriminator 10
	cmpb	$116, -13(%rbp)	#, c
	jne	.L591	#,
	.loc 1 2486 0 discriminator 15
	movl	target_flags(%rip), %eax	# target_flags, target_flags.501
	andl	$1, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L592	#,
	.loc 1 2486 0 discriminator 17
	movl	target_flags(%rip), %eax	# target_flags, target_flags.502
	andl	$32, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L592	#,
	.loc 1 2486 0 discriminator 19
	movl	$1, %eax	#, iftmp.500
	jmp	.L593	#
.L592:
	.loc 1 2486 0 discriminator 18
	movl	$0, %eax	#, iftmp.500
.L593:
	.loc 1 2486 0 discriminator 20
	andl	$1, %eax	#, iftmp.499
	jmp	.L618	#
.L591:
	.loc 1 2486 0 discriminator 16
	cmpb	$117, -13(%rbp)	#, c
	jne	.L595	#,
	.loc 1 2486 0 discriminator 21
	movl	target_flags(%rip), %eax	# target_flags, target_flags.505
	andl	$1, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L596	#,
	.loc 1 2486 0 discriminator 23
	movl	target_flags(%rip), %eax	# target_flags, target_flags.506
	andl	$32, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	jne	.L596	#,
	.loc 1 2486 0 discriminator 25
	movl	$1, %eax	#, iftmp.504
	jmp	.L597	#
.L596:
	.loc 1 2486 0 discriminator 24
	movl	$0, %eax	#, iftmp.504
.L597:
	.loc 1 2486 0 discriminator 26
	andl	$1, %eax	#, iftmp.503
	jmp	.L618	#
.L595:
	.loc 1 2486 0 discriminator 22
	cmpb	$97, -13(%rbp)	#, c
	je	.L599	#,
	.loc 1 2486 0 discriminator 27
	cmpb	$98, -13(%rbp)	#, c
	je	.L600	#,
	.loc 1 2486 0 discriminator 29
	cmpb	$99, -13(%rbp)	#, c
	je	.L601	#,
	.loc 1 2486 0 discriminator 31
	cmpb	$100, -13(%rbp)	#, c
	je	.L602	#,
	.loc 1 2486 0 discriminator 33
	cmpb	$120, -13(%rbp)	#, c
	jne	.L603	#,
	.loc 1 2486 0 discriminator 35
	movl	target_flags(%rip), %eax	# target_flags, target_flags.512
	andl	$327680, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	sete	%al	#, iftmp.511
	jmp	.L618	#
.L603:
	.loc 1 2486 0 discriminator 36
	cmpb	$89, -13(%rbp)	#, c
	jne	.L605	#,
	.loc 1 2486 0 discriminator 37
	movl	target_flags(%rip), %eax	# target_flags, target_flags.514
	andl	$262144, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	sete	%al	#, iftmp.513
	jmp	.L618	#
.L605:
	.loc 1 2486 0 discriminator 38
	cmpb	$121, -13(%rbp)	#, c
	jne	.L607	#,
	.loc 1 2486 0 discriminator 39
	movl	target_flags(%rip), %eax	# target_flags, target_flags.516
	andl	$16384, %eax	#, D.15071
	testl	%eax, %eax	# D.15071
	sete	%al	#, iftmp.515
	jmp	.L618	#
.L607:
	.loc 1 2486 0 discriminator 40
	cmpb	$65, -13(%rbp)	#, c
	je	.L609	#,
	.loc 1 2486 0 discriminator 41
	cmpb	$68, -13(%rbp)	#, c
	je	.L609	#,
	.loc 1 2486 0 discriminator 43
	cmpb	$83, -13(%rbp)	#, c
	je	.L609	#,
	.loc 1 2486 0 discriminator 44
	movl	$1, %eax	#, iftmp.517
	jmp	.L610	#
.L609:
	.loc 1 2486 0 discriminator 42
	movl	$0, %eax	#, iftmp.517
.L610:
	.loc 1 2486 0 discriminator 45
	andl	$1, %eax	#, iftmp.515
	jmp	.L618	#
.L602:
	.loc 1 2486 0 discriminator 34
	movl	$0, %eax	#, iftmp.510
	jmp	.L618	#
.L601:
	.loc 1 2486 0 discriminator 32
	movl	$0, %eax	#, iftmp.509
	jmp	.L618	#
.L600:
	.loc 1 2486 0 discriminator 30
	movl	$0, %eax	#, iftmp.508
	jmp	.L618	#
.L599:
	.loc 1 2486 0 discriminator 28
	movl	$0, %eax	#, iftmp.507
	jmp	.L618	#
.L586:
	.loc 1 2486 0 discriminator 8
	movl	$0, %eax	#, iftmp.494
	jmp	.L618	#
.L585:
	.loc 1 2486 0 discriminator 6
	movl	$0, %eax	#, iftmp.493
	jmp	.L618	#
.L584:
	.loc 1 2486 0 discriminator 4
	movl	$0, %eax	#, iftmp.492
	jmp	.L618	#
.L583:
	.loc 1 2486 0 discriminator 2
	movl	$0, %eax	#, iftmp.491
.L618:
	.loc 1 2486 0 discriminator 51
	testb	%al, %al	# iftmp.491
	je	.L579	#,
	.loc 1 2487 0 is_stmt 1
	jmp	.L572	#
.L579:
	.loc 1 2491 0
	movl	$1, -8(%rbp)	#, reg_allowed
	.loc 1 2492 0
	jmp	.L572	#
.L622:
	.loc 1 2465 0
	nop
.L572:
	.loc 1 2452 0 discriminator 1
	movq	-24(%rbp), %rax	# p, p.518
	leaq	1(%rax), %rdx	#, tmp111
	movq	%rdx, -24(%rbp)	# tmp111, p
	movzbl	(%rax), %eax	# *p.518_30, tmp112
	movb	%al, -13(%rbp)	# tmp112, c
	cmpb	$0, -13(%rbp)	#, c
	jne	.L619	#,
	.loc 1 2495 0
	cmpl	$0, -12(%rbp)	#, found_zero
	je	.L620	#,
	.loc 1 2495 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, reg_allowed
	jne	.L620	#,
	.loc 1 2496 0 is_stmt 1
	addl	$1, -4(%rbp)	#, num_matching_alts
.L620:
	.loc 1 2498 0
	movl	-4(%rbp), %eax	# num_matching_alts, D.15071
	.loc 1 2499 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	requires_inout, .-requires_inout
	.section	.rodata
.LC1:
	.string	";; Register %d in %d.\n"
	.text
	.globl	dump_local_alloc
	.type	dump_local_alloc, @function
dump_local_alloc:
.LFB30:
	.loc 1 2504 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	.loc 1 2506 0
	movl	$53, -4(%rbp)	#, i
	jmp	.L625	#
.L627:
	.loc 1 2507 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.519
	movl	-4(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, D.15074
	addq	%rdx, %rdx	# D.15074
	addq	%rdx, %rax	# D.15074, D.15075
	movzwl	(%rax), %eax	# *_7, D.15076
	cmpw	$-1, %ax	#, D.15076
	je	.L626	#,
	.loc 1 2508 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.520
	movl	-4(%rbp), %edx	# i, tmp72
	movslq	%edx, %rdx	# tmp72, D.15074
	addq	%rdx, %rdx	# D.15074
	addq	%rdx, %rax	# D.15074, D.15075
	movzwl	(%rax), %eax	# *_12, D.15076
	movswl	%ax, %ecx	# D.15076, D.15077
	movl	-4(%rbp), %edx	# i, tmp73
	movq	-24(%rbp), %rax	# file, tmp74
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	fprintf	#
.L626:
	.loc 1 2506 0
	addl	$1, -4(%rbp)	#, i
.L625:
	.loc 1 2506 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.521
	cmpl	%eax, -4(%rbp)	# max_regno.521, i
	jl	.L627	#,
	.loc 1 2509 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	dump_local_alloc, .-dump_local_alloc
	.section	.rodata
	.align 16
	.type	__FUNCTION__.11223, @object
	.size	__FUNCTION__.11223, 18
__FUNCTION__.11223:
	.string	"update_equiv_regs"
	.type	__FUNCTION__.11293, @object
	.size	__FUNCTION__.11293, 12
__FUNCTION__.11293:
	.string	"block_alloc"
	.type	__FUNCTION__.11458, @object
	.size	__FUNCTION__.11458, 14
__FUNCTION__.11458:
	.string	"find_free_reg"
	.align 32
	.type	eliminables.11457, @object
	.size	eliminables.11457, 32
eliminables.11457:
# from:
	.long	16
# to:
	.long	7
# from:
	.long	16
# to:
	.long	6
# from:
	.long	20
# to:
	.long	7
# from:
	.long	20
# to:
	.long	6
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "hard-reg-set.h"
	.file 13 "varray.h"
	.file 14 "regs.h"
	.file 15 "function.h"
	.file 16 "recog.h"
	.file 17 "./safe-ctype.h"
	.file 18 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x32c5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF774
	.byte	0x1
	.long	.LASF775
	.long	.LASF776
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
	.long	0xe0e
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
	.long	0xe1e
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
	.long	.LASF777
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
	.uleb128 0x7
	.long	.LASF70
	.byte	0x6
	.byte	0x8c
	.long	0x2b2
	.uleb128 0x7
	.long	.LASF71
	.byte	0x6
	.byte	0x8d
	.long	0x2b2
	.uleb128 0x3
	.byte	0x8
	.long	0x303
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF72
	.uleb128 0x7
	.long	.LASF73
	.byte	0x7
	.byte	0x30
	.long	0x315
	.uleb128 0x4
	.long	.LASF74
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x496
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0xf7
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0xfc
	.long	0x2fd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0xfd
	.long	0x2fd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0xfe
	.long	0x2fd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0xff
	.long	0x2fd
	.byte	0x20
	.uleb128 0x10
	.long	.LASF80
	.byte	0x8
	.value	0x100
	.long	0x2fd
	.byte	0x28
	.uleb128 0x10
	.long	.LASF81
	.byte	0x8
	.value	0x101
	.long	0x2fd
	.byte	0x30
	.uleb128 0x10
	.long	.LASF82
	.byte	0x8
	.value	0x102
	.long	0x2fd
	.byte	0x38
	.uleb128 0x10
	.long	.LASF83
	.byte	0x8
	.value	0x103
	.long	0x2fd
	.byte	0x40
	.uleb128 0x10
	.long	.LASF84
	.byte	0x8
	.value	0x105
	.long	0x2fd
	.byte	0x48
	.uleb128 0x10
	.long	.LASF85
	.byte	0x8
	.value	0x106
	.long	0x2fd
	.byte	0x50
	.uleb128 0x10
	.long	.LASF86
	.byte	0x8
	.value	0x107
	.long	0x2fd
	.byte	0x58
	.uleb128 0x10
	.long	.LASF87
	.byte	0x8
	.value	0x109
	.long	0x4de
	.byte	0x60
	.uleb128 0x10
	.long	.LASF88
	.byte	0x8
	.value	0x10b
	.long	0x4e4
	.byte	0x68
	.uleb128 0x10
	.long	.LASF89
	.byte	0x8
	.value	0x10d
	.long	0x13e
	.byte	0x70
	.uleb128 0x10
	.long	.LASF90
	.byte	0x8
	.value	0x111
	.long	0x13e
	.byte	0x74
	.uleb128 0x10
	.long	.LASF91
	.byte	0x8
	.value	0x113
	.long	0x2e7
	.byte	0x78
	.uleb128 0x10
	.long	.LASF92
	.byte	0x8
	.value	0x117
	.long	0x2d2
	.byte	0x80
	.uleb128 0x10
	.long	.LASF93
	.byte	0x8
	.value	0x118
	.long	0x2d9
	.byte	0x82
	.uleb128 0x10
	.long	.LASF94
	.byte	0x8
	.value	0x119
	.long	0x4ea
	.byte	0x83
	.uleb128 0x10
	.long	.LASF95
	.byte	0x8
	.value	0x11d
	.long	0x4fa
	.byte	0x88
	.uleb128 0x10
	.long	.LASF96
	.byte	0x8
	.value	0x126
	.long	0x2f2
	.byte	0x90
	.uleb128 0x10
	.long	.LASF97
	.byte	0x8
	.value	0x12f
	.long	0x2b0
	.byte	0x98
	.uleb128 0x10
	.long	.LASF98
	.byte	0x8
	.value	0x130
	.long	0x2b0
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF99
	.byte	0x8
	.value	0x131
	.long	0x2b0
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF100
	.byte	0x8
	.value	0x132
	.long	0x2b0
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF101
	.byte	0x8
	.value	0x133
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF102
	.byte	0x8
	.value	0x135
	.long	0x13e
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF103
	.byte	0x8
	.value	0x137
	.long	0x500
	.byte	0xc4
	.byte	0
	.uleb128 0x13
	.long	0x303
	.long	0x4a6
	.uleb128 0x14
	.long	0x145
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.long	.LASF778
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF104
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x4de
	.uleb128 0x8
	.long	.LASF105
	.byte	0x8
	.byte	0xa2
	.long	0x4de
	.byte	0
	.uleb128 0x8
	.long	.LASF106
	.byte	0x8
	.byte	0xa3
	.long	0x4e4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF107
	.byte	0x8
	.byte	0xa7
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4ad
	.uleb128 0x3
	.byte	0x8
	.long	0x315
	.uleb128 0x13
	.long	0x303
	.long	0x4fa
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4a6
	.uleb128 0x13
	.long	0x303
	.long	0x510
	.uleb128 0x14
	.long	0x145
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x516
	.uleb128 0xa
	.long	0x303
	.uleb128 0x16
	.byte	0x4
	.byte	0x11
	.byte	0x2c
	.long	0x59c
	.uleb128 0xe
	.long	.LASF108
	.sleb128 1
	.uleb128 0xe
	.long	.LASF109
	.sleb128 2
	.uleb128 0xe
	.long	.LASF110
	.sleb128 4
	.uleb128 0xe
	.long	.LASF111
	.sleb128 8
	.uleb128 0xe
	.long	.LASF112
	.sleb128 16
	.uleb128 0xe
	.long	.LASF113
	.sleb128 32
	.uleb128 0xe
	.long	.LASF114
	.sleb128 64
	.uleb128 0xe
	.long	.LASF115
	.sleb128 128
	.uleb128 0xe
	.long	.LASF116
	.sleb128 256
	.uleb128 0xe
	.long	.LASF117
	.sleb128 512
	.uleb128 0xe
	.long	.LASF118
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF119
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF120
	.sleb128 136
	.uleb128 0xe
	.long	.LASF121
	.sleb128 140
	.uleb128 0xe
	.long	.LASF122
	.sleb128 516
	.uleb128 0xe
	.long	.LASF123
	.sleb128 172
	.uleb128 0xe
	.long	.LASF124
	.sleb128 3072
	.uleb128 0xe
	.long	.LASF125
	.sleb128 3088
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF126
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF127
	.uleb128 0x3
	.byte	0x8
	.long	0x13e
	.uleb128 0x3
	.byte	0x8
	.long	0x5b6
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF128
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x72c
	.uleb128 0xe
	.long	.LASF129
	.sleb128 0
	.uleb128 0xe
	.long	.LASF130
	.sleb128 1
	.uleb128 0xe
	.long	.LASF131
	.sleb128 2
	.uleb128 0xe
	.long	.LASF132
	.sleb128 3
	.uleb128 0xe
	.long	.LASF133
	.sleb128 4
	.uleb128 0xe
	.long	.LASF134
	.sleb128 5
	.uleb128 0xe
	.long	.LASF135
	.sleb128 6
	.uleb128 0xe
	.long	.LASF136
	.sleb128 7
	.uleb128 0xe
	.long	.LASF137
	.sleb128 8
	.uleb128 0xe
	.long	.LASF138
	.sleb128 9
	.uleb128 0xe
	.long	.LASF139
	.sleb128 10
	.uleb128 0xe
	.long	.LASF140
	.sleb128 11
	.uleb128 0xe
	.long	.LASF141
	.sleb128 12
	.uleb128 0xe
	.long	.LASF142
	.sleb128 13
	.uleb128 0xe
	.long	.LASF143
	.sleb128 14
	.uleb128 0xe
	.long	.LASF144
	.sleb128 15
	.uleb128 0xe
	.long	.LASF145
	.sleb128 16
	.uleb128 0xe
	.long	.LASF146
	.sleb128 17
	.uleb128 0xe
	.long	.LASF147
	.sleb128 18
	.uleb128 0xe
	.long	.LASF148
	.sleb128 19
	.uleb128 0xe
	.long	.LASF149
	.sleb128 20
	.uleb128 0xe
	.long	.LASF150
	.sleb128 21
	.uleb128 0xe
	.long	.LASF151
	.sleb128 22
	.uleb128 0xe
	.long	.LASF152
	.sleb128 23
	.uleb128 0xe
	.long	.LASF153
	.sleb128 24
	.uleb128 0xe
	.long	.LASF154
	.sleb128 25
	.uleb128 0xe
	.long	.LASF155
	.sleb128 26
	.uleb128 0xe
	.long	.LASF156
	.sleb128 27
	.uleb128 0xe
	.long	.LASF157
	.sleb128 28
	.uleb128 0xe
	.long	.LASF158
	.sleb128 29
	.uleb128 0xe
	.long	.LASF159
	.sleb128 30
	.uleb128 0xe
	.long	.LASF160
	.sleb128 31
	.uleb128 0xe
	.long	.LASF161
	.sleb128 32
	.uleb128 0xe
	.long	.LASF162
	.sleb128 33
	.uleb128 0xe
	.long	.LASF163
	.sleb128 34
	.uleb128 0xe
	.long	.LASF164
	.sleb128 35
	.uleb128 0xe
	.long	.LASF165
	.sleb128 36
	.uleb128 0xe
	.long	.LASF166
	.sleb128 37
	.uleb128 0xe
	.long	.LASF167
	.sleb128 38
	.uleb128 0xe
	.long	.LASF168
	.sleb128 39
	.uleb128 0xe
	.long	.LASF169
	.sleb128 40
	.uleb128 0xe
	.long	.LASF170
	.sleb128 41
	.uleb128 0xe
	.long	.LASF171
	.sleb128 42
	.uleb128 0xe
	.long	.LASF172
	.sleb128 43
	.uleb128 0xe
	.long	.LASF173
	.sleb128 44
	.uleb128 0xe
	.long	.LASF174
	.sleb128 45
	.uleb128 0xe
	.long	.LASF175
	.sleb128 46
	.uleb128 0xe
	.long	.LASF176
	.sleb128 47
	.uleb128 0xe
	.long	.LASF177
	.sleb128 48
	.uleb128 0xe
	.long	.LASF178
	.sleb128 49
	.uleb128 0xe
	.long	.LASF179
	.sleb128 50
	.uleb128 0xe
	.long	.LASF180
	.sleb128 51
	.uleb128 0xe
	.long	.LASF181
	.sleb128 52
	.uleb128 0xe
	.long	.LASF182
	.sleb128 53
	.uleb128 0xe
	.long	.LASF183
	.sleb128 54
	.uleb128 0xe
	.long	.LASF184
	.sleb128 55
	.uleb128 0xe
	.long	.LASF185
	.sleb128 56
	.uleb128 0xe
	.long	.LASF186
	.sleb128 57
	.uleb128 0xe
	.long	.LASF187
	.sleb128 58
	.uleb128 0xe
	.long	.LASF188
	.sleb128 59
	.byte	0
	.uleb128 0x18
	.long	.LASF189
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x775
	.uleb128 0xe
	.long	.LASF190
	.sleb128 0
	.uleb128 0xe
	.long	.LASF191
	.sleb128 1
	.uleb128 0xe
	.long	.LASF192
	.sleb128 2
	.uleb128 0xe
	.long	.LASF193
	.sleb128 3
	.uleb128 0xe
	.long	.LASF194
	.sleb128 4
	.uleb128 0xe
	.long	.LASF195
	.sleb128 5
	.uleb128 0xe
	.long	.LASF196
	.sleb128 6
	.uleb128 0xe
	.long	.LASF197
	.sleb128 7
	.uleb128 0xe
	.long	.LASF198
	.sleb128 8
	.uleb128 0xe
	.long	.LASF199
	.sleb128 9
	.byte	0
	.uleb128 0x18
	.long	.LASF200
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xb71
	.uleb128 0xe
	.long	.LASF201
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF202
	.sleb128 2
	.uleb128 0xe
	.long	.LASF203
	.sleb128 3
	.uleb128 0xe
	.long	.LASF204
	.sleb128 4
	.uleb128 0xe
	.long	.LASF205
	.sleb128 5
	.uleb128 0xe
	.long	.LASF206
	.sleb128 6
	.uleb128 0xe
	.long	.LASF207
	.sleb128 7
	.uleb128 0xe
	.long	.LASF208
	.sleb128 8
	.uleb128 0xe
	.long	.LASF209
	.sleb128 9
	.uleb128 0xe
	.long	.LASF210
	.sleb128 10
	.uleb128 0xe
	.long	.LASF211
	.sleb128 11
	.uleb128 0xe
	.long	.LASF212
	.sleb128 12
	.uleb128 0xe
	.long	.LASF213
	.sleb128 13
	.uleb128 0xe
	.long	.LASF214
	.sleb128 14
	.uleb128 0xe
	.long	.LASF215
	.sleb128 15
	.uleb128 0xe
	.long	.LASF216
	.sleb128 16
	.uleb128 0xe
	.long	.LASF217
	.sleb128 17
	.uleb128 0xe
	.long	.LASF218
	.sleb128 18
	.uleb128 0xe
	.long	.LASF219
	.sleb128 19
	.uleb128 0xe
	.long	.LASF220
	.sleb128 20
	.uleb128 0xe
	.long	.LASF221
	.sleb128 21
	.uleb128 0xe
	.long	.LASF222
	.sleb128 22
	.uleb128 0xe
	.long	.LASF223
	.sleb128 23
	.uleb128 0xe
	.long	.LASF224
	.sleb128 24
	.uleb128 0xe
	.long	.LASF225
	.sleb128 25
	.uleb128 0xe
	.long	.LASF226
	.sleb128 26
	.uleb128 0xe
	.long	.LASF227
	.sleb128 27
	.uleb128 0xe
	.long	.LASF228
	.sleb128 28
	.uleb128 0xe
	.long	.LASF229
	.sleb128 29
	.uleb128 0xe
	.long	.LASF230
	.sleb128 30
	.uleb128 0xe
	.long	.LASF231
	.sleb128 31
	.uleb128 0xe
	.long	.LASF232
	.sleb128 32
	.uleb128 0xe
	.long	.LASF233
	.sleb128 33
	.uleb128 0xe
	.long	.LASF234
	.sleb128 34
	.uleb128 0xe
	.long	.LASF235
	.sleb128 35
	.uleb128 0xe
	.long	.LASF236
	.sleb128 36
	.uleb128 0xe
	.long	.LASF237
	.sleb128 37
	.uleb128 0xe
	.long	.LASF238
	.sleb128 38
	.uleb128 0xe
	.long	.LASF239
	.sleb128 39
	.uleb128 0xe
	.long	.LASF240
	.sleb128 40
	.uleb128 0xe
	.long	.LASF241
	.sleb128 41
	.uleb128 0xe
	.long	.LASF242
	.sleb128 42
	.uleb128 0xe
	.long	.LASF243
	.sleb128 43
	.uleb128 0xe
	.long	.LASF244
	.sleb128 44
	.uleb128 0xe
	.long	.LASF245
	.sleb128 45
	.uleb128 0xe
	.long	.LASF246
	.sleb128 46
	.uleb128 0x19
	.string	"SET"
	.sleb128 47
	.uleb128 0x19
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF247
	.sleb128 49
	.uleb128 0xe
	.long	.LASF248
	.sleb128 50
	.uleb128 0xe
	.long	.LASF249
	.sleb128 51
	.uleb128 0xe
	.long	.LASF250
	.sleb128 52
	.uleb128 0xe
	.long	.LASF251
	.sleb128 53
	.uleb128 0xe
	.long	.LASF252
	.sleb128 54
	.uleb128 0xe
	.long	.LASF253
	.sleb128 55
	.uleb128 0xe
	.long	.LASF254
	.sleb128 56
	.uleb128 0xe
	.long	.LASF255
	.sleb128 57
	.uleb128 0xe
	.long	.LASF256
	.sleb128 58
	.uleb128 0x19
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF257
	.sleb128 60
	.uleb128 0x19
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF258
	.sleb128 62
	.uleb128 0xe
	.long	.LASF259
	.sleb128 63
	.uleb128 0xe
	.long	.LASF260
	.sleb128 64
	.uleb128 0xe
	.long	.LASF261
	.sleb128 65
	.uleb128 0x19
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF262
	.sleb128 67
	.uleb128 0xe
	.long	.LASF263
	.sleb128 68
	.uleb128 0x19
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF264
	.sleb128 70
	.uleb128 0xe
	.long	.LASF265
	.sleb128 71
	.uleb128 0xe
	.long	.LASF266
	.sleb128 72
	.uleb128 0xe
	.long	.LASF267
	.sleb128 73
	.uleb128 0xe
	.long	.LASF268
	.sleb128 74
	.uleb128 0xe
	.long	.LASF269
	.sleb128 75
	.uleb128 0xe
	.long	.LASF270
	.sleb128 76
	.uleb128 0x19
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF271
	.sleb128 78
	.uleb128 0x19
	.string	"DIV"
	.sleb128 79
	.uleb128 0x19
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF272
	.sleb128 81
	.uleb128 0xe
	.long	.LASF273
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
	.uleb128 0xe
	.long	.LASF274
	.sleb128 87
	.uleb128 0xe
	.long	.LASF275
	.sleb128 88
	.uleb128 0xe
	.long	.LASF276
	.sleb128 89
	.uleb128 0xe
	.long	.LASF277
	.sleb128 90
	.uleb128 0xe
	.long	.LASF278
	.sleb128 91
	.uleb128 0xe
	.long	.LASF279
	.sleb128 92
	.uleb128 0xe
	.long	.LASF280
	.sleb128 93
	.uleb128 0xe
	.long	.LASF281
	.sleb128 94
	.uleb128 0xe
	.long	.LASF282
	.sleb128 95
	.uleb128 0xe
	.long	.LASF283
	.sleb128 96
	.uleb128 0xe
	.long	.LASF284
	.sleb128 97
	.uleb128 0xe
	.long	.LASF285
	.sleb128 98
	.uleb128 0xe
	.long	.LASF286
	.sleb128 99
	.uleb128 0xe
	.long	.LASF287
	.sleb128 100
	.uleb128 0xe
	.long	.LASF288
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
	.uleb128 0xe
	.long	.LASF289
	.sleb128 112
	.uleb128 0xe
	.long	.LASF290
	.sleb128 113
	.uleb128 0xe
	.long	.LASF291
	.sleb128 114
	.uleb128 0xe
	.long	.LASF292
	.sleb128 115
	.uleb128 0xe
	.long	.LASF293
	.sleb128 116
	.uleb128 0xe
	.long	.LASF294
	.sleb128 117
	.uleb128 0xe
	.long	.LASF295
	.sleb128 118
	.uleb128 0xe
	.long	.LASF296
	.sleb128 119
	.uleb128 0xe
	.long	.LASF297
	.sleb128 120
	.uleb128 0xe
	.long	.LASF298
	.sleb128 121
	.uleb128 0xe
	.long	.LASF299
	.sleb128 122
	.uleb128 0xe
	.long	.LASF300
	.sleb128 123
	.uleb128 0xe
	.long	.LASF301
	.sleb128 124
	.uleb128 0xe
	.long	.LASF302
	.sleb128 125
	.uleb128 0x19
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF303
	.sleb128 127
	.uleb128 0xe
	.long	.LASF304
	.sleb128 128
	.uleb128 0x19
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF305
	.sleb128 130
	.uleb128 0x19
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF306
	.sleb128 132
	.uleb128 0xe
	.long	.LASF307
	.sleb128 133
	.uleb128 0xe
	.long	.LASF308
	.sleb128 134
	.uleb128 0xe
	.long	.LASF309
	.sleb128 135
	.uleb128 0xe
	.long	.LASF310
	.sleb128 136
	.uleb128 0xe
	.long	.LASF311
	.sleb128 137
	.uleb128 0xe
	.long	.LASF312
	.sleb128 138
	.uleb128 0xe
	.long	.LASF313
	.sleb128 139
	.uleb128 0xe
	.long	.LASF314
	.sleb128 140
	.uleb128 0xe
	.long	.LASF315
	.sleb128 141
	.uleb128 0xe
	.long	.LASF316
	.sleb128 142
	.uleb128 0xe
	.long	.LASF317
	.sleb128 143
	.uleb128 0xe
	.long	.LASF318
	.sleb128 144
	.uleb128 0xe
	.long	.LASF319
	.sleb128 145
	.uleb128 0xe
	.long	.LASF320
	.sleb128 146
	.uleb128 0xe
	.long	.LASF321
	.sleb128 147
	.uleb128 0xe
	.long	.LASF322
	.sleb128 148
	.uleb128 0xe
	.long	.LASF323
	.sleb128 149
	.uleb128 0xe
	.long	.LASF324
	.sleb128 150
	.uleb128 0xe
	.long	.LASF325
	.sleb128 151
	.uleb128 0x19
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF326
	.sleb128 153
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xbf2
	.uleb128 0x5
	.long	.LASF327
	.byte	0x2
	.byte	0x47
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF328
	.byte	0x2
	.byte	0x49
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF329
	.byte	0x2
	.byte	0x4a
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF330
	.byte	0x2
	.byte	0x4c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF331
	.byte	0x2
	.byte	0x4e
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF332
	.byte	0x2
	.byte	0x50
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF333
	.byte	0x2
	.byte	0x53
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF334
	.byte	0x2
	.byte	0x55
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF335
	.byte	0x2
	.byte	0x56
	.long	0xb71
	.uleb128 0x1a
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xc42
	.uleb128 0x8
	.long	.LASF336
	.byte	0x2
	.byte	0x5e
	.long	0x2b2
	.byte	0
	.uleb128 0x8
	.long	.LASF337
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF338
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF339
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF340
	.byte	0x2
	.byte	0x62
	.long	0x2a9
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF341
	.byte	0x2
	.byte	0x63
	.long	0xbfd
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xce8
	.uleb128 0x1c
	.long	.LASF342
	.byte	0x2
	.byte	0x69
	.long	0x2b2
	.uleb128 0x1c
	.long	.LASF343
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x1c
	.long	.LASF344
	.byte	0x2
	.byte	0x6b
	.long	0x2a9
	.uleb128 0x1c
	.long	.LASF345
	.byte	0x2
	.byte	0x6c
	.long	0x510
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
	.long	.LASF346
	.byte	0x2
	.byte	0x6f
	.long	0x5b7
	.uleb128 0x1c
	.long	.LASF347
	.byte	0x2
	.byte	0x70
	.long	0xbf2
	.uleb128 0x1c
	.long	.LASF348
	.byte	0x2
	.byte	0x71
	.long	0xced
	.uleb128 0x1c
	.long	.LASF349
	.byte	0x2
	.byte	0x72
	.long	0xd24
	.uleb128 0x1c
	.long	.LASF350
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1d
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xdf7
	.uleb128 0x1c
	.long	.LASF351
	.byte	0x2
	.byte	0x75
	.long	0xdfd
	.byte	0
	.uleb128 0x1e
	.long	.LASF463
	.uleb128 0x3
	.byte	0x8
	.long	0xce8
	.uleb128 0x4
	.long	.LASF352
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xd24
	.uleb128 0x8
	.long	.LASF353
	.byte	0xa
	.byte	0x35
	.long	0x1064
	.byte	0
	.uleb128 0x8
	.long	.LASF354
	.byte	0xa
	.byte	0x36
	.long	0x1064
	.byte	0x8
	.uleb128 0x8
	.long	.LASF355
	.byte	0xa
	.byte	0x37
	.long	0x2a9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcf3
	.uleb128 0x4
	.long	.LASF356
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xdf7
	.uleb128 0x8
	.long	.LASF357
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
	.long	.LASF358
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF359
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF360
	.byte	0xb
	.byte	0xb7
	.long	0x1487
	.byte	0x20
	.uleb128 0x8
	.long	.LASF361
	.byte	0xb
	.byte	0xb7
	.long	0x1487
	.byte	0x28
	.uleb128 0x8
	.long	.LASF362
	.byte	0xb
	.byte	0xbc
	.long	0x13f2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF363
	.byte	0xb
	.byte	0xc0
	.long	0x13f2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF364
	.byte	0xb
	.byte	0xc6
	.long	0x13f2
	.byte	0x40
	.uleb128 0x8
	.long	.LASF365
	.byte	0xb
	.byte	0xc8
	.long	0x13f2
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x2b0
	.byte	0x50
	.uleb128 0x8
	.long	.LASF366
	.byte	0xb
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF367
	.byte	0xb
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF368
	.byte	0xb
	.byte	0xd4
	.long	0x13fd
	.byte	0x60
	.uleb128 0x8
	.long	.LASF369
	.byte	0xb
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF370
	.byte	0xb
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd2a
	.uleb128 0x3
	.byte	0x8
	.long	0xc42
	.uleb128 0x7
	.long	.LASF371
	.byte	0x2
	.byte	0x76
	.long	0xc4d
	.uleb128 0x13
	.long	0xe03
	.long	0xe1e
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0xe2e
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF372
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xef0
	.uleb128 0xe
	.long	.LASF373
	.sleb128 1
	.uleb128 0xe
	.long	.LASF374
	.sleb128 2
	.uleb128 0xe
	.long	.LASF375
	.sleb128 3
	.uleb128 0xe
	.long	.LASF376
	.sleb128 4
	.uleb128 0xe
	.long	.LASF377
	.sleb128 5
	.uleb128 0xe
	.long	.LASF378
	.sleb128 6
	.uleb128 0xe
	.long	.LASF379
	.sleb128 7
	.uleb128 0xe
	.long	.LASF380
	.sleb128 8
	.uleb128 0xe
	.long	.LASF381
	.sleb128 9
	.uleb128 0xe
	.long	.LASF382
	.sleb128 10
	.uleb128 0xe
	.long	.LASF383
	.sleb128 11
	.uleb128 0xe
	.long	.LASF384
	.sleb128 12
	.uleb128 0xe
	.long	.LASF385
	.sleb128 13
	.uleb128 0xe
	.long	.LASF386
	.sleb128 14
	.uleb128 0xe
	.long	.LASF387
	.sleb128 15
	.uleb128 0xe
	.long	.LASF388
	.sleb128 16
	.uleb128 0xe
	.long	.LASF389
	.sleb128 17
	.uleb128 0xe
	.long	.LASF390
	.sleb128 18
	.uleb128 0xe
	.long	.LASF391
	.sleb128 19
	.uleb128 0xe
	.long	.LASF392
	.sleb128 20
	.uleb128 0xe
	.long	.LASF393
	.sleb128 21
	.uleb128 0xe
	.long	.LASF394
	.sleb128 22
	.uleb128 0xe
	.long	.LASF395
	.sleb128 23
	.uleb128 0xe
	.long	.LASF396
	.sleb128 24
	.uleb128 0xe
	.long	.LASF397
	.sleb128 25
	.uleb128 0xe
	.long	.LASF398
	.sleb128 26
	.uleb128 0xe
	.long	.LASF399
	.sleb128 27
	.uleb128 0xe
	.long	.LASF400
	.sleb128 28
	.uleb128 0xe
	.long	.LASF401
	.sleb128 29
	.uleb128 0xe
	.long	.LASF402
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF403
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xf9f
	.uleb128 0xe
	.long	.LASF404
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF405
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF406
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF407
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF408
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF409
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF410
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF411
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF412
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF413
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF414
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF415
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF416
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF417
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF418
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF419
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF420
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF421
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF422
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF423
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF424
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF425
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF426
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF427
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xffb
	.uleb128 0xe
	.long	.LASF428
	.sleb128 0
	.uleb128 0xe
	.long	.LASF429
	.sleb128 1
	.uleb128 0xe
	.long	.LASF430
	.sleb128 2
	.uleb128 0xe
	.long	.LASF431
	.sleb128 3
	.uleb128 0xe
	.long	.LASF432
	.sleb128 4
	.uleb128 0xe
	.long	.LASF433
	.sleb128 5
	.uleb128 0xe
	.long	.LASF434
	.sleb128 6
	.uleb128 0xe
	.long	.LASF435
	.sleb128 7
	.uleb128 0xe
	.long	.LASF436
	.sleb128 8
	.uleb128 0xe
	.long	.LASF437
	.sleb128 9
	.uleb128 0xe
	.long	.LASF438
	.sleb128 10
	.uleb128 0xe
	.long	.LASF439
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF440
	.byte	0xc
	.byte	0x29
	.long	0x2c4
	.uleb128 0x4
	.long	.LASF441
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1043
	.uleb128 0x8
	.long	.LASF442
	.byte	0xa
	.byte	0x2d
	.long	0x1043
	.byte	0
	.uleb128 0x8
	.long	.LASF443
	.byte	0xa
	.byte	0x2e
	.long	0x1043
	.byte	0x8
	.uleb128 0x8
	.long	.LASF355
	.byte	0xa
	.byte	0x2f
	.long	0x2a9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF444
	.byte	0xa
	.byte	0x30
	.long	0x1049
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1006
	.uleb128 0x13
	.long	0x2c4
	.long	0x1059
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF445
	.byte	0xa
	.byte	0x31
	.long	0x1006
	.uleb128 0x3
	.byte	0x8
	.long	0x1059
	.uleb128 0x7
	.long	.LASF446
	.byte	0xa
	.byte	0x39
	.long	0xcf3
	.uleb128 0x7
	.long	.LASF447
	.byte	0xa
	.byte	0x39
	.long	0xd24
	.uleb128 0x18
	.long	.LASF448
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.long	0x10ab
	.uleb128 0xe
	.long	.LASF449
	.sleb128 0
	.uleb128 0xe
	.long	.LASF450
	.sleb128 1
	.uleb128 0xe
	.long	.LASF451
	.sleb128 2
	.uleb128 0xe
	.long	.LASF452
	.sleb128 3
	.uleb128 0xe
	.long	.LASF453
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.long	0x2c4
	.long	0x10bb
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF454
	.byte	0x10
	.byte	0xd
	.byte	0x24
	.long	0x10e0
	.uleb128 0x6
	.string	"rtx"
	.byte	0xd
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xd
	.byte	0x36
	.long	0x2a9
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x10
	.byte	0xd
	.byte	0x3a
	.long	0x11c5
	.uleb128 0x1d
	.string	"c"
	.byte	0xd
	.byte	0x3b
	.long	0x4ea
	.uleb128 0x1d
	.string	"uc"
	.byte	0xd
	.byte	0x3c
	.long	0x11c5
	.uleb128 0x1d
	.string	"s"
	.byte	0xd
	.byte	0x3d
	.long	0x11d5
	.uleb128 0x1d
	.string	"us"
	.byte	0xd
	.byte	0x3e
	.long	0x11e5
	.uleb128 0x1d
	.string	"i"
	.byte	0xd
	.byte	0x3f
	.long	0x11f5
	.uleb128 0x1d
	.string	"u"
	.byte	0xd
	.byte	0x40
	.long	0x1205
	.uleb128 0x1d
	.string	"l"
	.byte	0xd
	.byte	0x41
	.long	0x1215
	.uleb128 0x1d
	.string	"ul"
	.byte	0xd
	.byte	0x42
	.long	0x10ab
	.uleb128 0x1c
	.long	.LASF457
	.byte	0xd
	.byte	0x43
	.long	0x1215
	.uleb128 0x1c
	.long	.LASF458
	.byte	0xd
	.byte	0x44
	.long	0x10ab
	.uleb128 0x1c
	.long	.LASF459
	.byte	0xd
	.byte	0x45
	.long	0x1225
	.uleb128 0x1c
	.long	.LASF460
	.byte	0xd
	.byte	0x46
	.long	0x1235
	.uleb128 0x1d
	.string	"rtx"
	.byte	0xd
	.byte	0x47
	.long	0x1245
	.uleb128 0x1c
	.long	.LASF10
	.byte	0xd
	.byte	0x48
	.long	0x1255
	.uleb128 0x1c
	.long	.LASF15
	.byte	0xd
	.byte	0x49
	.long	0x1265
	.uleb128 0x1c
	.long	.LASF447
	.byte	0xd
	.byte	0x4a
	.long	0x1275
	.uleb128 0x1c
	.long	.LASF461
	.byte	0xd
	.byte	0x4b
	.long	0x1285
	.uleb128 0x1d
	.string	"reg"
	.byte	0xd
	.byte	0x4c
	.long	0x12a0
	.uleb128 0x1c
	.long	.LASF462
	.byte	0xd
	.byte	0x4d
	.long	0x1347
	.uleb128 0x1d
	.string	"bb"
	.byte	0xd
	.byte	0x4e
	.long	0x1357
	.uleb128 0x1d
	.string	"te"
	.byte	0xd
	.byte	0x4f
	.long	0x1367
	.byte	0
	.uleb128 0x13
	.long	0x2cb
	.long	0x11d5
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2e0
	.long	0x11e5
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d2
	.long	0x11f5
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x13e
	.long	0x1205
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2a9
	.long	0x1215
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2b2
	.long	0x1225
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2b0
	.long	0x1235
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2fd
	.long	0x1245
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x38
	.long	0x1255
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf8
	.long	0x1265
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x12e
	.long	0x1275
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xd24
	.long	0x1285
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1295
	.long	0x1295
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x129b
	.uleb128 0x1e
	.long	.LASF464
	.uleb128 0x13
	.long	0x12b0
	.long	0x12b0
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12b6
	.uleb128 0x4
	.long	.LASF465
	.byte	0x2c
	.byte	0xe
	.byte	0x2d
	.long	0x1347
	.uleb128 0x8
	.long	.LASF466
	.byte	0xe
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF467
	.byte	0xe
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF468
	.byte	0xe
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF469
	.byte	0xe
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF470
	.byte	0xe
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF471
	.byte	0xe
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF472
	.byte	0xe
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF473
	.byte	0xe
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF474
	.byte	0xe
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF475
	.byte	0xe
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF476
	.byte	0xe
	.byte	0x3d
	.long	0x303
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x10bb
	.long	0x1357
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xdf7
	.long	0x1367
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1377
	.long	0x1377
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x137d
	.uleb128 0x1e
	.long	.LASF477
	.uleb128 0x7
	.long	.LASF478
	.byte	0xd
	.byte	0x50
	.long	0x10e0
	.uleb128 0x4
	.long	.LASF479
	.byte	0x30
	.byte	0xd
	.byte	0x53
	.long	0x13d6
	.uleb128 0x8
	.long	.LASF480
	.byte	0xd
	.byte	0x54
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF481
	.byte	0xd
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF482
	.byte	0xd
	.byte	0x57
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF483
	.byte	0xd
	.byte	0x58
	.long	0x510
	.byte	0x18
	.uleb128 0x8
	.long	.LASF484
	.byte	0xd
	.byte	0x59
	.long	0x1382
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF485
	.byte	0xd
	.byte	0x5a
	.long	0x13e1
	.uleb128 0x3
	.byte	0x8
	.long	0x138d
	.uleb128 0x7
	.long	.LASF486
	.byte	0xb
	.byte	0x1f
	.long	0x106a
	.uleb128 0x7
	.long	.LASF487
	.byte	0xb
	.byte	0x21
	.long	0x1075
	.uleb128 0x7
	.long	.LASF488
	.byte	0xb
	.byte	0x74
	.long	0x2b2
	.uleb128 0x4
	.long	.LASF489
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1481
	.uleb128 0x8
	.long	.LASF490
	.byte	0xb
	.byte	0x79
	.long	0x1481
	.byte	0
	.uleb128 0x8
	.long	.LASF491
	.byte	0xb
	.byte	0x79
	.long	0x1481
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xdf7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF492
	.byte	0xb
	.byte	0x7c
	.long	0xdf7
	.byte	0x18
	.uleb128 0x8
	.long	.LASF493
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x2b0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF370
	.byte	0xb
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF494
	.byte	0xb
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF368
	.byte	0xb
	.byte	0x86
	.long	0x13fd
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1408
	.uleb128 0x7
	.long	.LASF495
	.byte	0xb
	.byte	0x88
	.long	0x1481
	.uleb128 0x7
	.long	.LASF475
	.byte	0xb
	.byte	0xdb
	.long	0xdf7
	.uleb128 0x4
	.long	.LASF496
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x14da
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF498
	.byte	0xf
	.byte	0x19
	.long	0x5b7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF499
	.byte	0xf
	.byte	0x1a
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF442
	.byte	0xf
	.byte	0x1b
	.long	0x14da
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x149d
	.uleb128 0x4
	.long	.LASF500
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x151d
	.uleb128 0x8
	.long	.LASF353
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF442
	.byte	0xf
	.byte	0x28
	.long	0x151d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14e0
	.uleb128 0x4
	.long	.LASF503
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x15cc
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0x39
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0x3c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0x4f
	.long	0x151d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0x53
	.long	0x13e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0x57
	.long	0x13e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF510
	.byte	0xf
	.byte	0x58
	.long	0x510
	.byte	0x30
	.uleb128 0x8
	.long	.LASF511
	.byte	0xf
	.byte	0x5e
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF512
	.byte	0xf
	.byte	0x63
	.long	0x15cc
	.byte	0x40
	.uleb128 0x8
	.long	.LASF513
	.byte	0xf
	.byte	0x67
	.long	0x15d2
	.byte	0x48
	.uleb128 0x8
	.long	.LASF514
	.byte	0xf
	.byte	0x6b
	.long	0xf9f
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cb
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF515
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x1639
	.uleb128 0x8
	.long	.LASF516
	.byte	0xf
	.byte	0x7b
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF517
	.byte	0xf
	.byte	0x8c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF518
	.byte	0xf
	.byte	0x92
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF519
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF520
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF521
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF522
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.long	.LASF523
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x1ab9
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x1abe
	.byte	0
	.uleb128 0x8
	.long	.LASF524
	.byte	0xf
	.byte	0xb1
	.long	0x1ac9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF337
	.byte	0xf
	.byte	0xb2
	.long	0x1acf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF525
	.byte	0xf
	.byte	0xb3
	.long	0x1ad5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF526
	.byte	0xf
	.byte	0xb4
	.long	0x1ae0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0xb9
	.long	0x510
	.byte	0x28
	.uleb128 0x8
	.long	.LASF527
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF528
	.byte	0xf
	.byte	0xbf
	.long	0x1ae6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF529
	.byte	0xf
	.byte	0xc4
	.long	0x13e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF530
	.byte	0xf
	.byte	0xc9
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF531
	.byte	0xf
	.byte	0xce
	.long	0x13e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF532
	.byte	0xf
	.byte	0xd2
	.long	0x13e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF533
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF534
	.byte	0xf
	.byte	0xda
	.long	0x29d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF535
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF536
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF537
	.byte	0xf
	.byte	0xe7
	.long	0x510
	.byte	0x88
	.uleb128 0x8
	.long	.LASF538
	.byte	0xf
	.byte	0xeb
	.long	0x1af1
	.byte	0x90
	.uleb128 0x8
	.long	.LASF539
	.byte	0xf
	.byte	0xee
	.long	0x13e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF540
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF541
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF542
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF543
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF544
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF545
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF546
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF547
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF548
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF549
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF550
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF551
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x20
	.long	.LASF552
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x20
	.long	.LASF553
	.byte	0xf
	.value	0x12f
	.long	0x2b2
	.value	0x108
	.uleb128 0x20
	.long	.LASF554
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x20
	.long	.LASF555
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x20
	.long	.LASF556
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x20
	.long	.LASF557
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x20
	.long	.LASF558
	.byte	0xf
	.value	0x148
	.long	0x2a9
	.value	0x130
	.uleb128 0x20
	.long	.LASF559
	.byte	0xf
	.value	0x14e
	.long	0xf9f
	.value	0x138
	.uleb128 0x20
	.long	.LASF560
	.byte	0xf
	.value	0x151
	.long	0x1afc
	.value	0x140
	.uleb128 0x20
	.long	.LASF561
	.byte	0xf
	.value	0x154
	.long	0x13e
	.value	0x148
	.uleb128 0x20
	.long	.LASF562
	.byte	0xf
	.value	0x157
	.long	0x13e
	.value	0x14c
	.uleb128 0x20
	.long	.LASF563
	.byte	0xf
	.value	0x15d
	.long	0x13e
	.value	0x150
	.uleb128 0x20
	.long	.LASF564
	.byte	0xf
	.value	0x161
	.long	0x14da
	.value	0x158
	.uleb128 0x20
	.long	.LASF565
	.byte	0xf
	.value	0x164
	.long	0x13e
	.value	0x160
	.uleb128 0x20
	.long	.LASF566
	.byte	0xf
	.value	0x165
	.long	0x13e
	.value	0x164
	.uleb128 0x20
	.long	.LASF567
	.byte	0xf
	.value	0x167
	.long	0x2b0
	.value	0x168
	.uleb128 0x20
	.long	.LASF568
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x20
	.long	.LASF569
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x20
	.long	.LASF570
	.byte	0xf
	.value	0x16d
	.long	0x13e
	.value	0x180
	.uleb128 0x20
	.long	.LASF571
	.byte	0xf
	.value	0x170
	.long	0x13e
	.value	0x184
	.uleb128 0x20
	.long	.LASF572
	.byte	0xf
	.value	0x175
	.long	0x1b07
	.value	0x188
	.uleb128 0x20
	.long	.LASF573
	.byte	0xf
	.value	0x177
	.long	0x13e
	.value	0x190
	.uleb128 0x20
	.long	.LASF574
	.byte	0xf
	.value	0x179
	.long	0x13e
	.value	0x194
	.uleb128 0x20
	.long	.LASF575
	.byte	0xf
	.value	0x17c
	.long	0x1b12
	.value	0x198
	.uleb128 0x20
	.long	.LASF576
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x21
	.long	.LASF577
	.byte	0xf
	.value	0x188
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF578
	.byte	0xf
	.value	0x18c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF579
	.byte	0xf
	.value	0x18f
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF580
	.byte	0xf
	.value	0x192
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF581
	.byte	0xf
	.value	0x195
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF582
	.byte	0xf
	.value	0x198
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF583
	.byte	0xf
	.value	0x19c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF584
	.byte	0xf
	.value	0x19f
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF585
	.byte	0xf
	.value	0x1a3
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF586
	.byte	0xf
	.value	0x1a7
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF587
	.byte	0xf
	.value	0x1aa
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF588
	.byte	0xf
	.value	0x1ad
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF589
	.byte	0xf
	.value	0x1b2
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF590
	.byte	0xf
	.value	0x1b6
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF591
	.byte	0xf
	.value	0x1b9
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF592
	.byte	0xf
	.value	0x1bd
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF593
	.byte	0xf
	.value	0x1c1
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF594
	.byte	0xf
	.value	0x1c5
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF595
	.byte	0xf
	.value	0x1cb
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF596
	.byte	0xf
	.value	0x1d4
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF597
	.byte	0xf
	.value	0x1d7
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF598
	.byte	0xf
	.value	0x1da
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF599
	.byte	0xf
	.value	0x1dd
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF600
	.byte	0xf
	.value	0x1e0
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1e
	.long	.LASF601
	.uleb128 0x3
	.byte	0x8
	.long	0x1ab9
	.uleb128 0x1e
	.long	.LASF602
	.uleb128 0x3
	.byte	0x8
	.long	0x1ac4
	.uleb128 0x3
	.byte	0x8
	.long	0x15d8
	.uleb128 0x3
	.byte	0x8
	.long	0x1523
	.uleb128 0x1e
	.long	.LASF603
	.uleb128 0x3
	.byte	0x8
	.long	0x1adb
	.uleb128 0x3
	.byte	0x8
	.long	0x1639
	.uleb128 0x1e
	.long	.LASF604
	.uleb128 0x3
	.byte	0x8
	.long	0x1aec
	.uleb128 0x1e
	.long	.LASF605
	.uleb128 0x3
	.byte	0x8
	.long	0x1af7
	.uleb128 0x1e
	.long	.LASF606
	.uleb128 0x3
	.byte	0x8
	.long	0x1b02
	.uleb128 0x1e
	.long	.LASF607
	.uleb128 0x3
	.byte	0x8
	.long	0x1b0d
	.uleb128 0x18
	.long	.LASF608
	.byte	0x4
	.byte	0x10
	.byte	0x1c
	.long	0x1b37
	.uleb128 0xe
	.long	.LASF609
	.sleb128 0
	.uleb128 0xe
	.long	.LASF610
	.sleb128 1
	.uleb128 0xe
	.long	.LASF611
	.sleb128 2
	.byte	0
	.uleb128 0x1f
	.long	.LASF612
	.value	0x3f0
	.byte	0x10
	.byte	0x95
	.long	0x1bd2
	.uleb128 0x8
	.long	.LASF613
	.byte	0x10
	.byte	0x9e
	.long	0x1bd2
	.byte	0
	.uleb128 0x8
	.long	.LASF614
	.byte	0x10
	.byte	0xa1
	.long	0x1be2
	.byte	0xf0
	.uleb128 0x22
	.long	.LASF615
	.byte	0x10
	.byte	0xa4
	.long	0x1bf2
	.value	0x1e0
	.uleb128 0x22
	.long	.LASF616
	.byte	0x10
	.byte	0xa7
	.long	0x1c02
	.value	0x2d0
	.uleb128 0x22
	.long	.LASF617
	.byte	0x10
	.byte	0xaa
	.long	0x1c12
	.value	0x348
	.uleb128 0x22
	.long	.LASF618
	.byte	0x10
	.byte	0xae
	.long	0x1c22
	.value	0x3c0
	.uleb128 0x22
	.long	.LASF619
	.byte	0x10
	.byte	0xb2
	.long	0x496
	.value	0x3e0
	.uleb128 0x22
	.long	.LASF620
	.byte	0x10
	.byte	0xbf
	.long	0x303
	.value	0x3e4
	.uleb128 0x22
	.long	.LASF621
	.byte	0x10
	.byte	0xc2
	.long	0x303
	.value	0x3e5
	.uleb128 0x22
	.long	.LASF622
	.byte	0x10
	.byte	0xc5
	.long	0x303
	.value	0x3e6
	.uleb128 0x22
	.long	.LASF623
	.byte	0x10
	.byte	0xc8
	.long	0x2d
	.value	0x3e8
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0x1be2
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0xf9f
	.long	0x1bf2
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x510
	.long	0x1c02
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x5b7
	.long	0x1c12
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x1b18
	.long	0x1c22
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0xf9f
	.long	0x1c32
	.uleb128 0x14
	.long	0x145
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.string	"qty"
	.byte	0x2c
	.byte	0x1
	.byte	0x54
	.long	0x1ccf
	.uleb128 0x8
	.long	.LASF624
	.byte	0x1
	.byte	0x58
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF471
	.byte	0x1
	.byte	0x5c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF625
	.byte	0x1
	.byte	0x61
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF626
	.byte	0x1
	.byte	0x69
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1
	.byte	0x73
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF627
	.byte	0x1
	.byte	0x77
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF628
	.byte	0x1
	.byte	0x7d
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF629
	.byte	0x1
	.byte	0x83
	.long	0x18a
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF630
	.byte	0x1
	.byte	0x88
	.long	0x18a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1
	.byte	0x1
	.byte	0x8d
	.long	0x5b7
	.byte	0x24
	.uleb128 0x8
	.long	.LASF631
	.byte	0x1
	.byte	0x92
	.long	0x2e0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF476
	.byte	0x1
	.byte	0x97
	.long	0x303
	.byte	0x2a
	.byte	0
	.uleb128 0x4
	.long	.LASF632
	.byte	0x28
	.byte	0x1
	.byte	0xf5
	.long	0x1d1c
	.uleb128 0x8
	.long	.LASF633
	.byte	0x1
	.byte	0xfa
	.long	0x303
	.byte	0
	.uleb128 0x10
	.long	.LASF634
	.byte	0x1
	.value	0x100
	.long	0x2d
	.byte	0x8
	.uleb128 0x10
	.long	.LASF635
	.byte	0x1
	.value	0x102
	.long	0xf9f
	.byte	0x10
	.uleb128 0x10
	.long	.LASF367
	.byte	0x1
	.value	0x107
	.long	0x13e
	.byte	0x18
	.uleb128 0x10
	.long	.LASF636
	.byte	0x1
	.value	0x10b
	.long	0x2d
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.long	.LASF639
	.byte	0x1
	.value	0x137
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d86
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.value	0x138
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x139
	.long	0x5b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF339
	.byte	0x1
	.value	0x13a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF625
	.byte	0x1
	.value	0x13a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF637
	.byte	0x1
	.value	0x13c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF650
	.byte	0x1
	.value	0x151
	.long	0x13e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dd2
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x153
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x153
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF638
	.byte	0x1
	.value	0x154
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF640
	.byte	0x1
	.value	0x1c7
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e1e
	.uleb128 0x25
	.long	.LASF492
	.byte	0x1
	.value	0x1c8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x1c9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF484
	.byte	0x1
	.value	0x1ca
	.long	0x2b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF644
	.byte	0x1
	.value	0x1db
	.long	0x13e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8c
	.uleb128 0x25
	.long	.LASF641
	.byte	0x1
	.value	0x1dc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x1dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x1de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x1e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x1e1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF645
	.byte	0x1
	.value	0x20c
	.long	0x13e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f06
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x20d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x20f
	.long	0x775
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x210
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x211
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x239
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF646
	.byte	0x1
	.value	0x248
	.long	0x13e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7d
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x249
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.value	0x24a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x24c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x24c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x24d
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x24e
	.long	0x775
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF647
	.byte	0x1
	.value	0x288
	.long	0x13e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe5
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x289
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x28b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x28b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x28c
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x28d
	.long	0x775
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF648
	.byte	0x1
	.value	0x2b9
	.long	0x13e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x205c
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x2bb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x2ba
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x2bd
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x2bd
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x2be
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x2bf
	.long	0x775
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF649
	.byte	0x1
	.value	0x300
	.long	0x13e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x20bb
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x301
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF641
	.byte	0x1
	.value	0x302
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"end"
	.byte	0x1
	.value	0x303
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x305
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF651
	.byte	0x1
	.value	0x317
	.long	0x13e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x20eb
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x318
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF652
	.byte	0x1
	.value	0x32e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2426
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x330
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF653
	.byte	0x1
	.value	0x331
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF367
	.byte	0x1
	.value	0x332
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.long	.LASF654
	.byte	0x1
	.value	0x333
	.long	0x13e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF655
	.byte	0x1
	.value	0x334
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2d
	.long	.LASF679
	.long	0x2436
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11223
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x2280
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x340
	.long	0x1492
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x345
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x346
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF492
	.byte	0x1
	.value	0x347
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x347
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x348
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2236
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x35c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF656
	.byte	0x1
	.value	0x360
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x225c
	.uleb128 0x26
	.long	.LASF657
	.byte	0x1
	.value	0x388
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x3e0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x2361
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x418
	.long	0x1492
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x26
	.long	.LASF658
	.byte	0x1
	.value	0x41d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x428
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x26
	.long	.LASF659
	.byte	0x1
	.value	0x429
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x233c
	.uleb128 0x26
	.long	.LASF660
	.byte	0x1
	.value	0x443
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF661
	.byte	0x1
	.value	0x444
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x445
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.long	.LASF662
	.byte	0x1
	.value	0x467
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x489
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x28
	.string	"l"
	.byte	0x1
	.value	0x489
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2b
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x26
	.long	.LASF663
	.byte	0x1
	.value	0x495
	.long	0x1064
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF664
	.byte	0x1
	.value	0x495
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.long	.LASF665
	.byte	0x1
	.value	0x495
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.long	.LASF666
	.byte	0x1
	.value	0x495
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x26
	.long	.LASF667
	.byte	0x1
	.value	0x495
	.long	0x2c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x26
	.long	.LASF668
	.byte	0x1
	.value	0x495
	.long	0x2c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x303
	.long	0x2436
	.uleb128 0x14
	.long	0x145
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.long	0x2426
	.uleb128 0x24
	.long	.LASF669
	.byte	0x1
	.value	0x4ad
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c7
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x4ae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF670
	.byte	0x1
	.value	0x4ae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF484
	.byte	0x1
	.value	0x4af
	.long	0x2b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x4b1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF671
	.byte	0x1
	.value	0x4b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x4bc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF672
	.byte	0x1
	.value	0x4c7
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x26db
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x4c8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4ca
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x4ca
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x4cb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x4cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF673
	.byte	0x1
	.value	0x4cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF674
	.byte	0x1
	.value	0x4cd
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x26
	.long	.LASF675
	.byte	0x1
	.value	0x4ce
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF676
	.byte	0x1
	.value	0x4cf
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x26
	.long	.LASF677
	.byte	0x1
	.value	0x4d0
	.long	0x5aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF678
	.byte	0x1
	.value	0x4d1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LASF679
	.long	0x26eb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11293
	.uleb128 0x2e
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x26a8
	.uleb128 0x26
	.long	.LASF658
	.byte	0x1
	.value	0x4f5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x4f5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"win"
	.byte	0x1
	.value	0x4f6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"r0"
	.byte	0x1
	.value	0x4f7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"r1"
	.byte	0x1
	.value	0x4f7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF680
	.byte	0x1
	.value	0x4f8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4f9
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x26
	.long	.LASF681
	.byte	0x1
	.value	0x519
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF682
	.byte	0x1
	.value	0x51c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2684
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x520
	.long	0x510
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF683
	.byte	0x1
	.value	0x521
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x26
	.long	.LASF684
	.byte	0x1
	.value	0x55a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x26
	.long	.LASF685
	.byte	0x1
	.value	0x651
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF686
	.byte	0x1
	.value	0x652
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x303
	.long	0x26eb
	.uleb128 0x14
	.long	0x145
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.long	0x26db
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x6ae
	.long	0x13e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x272f
	.uleb128 0x29
	.string	"q1"
	.byte	0x1
	.value	0x6af
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"q2"
	.byte	0x1
	.value	0x6af
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF688
	.byte	0x1
	.value	0x6b5
	.long	0x13e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x279b
	.uleb128 0x29
	.string	"q1p"
	.byte	0x1
	.value	0x6b6
	.long	0x5b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"q2p"
	.byte	0x1
	.value	0x6b7
	.long	0x5b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"q1"
	.byte	0x1
	.value	0x6b9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"q2"
	.byte	0x1
	.value	0x6b9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x6ba
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF689
	.byte	0x1
	.value	0x6d1
	.long	0x13e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e9
	.uleb128 0x29
	.string	"q1"
	.byte	0x1
	.value	0x6d2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"q2"
	.byte	0x1
	.value	0x6d2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x6d4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF690
	.byte	0x1
	.value	0x6dd
	.long	0x13e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2855
	.uleb128 0x29
	.string	"q1p"
	.byte	0x1
	.value	0x6de
	.long	0x5b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"q2p"
	.byte	0x1
	.value	0x6df
	.long	0x5b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"q1"
	.byte	0x1
	.value	0x6e1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"q2"
	.byte	0x1
	.value	0x6e1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x6e2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0x70a
	.long	0x13e
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x299e
	.uleb128 0x25
	.long	.LASF692
	.byte	0x1
	.value	0x70b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF693
	.byte	0x1
	.value	0x70b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF684
	.byte	0x1
	.value	0x70c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.long	.LASF674
	.byte	0x1
	.value	0x70d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF623
	.byte	0x1
	.value	0x70e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF694
	.byte	0x1
	.value	0x70f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF695
	.byte	0x1
	.value	0x711
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF696
	.byte	0x1
	.value	0x711
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF338
	.byte	0x1
	.value	0x712
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF697
	.byte	0x1
	.value	0x713
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF698
	.byte	0x1
	.value	0x713
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF699
	.byte	0x1
	.value	0x714
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2959
	.uleb128 0x26
	.long	.LASF700
	.byte	0x1
	.value	0x71c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x297e
	.uleb128 0x26
	.long	.LASF700
	.byte	0x1
	.value	0x73d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7cc
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF701
	.byte	0x1
	.value	0x7e0
	.long	0x13e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x29ee
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x7e1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF702
	.byte	0x1
	.value	0x7e2
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF703
	.byte	0x1
	.value	0x7e4
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF704
	.byte	0x1
	.value	0x7ec
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a3a
	.uleb128 0x25
	.long	.LASF637
	.byte	0x1
	.value	0x7ed
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x7ee
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF703
	.byte	0x1
	.value	0x7f0
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF705
	.byte	0x1
	.value	0x806
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a86
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x807
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF706
	.byte	0x1
	.value	0x808
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF484
	.byte	0x1
	.value	0x809
	.long	0x2b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.LASF707
	.byte	0x1
	.value	0x81d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad2
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x81e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF625
	.byte	0x1
	.value	0x81f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x821
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF708
	.byte	0x1
	.value	0x846
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b5e
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x847
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF709
	.byte	0x1
	.value	0x848
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x84a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x85a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x85d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x1
	.value	0x889
	.long	0x13e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cd3
	.uleb128 0x25
	.long	.LASF702
	.byte	0x1
	.value	0x88b
	.long	0x18a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x88c
	.long	0x5b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF637
	.byte	0x1
	.value	0x88d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.long	.LASF711
	.byte	0x1
	.value	0x88e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF712
	.byte	0x1
	.value	0x88f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.long	.LASF713
	.byte	0x1
	.value	0x890
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF714
	.byte	0x1
	.value	0x890
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x892
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"ins"
	.byte	0x1
	.value	0x892
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x897
	.long	0xffb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF715
	.byte	0x1
	.value	0x897
	.long	0xffb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.byte	0x8
	.byte	0x1
	.value	0x899
	.long	0x2c4a
	.uleb128 0x10
	.long	.LASF716
	.byte	0x1
	.value	0x899
	.long	0x139
	.byte	0
	.uleb128 0x30
	.string	"to"
	.byte	0x1
	.value	0x899
	.long	0x139
	.byte	0x4
	.byte	0
	.uleb128 0x26
	.long	.LASF717
	.byte	0x1
	.value	0x899
	.long	0x2ce3
	.uleb128 0x9
	.byte	0x3
	.quad	eliminables.11457
	.uleb128 0x2d
	.long	.LASF679
	.long	0x2cf8
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11458
	.uleb128 0x31
	.long	.LASF779
	.byte	0x1
	.value	0x900
	.quad	.L472
	.uleb128 0x2b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.long	.LASF56
	.byte	0x1
	.value	0x8e5
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x8ef
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF718
	.byte	0x1
	.value	0x8f0
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c27
	.long	0x2ce3
	.uleb128 0x14
	.long	0x145
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	0x2cd3
	.uleb128 0x13
	.long	0x303
	.long	0x2cf8
	.uleb128 0x14
	.long	0x145
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.long	0x2ce8
	.uleb128 0x32
	.long	.LASF719
	.byte	0x1
	.value	0x928
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d56
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.value	0x929
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x92a
	.long	0x5b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF720
	.byte	0x1
	.value	0x92b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x92d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x32
	.long	.LASF721
	.byte	0x1
	.value	0x93b
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ddb
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.value	0x93c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x93d
	.long	0x5b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF720
	.byte	0x1
	.value	0x93e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF625
	.byte	0x1
	.value	0x93e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF626
	.byte	0x1
	.value	0x93e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x940
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x945
	.long	0xffb
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2a
	.long	.LASF723
	.byte	0x1
	.value	0x963
	.long	0x13e
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e63
	.uleb128 0x25
	.long	.LASF623
	.byte	0x1
	.value	0x964
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"r0"
	.byte	0x1
	.value	0x964
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"r1"
	.byte	0x1
	.value	0x964
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"ok"
	.byte	0x1
	.value	0x966
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x967
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x968
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF501
	.byte	0x1
	.value	0x968
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF724
	.byte	0x1
	.value	0x98c
	.long	0x13e
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ecd
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x98d
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x98f
	.long	0x303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x26
	.long	.LASF725
	.byte	0x1
	.value	0x990
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF726
	.byte	0x1
	.value	0x991
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF727
	.byte	0x1
	.value	0x992
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF780
	.byte	0x1
	.value	0x9c6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f08
	.uleb128 0x25
	.long	.LASF728
	.byte	0x1
	.value	0x9c7
	.long	0x2f08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x9c9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30a
	.uleb128 0x35
	.long	.LASF729
	.byte	0x1
	.byte	0x51
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	next_qty
	.uleb128 0x36
	.string	"qty"
	.byte	0x1
	.byte	0x9b
	.long	0x2f38
	.uleb128 0x9
	.byte	0x3
	.quad	qty
	.uleb128 0x3
	.byte	0x8
	.long	0x1c32
	.uleb128 0x35
	.long	.LASF730
	.byte	0x1
	.byte	0xaa
	.long	0x2f53
	.uleb128 0x9
	.byte	0x3
	.quad	qty_phys_copy_sugg
	.uleb128 0x3
	.byte	0x8
	.long	0xffb
	.uleb128 0x35
	.long	.LASF731
	.byte	0x1
	.byte	0xaf
	.long	0x2f53
	.uleb128 0x9
	.byte	0x3
	.quad	qty_phys_sugg
	.uleb128 0x35
	.long	.LASF732
	.byte	0x1
	.byte	0xb3
	.long	0x2f83
	.uleb128 0x9
	.byte	0x3
	.quad	qty_phys_num_copy_sugg
	.uleb128 0x3
	.byte	0x8
	.long	0x2e0
	.uleb128 0x35
	.long	.LASF733
	.byte	0x1
	.byte	0xb7
	.long	0x2f83
	.uleb128 0x9
	.byte	0x3
	.quad	qty_phys_num_sugg
	.uleb128 0x35
	.long	.LASF734
	.byte	0x1
	.byte	0xbd
	.long	0x5aa
	.uleb128 0x9
	.byte	0x3
	.quad	reg_next_in_qty
	.uleb128 0x35
	.long	.LASF735
	.byte	0x1
	.byte	0xce
	.long	0x5aa
	.uleb128 0x9
	.byte	0x3
	.quad	reg_qty
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.byte	0xd4
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	reg_offset
	.uleb128 0x35
	.long	.LASF737
	.byte	0x1
	.byte	0xe2
	.long	0xffb
	.uleb128 0x9
	.byte	0x3
	.quad	regs_live
	.uleb128 0x35
	.long	.LASF738
	.byte	0x1
	.byte	0xee
	.long	0x2f53
	.uleb128 0x9
	.byte	0x3
	.quad	regs_live_at
	.uleb128 0x35
	.long	.LASF739
	.byte	0x1
	.byte	0xf2
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	this_insn_number
	.uleb128 0x35
	.long	.LASF740
	.byte	0x1
	.byte	0xf3
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	this_insn
	.uleb128 0x26
	.long	.LASF741
	.byte	0x1
	.value	0x111
	.long	0x3047
	.uleb128 0x9
	.byte	0x3
	.quad	reg_equiv
	.uleb128 0x3
	.byte	0x8
	.long	0x1ccf
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0x114
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	recorded_label_ref
	.uleb128 0x26
	.long	.LASF743
	.byte	0x1
	.value	0x1be
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	equiv_mem
	.uleb128 0x26
	.long	.LASF744
	.byte	0x1
	.value	0x1c1
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	equiv_mem_modified
	.uleb128 0x37
	.long	.LASF745
	.byte	0x4
	.byte	0x62
	.long	0x13e
	.uleb128 0x37
	.long	.LASF746
	.byte	0x4
	.byte	0xd6
	.long	0x139
	.uleb128 0x38
	.long	.LASF747
	.byte	0x4
	.value	0x19c
	.long	0x14c
	.uleb128 0x13
	.long	0x2d2
	.long	0x30c1
	.uleb128 0x14
	.long	0x145
	.byte	0xff
	.byte	0
	.uleb128 0x37
	.long	.LASF748
	.byte	0x11
	.byte	0x48
	.long	0x30cc
	.uleb128 0xa
	.long	0x30b1
	.uleb128 0x13
	.long	0x72c
	.long	0x30e1
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF189
	.byte	0x9
	.byte	0x34
	.long	0x30ec
	.uleb128 0xa
	.long	0x30d1
	.uleb128 0x13
	.long	0x2cb
	.long	0x3101
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF749
	.byte	0x9
	.byte	0x50
	.long	0x310c
	.uleb128 0xa
	.long	0x30f1
	.uleb128 0x13
	.long	0x2cb
	.long	0x3121
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF750
	.byte	0x2
	.byte	0x36
	.long	0x312c
	.uleb128 0xa
	.long	0x3111
	.uleb128 0x13
	.long	0x510
	.long	0x3141
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF751
	.byte	0x2
	.byte	0x3c
	.long	0x314c
	.uleb128 0xa
	.long	0x3131
	.uleb128 0x13
	.long	0x303
	.long	0x3161
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF752
	.byte	0x2
	.byte	0x3f
	.long	0x316c
	.uleb128 0xa
	.long	0x3151
	.uleb128 0x13
	.long	0x2d
	.long	0x3181
	.uleb128 0x14
	.long	0x145
	.byte	0x80
	.byte	0
	.uleb128 0x38
	.long	.LASF753
	.byte	0x2
	.value	0x611
	.long	0x3171
	.uleb128 0x13
	.long	0x2d
	.long	0x319d
	.uleb128 0x14
	.long	0x145
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF754
	.byte	0x2
	.value	0x652
	.long	0x318d
	.uleb128 0x37
	.long	.LASF755
	.byte	0x12
	.byte	0x3d
	.long	0x13e
	.uleb128 0x37
	.long	.LASF756
	.byte	0x12
	.byte	0x41
	.long	0x13e
	.uleb128 0x37
	.long	.LASF757
	.byte	0x12
	.byte	0xe6
	.long	0x13e
	.uleb128 0x38
	.long	.LASF758
	.byte	0x12
	.value	0x196
	.long	0x13e
	.uleb128 0x38
	.long	.LASF759
	.byte	0xc
	.value	0x18f
	.long	0xffb
	.uleb128 0x13
	.long	0x303
	.long	0x31f2
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.long	.LASF760
	.byte	0xc
	.value	0x196
	.long	0x31e2
	.uleb128 0x38
	.long	.LASF761
	.byte	0xc
	.value	0x19a
	.long	0xffb
	.uleb128 0x38
	.long	.LASF762
	.byte	0xc
	.value	0x19d
	.long	0xffb
	.uleb128 0x38
	.long	.LASF763
	.byte	0xc
	.value	0x1a9
	.long	0xffb
	.uleb128 0x13
	.long	0x13e
	.long	0x3232
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.long	.LASF764
	.byte	0xc
	.value	0x1be
	.long	0x3222
	.uleb128 0x13
	.long	0xffb
	.long	0x324e
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x38
	.long	.LASF765
	.byte	0xc
	.value	0x1c7
	.long	0x323e
	.uleb128 0x37
	.long	.LASF766
	.byte	0xb
	.byte	0xe4
	.long	0x13e
	.uleb128 0x37
	.long	.LASF767
	.byte	0xb
	.byte	0xec
	.long	0x13d6
	.uleb128 0x37
	.long	.LASF768
	.byte	0xe
	.byte	0x2a
	.long	0x13e
	.uleb128 0x37
	.long	.LASF769
	.byte	0xe
	.byte	0x41
	.long	0x13d6
	.uleb128 0x39
	.long	.LASF770
	.byte	0x1
	.byte	0xdd
	.long	0x2f83
	.uleb128 0x9
	.byte	0x3
	.quad	reg_renumber
	.uleb128 0x37
	.long	.LASF771
	.byte	0xe
	.byte	0xc9
	.long	0x13e
	.uleb128 0x38
	.long	.LASF772
	.byte	0xf
	.value	0x1e4
	.long	0x1ae6
	.uleb128 0x37
	.long	.LASF773
	.byte	0x10
	.byte	0x91
	.long	0x13e
	.uleb128 0x37
	.long	.LASF612
	.byte	0x10
	.byte	0xcb
	.long	0x1b37
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
	.uleb128 0x16
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
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
.LASF388:
	.string	"REG_BR_PROB"
.LASF418:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF571:
	.string	"profile_label_no"
.LASF345:
	.string	"rtstr"
.LASF405:
	.string	"NOTE_INSN_DELETED"
.LASF103:
	.string	"_unused2"
.LASF273:
	.string	"UMOD"
.LASF327:
	.string	"min_align"
.LASF759:
	.string	"fixed_reg_set"
.LASF89:
	.string	"_fileno"
.LASF218:
	.string	"DEFINE_COMBINE"
.LASF456:
	.string	"varray_data_tag"
.LASF34:
	.string	"AD_REGS"
.LASF699:
	.string	"sqty"
.LASF353:
	.string	"first"
.LASF727:
	.string	"num_matching_alts"
.LASF675:
	.string	"insn_count"
.LASF565:
	.string	"inlinable"
.LASF597:
	.string	"uses_const_pool"
.LASF729:
	.string	"next_qty"
.LASF314:
	.string	"CONSTANT_P_RTX"
.LASF690:
	.string	"qty_sugg_compare_1"
.LASF653:
	.string	"block"
.LASF684:
	.string	"may_save_copy"
.LASF344:
	.string	"rtuint"
.LASF766:
	.string	"n_basic_blocks"
.LASF348:
	.string	"rt_cselib"
.LASF217:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF570:
	.string	"inl_max_label_num"
.LASF630:
	.string	"alternate_class"
.LASF277:
	.string	"LSHIFTRT"
.LASF109:
	.string	"_sch_iscntrl"
.LASF211:
	.string	"MATCH_PAR_DUP"
.LASF94:
	.string	"_shortbuf"
.LASF776:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF760:
	.string	"call_used_regs"
.LASF272:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF115:
	.string	"_sch_isupper"
.LASF205:
	.string	"MATCH_OPERAND"
.LASF505:
	.string	"x_first_label_num"
.LASF186:
	.string	"CCFPmode"
.LASF683:
	.string	"this_match"
.LASF26:
	.string	"reg_class"
.LASF611:
	.string	"OP_INOUT"
.LASF294:
	.string	"UNLE"
.LASF38:
	.string	"LEGACY_REGS"
.LASF332:
	.string	"max_after_base"
.LASF629:
	.string	"min_class"
.LASF295:
	.string	"UNLT"
.LASF598:
	.string	"uses_pic_offset_table"
.LASF604:
	.string	"initial_value_struct"
.LASF494:
	.string	"probability"
.LASF158:
	.string	"CTImode"
.LASF75:
	.string	"_flags"
.LASF633:
	.string	"replace"
.LASF442:
	.string	"next"
.LASF685:
	.string	"fake_birth"
.LASF691:
	.string	"combine_regs"
.LASF70:
	.string	"__off_t"
.LASF744:
	.string	"equiv_mem_modified"
.LASF156:
	.string	"CSImode"
.LASF40:
	.string	"FP_TOP_REG"
.LASF316:
	.string	"VEC_MERGE"
.LASF568:
	.string	"original_decl_initial"
.LASF95:
	.string	"_lock"
.LASF458:
	.string	"uhint"
.LASF249:
	.string	"RETURN"
.LASF459:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF708:
	.string	"wipe_dead_reg"
.LASF192:
	.string	"MODE_FLOAT"
.LASF336:
	.string	"alias"
.LASF333:
	.string	"offset_unsigned"
.LASF162:
	.string	"V2SImode"
.LASF594:
	.string	"stdarg"
.LASF555:
	.string	"x_trampoline_list"
.LASF35:
	.string	"Q_REGS"
.LASF236:
	.string	"CODE_LABEL"
.LASF157:
	.string	"CDImode"
.LASF242:
	.string	"UNSPEC"
.LASF235:
	.string	"BARRIER"
.LASF411:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF238:
	.string	"COND_EXEC"
.LASF252:
	.string	"CONST_INT"
.LASF649:
	.string	"memref_used_between_p"
.LASF248:
	.string	"CALL"
.LASF60:
	.string	"maybe_vaarg"
.LASF576:
	.string	"epilogue_delay_list"
.LASF164:
	.string	"V4QImode"
.LASF449:
	.string	"BITMAP_AND"
.LASF686:
	.string	"fake_death"
.LASF451:
	.string	"BITMAP_IOR"
.LASF227:
	.string	"ATTR"
.LASF368:
	.string	"count"
.LASF346:
	.string	"rttype"
.LASF751:
	.string	"rtx_format"
.LASF29:
	.string	"DREG"
.LASF358:
	.string	"head_tree"
.LASF47:
	.string	"FLOAT_SSE_REGS"
.LASF657:
	.string	"init_insn"
.LASF435:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF724:
	.string	"requires_inout"
.LASF757:
	.string	"flag_caller_saves"
.LASF163:
	.string	"V2DImode"
.LASF545:
	.string	"x_return_label"
.LASF21:
	.string	"PROCESSOR_K6"
.LASF485:
	.string	"varray_type"
.LASF341:
	.string	"mem_attrs"
.LASF81:
	.string	"_IO_write_end"
.LASF382:
	.string	"REG_UNUSED"
.LASF220:
	.string	"DEFINE_DELAY"
.LASF640:
	.string	"validate_equiv_mem_from_store"
.LASF270:
	.string	"MINUS"
.LASF552:
	.string	"x_clobber_return_insn"
.LASF32:
	.string	"SIREG"
.LASF741:
	.string	"reg_equiv"
.LASF464:
	.string	"sched_info_tag"
.LASF625:
	.string	"birth"
.LASF260:
	.string	"STRICT_LOW_PART"
.LASF764:
	.string	"reg_alloc_order"
.LASF660:
	.string	"equiv_link"
.LASF202:
	.string	"INCLUDE"
.LASF431:
	.string	"GR_FRAME_POINTER"
.LASF366:
	.string	"index"
.LASF471:
	.string	"freq"
.LASF298:
	.string	"ZERO_EXTEND"
.LASF301:
	.string	"FLOAT_TRUNCATE"
.LASF521:
	.string	"x_forced_labels"
.LASF536:
	.string	"internal_arg_pointer"
.LASF428:
	.string	"GR_PC"
.LASF31:
	.string	"BREG"
.LASF173:
	.string	"V2SFmode"
.LASF478:
	.string	"varray_data"
.LASF606:
	.string	"machine_function"
.LASF302:
	.string	"FLOAT"
.LASF394:
	.string	"REG_EH_CONTEXT"
.LASF128:
	.string	"machine_mode"
.LASF763:
	.string	"call_fixed_reg_set"
.LASF637:
	.string	"qtyno"
.LASF719:
	.string	"mark_life"
.LASF351:
	.string	"rtmem"
.LASF647:
	.string	"contains_replace_regs"
.LASF564:
	.string	"fixup_var_refs_queue"
.LASF311:
	.string	"RANGE_REG"
.LASF349:
	.string	"rtbit"
.LASF441:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF135:
	.string	"TImode"
.LASF287:
	.string	"PRE_MODIFY"
.LASF579:
	.string	"returns_pointer"
.LASF687:
	.string	"qty_compare"
.LASF117:
	.string	"_sch_isidst"
.LASF300:
	.string	"FLOAT_EXTEND"
.LASF468:
	.string	"last_note_uid"
.LASF524:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF406:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF133:
	.string	"SImode"
.LASF244:
	.string	"ADDR_VEC"
.LASF602:
	.string	"stmt_status"
.LASF174:
	.string	"V2DFmode"
.LASF326:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF340:
	.string	"align"
.LASF59:
	.string	"sse_regno"
.LASF626:
	.string	"death"
.LASF355:
	.string	"indx"
.LASF572:
	.string	"machine"
.LASF669:
	.string	"no_equiv"
.LASF720:
	.string	"life"
.LASF263:
	.string	"SYMBOL_REF"
.LASF404:
	.string	"NOTE_INSN_BIAS"
.LASF125:
	.string	"_sch_isbasic"
.LASF426:
	.string	"NOTE_INSN_MAX"
.LASF519:
	.string	"x_saveregs_value"
.LASF765:
	.string	"reg_class_contents"
.LASF216:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF268:
	.string	"COMPARE"
.LASF296:
	.string	"LTGT"
.LASF499:
	.string	"unsignedp"
.LASF308:
	.string	"HIGH"
.LASF265:
	.string	"QUEUED"
.LASF36:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF631:
	.string	"phys_reg"
.LASF134:
	.string	"DImode"
.LASF758:
	.string	"flag_schedule_insns_after_reload"
.LASF454:
	.string	"const_equiv_data"
.LASF538:
	.string	"hard_reg_initial_vals"
.LASF517:
	.string	"x_inhibit_defer_pop"
.LASF88:
	.string	"_chain"
.LASF286:
	.string	"POST_INC"
.LASF17:
	.string	"PROCESSOR_I386"
.LASF448:
	.string	"bitmap_bits"
.LASF450:
	.string	"BITMAP_AND_COMPL"
.LASF147:
	.string	"TFmode"
.LASF66:
	.string	"unsigned char"
.LASF605:
	.string	"temp_slot"
.LASF41:
	.string	"FP_SECOND_REG"
.LASF522:
	.string	"x_pending_chain"
.LASF712:
	.string	"just_try_suggested"
.LASF537:
	.string	"cannot_inline"
.LASF677:
	.string	"qty_order"
.LASF778:
	.string	"_IO_lock_t"
.LASF702:
	.string	"class"
.LASF23:
	.string	"PROCESSOR_PENTIUM4"
.LASF475:
	.string	"basic_block"
.LASF130:
	.string	"BImode"
.LASF284:
	.string	"PRE_INC"
.LASF381:
	.string	"REG_NO_CONFLICT"
.LASF144:
	.string	"SFmode"
.LASF116:
	.string	"_sch_isxdigit"
.LASF525:
	.string	"emit"
.LASF615:
	.string	"constraints"
.LASF233:
	.string	"JUMP_INSN"
.LASF363:
	.string	"cond_local_set"
.LASF24:
	.string	"PROCESSOR_max"
.LASF495:
	.string	"edge"
.LASF196:
	.string	"MODE_COMPLEX_FLOAT"
.LASF350:
	.string	"rttree"
.LASF659:
	.string	"equiv_insn"
.LASF665:
	.string	"bit_num_"
.LASF403:
	.string	"insn_note"
.LASF613:
	.string	"operand"
.LASF422:
	.string	"NOTE_INSN_RANGE_END"
.LASF215:
	.string	"DEFINE_SPLIT"
.LASF586:
	.string	"has_nonlocal_goto"
.LASF600:
	.string	"arg_pointer_save_area_init"
.LASF644:
	.string	"validate_equiv_mem"
.LASF254:
	.string	"CONST_VECTOR"
.LASF212:
	.string	"MATCH_INSN"
.LASF546:
	.string	"x_save_expr_regs"
.LASF145:
	.string	"DFmode"
.LASF43:
	.string	"SSE_REGS"
.LASF488:
	.string	"gcov_type"
.LASF64:
	.string	"size_t"
.LASF246:
	.string	"PREFETCH"
.LASF52:
	.string	"LIM_REG_CLASSES"
.LASF51:
	.string	"ALL_REGS"
.LASF529:
	.string	"pops_args"
.LASF139:
	.string	"PSImode"
.LASF548:
	.string	"x_rtl_expr_chain"
.LASF310:
	.string	"RANGE_INFO"
.LASF747:
	.string	"ix86_cpu"
.LASF455:
	.string	"rtunion_def"
.LASF226:
	.string	"DEFINE_ATTR"
.LASF739:
	.string	"this_insn_number"
.LASF228:
	.string	"SET_ATTR"
.LASF153:
	.string	"TCmode"
.LASF540:
	.string	"x_nonlocal_labels"
.LASF303:
	.string	"UNSIGNED_FLOAT"
.LASF393:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF463:
	.string	"cselib_val_struct"
.LASF425:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF80:
	.string	"_IO_write_ptr"
.LASF734:
	.string	"reg_next_in_qty"
.LASF275:
	.string	"ROTATE"
.LASF361:
	.string	"succ"
.LASF470:
	.string	"refs"
.LASF299:
	.string	"TRUNCATE"
.LASF386:
	.string	"REG_DEP_ANTI"
.LASF150:
	.string	"SCmode"
.LASF750:
	.string	"rtx_length"
.LASF638:
	.string	"max_qty"
.LASF436:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF140:
	.string	"PDImode"
.LASF716:
	.string	"from"
.LASF407:
	.string	"NOTE_INSN_BLOCK_END"
.LASF447:
	.string	"bitmap"
.LASF416:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF752:
	.string	"rtx_class"
.LASF658:
	.string	"link"
.LASF370:
	.string	"flags"
.LASF514:
	.string	"x_regno_reg_rtx"
.LASF203:
	.string	"EXPR_LIST"
.LASF230:
	.string	"EQ_ATTR"
.LASF771:
	.string	"caller_save_needed"
.LASF183:
	.string	"CCGOCmode"
.LASF261:
	.string	"CONCAT"
.LASF18:
	.string	"PROCESSOR_I486"
.LASF490:
	.string	"pred_next"
.LASF329:
	.string	"min_after_vec"
.LASF119:
	.string	"_sch_isnvsp"
.LASF73:
	.string	"FILE"
.LASF267:
	.string	"COND"
.LASF193:
	.string	"MODE_PARTIAL_INT"
.LASF556:
	.string	"x_parm_birth_insn"
.LASF558:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF151:
	.string	"DCmode"
.LASF123:
	.string	"_sch_isgraph"
.LASF774:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF550:
	.string	"x_tail_recursion_reentry"
.LASF276:
	.string	"ASHIFTRT"
.LASF181:
	.string	"CCmode"
.LASF19:
	.string	"PROCESSOR_PENTIUM"
.LASF359:
	.string	"end_tree"
.LASF42:
	.string	"FLOAT_REGS"
.LASF409:
	.string	"NOTE_INSN_LOOP_END"
.LASF179:
	.string	"V16SFmode"
.LASF452:
	.string	"BITMAP_XOR"
.LASF721:
	.string	"post_mark_life"
.LASF423:
	.string	"NOTE_INSN_LIVE"
.LASF223:
	.string	"DEFINE_COND_EXEC"
.LASF84:
	.string	"_IO_save_base"
.LASF709:
	.string	"output_p"
.LASF496:
	.string	"var_refs_queue"
.LASF518:
	.string	"x_stack_pointer_delta"
.LASF219:
	.string	"DEFINE_EXPAND"
.LASF589:
	.string	"is_thunk"
.LASF756:
	.string	"optimize_size"
.LASF663:
	.string	"ptr_"
.LASF481:
	.string	"elements_used"
.LASF732:
	.string	"qty_phys_num_copy_sugg"
.LASF170:
	.string	"V8SImode"
.LASF542:
	.string	"x_nonlocal_goto_handler_labels"
.LASF232:
	.string	"INSN"
.LASF343:
	.string	"rtint"
.LASF262:
	.string	"LABEL_REF"
.LASF385:
	.string	"REG_LABEL"
.LASF768:
	.string	"max_regno"
.LASF642:
	.string	"memref"
.LASF681:
	.string	"must_match_0"
.LASF477:
	.string	"elt_list"
.LASF373:
	.string	"REG_DEAD"
.LASF728:
	.string	"file"
.LASF413:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF98:
	.string	"__pad2"
.LASF749:
	.string	"mode_size"
.LASF376:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF487:
	.string	"regset"
.LASF694:
	.string	"already_dead"
.LASF652:
	.string	"update_equiv_regs"
.LASF182:
	.string	"CCGCmode"
.LASF365:
	.string	"global_live_at_end"
.LASF671:
	.string	"list"
.LASF701:
	.string	"reg_meets_class_p"
.LASF258:
	.string	"SCRATCH"
.LASF168:
	.string	"V8QImode"
.LASF171:
	.string	"V8DImode"
.LASF199:
	.string	"MAX_MODE_CLASS"
.LASF769:
	.string	"reg_n_info"
.LASF746:
	.string	"x86_partial_reg_stall"
.LASF666:
	.string	"word_num_"
.LASF111:
	.string	"_sch_islower"
.LASF733:
	.string	"qty_phys_num_sugg"
.LASF297:
	.string	"SIGN_EXTEND"
.LASF581:
	.string	"calls_setjmp"
.LASF761:
	.string	"call_used_reg_set"
.LASF688:
	.string	"qty_compare_1"
.LASF718:
	.string	"size1"
.LASF753:
	.string	"const_int_rtx"
.LASF319:
	.string	"VEC_DUPLICATE"
.LASF446:
	.string	"bitmap_head"
.LASF543:
	.string	"x_nonlocal_goto_stack_level"
.LASF105:
	.string	"_next"
.LASF622:
	.string	"n_alternatives"
.LASF337:
	.string	"expr"
.LASF419:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF616:
	.string	"operand_mode"
.LASF740:
	.string	"this_insn"
.LASF541:
	.string	"x_nonlocal_goto_handler_slots"
.LASF177:
	.string	"V8SFmode"
.LASF623:
	.string	"insn"
.LASF33:
	.string	"DIREG"
.LASF655:
	.string	"clear_regnos"
.LASF384:
	.string	"REG_CC_USER"
.LASF241:
	.string	"ASM_OPERANDS"
.LASF754:
	.string	"global_rtl"
.LASF561:
	.string	"x_temp_slot_level"
.LASF185:
	.string	"CCZmode"
.LASF410:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF37:
	.string	"INDEX_REGS"
.LASF25:
	.string	"processor_type"
.LASF635:
	.string	"src_p"
.LASF664:
	.string	"indx_"
.LASF587:
	.string	"contains_functions"
.LASF526:
	.string	"varasm"
.LASF399:
	.string	"REG_NON_LOCAL_GOTO"
.LASF245:
	.string	"ADDR_DIFF_VEC"
.LASF591:
	.string	"profile"
.LASF307:
	.string	"ZERO_EXTRACT"
.LASF457:
	.string	"hint"
.LASF240:
	.string	"ASM_INPUT"
.LASF290:
	.string	"ORDERED"
.LASF178:
	.string	"V8DFmode"
.LASF510:
	.string	"x_last_filename"
.LASF498:
	.string	"promoted_mode"
.LASF717:
	.string	"eliminables"
.LASF480:
	.string	"num_elements"
.LASF304:
	.string	"UNSIGNED_FIX"
.LASF578:
	.string	"returns_pcc_struct"
.LASF648:
	.string	"memref_referenced_p"
.LASF57:
	.string	"sse_words"
.LASF39:
	.string	"GENERAL_REGS"
.LASF483:
	.string	"name"
.LASF204:
	.string	"INSN_LIST"
.LASF106:
	.string	"_sbuf"
.LASF312:
	.string	"RANGE_VAR"
.LASF476:
	.string	"changes_mode"
.LASF86:
	.string	"_IO_save_end"
.LASF191:
	.string	"MODE_INT"
.LASF482:
	.string	"element_size"
.LASF533:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF56:
	.string	"regno"
.LASF515:
	.string	"expr_status"
.LASF672:
	.string	"block_alloc"
.LASF723:
	.string	"no_conflict_p"
.LASF585:
	.string	"has_nonlocal_label"
.LASF313:
	.string	"RANGE_LIVE"
.LASF516:
	.string	"x_pending_stack_adjust"
.LASF161:
	.string	"V2HImode"
.LASF530:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF710:
	.string	"find_free_reg"
.LASF612:
	.string	"recog_data"
.LASF462:
	.string	"const_equiv"
.LASF676:
	.string	"max_uid"
.LASF467:
	.string	"last_uid"
.LASF347:
	.string	"rt_addr_diff_vec_flags"
.LASF433:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF46:
	.string	"FP_SECOND_SSE_REGS"
.LASF322:
	.string	"SS_MINUS"
.LASF209:
	.string	"MATCH_PARALLEL"
.LASF166:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF375:
	.string	"REG_EQUIV"
.LASF662:
	.string	"new_insn"
.LASF67:
	.string	"short unsigned int"
.LASF110:
	.string	"_sch_isdigit"
.LASF68:
	.string	"signed char"
.LASF208:
	.string	"MATCH_OPERATOR"
.LASF641:
	.string	"start"
.LASF479:
	.string	"varray_head_tag"
.LASF354:
	.string	"current"
.LASF508:
	.string	"x_cur_insn_uid"
.LASF557:
	.string	"x_last_parm_insn"
.LASF656:
	.string	"part"
.LASF324:
	.string	"SS_TRUNCATE"
.LASF389:
	.string	"REG_EXEC_COUNT"
.LASF780:
	.string	"dump_local_alloc"
.LASF566:
	.string	"no_debugging_symbols"
.LASF693:
	.string	"setreg"
.LASF328:
	.string	"base_after_vec"
.LASF213:
	.string	"DEFINE_INSN"
.LASF71:
	.string	"__off64_t"
.LASF715:
	.string	"first_used"
.LASF167:
	.string	"V4DImode"
.LASF674:
	.string	"insn_number"
.LASF367:
	.string	"loop_depth"
.LASF78:
	.string	"_IO_read_base"
.LASF49:
	.string	"INT_SSE_REGS"
.LASF96:
	.string	"_offset"
.LASF434:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF465:
	.string	"reg_info_def"
.LASF387:
	.string	"REG_DEP_OUTPUT"
.LASF83:
	.string	"_IO_buf_end"
.LASF646:
	.string	"equiv_init_movable_p"
.LASF222:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF323:
	.string	"US_MINUS"
.LASF779:
	.string	"fail"
.LASF632:
	.string	"equivalence"
.LASF535:
	.string	"return_rtx"
.LASF45:
	.string	"FP_TOP_SSE_REGS"
.LASF306:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF473:
	.string	"live_length"
.LASF247:
	.string	"CLOBBER"
.LASF489:
	.string	"edge_def"
.LASF102:
	.string	"_mode"
.LASF775:
	.string	"local-alloc.c"
.LASF697:
	.string	"usize"
.LASF197:
	.string	"MODE_VECTOR_INT"
.LASF79:
	.string	"_IO_write_base"
.LASF391:
	.string	"REG_SAVE_AREA"
.LASF315:
	.string	"CALL_PLACEHOLDER"
.LASF523:
	.string	"function"
.LASF175:
	.string	"V4SFmode"
.LASF609:
	.string	"OP_IN"
.LASF590:
	.string	"instrument_entry_exit"
.LASF773:
	.string	"which_alternative"
.LASF553:
	.string	"x_frame_offset"
.LASF269:
	.string	"PLUS"
.LASF654:
	.string	"cleared_regs"
.LASF285:
	.string	"POST_DEC"
.LASF444:
	.string	"bits"
.LASF132:
	.string	"HImode"
.LASF371:
	.string	"rtunion"
.LASF412:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF195:
	.string	"MODE_COMPLEX_INT"
.LASF601:
	.string	"eh_status"
.LASF500:
	.string	"sequence_stack"
.LASF63:
	.string	"long int"
.LASF438:
	.string	"GR_VIRTUAL_CFA"
.LASF767:
	.string	"basic_block_info"
.LASF377:
	.string	"REG_WAS_0"
.LASF726:
	.string	"reg_allowed"
.LASF736:
	.string	"reg_offset"
.LASF398:
	.string	"REG_NORETURN"
.LASF104:
	.string	"_IO_marker"
.LASF146:
	.string	"XFmode"
.LASF580:
	.string	"needs_context"
.LASF397:
	.string	"REG_MAYBE_DEAD"
.LASF176:
	.string	"V4DFmode"
.LASF770:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF689:
	.string	"qty_sugg_compare"
.LASF707:
	.string	"reg_is_born"
.LASF372:
	.string	"reg_note"
.LASF584:
	.string	"calls_eh_return"
.LASF563:
	.string	"x_target_temp_slot_level"
.LASF621:
	.string	"n_dups"
.LASF531:
	.string	"pretend_args_size"
.LASF636:
	.string	"init_insns"
.LASF755:
	.string	"optimize"
.LASF124:
	.string	"_sch_iscppsp"
.LASF200:
	.string	"rtx_code"
.LASF61:
	.string	"CUMULATIVE_ARGS"
.LASF501:
	.string	"last"
.LASF593:
	.string	"varargs"
.LASF673:
	.string	"hard_reg"
.LASF30:
	.string	"CREG"
.LASF678:
	.string	"no_conflict_combined_regno"
.LASF617:
	.string	"operand_type"
.LASF595:
	.string	"x_whole_function_mode_p"
.LASF201:
	.string	"UNKNOWN"
.LASF243:
	.string	"UNSPEC_VOLATILE"
.LASF607:
	.string	"language_function"
.LASF618:
	.string	"dup_loc"
.LASF415:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF65:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF113:
	.string	"_sch_ispunct"
.LASF142:
	.string	"HFmode"
.LASF569:
	.string	"inl_last_parm_insn"
.LASF250:
	.string	"TRAP_IF"
.LASF472:
	.string	"deaths"
.LASF395:
	.string	"REG_EH_REGION"
.LASF559:
	.string	"x_parm_reg_stack_loc"
.LASF620:
	.string	"n_operands"
.LASF624:
	.string	"n_refs"
.LASF378:
	.string	"REG_RETVAL"
.LASF703:
	.string	"rclass"
.LASF154:
	.string	"CQImode"
.LASF72:
	.string	"char"
.LASF577:
	.string	"returns_struct"
.LASF152:
	.string	"XCmode"
.LASF551:
	.string	"x_arg_pointer_save_area"
.LASF28:
	.string	"AREG"
.LASF668:
	.string	"mask_"
.LASF549:
	.string	"x_tail_recursion_label"
.LASF82:
	.string	"_IO_buf_base"
.LASF575:
	.string	"language"
.LASF278:
	.string	"ROTATERT"
.LASF692:
	.string	"usedreg"
.LASF628:
	.string	"first_reg"
.LASF264:
	.string	"ADDRESSOF"
.LASF400:
	.string	"REG_SETJMP"
.LASF748:
	.string	"_sch_istable"
.LASF160:
	.string	"V2QImode"
.LASF661:
	.string	"last_link"
.LASF504:
	.string	"x_reg_rtx_no"
.LASF138:
	.string	"PHImode"
.LASF77:
	.string	"_IO_read_end"
.LASF497:
	.string	"modified"
.LASF513:
	.string	"regno_decl"
.LASF453:
	.string	"BITMAP_IOR_COMPL"
.LASF159:
	.string	"COImode"
.LASF283:
	.string	"PRE_DEC"
.LASF645:
	.string	"equiv_init_varies_p"
.LASF118:
	.string	"_sch_isvsp"
.LASF74:
	.string	"_IO_FILE"
.LASF414:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF432:
	.string	"GR_HARD_FRAME_POINTER"
.LASF383:
	.string	"REG_CC_SETTER"
.LASF583:
	.string	"calls_alloca"
.LASF608:
	.string	"op_type"
.LASF562:
	.string	"x_var_temp_slot_level"
.LASF190:
	.string	"MODE_RANDOM"
.LASF321:
	.string	"US_PLUS"
.LASF762:
	.string	"losing_caller_save_reg_set"
.LASF180:
	.string	"BLKmode"
.LASF149:
	.string	"HCmode"
.LASF486:
	.string	"regset_head"
.LASF255:
	.string	"CONST_STRING"
.LASF318:
	.string	"VEC_CONCAT"
.LASF339:
	.string	"size"
.LASF97:
	.string	"__pad1"
.LASF99:
	.string	"__pad3"
.LASF100:
	.string	"__pad4"
.LASF101:
	.string	"__pad5"
.LASF390:
	.string	"REG_NOALIAS"
.LASF231:
	.string	"ATTR_FLAG"
.LASF187:
	.string	"CCFPUmode"
.LASF374:
	.string	"REG_INC"
.LASF221:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF554:
	.string	"x_context_display"
.LASF730:
	.string	"qty_phys_copy_sugg"
.LASF87:
	.string	"_markers"
.LASF107:
	.string	"_pos"
.LASF706:
	.string	"setter"
.LASF225:
	.string	"ADDRESS"
.LASF493:
	.string	"insns"
.LASF742:
	.string	"recorded_label_ref"
.LASF567:
	.string	"original_arg_vector"
.LASF22:
	.string	"PROCESSOR_ATHLON"
.LASF599:
	.string	"uses_eh_lsda"
.LASF460:
	.string	"cptr"
.LASF352:
	.string	"bitmap_head_def"
.LASF474:
	.string	"calls_crossed"
.LASF325:
	.string	"US_TRUNCATE"
.LASF682:
	.string	"n_matching_alts"
.LASF427:
	.string	"global_rtl_index"
.LASF55:
	.string	"nregs"
.LASF627:
	.string	"n_calls_crossed"
.LASF320:
	.string	"SS_PLUS"
.LASF282:
	.string	"UMAX"
.LASF44:
	.string	"MMX_REGS"
.LASF334:
	.string	"scale"
.LASF131:
	.string	"QImode"
.LASF745:
	.string	"target_flags"
.LASF484:
	.string	"data"
.LASF430:
	.string	"GR_STACK_POINTER"
.LASF143:
	.string	"TQFmode"
.LASF667:
	.string	"word_"
.LASF357:
	.string	"head"
.LASF722:
	.string	"this_reg"
.LASF20:
	.string	"PROCESSOR_PENTIUMPRO"
.LASF54:
	.string	"words"
.LASF331:
	.string	"min_after_base"
.LASF651:
	.string	"function_invariant_p"
.LASF461:
	.string	"sched"
.LASF596:
	.string	"x_dont_save_pending_sizes_p"
.LASF53:
	.string	"ix86_args"
.LASF27:
	.string	"NO_REGS"
.LASF772:
	.string	"cfun"
.LASF532:
	.string	"outgoing_args_size"
.LASF136:
	.string	"OImode"
.LASF396:
	.string	"REG_SAVE_NOTE"
.LASF738:
	.string	"regs_live_at"
.LASF280:
	.string	"SMAX"
.LASF439:
	.string	"GR_MAX"
.LASF317:
	.string	"VEC_SELECT"
.LASF704:
	.string	"update_qty_class"
.LASF380:
	.string	"REG_NONNEG"
.LASF573:
	.string	"stack_alignment_needed"
.LASF503:
	.string	"emit_status"
.LASF695:
	.string	"ureg"
.LASF198:
	.string	"MODE_VECTOR_FLOAT"
.LASF288:
	.string	"POST_MODIFY"
.LASF392:
	.string	"REG_BR_PRED"
.LASF214:
	.string	"DEFINE_PEEPHOLE"
.LASF126:
	.string	"long long unsigned int"
.LASF421:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF338:
	.string	"offset"
.LASF335:
	.string	"addr_diff_vec_flags"
.LASF92:
	.string	"_cur_column"
.LASF210:
	.string	"MATCH_OP_DUP"
.LASF224:
	.string	"SEQUENCE"
.LASF141:
	.string	"QFmode"
.LASF469:
	.string	"sets"
.LASF534:
	.string	"args_info"
.LASF714:
	.string	"dead_index"
.LASF592:
	.string	"limit_stack"
.LASF251:
	.string	"RESX"
.LASF108:
	.string	"_sch_isblank"
.LASF492:
	.string	"dest"
.LASF239:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF696:
	.string	"sreg"
.LASF85:
	.string	"_IO_backup_base"
.LASF289:
	.string	"UNORDERED"
.LASF188:
	.string	"MAX_MACHINE_MODE"
.LASF76:
	.string	"_IO_read_ptr"
.LASF364:
	.string	"global_live_at_start"
.LASF50:
	.string	"FLOAT_INT_SSE_REGS"
.LASF206:
	.string	"MATCH_SCRATCH"
.LASF256:
	.string	"CONST"
.LASF512:
	.string	"regno_pointer_align"
.LASF305:
	.string	"SQRT"
.LASF735:
	.string	"reg_qty"
.LASF680:
	.string	"combined_regno"
.LASF429:
	.string	"GR_CC0"
.LASF634:
	.string	"replacement"
.LASF189:
	.string	"mode_class"
.LASF271:
	.string	"MULT"
.LASF194:
	.string	"MODE_CC"
.LASF362:
	.string	"local_set"
.LASF137:
	.string	"PQImode"
.LASF502:
	.string	"sequence_rtl_expr"
.LASF169:
	.string	"V8HImode"
.LASF700:
	.string	"subreg"
.LASF560:
	.string	"x_temp_slots"
.LASF547:
	.string	"x_stack_slot_list"
.LASF91:
	.string	"_old_offset"
.LASF234:
	.string	"CALL_INSN"
.LASF670:
	.string	"store"
.LASF259:
	.string	"SUBREG"
.LASF120:
	.string	"_sch_isalpha"
.LASF582:
	.string	"calls_longjmp"
.LASF172:
	.string	"V16QImode"
.LASF725:
	.string	"found_zero"
.LASF401:
	.string	"REG_ALWAYS_RETURN"
.LASF527:
	.string	"decl"
.LASF127:
	.string	"long long int"
.LASF379:
	.string	"REG_LIBCALL"
.LASF90:
	.string	"_flags2"
.LASF148:
	.string	"QCmode"
.LASF711:
	.string	"accept_call_clobbered"
.LASF257:
	.string	"VALUE"
.LASF237:
	.string	"NOTE"
.LASF610:
	.string	"OP_OUT"
.LASF58:
	.string	"sse_nregs"
.LASF281:
	.string	"UMIN"
.LASF207:
	.string	"MATCH_DUP"
.LASF112:
	.string	"_sch_isprint"
.LASF440:
	.string	"HARD_REG_ELT_TYPE"
.LASF650:
	.string	"local_alloc"
.LASF356:
	.string	"basic_block_def"
.LASF121:
	.string	"_sch_isalnum"
.LASF639:
	.string	"alloc_qty"
.LASF603:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF743:
	.string	"equiv_mem"
.LASF408:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF445:
	.string	"bitmap_element"
.LASF539:
	.string	"x_function_call_count"
.LASF155:
	.string	"CHImode"
.LASF114:
	.string	"_sch_isspace"
.LASF424:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF229:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF511:
	.string	"regno_pointer_align_length"
.LASF506:
	.string	"x_first_insn"
.LASF520:
	.string	"x_apply_args_value"
.LASF48:
	.string	"FLOAT_INT_REGS"
.LASF253:
	.string	"CONST_DOUBLE"
.LASF466:
	.string	"first_uid"
.LASF184:
	.string	"CCNOmode"
.LASF165:
	.string	"V4HImode"
.LASF291:
	.string	"UNEQ"
.LASF731:
	.string	"qty_phys_sugg"
.LASF274:
	.string	"ASHIFT"
.LASF279:
	.string	"SMIN"
.LASF679:
	.string	"__FUNCTION__"
.LASF266:
	.string	"IF_THEN_ELSE"
.LASF619:
	.string	"dup_num"
.LASF737:
	.string	"regs_live"
.LASF420:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF122:
	.string	"_sch_isidnum"
.LASF528:
	.string	"outer"
.LASF705:
	.string	"reg_is_set"
.LASF698:
	.string	"ssize"
.LASF417:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF509:
	.string	"x_last_linenum"
.LASF62:
	.string	"unsigned int"
.LASF777:
	.string	"tree_node"
.LASF643:
	.string	"note"
.LASF544:
	.string	"x_cleanup_label"
.LASF330:
	.string	"max_after_vec"
.LASF292:
	.string	"UNGE"
.LASF614:
	.string	"operand_loc"
.LASF69:
	.string	"short int"
.LASF360:
	.string	"pred"
.LASF293:
	.string	"UNGT"
.LASF588:
	.string	"has_computed_jump"
.LASF507:
	.string	"x_last_insn"
.LASF443:
	.string	"prev"
.LASF93:
	.string	"_vtable_offset"
.LASF574:
	.string	"preferred_stack_boundary"
.LASF713:
	.string	"born_index"
.LASF129:
	.string	"VOIDmode"
.LASF402:
	.string	"REG_VTABLE_REF"
.LASF437:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF309:
	.string	"LO_SUM"
.LASF369:
	.string	"frequency"
.LASF342:
	.string	"rtwint"
.LASF491:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
