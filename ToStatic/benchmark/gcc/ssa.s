	.file	"ssa.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ssa.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	conservative_reg_partition
	.comm	conservative_reg_partition,4,4
	.globl	in_ssa_form
	.bss
	.align 4
	.type	in_ssa_form, @object
	.size	in_ssa_form, 4
in_ssa_form:
	.zero	4
	.comm	ssa_definition,8,8
	.comm	ssa_rename_from,8,8
	.comm	ssa_rename_from_ht,8,8
	.local	ssa_rename_to_pseudo
	.comm	ssa_rename_to_pseudo,8,8
	.local	ssa_rename_to_hard
	.comm	ssa_rename_to_hard,25016,32
	.local	ssa_max_reg_num
	.comm	ssa_max_reg_num,4,4
	.text
	.type	ssa_rename_to_lookup, @function
ssa_rename_to_lookup:
.LFB2:
	.file 1 "ssa.c"
	.loc 1 246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# reg, reg
	.loc 1 247 0
	movq	-8(%rbp), %rax	# reg, tmp71
	movl	8(%rax), %eax	# reg_2(D)->fld[0].rtuint, D.13000
	cmpl	$52, %eax	#, D.13000
	jbe	.L2	#,
	.loc 1 248 0
	movq	ssa_rename_to_pseudo(%rip), %rdx	# ssa_rename_to_pseudo, ssa_rename_to_pseudo.0
	movq	-8(%rbp), %rax	# reg, tmp72
	movl	8(%rax), %eax	# reg_2(D)->fld[0].rtuint, D.13000
	subl	$53, %eax	#, D.13000
	movl	%eax, %eax	# D.13000, D.13001
	salq	$3, %rax	#, D.13001
	addq	%rdx, %rax	# ssa_rename_to_pseudo.0, D.13002
	movq	(%rax), %rax	# *_9, D.12999
	jmp	.L3	#
.L2:
	.loc 1 250 0
	movq	-8(%rbp), %rax	# reg, tmp73
	movl	8(%rax), %edx	# reg_2(D)->fld[0].rtuint, D.13000
	movq	-8(%rbp), %rax	# reg, tmp74
	movzbl	2(%rax), %eax	# reg_2(D)->mode, D.13003
	movzbl	%al, %eax	# D.13003, D.13000
	movl	%eax, %esi	# D.13000, tmp75
	movl	%edx, %ecx	# D.13000, tmp76
	movq	%rcx, %rdx	# tmp76, tmp77
	leaq	0(,%rdx,4), %rax	#, tmp78
	movq	%rax, %rdx	# tmp78, tmp77
	movq	%rdx, %rax	# tmp77, tmp79
	salq	$4, %rax	#, tmp79
	subq	%rdx, %rax	# tmp77, tmp79
	subq	%rcx, %rax	# tmp76, tmp79
	addq	%rsi, %rax	# tmp75, tmp80
	movq	ssa_rename_to_hard(,%rax,8), %rax	# ssa_rename_to_hard, D.12999
.L3:
	.loc 1 251 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ssa_rename_to_lookup, .-ssa_rename_to_lookup
	.type	ssa_rename_to_insert, @function
ssa_rename_to_insert:
.LFB3:
	.loc 1 259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# reg, reg
	movq	%rsi, -16(%rbp)	# r, r
	.loc 1 260 0
	movq	-8(%rbp), %rax	# reg, tmp69
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.13004
	cmpl	$52, %eax	#, D.13004
	jbe	.L5	#,
	.loc 1 261 0
	movq	ssa_rename_to_pseudo(%rip), %rdx	# ssa_rename_to_pseudo, ssa_rename_to_pseudo.1
	movq	-8(%rbp), %rax	# reg, tmp70
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.13004
	subl	$53, %eax	#, D.13004
	movl	%eax, %eax	# D.13004, D.13005
	salq	$3, %rax	#, D.13005
	addq	%rax, %rdx	# D.13005, D.13006
	movq	-16(%rbp), %rax	# r, tmp71
	movq	%rax, (%rdx)	# tmp71, *_8
	jmp	.L4	#
.L5:
	.loc 1 263 0
	movq	-8(%rbp), %rax	# reg, tmp72
	movl	8(%rax), %edx	# reg_1(D)->fld[0].rtuint, D.13004
	movq	-8(%rbp), %rax	# reg, tmp73
	movzbl	2(%rax), %eax	# reg_1(D)->mode, D.13007
	movzbl	%al, %eax	# D.13007, D.13004
	movl	%eax, %esi	# D.13004, tmp74
	movl	%edx, %ecx	# D.13004, tmp75
	movq	%rcx, %rdx	# tmp75, tmp76
	leaq	0(,%rdx,4), %rax	#, tmp77
	movq	%rax, %rdx	# tmp77, tmp76
	movq	%rdx, %rax	# tmp76, tmp78
	salq	$4, %rax	#, tmp78
	subq	%rdx, %rax	# tmp76, tmp78
	subq	%rcx, %rax	# tmp75, tmp78
	leaq	(%rax,%rsi), %rdx	#, tmp79
	movq	-16(%rbp), %rax	# r, tmp80
	movq	%rax, ssa_rename_to_hard(,%rdx,8)	# tmp80, ssa_rename_to_hard
.L4:
	.loc 1 264 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ssa_rename_to_insert, .-ssa_rename_to_insert
	.type	ssa_rename_from_initialize, @function
ssa_rename_from_initialize:
.LFB4:
	.loc 1 270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 272 0
	movl	$ssa_rename_from_delete, %ecx	#,
	movl	$ssa_rename_from_equal, %edx	#,
	movl	$ssa_rename_from_hash_function, %esi	#,
	movl	$64, %edi	#,
	call	htab_create	#
	movq	%rax, ssa_rename_from_ht(%rip)	# ssa_rename_from_ht.2, ssa_rename_from_ht
	.loc 1 276 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ssa_rename_from_initialize, .-ssa_rename_from_initialize
	.type	ssa_rename_from_lookup, @function
ssa_rename_from_lookup:
.LFB5:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# reg, reg
	.loc 1 287 0
	movl	-36(%rbp), %eax	# reg, reg.3
	movl	%eax, -16(%rbp)	# reg.3, srfp.reg
	.loc 1 288 0
	movq	$0, -8(%rbp)	#, srfp.original
	.loc 1 290 0
	movl	-36(%rbp), %edx	# reg, reg.4
	movq	ssa_rename_from_ht(%rip), %rax	# ssa_rename_from_ht, ssa_rename_from_ht.5
	.loc 1 289 0
	leaq	-16(%rbp), %rcx	#, tmp65
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# ssa_rename_from_ht.5,
	call	htab_find_with_hash	#
	movq	%rax, -24(%rbp)	# tmp66, answer
	.loc 1 291 0
	cmpq	$0, -24(%rbp)	#, answer
	je	.L9	#,
	.loc 1 291 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# answer, tmp67
	movq	8(%rax), %rax	# answer_6->original, iftmp.6
	jmp	.L10	#
.L9:
	.loc 1 291 0 discriminator 2
	movl	$0, %eax	#, iftmp.6
.L10:
	.loc 1 292 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ssa_rename_from_lookup, .-ssa_rename_from_lookup
	.type	original_register, @function
original_register:
.LFB6:
	.loc 1 301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	.loc 1 302 0
	movl	-20(%rbp), %eax	# regno, regno.7
	movl	%eax, %edi	# regno.7,
	call	ssa_rename_from_lookup	#
	movq	%rax, -8(%rbp)	# tmp63, original_rtx
	.loc 1 303 0
	cmpq	$0, -8(%rbp)	#, original_rtx
	je	.L13	#,
	.loc 1 303 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# original_rtx, tmp64
	movl	8(%rax), %eax	# original_rtx_4->fld[0].rtuint, iftmp.8
	jmp	.L14	#
.L13:
	.loc 1 303 0 discriminator 2
	movl	-20(%rbp), %eax	# regno, iftmp.8
.L14:
	.loc 1 304 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	original_register, .-original_register
	.type	ssa_rename_from_insert, @function
ssa_rename_from_insert:
.LFB7:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# r, r
	.loc 1 314 0
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp62, srfp
	.loc 1 315 0
	movq	-16(%rbp), %rax	# srfp, tmp63
	movl	-20(%rbp), %edx	# reg, tmp64
	movl	%edx, (%rax)	# tmp64, srfp_1->reg
	.loc 1 316 0
	movq	-16(%rbp), %rax	# srfp, tmp65
	movq	-32(%rbp), %rdx	# r, tmp66
	movq	%rdx, 8(%rax)	# tmp66, srfp_1->original
	.loc 1 317 0
	movq	ssa_rename_from_ht(%rip), %rax	# ssa_rename_from_ht, ssa_rename_from_ht.9
	movl	-20(%rbp), %edx	# reg, tmp67
	movq	-16(%rbp), %rsi	# srfp, tmp68
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# ssa_rename_from_ht.9,
	call	htab_find_slot_with_hash	#
	movq	%rax, -8(%rbp)	# tmp69, slot
	.loc 1 319 0
	movq	-8(%rbp), %rax	# slot, tmp70
	movq	(%rax), %rax	# *slot_5, D.13010
	testq	%rax, %rax	# D.13010
	je	.L17	#,
	.loc 1 320 0
	movq	-8(%rbp), %rax	# slot, tmp71
	movq	(%rax), %rax	# *slot_5, D.13010
	movq	%rax, %rdi	# D.13010,
	call	free	#
.L17:
	.loc 1 321 0
	movq	-8(%rbp), %rax	# slot, tmp72
	movq	-16(%rbp), %rdx	# srfp, tmp73
	movq	%rdx, (%rax)	# tmp73, *slot_5
	.loc 1 322 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ssa_rename_from_insert, .-ssa_rename_from_insert
	.type	ssa_rename_from_traverse, @function
ssa_rename_from_traverse:
.LFB8:
	.loc 1 334 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# callback_function, callback_function
	movq	%rsi, -32(%rbp)	# canonical_elements, canonical_elements
	movq	%rdx, -40(%rbp)	# reg_partition, reg_partition
	.loc 1 336 0
	movq	-32(%rbp), %rax	# canonical_elements, tmp60
	movq	%rax, -16(%rbp)	# tmp60, srfhd.canonical_elements
	.loc 1 337 0
	movq	-40(%rbp), %rax	# reg_partition, tmp61
	movq	%rax, -8(%rbp)	# tmp61, srfhd.reg_partition
	.loc 1 338 0
	movq	ssa_rename_from_ht(%rip), %rax	# ssa_rename_from_ht, ssa_rename_from_ht.10
	leaq	-16(%rbp), %rdx	#, tmp62
	movq	-24(%rbp), %rcx	# callback_function, tmp63
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# ssa_rename_from_ht.10,
	call	htab_traverse	#
	.loc 1 339 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ssa_rename_from_traverse, .-ssa_rename_from_traverse
	.type	ssa_rename_from_free, @function
ssa_rename_from_free:
.LFB9:
	.loc 1 345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 346 0
	movq	ssa_rename_from_ht(%rip), %rax	# ssa_rename_from_ht, ssa_rename_from_ht.11
	movq	%rax, %rdi	# ssa_rename_from_ht.11,
	call	htab_delete	#
	.loc 1 347 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ssa_rename_from_free, .-ssa_rename_from_free
	.section	.rodata
	.align 8
.LC0:
	.string	"ssa_rename_from's hash table contents:"
	.text
	.globl	ssa_rename_from_print
	.type	ssa_rename_from_print, @function
ssa_rename_from_print:
.LFB10:
	.loc 1 354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 355 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 356 0
	movq	ssa_rename_from_ht(%rip), %rax	# ssa_rename_from_ht, ssa_rename_from_ht.12
	movl	$0, %edx	#,
	movl	$ssa_rename_from_print_1, %esi	#,
	movq	%rax, %rdi	# ssa_rename_from_ht.12,
	call	htab_traverse	#
	.loc 1 357 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ssa_rename_from_print, .-ssa_rename_from_print
	.section	.rodata
	.align 8
.LC1:
	.string	"ssa_rename_from maps pseudo %i to original %i.\n"
	.text
	.type	ssa_rename_from_print_1, @function
ssa_rename_from_print_1:
.LFB11:
	.loc 1 366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# slot, slot
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 367 0
	movq	-24(%rbp), %rax	# slot, tmp64
	movq	(%rax), %rax	# *slot_1(D), tmp65
	movq	%rax, -8(%rbp)	# tmp65, p
	.loc 1 369 0
	movq	-8(%rbp), %rax	# p, tmp66
	movq	8(%rax), %rax	# p_2->original, D.13012
	.loc 1 368 0
	movl	8(%rax), %edx	# _3->fld[0].rtuint, D.13013
	movq	-8(%rbp), %rax	# p, tmp67
	movl	(%rax), %eax	# p_2->reg, D.13013
	movl	%eax, %esi	# D.13013,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 370 0
	movl	$1, %eax	#, D.13014
	.loc 1 371 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ssa_rename_from_print_1, .-ssa_rename_from_print_1
	.type	ssa_rename_from_hash_function, @function
ssa_rename_from_hash_function:
.LFB12:
	.loc 1 378 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# srfp, srfp
	.loc 1 379 0
	movq	-8(%rbp), %rax	# srfp, tmp61
	movl	(%rax), %eax	# MEM[(const struct ssa_rename_from_pair *)srfp_1(D)].reg, D.13016
	.loc 1 380 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ssa_rename_from_hash_function, .-ssa_rename_from_hash_function
	.type	ssa_rename_from_equal, @function
ssa_rename_from_equal:
.LFB13:
	.loc 1 388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# srfp1, srfp1
	movq	%rsi, -24(%rbp)	# srfp2, srfp2
	.loc 1 389 0
	movq	-16(%rbp), %rax	# srfp1, tmp64
	movq	%rax, %rdi	# tmp64,
	call	ssa_rename_from_hash_function	#
	movl	%eax, %ebx	#, D.13017
	.loc 1 390 0
	movq	-24(%rbp), %rax	# srfp2, tmp65
	movq	%rax, %rdi	# tmp65,
	call	ssa_rename_from_hash_function	#
	.loc 1 389 0
	cmpl	%eax, %ebx	# D.13017, D.13017
	sete	%al	#, D.13018
	movzbl	%al, %eax	# D.13018, D.13019
	.loc 1 391 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ssa_rename_from_equal, .-ssa_rename_from_equal
	.type	ssa_rename_from_delete, @function
ssa_rename_from_delete:
.LFB14:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# srfp, srfp
	.loc 1 399 0
	movq	-8(%rbp), %rax	# srfp, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 400 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ssa_rename_from_delete, .-ssa_rename_from_delete
	.type	phi_alternative, @function
phi_alternative:
.LFB15:
	.loc 1 409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# set, set
	movl	%esi, -28(%rbp)	# c, c
	.loc 1 410 0
	movq	-24(%rbp), %rax	# set, tmp67
	movq	16(%rax), %rax	# set_3(D)->fld[1].rtx, D.13021
	movq	8(%rax), %rax	# _4->fld[0].rtvec, tmp68
	movq	%rax, -8(%rbp)	# tmp68, phi_vec
	.loc 1 413 0
	movq	-8(%rbp), %rax	# phi_vec, tmp69
	movl	(%rax), %eax	# phi_vec_5->num_elem, D.13022
	subl	$2, %eax	#, tmp70
	movl	%eax, -12(%rbp)	# tmp70, v
	jmp	.L29	#
.L32:
	.loc 1 414 0
	movl	-12(%rbp), %eax	# v, tmp71
	leal	1(%rax), %edx	#, D.13022
	movq	-8(%rbp), %rax	# phi_vec, tmp72
	movslq	%edx, %rdx	# D.13022, tmp73
	movq	8(%rax,%rdx,8), %rax	# phi_vec_5->elem, D.13021
	movq	8(%rax), %rdx	# _9->fld[0].rtwint, D.13023
	movl	-28(%rbp), %eax	# c, tmp74
	cltq
	cmpq	%rax, %rdx	# D.13023, D.13023
	jne	.L30	#,
	.loc 1 415 0
	movl	-12(%rbp), %eax	# v, tmp76
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp77
	movq	-8(%rbp), %rax	# phi_vec, tmp79
	addq	%rdx, %rax	# tmp77, tmp78
	addq	$8, %rax	#, D.13020
	jmp	.L31	#
.L30:
	.loc 1 413 0
	subl	$2, -12(%rbp)	#, v
.L29:
	.loc 1 413 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, v
	jns	.L32	#,
	.loc 1 417 0 is_stmt 1
	movl	$0, %eax	#, D.13020
.L31:
	.loc 1 418 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	phi_alternative, .-phi_alternative
	.globl	remove_phi_alternative
	.type	remove_phi_alternative, @function
remove_phi_alternative:
.LFB16:
	.loc 1 428 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# set, set
	movq	%rsi, -48(%rbp)	# block, block
	.loc 1 429 0
	movq	-40(%rbp), %rax	# set, tmp73
	movq	16(%rax), %rax	# set_3(D)->fld[1].rtx, D.13025
	movq	8(%rax), %rax	# _4->fld[0].rtvec, tmp74
	movq	%rax, -8(%rbp)	# tmp74, phi_vec
	.loc 1 430 0
	movq	-8(%rbp), %rax	# phi_vec, tmp75
	movl	(%rax), %eax	# phi_vec_5->num_elem, tmp76
	movl	%eax, -16(%rbp)	# tmp76, num_elem
	.loc 1 433 0
	movq	-48(%rbp), %rax	# block, tmp77
	movl	88(%rax), %eax	# block_7(D)->index, tmp78
	movl	%eax, -12(%rbp)	# tmp78, c
	.loc 1 434 0
	movl	-16(%rbp), %eax	# num_elem, tmp82
	subl	$2, %eax	#, tmp81
	movl	%eax, -20(%rbp)	# tmp81, v
	jmp	.L34	#
.L38:
	.loc 1 435 0
	movl	-20(%rbp), %eax	# v, tmp83
	leal	1(%rax), %edx	#, D.13024
	movq	-8(%rbp), %rax	# phi_vec, tmp84
	movslq	%edx, %rdx	# D.13024, tmp85
	movq	8(%rax,%rdx,8), %rax	# phi_vec_5->elem, D.13025
	movq	8(%rax), %rdx	# _11->fld[0].rtwint, D.13026
	movl	-12(%rbp), %eax	# c, tmp86
	cltq
	cmpq	%rax, %rdx	# D.13026, D.13026
	jne	.L35	#,
	.loc 1 437 0
	movl	-16(%rbp), %eax	# num_elem, tmp87
	subl	$2, %eax	#, D.13024
	cmpl	-20(%rbp), %eax	# v, D.13024
	jle	.L36	#,
	.loc 1 439 0
	movl	-16(%rbp), %eax	# num_elem, tmp88
	leal	-2(%rax), %edx	#, D.13024
	movq	-8(%rbp), %rax	# phi_vec, tmp89
	movslq	%edx, %rdx	# D.13024, tmp90
	movq	8(%rax,%rdx,8), %rcx	# phi_vec_5->elem, D.13025
	movq	-8(%rbp), %rax	# phi_vec, tmp91
	movl	-20(%rbp), %edx	# v, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	movq	%rcx, 8(%rax,%rdx,8)	# D.13025, phi_vec_5->elem
	.loc 1 440 0
	movl	-20(%rbp), %eax	# v, tmp94
	leal	1(%rax), %esi	#, D.13024
	movl	-16(%rbp), %eax	# num_elem, tmp95
	leal	-1(%rax), %edx	#, D.13024
	movq	-8(%rbp), %rax	# phi_vec, tmp96
	movslq	%edx, %rdx	# D.13024, tmp97
	movq	8(%rax,%rdx,8), %rcx	# phi_vec_5->elem, D.13025
	movq	-8(%rbp), %rax	# phi_vec, tmp98
	movslq	%esi, %rdx	# D.13024, tmp99
	movq	%rcx, 8(%rax,%rdx,8)	# D.13025, phi_vec_5->elem
.L36:
	.loc 1 442 0
	movl	-16(%rbp), %eax	# num_elem, tmp100
	leal	-2(%rax), %edx	#, D.13024
	movq	-8(%rbp), %rax	# phi_vec, tmp101
	movl	%edx, (%rax)	# D.13024, phi_vec_5->num_elem
	.loc 1 443 0
	movl	$1, %eax	#, D.13024
	jmp	.L37	#
.L35:
	.loc 1 434 0
	subl	$2, -20(%rbp)	#, v
.L34:
	.loc 1 434 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, v
	jns	.L38	#,
	.loc 1 446 0 is_stmt 1
	movl	$0, %eax	#, D.13024
.L37:
	.loc 1 447 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	remove_phi_alternative, .-remove_phi_alternative
	.local	fe_evals
	.comm	fe_evals,8,8
	.local	fe_current_bb
	.comm	fe_current_bb,4,4
	.type	find_evaluations_1, @function
find_evaluations_1:
.LFB17:
	.loc 1 462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# dest, dest
	movq	%rsi, -16(%rbp)	# set, set
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 463 0
	movq	-8(%rbp), %rax	# dest, tmp83
	movzwl	(%rax), %eax	# dest_1(D)->code, D.13027
	cmpw	$61, %ax	#, D.13027
	jne	.L39	#,
	.loc 1 464 0
	movq	-8(%rbp), %rax	# dest, tmp84
	movl	8(%rax), %eax	# dest_1(D)->fld[0].rtuint, D.13028
	cmpl	$52, %eax	#, D.13028
	ja	.L41	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp85
	movl	8(%rax), %eax	# dest_1(D)->fld[0].rtuint, D.13028
	cmpl	$17, %eax	#, D.13028
	je	.L41	#,
	movq	-8(%rbp), %rax	# dest, tmp86
	movl	8(%rax), %eax	# dest_1(D)->fld[0].rtuint, D.13028
	cmpl	$16, %eax	#, D.13028
	jne	.L39	#,
.L41:
	.loc 1 465 0 is_stmt 1
	movq	fe_evals(%rip), %rdx	# fe_evals, fe_evals.13
	movq	-8(%rbp), %rax	# dest, tmp87
	movl	8(%rax), %eax	# dest_1(D)->fld[0].rtuint, D.13028
	movl	%eax, %eax	# D.13028, D.13029
	salq	$3, %rax	#, D.13029
	addq	%rdx, %rax	# fe_evals.13, D.13030
	movq	(%rax), %rdx	# *_10, D.13031
	movl	fe_current_bb(%rip), %eax	# fe_current_bb, fe_current_bb.14
	shrl	$6, %eax	#, D.13028
	movq	fe_evals(%rip), %rsi	# fe_evals, fe_evals.16
	movq	-8(%rbp), %rcx	# dest, tmp88
	movl	8(%rcx), %ecx	# dest_1(D)->fld[0].rtuint, D.13028
	movl	%ecx, %ecx	# D.13028, D.13029
	salq	$3, %rcx	#, D.13029
	addq	%rsi, %rcx	# fe_evals.16, D.13030
	movq	(%rcx), %rcx	# *_19, D.13031
	movl	%eax, %esi	# D.13028, tmp89
	addq	$2, %rsi	#, tmp90
	movq	(%rcx,%rsi,8), %rsi	# _20->elms, D.13029
	movl	fe_current_bb(%rip), %ecx	# fe_current_bb, fe_current_bb.17
	andl	$63, %ecx	#, D.13032
	movl	$1, %edi	#, tmp91
	salq	%cl, %rdi	# D.13032, D.13029
	movq	%rdi, %rcx	# D.13029, D.13029
	orq	%rsi, %rcx	# D.13029, D.13029
	movl	%eax, %eax	# D.13028, tmp92
	addq	$2, %rax	#, tmp93
	movq	%rcx, (%rdx,%rax,8)	# D.13029, _11->elms
.L39:
	.loc 1 466 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	find_evaluations_1, .-find_evaluations_1
	.type	find_evaluations, @function
find_evaluations:
.LFB18:
	.loc 1 472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# evals, evals
	movl	%esi, -44(%rbp)	# nregs, nregs
	.loc 1 475 0
	movl	-44(%rbp), %edx	# nregs, nregs.18
	movq	-40(%rbp), %rax	# evals, tmp68
	movl	%edx, %esi	# nregs.18,
	movq	%rax, %rdi	# tmp68,
	call	sbitmap_vector_zero	#
	.loc 1 476 0
	movq	-40(%rbp), %rax	# evals, tmp69
	movq	%rax, fe_evals(%rip)	# tmp69, fe_evals
	.loc 1 478 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp70
	movl	%eax, -20(%rbp)	# tmp70, bb
	jmp	.L43	#
.L47:
.LBB2:
	.loc 1 482 0
	movl	-20(%rbp), %eax	# bb, tmp71
	movl	%eax, fe_current_bb(%rip)	# tmp71, fe_current_bb
	.loc 1 483 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.19
	movl	-20(%rbp), %edx	# bb, tmp73
	movslq	%edx, %rdx	# tmp73, tmp72
	addq	$4, %rdx	#, tmp74
	movq	(%rax,%rdx,8), %rax	# basic_block_info.19_8->data.bb, D.13033
	movq	(%rax), %rax	# _9->head, tmp75
	movq	%rax, -16(%rbp)	# tmp75, p
	.loc 1 484 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.20
	movl	-20(%rbp), %edx	# bb, tmp77
	movslq	%edx, %rdx	# tmp77, tmp76
	addq	$4, %rdx	#, tmp78
	movq	(%rax,%rdx,8), %rax	# basic_block_info.20_11->data.bb, D.13033
	movq	8(%rax), %rax	# _12->end, tmp79
	movq	%rax, -8(%rbp)	# tmp79, last
.L46:
	.loc 1 487 0
	movq	-16(%rbp), %rax	# p, tmp80
	movzwl	(%rax), %eax	# p_2->code, D.13034
	movzwl	%ax, %eax	# D.13034, D.13035
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13036
	cmpb	$105, %al	#, D.13036
	jne	.L44	#,
	.loc 1 488 0
	movq	-16(%rbp), %rax	# p, tmp82
	movq	32(%rax), %rax	# p_2->fld[3].rtx, D.13037
	movl	$0, %edx	#,
	movl	$find_evaluations_1, %esi	#,
	movq	%rax, %rdi	# D.13037,
	call	note_stores	#
.L44:
	.loc 1 490 0
	movq	-16(%rbp), %rax	# p, tmp83
	cmpq	-8(%rbp), %rax	# last, tmp83
	jne	.L45	#,
	.loc 1 491 0
	jmp	.L43	#
.L45:
	.loc 1 492 0
	movq	-16(%rbp), %rax	# p, tmp84
	movq	24(%rax), %rax	# p_2->fld[2].rtx, tmp85
	movq	%rax, -16(%rbp)	# tmp85, p
	.loc 1 493 0
	jmp	.L46	#
.L43:
.LBE2:
	.loc 1 478 0 discriminator 1
	subl	$1, -20(%rbp)	#, bb
	cmpl	$0, -20(%rbp)	#, bb
	jns	.L47	#,
	.loc 1 495 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	find_evaluations, .-find_evaluations
	.type	compute_dominance_frontiers_1, @function
compute_dominance_frontiers_1:
.LFB19:
	.loc 1 520 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# frontiers, frontiers
	movq	%rsi, -80(%rbp)	# idom, idom
	movl	%edx, -84(%rbp)	# bb, bb
	movq	%rcx, -96(%rbp)	# done, done
	.loc 1 521 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.21
	movl	-84(%rbp), %edx	# bb, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	addq	$4, %rdx	#, tmp147
	movq	(%rax,%rdx,8), %rax	# basic_block_info.21_9->data.bb, tmp148
	movq	%rax, -24(%rbp)	# tmp148, b
	.loc 1 525 0
	movl	-84(%rbp), %eax	# bb, bb.22
	shrl	$6, %eax	#, D.13038
	movq	-96(%rbp), %rdx	# done, tmp149
	movl	%eax, %ecx	# D.13038, tmp150
	addq	$2, %rcx	#, tmp151
	movq	(%rdx,%rcx,8), %rdx	# done_14(D)->elms, D.13039
	movl	-84(%rbp), %ecx	# bb, tmp152
	andl	$63, %ecx	#, D.13040
	movl	$1, %esi	#, tmp153
	salq	%cl, %rsi	# D.13040, D.13039
	movq	%rsi, %rcx	# D.13039, D.13039
	orq	%rdx, %rcx	# D.13039, D.13039
	movq	-96(%rbp), %rdx	# done, tmp154
	movl	%eax, %eax	# D.13038, tmp155
	addq	$2, %rax	#, tmp156
	movq	%rcx, (%rdx,%rax,8)	# D.13039, done_14(D)->elms
	.loc 1 526 0
	movl	-84(%rbp), %eax	# bb, tmp157
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13039
	movq	-72(%rbp), %rax	# frontiers, tmp158
	addq	%rdx, %rax	# D.13039, D.13041
	movq	(%rax), %rax	# *_22, D.13042
	movq	%rax, %rdi	# D.13042,
	call	sbitmap_zero	#
	.loc 1 531 0
	movl	$0, -60(%rbp)	#, c
	jmp	.L49	#
.L51:
	.loc 1 532 0
	movl	-60(%rbp), %eax	# c, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13039
	movq	-80(%rbp), %rax	# idom, tmp160
	addq	%rdx, %rax	# D.13039, D.13043
	movl	(%rax), %eax	# *_29, D.13040
	cmpl	-84(%rbp), %eax	# bb, D.13040
	jne	.L50	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# c, c.23
	shrl	$6, %eax	#, D.13038
	movl	%eax, %edx	# D.13038, D.13038
	movq	-96(%rbp), %rax	# done, tmp161
	movl	%edx, %edx	# D.13038, tmp162
	addq	$2, %rdx	#, tmp163
	movq	(%rax,%rdx,8), %rdx	# done_14(D)->elms, D.13039
	movl	-60(%rbp), %eax	# c, tmp164
	andl	$63, %eax	#, D.13040
	movl	%eax, %ecx	# D.13040, tmp220
	shrq	%cl, %rdx	# tmp220, D.13039
	movq	%rdx, %rax	# D.13039, D.13039
	andl	$1, %eax	#, D.13039
	testq	%rax, %rax	# D.13039
	jne	.L50	#,
	.loc 1 533 0 is_stmt 1
	movq	-96(%rbp), %rcx	# done, tmp165
	movl	-60(%rbp), %edx	# c, tmp166
	movq	-80(%rbp), %rsi	# idom, tmp167
	movq	-72(%rbp), %rax	# frontiers, tmp168
	movq	%rax, %rdi	# tmp168,
	call	compute_dominance_frontiers_1	#
.L50:
	.loc 1 531 0
	addl	$1, -60(%rbp)	#, c
.L49:
	.loc 1 531 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.24
	cmpl	%eax, -60(%rbp)	# n_basic_blocks.24, c
	jl	.L51	#,
	.loc 1 536 0 is_stmt 1
	movq	-24(%rbp), %rax	# b, tmp169
	movq	40(%rax), %rax	# b_11->succ, tmp170
	movq	%rax, -40(%rbp)	# tmp170, e
	jmp	.L52	#
.L55:
	.loc 1 538 0
	movq	-40(%rbp), %rax	# e, tmp171
	movq	24(%rax), %rax	# e_1->dest, D.13044
	cmpq	$entry_exit_blocks+112, %rax	#, D.13044
	jne	.L53	#,
	.loc 1 539 0
	jmp	.L54	#
.L53:
	.loc 1 540 0
	movq	-40(%rbp), %rax	# e, tmp172
	movq	24(%rax), %rax	# e_1->dest, D.13044
	movl	88(%rax), %eax	# _40->index, D.13040
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13039
	movq	-80(%rbp), %rax	# idom, tmp173
	addq	%rdx, %rax	# D.13039, D.13043
	movl	(%rax), %eax	# *_44, D.13040
	cmpl	-84(%rbp), %eax	# bb, D.13040
	je	.L54	#,
	.loc 1 541 0
	movl	-84(%rbp), %eax	# bb, tmp174
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13039
	movq	-72(%rbp), %rax	# frontiers, tmp175
	addq	%rdx, %rax	# D.13039, D.13041
	movq	(%rax), %rdx	# *_48, D.13042
	movq	-40(%rbp), %rax	# e, tmp176
	movq	24(%rax), %rax	# e_1->dest, D.13044
	movl	88(%rax), %eax	# _50->index, D.13040
	shrl	$6, %eax	#, D.13038
	movl	-84(%rbp), %ecx	# bb, tmp177
	movslq	%ecx, %rcx	# tmp177, D.13039
	leaq	0(,%rcx,8), %rsi	#, D.13039
	movq	-72(%rbp), %rcx	# frontiers, tmp178
	addq	%rsi, %rcx	# D.13039, D.13041
	movq	(%rcx), %rcx	# *_56, D.13042
	movl	%eax, %esi	# D.13038, tmp179
	addq	$2, %rsi	#, tmp180
	movq	(%rcx,%rsi,8), %rsi	# _57->elms, D.13039
	movq	-40(%rbp), %rcx	# e, tmp181
	movq	24(%rcx), %rcx	# e_1->dest, D.13044
	movl	88(%rcx), %ecx	# _59->index, D.13040
	andl	$63, %ecx	#, D.13040
	movl	$1, %edi	#, tmp182
	salq	%cl, %rdi	# D.13040, D.13039
	movq	%rdi, %rcx	# D.13039, D.13039
	orq	%rsi, %rcx	# D.13039, D.13039
	movl	%eax, %eax	# D.13038, tmp183
	addq	$2, %rax	#, tmp184
	movq	%rcx, (%rdx,%rax,8)	# D.13039, _49->elms
.L54:
	.loc 1 536 0
	movq	-40(%rbp), %rax	# e, tmp185
	movq	8(%rax), %rax	# e_1->succ_next, tmp186
	movq	%rax, -40(%rbp)	# tmp186, e
.L52:
	.loc 1 536 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L55	#,
	.loc 1 545 0 is_stmt 1
	movl	$0, -60(%rbp)	#, c
	jmp	.L56	#
.L65:
	.loc 1 546 0
	movl	-60(%rbp), %eax	# c, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13039
	movq	-80(%rbp), %rax	# idom, tmp188
	addq	%rdx, %rax	# D.13039, D.13043
	movl	(%rax), %eax	# *_69, D.13040
	cmpl	-84(%rbp), %eax	# bb, D.13040
	jne	.L57	#,
.LBB3:
.LBB4:
	.loc 1 549 0
	movl	$0, -52(%rbp)	#, bit_num_
	movl	-60(%rbp), %eax	# c, tmp189
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13039
	movq	-72(%rbp), %rax	# frontiers, tmp190
	addq	%rdx, %rax	# D.13039, D.13041
	movq	(%rax), %rax	# *_74, D.13042
	movl	4(%rax), %eax	# _75->size, tmp191
	movl	%eax, -48(%rbp)	# tmp191, size_
	movl	-60(%rbp), %eax	# c, tmp192
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13039
	movq	-72(%rbp), %rax	# frontiers, tmp193
	addq	%rdx, %rax	# D.13039, D.13041
	movq	(%rax), %rax	# *_79, D.13042
	addq	$16, %rax	#, tmp194
	movq	%rax, -16(%rbp)	# tmp194, ptr_
	movl	$0, -56(%rbp)	#, word_num_
	jmp	.L58	#
.L64:
.LBB5:
	.loc 1 549 0 is_stmt 0 discriminator 2
	movl	-56(%rbp), %eax	# word_num_, D.13039
	leaq	0(,%rax,8), %rdx	#, D.13039
	movq	-16(%rbp), %rax	# ptr_, tmp195
	addq	%rdx, %rax	# D.13039, D.13045
	movq	(%rax), %rax	# *_85, tmp196
	movq	%rax, -32(%rbp)	# tmp196, word_
	cmpq	$0, -32(%rbp)	#, word_
	je	.L59	#,
	.loc 1 549 0 discriminator 1
	jmp	.L60	#
.L63:
.LBB6:
	.loc 1 549 0 discriminator 2
	movl	-52(%rbp), %eax	# bit_num_, bit_num_.25
	movl	$1, %edx	#, tmp197
	movl	%eax, %ecx	# bit_num_.25, tmp223
	salq	%cl, %rdx	# tmp223, tmp198
	movq	%rdx, %rax	# tmp198, tmp198
	movq	%rax, -8(%rbp)	# tmp198, _mask
	movq	-8(%rbp), %rax	# _mask, tmp199
	movq	-32(%rbp), %rdx	# word_, tmp200
	andq	%rdx, %rax	# tmp200, D.13039
	testq	%rax, %rax	# D.13039
	je	.L61	#,
	.loc 1 549 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp201
	notq	%rax	# D.13039
	andq	%rax, -32(%rbp)	# D.13039, word_
	movl	-56(%rbp), %eax	# word_num_, tmp202
	sall	$6, %eax	#, D.13038
	movl	%eax, %edx	# D.13038, D.13038
	movl	-52(%rbp), %eax	# bit_num_, tmp203
	addl	%edx, %eax	# D.13038, D.13038
	movl	%eax, -44(%rbp)	# D.13038, x
	movl	-44(%rbp), %eax	# x, tmp204
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13039
	movq	-80(%rbp), %rax	# idom, tmp205
	addq	%rdx, %rax	# D.13039, D.13043
	movl	(%rax), %eax	# *_97, D.13040
	cmpl	-84(%rbp), %eax	# bb, D.13040
	je	.L62	#,
	movl	-84(%rbp), %eax	# bb, tmp206
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13039
	movq	-72(%rbp), %rax	# frontiers, tmp207
	addq	%rdx, %rax	# D.13039, D.13041
	movq	(%rax), %rdx	# *_101, D.13042
	movl	-44(%rbp), %eax	# x, x.26
	shrl	$6, %eax	#, D.13038
	movl	-84(%rbp), %ecx	# bb, tmp208
	movslq	%ecx, %rcx	# tmp208, D.13039
	leaq	0(,%rcx,8), %rsi	#, D.13039
	movq	-72(%rbp), %rcx	# frontiers, tmp209
	addq	%rsi, %rcx	# D.13039, D.13041
	movq	(%rcx), %rcx	# *_107, D.13042
	movl	%eax, %esi	# D.13038, tmp210
	addq	$2, %rsi	#, tmp211
	movq	(%rcx,%rsi,8), %rsi	# _108->elms, D.13039
	movl	-44(%rbp), %ecx	# x, tmp212
	andl	$63, %ecx	#, D.13040
	movl	$1, %edi	#, tmp213
	salq	%cl, %rdi	# D.13040, D.13039
	movq	%rdi, %rcx	# D.13039, D.13039
	orq	%rsi, %rcx	# D.13039, D.13039
	movl	%eax, %eax	# D.13038, tmp214
	addq	$2, %rax	#, tmp215
	movq	%rcx, (%rdx,%rax,8)	# D.13039, _102->elms
.L62:
	.loc 1 549 0 discriminator 2
	cmpq	$0, -32(%rbp)	#, word_
	jne	.L61	#,
	.loc 1 549 0 discriminator 1
	jmp	.L59	#
.L61:
.LBE6:
	.loc 1 549 0 discriminator 2
	addl	$1, -52(%rbp)	#, bit_num_
.L60:
	.loc 1 549 0 discriminator 1
	cmpl	$63, -52(%rbp)	#, bit_num_
	jbe	.L63	#,
.L59:
.LBE5:
	.loc 1 549 0 discriminator 2
	addl	$1, -56(%rbp)	#, word_num_
	movl	$0, -52(%rbp)	#, bit_num_
.L58:
	.loc 1 549 0 discriminator 1
	movl	-56(%rbp), %eax	# word_num_, tmp216
	cmpl	-48(%rbp), %eax	# size_, tmp216
	jb	.L64	#,
.L57:
.LBE4:
.LBE3:
	.loc 1 545 0 is_stmt 1
	addl	$1, -60(%rbp)	#, c
.L56:
	.loc 1 545 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.27
	cmpl	%eax, -60(%rbp)	# n_basic_blocks.27, c
	jl	.L65	#,
	.loc 1 555 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	compute_dominance_frontiers_1, .-compute_dominance_frontiers_1
	.globl	compute_dominance_frontiers
	.type	compute_dominance_frontiers, @function
compute_dominance_frontiers:
.LFB20:
	.loc 1 561 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# frontiers, frontiers
	movq	%rsi, -32(%rbp)	# idom, idom
	.loc 1 562 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.28
	movl	%eax, %edi	# n_basic_blocks.29,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp61, done
	.loc 1 563 0
	movq	-8(%rbp), %rax	# done, tmp62
	movq	%rax, %rdi	# tmp62,
	call	sbitmap_zero	#
	.loc 1 565 0
	movq	-8(%rbp), %rdx	# done, tmp63
	movq	-32(%rbp), %rsi	# idom, tmp64
	movq	-24(%rbp), %rax	# frontiers, tmp65
	movq	%rdx, %rcx	# tmp63,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp65,
	call	compute_dominance_frontiers_1	#
	.loc 1 567 0
	movq	-8(%rbp), %rax	# done, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	.loc 1 568 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	compute_dominance_frontiers, .-compute_dominance_frontiers
	.section	.rodata
	.align 8
.LC2:
	.string	"Iterated dominance frontier: %d passes on %d regs.\n"
	.text
	.type	compute_iterated_dominance_frontiers, @function
compute_iterated_dominance_frontiers:
.LFB21:
	.loc 1 584 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# idfs, idfs
	movq	%rsi, -96(%rbp)	# frontiers, frontiers
	movq	%rdx, -104(%rbp)	# evals, evals
	movl	%ecx, -108(%rbp)	# nregs, nregs
	.loc 1 586 0
	movl	$0, -64(%rbp)	#, passes
	.loc 1 588 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.30
	movl	%eax, %edi	# n_basic_blocks.31,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp93, worklist
	.loc 1 590 0
	movl	$0, -68(%rbp)	#, reg
	jmp	.L68	#
.L76:
.LBB7:
	.loc 1 592 0
	movl	-68(%rbp), %eax	# reg, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13046
	movq	-88(%rbp), %rax	# idfs, tmp95
	addq	%rdx, %rax	# D.13046, D.13047
	movq	(%rax), %rax	# *_22, tmp96
	movq	%rax, -24(%rbp)	# tmp96, idf
	.loc 1 598 0
	movl	-68(%rbp), %eax	# reg, tmp97
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13046
	movq	-104(%rbp), %rax	# evals, tmp98
	addq	%rdx, %rax	# D.13046, D.13047
	movq	(%rax), %rdx	# *_27, D.13048
	movq	-32(%rbp), %rax	# worklist, tmp99
	movq	%rdx, %rsi	# D.13048,
	movq	%rax, %rdi	# tmp99,
	call	sbitmap_copy	#
	.loc 1 602 0
	movq	-24(%rbp), %rax	# idf, tmp100
	movq	%rax, %rdi	# tmp100,
	call	sbitmap_zero	#
.L75:
	.loc 1 607 0
	movl	$0, -60(%rbp)	#, changed
	.loc 1 608 0
	addl	$1, -64(%rbp)	#, passes
.LBB8:
	.loc 1 609 0
	movl	$0, -52(%rbp)	#, bit_num_
	movq	-32(%rbp), %rax	# worklist, tmp101
	movl	4(%rax), %eax	# worklist_16->size, tmp102
	movl	%eax, -48(%rbp)	# tmp102, size_
	movq	-32(%rbp), %rax	# worklist, tmp106
	addq	$16, %rax	#, tmp105
	movq	%rax, -16(%rbp)	# tmp105, ptr_
	movl	$0, -56(%rbp)	#, word_num_
	jmp	.L69	#
.L74:
.LBB9:
	.loc 1 609 0 is_stmt 0 discriminator 2
	movl	-56(%rbp), %eax	# word_num_, D.13046
	leaq	0(,%rax,8), %rdx	#, D.13046
	movq	-16(%rbp), %rax	# ptr_, tmp107
	addq	%rdx, %rax	# D.13046, D.13049
	movq	(%rax), %rax	# *_37, tmp108
	movq	%rax, -40(%rbp)	# tmp108, word_
	cmpq	$0, -40(%rbp)	#, word_
	je	.L70	#,
	.loc 1 609 0 discriminator 1
	jmp	.L71	#
.L73:
.LBB10:
	.loc 1 609 0 discriminator 2
	movl	-52(%rbp), %eax	# bit_num_, bit_num_.32
	movl	$1, %edx	#, tmp109
	movl	%eax, %ecx	# bit_num_.32, tmp139
	salq	%cl, %rdx	# tmp139, tmp110
	movq	%rdx, %rax	# tmp110, tmp110
	movq	%rax, -8(%rbp)	# tmp110, _mask
	movq	-8(%rbp), %rax	# _mask, tmp111
	movq	-40(%rbp), %rdx	# word_, tmp112
	andq	%rdx, %rax	# tmp112, D.13046
	testq	%rax, %rax	# D.13046
	je	.L72	#,
	.loc 1 609 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp113
	notq	%rax	# D.13046
	andq	%rax, -40(%rbp)	# D.13046, word_
	movl	-56(%rbp), %eax	# word_num_, tmp114
	sall	$6, %eax	#, D.13050
	movl	%eax, %edx	# D.13050, D.13050
	movl	-52(%rbp), %eax	# bit_num_, tmp115
	addl	%edx, %eax	# D.13050, D.13050
	movl	%eax, -44(%rbp)	# D.13050, b
	movl	-44(%rbp), %eax	# b, b.33
	shrl	$6, %eax	#, D.13050
	movq	-32(%rbp), %rdx	# worklist, tmp116
	movl	%eax, %ecx	# D.13050, tmp117
	addq	$2, %rcx	#, tmp118
	movq	(%rdx,%rcx,8), %rdx	# worklist_16->elms, D.13046
	movl	-44(%rbp), %ecx	# b, tmp119
	andl	$63, %ecx	#, D.13051
	movl	$1, %esi	#, tmp120
	salq	%cl, %rsi	# D.13051, D.13046
	movq	%rsi, %rcx	# D.13046, D.13046
	notq	%rcx	# D.13046
	andq	%rdx, %rcx	# D.13046, D.13046
	movq	-32(%rbp), %rdx	# worklist, tmp121
	movl	%eax, %eax	# D.13050, tmp122
	addq	$2, %rax	#, tmp123
	movq	%rcx, (%rdx,%rax,8)	# D.13046, worklist_16->elms
	movl	-44(%rbp), %eax	# b, tmp124
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13046
	movq	-96(%rbp), %rax	# frontiers, tmp125
	addq	%rdx, %rax	# D.13046, D.13047
	movq	(%rax), %rdx	# *_57, D.13048
	movq	-24(%rbp), %rcx	# idf, tmp126
	movq	-32(%rbp), %rsi	# worklist, tmp127
	movq	-32(%rbp), %rax	# worklist, tmp128
	movq	%rax, %rdi	# tmp128,
	call	sbitmap_union_of_diff	#
	movl	-44(%rbp), %eax	# b, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13046
	movq	-96(%rbp), %rax	# frontiers, tmp130
	addq	%rdx, %rax	# D.13046, D.13047
	movq	(%rax), %rdx	# *_61, D.13048
	movq	-24(%rbp), %rcx	# idf, tmp131
	movq	-24(%rbp), %rax	# idf, tmp132
	movq	%rcx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	sbitmap_a_or_b	#
	movl	$1, -60(%rbp)	#, changed
	cmpq	$0, -40(%rbp)	#, word_
	jne	.L72	#,
	jmp	.L70	#
.L72:
.LBE10:
	.loc 1 609 0 discriminator 2
	addl	$1, -52(%rbp)	#, bit_num_
.L71:
	.loc 1 609 0 discriminator 1
	cmpl	$63, -52(%rbp)	#, bit_num_
	jbe	.L73	#,
.L70:
.LBE9:
	.loc 1 609 0 discriminator 2
	addl	$1, -56(%rbp)	#, word_num_
	movl	$0, -52(%rbp)	#, bit_num_
.L69:
	.loc 1 609 0 discriminator 1
	movl	-56(%rbp), %eax	# word_num_, tmp133
	cmpl	-48(%rbp), %eax	# size_, tmp133
	jb	.L74	#,
.LBE8:
	.loc 1 621 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, changed
	jne	.L75	#,
.LBE7:
	.loc 1 590 0
	addl	$1, -68(%rbp)	#, reg
.L68:
	.loc 1 590 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# reg, tmp134
	cmpl	-108(%rbp), %eax	# nregs, tmp134
	jl	.L76	#,
	.loc 1 624 0 is_stmt 1
	movq	-32(%rbp), %rax	# worklist, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	.loc 1 626 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.34
	testq	%rax, %rax	# rtl_dump_file.34
	je	.L67	#,
	.loc 1 628 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.35
	movl	-108(%rbp), %ecx	# nregs, tmp136
	movl	-64(%rbp), %edx	# passes, tmp137
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.35,
	movl	$0, %eax	#,
	call	fprintf	#
.L67:
	.loc 1 632 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	compute_iterated_dominance_frontiers, .-compute_iterated_dominance_frontiers
	.type	insert_phi_node, @function
insert_phi_node:
.LFB22:
	.loc 1 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# regno, regno
	movl	%esi, -88(%rbp)	# bb, bb
	.loc 1 640 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.36
	movl	-88(%rbp), %edx	# bb, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	addq	$4, %rdx	#, tmp81
	movq	(%rax,%rdx,8), %rax	# basic_block_info.36_6->data.bb, tmp82
	movq	%rax, -56(%rbp)	# tmp82, b
	.loc 1 649 0
	movq	-56(%rbp), %rax	# b, tmp83
	movq	32(%rax), %rax	# b_8->pred, tmp84
	movq	%rax, -64(%rbp)	# tmp84, e
	movl	$0, -76(%rbp)	#, npred
	jmp	.L79	#
.L81:
	.loc 1 650 0
	movq	-64(%rbp), %rax	# e, tmp85
	movq	16(%rax), %rax	# e_1->src, D.13053
	cmpq	$entry_exit_blocks, %rax	#, D.13053
	je	.L80	#,
	.loc 1 651 0
	addl	$1, -76(%rbp)	#, npred
.L80:
	.loc 1 649 0
	movq	-64(%rbp), %rax	# e, tmp86
	movq	(%rax), %rax	# e_1->pred_next, tmp87
	movq	%rax, -64(%rbp)	# tmp87, e
.L79:
	.loc 1 649 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L81	#,
	.loc 1 655 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, npred
	jne	.L82	#,
	.loc 1 656 0
	jmp	.L78	#
.L82:
	.loc 1 659 0
	movq	cfun(%rip), %rax	# cfun, cfun.37
	movq	24(%rax), %rax	# cfun.37_14->emit, D.13054
	movq	80(%rax), %rax	# _15->x_regno_reg_rtx, D.13055
	movl	-84(%rbp), %edx	# regno, tmp88
	movslq	%edx, %rdx	# tmp88, D.13056
	salq	$3, %rdx	#, D.13056
	addq	%rdx, %rax	# D.13056, D.13055
	movq	(%rax), %rax	# *_20, tmp89
	movq	%rax, -48(%rbp)	# tmp89, reg
	.loc 1 663 0
	movl	-76(%rbp), %eax	# npred, tmp90
	addl	%eax, %eax	# D.13057
	movl	%eax, %edi	# D.13057,
	call	rtvec_alloc	#
	movq	%rax, -40(%rbp)	# tmp91, vec
	.loc 1 664 0
	movq	-56(%rbp), %rax	# b, tmp92
	movq	32(%rax), %rax	# b_8->pred, tmp93
	movq	%rax, -64(%rbp)	# tmp93, e
	movl	$0, -72(%rbp)	#, i
	jmp	.L84	#
.L86:
	.loc 1 665 0
	movq	-64(%rbp), %rax	# e, tmp94
	movq	16(%rax), %rax	# e_2->src, D.13053
	cmpq	$entry_exit_blocks, %rax	#, D.13053
	je	.L85	#,
	.loc 1 667 0
	movq	global_rtl(%rip), %rcx	# global_rtl, D.13058
	movq	-40(%rbp), %rax	# vec, tmp95
	movl	-72(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	movq	%rcx, 8(%rax,%rdx,8)	# D.13058, vec_23->elem
	.loc 1 668 0
	movl	-72(%rbp), %eax	# i, tmp98
	leal	1(%rax), %ebx	#, D.13057
	movq	-64(%rbp), %rax	# e, tmp99
	movq	16(%rax), %rax	# e_2->src, D.13053
	movl	88(%rax), %eax	# _29->index, D.13057
	cltq
	movq	%rax, %rsi	# D.13059,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-40(%rbp), %rdx	# vec, tmp100
	movslq	%ebx, %rcx	# D.13057, tmp101
	movq	%rax, 8(%rdx,%rcx,8)	# D.13058, vec_23->elem
.L85:
	.loc 1 664 0
	movq	-64(%rbp), %rax	# e, tmp102
	movq	(%rax), %rax	# e_2->pred_next, tmp103
	movq	%rax, -64(%rbp)	# tmp103, e
	addl	$2, -72(%rbp)	#, i
.L84:
	.loc 1 664 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L86	#,
	.loc 1 671 0 is_stmt 1
	movq	-40(%rbp), %rax	# vec, tmp104
	movq	%rax, %rdx	# tmp104,
	movl	$0, %esi	#,
	movl	$152, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, -32(%rbp)	# tmp105, phi
	.loc 1 672 0
	movq	-32(%rbp), %rdx	# phi, tmp106
	movq	-48(%rbp), %rax	# reg, tmp107
	movq	%rdx, %rcx	# tmp106,
	movq	%rax, %rdx	# tmp107,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -32(%rbp)	# tmp108, phi
	.loc 1 674 0
	movq	-56(%rbp), %rax	# b, tmp109
	movq	%rax, %rdi	# tmp109,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -24(%rbp)	# tmp110, insn
	.loc 1 675 0
	movq	-24(%rbp), %rax	# insn, tmp111
	movq	16(%rax), %rdx	# insn_37->fld[1].rtx, D.13058
	movq	-56(%rbp), %rax	# b, tmp112
	movq	8(%rax), %rax	# b_8->end, D.13058
	cmpq	%rax, %rdx	# D.13058, D.13058
	sete	%al	#, D.13060
	movzbl	%al, %eax	# D.13060, tmp113
	movl	%eax, -68(%rbp)	# tmp113, end_p
	.loc 1 676 0
	movq	-24(%rbp), %rdx	# insn, tmp114
	movq	-32(%rbp), %rax	# phi, tmp115
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	emit_insn_before	#
	.loc 1 677 0
	cmpl	$0, -68(%rbp)	#, end_p
	je	.L78	#,
	.loc 1 678 0
	movq	-24(%rbp), %rax	# insn, tmp116
	movq	16(%rax), %rdx	# insn_37->fld[1].rtx, D.13058
	movq	-56(%rbp), %rax	# b, tmp117
	movq	%rdx, 8(%rax)	# D.13058, b_8->end
.L78:
	.loc 1 679 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	insert_phi_node, .-insert_phi_node
	.type	insert_phi_nodes, @function
insert_phi_nodes:
.LFB23:
	.loc 1 686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# idfs, idfs
	movq	%rsi, -64(%rbp)	# evals, evals
	movl	%edx, -68(%rbp)	# nregs, nregs
	.loc 1 689 0
	movl	$0, -44(%rbp)	#, reg
	jmp	.L88	#
.L98:
	.loc 1 690 0
	cmpl	$52, -44(%rbp)	#, reg
	jg	.L89	#,
	.loc 1 690 0 is_stmt 0 discriminator 1
	cmpl	$17, -44(%rbp)	#, reg
	je	.L89	#,
	cmpl	$16, -44(%rbp)	#, reg
	jne	.L90	#,
.L89:
.LBB11:
.LBB12:
	.loc 1 693 0 is_stmt 1
	movl	$0, -36(%rbp)	#, bit_num_
	movl	-44(%rbp), %eax	# reg, tmp79
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13061
	movq	-56(%rbp), %rax	# idfs, tmp80
	addq	%rdx, %rax	# D.13061, D.13062
	movq	(%rax), %rax	# *_13, D.13063
	movl	4(%rax), %eax	# _14->size, tmp81
	movl	%eax, -32(%rbp)	# tmp81, size_
	movl	-44(%rbp), %eax	# reg, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13061
	movq	-56(%rbp), %rax	# idfs, tmp83
	addq	%rdx, %rax	# D.13061, D.13062
	movq	(%rax), %rax	# *_18, D.13063
	addq	$16, %rax	#, tmp84
	movq	%rax, -16(%rbp)	# tmp84, ptr_
	movl	$0, -40(%rbp)	#, word_num_
	jmp	.L91	#
.L97:
.LBB13:
	.loc 1 693 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# word_num_, D.13061
	leaq	0(,%rax,8), %rdx	#, D.13061
	movq	-16(%rbp), %rax	# ptr_, tmp85
	addq	%rdx, %rax	# D.13061, D.13064
	movq	(%rax), %rax	# *_24, tmp86
	movq	%rax, -24(%rbp)	# tmp86, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L92	#,
	.loc 1 693 0 discriminator 1
	jmp	.L93	#
.L96:
.LBB14:
	.loc 1 693 0 discriminator 2
	movl	-36(%rbp), %eax	# bit_num_, bit_num_.38
	movl	$1, %edx	#, tmp87
	movl	%eax, %ecx	# bit_num_.38, tmp103
	salq	%cl, %rdx	# tmp103, tmp88
	movq	%rdx, %rax	# tmp88, tmp88
	movq	%rax, -8(%rbp)	# tmp88, _mask
	movq	-8(%rbp), %rax	# _mask, tmp89
	movq	-24(%rbp), %rdx	# word_, tmp90
	andq	%rdx, %rax	# tmp90, D.13061
	testq	%rax, %rax	# D.13061
	je	.L94	#,
	.loc 1 693 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp91
	notq	%rax	# D.13061
	andq	%rax, -24(%rbp)	# D.13061, word_
	movl	-40(%rbp), %eax	# word_num_, tmp92
	sall	$6, %eax	#, D.13065
	movl	%eax, %edx	# D.13065, D.13065
	movl	-36(%rbp), %eax	# bit_num_, tmp93
	addl	%edx, %eax	# D.13065, D.13065
	movl	%eax, -28(%rbp)	# D.13065, b
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.39
	movl	-28(%rbp), %edx	# b, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	addq	$4, %rdx	#, tmp96
	movq	(%rax,%rdx,8), %rax	# basic_block_info.39_34->data.bb, D.13066
	movq	64(%rax), %rax	# _35->global_live_at_start, D.13067
	movl	-44(%rbp), %edx	# reg, tmp97
	movl	%edx, %esi	# tmp97,
	movq	%rax, %rdi	# D.13067,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.13068
	je	.L95	#,
	movl	-28(%rbp), %edx	# b, tmp98
	movl	-44(%rbp), %eax	# reg, tmp99
	movl	%edx, %esi	# tmp98,
	movl	%eax, %edi	# tmp99,
	call	insert_phi_node	#
.L95:
	.loc 1 693 0 discriminator 2
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L94	#,
	.loc 1 693 0 discriminator 1
	jmp	.L92	#
.L94:
.LBE14:
	.loc 1 693 0 discriminator 2
	addl	$1, -36(%rbp)	#, bit_num_
.L93:
	.loc 1 693 0 discriminator 1
	cmpl	$63, -36(%rbp)	#, bit_num_
	jbe	.L96	#,
.L92:
.LBE13:
	.loc 1 693 0 discriminator 2
	addl	$1, -40(%rbp)	#, word_num_
	movl	$0, -36(%rbp)	#, bit_num_
.L91:
	.loc 1 693 0 discriminator 1
	movl	-40(%rbp), %eax	# word_num_, tmp100
	cmpl	-32(%rbp), %eax	# size_, tmp100
	jb	.L97	#,
.L90:
.LBE12:
.LBE11:
	.loc 1 689 0 is_stmt 1
	addl	$1, -44(%rbp)	#, reg
.L88:
	.loc 1 689 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# reg, tmp101
	cmpl	-68(%rbp), %eax	# nregs, tmp101
	jl	.L98	#,
	.loc 1 699 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	insert_phi_nodes, .-insert_phi_nodes
	.section	.rodata
.LC3:
	.string	"ssa.c"
	.text
	.type	create_delayed_rename, @function
create_delayed_rename:
.LFB24:
	.loc 1 740 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# c, c
	movq	%rsi, -32(%rbp)	# reg_loc, reg_loc
	.loc 1 742 0
	movl	$48, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp72, r
	.loc 1 744 0
	movq	-32(%rbp), %rax	# reg_loc, tmp73
	movq	(%rax), %rax	# *reg_loc_2(D), D.13069
	movzwl	(%rax), %eax	# _3->code, D.13070
	cmpw	$61, %ax	#, D.13070
	jne	.L100	#,
	.loc 1 745 0
	movq	-32(%rbp), %rax	# reg_loc, tmp74
	movq	(%rax), %rax	# *reg_loc_2(D), D.13069
	movl	8(%rax), %eax	# _5->fld[0].rtuint, D.13071
	cmpl	$52, %eax	#, D.13071
	ja	.L101	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg_loc, tmp75
	movq	(%rax), %rax	# *reg_loc_2(D), D.13069
	movl	8(%rax), %eax	# _7->fld[0].rtuint, D.13071
	cmpl	$17, %eax	#, D.13071
	je	.L101	#,
	movq	-32(%rbp), %rax	# reg_loc, tmp76
	movq	(%rax), %rax	# *reg_loc_2(D), D.13069
	movl	8(%rax), %eax	# _9->fld[0].rtuint, D.13071
	cmpl	$16, %eax	#, D.13071
	je	.L101	#,
.L100:
	.loc 1 746 0 is_stmt 1
	movl	$__FUNCTION__.11032, %edx	#,
	movl	$746, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L101:
	.loc 1 748 0
	movq	-8(%rbp), %rax	# r, tmp77
	movq	-32(%rbp), %rdx	# reg_loc, tmp78
	movq	%rdx, 8(%rax)	# tmp78, r_1->reg_loc
	.loc 1 749 0
	movq	-32(%rbp), %rax	# reg_loc, tmp79
	movq	(%rax), %rdx	# *reg_loc_2(D), D.13069
	movq	-8(%rbp), %rax	# r, tmp80
	movq	%rdx, 16(%rax)	# D.13069, r_1->old_reg
	.loc 1 750 0
	movq	-8(%rbp), %rax	# r, tmp81
	movq	16(%rax), %rax	# r_1->old_reg, D.13069
	movq	%rax, %rdi	# D.13069,
	call	ssa_rename_to_lookup	#
	movq	-8(%rbp), %rdx	# r, tmp82
	movq	%rax, 32(%rdx)	# D.13069, r_1->prev_reg
	.loc 1 751 0
	movq	-24(%rbp), %rax	# c, tmp83
	movq	16(%rax), %rdx	# c_14(D)->current_insn, D.13069
	movq	-8(%rbp), %rax	# r, tmp84
	movq	%rdx, 40(%rax)	# D.13069, r_1->set_insn
	.loc 1 752 0
	movq	-24(%rbp), %rax	# c, tmp85
	movq	(%rax), %rdx	# c_14(D)->new_renames, D.13072
	movq	-8(%rbp), %rax	# r, tmp86
	movq	%rdx, (%rax)	# D.13072, r_1->next
	.loc 1 753 0
	movq	-24(%rbp), %rax	# c, tmp87
	movq	-8(%rbp), %rdx	# r, tmp88
	movq	%rdx, (%rax)	# tmp88, c_14(D)->new_renames
	.loc 1 754 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	create_delayed_rename, .-create_delayed_rename
	.type	apply_delayed_renames, @function
apply_delayed_renames:
.LFB25:
	.loc 1 771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 773 0
	movq	$0, -8(%rbp)	#, last_r
	.loc 1 775 0
	movq	-40(%rbp), %rax	# c, tmp88
	movq	(%rax), %rax	# c_4(D)->new_renames, tmp89
	movq	%rax, -16(%rbp)	# tmp89, r
	jmp	.L103	#
.L108:
.LBB15:
	.loc 1 781 0
	movq	-16(%rbp), %rax	# r, tmp90
	movq	16(%rax), %rax	# r_1->old_reg, D.13074
	movq	%rax, %rdi	# D.13074,
	call	ssa_rename_to_lookup	#
	movq	-16(%rbp), %rdx	# r, tmp91
	movq	32(%rdx), %rdx	# r_1->prev_reg, D.13074
	cmpq	%rdx, %rax	# D.13074, D.13074
	je	.L104	#,
	.loc 1 782 0
	movl	$__FUNCTION__.11039, %edx	#,
	movl	$782, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L104:
	.loc 1 786 0
	movq	-16(%rbp), %rax	# r, tmp92
	movq	32(%rax), %rax	# r_1->prev_reg, D.13074
	testq	%rax, %rax	# D.13074
	jne	.L105	#,
	.loc 1 786 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r, tmp93
	movq	16(%rax), %rax	# r_1->old_reg, D.13074
	movl	8(%rax), %eax	# _10->fld[0].rtuint, D.13075
	cmpl	$52, %eax	#, D.13075
	jbe	.L105	#,
	.loc 1 788 0 is_stmt 1
	movq	-16(%rbp), %rax	# r, tmp94
	movq	16(%rax), %rdx	# r_1->old_reg, D.13074
	movq	-16(%rbp), %rax	# r, tmp95
	movq	%rdx, 24(%rax)	# D.13074, r_1->new_reg
	.loc 1 790 0
	movq	global_rtl(%rip), %rdx	# global_rtl, D.13074
	movq	-16(%rbp), %rax	# r, tmp96
	movq	%rdx, 32(%rax)	# D.13074, r_1->prev_reg
	jmp	.L106	#
.L105:
	.loc 1 793 0
	movq	-16(%rbp), %rax	# r, tmp97
	movq	16(%rax), %rax	# r_1->old_reg, D.13074
	movzbl	2(%rax), %eax	# _14->mode, D.13076
	movzbl	%al, %eax	# D.13076, D.13077
	movl	%eax, %edi	# D.13077,
	call	gen_reg_rtx	#
	movq	-16(%rbp), %rdx	# r, tmp98
	movq	%rax, 24(%rdx)	# D.13074, r_1->new_reg
.L106:
	.loc 1 794 0
	movq	-16(%rbp), %rax	# r, tmp99
	movq	24(%rax), %rax	# r_1->new_reg, D.13074
	movl	8(%rax), %eax	# _18->fld[0].rtuint, D.13075
	movl	%eax, -24(%rbp)	# D.13075, new_regno
	.loc 1 795 0
	movq	-16(%rbp), %rax	# r, tmp100
	movq	24(%rax), %rdx	# r_1->new_reg, D.13074
	movq	-16(%rbp), %rax	# r, tmp101
	movq	16(%rax), %rax	# r_1->old_reg, D.13074
	movq	%rdx, %rsi	# D.13074,
	movq	%rax, %rdi	# D.13074,
	call	ssa_rename_to_insert	#
	.loc 1 797 0
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.40
	movq	(%rax), %rax	# ssa_definition.40_23->num_elements, D.13078
	cmpl	-24(%rbp), %eax	# new_regno, D.13079
	jg	.L107	#,
.LBB16:
	.loc 1 799 0
	movl	-24(%rbp), %edx	# new_regno, tmp102
	movl	%edx, %eax	# tmp102, tmp103
	sall	$2, %eax	#, tmp103
	addl	%edx, %eax	# tmp102, D.13079
	leal	3(%rax), %edx	#, tmp105
	testl	%eax, %eax	# tmp104
	cmovs	%edx, %eax	# tmp105,, tmp104
	sarl	$2, %eax	#, tmp106
	movl	%eax, -20(%rbp)	# tmp106, new_limit
	.loc 1 800 0
	movl	-20(%rbp), %eax	# new_limit, tmp107
	movslq	%eax, %rdx	# tmp107, D.13078
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.41
	movq	%rdx, %rsi	# D.13078,
	movq	%rax, %rdi	# ssa_definition.41,
	call	varray_grow	#
	movq	%rax, ssa_definition(%rip)	# ssa_definition.42, ssa_definition
.L107:
.LBE16:
	.loc 1 803 0
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.43
	movq	-16(%rbp), %rdx	# r, tmp108
	movq	40(%rdx), %rdx	# r_1->set_insn, D.13074
	movl	-24(%rbp), %ecx	# new_regno, tmp110
	movslq	%ecx, %rcx	# tmp110, tmp109
	addq	$4, %rcx	#, tmp111
	movq	%rdx, (%rax,%rcx,8)	# D.13074, ssa_definition.43_31->data.rtx
	.loc 1 804 0
	movq	-16(%rbp), %rax	# r, tmp112
	movq	16(%rax), %rdx	# r_1->old_reg, D.13074
	movl	-24(%rbp), %eax	# new_regno, new_regno.44
	movq	%rdx, %rsi	# D.13074,
	movl	%eax, %edi	# new_regno.44,
	call	ssa_rename_from_insert	#
	.loc 1 805 0
	movq	-16(%rbp), %rax	# r, tmp113
	movq	%rax, -8(%rbp)	# tmp113, last_r
.LBE15:
	.loc 1 775 0
	movq	-16(%rbp), %rax	# r, tmp114
	movq	(%rax), %rax	# r_1->next, tmp115
	movq	%rax, -16(%rbp)	# tmp115, r
.L103:
	.loc 1 775 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, r
	jne	.L108	#,
	.loc 1 807 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, last_r
	je	.L102	#,
	.loc 1 809 0
	movq	-40(%rbp), %rax	# c, tmp116
	movq	8(%rax), %rdx	# c_4(D)->done_renames, D.13080
	movq	-8(%rbp), %rax	# last_r, tmp117
	movq	%rdx, (%rax)	# D.13080, last_r_2->next
	.loc 1 810 0
	movq	-40(%rbp), %rax	# c, tmp118
	movq	(%rax), %rdx	# c_4(D)->new_renames, D.13080
	movq	-40(%rbp), %rax	# c, tmp119
	movq	%rdx, 8(%rax)	# D.13080, c_4(D)->done_renames
	.loc 1 811 0
	movq	-40(%rbp), %rax	# c, tmp120
	movq	$0, (%rax)	#, c_4(D)->new_renames
.L102:
	.loc 1 813 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	apply_delayed_renames, .-apply_delayed_renames
	.type	rename_insn_1, @function
rename_insn_1:
.LFB26:
	.loc 1 822 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# ptr, ptr
	movq	%rsi, -96(%rbp)	# data, data
	.loc 1 823 0
	movq	-88(%rbp), %rax	# ptr, tmp114
	movq	(%rax), %rax	# *ptr_5(D), tmp115
	movq	%rax, -48(%rbp)	# tmp115, x
	.loc 1 824 0
	movq	-96(%rbp), %rax	# data, tmp116
	movq	%rax, -40(%rbp)	# tmp116, context
	.loc 1 826 0
	cmpq	$0, -48(%rbp)	#, x
	jne	.L111	#,
	.loc 1 827 0
	movl	$0, %eax	#, D.13081
	jmp	.L112	#
.L111:
	.loc 1 829 0
	movq	-48(%rbp), %rax	# x, tmp117
	movzwl	(%rax), %eax	# x_6->code, D.13082
	movzwl	%ax, %eax	# D.13082, D.13083
	cmpl	$49, %eax	#, D.13083
	je	.L114	#,
	cmpl	$49, %eax	#, D.13083
	ja	.L115	#,
	cmpl	$47, %eax	#, D.13083
	je	.L116	#,
	jmp	.L113	#
.L115:
	cmpl	$61, %eax	#, D.13083
	je	.L117	#,
	cmpl	$152, %eax	#, D.13083
	je	.L118	#,
	jmp	.L113	#
.L116:
.LBB17:
	.loc 1 833 0
	movq	-48(%rbp), %rax	# x, tmp121
	addq	$8, %rax	#, tmp120
	movq	%rax, -72(%rbp)	# tmp120, destp
	.loc 1 834 0
	movq	-48(%rbp), %rax	# x, tmp122
	movq	8(%rax), %rax	# x_6->fld[0].rtx, tmp123
	movq	%rax, -64(%rbp)	# tmp123, dest
	.loc 1 841 0
	movq	-64(%rbp), %rax	# dest, tmp124
	movzwl	(%rax), %eax	# dest_13->code, D.13082
	cmpw	$63, %ax	#, D.13082
	jne	.L119	#,
	.loc 1 842 0
	movq	-64(%rbp), %rax	# dest, tmp125
	movzbl	2(%rax), %eax	# dest_13->mode, D.13084
	movzbl	%al, %eax	# D.13084, D.13081
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.13084
	.loc 1 843 0
	movq	-64(%rbp), %rax	# dest, tmp127
	movq	8(%rax), %rax	# dest_13->fld[0].rtx, D.13085
	movzbl	2(%rax), %eax	# _18->mode, D.13084
	movzbl	%al, %eax	# D.13084, D.13081
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13084
	.loc 1 842 0
	cmpb	%al, %dl	# D.13084, D.13084
	jbe	.L119	#,
	.loc 1 844 0
	movq	-64(%rbp), %rax	# dest, tmp129
	movq	8(%rax), %rax	# dest_13->fld[0].rtx, D.13085
	movzwl	(%rax), %eax	# _22->code, D.13082
	cmpw	$61, %ax	#, D.13082
	jne	.L119	#,
	.loc 1 845 0
	movq	-64(%rbp), %rax	# dest, tmp130
	movq	8(%rax), %rax	# dest_13->fld[0].rtx, D.13085
	movl	8(%rax), %eax	# _24->fld[0].rtuint, D.13083
	cmpl	$52, %eax	#, D.13083
	ja	.L120	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# dest, tmp131
	movq	8(%rax), %rax	# dest_13->fld[0].rtx, D.13085
	movl	8(%rax), %eax	# _26->fld[0].rtuint, D.13083
	cmpl	$17, %eax	#, D.13083
	je	.L120	#,
	movq	-64(%rbp), %rax	# dest, tmp132
	movq	8(%rax), %rax	# dest_13->fld[0].rtx, D.13085
	movl	8(%rax), %eax	# _28->fld[0].rtuint, D.13083
	cmpl	$16, %eax	#, D.13083
	jne	.L119	#,
.L120:
	.loc 1 847 0 is_stmt 1
	movq	-64(%rbp), %rax	# dest, tmp136
	addq	$8, %rax	#, tmp135
	movq	%rax, -72(%rbp)	# tmp135, destp
	.loc 1 848 0
	movq	-64(%rbp), %rax	# dest, tmp137
	movq	8(%rax), %rax	# dest_13->fld[0].rtx, tmp138
	movq	%rax, -64(%rbp)	# tmp138, dest
.L119:
	.loc 1 866 0
	movq	-64(%rbp), %rax	# dest, tmp139
	movzwl	(%rax), %eax	# dest_2->code, D.13082
	cmpw	$64, %ax	#, D.13082
	je	.L121	#,
	.loc 1 867 0
	movq	-64(%rbp), %rax	# dest, tmp140
	movzwl	(%rax), %eax	# dest_2->code, D.13082
	cmpw	$63, %ax	#, D.13082
	je	.L121	#,
	.loc 1 868 0
	movq	-64(%rbp), %rax	# dest, tmp141
	movzwl	(%rax), %eax	# dest_2->code, D.13082
	cmpw	$132, %ax	#, D.13082
	je	.L121	#,
	.loc 1 869 0
	movq	-64(%rbp), %rax	# dest, tmp142
	movzwl	(%rax), %eax	# dest_2->code, D.13082
	cmpw	$133, %ax	#, D.13082
	jne	.L122	#,
.L121:
.LBB18:
	.loc 1 872 0
	movq	-64(%rbp), %rax	# dest, tmp143
	movq	%rax, -56(%rbp)	# tmp143, reg
	.loc 1 874 0
	jmp	.L123	#
.L124:
	.loc 1 878 0
	movq	-56(%rbp), %rax	# reg, tmp144
	movq	8(%rax), %rax	# reg_3->fld[0].rtx, tmp145
	movq	%rax, -56(%rbp)	# tmp145, reg
.L123:
	.loc 1 874 0 discriminator 1
	movq	-56(%rbp), %rax	# reg, tmp146
	movzwl	(%rax), %eax	# reg_3->code, D.13082
	cmpw	$64, %ax	#, D.13082
	je	.L124	#,
	.loc 1 875 0
	movq	-56(%rbp), %rax	# reg, tmp147
	movzwl	(%rax), %eax	# reg_3->code, D.13082
	cmpw	$63, %ax	#, D.13082
	je	.L124	#,
	.loc 1 876 0
	movq	-56(%rbp), %rax	# reg, tmp148
	movzwl	(%rax), %eax	# reg_3->code, D.13082
	cmpw	$132, %ax	#, D.13082
	je	.L124	#,
	.loc 1 877 0
	movq	-56(%rbp), %rax	# reg, tmp149
	movzwl	(%rax), %eax	# reg_3->code, D.13082
	cmpw	$133, %ax	#, D.13082
	je	.L124	#,
	.loc 1 880 0
	movq	-56(%rbp), %rax	# reg, tmp150
	movzwl	(%rax), %eax	# reg_3->code, D.13082
	cmpw	$61, %ax	#, D.13082
	jne	.L125	#,
	.loc 1 881 0
	movq	-56(%rbp), %rax	# reg, tmp151
	movl	8(%rax), %eax	# reg_3->fld[0].rtuint, D.13083
	cmpl	$52, %eax	#, D.13083
	ja	.L126	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# reg, tmp152
	movl	8(%rax), %eax	# reg_3->fld[0].rtuint, D.13083
	cmpl	$17, %eax	#, D.13083
	je	.L126	#,
	movq	-56(%rbp), %rax	# reg, tmp153
	movl	8(%rax), %eax	# reg_3->fld[0].rtuint, D.13083
	cmpl	$16, %eax	#, D.13083
	jne	.L125	#,
.L126:
.LBB19:
	.loc 1 888 0 is_stmt 1
	movq	-40(%rbp), %rax	# context, tmp154
	movq	(%rax), %rax	# context_8->new_renames, tmp155
	movq	%rax, -32(%rbp)	# tmp155, saved_new_renames
	.loc 1 889 0
	movq	-40(%rbp), %rax	# context, tmp156
	movq	$0, (%rax)	#, context_8->new_renames
	.loc 1 890 0
	movq	-56(%rbp), %rdx	# reg, tmp157
	movq	-56(%rbp), %rax	# reg, tmp158
	movq	%rdx, %rcx	# tmp157,
	movq	%rax, %rdx	# tmp158,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.13085,
	call	emit_insn	#
	movq	%rax, -80(%rbp)	# i.45, i
	.loc 1 891 0
	movq	-96(%rbp), %rdx	# data, tmp159
	leaq	-80(%rbp), %rax	#, tmp160
	movl	$rename_insn_1, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	for_each_rtx	#
	.loc 1 892 0
	movq	-40(%rbp), %rax	# context, tmp161
	movq	%rax, %rdi	# tmp161,
	call	apply_delayed_renames	#
	.loc 1 893 0
	movq	-40(%rbp), %rax	# context, tmp162
	movq	-32(%rbp), %rdx	# saved_new_renames, tmp163
	movq	%rdx, (%rax)	# tmp163, context_8->new_renames
.LBE19:
.LBE18:
	.loc 1 870 0
	jmp	.L127	#
.L125:
	jmp	.L127	#
.L122:
	.loc 1 896 0
	movq	-64(%rbp), %rax	# dest, tmp164
	movzwl	(%rax), %eax	# dest_2->code, D.13082
	cmpw	$61, %ax	#, D.13082
	jne	.L127	#,
	.loc 1 897 0
	movq	-64(%rbp), %rax	# dest, tmp165
	movl	8(%rax), %eax	# dest_2->fld[0].rtuint, D.13083
	cmpl	$52, %eax	#, D.13083
	ja	.L128	#,
	.loc 1 897 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# dest, tmp166
	movl	8(%rax), %eax	# dest_2->fld[0].rtuint, D.13083
	cmpl	$17, %eax	#, D.13083
	je	.L128	#,
	movq	-64(%rbp), %rax	# dest, tmp167
	movl	8(%rax), %eax	# dest_2->fld[0].rtuint, D.13083
	cmpl	$16, %eax	#, D.13083
	jne	.L127	#,
.L128:
	.loc 1 903 0 is_stmt 1
	movq	-72(%rbp), %rdx	# destp, tmp168
	movq	-40(%rbp), %rax	# context, tmp169
	movq	%rdx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	create_delayed_rename	#
	.loc 1 908 0
	movq	-48(%rbp), %rax	# x, tmp170
	movzwl	(%rax), %eax	# x_6->code, D.13082
	cmpw	$47, %ax	#, D.13082
	jne	.L129	#,
	.loc 1 909 0
	movq	-48(%rbp), %rax	# x, tmp171
	leaq	16(%rax), %rcx	#, D.13086
	movq	-96(%rbp), %rax	# data, tmp172
	movq	%rax, %rdx	# tmp172,
	movl	$rename_insn_1, %esi	#,
	movq	%rcx, %rdi	# D.13086,
	call	for_each_rtx	#
.L129:
	.loc 1 910 0
	movl	$-1, %eax	#, D.13081
	jmp	.L112	#
.L127:
	.loc 1 915 0
	movl	$0, %eax	#, D.13081
	jmp	.L112	#
.L117:
.LBE17:
	.loc 1 919 0
	movq	-48(%rbp), %rax	# x, tmp173
	movl	8(%rax), %eax	# x_6->fld[0].rtuint, D.13083
	cmpl	$52, %eax	#, D.13083
	ja	.L130	#,
	.loc 1 919 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# x, tmp174
	movl	8(%rax), %eax	# x_6->fld[0].rtuint, D.13083
	cmpl	$17, %eax	#, D.13083
	je	.L130	#,
	.loc 1 919 0 discriminator 1
	movq	-48(%rbp), %rax	# x, tmp175
	movl	8(%rax), %eax	# x_6->fld[0].rtuint, D.13083
	cmpl	$16, %eax	#, D.13083
	jne	.L131	#,
.L130:
	.loc 1 920 0 is_stmt 1 discriminator 1
	movq	-48(%rbp), %rax	# x, tmp176
	movl	8(%rax), %edx	# x_6->fld[0].rtuint, D.13083
	movl	ssa_max_reg_num(%rip), %eax	# ssa_max_reg_num, ssa_max_reg_num.46
	.loc 1 919 0 discriminator 1
	cmpl	%eax, %edx	# ssa_max_reg_num.46, D.13083
	jae	.L131	#,
.LBB20:
	.loc 1 922 0
	movq	-48(%rbp), %rax	# x, tmp177
	movq	%rax, %rdi	# tmp177,
	call	ssa_rename_to_lookup	#
	movq	%rax, -24(%rbp)	# tmp178, new_reg
	.loc 1 924 0
	cmpq	$0, -24(%rbp)	#, new_reg
	je	.L131	#,
	.loc 1 924 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.13085
	cmpq	-24(%rbp), %rax	# new_reg, D.13085
	je	.L131	#,
	.loc 1 926 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp179
	movzbl	2(%rax), %edx	# x_6->mode, D.13084
	movq	-24(%rbp), %rax	# new_reg, tmp180
	movzbl	2(%rax), %eax	# new_reg_62->mode, D.13084
	cmpb	%al, %dl	# D.13084, D.13084
	je	.L132	#,
	.loc 1 927 0
	movl	$__FUNCTION__.11061, %edx	#,
	movl	$927, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L132:
	.loc 1 928 0
	movq	-88(%rbp), %rax	# ptr, tmp181
	movq	-24(%rbp), %rdx	# new_reg, tmp182
	movq	%rdx, (%rax)	# tmp182, *ptr_5(D)
.L131:
.LBE20:
	.loc 1 932 0
	movl	$-1, %eax	#, D.13081
	jmp	.L112	#
.L114:
.LBB21:
	.loc 1 941 0
	movq	-48(%rbp), %rax	# x, tmp183
	movq	8(%rax), %rax	# x_6->fld[0].rtx, tmp184
	movq	%rax, -16(%rbp)	# tmp184, dest
	.loc 1 942 0
	movq	-16(%rbp), %rax	# dest, tmp185
	movzwl	(%rax), %eax	# dest_67->code, D.13082
	cmpw	$61, %ax	#, D.13082
	jne	.L133	#,
	.loc 1 944 0
	movq	-16(%rbp), %rax	# dest, tmp186
	movl	8(%rax), %eax	# dest_67->fld[0].rtuint, D.13083
	cmpl	$52, %eax	#, D.13083
	ja	.L134	#,
	.loc 1 944 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dest, tmp187
	movl	8(%rax), %eax	# dest_67->fld[0].rtuint, D.13083
	cmpl	$17, %eax	#, D.13083
	je	.L134	#,
	movq	-16(%rbp), %rax	# dest, tmp188
	movl	8(%rax), %eax	# dest_67->fld[0].rtuint, D.13083
	cmpl	$16, %eax	#, D.13083
	jne	.L135	#,
.L134:
	.loc 1 945 0 is_stmt 1
	movq	-16(%rbp), %rax	# dest, tmp189
	movl	8(%rax), %edx	# dest_67->fld[0].rtuint, D.13083
	movl	ssa_max_reg_num(%rip), %eax	# ssa_max_reg_num, ssa_max_reg_num.47
	cmpl	%eax, %edx	# ssa_max_reg_num.47, D.13083
	jae	.L135	#,
.LBB22:
	.loc 1 947 0
	movq	-16(%rbp), %rax	# dest, tmp190
	movq	%rax, %rdi	# tmp190,
	call	ssa_rename_to_lookup	#
	movq	%rax, -8(%rbp)	# tmp191, new_reg
	.loc 1 948 0
	cmpq	$0, -8(%rbp)	#, new_reg
	je	.L135	#,
	.loc 1 948 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.13085
	cmpq	-8(%rbp), %rax	# new_reg, D.13085
	je	.L135	#,
	.loc 1 949 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp192
	movq	-8(%rbp), %rdx	# new_reg, tmp193
	movq	%rdx, 8(%rax)	# tmp193, x_6->fld[0].rtx
.L135:
.LBE22:
	.loc 1 952 0
	movl	$-1, %eax	#, D.13081
	jmp	.L112	#
.L133:
	.loc 1 956 0
	movl	$0, %eax	#, D.13081
	jmp	.L112	#
.L118:
.LBE21:
	.loc 1 961 0
	movl	$-1, %eax	#, D.13081
	jmp	.L112	#
.L113:
	.loc 1 965 0
	movl	$0, %eax	#, D.13081
.L112:
	.loc 1 967 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	rename_insn_1, .-rename_insn_1
	.type	rename_block, @function
rename_block:
.LFB27:
	.loc 1 973 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -132(%rbp)	# bb, bb
	movq	%rsi, -144(%rbp)	# idom, idom
	.loc 1 974 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.48
	movl	-132(%rbp), %edx	# bb, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	addq	$4, %rdx	#, tmp109
	movq	(%rax,%rdx,8), %rax	# basic_block_info.48_10->data.bb, tmp110
	movq	%rax, -80(%rbp)	# tmp110, b
	.loc 1 977 0
	movq	$0, -96(%rbp)	#, set_data
	.loc 1 983 0
	movq	-80(%rbp), %rax	# b, tmp111
	movq	(%rax), %rax	# b_12->head, tmp112
	movq	%rax, -104(%rbp)	# tmp112, next
	.loc 1 984 0
	movq	-80(%rbp), %rax	# b, tmp113
	movq	8(%rax), %rax	# b_12->end, tmp114
	movq	%rax, -72(%rbp)	# tmp114, last
.L141:
	.loc 1 987 0
	movq	-104(%rbp), %rax	# next, tmp115
	movq	%rax, -112(%rbp)	# tmp115, insn
	.loc 1 988 0
	movq	-112(%rbp), %rax	# insn, tmp116
	movzwl	(%rax), %eax	# insn_16->code, D.13088
	movzwl	%ax, %eax	# D.13088, D.13089
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13090
	cmpb	$105, %al	#, D.13090
	jne	.L137	#,
.LBB23:
	.loc 1 991 0
	movq	-96(%rbp), %rax	# set_data, tmp118
	movq	%rax, -24(%rbp)	# tmp118, context.done_renames
	.loc 1 992 0
	movq	$0, -32(%rbp)	#, context.new_renames
	.loc 1 993 0
	movq	-112(%rbp), %rax	# insn, tmp119
	movq	%rax, -16(%rbp)	# tmp119, context.current_insn
	.loc 1 995 0
	call	start_sequence	#
	.loc 1 996 0
	movq	-112(%rbp), %rax	# insn, tmp120
	leaq	32(%rax), %rcx	#, D.13091
	leaq	-32(%rbp), %rax	#, tmp121
	movq	%rax, %rdx	# tmp121,
	movl	$rename_insn_1, %esi	#,
	movq	%rcx, %rdi	# D.13091,
	call	for_each_rtx	#
	.loc 1 997 0
	movq	-112(%rbp), %rax	# insn, tmp122
	leaq	56(%rax), %rcx	#, D.13091
	leaq	-32(%rbp), %rax	#, tmp123
	movq	%rax, %rdx	# tmp123,
	movl	$rename_insn_1, %esi	#,
	movq	%rcx, %rdi	# D.13091,
	call	for_each_rtx	#
	.loc 1 1003 0
	call	get_insns	#
	testq	%rax, %rax	# D.13092
	je	.L138	#,
.LBB24:
	.loc 1 1008 0
	movq	-112(%rbp), %rax	# insn, tmp124
	movq	32(%rax), %rax	# insn_16->fld[3].rtx, D.13092
	movq	%rax, %rdi	# D.13092,
	call	emit	#
	.loc 1 1009 0
	call	gen_sequence	#
	movq	%rax, -64(%rbp)	# tmp125, seq
	.loc 1 1012 0
	movl	$0, -124(%rbp)	#, i
	jmp	.L139	#
.L140:
	.loc 1 1013 0 discriminator 2
	movq	-64(%rbp), %rax	# seq, tmp126
	movq	8(%rax), %rax	# seq_24->fld[0].rtvec, D.13093
	movq	-64(%rbp), %rdx	# seq, tmp127
	movq	8(%rdx), %rdx	# seq_24->fld[0].rtvec, D.13093
	movl	-124(%rbp), %ecx	# i, tmp129
	movslq	%ecx, %rcx	# tmp129, tmp128
	movq	8(%rdx,%rcx,8), %rdx	# _29->elem, D.13092
	movq	32(%rdx), %rcx	# _30->fld[3].rtx, D.13092
	movl	-124(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	movq	%rcx, 8(%rax,%rdx,8)	# D.13092, _28->elem
	.loc 1 1012 0 discriminator 2
	addl	$1, -124(%rbp)	#, i
.L139:
	.loc 1 1012 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# seq, tmp132
	movq	8(%rax), %rax	# seq_24->fld[0].rtvec, D.13093
	movl	(%rax), %eax	# _26->num_elem, D.13089
	cmpl	-124(%rbp), %eax	# i, D.13089
	jg	.L140	#,
	.loc 1 1014 0 is_stmt 1
	movq	-112(%rbp), %rax	# insn, tmp133
	movq	-64(%rbp), %rdx	# seq, tmp134
	movq	%rdx, 32(%rax)	# tmp134, insn_16->fld[3].rtx
.L138:
.LBE24:
	.loc 1 1016 0
	call	end_sequence	#
	.loc 1 1018 0
	leaq	-32(%rbp), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	apply_delayed_renames	#
	.loc 1 1019 0
	movq	-24(%rbp), %rax	# context.done_renames, tmp136
	movq	%rax, -96(%rbp)	# tmp136, set_data
.L137:
.LBE23:
	.loc 1 1022 0
	movq	-112(%rbp), %rax	# insn, tmp137
	movq	24(%rax), %rax	# insn_16->fld[2].rtx, tmp138
	movq	%rax, -104(%rbp)	# tmp138, next
	.loc 1 1024 0
	movq	-112(%rbp), %rax	# insn, tmp139
	cmpq	-72(%rbp), %rax	# last, tmp139
	jne	.L141	#,
	.loc 1 1028 0
	movq	-80(%rbp), %rax	# b, tmp140
	movq	40(%rax), %rax	# b_12->succ, tmp141
	movq	%rax, -120(%rbp)	# tmp141, e
	jmp	.L142	#
.L155:
	.loc 1 1030 0
	movq	-120(%rbp), %rax	# e, tmp142
	movq	24(%rax), %rax	# e_1->dest, D.13094
	cmpq	$entry_exit_blocks+112, %rax	#, D.13094
	jne	.L143	#,
	.loc 1 1031 0
	jmp	.L144	#
.L143:
	.loc 1 1033 0
	movq	-120(%rbp), %rax	# e, tmp143
	movq	24(%rax), %rax	# e_1->dest, D.13094
	movq	%rax, %rdi	# D.13094,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -112(%rbp)	# tmp144, insn
	.loc 1 1035 0
	jmp	.L145	#
.L154:
.LBB25:
	.loc 1 1037 0
	movq	-112(%rbp), %rax	# insn, tmp145
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, tmp146
	movq	%rax, -56(%rbp)	# tmp146, phi
	.loc 1 1046 0
	movq	-56(%rbp), %rax	# phi, tmp147
	movq	8(%rax), %rax	# phi_45->fld[0].rtx, tmp148
	movq	%rax, -88(%rbp)	# tmp148, reg
	.loc 1 1047 0
	movq	-88(%rbp), %rax	# reg, tmp149
	movl	8(%rax), %edx	# reg_46->fld[0].rtuint, D.13095
	movl	ssa_max_reg_num(%rip), %eax	# ssa_max_reg_num, ssa_max_reg_num.49
	cmpl	%eax, %edx	# ssa_max_reg_num.49, D.13095
	jb	.L146	#,
	.loc 1 1048 0
	movq	-88(%rbp), %rax	# reg, tmp150
	movl	8(%rax), %eax	# reg_46->fld[0].rtuint, D.13095
	movl	%eax, %edi	# D.13089,
	call	ssa_rename_from_lookup	#
	movq	%rax, -88(%rbp)	# tmp151, reg
.L146:
	.loc 1 1049 0
	cmpq	$0, -88(%rbp)	#, reg
	jne	.L147	#,
	.loc 1 1050 0
	movl	$__FUNCTION__.11089, %edx	#,
	movl	$1050, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L147:
	.loc 1 1051 0
	movq	-88(%rbp), %rax	# reg, tmp152
	movq	%rax, %rdi	# tmp152,
	call	ssa_rename_to_lookup	#
	movq	%rax, -88(%rbp)	# tmp153, reg
	.loc 1 1056 0
	cmpq	$0, -88(%rbp)	#, reg
	je	.L148	#,
	.loc 1 1056 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.13092
	cmpq	-88(%rbp), %rax	# reg, D.13092
	jne	.L149	#,
.L148:
	.loc 1 1058 0 is_stmt 1
	movq	-80(%rbp), %rdx	# b, tmp154
	movq	-56(%rbp), %rax	# phi, tmp155
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	remove_phi_alternative	#
	testl	%eax, %eax	# D.13089
	jne	.L150	#,
	.loc 1 1059 0
	movl	$__FUNCTION__.11089, %edx	#,
	movl	$1059, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L150:
	.loc 1 1058 0 discriminator 1
	jmp	.L151	#
.L149:
	.loc 1 1066 0
	movq	-56(%rbp), %rax	# phi, tmp156
	movq	8(%rax), %rax	# phi_45->fld[0].rtx, D.13092
	movzbl	2(%rax), %eax	# _54->mode, D.13096
	testb	%al, %al	# D.13096
	jne	.L152	#,
	.loc 1 1067 0
	movq	-56(%rbp), %rax	# phi, tmp157
	movq	8(%rax), %rax	# phi_45->fld[0].rtx, D.13092
	movq	-88(%rbp), %rdx	# reg, tmp158
	movzbl	2(%rdx), %edx	# reg_52->mode, D.13096
	movb	%dl, 2(%rax)	# D.13096, _56->mode
	jmp	.L153	#
.L152:
	.loc 1 1068 0
	movq	-56(%rbp), %rax	# phi, tmp159
	movq	8(%rax), %rax	# phi_45->fld[0].rtx, D.13092
	movzbl	2(%rax), %edx	# _58->mode, D.13096
	movq	-88(%rbp), %rax	# reg, tmp160
	movzbl	2(%rax), %eax	# reg_52->mode, D.13096
	cmpb	%al, %dl	# D.13096, D.13096
	je	.L153	#,
	.loc 1 1069 0
	movl	$__FUNCTION__.11089, %edx	#,
	movl	$1069, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L153:
	.loc 1 1071 0
	movl	-132(%rbp), %edx	# bb, tmp161
	movq	-56(%rbp), %rax	# phi, tmp162
	movl	%edx, %esi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	phi_alternative	#
	movq	-88(%rbp), %rdx	# reg, tmp163
	movq	%rdx, (%rax)	# tmp163, *_61
.L151:
	.loc 1 1074 0
	movq	-112(%rbp), %rax	# insn, tmp164
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp165
	movq	%rax, -112(%rbp)	# tmp165, insn
.L145:
.LBE25:
	.loc 1 1035 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, insn
	je	.L144	#,
	.loc 1 1035 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# insn, tmp166
	movzwl	(%rax), %eax	# insn_2->code, D.13088
	cmpw	$32, %ax	#, D.13088
	jne	.L144	#,
	.loc 1 1035 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp167
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.13092
	movzwl	(%rax), %eax	# _40->code, D.13088
	cmpw	$47, %ax	#, D.13088
	jne	.L144	#,
	movq	-112(%rbp), %rax	# insn, tmp168
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.13092
	movq	16(%rax), %rax	# _42->fld[1].rtx, D.13092
	movzwl	(%rax), %eax	# _43->code, D.13088
	cmpw	$152, %ax	#, D.13088
	je	.L154	#,
.L144:
	.loc 1 1028 0 is_stmt 1
	movq	-120(%rbp), %rax	# e, tmp169
	movq	8(%rax), %rax	# e_1->succ_next, tmp170
	movq	%rax, -120(%rbp)	# tmp170, e
.L142:
	.loc 1 1028 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, e
	jne	.L155	#,
	.loc 1 1081 0 is_stmt 1
	movl	$0, -128(%rbp)	#, c
	jmp	.L156	#
.L158:
	.loc 1 1082 0
	movl	-128(%rbp), %eax	# c, tmp171
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13097
	movq	-144(%rbp), %rax	# idom, tmp172
	addq	%rdx, %rax	# D.13097, D.13098
	movl	(%rax), %eax	# *_70, D.13089
	cmpl	-132(%rbp), %eax	# bb, D.13089
	jne	.L157	#,
	.loc 1 1083 0
	movq	-144(%rbp), %rdx	# idom, tmp173
	movl	-128(%rbp), %eax	# c, tmp174
	movq	%rdx, %rsi	# tmp173,
	movl	%eax, %edi	# tmp174,
	call	rename_block	#
.L157:
	.loc 1 1081 0
	addl	$1, -128(%rbp)	#, c
.L156:
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.50
	cmpl	%eax, -128(%rbp)	# n_basic_blocks.50, c
	jl	.L158	#,
	.loc 1 1088 0 is_stmt 1
	jmp	.L159	#
.L161:
.LBB26:
	.loc 1 1091 0
	movq	-96(%rbp), %rax	# set_data, tmp175
	movq	8(%rax), %rax	# set_data_6->reg_loc, D.13091
	movq	(%rax), %rax	# *_73, tmp176
	movq	%rax, -48(%rbp)	# tmp176, old_reg
	.loc 1 1093 0
	movq	-96(%rbp), %rax	# set_data, tmp177
	movq	8(%rax), %rax	# set_data_6->reg_loc, D.13091
	movq	(%rax), %rdx	# *_75, D.13092
	movq	-96(%rbp), %rax	# set_data, tmp178
	movq	16(%rax), %rax	# set_data_6->old_reg, D.13092
	cmpq	%rax, %rdx	# D.13092, D.13092
	je	.L160	#,
	.loc 1 1094 0
	movl	$__FUNCTION__.11089, %edx	#,
	movl	$1094, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L160:
	.loc 1 1095 0
	movq	-96(%rbp), %rax	# set_data, tmp179
	movq	8(%rax), %rax	# set_data_6->reg_loc, D.13091
	movq	-96(%rbp), %rdx	# set_data, tmp180
	movq	24(%rdx), %rdx	# set_data_6->new_reg, D.13092
	movq	%rdx, (%rax)	# D.13092, *_78
	.loc 1 1097 0
	movq	-96(%rbp), %rax	# set_data, tmp181
	movq	32(%rax), %rdx	# set_data_6->prev_reg, D.13092
	movq	-48(%rbp), %rax	# old_reg, tmp182
	movq	%rdx, %rsi	# D.13092,
	movq	%rax, %rdi	# tmp182,
	call	ssa_rename_to_insert	#
	.loc 1 1099 0
	movq	-96(%rbp), %rax	# set_data, tmp183
	movq	(%rax), %rax	# set_data_6->next, tmp184
	movq	%rax, -40(%rbp)	# tmp184, next
	.loc 1 1100 0
	movq	-96(%rbp), %rax	# set_data, tmp185
	movq	%rax, %rdi	# tmp185,
	call	free	#
	.loc 1 1101 0
	movq	-40(%rbp), %rax	# next, tmp186
	movq	%rax, -96(%rbp)	# tmp186, set_data
.L159:
.LBE26:
	.loc 1 1088 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, set_data
	jne	.L161	#,
	.loc 1 1103 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	rename_block, .-rename_block
	.section	.rodata
.LC4:
	.string	"ssa_definition"
	.text
	.type	rename_registers, @function
rename_registers:
.LFB28:
	.loc 1 1109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# nregs, nregs
	movq	%rsi, -16(%rbp)	# idom, idom
	.loc 1 1110 0
	movl	-4(%rbp), %edx	# nregs, tmp68
	movl	%edx, %eax	# tmp68, tmp69
	addl	%eax, %eax	# tmp69
	addl	%edx, %eax	# tmp68, D.13099
	cltq
	movl	$.LC4, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.13100,
	call	varray_init	#
	movq	%rax, ssa_definition(%rip)	# ssa_definition.51, ssa_definition
	.loc 1 1111 0
	call	ssa_rename_from_initialize	#
	.loc 1 1113 0
	movl	-4(%rbp), %eax	# nregs, tmp70
	cltq
	salq	$3, %rax	#, D.13100
	leaq	15(%rax), %rdx	#, tmp71
	movl	$16, %eax	#, tmp84
	subq	$1, %rax	#, tmp72
	addq	%rdx, %rax	# tmp71, tmp73
	movl	$16, %ecx	#, tmp85
	movl	$0, %edx	#, tmp76
	divq	%rcx	# tmp85
	imulq	$16, %rax, %rax	#, tmp75, tmp77
	subq	%rax, %rsp	# tmp77,
	movq	%rsp, %rax	#, tmp78
	addq	$15, %rax	#, tmp79
	shrq	$4, %rax	#, tmp80
	salq	$4, %rax	#, tmp81
	movq	%rax, ssa_rename_to_pseudo(%rip)	# ssa_rename_to_pseudo.52, ssa_rename_to_pseudo
	.loc 1 1114 0
	movl	-4(%rbp), %eax	# nregs, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13100
	movq	ssa_rename_to_pseudo(%rip), %rax	# ssa_rename_to_pseudo, ssa_rename_to_pseudo.53
	movl	$0, %esi	#,
	movq	%rax, %rdi	# ssa_rename_to_pseudo.53,
	call	memset	#
	.loc 1 1115 0
	movl	$25016, %edx	#,
	movl	$0, %esi	#,
	movl	$ssa_rename_to_hard, %edi	#,
	call	memset	#
	.loc 1 1118 0
	movq	-16(%rbp), %rax	# idom, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$0, %edi	#,
	call	rename_block	#
	.loc 1 1123 0
	movq	$0, ssa_rename_to_pseudo(%rip)	#, ssa_rename_to_pseudo
	.loc 1 1124 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	rename_registers, .-rename_registers
	.section	.rodata
.LC5:
	.string	";; Immediate Dominators:\n"
.LC6:
	.string	";\t%3d = %3d\n"
.LC7:
	.string	"; Basic Block"
.LC8:
	.string	";; Dominance Frontiers:"
.LC9:
	.string	"; Register"
	.align 8
.LC10:
	.string	";; Iterated Dominance Frontiers:"
	.text
	.globl	convert_to_ssa
	.type	convert_to_ssa, @function
convert_to_ssa:
.LFB29:
	.loc 1 1130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1144 0
	movl	in_ssa_form(%rip), %eax	# in_ssa_form, in_ssa_form.54
	testl	%eax, %eax	# in_ssa_form.54
	je	.L164	#,
	.loc 1 1145 0
	movl	$__FUNCTION__.11115, %edx	#,
	movl	$1145, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L164:
	.loc 1 1149 0
	call	get_insns	#
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.13103,
	call	life_analysis	#
	.loc 1 1151 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.55
	cltq
	salq	$2, %rax	#, D.13104
	leaq	15(%rax), %rdx	#, tmp99
	movl	$16, %eax	#, tmp137
	subq	$1, %rax	#, tmp100
	addq	%rdx, %rax	# tmp99, tmp101
	movl	$16, %ebx	#, tmp138
	movl	$0, %edx	#, tmp104
	divq	%rbx	# tmp138
	imulq	$16, %rax, %rax	#, tmp103, tmp105
	subq	%rax, %rsp	# tmp105,
	movq	%rsp, %rax	#, tmp106
	addq	$15, %rax	#, tmp107
	shrq	$4, %rax	#, tmp108
	salq	$4, %rax	#, tmp109
	movq	%rax, -48(%rbp)	# tmp109, idom
	.loc 1 1152 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.56
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13104
	movq	-48(%rbp), %rax	# idom, tmp110
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	memset	#
	.loc 1 1153 0
	movq	-48(%rbp), %rax	# idom, tmp111
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	calculate_dominance_info	#
	.loc 1 1155 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.57
	testq	%rax, %rax	# rtl_dump_file.57
	je	.L165	#,
.LBB27:
	.loc 1 1158 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.58
	movq	%rax, %rcx	# rtl_dump_file.58,
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
	.loc 1 1159 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L166	#
.L167:
	.loc 1 1160 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13104
	movq	-48(%rbp), %rax	# idom, tmp113
	addq	%rdx, %rax	# D.13104, D.13105
	movl	(%rax), %ecx	# *_17, D.13106
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.59
	movl	-56(%rbp), %edx	# i, tmp114
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.59,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1159 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L166:
	.loc 1 1159 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.60
	cmpl	%eax, -56(%rbp)	# n_basic_blocks.60, i
	jl	.L167	#,
	.loc 1 1161 0 is_stmt 1
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.61
	movq	%rax, %rdi	# rtl_dump_file.61,
	call	fflush	#
.L165:
.LBE27:
	.loc 1 1166 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.62
	movl	%eax, %edx	# n_basic_blocks.62, n_basic_blocks.63
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.64
	movl	%edx, %esi	# n_basic_blocks.63,
	movl	%eax, %edi	# n_basic_blocks.65,
	call	sbitmap_vector_alloc	#
	movq	%rax, -40(%rbp)	# tmp115, dfs
	.loc 1 1167 0
	movq	-48(%rbp), %rdx	# idom, tmp116
	movq	-40(%rbp), %rax	# dfs, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	compute_dominance_frontiers	#
	.loc 1 1169 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.66
	testq	%rax, %rax	# rtl_dump_file.66
	je	.L168	#,
	.loc 1 1171 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.67
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.68
	movq	-40(%rbp), %rdx	# dfs, tmp118
	movl	%ecx, %r8d	# n_basic_blocks.67,
	movq	%rdx, %rcx	# tmp118,
	movl	$.LC7, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.68,
	call	dump_sbitmap_vector	#
	.loc 1 1173 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.69
	movq	%rax, %rdi	# rtl_dump_file.69,
	call	fflush	#
.L168:
	.loc 1 1178 0
	call	max_reg_num	#
	movl	%eax, ssa_max_reg_num(%rip)	# ssa_max_reg_num.70, ssa_max_reg_num
	.loc 1 1179 0
	movl	ssa_max_reg_num(%rip), %eax	# ssa_max_reg_num, ssa_max_reg_num.71
	movl	%eax, -52(%rbp)	# ssa_max_reg_num.71, nregs
	.loc 1 1180 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.72
	movl	%eax, %edx	# n_basic_blocks.72, n_basic_blocks.73
	movl	-52(%rbp), %eax	# nregs, nregs.74
	movl	%edx, %esi	# n_basic_blocks.73,
	movl	%eax, %edi	# nregs.74,
	call	sbitmap_vector_alloc	#
	movq	%rax, -32(%rbp)	# tmp119, evals
	.loc 1 1181 0
	movl	-52(%rbp), %edx	# nregs, tmp120
	movq	-32(%rbp), %rax	# evals, tmp121
	movl	%edx, %esi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	find_evaluations	#
	.loc 1 1185 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.75
	movl	%eax, %edx	# n_basic_blocks.75, n_basic_blocks.76
	movl	-52(%rbp), %eax	# nregs, nregs.77
	movl	%edx, %esi	# n_basic_blocks.76,
	movl	%eax, %edi	# nregs.77,
	call	sbitmap_vector_alloc	#
	movq	%rax, -24(%rbp)	# tmp122, idfs
	.loc 1 1186 0
	movl	-52(%rbp), %ecx	# nregs, tmp123
	movq	-32(%rbp), %rdx	# evals, tmp124
	movq	-40(%rbp), %rsi	# dfs, tmp125
	movq	-24(%rbp), %rax	# idfs, tmp126
	movq	%rax, %rdi	# tmp126,
	call	compute_iterated_dominance_frontiers	#
	.loc 1 1188 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.78
	testq	%rax, %rax	# rtl_dump_file.78
	je	.L169	#,
	.loc 1 1190 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.79
	movl	-52(%rbp), %ecx	# nregs, tmp127
	movq	-24(%rbp), %rdx	# idfs, tmp128
	movl	%ecx, %r8d	# tmp127,
	movq	%rdx, %rcx	# tmp128,
	movl	$.LC9, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.79,
	call	dump_sbitmap_vector	#
	.loc 1 1192 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.80
	movq	%rax, %rdi	# rtl_dump_file.80,
	call	fflush	#
.L169:
	.loc 1 1197 0
	movl	-52(%rbp), %edx	# nregs, tmp129
	movq	-32(%rbp), %rcx	# evals, tmp130
	movq	-24(%rbp), %rax	# idfs, tmp131
	movq	%rcx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	insert_phi_nodes	#
	.loc 1 1201 0
	movq	-48(%rbp), %rdx	# idom, tmp132
	movl	-52(%rbp), %eax	# nregs, tmp133
	movq	%rdx, %rsi	# tmp132,
	movl	%eax, %edi	# tmp133,
	call	rename_registers	#
	.loc 1 1205 0
	movq	-40(%rbp), %rax	# dfs, tmp134
	movq	%rax, %rdi	# tmp134,
	call	free	#
	.loc 1 1206 0
	movq	-32(%rbp), %rax	# evals, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	.loc 1 1207 0
	movq	-24(%rbp), %rax	# idfs, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free	#
	.loc 1 1208 0
	movl	$1, in_ssa_form(%rip)	#, in_ssa_form
	.loc 1 1210 0
	call	max_reg_num	#
	movl	%eax, %ebx	# D.13106, D.13107
	call	get_insns	#
	movl	$1, %edx	#,
	movl	%ebx, %esi	# D.13107,
	movq	%rax, %rdi	# D.13103,
	call	reg_scan	#
	.loc 1 1211 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	convert_to_ssa, .-convert_to_ssa
	.type	ephi_add_node, @function
ephi_add_node:
.LFB30:
	.loc 1 1221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# nodes, nodes
	movq	%rdx, -40(%rbp)	# n_nodes, n_nodes
	.loc 1 1223 0
	movq	-40(%rbp), %rax	# n_nodes, tmp74
	movl	(%rax), %eax	# *n_nodes_3(D), D.13114
	subl	$1, %eax	#, tmp75
	movl	%eax, -4(%rbp)	# tmp75, i
	jmp	.L171	#
.L174:
	.loc 1 1224 0
	movq	-24(%rbp), %rax	# reg, tmp76
	movl	8(%rax), %edx	# reg_6(D)->fld[0].rtuint, D.13115
	movl	-4(%rbp), %eax	# i, tmp77
	cltq
	leaq	0(,%rax,8), %rcx	#, D.13116
	movq	-32(%rbp), %rax	# nodes, tmp78
	addq	%rcx, %rax	# D.13116, D.13117
	movq	(%rax), %rax	# *_11, D.13118
	movl	8(%rax), %eax	# _12->fld[0].rtuint, D.13115
	cmpl	%eax, %edx	# D.13115, D.13115
	jne	.L172	#,
	.loc 1 1225 0
	movl	-4(%rbp), %eax	# i, D.13114
	jmp	.L173	#
.L172:
	.loc 1 1223 0
	subl	$1, -4(%rbp)	#, i
.L171:
	.loc 1 1223 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L174	#,
	.loc 1 1227 0 is_stmt 1
	movq	-40(%rbp), %rax	# n_nodes, tmp79
	movl	(%rax), %eax	# *n_nodes_3(D), D.13114
	leal	1(%rax), %ecx	#, D.13114
	movq	-40(%rbp), %rdx	# n_nodes, tmp80
	movl	%ecx, (%rdx)	# D.13114, *n_nodes_3(D)
	movl	%eax, -4(%rbp)	# i.123, i
	movl	-4(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13116
	movq	-32(%rbp), %rax	# nodes, tmp82
	addq	%rax, %rdx	# tmp82, D.13117
	movq	-24(%rbp), %rax	# reg, tmp83
	movq	%rax, (%rdx)	# tmp83, *_22
	.loc 1 1228 0
	movl	-4(%rbp), %eax	# i, D.13114
.L173:
	.loc 1 1229 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ephi_add_node, .-ephi_add_node
	.type	ephi_forward, @function
ephi_forward:
.LFB31:
	.loc 1 1242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# t, t
	movq	%rsi, -64(%rbp)	# visited, visited
	movq	%rdx, -72(%rbp)	# succ, succ
	movq	%rcx, -80(%rbp)	# tstack, tstack
	.loc 1 1245 0
	movl	-52(%rbp), %eax	# t, t.81
	shrl	$6, %eax	#, D.13119
	movq	-64(%rbp), %rdx	# visited, tmp90
	movl	%eax, %ecx	# D.13119, tmp91
	addq	$2, %rcx	#, tmp92
	movq	(%rdx,%rcx,8), %rdx	# visited_14(D)->elms, D.13120
	movl	-52(%rbp), %ecx	# t, tmp93
	andl	$63, %ecx	#, D.13121
	movl	$1, %esi	#, tmp94
	salq	%cl, %rsi	# D.13121, D.13120
	movq	%rsi, %rcx	# D.13120, D.13120
	orq	%rdx, %rcx	# D.13120, D.13120
	movq	-64(%rbp), %rdx	# visited, tmp95
	movl	%eax, %eax	# D.13119, tmp96
	addq	$2, %rax	#, tmp97
	movq	%rcx, (%rdx,%rax,8)	# D.13120, visited_14(D)->elms
.LBB28:
	.loc 1 1247 0
	movl	$0, -36(%rbp)	#, bit_num_
	movl	-52(%rbp), %eax	# t, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13120
	movq	-72(%rbp), %rax	# succ, tmp99
	addq	%rdx, %rax	# D.13120, D.13122
	movq	(%rax), %rax	# *_23, D.13123
	movl	4(%rax), %eax	# _24->size, tmp100
	movl	%eax, -32(%rbp)	# tmp100, size_
	movl	-52(%rbp), %eax	# t, tmp101
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13120
	movq	-72(%rbp), %rax	# succ, tmp102
	addq	%rdx, %rax	# D.13120, D.13122
	movq	(%rax), %rax	# *_28, D.13123
	addq	$16, %rax	#, tmp103
	movq	%rax, -16(%rbp)	# tmp103, ptr_
	movl	$0, -40(%rbp)	#, word_num_
	jmp	.L176	#
.L182:
.LBB29:
	.loc 1 1247 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# word_num_, D.13120
	leaq	0(,%rax,8), %rdx	#, D.13120
	movq	-16(%rbp), %rax	# ptr_, tmp104
	addq	%rdx, %rax	# D.13120, D.13124
	movq	(%rax), %rax	# *_35, tmp105
	movq	%rax, -24(%rbp)	# tmp105, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L177	#,
	.loc 1 1247 0 discriminator 1
	jmp	.L178	#
.L181:
.LBB30:
	.loc 1 1247 0 discriminator 2
	movl	-36(%rbp), %eax	# bit_num_, bit_num_.82
	movl	$1, %edx	#, tmp106
	movl	%eax, %ecx	# bit_num_.82, tmp128
	salq	%cl, %rdx	# tmp128, tmp107
	movq	%rdx, %rax	# tmp107, tmp107
	movq	%rax, -8(%rbp)	# tmp107, _mask
	movq	-8(%rbp), %rax	# _mask, tmp108
	movq	-24(%rbp), %rdx	# word_, tmp109
	andq	%rdx, %rax	# tmp109, D.13120
	testq	%rax, %rax	# D.13120
	je	.L179	#,
	.loc 1 1247 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp110
	notq	%rax	# D.13120
	andq	%rax, -24(%rbp)	# D.13120, word_
	movl	-40(%rbp), %eax	# word_num_, tmp111
	sall	$6, %eax	#, D.13119
	movl	%eax, %edx	# D.13119, D.13119
	movl	-36(%rbp), %eax	# bit_num_, tmp112
	addl	%edx, %eax	# D.13119, D.13119
	movl	%eax, -28(%rbp)	# D.13119, s
	movl	-28(%rbp), %eax	# s, s.83
	shrl	$6, %eax	#, D.13119
	movl	%eax, %edx	# D.13119, D.13119
	movq	-64(%rbp), %rax	# visited, tmp113
	movl	%edx, %edx	# D.13119, tmp114
	addq	$2, %rdx	#, tmp115
	movq	(%rax,%rdx,8), %rdx	# visited_14(D)->elms, D.13120
	movl	-28(%rbp), %eax	# s, tmp116
	andl	$63, %eax	#, D.13121
	movl	%eax, %ecx	# D.13121, tmp132
	shrq	%cl, %rdx	# tmp132, D.13120
	movq	%rdx, %rax	# D.13120, D.13120
	andl	$1, %eax	#, D.13120
	testq	%rax, %rax	# D.13120
	jne	.L180	#,
	movq	-80(%rbp), %rcx	# tstack, tmp117
	movq	-72(%rbp), %rdx	# succ, tmp118
	movq	-64(%rbp), %rsi	# visited, tmp119
	movl	-28(%rbp), %eax	# s, tmp120
	movl	%eax, %edi	# tmp120,
	call	ephi_forward	#
	movq	%rax, -80(%rbp)	# tmp121, tstack
.L180:
	.loc 1 1247 0 discriminator 2
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L179	#,
	.loc 1 1247 0 discriminator 1
	jmp	.L177	#
.L179:
.LBE30:
	.loc 1 1247 0 discriminator 2
	addl	$1, -36(%rbp)	#, bit_num_
.L178:
	.loc 1 1247 0 discriminator 1
	cmpl	$63, -36(%rbp)	#, bit_num_
	jbe	.L181	#,
.L177:
.LBE29:
	.loc 1 1247 0 discriminator 2
	addl	$1, -40(%rbp)	#, word_num_
	movl	$0, -36(%rbp)	#, bit_num_
.L176:
	.loc 1 1247 0 discriminator 1
	movl	-40(%rbp), %eax	# word_num_, tmp122
	cmpl	-32(%rbp), %eax	# size_, tmp122
	jb	.L182	#,
.LBE28:
	.loc 1 1253 0 is_stmt 1
	movq	-80(%rbp), %rax	# tstack, tstack.84
	leaq	4(%rax), %rdx	#, tmp123
	movq	%rdx, -80(%rbp)	# tmp123, tstack
	movl	-52(%rbp), %edx	# t, tmp124
	movl	%edx, (%rax)	# tmp124, *tstack.84_55
	.loc 1 1254 0
	movq	-80(%rbp), %rax	# tstack, D.13125
	.loc 1 1255 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ephi_forward, .-ephi_forward
	.type	ephi_backward, @function
ephi_backward:
.LFB32:
	.loc 1 1265 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# t, t
	movq	%rsi, -64(%rbp)	# visited, visited
	movq	%rdx, -72(%rbp)	# pred, pred
	movq	%rcx, -80(%rbp)	# nodes, nodes
	.loc 1 1268 0
	movl	-52(%rbp), %eax	# t, t.85
	shrl	$6, %eax	#, D.13126
	movq	-64(%rbp), %rdx	# visited, tmp95
	movl	%eax, %ecx	# D.13126, tmp96
	addq	$2, %rcx	#, tmp97
	movq	(%rdx,%rcx,8), %rdx	# visited_9(D)->elms, D.13127
	movl	-52(%rbp), %ecx	# t, tmp98
	andl	$63, %ecx	#, D.13128
	movl	$1, %esi	#, tmp99
	salq	%cl, %rsi	# D.13128, D.13127
	movq	%rsi, %rcx	# D.13127, D.13127
	orq	%rdx, %rcx	# D.13127, D.13127
	movq	-64(%rbp), %rdx	# visited, tmp100
	movl	%eax, %eax	# D.13126, tmp101
	addq	$2, %rax	#, tmp102
	movq	%rcx, (%rdx,%rax,8)	# D.13127, visited_9(D)->elms
.LBB31:
	.loc 1 1270 0
	movl	$0, -36(%rbp)	#, bit_num_
	movl	-52(%rbp), %eax	# t, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13127
	movq	-72(%rbp), %rax	# pred, tmp104
	addq	%rdx, %rax	# D.13127, D.13129
	movq	(%rax), %rax	# *_18, D.13130
	movl	4(%rax), %eax	# _19->size, tmp105
	movl	%eax, -32(%rbp)	# tmp105, size_
	movl	-52(%rbp), %eax	# t, tmp106
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13127
	movq	-72(%rbp), %rax	# pred, tmp107
	addq	%rdx, %rax	# D.13127, D.13129
	movq	(%rax), %rax	# *_23, D.13130
	addq	$16, %rax	#, tmp108
	movq	%rax, -16(%rbp)	# tmp108, ptr_
	movl	$0, -40(%rbp)	#, word_num_
	jmp	.L185	#
.L191:
.LBB32:
	.loc 1 1270 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# word_num_, D.13127
	leaq	0(,%rax,8), %rdx	#, D.13127
	movq	-16(%rbp), %rax	# ptr_, tmp109
	addq	%rdx, %rax	# D.13127, D.13131
	movq	(%rax), %rax	# *_29, tmp110
	movq	%rax, -24(%rbp)	# tmp110, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L186	#,
	.loc 1 1270 0 discriminator 1
	jmp	.L187	#
.L190:
.LBB33:
	.loc 1 1270 0 discriminator 2
	movl	-36(%rbp), %eax	# bit_num_, bit_num_.86
	movl	$1, %edx	#, tmp111
	movl	%eax, %ecx	# bit_num_.86, tmp133
	salq	%cl, %rdx	# tmp133, tmp112
	movq	%rdx, %rax	# tmp112, tmp112
	movq	%rax, -8(%rbp)	# tmp112, _mask
	movq	-8(%rbp), %rax	# _mask, tmp113
	movq	-24(%rbp), %rdx	# word_, tmp114
	andq	%rdx, %rax	# tmp114, D.13127
	testq	%rax, %rax	# D.13127
	je	.L188	#,
	.loc 1 1270 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp115
	notq	%rax	# D.13127
	andq	%rax, -24(%rbp)	# D.13127, word_
	movl	-40(%rbp), %eax	# word_num_, tmp116
	sall	$6, %eax	#, D.13126
	movl	%eax, %edx	# D.13126, D.13126
	movl	-36(%rbp), %eax	# bit_num_, tmp117
	addl	%edx, %eax	# D.13126, D.13126
	movl	%eax, -28(%rbp)	# D.13126, p
	movl	-28(%rbp), %eax	# p, p.87
	shrl	$6, %eax	#, D.13126
	movl	%eax, %edx	# D.13126, D.13126
	movq	-64(%rbp), %rax	# visited, tmp118
	movl	%edx, %edx	# D.13126, tmp119
	addq	$2, %rdx	#, tmp120
	movq	(%rax,%rdx,8), %rdx	# visited_9(D)->elms, D.13127
	movl	-28(%rbp), %eax	# p, tmp121
	andl	$63, %eax	#, D.13128
	movl	%eax, %ecx	# D.13128, tmp137
	shrq	%cl, %rdx	# tmp137, D.13127
	movq	%rdx, %rax	# D.13127, D.13127
	andl	$1, %eax	#, D.13127
	testq	%rax, %rax	# D.13127
	jne	.L189	#,
	movq	-80(%rbp), %rcx	# nodes, tmp122
	movq	-72(%rbp), %rdx	# pred, tmp123
	movq	-64(%rbp), %rsi	# visited, tmp124
	movl	-28(%rbp), %eax	# p, tmp125
	movl	%eax, %edi	# tmp125,
	call	ephi_backward	#
	movl	-52(%rbp), %eax	# t, tmp126
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13127
	movq	-80(%rbp), %rax	# nodes, tmp127
	addq	%rdx, %rax	# D.13127, D.13132
	movq	(%rax), %rdx	# *_48, D.13133
	movl	-28(%rbp), %eax	# p, tmp128
	cltq
	leaq	0(,%rax,8), %rcx	#, D.13127
	movq	-80(%rbp), %rax	# nodes, tmp129
	addq	%rcx, %rax	# D.13127, D.13132
	movq	(%rax), %rax	# *_52, D.13133
	movq	%rdx, %rsi	# D.13133,
	movq	%rax, %rdi	# D.13133,
	call	emit_move_insn	#
.L189:
	.loc 1 1270 0 discriminator 2
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L188	#,
	.loc 1 1270 0 discriminator 1
	jmp	.L186	#
.L188:
.LBE33:
	.loc 1 1270 0 discriminator 2
	addl	$1, -36(%rbp)	#, bit_num_
.L187:
	.loc 1 1270 0 discriminator 1
	cmpl	$63, -36(%rbp)	#, bit_num_
	jbe	.L190	#,
.L186:
.LBE32:
	.loc 1 1270 0 discriminator 2
	addl	$1, -40(%rbp)	#, word_num_
	movl	$0, -36(%rbp)	#, bit_num_
.L185:
	.loc 1 1270 0 discriminator 1
	movl	-40(%rbp), %eax	# word_num_, tmp130
	cmpl	-32(%rbp), %eax	# size_, tmp130
	jb	.L191	#,
.LBE31:
	.loc 1 1278 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ephi_backward, .-ephi_backward
	.type	ephi_create, @function
ephi_create:
.LFB33:
	.loc 1 1288 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movl	%edi, -132(%rbp)	# t, t
	movq	%rsi, -144(%rbp)	# visited, visited
	movq	%rdx, -152(%rbp)	# pred, pred
	movq	%rcx, -160(%rbp)	# succ, succ
	movq	%r8, -168(%rbp)	# nodes, nodes
	.loc 1 1289 0
	movq	$0, -80(%rbp)	#, reg_u
	.loc 1 1290 0
	movl	$0, -128(%rbp)	#, unvisited_predecessors
.LBB34:
	.loc 1 1298 0
	movl	$0, -120(%rbp)	#, bit_num_
	movl	-132(%rbp), %eax	# t, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-152(%rbp), %rax	# pred, tmp151
	addq	%rdx, %rax	# D.13134, D.13135
	movq	(%rax), %rax	# *_32, D.13136
	movl	4(%rax), %eax	# _33->size, tmp152
	movl	%eax, -100(%rbp)	# tmp152, size_
	movl	-132(%rbp), %eax	# t, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-152(%rbp), %rax	# pred, tmp154
	addq	%rdx, %rax	# D.13134, D.13135
	movq	(%rax), %rax	# *_37, D.13136
	addq	$16, %rax	#, tmp155
	movq	%rax, -56(%rbp)	# tmp155, ptr_
	movl	$0, -124(%rbp)	#, word_num_
	jmp	.L193	#
.L200:
.LBB35:
	.loc 1 1298 0 is_stmt 0 discriminator 2
	movl	-124(%rbp), %eax	# word_num_, D.13134
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-56(%rbp), %rax	# ptr_, tmp156
	addq	%rdx, %rax	# D.13134, D.13137
	movq	(%rax), %rax	# *_43, tmp157
	movq	%rax, -72(%rbp)	# tmp157, word_
	cmpq	$0, -72(%rbp)	#, word_
	je	.L194	#,
	.loc 1 1298 0 discriminator 1
	jmp	.L195	#
.L199:
.LBB36:
	.loc 1 1298 0 discriminator 2
	movl	-120(%rbp), %eax	# bit_num_, bit_num_.88
	movl	$1, %edx	#, tmp158
	movl	%eax, %ecx	# bit_num_.88, tmp235
	salq	%cl, %rdx	# tmp235, tmp159
	movq	%rdx, %rax	# tmp159, tmp159
	movq	%rax, -48(%rbp)	# tmp159, _mask
	movq	-48(%rbp), %rax	# _mask, tmp160
	movq	-72(%rbp), %rdx	# word_, tmp161
	andq	%rdx, %rax	# tmp161, D.13134
	testq	%rax, %rax	# D.13134
	je	.L196	#,
	.loc 1 1298 0 discriminator 1
	movq	-48(%rbp), %rax	# _mask, tmp162
	notq	%rax	# D.13134
	andq	%rax, -72(%rbp)	# D.13134, word_
	movl	-124(%rbp), %eax	# word_num_, tmp163
	sall	$6, %eax	#, D.13138
	movl	%eax, %edx	# D.13138, D.13138
	movl	-120(%rbp), %eax	# bit_num_, tmp164
	addl	%edx, %eax	# D.13138, D.13138
	movl	%eax, -96(%rbp)	# D.13138, p
	movl	-96(%rbp), %eax	# p, p.89
	shrl	$6, %eax	#, D.13138
	movl	%eax, %edx	# D.13138, D.13138
	movq	-144(%rbp), %rax	# visited, tmp165
	movl	%edx, %edx	# D.13138, tmp166
	addq	$2, %rdx	#, tmp167
	movq	(%rax,%rdx,8), %rdx	# visited_55(D)->elms, D.13134
	movl	-96(%rbp), %eax	# p, tmp168
	andl	$63, %eax	#, D.13139
	movl	%eax, %ecx	# D.13139, tmp239
	shrq	%cl, %rdx	# tmp239, D.13134
	movq	%rdx, %rax	# D.13134, D.13134
	andl	$1, %eax	#, D.13134
	testq	%rax, %rax	# D.13134
	jne	.L197	#,
	movl	$1, -128(%rbp)	#, unvisited_predecessors
	jmp	.L198	#
.L197:
	.loc 1 1298 0 discriminator 2
	cmpq	$0, -80(%rbp)	#, reg_u
	jne	.L198	#,
	.loc 1 1298 0 discriminator 1
	movl	-96(%rbp), %eax	# p, tmp169
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-168(%rbp), %rax	# nodes, tmp170
	addq	%rdx, %rax	# D.13134, D.13140
	movq	(%rax), %rax	# *_64, tmp171
	movq	%rax, -80(%rbp)	# tmp171, reg_u
.L198:
	.loc 1 1298 0 discriminator 2
	cmpq	$0, -72(%rbp)	#, word_
	jne	.L196	#,
	.loc 1 1298 0 discriminator 1
	jmp	.L194	#
.L196:
.LBE36:
	.loc 1 1298 0 discriminator 2
	addl	$1, -120(%rbp)	#, bit_num_
.L195:
	.loc 1 1298 0 discriminator 1
	cmpl	$63, -120(%rbp)	#, bit_num_
	jbe	.L199	#,
.L194:
.LBE35:
	.loc 1 1298 0 discriminator 2
	addl	$1, -124(%rbp)	#, word_num_
	movl	$0, -120(%rbp)	#, bit_num_
.L193:
	.loc 1 1298 0 discriminator 1
	movl	-124(%rbp), %eax	# word_num_, tmp172
	cmpl	-100(%rbp), %eax	# size_, tmp172
	jb	.L200	#,
.LBE34:
	.loc 1 1306 0 is_stmt 1
	cmpl	$0, -128(%rbp)	#, unvisited_predecessors
	je	.L201	#,
	.loc 1 1311 0
	cmpq	$0, -80(%rbp)	#, reg_u
	jne	.L202	#,
	.loc 1 1313 0
	movl	-132(%rbp), %eax	# t, tmp173
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-168(%rbp), %rax	# nodes, tmp174
	addq	%rdx, %rax	# D.13134, D.13140
	movq	(%rax), %rax	# *_71, D.13141
	movzbl	2(%rax), %eax	# _72->mode, D.13142
	movzbl	%al, %eax	# D.13142, D.13143
	movl	%eax, %edi	# D.13143,
	call	gen_reg_rtx	#
	movq	%rax, -80(%rbp)	# tmp175, reg_u
	.loc 1 1314 0
	movl	-132(%rbp), %eax	# t, tmp176
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-168(%rbp), %rax	# nodes, tmp177
	addq	%rdx, %rax	# D.13134, D.13140
	movq	(%rax), %rdx	# *_78, D.13141
	movq	-80(%rbp), %rax	# reg_u, tmp178
	movq	%rdx, %rsi	# D.13141,
	movq	%rax, %rdi	# tmp178,
	call	emit_move_insn	#
.L202:
.LBB37:
	.loc 1 1317 0
	movl	$0, -112(%rbp)	#, bit_num_
	movl	-132(%rbp), %eax	# t, tmp179
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-152(%rbp), %rax	# pred, tmp180
	addq	%rdx, %rax	# D.13134, D.13135
	movq	(%rax), %rax	# *_83, D.13136
	movl	4(%rax), %eax	# _84->size, tmp181
	movl	%eax, -92(%rbp)	# tmp181, size_
	movl	-132(%rbp), %eax	# t, tmp182
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-152(%rbp), %rax	# pred, tmp183
	addq	%rdx, %rax	# D.13134, D.13135
	movq	(%rax), %rax	# *_88, D.13136
	addq	$16, %rax	#, tmp184
	movq	%rax, -40(%rbp)	# tmp184, ptr_
	movl	$0, -116(%rbp)	#, word_num_
	jmp	.L203	#
.L209:
.LBB38:
	.loc 1 1317 0 is_stmt 0 discriminator 2
	movl	-116(%rbp), %eax	# word_num_, D.13134
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-40(%rbp), %rax	# ptr_, tmp185
	addq	%rdx, %rax	# D.13134, D.13137
	movq	(%rax), %rax	# *_94, tmp186
	movq	%rax, -64(%rbp)	# tmp186, word_
	cmpq	$0, -64(%rbp)	#, word_
	je	.L204	#,
	.loc 1 1317 0 discriminator 1
	jmp	.L205	#
.L208:
.LBB39:
	.loc 1 1317 0 discriminator 2
	movl	-112(%rbp), %eax	# bit_num_, bit_num_.90
	movl	$1, %edx	#, tmp187
	movl	%eax, %ecx	# bit_num_.90, tmp241
	salq	%cl, %rdx	# tmp241, tmp188
	movq	%rdx, %rax	# tmp188, tmp188
	movq	%rax, -32(%rbp)	# tmp188, _mask
	movq	-32(%rbp), %rax	# _mask, tmp189
	movq	-64(%rbp), %rdx	# word_, tmp190
	andq	%rdx, %rax	# tmp190, D.13134
	testq	%rax, %rax	# D.13134
	je	.L206	#,
	.loc 1 1317 0 discriminator 1
	movq	-32(%rbp), %rax	# _mask, tmp191
	notq	%rax	# D.13134
	andq	%rax, -64(%rbp)	# D.13134, word_
	movl	-116(%rbp), %eax	# word_num_, tmp192
	sall	$6, %eax	#, D.13138
	movl	%eax, %edx	# D.13138, D.13138
	movl	-112(%rbp), %eax	# bit_num_, tmp193
	addl	%edx, %eax	# D.13138, D.13138
	movl	%eax, -96(%rbp)	# D.13138, p
	movl	-96(%rbp), %eax	# p, p.91
	shrl	$6, %eax	#, D.13138
	movl	%eax, %edx	# D.13138, D.13138
	movq	-144(%rbp), %rax	# visited, tmp194
	movl	%edx, %edx	# D.13138, tmp195
	addq	$2, %rdx	#, tmp196
	movq	(%rax,%rdx,8), %rdx	# visited_55(D)->elms, D.13134
	movl	-96(%rbp), %eax	# p, tmp197
	andl	$63, %eax	#, D.13139
	movl	%eax, %ecx	# D.13139, tmp245
	shrq	%cl, %rdx	# tmp245, D.13134
	movq	%rdx, %rax	# D.13134, D.13134
	andl	$1, %eax	#, D.13134
	testq	%rax, %rax	# D.13134
	jne	.L207	#,
	movq	-168(%rbp), %rcx	# nodes, tmp198
	movq	-152(%rbp), %rdx	# pred, tmp199
	movq	-144(%rbp), %rsi	# visited, tmp200
	movl	-96(%rbp), %eax	# p, tmp201
	movl	%eax, %edi	# tmp201,
	call	ephi_backward	#
	movl	-96(%rbp), %eax	# p, tmp202
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-168(%rbp), %rax	# nodes, tmp203
	addq	%rdx, %rax	# D.13134, D.13140
	movq	(%rax), %rax	# *_112, D.13141
	movq	-80(%rbp), %rdx	# reg_u, tmp204
	movq	%rdx, %rsi	# tmp204,
	movq	%rax, %rdi	# D.13141,
	call	emit_move_insn	#
.L207:
	.loc 1 1317 0 discriminator 2
	cmpq	$0, -64(%rbp)	#, word_
	jne	.L206	#,
	.loc 1 1317 0 discriminator 1
	jmp	.L204	#
.L206:
.LBE39:
	.loc 1 1317 0 discriminator 2
	addl	$1, -112(%rbp)	#, bit_num_
.L205:
	.loc 1 1317 0 discriminator 1
	cmpl	$63, -112(%rbp)	#, bit_num_
	jbe	.L208	#,
.L204:
.LBE38:
	.loc 1 1317 0 discriminator 2
	addl	$1, -116(%rbp)	#, word_num_
	movl	$0, -112(%rbp)	#, bit_num_
.L203:
	.loc 1 1317 0 discriminator 1
	movl	-116(%rbp), %eax	# word_num_, tmp205
	cmpl	-92(%rbp), %eax	# size_, tmp205
	jb	.L209	#,
.LBE37:
	jmp	.L192	#
.L201:
.LBB40:
.LBB41:
	.loc 1 1331 0 is_stmt 1
	movl	$0, -104(%rbp)	#, bit_num_
	movl	-132(%rbp), %eax	# t, tmp206
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-160(%rbp), %rax	# succ, tmp207
	addq	%rdx, %rax	# D.13134, D.13135
	movq	(%rax), %rax	# *_121, D.13136
	movl	4(%rax), %eax	# _122->size, tmp208
	movl	%eax, -88(%rbp)	# tmp208, size_
	movl	-132(%rbp), %eax	# t, tmp209
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-160(%rbp), %rax	# succ, tmp210
	addq	%rdx, %rax	# D.13134, D.13135
	movq	(%rax), %rax	# *_126, D.13136
	addq	$16, %rax	#, tmp211
	movq	%rax, -24(%rbp)	# tmp211, ptr_
	movl	$0, -108(%rbp)	#, word_num_
	jmp	.L211	#
.L216:
.LBB42:
	.loc 1 1331 0 is_stmt 0 discriminator 2
	movl	-108(%rbp), %eax	# word_num_, D.13134
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-24(%rbp), %rax	# ptr_, tmp212
	addq	%rdx, %rax	# D.13134, D.13137
	movq	(%rax), %rax	# *_132, tmp213
	movq	%rax, -16(%rbp)	# tmp213, word_
	cmpq	$0, -16(%rbp)	#, word_
	je	.L212	#,
	.loc 1 1331 0 discriminator 1
	jmp	.L213	#
.L215:
.LBB43:
	.loc 1 1331 0 discriminator 2
	movl	-104(%rbp), %eax	# bit_num_, bit_num_.92
	movl	$1, %edx	#, tmp214
	movl	%eax, %ecx	# bit_num_.92, tmp247
	salq	%cl, %rdx	# tmp247, tmp215
	movq	%rdx, %rax	# tmp215, tmp215
	movq	%rax, -8(%rbp)	# tmp215, _mask
	movq	-8(%rbp), %rax	# _mask, tmp216
	movq	-16(%rbp), %rdx	# word_, tmp217
	andq	%rdx, %rax	# tmp217, D.13134
	testq	%rax, %rax	# D.13134
	je	.L214	#,
	.loc 1 1331 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp218
	notq	%rax	# D.13134
	andq	%rax, -16(%rbp)	# D.13134, word_
	movl	-108(%rbp), %eax	# word_num_, tmp219
	sall	$6, %eax	#, D.13138
	movl	%eax, %edx	# D.13138, D.13138
	movl	-104(%rbp), %eax	# bit_num_, tmp220
	addl	%edx, %eax	# D.13138, D.13138
	movl	%eax, -84(%rbp)	# D.13138, s
	movl	-132(%rbp), %eax	# t, t.93
	shrl	$6, %eax	#, D.13138
	movq	-144(%rbp), %rdx	# visited, tmp221
	movl	%eax, %ecx	# D.13138, tmp222
	addq	$2, %rcx	#, tmp223
	movq	(%rdx,%rcx,8), %rdx	# visited_55(D)->elms, D.13134
	movl	-132(%rbp), %ecx	# t, tmp224
	andl	$63, %ecx	#, D.13139
	movl	$1, %esi	#, tmp225
	salq	%cl, %rsi	# D.13139, D.13134
	movq	%rsi, %rcx	# D.13134, D.13134
	orq	%rdx, %rcx	# D.13134, D.13134
	movq	-144(%rbp), %rdx	# visited, tmp226
	movl	%eax, %eax	# D.13138, tmp227
	addq	$2, %rax	#, tmp228
	movq	%rcx, (%rdx,%rax,8)	# D.13134, visited_55(D)->elms
	movl	-84(%rbp), %eax	# s, tmp229
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13134
	movq	-168(%rbp), %rax	# nodes, tmp230
	addq	%rdx, %rax	# D.13134, D.13140
	movq	(%rax), %rdx	# *_150, D.13141
	movl	-132(%rbp), %eax	# t, tmp231
	cltq
	leaq	0(,%rax,8), %rcx	#, D.13134
	movq	-168(%rbp), %rax	# nodes, tmp232
	addq	%rcx, %rax	# D.13134, D.13140
	movq	(%rax), %rax	# *_154, D.13141
	movq	%rdx, %rsi	# D.13141,
	movq	%rax, %rdi	# D.13141,
	call	emit_move_insn	#
	jmp	.L192	#
.L214:
.LBE43:
	.loc 1 1331 0 discriminator 2
	addl	$1, -104(%rbp)	#, bit_num_
.L213:
	.loc 1 1331 0 discriminator 1
	cmpl	$63, -104(%rbp)	#, bit_num_
	jbe	.L215	#,
.L212:
.LBE42:
	.loc 1 1331 0 discriminator 2
	addl	$1, -108(%rbp)	#, word_num_
	movl	$0, -104(%rbp)	#, bit_num_
.L211:
	.loc 1 1331 0 discriminator 1
	movl	-108(%rbp), %eax	# word_num_, tmp233
	cmpl	-88(%rbp), %eax	# size_, tmp233
	jb	.L216	#,
.L192:
.LBE41:
.LBE40:
	.loc 1 1338 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ephi_create, .-ephi_create
	.section	.rodata
	.align 8
.LC11:
	.string	"Emitting copy on edge (%d,%d)\n"
	.text
	.type	eliminate_phi, @function
eliminate_phi:
.LFB34:
	.loc 1 1346 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# e, e
	movq	%rsi, -128(%rbp)	# reg_partition, reg_partition
	.loc 1 1357 0
	movq	-120(%rbp), %rax	# e, tmp166
	movq	24(%rax), %rax	# e_7(D)->dest, D.13144
	movq	%rax, %rdi	# D.13144,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -88(%rbp)	# tmp167, insn
	.loc 1 1359 0
	movl	$0, -112(%rbp)	#, n_nodes
	.loc 1 1360 0
	jmp	.L218	#
.L220:
	.loc 1 1362 0
	movq	-88(%rbp), %rax	# insn, tmp168
	movq	%rax, %rdi	# tmp168,
	call	next_nonnote_insn	#
	movq	%rax, -88(%rbp)	# tmp169, insn
	.loc 1 1363 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.94
	addl	$2, %eax	#, n_nodes.95
	movl	%eax, -112(%rbp)	# n_nodes.95, n_nodes
.L218:
	.loc 1 1360 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	je	.L219	#,
	.loc 1 1360 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp170
	movzwl	(%rax), %eax	# insn_4->code, D.13145
	cmpw	$32, %ax	#, D.13145
	jne	.L219	#,
	.loc 1 1360 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp171
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.13146
	movzwl	(%rax), %eax	# _11->code, D.13145
	cmpw	$47, %ax	#, D.13145
	jne	.L219	#,
	movq	-88(%rbp), %rax	# insn, tmp172
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.13146
	movq	16(%rax), %rax	# _13->fld[1].rtx, D.13146
	movzwl	(%rax), %eax	# _14->code, D.13145
	cmpw	$152, %ax	#, D.13145
	je	.L220	#,
.L219:
	.loc 1 1366 0 is_stmt 1
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.96
	testl	%eax, %eax	# n_nodes.96
	je	.L217	#,
	.loc 1 1375 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.97
	cltq
	salq	$3, %rax	#, D.13147
	leaq	15(%rax), %rdx	#, tmp173
	movl	$16, %eax	#, tmp291
	subq	$1, %rax	#, tmp174
	addq	%rdx, %rax	# tmp173, tmp175
	movl	$16, %ebx	#, tmp292
	movl	$0, %edx	#, tmp178
	divq	%rbx	# tmp292
	imulq	$16, %rax, %rax	#, tmp177, tmp179
	subq	%rax, %rsp	# tmp179,
	movq	%rsp, %rax	#, tmp180
	addq	$15, %rax	#, tmp181
	shrq	$4, %rax	#, tmp182
	salq	$4, %rax	#, tmp183
	movq	%rax, -80(%rbp)	# tmp183, nodes
	.loc 1 1376 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.98
	movl	%eax, %edx	# n_nodes.98, n_nodes.99
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.100
	movl	%edx, %esi	# n_nodes.99,
	movl	%eax, %edi	# n_nodes.101,
	call	sbitmap_vector_alloc	#
	movq	%rax, -72(%rbp)	# tmp184, pred
	.loc 1 1377 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.102
	movl	%eax, %edx	# n_nodes.102, n_nodes.103
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.104
	movl	%edx, %esi	# n_nodes.103,
	movl	%eax, %edi	# n_nodes.105,
	call	sbitmap_vector_alloc	#
	movq	%rax, -64(%rbp)	# tmp185, succ
	.loc 1 1378 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.106
	movl	%eax, %edx	# n_nodes.106, n_nodes.107
	movq	-72(%rbp), %rax	# pred, tmp186
	movl	%edx, %esi	# n_nodes.107,
	movq	%rax, %rdi	# tmp186,
	call	sbitmap_vector_zero	#
	.loc 1 1379 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.108
	movl	%eax, %edx	# n_nodes.108, n_nodes.109
	movq	-64(%rbp), %rax	# succ, tmp187
	movl	%edx, %esi	# n_nodes.109,
	movq	%rax, %rdi	# tmp187,
	call	sbitmap_vector_zero	#
	.loc 1 1381 0
	movq	-120(%rbp), %rax	# e, tmp188
	movq	24(%rax), %rax	# e_7(D)->dest, D.13144
	movq	%rax, %rdi	# D.13144,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -88(%rbp)	# tmp189, insn
	.loc 1 1383 0
	movl	$0, -112(%rbp)	#, n_nodes
	.loc 1 1384 0
	jmp	.L223	#
.L229:
.LBB44:
	.loc 1 1386 0
	movq	-120(%rbp), %rax	# e, tmp190
	movq	16(%rax), %rax	# e_7(D)->src, D.13144
	movl	88(%rax), %edx	# _46->index, D.13148
	movq	-88(%rbp), %rax	# insn, tmp191
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.13146
	movl	%edx, %esi	# D.13148,
	movq	%rax, %rdi	# D.13146,
	call	phi_alternative	#
	movq	%rax, -56(%rbp)	# tmp192, preg
	.loc 1 1387 0
	movq	-88(%rbp), %rax	# insn, tmp193
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.13146
	movq	8(%rax), %rax	# _50->fld[0].rtx, tmp194
	movq	%rax, -48(%rbp)	# tmp194, tgt
	.loc 1 1393 0
	cmpq	$0, -56(%rbp)	#, preg
	jne	.L224	#,
	.loc 1 1394 0
	jmp	.L225	#
.L224:
	.loc 1 1395 0
	movq	-56(%rbp), %rax	# preg, tmp195
	movq	(%rax), %rax	# *preg_49, tmp196
	movq	%rax, -40(%rbp)	# tmp196, reg
	.loc 1 1397 0
	movq	-40(%rbp), %rax	# reg, tmp197
	movzwl	(%rax), %eax	# reg_52->code, D.13145
	cmpw	$61, %ax	#, D.13145
	jne	.L226	#,
	.loc 1 1397 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# tgt, tmp198
	movzwl	(%rax), %eax	# tgt_51->code, D.13145
	cmpw	$61, %ax	#, D.13145
	je	.L227	#,
.L226:
	.loc 1 1398 0 is_stmt 1
	movl	$__FUNCTION__.11234, %edx	#,
	movl	$1398, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L227:
	.loc 1 1400 0
	movq	cfun(%rip), %rax	# cfun, cfun.110
	movq	24(%rax), %rax	# cfun.110_55->emit, D.13149
	movq	80(%rax), %rcx	# _56->x_regno_reg_rtx, D.13150
	movq	-40(%rbp), %rax	# reg, tmp199
	movl	8(%rax), %eax	# reg_52->fld[0].rtuint, D.13151
	movq	-128(%rbp), %rsi	# reg_partition, tmp200
	movl	%eax, %edx	# D.13151, tmp201
	movq	%rdx, %rax	# tmp201, tmp202
	addq	%rax, %rax	# tmp202
	addq	%rdx, %rax	# tmp201, tmp202
	salq	$3, %rax	#, tmp203
	addq	%rsi, %rax	# tmp200, tmp204
	movl	8(%rax), %eax	# reg_partition_59(D)->elements[_58].class_element, D.13148
	cltq
	salq	$3, %rax	#, D.13147
	addq	%rcx, %rax	# D.13150, D.13150
	movq	(%rax), %rax	# *_63, tmp205
	movq	%rax, -40(%rbp)	# tmp205, reg
	.loc 1 1401 0
	movq	cfun(%rip), %rax	# cfun, cfun.111
	movq	24(%rax), %rax	# cfun.111_65->emit, D.13149
	movq	80(%rax), %rcx	# _66->x_regno_reg_rtx, D.13150
	movq	-48(%rbp), %rax	# tgt, tmp206
	movl	8(%rax), %eax	# tgt_51->fld[0].rtuint, D.13151
	movq	-128(%rbp), %rsi	# reg_partition, tmp207
	movl	%eax, %edx	# D.13151, tmp208
	movq	%rdx, %rax	# tmp208, tmp209
	addq	%rax, %rax	# tmp209
	addq	%rdx, %rax	# tmp208, tmp209
	salq	$3, %rax	#, tmp210
	addq	%rsi, %rax	# tmp207, tmp211
	movl	8(%rax), %eax	# reg_partition_59(D)->elements[_68].class_element, D.13148
	cltq
	salq	$3, %rax	#, D.13147
	addq	%rcx, %rax	# D.13150, D.13150
	movq	(%rax), %rax	# *_72, tmp212
	movq	%rax, -48(%rbp)	# tmp212, tgt
	.loc 1 1404 0
	movq	-40(%rbp), %rax	# reg, tmp213
	cmpq	-48(%rbp), %rax	# tgt, tmp213
	je	.L225	#,
.LBB45:
	.loc 1 1408 0
	leaq	-112(%rbp), %rdx	#, tmp214
	movq	-80(%rbp), %rcx	# nodes, tmp215
	movq	-40(%rbp), %rax	# reg, tmp216
	movq	%rcx, %rsi	# tmp215,
	movq	%rax, %rdi	# tmp216,
	call	ephi_add_node	#
	movl	%eax, -104(%rbp)	# tmp217, ireg
	.loc 1 1409 0
	leaq	-112(%rbp), %rdx	#, tmp218
	movq	-80(%rbp), %rcx	# nodes, tmp219
	movq	-48(%rbp), %rax	# tgt, tmp220
	movq	%rcx, %rsi	# tmp219,
	movq	%rax, %rdi	# tmp220,
	call	ephi_add_node	#
	movl	%eax, -100(%rbp)	# tmp221, itgt
	.loc 1 1411 0
	movl	-104(%rbp), %eax	# ireg, tmp222
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13147
	movq	-72(%rbp), %rax	# pred, tmp223
	addq	%rdx, %rax	# D.13147, D.13152
	movq	(%rax), %rdx	# *_78, D.13153
	movl	-100(%rbp), %eax	# itgt, itgt.112
	shrl	$6, %eax	#, D.13151
	movl	-104(%rbp), %ecx	# ireg, tmp224
	movslq	%ecx, %rcx	# tmp224, D.13147
	leaq	0(,%rcx,8), %rsi	#, D.13147
	movq	-72(%rbp), %rcx	# pred, tmp225
	addq	%rsi, %rcx	# D.13147, D.13152
	movq	(%rcx), %rcx	# *_84, D.13153
	movl	%eax, %esi	# D.13151, tmp226
	addq	$2, %rsi	#, tmp227
	movq	(%rcx,%rsi,8), %rsi	# _85->elms, D.13147
	movl	-100(%rbp), %ecx	# itgt, tmp228
	andl	$63, %ecx	#, D.13148
	movl	$1, %edi	#, tmp229
	salq	%cl, %rdi	# D.13148, D.13147
	movq	%rdi, %rcx	# D.13147, D.13147
	orq	%rsi, %rcx	# D.13147, D.13147
	movl	%eax, %eax	# D.13151, tmp230
	addq	$2, %rax	#, tmp231
	movq	%rcx, (%rdx,%rax,8)	# D.13147, _79->elms
	.loc 1 1412 0
	movl	-100(%rbp), %eax	# itgt, tmp232
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13147
	movq	-64(%rbp), %rax	# succ, tmp233
	addq	%rdx, %rax	# D.13147, D.13152
	movq	(%rax), %rdx	# *_92, D.13153
	movl	-104(%rbp), %eax	# ireg, ireg.113
	shrl	$6, %eax	#, D.13151
	movl	-100(%rbp), %ecx	# itgt, tmp234
	movslq	%ecx, %rcx	# tmp234, D.13147
	leaq	0(,%rcx,8), %rsi	#, D.13147
	movq	-64(%rbp), %rcx	# succ, tmp235
	addq	%rsi, %rcx	# D.13147, D.13152
	movq	(%rcx), %rcx	# *_98, D.13153
	movl	%eax, %esi	# D.13151, tmp236
	addq	$2, %rsi	#, tmp237
	movq	(%rcx,%rsi,8), %rsi	# _99->elms, D.13147
	movl	-104(%rbp), %ecx	# ireg, tmp238
	andl	$63, %ecx	#, D.13148
	movl	$1, %edi	#, tmp239
	salq	%cl, %rdi	# D.13148, D.13147
	movq	%rdi, %rcx	# D.13147, D.13147
	orq	%rsi, %rcx	# D.13147, D.13147
	movl	%eax, %eax	# D.13151, tmp240
	addq	$2, %rax	#, tmp241
	movq	%rcx, (%rdx,%rax,8)	# D.13147, _93->elms
.L225:
.LBE45:
.LBE44:
	.loc 1 1384 0
	movq	-88(%rbp), %rax	# insn, tmp242
	movq	%rax, %rdi	# tmp242,
	call	next_nonnote_insn	#
	movq	%rax, -88(%rbp)	# tmp243, insn
.L223:
	.loc 1 1384 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	je	.L228	#,
	.loc 1 1384 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp244
	movzwl	(%rax), %eax	# insn_5->code, D.13145
	cmpw	$32, %ax	#, D.13145
	jne	.L228	#,
	.loc 1 1384 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp245
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.13146
	movzwl	(%rax), %eax	# _41->code, D.13145
	cmpw	$47, %ax	#, D.13145
	jne	.L228	#,
	movq	-88(%rbp), %rax	# insn, tmp246
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.13146
	movq	16(%rax), %rax	# _43->fld[1].rtx, D.13146
	movzwl	(%rax), %eax	# _44->code, D.13145
	cmpw	$152, %ax	#, D.13145
	je	.L229	#,
.L228:
	.loc 1 1416 0 is_stmt 1
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.114
	testl	%eax, %eax	# n_nodes.114
	jne	.L230	#,
	.loc 1 1417 0
	jmp	.L231	#
.L230:
	.loc 1 1421 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.115
	movl	%eax, %edi	# n_nodes.116,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp247, visited
	.loc 1 1422 0
	movq	-32(%rbp), %rax	# visited, tmp248
	movq	%rax, %rdi	# tmp248,
	call	sbitmap_zero	#
	.loc 1 1424 0
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.117
	cltq
	salq	$2, %rax	#, D.13147
	leaq	15(%rax), %rdx	#, tmp249
	movl	$16, %eax	#, tmp293
	subq	$1, %rax	#, tmp250
	addq	%rdx, %rax	# tmp249, tmp251
	movl	$16, %ebx	#, tmp294
	movl	$0, %edx	#, tmp254
	divq	%rbx	# tmp294
	imulq	$16, %rax, %rax	#, tmp253, tmp255
	subq	%rax, %rsp	# tmp255,
	movq	%rsp, %rax	#, tmp256
	addq	$15, %rax	#, tmp257
	shrq	$4, %rax	#, tmp258
	salq	$4, %rax	#, tmp259
	movq	%rax, -24(%rbp)	# tmp259, stack
	movq	-24(%rbp), %rax	# stack, tmp260
	movq	%rax, -96(%rbp)	# tmp260, tstack
	.loc 1 1426 0
	movl	$0, -108(%rbp)	#, i
	jmp	.L232	#
.L234:
	.loc 1 1427 0
	movl	-108(%rbp), %eax	# i, i.118
	shrl	$6, %eax	#, D.13151
	movl	%eax, %edx	# D.13151, D.13151
	movq	-32(%rbp), %rax	# visited, tmp261
	movl	%edx, %edx	# D.13151, tmp262
	addq	$2, %rdx	#, tmp263
	movq	(%rax,%rdx,8), %rdx	# visited_108->elms, D.13147
	movl	-108(%rbp), %eax	# i, tmp264
	andl	$63, %eax	#, D.13148
	movl	%eax, %ecx	# D.13148, tmp301
	shrq	%cl, %rdx	# tmp301, D.13147
	movq	%rdx, %rax	# D.13147, D.13147
	andl	$1, %eax	#, D.13147
	testq	%rax, %rax	# D.13147
	jne	.L233	#,
	.loc 1 1428 0
	movq	-96(%rbp), %rcx	# tstack, tmp265
	movq	-64(%rbp), %rdx	# succ, tmp266
	movq	-32(%rbp), %rsi	# visited, tmp267
	movl	-108(%rbp), %eax	# i, tmp268
	movl	%eax, %edi	# tmp268,
	call	ephi_forward	#
	movq	%rax, -96(%rbp)	# tmp269, tstack
.L233:
	.loc 1 1426 0
	addl	$1, -108(%rbp)	#, i
.L232:
	.loc 1 1426 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# n_nodes, n_nodes.119
	cmpl	%eax, -108(%rbp)	# n_nodes.119, i
	jl	.L234	#,
	.loc 1 1430 0 is_stmt 1
	movq	-32(%rbp), %rax	# visited, tmp270
	movq	%rax, %rdi	# tmp270,
	call	sbitmap_zero	#
	.loc 1 1434 0
	call	start_sequence	#
	.loc 1 1436 0
	jmp	.L235	#
.L236:
	.loc 1 1438 0
	subq	$4, -96(%rbp)	#, tstack
	movq	-96(%rbp), %rax	# tstack, tmp271
	movl	(%rax), %eax	# *tstack_124, tmp272
	movl	%eax, -108(%rbp)	# tmp272, i
	.loc 1 1439 0
	movl	-108(%rbp), %eax	# i, i.120
	shrl	$6, %eax	#, D.13151
	movl	%eax, %edx	# D.13151, D.13151
	movq	-32(%rbp), %rax	# visited, tmp273
	movl	%edx, %edx	# D.13151, tmp274
	addq	$2, %rdx	#, tmp275
	movq	(%rax,%rdx,8), %rdx	# visited_108->elms, D.13147
	movl	-108(%rbp), %eax	# i, tmp276
	andl	$63, %eax	#, D.13148
	movl	%eax, %ecx	# D.13148, tmp304
	shrq	%cl, %rdx	# tmp304, D.13147
	movq	%rdx, %rax	# D.13147, D.13147
	andl	$1, %eax	#, D.13147
	testq	%rax, %rax	# D.13147
	jne	.L235	#,
	.loc 1 1440 0
	movq	-80(%rbp), %rdi	# nodes, tmp277
	movq	-64(%rbp), %rcx	# succ, tmp278
	movq	-72(%rbp), %rdx	# pred, tmp279
	movq	-32(%rbp), %rsi	# visited, tmp280
	movl	-108(%rbp), %eax	# i, tmp281
	movq	%rdi, %r8	# tmp277,
	movl	%eax, %edi	# tmp281,
	call	ephi_create	#
.L235:
	.loc 1 1436 0 discriminator 1
	movq	-96(%rbp), %rax	# tstack, tmp282
	cmpq	-24(%rbp), %rax	# stack, tmp282
	jne	.L236	#,
	.loc 1 1443 0
	call	gen_sequence	#
	movq	%rax, -88(%rbp)	# tmp283, insn
	.loc 1 1444 0
	call	end_sequence	#
	.loc 1 1445 0
	movq	-120(%rbp), %rdx	# e, tmp284
	movq	-88(%rbp), %rax	# insn, tmp285
	movq	%rdx, %rsi	# tmp284,
	movq	%rax, %rdi	# tmp285,
	call	insert_insn_on_edge	#
	.loc 1 1446 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.121
	testq	%rax, %rax	# rtl_dump_file.121
	je	.L237	#,
	.loc 1 1448 0
	movq	-120(%rbp), %rax	# e, tmp286
	movq	24(%rax), %rax	# e_7(D)->dest, D.13144
	.loc 1 1447 0
	movl	88(%rax), %ecx	# _134->index, D.13148
	.loc 1 1448 0
	movq	-120(%rbp), %rax	# e, tmp287
	movq	16(%rax), %rax	# e_7(D)->src, D.13144
	.loc 1 1447 0
	movl	88(%rax), %edx	# _136->index, D.13148
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.122
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.122,
	movl	$0, %eax	#,
	call	fprintf	#
.L237:
	.loc 1 1450 0
	movq	-32(%rbp), %rax	# visited, tmp288
	movq	%rax, %rdi	# tmp288,
	call	free	#
.L231:
	.loc 1 1452 0
	movq	-72(%rbp), %rax	# pred, tmp289
	movq	%rax, %rdi	# tmp289,
	call	free	#
	.loc 1 1453 0
	movq	-64(%rbp), %rax	# succ, tmp290
	movq	%rax, %rdi	# tmp290,
	call	free	#
.L217:
	.loc 1 1454 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	eliminate_phi, .-eliminate_phi
	.type	make_regs_equivalent_over_bad_edges, @function
make_regs_equivalent_over_bad_edges:
.LFB35:
	.loc 1 1475 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# bb, bb
	movq	%rsi, -80(%rbp)	# reg_partition, reg_partition
	.loc 1 1476 0
	movl	$0, -60(%rbp)	#, changed
	.loc 1 1477 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.124
	movl	-68(%rbp), %edx	# bb, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	addq	$4, %rdx	#, tmp98
	movq	(%rax,%rdx,8), %rax	# basic_block_info.124_7->data.bb, tmp99
	movq	%rax, -32(%rbp)	# tmp99, b
	.loc 1 1481 0
	movq	-32(%rbp), %rax	# b, tmp100
	movq	%rax, %rdi	# tmp100,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -48(%rbp)	# tmp101, phi
	.loc 1 1484 0
	jmp	.L239	#
.L250:
.LBB46:
	.loc 1 1490 0
	movq	-48(%rbp), %rax	# phi, tmp102
	movq	32(%rax), %rax	# phi_4->fld[3].rtx, tmp103
	movq	%rax, -24(%rbp)	# tmp103, set
	.loc 1 1491 0
	movq	-24(%rbp), %rax	# set, tmp104
	movq	8(%rax), %rax	# set_17->fld[0].rtx, tmp105
	movq	%rax, -16(%rbp)	# tmp105, tgt
	.loc 1 1494 0
	movq	-16(%rbp), %rax	# tgt, tmp106
	movzwl	(%rax), %eax	# tgt_18->code, D.13155
	cmpw	$61, %ax	#, D.13155
	jne	.L240	#,
	.loc 1 1495 0
	movq	-16(%rbp), %rax	# tgt, tmp107
	movl	8(%rax), %eax	# tgt_18->fld[0].rtuint, D.13157
	cmpl	$52, %eax	#, D.13157
	ja	.L241	#,
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tgt, tmp108
	movl	8(%rax), %eax	# tgt_18->fld[0].rtuint, D.13157
	cmpl	$17, %eax	#, D.13157
	je	.L241	#,
	movq	-16(%rbp), %rax	# tgt, tmp109
	movl	8(%rax), %eax	# tgt_18->fld[0].rtuint, D.13157
	cmpl	$16, %eax	#, D.13157
	je	.L241	#,
.L240:
	.loc 1 1496 0 is_stmt 1
	movl	$__FUNCTION__.11258, %edx	#,
	movl	$1496, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L241:
	.loc 1 1497 0
	movq	-16(%rbp), %rax	# tgt, tmp110
	movl	8(%rax), %eax	# tgt_18->fld[0].rtuint, D.13157
	movl	%eax, -56(%rbp)	# D.13157, tgt_regno
	.loc 1 1500 0
	movq	-32(%rbp), %rax	# b, tmp111
	movq	32(%rax), %rax	# b_9->pred, tmp112
	movq	%rax, -40(%rbp)	# tmp112, e
	jmp	.L242	#
.L248:
	.loc 1 1501 0
	movq	-40(%rbp), %rax	# e, tmp113
	movl	48(%rax), %eax	# e_5->flags, D.13158
	andl	$2, %eax	#, D.13158
	testl	%eax, %eax	# D.13158
	je	.L243	#,
	.loc 1 1501 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# e, tmp114
	movq	16(%rax), %rax	# e_5->src, D.13159
	movq	40(%rax), %rax	# _28->succ, D.13160
	movq	8(%rax), %rax	# _29->succ_next, D.13160
	testq	%rax, %rax	# D.13160
	je	.L243	#,
	movq	-40(%rbp), %rax	# e, tmp115
	movq	24(%rax), %rax	# e_5->dest, D.13159
	movq	32(%rax), %rax	# _31->pred, D.13160
	movq	(%rax), %rax	# _32->pred_next, D.13160
	testq	%rax, %rax	# D.13160
	je	.L243	#,
.LBB47:
	.loc 1 1503 0 is_stmt 1
	movq	-40(%rbp), %rax	# e, tmp116
	movq	16(%rax), %rax	# e_5->src, D.13159
	movl	88(%rax), %edx	# _34->index, D.13158
	movq	-24(%rbp), %rax	# set, tmp117
	movl	%edx, %esi	# D.13158,
	movq	%rax, %rdi	# tmp117,
	call	phi_alternative	#
	movq	%rax, -8(%rbp)	# tmp118, alt
	.loc 1 1508 0
	cmpq	$0, -8(%rbp)	#, alt
	jne	.L244	#,
	.loc 1 1509 0
	jmp	.L243	#
.L244:
	.loc 1 1512 0
	movq	-8(%rbp), %rax	# alt, tmp119
	movq	(%rax), %rax	# *alt_36, D.13156
	movzwl	(%rax), %eax	# _37->code, D.13155
	cmpw	$61, %ax	#, D.13155
	jne	.L245	#,
	.loc 1 1513 0
	movq	-8(%rbp), %rax	# alt, tmp120
	movq	(%rax), %rax	# *alt_36, D.13156
	movl	8(%rax), %eax	# _39->fld[0].rtuint, D.13157
	cmpl	$52, %eax	#, D.13157
	ja	.L246	#,
	.loc 1 1513 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# alt, tmp121
	movq	(%rax), %rax	# *alt_36, D.13156
	movl	8(%rax), %eax	# _41->fld[0].rtuint, D.13157
	cmpl	$17, %eax	#, D.13157
	je	.L246	#,
	movq	-8(%rbp), %rax	# alt, tmp122
	movq	(%rax), %rax	# *alt_36, D.13156
	movl	8(%rax), %eax	# _43->fld[0].rtuint, D.13157
	cmpl	$16, %eax	#, D.13157
	je	.L246	#,
.L245:
	.loc 1 1514 0 is_stmt 1
	movl	$__FUNCTION__.11258, %edx	#,
	movl	$1514, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L246:
	.loc 1 1515 0
	movq	-8(%rbp), %rax	# alt, tmp123
	movq	(%rax), %rax	# *alt_36, D.13156
	movl	8(%rax), %eax	# _45->fld[0].rtuint, D.13157
	movl	%eax, -52(%rbp)	# D.13157, alt_regno
	.loc 1 1519 0
	movq	-80(%rbp), %rcx	# reg_partition, tmp124
	movl	-56(%rbp), %eax	# tgt_regno, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	addq	%rax, %rax	# tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	addq	%rcx, %rax	# tmp124, tmp129
	movl	8(%rax), %ecx	# reg_partition_48(D)->elements[tgt_regno_24].class_element, D.13158
	.loc 1 1520 0
	movq	-80(%rbp), %rsi	# reg_partition, tmp130
	movl	-52(%rbp), %eax	# alt_regno, tmp132
	movslq	%eax, %rdx	# tmp132, tmp131
	movq	%rdx, %rax	# tmp131, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# tmp131, tmp133
	salq	$3, %rax	#, tmp134
	addq	%rsi, %rax	# tmp130, tmp135
	movl	8(%rax), %eax	# reg_partition_48(D)->elements[alt_regno_47].class_element, D.13158
	.loc 1 1519 0
	cmpl	%eax, %ecx	# D.13158, D.13158
	je	.L243	#,
	.loc 1 1523 0
	movl	-52(%rbp), %edx	# alt_regno, tmp136
	movl	-56(%rbp), %eax	# tgt_regno, tmp137
	movl	%edx, %esi	# tmp136,
	movl	%eax, %edi	# tmp137,
	call	conflicting_hard_regs_p	#
	testl	%eax, %eax	# D.13158
	je	.L247	#,
	.loc 1 1526 0
	movl	$__FUNCTION__.11258, %edx	#,
	movl	$1526, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L247:
	.loc 1 1528 0
	movl	-52(%rbp), %edx	# alt_regno, tmp138
	movl	-56(%rbp), %ecx	# tgt_regno, tmp139
	movq	-80(%rbp), %rax	# reg_partition, tmp140
	movl	%ecx, %esi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	partition_union	#
	.loc 1 1530 0
	addl	$1, -60(%rbp)	#, changed
.L243:
.LBE47:
	.loc 1 1500 0
	movq	-40(%rbp), %rax	# e, tmp141
	movq	(%rax), %rax	# e_5->pred_next, tmp142
	movq	%rax, -40(%rbp)	# tmp142, e
.L242:
	.loc 1 1500 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L248	#,
.LBE46:
	.loc 1 1486 0 is_stmt 1
	movq	-48(%rbp), %rax	# phi, tmp143
	movq	%rax, %rdi	# tmp143,
	call	next_nonnote_insn	#
	movq	%rax, -48(%rbp)	# tmp144, phi
.L239:
	.loc 1 1484 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, phi
	je	.L249	#,
	.loc 1 1485 0
	movq	-48(%rbp), %rax	# phi, tmp145
	movzwl	(%rax), %eax	# phi_4->code, D.13155
	cmpw	$32, %ax	#, D.13155
	jne	.L249	#,
	.loc 1 1485 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# phi, tmp146
	movq	32(%rax), %rax	# phi_4->fld[3].rtx, D.13156
	movzwl	(%rax), %eax	# _12->code, D.13155
	cmpw	$47, %ax	#, D.13155
	jne	.L249	#,
	movq	-48(%rbp), %rax	# phi, tmp147
	movq	32(%rax), %rax	# phi_4->fld[3].rtx, D.13156
	movq	16(%rax), %rax	# _14->fld[1].rtx, D.13156
	movzwl	(%rax), %eax	# _15->code, D.13155
	cmpw	$152, %ax	#, D.13155
	je	.L250	#,
.L249:
	.loc 1 1535 0 is_stmt 1
	movl	-60(%rbp), %eax	# changed, D.13158
	.loc 1 1536 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	make_regs_equivalent_over_bad_edges, .-make_regs_equivalent_over_bad_edges
	.type	make_equivalent_phi_alternatives_equivalent, @function
make_equivalent_phi_alternatives_equivalent:
.LFB36:
	.loc 1 1548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# bb, bb
	movq	%rsi, -96(%rbp)	# reg_partition, reg_partition
	.loc 1 1549 0
	movl	$0, -80(%rbp)	#, changed
	.loc 1 1550 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.125
	movl	-84(%rbp), %edx	# bb, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	addq	$4, %rdx	#, tmp119
	movq	(%rax,%rdx,8), %rax	# basic_block_info.125_10->data.bb, tmp120
	movq	%rax, -40(%rbp)	# tmp120, b
	.loc 1 1554 0
	movq	-40(%rbp), %rax	# b, tmp121
	movq	%rax, %rdi	# tmp121,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -64(%rbp)	# tmp122, phi
	.loc 1 1557 0
	jmp	.L253	#
.L269:
.LBB48:
	.loc 1 1561 0
	movq	-64(%rbp), %rax	# phi, tmp123
	movq	32(%rax), %rax	# phi_6->fld[3].rtx, tmp124
	movq	%rax, -32(%rbp)	# tmp124, set
	.loc 1 1563 0
	movq	-64(%rbp), %rax	# phi, tmp125
	movq	32(%rax), %rax	# phi_6->fld[3].rtx, D.13162
	movq	8(%rax), %rax	# _21->fld[0].rtx, D.13162
	movl	8(%rax), %eax	# _22->fld[0].rtuint, D.13163
	movl	%eax, -76(%rbp)	# D.13163, tgt_regno
	.loc 1 1565 0
	movq	-64(%rbp), %rax	# phi, tmp126
	movq	%rax, %rdi	# tmp126,
	call	next_nonnote_insn	#
	movq	%rax, -56(%rbp)	# tmp127, phi2
	.loc 1 1568 0
	jmp	.L254	#
.L267:
.LBB49:
	.loc 1 1572 0
	movq	-56(%rbp), %rax	# phi2, tmp128
	movq	32(%rax), %rax	# phi2_7->fld[3].rtx, tmp129
	movq	%rax, -24(%rbp)	# tmp129, set2
	.loc 1 1574 0
	movq	-24(%rbp), %rax	# set2, tmp130
	movq	8(%rax), %rax	# set2_32->fld[0].rtx, D.13162
	movl	8(%rax), %eax	# _33->fld[0].rtuint, D.13163
	movl	%eax, -72(%rbp)	# D.13163, tgt2_regno
	.loc 1 1577 0
	movq	-96(%rbp), %rcx	# reg_partition, tmp131
	movl	-76(%rbp), %eax	# tgt_regno, tmp133
	movslq	%eax, %rdx	# tmp133, tmp132
	movq	%rdx, %rax	# tmp132, tmp134
	addq	%rax, %rax	# tmp134
	addq	%rdx, %rax	# tmp132, tmp134
	salq	$3, %rax	#, tmp135
	addq	%rcx, %rax	# tmp131, tmp136
	movl	8(%rax), %ecx	# reg_partition_36(D)->elements[tgt_regno_24].class_element, D.13164
	.loc 1 1578 0
	movq	-96(%rbp), %rsi	# reg_partition, tmp137
	movl	-72(%rbp), %eax	# tgt2_regno, tmp139
	movslq	%eax, %rdx	# tmp139, tmp138
	movq	%rdx, %rax	# tmp138, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# tmp138, tmp140
	salq	$3, %rax	#, tmp141
	addq	%rsi, %rax	# tmp137, tmp142
	movl	8(%rax), %eax	# reg_partition_36(D)->elements[tgt2_regno_35].class_element, D.13164
	.loc 1 1577 0
	cmpl	%eax, %ecx	# D.13164, D.13164
	jne	.L255	#,
.LBB50:
	.loc 1 1582 0
	movq	-40(%rbp), %rax	# b, tmp143
	movq	32(%rax), %rax	# b_12->pred, tmp144
	movq	%rax, -48(%rbp)	# tmp144, e
	jmp	.L256	#
.L265:
.LBB51:
	.loc 1 1584 0
	movq	-48(%rbp), %rax	# e, tmp145
	movq	16(%rax), %rax	# e_8->src, D.13165
	movl	88(%rax), %eax	# _40->index, tmp146
	movl	%eax, -68(%rbp)	# tmp146, pred_block
	.loc 1 1587 0
	movl	-68(%rbp), %edx	# pred_block, tmp147
	movq	-32(%rbp), %rax	# set, tmp148
	movl	%edx, %esi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	phi_alternative	#
	movq	%rax, -16(%rbp)	# tmp149, alt
	.loc 1 1588 0
	movl	-68(%rbp), %edx	# pred_block, tmp150
	movq	-24(%rbp), %rax	# set2, tmp151
	movl	%edx, %esi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	phi_alternative	#
	movq	%rax, -8(%rbp)	# tmp152, alt2
	.loc 1 1592 0
	cmpq	$0, -16(%rbp)	#, alt
	je	.L257	#,
	.loc 1 1592 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, alt2
	jne	.L258	#,
.L257:
	.loc 1 1593 0 is_stmt 1
	jmp	.L259	#
.L258:
	.loc 1 1596 0
	movq	-16(%rbp), %rax	# alt, tmp153
	movq	(%rax), %rax	# *alt_42, D.13162
	movzwl	(%rax), %eax	# _44->code, D.13161
	cmpw	$61, %ax	#, D.13161
	jne	.L260	#,
	.loc 1 1597 0
	movq	-16(%rbp), %rax	# alt, tmp154
	movq	(%rax), %rax	# *alt_42, D.13162
	movl	8(%rax), %eax	# _46->fld[0].rtuint, D.13163
	cmpl	$52, %eax	#, D.13163
	ja	.L261	#,
	.loc 1 1597 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# alt, tmp155
	movq	(%rax), %rax	# *alt_42, D.13162
	movl	8(%rax), %eax	# _48->fld[0].rtuint, D.13163
	cmpl	$17, %eax	#, D.13163
	je	.L261	#,
	movq	-16(%rbp), %rax	# alt, tmp156
	movq	(%rax), %rax	# *alt_42, D.13162
	movl	8(%rax), %eax	# _50->fld[0].rtuint, D.13163
	cmpl	$16, %eax	#, D.13163
	je	.L261	#,
.L260:
	.loc 1 1598 0 is_stmt 1
	movl	$__FUNCTION__.11285, %edx	#,
	movl	$1598, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L261:
	.loc 1 1599 0
	movq	-8(%rbp), %rax	# alt2, tmp157
	movq	(%rax), %rax	# *alt2_43, D.13162
	movzwl	(%rax), %eax	# _52->code, D.13161
	cmpw	$61, %ax	#, D.13161
	jne	.L262	#,
	.loc 1 1600 0
	movq	-8(%rbp), %rax	# alt2, tmp158
	movq	(%rax), %rax	# *alt2_43, D.13162
	movl	8(%rax), %eax	# _54->fld[0].rtuint, D.13163
	cmpl	$52, %eax	#, D.13163
	ja	.L263	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# alt2, tmp159
	movq	(%rax), %rax	# *alt2_43, D.13162
	movl	8(%rax), %eax	# _56->fld[0].rtuint, D.13163
	cmpl	$17, %eax	#, D.13163
	je	.L263	#,
	movq	-8(%rbp), %rax	# alt2, tmp160
	movq	(%rax), %rax	# *alt2_43, D.13162
	movl	8(%rax), %eax	# _58->fld[0].rtuint, D.13163
	cmpl	$16, %eax	#, D.13163
	je	.L263	#,
.L262:
	.loc 1 1601 0 is_stmt 1
	movl	$__FUNCTION__.11285, %edx	#,
	movl	$1601, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L263:
	.loc 1 1605 0
	movq	-16(%rbp), %rax	# alt, tmp161
	movq	(%rax), %rax	# *alt_42, D.13162
	movl	8(%rax), %eax	# _60->fld[0].rtuint, D.13163
	movq	-96(%rbp), %rcx	# reg_partition, tmp162
	movl	%eax, %edx	# D.13163, tmp163
	movq	%rdx, %rax	# tmp163, tmp164
	addq	%rax, %rax	# tmp164
	addq	%rdx, %rax	# tmp163, tmp164
	salq	$3, %rax	#, tmp165
	addq	%rcx, %rax	# tmp162, tmp166
	movl	8(%rax), %ecx	# reg_partition_36(D)->elements[_61].class_element, D.13164
	.loc 1 1606 0
	movq	-8(%rbp), %rax	# alt2, tmp167
	movq	(%rax), %rax	# *alt2_43, D.13162
	movl	8(%rax), %eax	# _63->fld[0].rtuint, D.13163
	movq	-96(%rbp), %rsi	# reg_partition, tmp168
	movl	%eax, %edx	# D.13163, tmp169
	movq	%rdx, %rax	# tmp169, tmp170
	addq	%rax, %rax	# tmp170
	addq	%rdx, %rax	# tmp169, tmp170
	salq	$3, %rax	#, tmp171
	addq	%rsi, %rax	# tmp168, tmp172
	movl	8(%rax), %eax	# reg_partition_36(D)->elements[_64].class_element, D.13164
	.loc 1 1605 0
	cmpl	%eax, %ecx	# D.13164, D.13164
	je	.L259	#,
	.loc 1 1609 0
	movq	-8(%rbp), %rax	# alt2, tmp173
	movq	(%rax), %rax	# *alt2_43, D.13162
	movl	8(%rax), %eax	# _66->fld[0].rtuint, D.13163
	movl	%eax, %edx	# D.13163, D.13164
	movq	-16(%rbp), %rax	# alt, tmp174
	movq	(%rax), %rax	# *alt_42, D.13162
	movl	8(%rax), %eax	# _69->fld[0].rtuint, D.13163
	movl	%edx, %esi	# D.13164,
	movl	%eax, %edi	# D.13164,
	call	conflicting_hard_regs_p	#
	testl	%eax, %eax	# D.13164
	je	.L264	#,
	.loc 1 1612 0
	movl	$__FUNCTION__.11285, %edx	#,
	movl	$1612, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L264:
	.loc 1 1615 0
	movq	-8(%rbp), %rax	# alt2, tmp175
	movq	(%rax), %rax	# *alt2_43, D.13162
	movl	8(%rax), %eax	# _73->fld[0].rtuint, D.13163
	.loc 1 1614 0
	movl	%eax, %edx	# D.13163, D.13164
	.loc 1 1615 0
	movq	-16(%rbp), %rax	# alt, tmp176
	movq	(%rax), %rax	# *alt_42, D.13162
	movl	8(%rax), %eax	# _76->fld[0].rtuint, D.13163
	.loc 1 1614 0
	movl	%eax, %ecx	# D.13163, D.13164
	movq	-96(%rbp), %rax	# reg_partition, tmp177
	movl	%ecx, %esi	# D.13164,
	movq	%rax, %rdi	# tmp177,
	call	partition_union	#
	.loc 1 1616 0
	addl	$1, -80(%rbp)	#, changed
.L259:
.LBE51:
	.loc 1 1582 0
	movq	-48(%rbp), %rax	# e, tmp178
	movq	(%rax), %rax	# e_8->pred_next, tmp179
	movq	%rax, -48(%rbp)	# tmp179, e
.L256:
	.loc 1 1582 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L265	#,
.L255:
.LBE50:
.LBE49:
	.loc 1 1570 0 is_stmt 1
	movq	-56(%rbp), %rax	# phi2, tmp180
	movq	%rax, %rdi	# tmp180,
	call	next_nonnote_insn	#
	movq	%rax, -56(%rbp)	# tmp181, phi2
.L254:
	.loc 1 1568 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, phi2
	je	.L266	#,
	.loc 1 1569 0
	movq	-56(%rbp), %rax	# phi2, tmp182
	movzwl	(%rax), %eax	# phi2_7->code, D.13161
	cmpw	$32, %ax	#, D.13161
	jne	.L266	#,
	.loc 1 1569 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# phi2, tmp183
	movq	32(%rax), %rax	# phi2_7->fld[3].rtx, D.13162
	movzwl	(%rax), %eax	# _27->code, D.13161
	cmpw	$47, %ax	#, D.13161
	jne	.L266	#,
	movq	-56(%rbp), %rax	# phi2, tmp184
	movq	32(%rax), %rax	# phi2_7->fld[3].rtx, D.13162
	movq	16(%rax), %rax	# _29->fld[1].rtx, D.13162
	movzwl	(%rax), %eax	# _30->code, D.13161
	cmpw	$152, %ax	#, D.13161
	je	.L267	#,
.L266:
.LBE48:
	.loc 1 1559 0 is_stmt 1
	movq	-64(%rbp), %rax	# phi, tmp185
	movq	%rax, %rdi	# tmp185,
	call	next_nonnote_insn	#
	movq	%rax, -64(%rbp)	# tmp186, phi
.L253:
	.loc 1 1557 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, phi
	je	.L268	#,
	.loc 1 1558 0
	movq	-64(%rbp), %rax	# phi, tmp187
	movzwl	(%rax), %eax	# phi_6->code, D.13161
	cmpw	$32, %ax	#, D.13161
	jne	.L268	#,
	.loc 1 1558 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# phi, tmp188
	movq	32(%rax), %rax	# phi_6->fld[3].rtx, D.13162
	movzwl	(%rax), %eax	# _15->code, D.13161
	cmpw	$47, %ax	#, D.13161
	jne	.L268	#,
	movq	-64(%rbp), %rax	# phi, tmp189
	movq	32(%rax), %rax	# phi_6->fld[3].rtx, D.13162
	movq	16(%rax), %rax	# _17->fld[1].rtx, D.13162
	movzwl	(%rax), %eax	# _18->code, D.13161
	cmpw	$152, %ax	#, D.13161
	je	.L269	#,
.L268:
	.loc 1 1623 0 is_stmt 1
	movl	-80(%rbp), %eax	# changed, D.13164
	.loc 1 1624 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	make_equivalent_phi_alternatives_equivalent, .-make_equivalent_phi_alternatives_equivalent
	.type	compute_conservative_reg_partition, @function
compute_conservative_reg_partition:
.LFB37:
	.loc 1 1631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1633 0
	movl	$0, -12(%rbp)	#, changed
	.loc 1 1639 0
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.126
	movq	(%rax), %rax	# ssa_definition.126_7->num_elements, D.13166
	.loc 1 1638 0
	movl	%eax, %edi	# D.13167,
	call	partition_new	#
	movq	%rax, -8(%rbp)	# tmp66, p
	.loc 1 1645 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp67
	movl	%eax, -16(%rbp)	# tmp67, bb
	jmp	.L272	#
.L273:
	.loc 1 1646 0
	movq	-8(%rbp), %rdx	# p, tmp68
	movl	-16(%rbp), %eax	# bb, tmp69
	movq	%rdx, %rsi	# tmp68,
	movl	%eax, %edi	# tmp69,
	call	make_regs_equivalent_over_bad_edges	#
	addl	%eax, -12(%rbp)	# D.13167, changed
.L272:
	.loc 1 1645 0 discriminator 1
	subl	$1, -16(%rbp)	#, bb
	cmpl	$0, -16(%rbp)	#, bb
	jns	.L273	#,
	.loc 1 1651 0
	jmp	.L274	#
.L277:
	.loc 1 1653 0
	movl	$0, -12(%rbp)	#, changed
	.loc 1 1654 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp70
	movl	%eax, -16(%rbp)	# tmp70, bb
	jmp	.L275	#
.L276:
	.loc 1 1655 0
	movq	-8(%rbp), %rdx	# p, tmp71
	movl	-16(%rbp), %eax	# bb, tmp72
	movq	%rdx, %rsi	# tmp71,
	movl	%eax, %edi	# tmp72,
	call	make_equivalent_phi_alternatives_equivalent	#
	addl	%eax, -12(%rbp)	# D.13167, changed
.L275:
	.loc 1 1654 0 discriminator 1
	subl	$1, -16(%rbp)	#, bb
	cmpl	$0, -16(%rbp)	#, bb
	jns	.L276	#,
.L274:
	.loc 1 1651 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, changed
	jg	.L277	#,
	.loc 1 1658 0
	movq	-8(%rbp), %rax	# p, D.13168
	.loc 1 1659 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	compute_conservative_reg_partition, .-compute_conservative_reg_partition
	.type	coalesce_if_unconflicting, @function
coalesce_if_unconflicting:
.LFB38:
	.loc 1 1697 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movq	%rsi, -32(%rbp)	# conflicts, conflicts
	movl	%edx, -36(%rbp)	# reg1, reg1
	movl	%ecx, -40(%rbp)	# reg2, reg2
	.loc 1 1701 0
	cmpl	$52, -36(%rbp)	#, reg1
	jg	.L280	#,
	.loc 1 1701 0 is_stmt 0 discriminator 1
	cmpl	$17, -36(%rbp)	#, reg1
	je	.L280	#,
	cmpl	$16, -36(%rbp)	#, reg1
	jne	.L281	#,
.L280:
	.loc 1 1701 0 discriminator 2
	cmpl	$52, -40(%rbp)	#, reg2
	jg	.L282	#,
	.loc 1 1701 0 discriminator 1
	cmpl	$17, -40(%rbp)	#, reg2
	je	.L282	#,
	cmpl	$16, -40(%rbp)	#, reg2
	je	.L282	#,
.L281:
	.loc 1 1702 0 is_stmt 1
	movl	$0, %eax	#, D.13169
	jmp	.L283	#
.L282:
	.loc 1 1706 0
	movq	-24(%rbp), %rcx	# p, tmp63
	movl	-36(%rbp), %eax	# reg1, tmp65
	movslq	%eax, %rdx	# tmp65, tmp64
	movq	%rdx, %rax	# tmp64, tmp66
	addq	%rax, %rax	# tmp66
	addq	%rdx, %rax	# tmp64, tmp66
	salq	$3, %rax	#, tmp67
	addq	%rcx, %rax	# tmp63, tmp68
	movl	8(%rax), %eax	# p_4(D)->elements[reg1_2(D)].class_element, tmp69
	movl	%eax, -36(%rbp)	# tmp69, reg1
	.loc 1 1707 0
	movq	-24(%rbp), %rcx	# p, tmp70
	movl	-40(%rbp), %eax	# reg2, tmp72
	movslq	%eax, %rdx	# tmp72, tmp71
	movq	%rdx, %rax	# tmp71, tmp73
	addq	%rax, %rax	# tmp73
	addq	%rdx, %rax	# tmp71, tmp73
	salq	$3, %rax	#, tmp74
	addq	%rcx, %rax	# tmp70, tmp75
	movl	8(%rax), %eax	# p_4(D)->elements[reg2_3(D)].class_element, tmp76
	movl	%eax, -40(%rbp)	# tmp76, reg2
	.loc 1 1710 0
	movl	-36(%rbp), %eax	# reg1, tmp77
	cmpl	-40(%rbp), %eax	# reg2, tmp77
	jne	.L284	#,
	.loc 1 1711 0
	movl	$0, %eax	#, D.13169
	jmp	.L283	#
.L284:
	.loc 1 1714 0
	movl	-40(%rbp), %edx	# reg2, tmp78
	movl	-36(%rbp), %eax	# reg1, tmp79
	movl	%edx, %esi	# tmp78,
	movl	%eax, %edi	# tmp79,
	call	conflicting_hard_regs_p	#
	testl	%eax, %eax	# D.13169
	jne	.L285	#,
	.loc 1 1715 0 discriminator 1
	movl	-40(%rbp), %edx	# reg2, tmp80
	movl	-36(%rbp), %ecx	# reg1, tmp81
	movq	-32(%rbp), %rax	# conflicts, tmp82
	movl	%ecx, %esi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	conflict_graph_conflict_p	#
	.loc 1 1714 0 discriminator 1
	testl	%eax, %eax	# D.13169
	je	.L286	#,
.L285:
	.loc 1 1716 0
	movl	$0, %eax	#, D.13169
	jmp	.L283	#
.L286:
	.loc 1 1719 0
	movl	-40(%rbp), %edx	# reg2, tmp83
	movl	-36(%rbp), %ecx	# reg1, tmp84
	movq	-24(%rbp), %rax	# p, tmp85
	movl	%ecx, %esi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	partition_union	#
	.loc 1 1722 0
	movq	-24(%rbp), %rcx	# p, tmp86
	movl	-36(%rbp), %eax	# reg1, tmp88
	movslq	%eax, %rdx	# tmp88, tmp87
	movq	%rdx, %rax	# tmp87, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# tmp87, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rcx, %rax	# tmp86, tmp91
	movl	8(%rax), %eax	# p_4(D)->elements[reg1_5].class_element, tmp92
	movl	%eax, -4(%rbp)	# tmp92, reg
	.loc 1 1725 0
	movl	-36(%rbp), %edx	# reg1, tmp93
	movl	-4(%rbp), %ecx	# reg, tmp94
	movq	-32(%rbp), %rax	# conflicts, tmp95
	movl	%ecx, %esi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	conflict_graph_merge_regs	#
	.loc 1 1726 0
	movl	-40(%rbp), %edx	# reg2, tmp96
	movl	-4(%rbp), %ecx	# reg, tmp97
	movq	-32(%rbp), %rax	# conflicts, tmp98
	movl	%ecx, %esi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	conflict_graph_merge_regs	#
	.loc 1 1728 0
	movl	$1, %eax	#, D.13169
.L283:
	.loc 1 1729 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	coalesce_if_unconflicting, .-coalesce_if_unconflicting
	.type	coalesce_regs_in_copies, @function
coalesce_regs_in_copies:
.LFB39:
	.loc 1 1744 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# bb, bb
	movq	%rsi, -64(%rbp)	# p, p
	movq	%rdx, -72(%rbp)	# conflicts, conflicts
	.loc 1 1745 0
	movl	$0, -44(%rbp)	#, changed
	.loc 1 1747 0
	movq	-56(%rbp), %rax	# bb, tmp72
	movq	8(%rax), %rax	# bb_5(D)->end, tmp73
	movq	%rax, -32(%rbp)	# tmp73, end
	.loc 1 1750 0
	movq	-56(%rbp), %rax	# bb, tmp74
	movq	(%rax), %rax	# bb_5(D)->head, tmp75
	movq	%rax, -40(%rbp)	# tmp75, insn
	jmp	.L288	#
.L295:
.LBB52:
	.loc 1 1757 0
	movq	-40(%rbp), %rax	# insn, tmp76
	movzwl	(%rax), %eax	# insn_3->code, D.13170
	cmpw	$32, %ax	#, D.13170
	je	.L289	#,
	.loc 1 1758 0
	jmp	.L290	#
.L289:
	.loc 1 1759 0
	movq	-40(%rbp), %rax	# insn, tmp77
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, tmp78
	movq	%rax, -24(%rbp)	# tmp78, pattern
	.loc 1 1760 0
	movq	-24(%rbp), %rax	# pattern, tmp79
	movzwl	(%rax), %eax	# pattern_9->code, D.13170
	cmpw	$47, %ax	#, D.13170
	je	.L291	#,
	.loc 1 1761 0
	jmp	.L290	#
.L291:
	.loc 1 1763 0
	movq	-24(%rbp), %rax	# pattern, tmp80
	movq	16(%rax), %rax	# pattern_9->fld[1].rtx, tmp81
	movq	%rax, -16(%rbp)	# tmp81, src
	.loc 1 1764 0
	movq	-24(%rbp), %rax	# pattern, tmp82
	movq	8(%rax), %rax	# pattern_9->fld[0].rtx, tmp83
	movq	%rax, -8(%rbp)	# tmp83, dest
	.loc 1 1767 0
	movq	-16(%rbp), %rax	# src, tmp84
	movzwl	(%rax), %eax	# src_11->code, D.13170
	cmpw	$61, %ax	#, D.13170
	jne	.L292	#,
	.loc 1 1767 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp85
	movzwl	(%rax), %eax	# dest_12->code, D.13170
	cmpw	$61, %ax	#, D.13170
	je	.L293	#,
.L292:
	.loc 1 1768 0 is_stmt 1
	jmp	.L290	#
.L293:
	.loc 1 1776 0
	movq	-16(%rbp), %rax	# src, tmp86
	movzbl	2(%rax), %edx	# src_11->mode, D.13171
	movq	-8(%rbp), %rax	# dest, tmp87
	movzbl	2(%rax), %eax	# dest_12->mode, D.13171
	cmpb	%al, %dl	# D.13171, D.13171
	je	.L294	#,
	.loc 1 1777 0
	jmp	.L290	#
.L294:
	.loc 1 1783 0
	movq	-8(%rbp), %rax	# dest, tmp88
	movl	8(%rax), %eax	# dest_12->fld[0].rtuint, D.13172
	.loc 1 1782 0
	movl	%eax, %ecx	# D.13172, D.13173
	.loc 1 1783 0
	movq	-16(%rbp), %rax	# src, tmp89
	movl	8(%rax), %eax	# src_11->fld[0].rtuint, D.13172
	.loc 1 1782 0
	movl	%eax, %edx	# D.13172, D.13173
	movq	-72(%rbp), %rsi	# conflicts, tmp90
	movq	-64(%rbp), %rax	# p, tmp91
	movq	%rax, %rdi	# tmp91,
	call	coalesce_if_unconflicting	#
	addl	%eax, -44(%rbp)	# D.13173, changed
.L290:
.LBE52:
	.loc 1 1750 0
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp93
	movq	%rax, -40(%rbp)	# tmp93, insn
.L288:
	.loc 1 1750 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp94
	cmpq	-32(%rbp), %rax	# end, tmp94
	jne	.L295	#,
	.loc 1 1786 0 is_stmt 1
	movl	-44(%rbp), %eax	# changed, D.13173
	.loc 1 1787 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	coalesce_regs_in_copies, .-coalesce_regs_in_copies
	.type	coalesce_reg_in_phi, @function
coalesce_reg_in_phi:
.LFB40:
	.loc 1 1807 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# insn, insn
	movl	%esi, -44(%rbp)	# dest_regno, dest_regno
	movl	%edx, -48(%rbp)	# src_regno, src_regno
	movq	%rcx, -56(%rbp)	# data, data
	.loc 1 1808 0
	movq	-56(%rbp), %rax	# data, tmp66
	movq	%rax, -24(%rbp)	# tmp66, context
	.loc 1 1813 0
	movq	-24(%rbp), %rax	# context, tmp67
	movl	16(%rax), %ebx	# context_2->changed, D.13174
	movq	-24(%rbp), %rax	# context, tmp68
	movq	8(%rax), %rsi	# context_2->conflicts, D.13175
	movq	-24(%rbp), %rax	# context, tmp69
	movq	(%rax), %rax	# context_2->p, D.13176
	movl	-48(%rbp), %ecx	# src_regno, tmp70
	movl	-44(%rbp), %edx	# dest_regno, tmp71
	movq	%rax, %rdi	# D.13176,
	call	coalesce_if_unconflicting	#
	leal	(%rbx,%rax), %edx	#, D.13174
	movq	-24(%rbp), %rax	# context, tmp72
	movl	%edx, 16(%rax)	# D.13174, context_2->changed
	.loc 1 1815 0
	movl	$0, %eax	#, D.13174
	.loc 1 1816 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	coalesce_reg_in_phi, .-coalesce_reg_in_phi
	.type	coalesce_regs_in_successor_phi_nodes, @function
coalesce_regs_in_successor_phi_nodes:
.LFB41:
	.loc 1 1832 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# bb, bb
	movq	%rsi, -48(%rbp)	# p, p
	movq	%rdx, -56(%rbp)	# conflicts, conflicts
	.loc 1 1834 0
	movq	-48(%rbp), %rax	# p, tmp61
	movq	%rax, -32(%rbp)	# tmp61, context.p
	.loc 1 1835 0
	movq	-56(%rbp), %rax	# conflicts, tmp62
	movq	%rax, -24(%rbp)	# tmp62, context.conflicts
	.loc 1 1836 0
	movl	$0, -16(%rbp)	#, context.changed
	.loc 1 1838 0
	leaq	-32(%rbp), %rdx	#, tmp63
	movq	-40(%rbp), %rax	# bb, tmp64
	movl	$coalesce_reg_in_phi, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	for_each_successor_phi	#
	.loc 1 1840 0
	movl	-16(%rbp), %eax	# context.changed, D.13177
	.loc 1 1841 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	coalesce_regs_in_successor_phi_nodes, .-coalesce_regs_in_successor_phi_nodes
	.type	compute_coalesced_reg_partition, @function
compute_coalesced_reg_partition:
.LFB42:
	.loc 1 1850 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 1852 0
	movl	$0, -68(%rbp)	#, changed
	.loc 1 1854 0
	leaq	-32(%rbp), %rax	#, tmp67
	movq	%rax, -64(%rbp)	# tmp67, phi_set
	.loc 1 1857 0
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.127
	movq	(%rax), %rax	# ssa_definition.127_6->num_elements, D.13178
	.loc 1 1856 0
	movl	%eax, %edi	# D.13179,
	call	partition_new	#
	movq	%rax, -56(%rbp)	# tmp68, p
	.loc 1 1863 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp69
	movl	%eax, -72(%rbp)	# tmp69, bb
	jmp	.L302	#
.L303:
	.loc 1 1864 0
	movq	-56(%rbp), %rdx	# p, tmp70
	movl	-72(%rbp), %eax	# bb, tmp71
	movq	%rdx, %rsi	# tmp70,
	movl	%eax, %edi	# tmp71,
	call	make_regs_equivalent_over_bad_edges	#
.L302:
	.loc 1 1863 0 discriminator 1
	subl	$1, -72(%rbp)	#, bb
	cmpl	$0, -72(%rbp)	#, bb
	jns	.L303	#,
	.loc 1 1866 0
	movq	-64(%rbp), %rax	# phi_set, tmp72
	movq	%rax, %rdi	# tmp72,
	call	bitmap_initialize	#
.L306:
.LBB53:
	.loc 1 1872 0
	movl	$0, -68(%rbp)	#, changed
	.loc 1 1876 0
	movq	-64(%rbp), %rax	# phi_set, tmp73
	movq	%rax, %rdi	# tmp73,
	call	bitmap_clear	#
	.loc 1 1877 0
	movq	-64(%rbp), %rax	# phi_set, tmp74
	movq	%rax, %rdi	# tmp74,
	call	mark_phi_and_copy_regs	#
	.loc 1 1880 0
	movq	-56(%rbp), %rdx	# p, tmp75
	movq	-64(%rbp), %rax	# phi_set, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	conflict_graph_compute	#
	movq	%rax, -48(%rbp)	# tmp77, conflicts
	.loc 1 1886 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp78
	movl	%eax, -72(%rbp)	# tmp78, bb
	jmp	.L304	#
.L305:
.LBB54:
	.loc 1 1888 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.128
	movl	-72(%rbp), %edx	# bb, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	addq	$4, %rdx	#, tmp81
	movq	(%rax,%rdx,8), %rax	# basic_block_info.128_16->data.bb, tmp82
	movq	%rax, -40(%rbp)	# tmp82, block
	.loc 1 1889 0
	movq	-48(%rbp), %rdx	# conflicts, tmp83
	movq	-56(%rbp), %rcx	# p, tmp84
	movq	-40(%rbp), %rax	# block, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	coalesce_regs_in_copies	#
	addl	%eax, -68(%rbp)	# D.13179, changed
	.loc 1 1891 0
	movq	-48(%rbp), %rdx	# conflicts, tmp86
	movq	-56(%rbp), %rcx	# p, tmp87
	movq	-40(%rbp), %rax	# block, tmp88
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	coalesce_regs_in_successor_phi_nodes	#
	.loc 1 1890 0
	addl	%eax, -68(%rbp)	# D.13179, changed
.L304:
.LBE54:
	.loc 1 1886 0 discriminator 1
	subl	$1, -72(%rbp)	#, bb
	cmpl	$0, -72(%rbp)	#, bb
	jns	.L305	#,
	.loc 1 1894 0
	movq	-48(%rbp), %rax	# conflicts, tmp89
	movq	%rax, %rdi	# tmp89,
	call	conflict_graph_delete	#
.LBE53:
	.loc 1 1896 0
	cmpl	$0, -68(%rbp)	#, changed
	jg	.L306	#,
	.loc 1 1898 0
	cmpq	$0, -64(%rbp)	#, phi_set
	je	.L307	#,
	.loc 1 1898 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# phi_set, tmp90
	movq	%rax, %rdi	# tmp90,
	call	bitmap_clear	#
	movq	$0, -64(%rbp)	#, phi_set
.L307:
	.loc 1 1900 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, D.13180
	.loc 1 1901 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	compute_coalesced_reg_partition, .-compute_coalesced_reg_partition
	.type	mark_reg_in_phi, @function
mark_reg_in_phi:
.LFB43:
	.loc 1 1911 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 1912 0
	movq	-24(%rbp), %rax	# ptr, tmp65
	movq	(%rax), %rax	# *ptr_1(D), tmp66
	movq	%rax, -16(%rbp)	# tmp66, expr
	.loc 1 1913 0
	movq	-32(%rbp), %rax	# data, tmp67
	movq	%rax, -8(%rbp)	# tmp67, set
	.loc 1 1915 0
	movq	-16(%rbp), %rax	# expr, tmp68
	movzwl	(%rax), %eax	# expr_2->code, D.13181
	movzwl	%ax, %eax	# D.13181, D.13182
	cmpl	$61, %eax	#, D.13182
	je	.L311	#,
	cmpl	$152, %eax	#, D.13182
	je	.L312	#,
	cmpl	$54, %eax	#, D.13182
	je	.L312	#,
	jmp	.L314	#
.L311:
	.loc 1 1918 0
	movq	-16(%rbp), %rax	# expr, tmp69
	movl	8(%rax), %eax	# expr_2->fld[0].rtuint, D.13182
	movl	%eax, %edx	# D.13182, D.13183
	movq	-8(%rbp), %rax	# set, tmp70
	movl	%edx, %esi	# D.13183,
	movq	%rax, %rdi	# tmp70,
	call	bitmap_set_bit	#
.L312:
	.loc 1 1922 0
	movl	$0, %eax	#, D.13183
	jmp	.L315	#
.L314:
	.loc 1 1924 0
	movl	$__FUNCTION__.11375, %edx	#,
	movl	$1924, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L315:
	.loc 1 1926 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	mark_reg_in_phi, .-mark_reg_in_phi
	.type	mark_phi_and_copy_regs, @function
mark_phi_and_copy_regs:
.LFB44:
	.loc 1 1936 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# phi_set, phi_set
	.loc 1 1940 0
	movl	$0, -28(%rbp)	#, reg
	jmp	.L317	#
.L326:
	.loc 1 1941 0
	cmpl	$52, -28(%rbp)	#, reg
	ja	.L318	#,
	.loc 1 1941 0 is_stmt 0 discriminator 1
	cmpl	$17, -28(%rbp)	#, reg
	je	.L318	#,
	cmpl	$16, -28(%rbp)	#, reg
	jne	.L319	#,
.L318:
.LBB55:
	.loc 1 1943 0 is_stmt 1
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.129
	movl	-28(%rbp), %edx	# reg, tmp76
	addq	$4, %rdx	#, tmp77
	movq	(%rax,%rdx,8), %rax	# ssa_definition.129_6->data.rtx, tmp78
	movq	%rax, -16(%rbp)	# tmp78, insn
	.loc 1 1947 0
	cmpq	$0, -16(%rbp)	#, insn
	je	.L320	#,
	.loc 1 1948 0
	movq	-16(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_7->code, D.13185
	cmpw	$37, %ax	#, D.13185
	jne	.L321	#,
	.loc 1 1949 0
	movq	-16(%rbp), %rax	# insn, tmp80
	movl	40(%rax), %eax	# insn_7->fld[4].rtint, D.13186
	cmpl	$-99, %eax	#, D.13186
	jne	.L321	#,
.L320:
	.loc 1 1950 0
	jmp	.L319	#
.L321:
	.loc 1 1951 0
	movq	-16(%rbp), %rax	# insn, tmp81
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, tmp82
	movq	%rax, -8(%rbp)	# tmp82, pattern
	.loc 1 1954 0
	movq	-8(%rbp), %rax	# pattern, tmp83
	movzwl	(%rax), %eax	# pattern_10->code, D.13185
	cmpw	$47, %ax	#, D.13185
	je	.L323	#,
	.loc 1 1955 0
	jmp	.L319	#
.L323:
	.loc 1 1956 0
	movq	-8(%rbp), %rax	# pattern, tmp84
	movq	16(%rax), %rax	# pattern_10->fld[1].rtx, src.130
	movq	%rax, -24(%rbp)	# src.130, src
	.loc 1 1958 0
	movq	-24(%rbp), %rax	# src, src.131
	movzwl	(%rax), %eax	# src.131_13->code, D.13185
	cmpw	$61, %ax	#, D.13185
	jne	.L324	#,
	.loc 1 1961 0
	movl	-28(%rbp), %edx	# reg, reg.132
	movq	-40(%rbp), %rax	# phi_set, tmp85
	movl	%edx, %esi	# reg.132,
	movq	%rax, %rdi	# tmp85,
	call	bitmap_set_bit	#
	.loc 1 1962 0
	movq	-24(%rbp), %rax	# src, src.133
	movl	8(%rax), %eax	# src.133_17->fld[0].rtuint, D.13187
	movl	%eax, %edx	# D.13187, D.13186
	movq	-40(%rbp), %rax	# phi_set, tmp86
	movl	%edx, %esi	# D.13186,
	movq	%rax, %rdi	# tmp86,
	call	bitmap_set_bit	#
	jmp	.L319	#
.L324:
	.loc 1 1964 0
	movq	-24(%rbp), %rax	# src, src.134
	movzwl	(%rax), %eax	# src.134_20->code, D.13185
	cmpw	$152, %ax	#, D.13185
	jne	.L319	#,
	.loc 1 1967 0
	movl	-28(%rbp), %edx	# reg, reg.135
	movq	-40(%rbp), %rax	# phi_set, tmp87
	movl	%edx, %esi	# reg.135,
	movq	%rax, %rdi	# tmp87,
	call	bitmap_set_bit	#
	.loc 1 1969 0
	movq	-40(%rbp), %rdx	# phi_set, tmp88
	leaq	-24(%rbp), %rax	#, tmp89
	movl	$mark_reg_in_phi, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	for_each_rtx	#
.L319:
.LBE55:
	.loc 1 1940 0
	addl	$1, -28(%rbp)	#, reg
.L317:
	.loc 1 1940 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %edx	# reg, D.13184
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.136
	movq	(%rax), %rax	# ssa_definition.136_4->num_elements, D.13184
	cmpq	%rax, %rdx	# D.13184, D.13184
	jb	.L326	#,
	.loc 1 1973 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	mark_phi_and_copy_regs, .-mark_phi_and_copy_regs
	.type	rename_equivalent_regs_in_insn, @function
rename_equivalent_regs_in_insn:
.LFB45:
	.loc 1 1982 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# ptr, ptr
	movq	%rsi, -64(%rbp)	# data, data
	.loc 1 1983 0
	movq	-56(%rbp), %rax	# ptr, tmp78
	movq	(%rax), %rax	# *ptr_2(D), tmp79
	movq	%rax, -32(%rbp)	# tmp79, x
	.loc 1 1984 0
	movq	-64(%rbp), %rax	# data, tmp80
	movq	%rax, -24(%rbp)	# tmp80, reg_partition
	.loc 1 1986 0
	cmpq	$0, -32(%rbp)	#, x
	jne	.L328	#,
	.loc 1 1987 0
	movl	$0, %eax	#, D.13188
	jmp	.L329	#
.L328:
	.loc 1 1989 0
	movq	-32(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_3->code, D.13189
	movzwl	%ax, %eax	# D.13189, D.13190
	cmpl	$61, %eax	#, D.13190
	je	.L331	#,
	cmpl	$152, %eax	#, D.13190
	je	.L332	#,
	jmp	.L338	#
.L331:
	.loc 1 1992 0
	movq	-32(%rbp), %rax	# x, tmp82
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.13190
	cmpl	$52, %eax	#, D.13190
	ja	.L333	#,
	.loc 1 1992 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# x, tmp83
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.13190
	cmpl	$17, %eax	#, D.13190
	je	.L333	#,
	movq	-32(%rbp), %rax	# x, tmp84
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.13190
	cmpl	$16, %eax	#, D.13190
	jne	.L334	#,
.L333:
.LBB56:
	.loc 1 1994 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp85
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, tmp86
	movl	%eax, -40(%rbp)	# tmp86, regno
	.loc 1 1995 0
	movq	-24(%rbp), %rcx	# reg_partition, tmp87
	movl	-40(%rbp), %edx	# regno, tmp88
	movq	%rdx, %rax	# tmp88, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# tmp88, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rcx, %rax	# tmp87, tmp91
	movl	8(%rax), %eax	# reg_partition_5->elements[regno_12].class_element, D.13188
	movl	%eax, -36(%rbp)	# D.13188, new_regno
	.loc 1 1996 0
	movl	-36(%rbp), %eax	# new_regno, new_regno.137
	movl	%eax, %edi	# new_regno.137,
	call	ssa_rename_from_lookup	#
	movq	%rax, -16(%rbp)	# tmp92, canonical_element_rtx
	.loc 1 1998 0
	cmpq	$0, -16(%rbp)	#, canonical_element_rtx
	je	.L335	#,
	.loc 1 1999 0 discriminator 1
	movq	-16(%rbp), %rax	# canonical_element_rtx, tmp93
	movl	8(%rax), %eax	# canonical_element_rtx_16->fld[0].rtuint, D.13190
	.loc 1 1998 0 discriminator 1
	cmpl	$52, %eax	#, D.13190
	ja	.L335	#,
	.loc 1 2001 0
	movq	-16(%rbp), %rax	# canonical_element_rtx, tmp94
	movl	8(%rax), %eax	# canonical_element_rtx_16->fld[0].rtuint, D.13190
	cmpl	-40(%rbp), %eax	# regno, D.13190
	je	.L336	#,
	.loc 1 2002 0
	movq	-56(%rbp), %rax	# ptr, tmp95
	movq	-16(%rbp), %rdx	# canonical_element_rtx, tmp96
	movq	%rdx, (%rax)	# tmp96, *ptr_2(D)
	.loc 1 2001 0
	jmp	.L334	#
.L336:
	.loc 1 2001 0 is_stmt 0 discriminator 1
	jmp	.L334	#
.L335:
	.loc 1 2004 0 is_stmt 1
	movl	-40(%rbp), %eax	# regno, tmp97
	cmpl	-36(%rbp), %eax	# new_regno, tmp97
	je	.L334	#,
.LBB57:
	.loc 1 2006 0
	movq	cfun(%rip), %rax	# cfun, cfun.138
	movq	24(%rax), %rax	# cfun.138_19->emit, D.13191
	movq	80(%rax), %rax	# _20->x_regno_reg_rtx, D.13192
	movl	-36(%rbp), %edx	# new_regno, D.13193
	salq	$3, %rdx	#, D.13193
	addq	%rdx, %rax	# D.13193, D.13192
	movq	(%rax), %rax	# *_24, tmp98
	movq	%rax, -8(%rbp)	# tmp98, new_reg
	.loc 1 2007 0
	movq	-32(%rbp), %rax	# x, tmp99
	movzbl	2(%rax), %edx	# x_3->mode, D.13194
	movq	-8(%rbp), %rax	# new_reg, tmp100
	movzbl	2(%rax), %eax	# new_reg_25->mode, D.13194
	cmpb	%al, %dl	# D.13194, D.13194
	je	.L337	#,
	.loc 1 2008 0
	movl	$__FUNCTION__.11398, %edx	#,
	movl	$2008, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L337:
	.loc 1 2009 0
	movq	-56(%rbp), %rax	# ptr, tmp101
	movq	-8(%rbp), %rdx	# new_reg, tmp102
	movq	%rdx, (%rax)	# tmp102, *ptr_2(D)
.L334:
.LBE57:
.LBE56:
	.loc 1 2012 0
	movl	$-1, %eax	#, D.13188
	jmp	.L329	#
.L332:
	.loc 1 2017 0
	movl	$-1, %eax	#, D.13188
	jmp	.L329	#
.L338:
	.loc 1 2021 0
	movl	$0, %eax	#, D.13188
.L329:
	.loc 1 2023 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	rename_equivalent_regs_in_insn, .-rename_equivalent_regs_in_insn
	.type	record_canonical_element_1, @function
record_canonical_element_1:
.LFB46:
	.loc 1 2033 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# srfp, srfp
	movq	%rsi, -48(%rbp)	# data, data
	.loc 1 2034 0
	movq	-40(%rbp), %rax	# srfp, tmp70
	movq	(%rax), %rax	# *srfp_1(D), D.13195
	movl	(%rax), %eax	# MEM[(struct ssa_rename_from_pair *)_2].reg, tmp71
	movl	%eax, -20(%rbp)	# tmp71, reg
	.loc 1 2035 0
	movq	-48(%rbp), %rax	# data, tmp72
	movq	(%rax), %rax	# MEM[(struct ssa_rename_from_hash_table_data *)data_4(D)].canonical_elements, tmp73
	movq	%rax, -16(%rbp)	# tmp73, canonical_elements
	.loc 1 2037 0
	movq	-48(%rbp), %rax	# data, tmp74
	movq	8(%rax), %rax	# MEM[(struct ssa_rename_from_hash_table_data *)data_4(D)].reg_partition, tmp75
	movq	%rax, -8(%rbp)	# tmp75, reg_partition
	.loc 1 2040 0
	movq	-8(%rbp), %rcx	# reg_partition, tmp76
	movl	-20(%rbp), %edx	# reg, tmp77
	movq	%rdx, %rax	# tmp77, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# tmp77, tmp78
	salq	$3, %rax	#, tmp79
	addq	%rcx, %rax	# tmp76, tmp80
	movl	8(%rax), %eax	# reg_partition_6->elements[reg_3].class_element, D.13196
	shrl	$6, %eax	#, D.13197
	movl	%eax, %esi	# D.13197, D.13197
	movq	-16(%rbp), %rax	# canonical_elements, tmp81
	movl	%esi, %edx	# D.13197, tmp82
	addq	$2, %rdx	#, tmp83
	movq	(%rax,%rdx,8), %rdi	# canonical_elements_5->elms, D.13198
	movq	-8(%rbp), %rcx	# reg_partition, tmp84
	movl	-20(%rbp), %edx	# reg, tmp85
	movq	%rdx, %rax	# tmp85, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rdx, %rax	# tmp85, tmp86
	salq	$3, %rax	#, tmp87
	addq	%rcx, %rax	# tmp84, tmp88
	movl	8(%rax), %eax	# reg_partition_6->elements[reg_3].class_element, D.13196
	andl	$63, %eax	#, D.13196
	movl	$1, %edx	#, tmp89
	movl	%eax, %ecx	# D.13196, tmp96
	salq	%cl, %rdx	# tmp96, D.13198
	movq	%rdx, %rax	# D.13198, D.13198
	orq	%rax, %rdi	# D.13198, D.13198
	movq	%rdi, %rcx	# D.13198, D.13198
	movq	-16(%rbp), %rax	# canonical_elements, tmp90
	movl	%esi, %edx	# D.13197, tmp91
	addq	$2, %rdx	#, tmp92
	movq	%rcx, (%rax,%rdx,8)	# D.13198, canonical_elements_5->elms
	.loc 1 2041 0
	movl	$1, %eax	#, D.13196
	.loc 1 2042 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	record_canonical_element_1, .-record_canonical_element_1
	.type	check_hard_regs_in_partition, @function
check_hard_regs_in_partition:
.LFB47:
	.loc 1 2052 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12592, %rsp	#,
	movq	%rdi, -12584(%rbp)	# reg_partition, reg_partition
	.loc 1 2063 0
	call	max_reg_num	#
	movl	%eax, %edi	# D.13200,
	call	sbitmap_alloc	#
	movq	%rax, -12544(%rbp)	# tmp76, canonical_elements
	.loc 1 2064 0
	movq	-12544(%rbp), %rax	# canonical_elements, tmp77
	movq	%rax, %rdi	# tmp77,
	call	sbitmap_zero	#
	.loc 1 2065 0
	movq	-12584(%rbp), %rdx	# reg_partition, tmp78
	movq	-12544(%rbp), %rax	# canonical_elements, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$record_canonical_element_1, %edi	#,
	call	ssa_rename_from_traverse	#
	.loc 1 2069 0
	movl	$0, -12576(%rbp)	#, reg
	jmp	.L342	#
.L345:
	.loc 1 2070 0
	movl	$0, -12572(%rbp)	#, mach_mode
	jmp	.L343	#
.L344:
	.loc 1 2071 0 discriminator 2
	movl	-12572(%rbp), %eax	# mach_mode, tmp81
	movslq	%eax, %rsi	# tmp81, tmp80
	movl	-12576(%rbp), %eax	# reg, tmp83
	movslq	%eax, %rcx	# tmp83, tmp82
	movq	%rcx, %rdx	# tmp82, tmp84
	leaq	0(,%rdx,4), %rax	#, tmp85
	movq	%rax, %rdx	# tmp85, tmp84
	movq	%rdx, %rax	# tmp84, tmp86
	salq	$4, %rax	#, tmp86
	subq	%rdx, %rax	# tmp84, tmp86
	subq	%rcx, %rax	# tmp82, tmp86
	addq	%rsi, %rax	# tmp80, tmp87
	movl	$0, -12512(%rbp,%rax,4)	#, already_seen
	.loc 1 2070 0 discriminator 2
	addl	$1, -12572(%rbp)	#, mach_mode
.L343:
	.loc 1 2070 0 is_stmt 0 discriminator 1
	cmpl	$58, -12572(%rbp)	#, mach_mode
	jle	.L344	#,
	.loc 1 2069 0 is_stmt 1
	addl	$1, -12576(%rbp)	#, reg
.L342:
	.loc 1 2069 0 is_stmt 0 discriminator 1
	cmpl	$52, -12576(%rbp)	#, reg
	jle	.L345	#,
.LBB58:
	.loc 1 2074 0 is_stmt 1
	movl	$0, -12564(%rbp)	#, bit_num_
	movq	-12544(%rbp), %rax	# canonical_elements, tmp88
	movl	4(%rax), %eax	# canonical_elements_11->size, tmp89
	movl	%eax, -12560(%rbp)	# tmp89, size_
	movq	-12544(%rbp), %rax	# canonical_elements, tmp93
	addq	$16, %rax	#, tmp92
	movq	%rax, -12536(%rbp)	# tmp92, ptr_
	movl	$0, -12568(%rbp)	#, word_num_
	jmp	.L346	#
.L353:
.LBB59:
	.loc 1 2074 0 is_stmt 0 discriminator 2
	movl	-12568(%rbp), %eax	# word_num_, D.13201
	leaq	0(,%rax,8), %rdx	#, D.13201
	movq	-12536(%rbp), %rax	# ptr_, tmp94
	addq	%rdx, %rax	# D.13201, D.13202
	movq	(%rax), %rax	# *_23, tmp95
	movq	%rax, -12552(%rbp)	# tmp95, word_
	cmpq	$0, -12552(%rbp)	#, word_
	je	.L347	#,
	.loc 1 2074 0 discriminator 1
	jmp	.L348	#
.L352:
.LBB60:
	.loc 1 2074 0 discriminator 2
	movl	-12564(%rbp), %eax	# bit_num_, bit_num_.139
	movl	$1, %edx	#, tmp96
	movl	%eax, %ecx	# bit_num_.139, tmp119
	salq	%cl, %rdx	# tmp119, tmp97
	movq	%rdx, %rax	# tmp97, tmp97
	movq	%rax, -12528(%rbp)	# tmp97, _mask
	movq	-12528(%rbp), %rax	# _mask, tmp98
	movq	-12552(%rbp), %rdx	# word_, tmp99
	andq	%rdx, %rax	# tmp99, D.13201
	testq	%rax, %rax	# D.13201
	je	.L349	#,
	.loc 1 2074 0 discriminator 1
	movq	-12528(%rbp), %rax	# _mask, tmp100
	notq	%rax	# D.13201
	andq	%rax, -12552(%rbp)	# D.13201, word_
	movl	-12568(%rbp), %eax	# word_num_, tmp101
	sall	$6, %eax	#, D.13200
	movl	%eax, %edx	# D.13200, D.13200
	movl	-12564(%rbp), %eax	# bit_num_, tmp102
	addl	%edx, %eax	# D.13200, D.13200
	movl	%eax, -12556(%rbp)	# D.13200, element_index
.LBB61:
	movl	-12556(%rbp), %eax	# element_index, tmp103
	movl	%eax, %edi	# tmp103,
	call	ssa_rename_from_lookup	#
	movq	%rax, -12520(%rbp)	# tmp104, hard_reg_rtx
	cmpq	$0, -12520(%rbp)	#, hard_reg_rtx
	je	.L350	#,
	movq	-12520(%rbp), %rax	# hard_reg_rtx, tmp105
	movl	8(%rax), %eax	# hard_reg_rtx_33->fld[0].rtuint, D.13200
	cmpl	$52, %eax	#, D.13200
	ja	.L350	#,
	movq	-12520(%rbp), %rax	# hard_reg_rtx, tmp106
	movl	8(%rax), %edx	# hard_reg_rtx_33->fld[0].rtuint, D.13200
	movq	-12520(%rbp), %rax	# hard_reg_rtx, tmp107
	movzbl	2(%rax), %eax	# hard_reg_rtx_33->mode, D.13203
	movzbl	%al, %eax	# D.13203, D.13200
	movl	%eax, %esi	# D.13200, tmp108
	movl	%edx, %ecx	# D.13200, tmp109
	movq	%rcx, %rdx	# tmp109, tmp110
	leaq	0(,%rdx,4), %rax	#, tmp111
	movq	%rax, %rdx	# tmp111, tmp110
	movq	%rdx, %rax	# tmp110, tmp112
	salq	$4, %rax	#, tmp112
	subq	%rdx, %rax	# tmp110, tmp112
	subq	%rcx, %rax	# tmp109, tmp112
	addq	%rsi, %rax	# tmp108, tmp113
	movl	-12512(%rbp,%rax,4), %eax	# already_seen, D.13199
	testl	%eax, %eax	# D.13199
	je	.L350	#,
	movl	$0, %eax	#, D.13199
	jmp	.L354	#
.L350:
.LBE61:
	.loc 1 2074 0 discriminator 2
	cmpq	$0, -12552(%rbp)	#, word_
	jne	.L349	#,
	.loc 1 2074 0 discriminator 1
	jmp	.L347	#
.L349:
.LBE60:
	.loc 1 2074 0 discriminator 2
	addl	$1, -12564(%rbp)	#, bit_num_
.L348:
	.loc 1 2074 0 discriminator 1
	cmpl	$63, -12564(%rbp)	#, bit_num_
	jbe	.L352	#,
.L347:
.LBE59:
	.loc 1 2074 0 discriminator 2
	addl	$1, -12568(%rbp)	#, word_num_
	movl	$0, -12564(%rbp)	#, bit_num_
.L346:
	.loc 1 2074 0 discriminator 1
	movl	-12568(%rbp), %eax	# word_num_, tmp114
	cmpl	-12560(%rbp), %eax	# size_, tmp114
	jb	.L353	#,
.LBE58:
	.loc 1 2085 0 is_stmt 1
	movq	-12544(%rbp), %rax	# canonical_elements, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free	#
	.loc 1 2087 0
	movl	$1, %eax	#, D.13199
.L354:
	.loc 1 2088 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	check_hard_regs_in_partition, .-check_hard_regs_in_partition
	.type	rename_equivalent_regs, @function
rename_equivalent_regs:
.LFB48:
	.loc 1 2096 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# reg_partition, reg_partition
	.loc 1 2099 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp74
	movl	%eax, -52(%rbp)	# tmp74, bb
	jmp	.L356	#
.L362:
.LBB62:
	.loc 1 2101 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.140
	movl	-52(%rbp), %edx	# bb, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	addq	$4, %rdx	#, tmp77
	movq	(%rax,%rdx,8), %rax	# basic_block_info.140_6->data.bb, tmp78
	movq	%rax, -32(%rbp)	# tmp78, b
	.loc 1 2102 0
	movq	-32(%rbp), %rax	# b, tmp79
	movq	(%rax), %rax	# b_7->head, tmp80
	movq	%rax, -40(%rbp)	# tmp80, next
	.loc 1 2103 0
	movq	-32(%rbp), %rax	# b, tmp81
	movq	8(%rax), %rax	# b_7->end, tmp82
	movq	%rax, -24(%rbp)	# tmp82, last
.L361:
	.loc 1 2108 0
	movq	-40(%rbp), %rax	# next, tmp83
	movq	%rax, -16(%rbp)	# tmp83, insn
	.loc 1 2109 0
	movq	-16(%rbp), %rax	# insn, tmp84
	movzwl	(%rax), %eax	# insn_10->code, D.13204
	movzwl	%ax, %eax	# D.13204, D.13205
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13206
	cmpb	$105, %al	#, D.13206
	jne	.L357	#,
	.loc 1 2111 0
	movq	-16(%rbp), %rax	# insn, tmp86
	leaq	32(%rax), %rcx	#, D.13207
	movq	-72(%rbp), %rax	# reg_partition, tmp87
	movq	%rax, %rdx	# tmp87,
	movl	$rename_equivalent_regs_in_insn, %esi	#,
	movq	%rcx, %rdi	# D.13207,
	call	for_each_rtx	#
	.loc 1 2114 0
	movq	-16(%rbp), %rax	# insn, tmp88
	leaq	56(%rax), %rcx	#, D.13207
	movq	-72(%rbp), %rax	# reg_partition, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$rename_equivalent_regs_in_insn, %esi	#,
	movq	%rcx, %rdi	# D.13207,
	call	for_each_rtx	#
	.loc 1 2118 0
	movq	-16(%rbp), %rax	# insn, tmp90
	movq	32(%rax), %rax	# insn_10->fld[3].rtx, D.13208
	movzwl	(%rax), %eax	# _17->code, D.13204
	cmpw	$24, %ax	#, D.13204
	jne	.L357	#,
.LBB63:
	.loc 1 2120 0
	movq	-16(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_10->fld[3].rtx, tmp92
	movq	%rax, -8(%rbp)	# tmp92, s
	.loc 1 2121 0
	movq	-8(%rbp), %rax	# s, tmp93
	movq	8(%rax), %rax	# s_19->fld[0].rtvec, D.13209
	movl	(%rax), %eax	# _20->num_elem, tmp94
	movl	%eax, -44(%rbp)	# tmp94, slen
	.loc 1 2124 0
	cmpl	$1, -44(%rbp)	#, slen
	jg	.L358	#,
	.loc 1 2125 0
	movl	$__FUNCTION__.11446, %edx	#,
	movl	$2125, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L358:
	.loc 1 2127 0
	movq	-8(%rbp), %rax	# s, tmp95
	movq	8(%rax), %rax	# s_19->fld[0].rtvec, D.13209
	movl	-44(%rbp), %edx	# slen, tmp96
	subl	$1, %edx	#, D.13205
	movslq	%edx, %rdx	# D.13205, tmp97
	movq	8(%rax,%rdx,8), %rdx	# _22->elem, D.13208
	movq	-16(%rbp), %rax	# insn, tmp98
	movq	%rdx, 32(%rax)	# D.13208, insn_10->fld[3].rtx
	.loc 1 2128 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L359	#
.L360:
	.loc 1 2129 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp99
	movq	8(%rax), %rax	# s_19->fld[0].rtvec, D.13209
	movl	-48(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# _27->elem, D.13208
	movq	-16(%rbp), %rdx	# insn, tmp102
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# D.13208,
	call	emit_insn_before	#
	.loc 1 2128 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L359:
	.loc 1 2128 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# slen, tmp103
	subl	$1, %eax	#, D.13205
	cmpl	-48(%rbp), %eax	# i, D.13205
	jg	.L360	#,
.L357:
.LBE63:
	.loc 1 2133 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp104
	movq	24(%rax), %rax	# insn_10->fld[2].rtx, tmp105
	movq	%rax, -40(%rbp)	# tmp105, next
	.loc 1 2135 0
	movq	-16(%rbp), %rax	# insn, tmp106
	cmpq	-24(%rbp), %rax	# last, tmp106
	jne	.L361	#,
.L356:
.LBE62:
	.loc 1 2099 0 discriminator 1
	subl	$1, -52(%rbp)	#, bb
	cmpl	$0, -52(%rbp)	#, bb
	jns	.L362	#,
	.loc 1 2137 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	rename_equivalent_regs, .-rename_equivalent_regs
	.globl	convert_from_ssa
	.type	convert_from_ssa, @function
convert_from_ssa:
.LFB49:
	.loc 1 2143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 2146 0
	call	get_insns	#
	movq	%rax, -16(%rbp)	# tmp85, insns
	.loc 1 2153 0
	movq	-16(%rbp), %rax	# insns, tmp86
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	life_analysis	#
	.loc 1 2157 0
	movl	conservative_reg_partition(%rip), %eax	# conservative_reg_partition, conservative_reg_partition.141
	testl	%eax, %eax	# conservative_reg_partition.141
	je	.L364	#,
	.loc 1 2158 0
	call	compute_conservative_reg_partition	#
	movq	%rax, -40(%rbp)	# tmp87, reg_partition
	jmp	.L365	#
.L364:
	.loc 1 2160 0
	call	compute_coalesced_reg_partition	#
	movq	%rax, -40(%rbp)	# tmp88, reg_partition
.L365:
	.loc 1 2162 0
	movq	-40(%rbp), %rax	# reg_partition, tmp89
	movq	%rax, %rdi	# tmp89,
	call	check_hard_regs_in_partition	#
	testl	%eax, %eax	# D.13210
	jne	.L366	#,
	.loc 1 2165 0
	movl	$__FUNCTION__.11460, %edx	#,
	movl	$2165, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L366:
	.loc 1 2167 0
	movq	-40(%rbp), %rax	# reg_partition, tmp90
	movq	%rax, %rdi	# tmp90,
	call	rename_equivalent_regs	#
	.loc 1 2170 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp91
	movl	%eax, -44(%rbp)	# tmp91, bb
	jmp	.L367	#
.L371:
.LBB64:
	.loc 1 2172 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.142
	movl	-44(%rbp), %edx	# bb, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	addq	$4, %rdx	#, tmp94
	movq	(%rax,%rdx,8), %rax	# basic_block_info.142_14->data.bb, tmp95
	movq	%rax, -8(%rbp)	# tmp95, b
	.loc 1 2175 0
	movq	-8(%rbp), %rax	# b, tmp96
	movq	32(%rax), %rax	# b_15->pred, tmp97
	movq	%rax, -32(%rbp)	# tmp97, e
	jmp	.L368	#
.L370:
	.loc 1 2176 0
	movq	-32(%rbp), %rax	# e, tmp98
	movq	16(%rax), %rax	# e_4->src, D.13211
	cmpq	$entry_exit_blocks, %rax	#, D.13211
	je	.L369	#,
	.loc 1 2177 0
	movq	-40(%rbp), %rdx	# reg_partition, tmp99
	movq	-32(%rbp), %rax	# e, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	eliminate_phi	#
.L369:
	.loc 1 2175 0
	movq	-32(%rbp), %rax	# e, tmp101
	movq	(%rax), %rax	# e_4->pred_next, tmp102
	movq	%rax, -32(%rbp)	# tmp102, e
.L368:
	.loc 1 2175 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L370	#,
.L367:
.LBE64:
	.loc 1 2170 0 is_stmt 1 discriminator 1
	subl	$1, -44(%rbp)	#, bb
	cmpl	$0, -44(%rbp)	#, bb
	jns	.L371	#,
	.loc 1 2180 0
	movq	-40(%rbp), %rax	# reg_partition, tmp103
	movq	%rax, %rdi	# tmp103,
	call	partition_delete	#
	.loc 1 2183 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp104
	movl	%eax, -44(%rbp)	# tmp104, bb
	jmp	.L372	#
.L379:
.LBB65:
	.loc 1 2185 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.143
	movl	-44(%rbp), %edx	# bb, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	addq	$4, %rdx	#, tmp107
	movq	(%rax,%rdx,8), %rax	# basic_block_info.143_21->data.bb, D.13211
	movq	(%rax), %rax	# _22->head, tmp108
	movq	%rax, -24(%rbp)	# tmp108, insn
.L378:
	.loc 1 2190 0
	cmpq	$0, -24(%rbp)	#, insn
	je	.L373	#,
	.loc 1 2190 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp109
	movzwl	(%rax), %eax	# insn_5->code, D.13212
	cmpw	$32, %ax	#, D.13212
	jne	.L373	#,
	movq	-24(%rbp), %rax	# insn, tmp110
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.13213
	movzwl	(%rax), %eax	# _25->code, D.13212
	cmpw	$47, %ax	#, D.13212
	jne	.L373	#,
	movq	-24(%rbp), %rax	# insn, tmp111
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.13213
	movq	16(%rax), %rax	# _27->fld[1].rtx, D.13213
	movzwl	(%rax), %eax	# _28->code, D.13212
	cmpw	$152, %ax	#, D.13212
	jne	.L373	#,
	.loc 1 2192 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.144
	movl	-44(%rbp), %edx	# bb, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	addq	$4, %rdx	#, tmp114
	movq	(%rax,%rdx,8), %rax	# basic_block_info.144_30->data.bb, D.13211
	movq	8(%rax), %rax	# _31->end, D.13213
	cmpq	-24(%rbp), %rax	# insn, D.13213
	jne	.L374	#,
	.loc 1 2193 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.145
	movl	-44(%rbp), %edx	# bb, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	addq	$4, %rdx	#, tmp117
	movq	(%rax,%rdx,8), %rax	# basic_block_info.145_33->data.bb, D.13211
	movq	-24(%rbp), %rdx	# insn, tmp118
	movq	16(%rdx), %rdx	# insn_5->fld[1].rtx, D.13213
	movq	%rdx, 8(%rax)	# D.13213, _34->end
.L374:
	.loc 1 2194 0
	movq	-24(%rbp), %rax	# insn, tmp119
	movq	%rax, %rdi	# tmp119,
	call	delete_insn	#
	movq	%rax, -24(%rbp)	# tmp120, insn
	.loc 1 2206 0
	jmp	.L378	#
.L373:
	.loc 1 2199 0
	movq	-24(%rbp), %rax	# insn, tmp121
	movzwl	(%rax), %eax	# insn_5->code, D.13212
	movzwl	%ax, %eax	# D.13212, D.13210
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13214
	cmpb	$105, %al	#, D.13214
	jne	.L376	#,
	.loc 1 2200 0
	jmp	.L372	#
.L376:
	.loc 1 2202 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.146
	movl	-44(%rbp), %edx	# bb, tmp124
	movslq	%edx, %rdx	# tmp124, tmp123
	addq	$4, %rdx	#, tmp125
	movq	(%rax,%rdx,8), %rax	# basic_block_info.146_40->data.bb, D.13211
	movq	8(%rax), %rax	# _41->end, D.13213
	cmpq	-24(%rbp), %rax	# insn, D.13213
	jne	.L377	#,
	.loc 1 2203 0
	jmp	.L372	#
.L377:
	.loc 1 2205 0
	movq	-24(%rbp), %rax	# insn, tmp126
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp127
	movq	%rax, -24(%rbp)	# tmp127, insn
	.loc 1 2206 0
	jmp	.L378	#
.L372:
.LBE65:
	.loc 1 2183 0 discriminator 1
	subl	$1, -44(%rbp)	#, bb
	cmpl	$0, -44(%rbp)	#, bb
	jns	.L379	#,
	.loc 1 2210 0
	call	commit_edge_insertions	#
	.loc 1 2212 0
	movl	$0, in_ssa_form(%rip)	#, in_ssa_form
	.loc 1 2214 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	count_or_remove_death_notes	#
	.loc 1 2217 0
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.147
	testq	%rax, %rax	# ssa_definition.147
	je	.L380	#,
	.loc 1 2217 0 is_stmt 0 discriminator 1
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.148
	movq	%rax, %rdi	# ssa_definition.148,
	call	free	#
	movq	$0, ssa_definition(%rip)	#, ssa_definition
.L380:
	.loc 1 2218 0 is_stmt 1
	call	ssa_rename_from_free	#
	.loc 1 2219 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	convert_from_ssa, .-convert_from_ssa
	.globl	for_each_successor_phi
	.type	for_each_successor_phi, @function
for_each_successor_phi:
.LFB50:
	.loc 1 2235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# bb, bb
	movq	%rsi, -80(%rbp)	# fn, fn
	movq	%rdx, -88(%rbp)	# data, data
	.loc 1 2238 0
	cmpq	$entry_exit_blocks+112, -72(%rbp)	#, bb
	jne	.L382	#,
	.loc 1 2239 0
	movl	$0, %eax	#, D.13215
	jmp	.L383	#
.L382:
	.loc 1 2242 0
	movq	-72(%rbp), %rax	# bb, tmp73
	movq	40(%rax), %rax	# bb_4(D)->succ, tmp74
	movq	%rax, -48(%rbp)	# tmp74, e
	jmp	.L384	#
.L393:
.LBB66:
	.loc 1 2246 0
	movq	-48(%rbp), %rax	# e, tmp75
	movq	24(%rax), %rax	# e_1->dest, tmp76
	movq	%rax, -32(%rbp)	# tmp76, successor
	.loc 1 2247 0
	cmpq	$entry_exit_blocks, -32(%rbp)	#, successor
	je	.L385	#,
	.loc 1 2248 0
	cmpq	$entry_exit_blocks+112, -32(%rbp)	#, successor
	jne	.L386	#,
.L385:
	.loc 1 2249 0
	jmp	.L387	#
.L386:
	.loc 1 2252 0
	movq	-32(%rbp), %rax	# successor, tmp77
	movq	%rax, %rdi	# tmp77,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -40(%rbp)	# tmp78, insn
	.loc 1 2254 0
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L388	#,
	.loc 1 2255 0
	jmp	.L387	#
.L388:
	.loc 1 2258 0
	jmp	.L389	#
.L392:
.LBB67:
	.loc 1 2261 0
	movq	-40(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, tmp80
	movq	%rax, -24(%rbp)	# tmp80, phi_set
	.loc 1 2262 0
	movq	-72(%rbp), %rax	# bb, tmp81
	movl	88(%rax), %edx	# bb_4(D)->index, D.13215
	movq	-24(%rbp), %rax	# phi_set, tmp82
	movl	%edx, %esi	# D.13215,
	movq	%rax, %rdi	# tmp82,
	call	phi_alternative	#
	movq	%rax, -16(%rbp)	# tmp83, alternative
	.loc 1 2268 0
	cmpq	$0, -16(%rbp)	#, alternative
	jne	.L390	#,
	.loc 1 2269 0
	jmp	.L391	#
.L390:
	.loc 1 2270 0
	movq	-16(%rbp), %rax	# alternative, tmp84
	movq	(%rax), %rax	# *alternative_17, tmp85
	movq	%rax, -8(%rbp)	# tmp85, phi_src
	.loc 1 2274 0
	movq	-8(%rbp), %rax	# phi_src, tmp86
	movl	8(%rax), %eax	# phi_src_18->fld[0].rtuint, D.13218
	.loc 1 2273 0
	movl	%eax, %edx	# D.13218, D.13215
	movq	-24(%rbp), %rax	# phi_set, tmp87
	movq	8(%rax), %rax	# phi_set_15->fld[0].rtx, D.13217
	movl	8(%rax), %eax	# _21->fld[0].rtuint, D.13218
	movl	%eax, %esi	# D.13218, D.13215
	movq	-88(%rbp), %rcx	# data, tmp88
	movq	-40(%rbp), %rdi	# insn, tmp89
	movq	-80(%rbp), %rax	# fn, tmp90
	call	*%rax	# tmp90
	movl	%eax, -52(%rbp)	# tmp91, result
	.loc 1 2277 0
	cmpl	$0, -52(%rbp)	#, result
	je	.L391	#,
	.loc 1 2278 0
	movl	-52(%rbp), %eax	# result, D.13215
	jmp	.L383	#
.L391:
.LBE67:
	.loc 1 2258 0
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp93
	movq	%rax, -40(%rbp)	# tmp93, insn
.L389:
	.loc 1 2258 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	je	.L387	#,
	.loc 1 2258 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp94
	movzwl	(%rax), %eax	# insn_2->code, D.13216
	cmpw	$32, %ax	#, D.13216
	jne	.L387	#,
	.loc 1 2258 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp95
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.13217
	movzwl	(%rax), %eax	# _10->code, D.13216
	cmpw	$47, %ax	#, D.13216
	jne	.L387	#,
	movq	-40(%rbp), %rax	# insn, tmp96
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.13217
	movq	16(%rax), %rax	# _12->fld[1].rtx, D.13217
	movzwl	(%rax), %eax	# _13->code, D.13216
	cmpw	$152, %ax	#, D.13216
	je	.L392	#,
.L387:
.LBE66:
	.loc 1 2242 0 is_stmt 1
	movq	-48(%rbp), %rax	# e, tmp97
	movq	8(%rax), %rax	# e_1->succ_next, tmp98
	movq	%rax, -48(%rbp)	# tmp98, e
.L384:
	.loc 1 2242 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L393	#,
	.loc 1 2282 0 is_stmt 1
	movl	$0, %eax	#, D.13215
.L383:
	.loc 1 2283 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	for_each_successor_phi, .-for_each_successor_phi
	.type	conflicting_hard_regs_p, @function
conflicting_hard_regs_p:
.LFB51:
	.loc 1 2294 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# reg1, reg1
	movl	%esi, -24(%rbp)	# reg2, reg2
	.loc 1 2295 0
	movl	-20(%rbp), %eax	# reg1, reg1.149
	movl	%eax, %edi	# reg1.149,
	call	original_register	#
	movl	%eax, -8(%rbp)	# D.13220, orig_reg1
	.loc 1 2296 0
	movl	-24(%rbp), %eax	# reg2, reg2.150
	movl	%eax, %edi	# reg2.150,
	call	original_register	#
	movl	%eax, -4(%rbp)	# D.13220, orig_reg2
	.loc 1 2297 0
	cmpl	$52, -8(%rbp)	#, orig_reg1
	jg	.L395	#,
	.loc 1 2297 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, orig_reg2
	jg	.L395	#,
	.loc 1 2298 0 is_stmt 1
	movl	-8(%rbp), %eax	# orig_reg1, tmp65
	cmpl	-4(%rbp), %eax	# orig_reg2, tmp65
	je	.L395	#,
	.loc 1 2299 0
	movl	$1, %eax	#, D.13219
	jmp	.L396	#
.L395:
	.loc 1 2300 0
	cmpl	$52, -8(%rbp)	#, orig_reg1
	jg	.L397	#,
	.loc 1 2300 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, orig_reg2
	jle	.L397	#,
	.loc 1 2301 0 is_stmt 1
	movl	$1, %eax	#, D.13219
	jmp	.L396	#
.L397:
	.loc 1 2302 0
	cmpl	$52, -8(%rbp)	#, orig_reg1
	jle	.L398	#,
	.loc 1 2302 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, orig_reg2
	jg	.L398	#,
	.loc 1 2303 0 is_stmt 1
	movl	$1, %eax	#, D.13219
	jmp	.L396	#
.L398:
	.loc 1 2305 0
	movl	$0, %eax	#, D.13219
.L396:
	.loc 1 2306 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	conflicting_hard_regs_p, .-conflicting_hard_regs_p
	.section	.rodata
	.align 16
	.type	__FUNCTION__.11032, @object
	.size	__FUNCTION__.11032, 22
__FUNCTION__.11032:
	.string	"create_delayed_rename"
	.align 16
	.type	__FUNCTION__.11039, @object
	.size	__FUNCTION__.11039, 22
__FUNCTION__.11039:
	.string	"apply_delayed_renames"
	.type	__FUNCTION__.11061, @object
	.size	__FUNCTION__.11061, 14
__FUNCTION__.11061:
	.string	"rename_insn_1"
	.type	__FUNCTION__.11089, @object
	.size	__FUNCTION__.11089, 13
__FUNCTION__.11089:
	.string	"rename_block"
	.type	__FUNCTION__.11115, @object
	.size	__FUNCTION__.11115, 15
__FUNCTION__.11115:
	.string	"convert_to_ssa"
	.type	__FUNCTION__.11234, @object
	.size	__FUNCTION__.11234, 14
__FUNCTION__.11234:
	.string	"eliminate_phi"
	.align 32
	.type	__FUNCTION__.11258, @object
	.size	__FUNCTION__.11258, 36
__FUNCTION__.11258:
	.string	"make_regs_equivalent_over_bad_edges"
	.align 32
	.type	__FUNCTION__.11285, @object
	.size	__FUNCTION__.11285, 44
__FUNCTION__.11285:
	.string	"make_equivalent_phi_alternatives_equivalent"
	.align 16
	.type	__FUNCTION__.11375, @object
	.size	__FUNCTION__.11375, 16
__FUNCTION__.11375:
	.string	"mark_reg_in_phi"
	.align 16
	.type	__FUNCTION__.11398, @object
	.size	__FUNCTION__.11398, 31
__FUNCTION__.11398:
	.string	"rename_equivalent_regs_in_insn"
	.align 16
	.type	__FUNCTION__.11446, @object
	.size	__FUNCTION__.11446, 23
__FUNCTION__.11446:
	.string	"rename_equivalent_regs"
	.align 16
	.type	__FUNCTION__.11460, @object
	.size	__FUNCTION__.11460, 17
__FUNCTION__.11460:
	.string	"convert_from_ssa"
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
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "partition.h"
	.file 15 "sbitmap.h"
	.file 16 "hashtab.h"
	.file 17 "function.h"
	.file 18 "ssa.h"
	.file 19 "output.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3f0b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF734
	.byte	0x1
	.long	.LASF735
	.long	.LASF736
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
	.long	0x266
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xd54
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
	.long	0xd64
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
	.long	.LASF737
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF100
	.byte	0x4
	.byte	0x4
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
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x25a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x4
	.value	0x684
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x4
	.value	0x685
	.long	0x139
	.byte	0x4
	.uleb128 0xf
	.long	.LASF46
	.byte	0x4
	.value	0x686
	.long	0x139
	.byte	0x8
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x687
	.long	0x139
	.byte	0xc
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.value	0x688
	.long	0x139
	.byte	0x10
	.uleb128 0xf
	.long	.LASF49
	.byte	0x4
	.value	0x689
	.long	0x139
	.byte	0x14
	.uleb128 0xf
	.long	.LASF50
	.byte	0x4
	.value	0x68a
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF51
	.byte	0x4
	.value	0x68b
	.long	0x1f1
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF52
	.uleb128 0x11
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x281
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF56
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF57
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF58
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF59
	.uleb128 0x7
	.long	.LASF60
	.byte	0x6
	.byte	0x8c
	.long	0x26f
	.uleb128 0x7
	.long	.LASF61
	.byte	0x6
	.byte	0x8d
	.long	0x26f
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF62
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.byte	0x30
	.long	0x2d2
	.uleb128 0x4
	.long	.LASF64
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x453
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0xfc
	.long	0x2ba
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0xfd
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xfe
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0xff
	.long	0x2ba
	.byte	0x20
	.uleb128 0xf
	.long	.LASF70
	.byte	0x8
	.value	0x100
	.long	0x2ba
	.byte	0x28
	.uleb128 0xf
	.long	.LASF71
	.byte	0x8
	.value	0x101
	.long	0x2ba
	.byte	0x30
	.uleb128 0xf
	.long	.LASF72
	.byte	0x8
	.value	0x102
	.long	0x2ba
	.byte	0x38
	.uleb128 0xf
	.long	.LASF73
	.byte	0x8
	.value	0x103
	.long	0x2ba
	.byte	0x40
	.uleb128 0xf
	.long	.LASF74
	.byte	0x8
	.value	0x105
	.long	0x2ba
	.byte	0x48
	.uleb128 0xf
	.long	.LASF75
	.byte	0x8
	.value	0x106
	.long	0x2ba
	.byte	0x50
	.uleb128 0xf
	.long	.LASF76
	.byte	0x8
	.value	0x107
	.long	0x2ba
	.byte	0x58
	.uleb128 0xf
	.long	.LASF77
	.byte	0x8
	.value	0x109
	.long	0x48b
	.byte	0x60
	.uleb128 0xf
	.long	.LASF78
	.byte	0x8
	.value	0x10b
	.long	0x491
	.byte	0x68
	.uleb128 0xf
	.long	.LASF79
	.byte	0x8
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF80
	.byte	0x8
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF81
	.byte	0x8
	.value	0x113
	.long	0x2a4
	.byte	0x78
	.uleb128 0xf
	.long	.LASF82
	.byte	0x8
	.value	0x117
	.long	0x28f
	.byte	0x80
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x118
	.long	0x296
	.byte	0x82
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x119
	.long	0x497
	.byte	0x83
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x11d
	.long	0x4a7
	.byte	0x88
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x126
	.long	0x2af
	.byte	0x90
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.value	0x12f
	.long	0x26d
	.byte	0x98
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x130
	.long	0x26d
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x131
	.long	0x26d
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x132
	.long	0x26d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x133
	.long	0x276
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x137
	.long	0x4ad
	.byte	0xc4
	.byte	0
	.uleb128 0x12
	.long	.LASF738
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF94
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x48b
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0xa2
	.long	0x48b
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0xa3
	.long	0x491
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45a
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2
	.uleb128 0x13
	.long	0x2c0
	.long	0x4a7
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x453
	.uleb128 0x13
	.long	0x2c0
	.long	0x4bd
	.uleb128 0x14
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c3
	.uleb128 0x15
	.long	0x2c0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF98
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF99
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x3
	.byte	0x8
	.long	0x4e2
	.uleb128 0x16
	.long	0x139
	.long	0x4f6
	.uleb128 0x17
	.long	0x4f6
	.uleb128 0x17
	.long	0x4f6
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4fc
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF101
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x672
	.uleb128 0xd
	.long	.LASF102
	.sleb128 0
	.uleb128 0xd
	.long	.LASF103
	.sleb128 1
	.uleb128 0xd
	.long	.LASF104
	.sleb128 2
	.uleb128 0xd
	.long	.LASF105
	.sleb128 3
	.uleb128 0xd
	.long	.LASF106
	.sleb128 4
	.uleb128 0xd
	.long	.LASF107
	.sleb128 5
	.uleb128 0xd
	.long	.LASF108
	.sleb128 6
	.uleb128 0xd
	.long	.LASF109
	.sleb128 7
	.uleb128 0xd
	.long	.LASF110
	.sleb128 8
	.uleb128 0xd
	.long	.LASF111
	.sleb128 9
	.uleb128 0xd
	.long	.LASF112
	.sleb128 10
	.uleb128 0xd
	.long	.LASF113
	.sleb128 11
	.uleb128 0xd
	.long	.LASF114
	.sleb128 12
	.uleb128 0xd
	.long	.LASF115
	.sleb128 13
	.uleb128 0xd
	.long	.LASF116
	.sleb128 14
	.uleb128 0xd
	.long	.LASF117
	.sleb128 15
	.uleb128 0xd
	.long	.LASF118
	.sleb128 16
	.uleb128 0xd
	.long	.LASF119
	.sleb128 17
	.uleb128 0xd
	.long	.LASF120
	.sleb128 18
	.uleb128 0xd
	.long	.LASF121
	.sleb128 19
	.uleb128 0xd
	.long	.LASF122
	.sleb128 20
	.uleb128 0xd
	.long	.LASF123
	.sleb128 21
	.uleb128 0xd
	.long	.LASF124
	.sleb128 22
	.uleb128 0xd
	.long	.LASF125
	.sleb128 23
	.uleb128 0xd
	.long	.LASF126
	.sleb128 24
	.uleb128 0xd
	.long	.LASF127
	.sleb128 25
	.uleb128 0xd
	.long	.LASF128
	.sleb128 26
	.uleb128 0xd
	.long	.LASF129
	.sleb128 27
	.uleb128 0xd
	.long	.LASF130
	.sleb128 28
	.uleb128 0xd
	.long	.LASF131
	.sleb128 29
	.uleb128 0xd
	.long	.LASF132
	.sleb128 30
	.uleb128 0xd
	.long	.LASF133
	.sleb128 31
	.uleb128 0xd
	.long	.LASF134
	.sleb128 32
	.uleb128 0xd
	.long	.LASF135
	.sleb128 33
	.uleb128 0xd
	.long	.LASF136
	.sleb128 34
	.uleb128 0xd
	.long	.LASF137
	.sleb128 35
	.uleb128 0xd
	.long	.LASF138
	.sleb128 36
	.uleb128 0xd
	.long	.LASF139
	.sleb128 37
	.uleb128 0xd
	.long	.LASF140
	.sleb128 38
	.uleb128 0xd
	.long	.LASF141
	.sleb128 39
	.uleb128 0xd
	.long	.LASF142
	.sleb128 40
	.uleb128 0xd
	.long	.LASF143
	.sleb128 41
	.uleb128 0xd
	.long	.LASF144
	.sleb128 42
	.uleb128 0xd
	.long	.LASF145
	.sleb128 43
	.uleb128 0xd
	.long	.LASF146
	.sleb128 44
	.uleb128 0xd
	.long	.LASF147
	.sleb128 45
	.uleb128 0xd
	.long	.LASF148
	.sleb128 46
	.uleb128 0xd
	.long	.LASF149
	.sleb128 47
	.uleb128 0xd
	.long	.LASF150
	.sleb128 48
	.uleb128 0xd
	.long	.LASF151
	.sleb128 49
	.uleb128 0xd
	.long	.LASF152
	.sleb128 50
	.uleb128 0xd
	.long	.LASF153
	.sleb128 51
	.uleb128 0xd
	.long	.LASF154
	.sleb128 52
	.uleb128 0xd
	.long	.LASF155
	.sleb128 53
	.uleb128 0xd
	.long	.LASF156
	.sleb128 54
	.uleb128 0xd
	.long	.LASF157
	.sleb128 55
	.uleb128 0xd
	.long	.LASF158
	.sleb128 56
	.uleb128 0xd
	.long	.LASF159
	.sleb128 57
	.uleb128 0xd
	.long	.LASF160
	.sleb128 58
	.uleb128 0xd
	.long	.LASF161
	.sleb128 59
	.byte	0
	.uleb128 0x19
	.long	.LASF162
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x6bb
	.uleb128 0xd
	.long	.LASF163
	.sleb128 0
	.uleb128 0xd
	.long	.LASF164
	.sleb128 1
	.uleb128 0xd
	.long	.LASF165
	.sleb128 2
	.uleb128 0xd
	.long	.LASF166
	.sleb128 3
	.uleb128 0xd
	.long	.LASF167
	.sleb128 4
	.uleb128 0xd
	.long	.LASF168
	.sleb128 5
	.uleb128 0xd
	.long	.LASF169
	.sleb128 6
	.uleb128 0xd
	.long	.LASF170
	.sleb128 7
	.uleb128 0xd
	.long	.LASF171
	.sleb128 8
	.uleb128 0xd
	.long	.LASF172
	.sleb128 9
	.byte	0
	.uleb128 0x19
	.long	.LASF173
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xab7
	.uleb128 0xd
	.long	.LASF174
	.sleb128 0
	.uleb128 0x1a
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF175
	.sleb128 2
	.uleb128 0xd
	.long	.LASF176
	.sleb128 3
	.uleb128 0xd
	.long	.LASF177
	.sleb128 4
	.uleb128 0xd
	.long	.LASF178
	.sleb128 5
	.uleb128 0xd
	.long	.LASF179
	.sleb128 6
	.uleb128 0xd
	.long	.LASF180
	.sleb128 7
	.uleb128 0xd
	.long	.LASF181
	.sleb128 8
	.uleb128 0xd
	.long	.LASF182
	.sleb128 9
	.uleb128 0xd
	.long	.LASF183
	.sleb128 10
	.uleb128 0xd
	.long	.LASF184
	.sleb128 11
	.uleb128 0xd
	.long	.LASF185
	.sleb128 12
	.uleb128 0xd
	.long	.LASF186
	.sleb128 13
	.uleb128 0xd
	.long	.LASF187
	.sleb128 14
	.uleb128 0xd
	.long	.LASF188
	.sleb128 15
	.uleb128 0xd
	.long	.LASF189
	.sleb128 16
	.uleb128 0xd
	.long	.LASF190
	.sleb128 17
	.uleb128 0xd
	.long	.LASF191
	.sleb128 18
	.uleb128 0xd
	.long	.LASF192
	.sleb128 19
	.uleb128 0xd
	.long	.LASF193
	.sleb128 20
	.uleb128 0xd
	.long	.LASF194
	.sleb128 21
	.uleb128 0xd
	.long	.LASF195
	.sleb128 22
	.uleb128 0xd
	.long	.LASF196
	.sleb128 23
	.uleb128 0xd
	.long	.LASF197
	.sleb128 24
	.uleb128 0xd
	.long	.LASF198
	.sleb128 25
	.uleb128 0xd
	.long	.LASF199
	.sleb128 26
	.uleb128 0xd
	.long	.LASF200
	.sleb128 27
	.uleb128 0xd
	.long	.LASF201
	.sleb128 28
	.uleb128 0xd
	.long	.LASF202
	.sleb128 29
	.uleb128 0xd
	.long	.LASF203
	.sleb128 30
	.uleb128 0xd
	.long	.LASF204
	.sleb128 31
	.uleb128 0xd
	.long	.LASF205
	.sleb128 32
	.uleb128 0xd
	.long	.LASF206
	.sleb128 33
	.uleb128 0xd
	.long	.LASF207
	.sleb128 34
	.uleb128 0xd
	.long	.LASF208
	.sleb128 35
	.uleb128 0xd
	.long	.LASF209
	.sleb128 36
	.uleb128 0xd
	.long	.LASF210
	.sleb128 37
	.uleb128 0xd
	.long	.LASF211
	.sleb128 38
	.uleb128 0xd
	.long	.LASF212
	.sleb128 39
	.uleb128 0xd
	.long	.LASF213
	.sleb128 40
	.uleb128 0xd
	.long	.LASF214
	.sleb128 41
	.uleb128 0xd
	.long	.LASF215
	.sleb128 42
	.uleb128 0xd
	.long	.LASF216
	.sleb128 43
	.uleb128 0xd
	.long	.LASF217
	.sleb128 44
	.uleb128 0xd
	.long	.LASF218
	.sleb128 45
	.uleb128 0xd
	.long	.LASF219
	.sleb128 46
	.uleb128 0x1a
	.string	"SET"
	.sleb128 47
	.uleb128 0x1a
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF220
	.sleb128 49
	.uleb128 0xd
	.long	.LASF221
	.sleb128 50
	.uleb128 0xd
	.long	.LASF222
	.sleb128 51
	.uleb128 0xd
	.long	.LASF223
	.sleb128 52
	.uleb128 0xd
	.long	.LASF224
	.sleb128 53
	.uleb128 0xd
	.long	.LASF225
	.sleb128 54
	.uleb128 0xd
	.long	.LASF226
	.sleb128 55
	.uleb128 0xd
	.long	.LASF227
	.sleb128 56
	.uleb128 0xd
	.long	.LASF228
	.sleb128 57
	.uleb128 0xd
	.long	.LASF229
	.sleb128 58
	.uleb128 0x1a
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF230
	.sleb128 60
	.uleb128 0x1a
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF231
	.sleb128 62
	.uleb128 0xd
	.long	.LASF232
	.sleb128 63
	.uleb128 0xd
	.long	.LASF233
	.sleb128 64
	.uleb128 0xd
	.long	.LASF234
	.sleb128 65
	.uleb128 0x1a
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF235
	.sleb128 67
	.uleb128 0xd
	.long	.LASF236
	.sleb128 68
	.uleb128 0x1a
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF237
	.sleb128 70
	.uleb128 0xd
	.long	.LASF238
	.sleb128 71
	.uleb128 0xd
	.long	.LASF239
	.sleb128 72
	.uleb128 0xd
	.long	.LASF240
	.sleb128 73
	.uleb128 0xd
	.long	.LASF241
	.sleb128 74
	.uleb128 0xd
	.long	.LASF242
	.sleb128 75
	.uleb128 0xd
	.long	.LASF243
	.sleb128 76
	.uleb128 0x1a
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF244
	.sleb128 78
	.uleb128 0x1a
	.string	"DIV"
	.sleb128 79
	.uleb128 0x1a
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF245
	.sleb128 81
	.uleb128 0xd
	.long	.LASF246
	.sleb128 82
	.uleb128 0x1a
	.string	"AND"
	.sleb128 83
	.uleb128 0x1a
	.string	"IOR"
	.sleb128 84
	.uleb128 0x1a
	.string	"XOR"
	.sleb128 85
	.uleb128 0x1a
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF247
	.sleb128 87
	.uleb128 0xd
	.long	.LASF248
	.sleb128 88
	.uleb128 0xd
	.long	.LASF249
	.sleb128 89
	.uleb128 0xd
	.long	.LASF250
	.sleb128 90
	.uleb128 0xd
	.long	.LASF251
	.sleb128 91
	.uleb128 0xd
	.long	.LASF252
	.sleb128 92
	.uleb128 0xd
	.long	.LASF253
	.sleb128 93
	.uleb128 0xd
	.long	.LASF254
	.sleb128 94
	.uleb128 0xd
	.long	.LASF255
	.sleb128 95
	.uleb128 0xd
	.long	.LASF256
	.sleb128 96
	.uleb128 0xd
	.long	.LASF257
	.sleb128 97
	.uleb128 0xd
	.long	.LASF258
	.sleb128 98
	.uleb128 0xd
	.long	.LASF259
	.sleb128 99
	.uleb128 0xd
	.long	.LASF260
	.sleb128 100
	.uleb128 0xd
	.long	.LASF261
	.sleb128 101
	.uleb128 0x1a
	.string	"NE"
	.sleb128 102
	.uleb128 0x1a
	.string	"EQ"
	.sleb128 103
	.uleb128 0x1a
	.string	"GE"
	.sleb128 104
	.uleb128 0x1a
	.string	"GT"
	.sleb128 105
	.uleb128 0x1a
	.string	"LE"
	.sleb128 106
	.uleb128 0x1a
	.string	"LT"
	.sleb128 107
	.uleb128 0x1a
	.string	"GEU"
	.sleb128 108
	.uleb128 0x1a
	.string	"GTU"
	.sleb128 109
	.uleb128 0x1a
	.string	"LEU"
	.sleb128 110
	.uleb128 0x1a
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF262
	.sleb128 112
	.uleb128 0xd
	.long	.LASF263
	.sleb128 113
	.uleb128 0xd
	.long	.LASF264
	.sleb128 114
	.uleb128 0xd
	.long	.LASF265
	.sleb128 115
	.uleb128 0xd
	.long	.LASF266
	.sleb128 116
	.uleb128 0xd
	.long	.LASF267
	.sleb128 117
	.uleb128 0xd
	.long	.LASF268
	.sleb128 118
	.uleb128 0xd
	.long	.LASF269
	.sleb128 119
	.uleb128 0xd
	.long	.LASF270
	.sleb128 120
	.uleb128 0xd
	.long	.LASF271
	.sleb128 121
	.uleb128 0xd
	.long	.LASF272
	.sleb128 122
	.uleb128 0xd
	.long	.LASF273
	.sleb128 123
	.uleb128 0xd
	.long	.LASF274
	.sleb128 124
	.uleb128 0xd
	.long	.LASF275
	.sleb128 125
	.uleb128 0x1a
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF276
	.sleb128 127
	.uleb128 0xd
	.long	.LASF277
	.sleb128 128
	.uleb128 0x1a
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF278
	.sleb128 130
	.uleb128 0x1a
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF279
	.sleb128 132
	.uleb128 0xd
	.long	.LASF280
	.sleb128 133
	.uleb128 0xd
	.long	.LASF281
	.sleb128 134
	.uleb128 0xd
	.long	.LASF282
	.sleb128 135
	.uleb128 0xd
	.long	.LASF283
	.sleb128 136
	.uleb128 0xd
	.long	.LASF284
	.sleb128 137
	.uleb128 0xd
	.long	.LASF285
	.sleb128 138
	.uleb128 0xd
	.long	.LASF286
	.sleb128 139
	.uleb128 0xd
	.long	.LASF287
	.sleb128 140
	.uleb128 0xd
	.long	.LASF288
	.sleb128 141
	.uleb128 0xd
	.long	.LASF289
	.sleb128 142
	.uleb128 0xd
	.long	.LASF290
	.sleb128 143
	.uleb128 0xd
	.long	.LASF291
	.sleb128 144
	.uleb128 0xd
	.long	.LASF292
	.sleb128 145
	.uleb128 0xd
	.long	.LASF293
	.sleb128 146
	.uleb128 0xd
	.long	.LASF294
	.sleb128 147
	.uleb128 0xd
	.long	.LASF295
	.sleb128 148
	.uleb128 0xd
	.long	.LASF296
	.sleb128 149
	.uleb128 0xd
	.long	.LASF297
	.sleb128 150
	.uleb128 0xd
	.long	.LASF298
	.sleb128 151
	.uleb128 0x1a
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF299
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb38
	.uleb128 0x5
	.long	.LASF300
	.byte	0x2
	.byte	0x47
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x49
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x4a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x2
	.byte	0x4c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x2
	.byte	0x4e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF305
	.byte	0x2
	.byte	0x50
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF306
	.byte	0x2
	.byte	0x53
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF307
	.byte	0x2
	.byte	0x55
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF308
	.byte	0x2
	.byte	0x56
	.long	0xab7
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb88
	.uleb128 0x8
	.long	.LASF309
	.byte	0x2
	.byte	0x5e
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF310
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF311
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF312
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF313
	.byte	0x2
	.byte	0x62
	.long	0x266
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF314
	.byte	0x2
	.byte	0x63
	.long	0xb43
	.uleb128 0x1c
	.long	.LASF383
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc2e
	.uleb128 0x1d
	.long	.LASF315
	.byte	0x2
	.byte	0x69
	.long	0x26f
	.uleb128 0x1d
	.long	.LASF316
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x1d
	.long	.LASF317
	.byte	0x2
	.byte	0x6b
	.long	0x266
	.uleb128 0x1d
	.long	.LASF318
	.byte	0x2
	.byte	0x6c
	.long	0x4bd
	.uleb128 0x1e
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1d
	.long	.LASF319
	.byte	0x2
	.byte	0x6f
	.long	0x4fd
	.uleb128 0x1d
	.long	.LASF320
	.byte	0x2
	.byte	0x70
	.long	0xb38
	.uleb128 0x1d
	.long	.LASF321
	.byte	0x2
	.byte	0x71
	.long	0xc33
	.uleb128 0x1d
	.long	.LASF322
	.byte	0x2
	.byte	0x72
	.long	0xc6a
	.uleb128 0x1d
	.long	.LASF323
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1e
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd3d
	.uleb128 0x1d
	.long	.LASF324
	.byte	0x2
	.byte	0x75
	.long	0xd43
	.byte	0
	.uleb128 0x1f
	.long	.LASF392
	.uleb128 0x3
	.byte	0x8
	.long	0xc2e
	.uleb128 0x4
	.long	.LASF325
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc6a
	.uleb128 0x8
	.long	.LASF326
	.byte	0xa
	.byte	0x35
	.long	0x1a91
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0xa
	.byte	0x36
	.long	0x1a91
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x37
	.long	0x266
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc39
	.uleb128 0x4
	.long	.LASF329
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd3d
	.uleb128 0x8
	.long	.LASF330
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
	.long	.LASF331
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xb7
	.long	0x1b4d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xb7
	.long	0x1b4d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xbc
	.long	0x1ab8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xc0
	.long	0x1ab8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xc6
	.long	0x1ab8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xc8
	.long	0x1ab8
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x26d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0xd4
	.long	0x1ac3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF342
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc70
	.uleb128 0x3
	.byte	0x8
	.long	0xb88
	.uleb128 0x7
	.long	.LASF344
	.byte	0x2
	.byte	0x76
	.long	0xb93
	.uleb128 0x13
	.long	0xd49
	.long	0xd64
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0xd74
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF345
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe23
	.uleb128 0xd
	.long	.LASF346
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF347
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF348
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF349
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF350
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF351
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF352
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF353
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF354
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF355
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF356
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF357
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF358
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF359
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF360
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF361
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF362
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF363
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF364
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF365
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF366
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF367
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF368
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF369
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xe7f
	.uleb128 0xd
	.long	.LASF370
	.sleb128 0
	.uleb128 0xd
	.long	.LASF371
	.sleb128 1
	.uleb128 0xd
	.long	.LASF372
	.sleb128 2
	.uleb128 0xd
	.long	.LASF373
	.sleb128 3
	.uleb128 0xd
	.long	.LASF374
	.sleb128 4
	.uleb128 0xd
	.long	.LASF375
	.sleb128 5
	.uleb128 0xd
	.long	.LASF376
	.sleb128 6
	.uleb128 0xd
	.long	.LASF377
	.sleb128 7
	.uleb128 0xd
	.long	.LASF378
	.sleb128 8
	.uleb128 0xd
	.long	.LASF379
	.sleb128 9
	.uleb128 0xd
	.long	.LASF380
	.sleb128 10
	.uleb128 0xd
	.long	.LASF381
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF382
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xea4
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
	.long	0x266
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF384
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0xf89
	.uleb128 0x1e
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x497
	.uleb128 0x1e
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0xf89
	.uleb128 0x1e
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0xf99
	.uleb128 0x1e
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0xfa9
	.uleb128 0x1e
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0xfb9
	.uleb128 0x1e
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0xfc9
	.uleb128 0x1e
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0xfd9
	.uleb128 0x1e
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0xfe9
	.uleb128 0x1d
	.long	.LASF385
	.byte	0xc
	.byte	0x43
	.long	0xfd9
	.uleb128 0x1d
	.long	.LASF386
	.byte	0xc
	.byte	0x44
	.long	0xfe9
	.uleb128 0x1d
	.long	.LASF387
	.byte	0xc
	.byte	0x45
	.long	0xff9
	.uleb128 0x1d
	.long	.LASF388
	.byte	0xc
	.byte	0x46
	.long	0x1009
	.uleb128 0x1e
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x1019
	.uleb128 0x1d
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x1029
	.uleb128 0x1d
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x1039
	.uleb128 0x1d
	.long	.LASF389
	.byte	0xc
	.byte	0x4a
	.long	0x1049
	.uleb128 0x1d
	.long	.LASF390
	.byte	0xc
	.byte	0x4b
	.long	0x1059
	.uleb128 0x1e
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x1074
	.uleb128 0x1d
	.long	.LASF391
	.byte	0xc
	.byte	0x4d
	.long	0x111b
	.uleb128 0x1e
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x112b
	.uleb128 0x1e
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x113b
	.byte	0
	.uleb128 0x13
	.long	0x288
	.long	0xf99
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x29d
	.long	0xfa9
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x28f
	.long	0xfb9
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x139
	.long	0xfc9
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x266
	.long	0xfd9
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x26f
	.long	0xfe9
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x281
	.long	0xff9
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x26d
	.long	0x1009
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2ba
	.long	0x1019
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x38
	.long	0x1029
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf8
	.long	0x1039
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x12e
	.long	0x1049
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xc6a
	.long	0x1059
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1069
	.long	0x1069
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x106f
	.uleb128 0x1f
	.long	.LASF393
	.uleb128 0x13
	.long	0x1084
	.long	0x1084
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x108a
	.uleb128 0x4
	.long	.LASF394
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x111b
	.uleb128 0x8
	.long	.LASF395
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF396
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF397
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF398
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF399
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF400
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF401
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF402
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF403
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF404
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF405
	.byte	0xd
	.byte	0x3d
	.long	0x2c0
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0xe7f
	.long	0x112b
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xd3d
	.long	0x113b
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x114b
	.long	0x114b
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1151
	.uleb128 0x1f
	.long	.LASF406
	.uleb128 0x7
	.long	.LASF407
	.byte	0xc
	.byte	0x50
	.long	0xea4
	.uleb128 0x4
	.long	.LASF408
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x11aa
	.uleb128 0x8
	.long	.LASF409
	.byte	0xc
	.byte	0x54
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF410
	.byte	0xc
	.byte	0x55
	.long	0x276
	.byte	0x8
	.uleb128 0x8
	.long	.LASF411
	.byte	0xc
	.byte	0x57
	.long	0x276
	.byte	0x10
	.uleb128 0x8
	.long	.LASF412
	.byte	0xc
	.byte	0x58
	.long	0x4bd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF413
	.byte	0xc
	.byte	0x59
	.long	0x1156
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF414
	.byte	0xc
	.byte	0x5a
	.long	0x11b5
	.uleb128 0x3
	.byte	0x8
	.long	0x1161
	.uleb128 0x4
	.long	.LASF415
	.byte	0x18
	.byte	0xe
	.byte	0x2e
	.long	0x11ec
	.uleb128 0x8
	.long	.LASF416
	.byte	0xe
	.byte	0x32
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF417
	.byte	0xe
	.byte	0x35
	.long	0x11ec
	.byte	0x8
	.uleb128 0x8
	.long	.LASF418
	.byte	0xe
	.byte	0x38
	.long	0x266
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11bb
	.uleb128 0x4
	.long	.LASF419
	.byte	0x20
	.byte	0xe
	.byte	0x3b
	.long	0x1217
	.uleb128 0x8
	.long	.LASF409
	.byte	0xe
	.byte	0x3e
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF420
	.byte	0xe
	.byte	0x40
	.long	0x1217
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	0x11bb
	.long	0x1227
	.uleb128 0x14
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF421
	.byte	0xe
	.byte	0x41
	.long	0x1232
	.uleb128 0x3
	.byte	0x8
	.long	0x11f2
	.uleb128 0x4
	.long	.LASF422
	.byte	0x18
	.byte	0xf
	.byte	0x1f
	.long	0x1275
	.uleb128 0x8
	.long	.LASF423
	.byte	0xf
	.byte	0x21
	.long	0x266
	.byte	0
	.uleb128 0x8
	.long	.LASF312
	.byte	0xf
	.byte	0x22
	.long	0x266
	.byte	0x4
	.uleb128 0x8
	.long	.LASF424
	.byte	0xf
	.byte	0x23
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF425
	.byte	0xf
	.byte	0x24
	.long	0xfe9
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF426
	.byte	0xf
	.byte	0x25
	.long	0x1280
	.uleb128 0x3
	.byte	0x8
	.long	0x1238
	.uleb128 0x3
	.byte	0x8
	.long	0x281
	.uleb128 0x7
	.long	.LASF427
	.byte	0x10
	.byte	0x2a
	.long	0x266
	.uleb128 0x7
	.long	.LASF428
	.byte	0x10
	.byte	0x2f
	.long	0x12a2
	.uleb128 0x3
	.byte	0x8
	.long	0x12a8
	.uleb128 0x16
	.long	0x128c
	.long	0x12b7
	.uleb128 0x17
	.long	0x4f6
	.byte	0
	.uleb128 0x7
	.long	.LASF429
	.byte	0x10
	.byte	0x36
	.long	0x4dc
	.uleb128 0x7
	.long	.LASF430
	.byte	0x10
	.byte	0x3a
	.long	0x12cd
	.uleb128 0x3
	.byte	0x8
	.long	0x12d3
	.uleb128 0x20
	.long	0x12de
	.uleb128 0x17
	.long	0x26d
	.byte	0
	.uleb128 0x7
	.long	.LASF431
	.byte	0x10
	.byte	0x40
	.long	0x12e9
	.uleb128 0x3
	.byte	0x8
	.long	0x12ef
	.uleb128 0x16
	.long	0x139
	.long	0x1303
	.uleb128 0x17
	.long	0x1303
	.uleb128 0x17
	.long	0x26d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x26d
	.uleb128 0x4
	.long	.LASF432
	.byte	0x48
	.byte	0x10
	.byte	0x47
	.long	0x138e
	.uleb128 0x8
	.long	.LASF433
	.byte	0x10
	.byte	0x4a
	.long	0x1297
	.byte	0
	.uleb128 0x8
	.long	.LASF434
	.byte	0x10
	.byte	0x4d
	.long	0x12b7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF435
	.byte	0x10
	.byte	0x50
	.long	0x12c2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF436
	.byte	0x10
	.byte	0x53
	.long	0x1303
	.byte	0x18
	.uleb128 0x8
	.long	.LASF312
	.byte	0x10
	.byte	0x56
	.long	0x276
	.byte	0x20
	.uleb128 0x8
	.long	.LASF437
	.byte	0x10
	.byte	0x59
	.long	0x276
	.byte	0x28
	.uleb128 0x8
	.long	.LASF438
	.byte	0x10
	.byte	0x5c
	.long	0x276
	.byte	0x30
	.uleb128 0x8
	.long	.LASF439
	.byte	0x10
	.byte	0x60
	.long	0x266
	.byte	0x38
	.uleb128 0x8
	.long	.LASF440
	.byte	0x10
	.byte	0x64
	.long	0x266
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF441
	.byte	0x10
	.byte	0x68
	.long	0x139
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF442
	.byte	0x10
	.byte	0x6b
	.long	0x1399
	.uleb128 0x3
	.byte	0x8
	.long	0x1309
	.uleb128 0x19
	.long	.LASF443
	.byte	0x4
	.byte	0x10
	.byte	0x6e
	.long	0x13b8
	.uleb128 0xd
	.long	.LASF444
	.sleb128 0
	.uleb128 0xd
	.long	.LASF445
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF446
	.byte	0x18
	.byte	0x11
	.byte	0x16
	.long	0x13f5
	.uleb128 0x8
	.long	.LASF447
	.byte	0x11
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF448
	.byte	0x11
	.byte	0x19
	.long	0x4fd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF449
	.byte	0x11
	.byte	0x1a
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF417
	.byte	0x11
	.byte	0x1b
	.long	0x13f5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13b8
	.uleb128 0x4
	.long	.LASF450
	.byte	0x20
	.byte	0x11
	.byte	0x23
	.long	0x1438
	.uleb128 0x8
	.long	.LASF326
	.byte	0x11
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF451
	.byte	0x11
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF452
	.byte	0x11
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF417
	.byte	0x11
	.byte	0x28
	.long	0x1438
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13fb
	.uleb128 0x4
	.long	.LASF453
	.byte	0x58
	.byte	0x11
	.byte	0x35
	.long	0x14e7
	.uleb128 0x8
	.long	.LASF454
	.byte	0x11
	.byte	0x39
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF455
	.byte	0x11
	.byte	0x3c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF456
	.byte	0x11
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF457
	.byte	0x11
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF452
	.byte	0x11
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF450
	.byte	0x11
	.byte	0x4f
	.long	0x1438
	.byte	0x20
	.uleb128 0x8
	.long	.LASF458
	.byte	0x11
	.byte	0x53
	.long	0x139
	.byte	0x28
	.uleb128 0x8
	.long	.LASF459
	.byte	0x11
	.byte	0x57
	.long	0x139
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF460
	.byte	0x11
	.byte	0x58
	.long	0x4bd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF461
	.byte	0x11
	.byte	0x5e
	.long	0x139
	.byte	0x38
	.uleb128 0x8
	.long	.LASF462
	.byte	0x11
	.byte	0x63
	.long	0x14e7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF463
	.byte	0x11
	.byte	0x67
	.long	0x14ed
	.byte	0x48
	.uleb128 0x8
	.long	.LASF464
	.byte	0x11
	.byte	0x6b
	.long	0xe23
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x288
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF465
	.byte	0x30
	.byte	0x11
	.byte	0x77
	.long	0x1554
	.uleb128 0x8
	.long	.LASF466
	.byte	0x11
	.byte	0x7b
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF467
	.byte	0x11
	.byte	0x8c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF468
	.byte	0x11
	.byte	0x92
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF469
	.byte	0x11
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF470
	.byte	0x11
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF471
	.byte	0x11
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF472
	.byte	0x11
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x21
	.long	.LASF473
	.value	0x1b0
	.byte	0x11
	.byte	0xae
	.long	0x19d4
	.uleb128 0x6
	.string	"eh"
	.byte	0x11
	.byte	0xb0
	.long	0x19d9
	.byte	0
	.uleb128 0x8
	.long	.LASF474
	.byte	0x11
	.byte	0xb1
	.long	0x19e4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF310
	.byte	0x11
	.byte	0xb2
	.long	0x19ea
	.byte	0x10
	.uleb128 0x8
	.long	.LASF475
	.byte	0x11
	.byte	0xb3
	.long	0x19f0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF476
	.byte	0x11
	.byte	0xb4
	.long	0x19fb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF412
	.byte	0x11
	.byte	0xb9
	.long	0x4bd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF477
	.byte	0x11
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF478
	.byte	0x11
	.byte	0xbf
	.long	0x1a01
	.byte	0x38
	.uleb128 0x8
	.long	.LASF479
	.byte	0x11
	.byte	0xc4
	.long	0x139
	.byte	0x40
	.uleb128 0x8
	.long	.LASF480
	.byte	0x11
	.byte	0xc9
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF481
	.byte	0x11
	.byte	0xce
	.long	0x139
	.byte	0x48
	.uleb128 0x8
	.long	.LASF482
	.byte	0x11
	.byte	0xd2
	.long	0x139
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF483
	.byte	0x11
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF484
	.byte	0x11
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF485
	.byte	0x11
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF486
	.byte	0x11
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF487
	.byte	0x11
	.byte	0xe7
	.long	0x4bd
	.byte	0x88
	.uleb128 0x8
	.long	.LASF488
	.byte	0x11
	.byte	0xeb
	.long	0x1a0c
	.byte	0x90
	.uleb128 0x8
	.long	.LASF489
	.byte	0x11
	.byte	0xee
	.long	0x139
	.byte	0x98
	.uleb128 0x8
	.long	.LASF490
	.byte	0x11
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF491
	.byte	0x11
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF492
	.byte	0x11
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF493
	.byte	0x11
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF494
	.byte	0x11
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF495
	.byte	0x11
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xf
	.long	.LASF496
	.byte	0x11
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF497
	.byte	0x11
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF498
	.byte	0x11
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF499
	.byte	0x11
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF500
	.byte	0x11
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF501
	.byte	0x11
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x22
	.long	.LASF502
	.byte	0x11
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x22
	.long	.LASF503
	.byte	0x11
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x22
	.long	.LASF504
	.byte	0x11
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x22
	.long	.LASF505
	.byte	0x11
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x22
	.long	.LASF506
	.byte	0x11
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x22
	.long	.LASF507
	.byte	0x11
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x22
	.long	.LASF508
	.byte	0x11
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x22
	.long	.LASF509
	.byte	0x11
	.value	0x14e
	.long	0xe23
	.value	0x138
	.uleb128 0x22
	.long	.LASF510
	.byte	0x11
	.value	0x151
	.long	0x1a17
	.value	0x140
	.uleb128 0x22
	.long	.LASF511
	.byte	0x11
	.value	0x154
	.long	0x139
	.value	0x148
	.uleb128 0x22
	.long	.LASF512
	.byte	0x11
	.value	0x157
	.long	0x139
	.value	0x14c
	.uleb128 0x22
	.long	.LASF513
	.byte	0x11
	.value	0x15d
	.long	0x139
	.value	0x150
	.uleb128 0x22
	.long	.LASF514
	.byte	0x11
	.value	0x161
	.long	0x13f5
	.value	0x158
	.uleb128 0x22
	.long	.LASF515
	.byte	0x11
	.value	0x164
	.long	0x139
	.value	0x160
	.uleb128 0x22
	.long	.LASF516
	.byte	0x11
	.value	0x165
	.long	0x139
	.value	0x164
	.uleb128 0x22
	.long	.LASF517
	.byte	0x11
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x22
	.long	.LASF518
	.byte	0x11
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x22
	.long	.LASF519
	.byte	0x11
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x22
	.long	.LASF520
	.byte	0x11
	.value	0x16d
	.long	0x139
	.value	0x180
	.uleb128 0x22
	.long	.LASF521
	.byte	0x11
	.value	0x170
	.long	0x139
	.value	0x184
	.uleb128 0x22
	.long	.LASF522
	.byte	0x11
	.value	0x175
	.long	0x1a22
	.value	0x188
	.uleb128 0x22
	.long	.LASF523
	.byte	0x11
	.value	0x177
	.long	0x139
	.value	0x190
	.uleb128 0x22
	.long	.LASF524
	.byte	0x11
	.value	0x179
	.long	0x139
	.value	0x194
	.uleb128 0x22
	.long	.LASF525
	.byte	0x11
	.value	0x17c
	.long	0x1a2d
	.value	0x198
	.uleb128 0x22
	.long	.LASF526
	.byte	0x11
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x23
	.long	.LASF527
	.byte	0x11
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF528
	.byte	0x11
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF529
	.byte	0x11
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF530
	.byte	0x11
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF531
	.byte	0x11
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF532
	.byte	0x11
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF533
	.byte	0x11
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF534
	.byte	0x11
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF535
	.byte	0x11
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF536
	.byte	0x11
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF537
	.byte	0x11
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF538
	.byte	0x11
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF539
	.byte	0x11
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF540
	.byte	0x11
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF541
	.byte	0x11
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF542
	.byte	0x11
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF543
	.byte	0x11
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF544
	.byte	0x11
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF545
	.byte	0x11
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF546
	.byte	0x11
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF547
	.byte	0x11
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF548
	.byte	0x11
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF549
	.byte	0x11
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF550
	.byte	0x11
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1f
	.long	.LASF551
	.uleb128 0x3
	.byte	0x8
	.long	0x19d4
	.uleb128 0x1f
	.long	.LASF552
	.uleb128 0x3
	.byte	0x8
	.long	0x19df
	.uleb128 0x3
	.byte	0x8
	.long	0x14f3
	.uleb128 0x3
	.byte	0x8
	.long	0x143e
	.uleb128 0x1f
	.long	.LASF553
	.uleb128 0x3
	.byte	0x8
	.long	0x19f6
	.uleb128 0x3
	.byte	0x8
	.long	0x1554
	.uleb128 0x1f
	.long	.LASF554
	.uleb128 0x3
	.byte	0x8
	.long	0x1a07
	.uleb128 0x1f
	.long	.LASF555
	.uleb128 0x3
	.byte	0x8
	.long	0x1a12
	.uleb128 0x1f
	.long	.LASF556
	.uleb128 0x3
	.byte	0x8
	.long	0x1a1d
	.uleb128 0x1f
	.long	.LASF557
	.uleb128 0x3
	.byte	0x8
	.long	0x1a28
	.uleb128 0x4
	.long	.LASF558
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1a70
	.uleb128 0x8
	.long	.LASF417
	.byte	0xa
	.byte	0x2d
	.long	0x1a70
	.byte	0
	.uleb128 0x8
	.long	.LASF559
	.byte	0xa
	.byte	0x2e
	.long	0x1a70
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x2f
	.long	0x266
	.byte	0x10
	.uleb128 0x8
	.long	.LASF560
	.byte	0xa
	.byte	0x30
	.long	0x1a76
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a33
	.uleb128 0x13
	.long	0x281
	.long	0x1a86
	.uleb128 0x14
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF561
	.byte	0xa
	.byte	0x31
	.long	0x1a33
	.uleb128 0x3
	.byte	0x8
	.long	0x1a86
	.uleb128 0x7
	.long	.LASF562
	.byte	0xa
	.byte	0x39
	.long	0xc39
	.uleb128 0x7
	.long	.LASF389
	.byte	0xa
	.byte	0x39
	.long	0xc6a
	.uleb128 0x7
	.long	.LASF563
	.byte	0xb
	.byte	0x1f
	.long	0x1a97
	.uleb128 0x7
	.long	.LASF564
	.byte	0xb
	.byte	0x21
	.long	0x1aa2
	.uleb128 0x7
	.long	.LASF565
	.byte	0xb
	.byte	0x74
	.long	0x26f
	.uleb128 0x4
	.long	.LASF566
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1b47
	.uleb128 0x8
	.long	.LASF567
	.byte	0xb
	.byte	0x79
	.long	0x1b47
	.byte	0
	.uleb128 0x8
	.long	.LASF568
	.byte	0xb
	.byte	0x79
	.long	0x1b47
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd3d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF569
	.byte	0xb
	.byte	0x7c
	.long	0xd3d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF570
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x26d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF571
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x86
	.long	0x1ac3
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1ace
	.uleb128 0x7
	.long	.LASF572
	.byte	0xb
	.byte	0x88
	.long	0x1b47
	.uleb128 0x7
	.long	.LASF404
	.byte	0xb
	.byte	0xdb
	.long	0xd3d
	.uleb128 0x3
	.byte	0x8
	.long	0x1275
	.uleb128 0x10
	.long	.LASF573
	.byte	0xb
	.value	0x2a1
	.long	0x1b75
	.uleb128 0x3
	.byte	0x8
	.long	0x1b7b
	.uleb128 0x1f
	.long	.LASF574
	.uleb128 0xc
	.long	.LASF575
	.byte	0x4
	.byte	0xb
	.value	0x2c1
	.long	0x1b9a
	.uleb128 0xd
	.long	.LASF576
	.sleb128 0
	.uleb128 0xd
	.long	.LASF577
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF578
	.byte	0x12
	.byte	0x1a
	.long	0x1ba5
	.uleb128 0x3
	.byte	0x8
	.long	0x1bab
	.uleb128 0x16
	.long	0x139
	.long	0x1bc9
	.uleb128 0x17
	.long	0x2d
	.uleb128 0x17
	.long	0x139
	.uleb128 0x17
	.long	0x139
	.uleb128 0x17
	.long	0x26d
	.byte	0
	.uleb128 0x1b
	.byte	0x10
	.byte	0x1
	.byte	0x75
	.long	0x1bea
	.uleb128 0x6
	.string	"reg"
	.byte	0x1
	.byte	0x76
	.long	0x266
	.byte	0
	.uleb128 0x8
	.long	.LASF579
	.byte	0x1
	.byte	0x77
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF580
	.byte	0x1
	.byte	0x78
	.long	0x1bc9
	.uleb128 0x4
	.long	.LASF581
	.byte	0x10
	.byte	0x1
	.byte	0x7a
	.long	0x1c1a
	.uleb128 0x8
	.long	.LASF582
	.byte	0x1
	.byte	0x7b
	.long	0x1275
	.byte	0
	.uleb128 0x8
	.long	.LASF583
	.byte	0x1
	.byte	0x7c
	.long	0x1227
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF584
	.byte	0x30
	.byte	0x1
	.value	0x2c5
	.long	0x1c76
	.uleb128 0xf
	.long	.LASF417
	.byte	0x1
	.value	0x2c7
	.long	0x1c76
	.byte	0
	.uleb128 0xf
	.long	.LASF585
	.byte	0x1
	.value	0x2c9
	.long	0xe23
	.byte	0x8
	.uleb128 0xf
	.long	.LASF586
	.byte	0x1
	.value	0x2cb
	.long	0x2d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF587
	.byte	0x1
	.value	0x2ce
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF588
	.byte	0x1
	.value	0x2d1
	.long	0x2d
	.byte	0x20
	.uleb128 0xf
	.long	.LASF589
	.byte	0x1
	.value	0x2d3
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c1a
	.uleb128 0xe
	.long	.LASF590
	.byte	0x18
	.byte	0x1
	.value	0x2d8
	.long	0x1cb1
	.uleb128 0xf
	.long	.LASF591
	.byte	0x1
	.value	0x2da
	.long	0x1c76
	.byte	0
	.uleb128 0xf
	.long	.LASF592
	.byte	0x1
	.value	0x2db
	.long	0x1c76
	.byte	0x8
	.uleb128 0xf
	.long	.LASF593
	.byte	0x1
	.value	0x2dc
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.long	.LASF594
	.byte	0x18
	.byte	0x1
	.value	0x6fd
	.long	0x1ce4
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x6ff
	.long	0x1227
	.byte	0
	.uleb128 0xf
	.long	.LASF595
	.byte	0x1
	.value	0x700
	.long	0x1b69
	.byte	0x8
	.uleb128 0xf
	.long	.LASF596
	.byte	0x1
	.value	0x701
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x25
	.long	.LASF597
	.byte	0x1
	.byte	0xf4
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d14
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0xf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF603
	.byte	0x1
	.value	0x100
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d4f
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x101
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0x102
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF609
	.byte	0x1
	.value	0x10d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF598
	.byte	0x1
	.value	0x11a
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db9
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x11b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF599
	.byte	0x1
	.value	0x11d
	.long	0x1bea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF600
	.byte	0x1
	.value	0x11e
	.long	0x1db9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bea
	.uleb128 0x2a
	.long	.LASF601
	.byte	0x1
	.value	0x12b
	.long	0x266
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e00
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x12c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF602
	.byte	0x1
	.value	0x12e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF604
	.byte	0x1
	.value	0x135
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e59
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x136
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0x137
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF605
	.byte	0x1
	.value	0x139
	.long	0x1303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF599
	.byte	0x1
	.value	0x13a
	.long	0x1db9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF606
	.byte	0x1
	.value	0x149
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eb4
	.uleb128 0x2c
	.long	.LASF607
	.byte	0x1
	.value	0x14b
	.long	0x12de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF582
	.byte	0x1
	.value	0x14c
	.long	0x1275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x14d
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF608
	.byte	0x1
	.value	0x14f
	.long	0x1bf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF610
	.byte	0x1
	.value	0x158
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF739
	.byte	0x1
	.value	0x161
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF611
	.byte	0x1
	.value	0x16b
	.long	0x139
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f36
	.uleb128 0x2c
	.long	.LASF605
	.byte	0x1
	.value	0x16c
	.long	0x1303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x16d
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x16f
	.long	0x1db9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF612
	.byte	0x1
	.value	0x178
	.long	0x128c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f68
	.uleb128 0x2c
	.long	.LASF599
	.byte	0x1
	.value	0x179
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF613
	.byte	0x1
	.value	0x181
	.long	0x139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa9
	.uleb128 0x2c
	.long	.LASF614
	.byte	0x1
	.value	0x182
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF615
	.byte	0x1
	.value	0x183
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF616
	.byte	0x1
	.value	0x18c
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd7
	.uleb128 0x2c
	.long	.LASF599
	.byte	0x1
	.value	0x18d
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF617
	.byte	0x1
	.value	0x196
	.long	0xe23
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2032
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x197
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x198
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF618
	.byte	0x1
	.value	0x19a
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"v"
	.byte	0x1
	.value	0x19b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF707
	.byte	0x1
	.value	0x1a9
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ab
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF619
	.byte	0x1
	.value	0x1ab
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF618
	.byte	0x1
	.value	0x1ad
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x1ae
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"v"
	.byte	0x1
	.value	0x1af
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x1af
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF620
	.byte	0x1
	.value	0x1ca
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f7
	.uleb128 0x2c
	.long	.LASF569
	.byte	0x1
	.value	0x1cb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x1cd
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF621
	.byte	0x1
	.value	0x1d5
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2170
	.uleb128 0x2c
	.long	.LASF622
	.byte	0x1
	.value	0x1d6
	.long	0x1b63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x1d7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x1d9
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x1e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF451
	.byte	0x1
	.value	0x1e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF623
	.byte	0x1
	.value	0x203
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a7
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x204
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x205
	.long	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x206
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF626
	.byte	0x1
	.value	0x207
	.long	0x1275
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x209
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x20a
	.long	0x1b4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x20b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x224
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x225
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x225
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x225
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x225
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x225
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x225
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF655
	.byte	0x1
	.value	0x22e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f3
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x22f
	.long	0x1b63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x230
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF626
	.byte	0x1
	.value	0x232
	.long	0x1275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF633
	.byte	0x1
	.value	0x243
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2451
	.uleb128 0x2c
	.long	.LASF634
	.byte	0x1
	.value	0x244
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x245
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF622
	.byte	0x1
	.value	0x246
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x247
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.long	.LASF635
	.byte	0x1
	.value	0x249
	.long	0x1275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x24a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF636
	.byte	0x1
	.value	0x24a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2f
	.string	"idf"
	.byte	0x1
	.value	0x250
	.long	0x1275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x251
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF596
	.byte	0x1
	.value	0x251
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x261
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x261
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x261
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x261
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x261
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x261
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF637
	.byte	0x1
	.value	0x27d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2515
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x27e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x27e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x280
	.long	0x1b58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x281
	.long	0x1b4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF638
	.byte	0x1
	.value	0x282
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x282
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"vec"
	.byte	0x1
	.value	0x283
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"phi"
	.byte	0x1
	.value	0x284
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x284
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x285
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF640
	.byte	0x1
	.value	0x286
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2d
	.long	.LASF641
	.byte	0x1
	.value	0x2aa
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2622
	.uleb128 0x2c
	.long	.LASF634
	.byte	0x1
	.value	0x2ab
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF622
	.byte	0x1
	.value	0x2ac
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x2ad
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x2af
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x2b4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x2b5
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x2b5
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x2b5
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x2b5
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x2b5
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x2b5
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF642
	.byte	0x1
	.value	0x2e1
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x267d
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x2e2
	.long	0x267d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF585
	.byte	0x1
	.value	0x2e3
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"r"
	.byte	0x1
	.value	0x2e5
	.long	0x1c76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF645
	.long	0x2693
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11032
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c7c
	.uleb128 0x13
	.long	0x2c0
	.long	0x2693
	.uleb128 0x14
	.long	0x140
	.byte	0x15
	.byte	0
	.uleb128 0x15
	.long	0x2683
	.uleb128 0x2d
	.long	.LASF643
	.byte	0x1
	.value	0x301
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2735
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x302
	.long	0x267d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"r"
	.byte	0x1
	.value	0x304
	.long	0x1c76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF644
	.byte	0x1
	.value	0x305
	.long	0x1c76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF645
	.long	0x2735
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11039
	.uleb128 0x32
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2b
	.long	.LASF646
	.byte	0x1
	.value	0x309
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2b
	.long	.LASF647
	.byte	0x1
	.value	0x31f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2683
	.uleb128 0x2a
	.long	.LASF648
	.byte	0x1
	.value	0x333
	.long	0x139
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x289a
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x334
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x335
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x337
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF649
	.byte	0x1
	.value	0x338
	.long	0x267d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF645
	.long	0x28aa
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11061
	.uleb128 0x35
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x2832
	.uleb128 0x2b
	.long	.LASF650
	.byte	0x1
	.value	0x341
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF569
	.byte	0x1
	.value	0x342
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x367
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x367
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2b
	.long	.LASF651
	.byte	0x1
	.value	0x377
	.long	0x1c76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2857
	.uleb128 0x2b
	.long	.LASF587
	.byte	0x1
	.value	0x39a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2b
	.long	.LASF569
	.byte	0x1
	.value	0x3ad
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2b
	.long	.LASF587
	.byte	0x1
	.value	0x3b3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x28aa
	.uleb128 0x14
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0x15
	.long	0x289a
	.uleb128 0x2d
	.long	.LASF652
	.byte	0x1
	.value	0x3ca
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a25
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x3cb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x3cc
	.long	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x3ce
	.long	0x1b58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x3cf
	.long	0x1b4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x3d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF417
	.byte	0x1
	.value	0x3d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF451
	.byte	0x1
	.value	0x3d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF653
	.byte	0x1
	.value	0x3d1
	.long	0x1c76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x3d2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x34
	.long	.LASF645
	.long	0x2a35
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11089
	.uleb128 0x35
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x29be
	.uleb128 0x2b
	.long	.LASF649
	.byte	0x1
	.value	0x3de
	.long	0x1c7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2f
	.string	"seq"
	.byte	0x1
	.value	0x3ed
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x3ee
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x29f4
	.uleb128 0x2f
	.string	"phi"
	.byte	0x1
	.value	0x40d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x40e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x32
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.long	.LASF417
	.byte	0x1
	.value	0x442
	.long	0x1c76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF586
	.byte	0x1
	.value	0x443
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x2a35
	.uleb128 0x14
	.long	0x140
	.byte	0xc
	.byte	0
	.uleb128 0x15
	.long	0x2a25
	.uleb128 0x2d
	.long	.LASF654
	.byte	0x1
	.value	0x452
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a77
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x453
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x454
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF656
	.byte	0x1
	.value	0x469
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b15
	.uleb128 0x2b
	.long	.LASF622
	.byte	0x1
	.value	0x46c
	.long	0x1b63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"dfs"
	.byte	0x1
	.value	0x46f
	.long	0x1b63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF634
	.byte	0x1
	.value	0x470
	.long	0x1b63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF625
	.byte	0x1
	.value	0x473
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF45
	.byte	0x1
	.value	0x475
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF645
	.long	0x2b25
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11115
	.uleb128 0x32
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x485
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x2b25
	.uleb128 0x14
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.long	0x2b15
	.uleb128 0x30
	.long	.LASF657
	.byte	0x1
	.value	0x4c2
	.long	0x139
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b87
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x4c3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF658
	.byte	0x1
	.value	0x4c3
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF659
	.byte	0x1
	.value	0x4c4
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x4c6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF660
	.byte	0x1
	.value	0x4d5
	.long	0x4d6
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c85
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x4d6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF661
	.byte	0x1
	.value	0x4d7
	.long	0x1275
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF334
	.byte	0x1
	.value	0x4d8
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF662
	.byte	0x1
	.value	0x4d9
	.long	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x4db
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x4df
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x4df
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x4df
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x4df
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x4df
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x4df
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF663
	.byte	0x1
	.value	0x4ed
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d7f
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x4ee
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF661
	.byte	0x1
	.value	0x4ef
	.long	0x1275
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF333
	.byte	0x1
	.value	0x4ef
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF658
	.byte	0x1
	.value	0x4f0
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x4f2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x4f6
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x4f6
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x4f6
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x4f6
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x4f6
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x4f6
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF664
	.byte	0x1
	.value	0x504
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ffe
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x505
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF661
	.byte	0x1
	.value	0x506
	.long	0x1275
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF333
	.byte	0x1
	.value	0x506
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF334
	.byte	0x1
	.value	0x506
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF658
	.byte	0x1
	.value	0x507
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF665
	.byte	0x1
	.value	0x509
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF666
	.byte	0x1
	.value	0x50a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x50b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2eb2
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x512
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x512
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x512
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x512
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x512
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x512
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x2f4a
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x525
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x525
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x525
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x525
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x525
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x525
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x532
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x533
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x533
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x533
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x533
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x533
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x533
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF667
	.byte	0x1
	.value	0x53f
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x315c
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x540
	.long	0x1b4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x541
	.long	0x1227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF659
	.byte	0x1
	.value	0x543
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF333
	.byte	0x1
	.value	0x544
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0x544
	.long	0x1b63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF661
	.byte	0x1
	.value	0x545
	.long	0x1275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF658
	.byte	0x1
	.value	0x546
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF668
	.byte	0x1
	.value	0x547
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF662
	.byte	0x1
	.value	0x547
	.long	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x548
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x549
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x34
	.long	.LASF645
	.long	0x315c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11234
	.uleb128 0x36
	.string	"out"
	.byte	0x1
	.value	0x5ab
	.quad	.L231
	.uleb128 0x32
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2b
	.long	.LASF669
	.byte	0x1
	.value	0x56a
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"tgt"
	.byte	0x1
	.value	0x56b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x56c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2b
	.long	.LASF670
	.byte	0x1
	.value	0x57e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF671
	.byte	0x1
	.value	0x57e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x289a
	.uleb128 0x2a
	.long	.LASF672
	.byte	0x1
	.value	0x5c0
	.long	0x139
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3260
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x5c1
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x5c2
	.long	0x1227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF596
	.byte	0x1
	.value	0x5c4
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x5c5
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"phi"
	.byte	0x1
	.value	0x5c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF645
	.long	0x3270
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11258
	.uleb128 0x32
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x5d0
	.long	0x1b4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF673
	.byte	0x1
	.value	0x5d1
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"set"
	.byte	0x1
	.value	0x5d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"tgt"
	.byte	0x1
	.value	0x5d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2f
	.string	"alt"
	.byte	0x1
	.value	0x5df
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF674
	.byte	0x1
	.value	0x5e0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x3270
	.uleb128 0x14
	.long	0x140
	.byte	0x23
	.byte	0
	.uleb128 0x15
	.long	0x3260
	.uleb128 0x2a
	.long	.LASF675
	.byte	0x1
	.value	0x609
	.long	0x139
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c8
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x60a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x60b
	.long	0x1227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF596
	.byte	0x1
	.value	0x60d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x60e
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"phi"
	.byte	0x1
	.value	0x60f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF645
	.long	0x33d8
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11285
	.uleb128 0x32
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2f
	.string	"set"
	.byte	0x1
	.value	0x619
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF673
	.byte	0x1
	.value	0x61b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF676
	.byte	0x1
	.value	0x61d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2b
	.long	.LASF677
	.byte	0x1
	.value	0x624
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF678
	.byte	0x1
	.value	0x626
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x62c
	.long	0x1b4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2b
	.long	.LASF679
	.byte	0x1
	.value	0x630
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.string	"alt"
	.byte	0x1
	.value	0x633
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF680
	.byte	0x1
	.value	0x634
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x33d8
	.uleb128 0x14
	.long	0x140
	.byte	0x2b
	.byte	0
	.uleb128 0x15
	.long	0x33c8
	.uleb128 0x2a
	.long	.LASF681
	.byte	0x1
	.value	0x65e
	.long	0x1227
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x342a
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x660
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF596
	.byte	0x1
	.value	0x661
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x666
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x69c
	.long	0x139
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3496
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x69d
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF595
	.byte	0x1
	.value	0x69e
	.long	0x1b69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF683
	.byte	0x1
	.value	0x69f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF684
	.byte	0x1
	.value	0x6a0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x6a2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF685
	.byte	0x1
	.value	0x6cc
	.long	0x139
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3552
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x6cd
	.long	0x1b58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x6ce
	.long	0x1227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF595
	.byte	0x1
	.value	0x6cf
	.long	0x1b69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF596
	.byte	0x1
	.value	0x6d1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x6d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.value	0x6d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2b
	.long	.LASF686
	.byte	0x1
	.value	0x6d8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"src"
	.byte	0x1
	.value	0x6d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF569
	.byte	0x1
	.value	0x6da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x70a
	.long	0x139
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c1
	.uleb128 0x2c
	.long	.LASF639
	.byte	0x1
	.value	0x70b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF688
	.byte	0x1
	.value	0x70c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF689
	.byte	0x1
	.value	0x70d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x70e
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF649
	.byte	0x1
	.value	0x710
	.long	0x35c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1cb1
	.uleb128 0x2a
	.long	.LASF690
	.byte	0x1
	.value	0x724
	.long	0x139
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x3624
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x725
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x726
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF595
	.byte	0x1
	.value	0x727
	.long	0x1b69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF649
	.byte	0x1
	.value	0x729
	.long	0x1cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0x739
	.long	0x1227
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d5
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x73b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF596
	.byte	0x1
	.value	0x73c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF692
	.byte	0x1
	.value	0x73d
	.long	0x1aad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF693
	.byte	0x1
	.value	0x73e
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x740
	.long	0x1227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2b
	.long	.LASF595
	.byte	0x1
	.value	0x74e
	.long	0x1b69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2b
	.long	.LASF619
	.byte	0x1
	.value	0x760
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF694
	.byte	0x1
	.value	0x774
	.long	0x139
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3747
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x775
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x776
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.value	0x778
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"set"
	.byte	0x1
	.value	0x779
	.long	0x1ab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF645
	.long	0x3757
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11375
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x3757
	.uleb128 0x14
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.long	0x3747
	.uleb128 0x2d
	.long	.LASF695
	.byte	0x1
	.value	0x78e
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x37d8
	.uleb128 0x2c
	.long	.LASF693
	.byte	0x1
	.value	0x78f
	.long	0x1ab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x791
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x797
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF686
	.byte	0x1
	.value	0x798
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"src"
	.byte	0x1
	.value	0x799
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF696
	.byte	0x1
	.value	0x7bb
	.long	0x139
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x38aa
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x7bc
	.long	0xe23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x7bd
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x7bf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF583
	.byte	0x1
	.value	0x7c0
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF645
	.long	0x38ba
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11398
	.uleb128 0x32
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2b
	.long	.LASF46
	.byte	0x1
	.value	0x7ca
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF646
	.byte	0x1
	.value	0x7cb
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF697
	.byte	0x1
	.value	0x7cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2b
	.long	.LASF587
	.byte	0x1
	.value	0x7d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x38ba
	.uleb128 0x14
	.long	0x140
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.long	0x38aa
	.uleb128 0x30
	.long	.LASF698
	.byte	0x1
	.value	0x7ee
	.long	0x139
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x392d
	.uleb128 0x2c
	.long	.LASF599
	.byte	0x1
	.value	0x7ef
	.long	0x1303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x7f0
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x7f2
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF582
	.byte	0x1
	.value	0x7f3
	.long	0x1275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF583
	.byte	0x1
	.value	0x7f5
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF699
	.byte	0x1
	.value	0x802
	.long	0x139
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a75
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x803
	.long	0x1227
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12600
	.uleb128 0x2b
	.long	.LASF582
	.byte	0x1
	.value	0x808
	.long	0x1275
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12560
	.uleb128 0x2b
	.long	.LASF700
	.byte	0x1
	.value	0x809
	.long	0x139
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12572
	.uleb128 0x2b
	.long	.LASF701
	.byte	0x1
	.value	0x80a
	.long	0x3a75
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12528
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0x80b
	.long	0x139
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12592
	.uleb128 0x2b
	.long	.LASF702
	.byte	0x1
	.value	0x80c
	.long	0x139
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12588
	.uleb128 0x32
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x81a
	.long	0x266
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12584
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x81a
	.long	0x266
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12580
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x81a
	.long	0x266
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12576
	.uleb128 0x2b
	.long	.LASF630
	.byte	0x1
	.value	0x81a
	.long	0x1286
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12552
	.uleb128 0x32
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2b
	.long	.LASF631
	.byte	0x1
	.value	0x81a
	.long	0x281
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12568
	.uleb128 0x32
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x2b
	.long	.LASF632
	.byte	0x1
	.value	0x81a
	.long	0x281
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12544
	.uleb128 0x32
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2b
	.long	.LASF703
	.byte	0x1
	.value	0x81a
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12536
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x139
	.long	0x3a8b
	.uleb128 0x14
	.long	0x140
	.byte	0x34
	.uleb128 0x14
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2d
	.long	.LASF704
	.byte	0x1
	.value	0x82e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b63
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x82f
	.long	0x1227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x831
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF645
	.long	0x3b73
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11446
	.uleb128 0x32
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x835
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF417
	.byte	0x1
	.value	0x836
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF451
	.byte	0x1
	.value	0x837
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x838
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x848
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF705
	.byte	0x1
	.value	0x849
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x84a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x3b73
	.uleb128 0x14
	.long	0x140
	.byte	0x16
	.byte	0
	.uleb128 0x15
	.long	0x3b63
	.uleb128 0x33
	.long	.LASF706
	.byte	0x1
	.value	0x85e
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c27
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x860
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF583
	.byte	0x1
	.value	0x861
	.long	0x1227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF570
	.byte	0x1
	.value	0x862
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF645
	.long	0x3c37
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11460
	.uleb128 0x35
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x3c05
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x87c
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x87d
	.long	0x1b4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x889
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2c0
	.long	0x3c37
	.uleb128 0x14
	.long	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.long	0x3c27
	.uleb128 0x37
	.long	.LASF708
	.byte	0x1
	.value	0x8b7
	.long	0x139
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d19
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x8b8
	.long	0x1b58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"fn"
	.byte	0x1
	.value	0x8b9
	.long	0x1b9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x8ba
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x8bc
	.long	0x1b4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x1
	.value	0x8c4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF709
	.byte	0x1
	.value	0x8c6
	.long	0x1b58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x2b
	.long	.LASF710
	.byte	0x1
	.value	0x8d4
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF693
	.byte	0x1
	.value	0x8d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF711
	.byte	0x1
	.value	0x8d6
	.long	0xe23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x8d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF713
	.byte	0x1
	.value	0x8f3
	.long	0x139
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d78
	.uleb128 0x2c
	.long	.LASF683
	.byte	0x1
	.value	0x8f4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF684
	.byte	0x1
	.value	0x8f5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF714
	.byte	0x1
	.value	0x8f7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF715
	.byte	0x1
	.value	0x8f8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF716
	.byte	0x1
	.byte	0x57
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	conservative_reg_partition
	.uleb128 0x38
	.long	.LASF717
	.byte	0x1
	.byte	0x6c
	.long	0xe23
	.uleb128 0x9
	.byte	0x3
	.quad	ssa_rename_to_pseudo
	.uleb128 0x13
	.long	0x2d
	.long	0x3db8
	.uleb128 0x14
	.long	0x140
	.byte	0x34
	.uleb128 0x14
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LASF718
	.byte	0x1
	.byte	0x70
	.long	0x3da2
	.uleb128 0x9
	.byte	0x3
	.quad	ssa_rename_to_hard
	.uleb128 0x38
	.long	.LASF719
	.byte	0x1
	.byte	0x9d
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	ssa_max_reg_num
	.uleb128 0x2b
	.long	.LASF720
	.byte	0x1
	.value	0x1c6
	.long	0x1b63
	.uleb128 0x9
	.byte	0x3
	.quad	fe_evals
	.uleb128 0x2b
	.long	.LASF721
	.byte	0x1
	.value	0x1c7
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	fe_current_bb
	.uleb128 0x13
	.long	0x288
	.long	0x3e1e
	.uleb128 0x14
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x39
	.long	.LASF722
	.byte	0x9
	.byte	0x50
	.long	0x3e29
	.uleb128 0x15
	.long	0x3e0e
	.uleb128 0x13
	.long	0x2c0
	.long	0x3e3e
	.uleb128 0x14
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x39
	.long	.LASF723
	.byte	0x2
	.byte	0x3f
	.long	0x3e49
	.uleb128 0x15
	.long	0x3e2e
	.uleb128 0x13
	.long	0x2d
	.long	0x3e5e
	.uleb128 0x14
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x3a
	.long	.LASF724
	.byte	0x2
	.value	0x652
	.long	0x3e4e
	.uleb128 0x3a
	.long	.LASF725
	.byte	0x11
	.value	0x1e4
	.long	0x1a01
	.uleb128 0x39
	.long	.LASF726
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x39
	.long	.LASF727
	.byte	0xb
	.byte	0xec
	.long	0x11aa
	.uleb128 0x13
	.long	0xc70
	.long	0x3e9c
	.uleb128 0x14
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.long	.LASF728
	.byte	0xb
	.value	0x116
	.long	0x3e8c
	.uleb128 0x3a
	.long	.LASF729
	.byte	0x13
	.value	0x1cb
	.long	0x3eb4
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x3b
	.long	.LASF730
	.byte	0x1
	.byte	0x5a
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	in_ssa_form
	.uleb128 0x3b
	.long	.LASF731
	.byte	0x1
	.byte	0x5d
	.long	0x11aa
	.uleb128 0x9
	.byte	0x3
	.quad	ssa_definition
	.uleb128 0x3b
	.long	.LASF732
	.byte	0x1
	.byte	0x61
	.long	0x11aa
	.uleb128 0x9
	.byte	0x3
	.quad	ssa_rename_from
	.uleb128 0x3b
	.long	.LASF733
	.byte	0x1
	.byte	0x68
	.long	0x138e
	.uleb128 0x9
	.byte	0x3
	.quad	ssa_rename_from_ht
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x38
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
.LASF360:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF521:
	.string	"profile_label_no"
.LASF318:
	.string	"rtstr"
.LASF732:
	.string	"ssa_rename_from"
.LASF347:
	.string	"NOTE_INSN_DELETED"
.LASF93:
	.string	"_unused2"
.LASF246:
	.string	"UMOD"
.LASF300:
	.string	"min_align"
.LASF637:
	.string	"insert_phi_node"
.LASF79:
	.string	"_fileno"
.LASF679:
	.string	"pred_block"
.LASF384:
	.string	"varray_data_tag"
.LASF615:
	.string	"srfp2"
.LASF24:
	.string	"AD_REGS"
.LASF600:
	.string	"answer"
.LASF326:
	.string	"first"
.LASF573:
	.string	"conflict_graph"
.LASF515:
	.string	"inlinable"
.LASF547:
	.string	"uses_const_pool"
.LASF621:
	.string	"find_evaluations"
.LASF287:
	.string	"CONSTANT_P_RTX"
.LASF619:
	.string	"block"
.LASF415:
	.string	"partition_elem"
.LASF317:
	.string	"rtuint"
.LASF726:
	.string	"n_basic_blocks"
.LASF653:
	.string	"set_data"
.LASF321:
	.string	"rt_cselib"
.LASF190:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF520:
	.string	"inl_max_label_num"
.LASF638:
	.string	"npred"
.LASF250:
	.string	"LSHIFTRT"
.LASF184:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF736:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF245:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF604:
	.string	"ssa_rename_from_insert"
.LASF626:
	.string	"done"
.LASF575:
	.string	"cdi_direction"
.LASF178:
	.string	"MATCH_OPERAND"
.LASF703:
	.string	"hard_reg_rtx"
.LASF455:
	.string	"x_first_label_num"
.LASF159:
	.string	"CCFPmode"
.LASF100:
	.string	"reg_class"
.LASF620:
	.string	"find_evaluations_1"
.LASF267:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF305:
	.string	"max_after_base"
.LASF427:
	.string	"hashval_t"
.LASF268:
	.string	"UNLT"
.LASF548:
	.string	"uses_pic_offset_table"
.LASF436:
	.string	"entries"
.LASF571:
	.string	"probability"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF417:
	.string	"next"
.LASF60:
	.string	"__off_t"
.LASF691:
	.string	"compute_coalesced_reg_partition"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF289:
	.string	"VEC_MERGE"
.LASF518:
	.string	"original_decl_initial"
.LASF676:
	.string	"phi2"
.LASF85:
	.string	"_lock"
.LASF386:
	.string	"uhint"
.LASF222:
	.string	"RETURN"
.LASF387:
	.string	"generic"
.LASF728:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF623:
	.string	"compute_dominance_frontiers_1"
.LASF716:
	.string	"conservative_reg_partition"
.LASF309:
	.string	"alias"
.LASF306:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF544:
	.string	"stdarg"
.LASF505:
	.string	"x_trampoline_list"
.LASF624:
	.string	"frontiers"
.LASF25:
	.string	"Q_REGS"
.LASF209:
	.string	"CODE_LABEL"
.LASF130:
	.string	"CDImode"
.LASF215:
	.string	"UNSPEC"
.LASF208:
	.string	"BARRIER"
.LASF353:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF211:
	.string	"COND_EXEC"
.LASF225:
	.string	"CONST_INT"
.LASF221:
	.string	"CALL"
.LASF50:
	.string	"maybe_vaarg"
.LASF526:
	.string	"epilogue_delay_list"
.LASF594:
	.string	"phi_coalesce_context"
.LASF137:
	.string	"V4QImode"
.LASF200:
	.string	"ATTR"
.LASF341:
	.string	"count"
.LASF721:
	.string	"fe_current_bb"
.LASF666:
	.string	"unvisited_predecessors"
.LASF319:
	.string	"rttype"
.LASF19:
	.string	"DREG"
.LASF739:
	.string	"ssa_rename_from_print"
.LASF673:
	.string	"tgt_regno"
.LASF331:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF377:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF660:
	.string	"ephi_forward"
.LASF689:
	.string	"src_regno"
.LASF136:
	.string	"V2DImode"
.LASF495:
	.string	"x_return_label"
.LASF663:
	.string	"ephi_backward"
.LASF612:
	.string	"ssa_rename_from_hash_function"
.LASF414:
	.string	"varray_type"
.LASF314:
	.string	"mem_attrs"
.LASF71:
	.string	"_IO_write_end"
.LASF683:
	.string	"reg1"
.LASF193:
	.string	"DEFINE_DELAY"
.LASF243:
	.string	"MINUS"
.LASF502:
	.string	"x_clobber_return_insn"
.LASF22:
	.string	"SIREG"
.LASF644:
	.string	"last_r"
.LASF393:
	.string	"sched_info_tag"
.LASF613:
	.string	"ssa_rename_from_equal"
.LASF233:
	.string	"STRICT_LOW_PART"
.LASF682:
	.string	"coalesce_if_unconflicting"
.LASF175:
	.string	"INCLUDE"
.LASF373:
	.string	"GR_FRAME_POINTER"
.LASF339:
	.string	"index"
.LASF400:
	.string	"freq"
.LASF271:
	.string	"ZERO_EXTEND"
.LASF274:
	.string	"FLOAT_TRUNCATE"
.LASF471:
	.string	"x_forced_labels"
.LASF486:
	.string	"internal_arg_pointer"
.LASF652:
	.string	"rename_block"
.LASF370:
	.string	"GR_PC"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF407:
	.string	"varray_data"
.LASF556:
	.string	"machine_function"
.LASF275:
	.string	"FLOAT"
.LASF101:
	.string	"machine_mode"
.LASF577:
	.string	"CDI_POST_DOMINATORS"
.LASF324:
	.string	"rtmem"
.LASF514:
	.string	"fixup_var_refs_queue"
.LASF685:
	.string	"coalesce_regs_in_copies"
.LASF702:
	.string	"mach_mode"
.LASF284:
	.string	"RANGE_REG"
.LASF322:
	.string	"rtbit"
.LASF558:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF690:
	.string	"coalesce_regs_in_successor_phi_nodes"
.LASF260:
	.string	"PRE_MODIFY"
.LASF529:
	.string	"returns_pointer"
.LASF699:
	.string	"check_hard_regs_in_partition"
.LASF273:
	.string	"FLOAT_EXTEND"
.LASF397:
	.string	"last_note_uid"
.LASF474:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF674:
	.string	"alt_regno"
.LASF348:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF106:
	.string	"SImode"
.LASF217:
	.string	"ADDR_VEC"
.LASF552:
	.string	"stmt_status"
.LASF147:
	.string	"V2DFmode"
.LASF299:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF583:
	.string	"reg_partition"
.LASF313:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF328:
	.string	"indx"
.LASF522:
	.string	"machine"
.LASF658:
	.string	"nodes"
.LASF642:
	.string	"create_delayed_rename"
.LASF698:
	.string	"record_canonical_element_1"
.LASF236:
	.string	"SYMBOL_REF"
.LASF346:
	.string	"NOTE_INSN_BIAS"
.LASF430:
	.string	"htab_del"
.LASF368:
	.string	"NOTE_INSN_MAX"
.LASF469:
	.string	"x_saveregs_value"
.LASF714:
	.string	"orig_reg1"
.LASF715:
	.string	"orig_reg2"
.LASF189:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF241:
	.string	"COMPARE"
.LASF269:
	.string	"LTGT"
.LASF582:
	.string	"canonical_elements"
.LASF449:
	.string	"unsignedp"
.LASF418:
	.string	"class_count"
.LASF281:
	.string	"HIGH"
.LASF238:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF107:
	.string	"DImode"
.LASF425:
	.string	"elms"
.LASF382:
	.string	"const_equiv_data"
.LASF488:
	.string	"hard_reg_initial_vals"
.LASF467:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF259:
	.string	"POST_INC"
.LASF654:
	.string	"rename_registers"
.LASF120:
	.string	"TFmode"
.LASF634:
	.string	"idfs"
.LASF56:
	.string	"unsigned char"
.LASF555:
	.string	"temp_slot"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF472:
	.string	"x_pending_chain"
.LASF432:
	.string	"htab"
.LASF487:
	.string	"cannot_inline"
.LASF738:
	.string	"_IO_lock_t"
.LASF662:
	.string	"tstack"
.LASF437:
	.string	"n_elements"
.LASF404:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF257:
	.string	"PRE_INC"
.LASF117:
	.string	"SFmode"
.LASF597:
	.string	"ssa_rename_to_lookup"
.LASF574:
	.string	"conflict_graph_def"
.LASF475:
	.string	"emit"
.LASF647:
	.string	"new_limit"
.LASF206:
	.string	"JUMP_INSN"
.LASF336:
	.string	"cond_local_set"
.LASF665:
	.string	"reg_u"
.LASF572:
	.string	"edge"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF323:
	.string	"rttree"
.LASF656:
	.string	"convert_to_ssa"
.LASF628:
	.string	"bit_num_"
.LASF345:
	.string	"insn_note"
.LASF364:
	.string	"NOTE_INSN_RANGE_END"
.LASF188:
	.string	"DEFINE_SPLIT"
.LASF536:
	.string	"has_nonlocal_goto"
.LASF550:
	.string	"arg_pointer_save_area_init"
.LASF227:
	.string	"CONST_VECTOR"
.LASF185:
	.string	"MATCH_INSN"
.LASF705:
	.string	"slen"
.LASF496:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF565:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF219:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF479:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF498:
	.string	"x_rtl_expr_chain"
.LASF283:
	.string	"RANGE_INFO"
.LASF668:
	.string	"stack"
.LASF442:
	.string	"htab_t"
.LASF383:
	.string	"rtunion_def"
.LASF199:
	.string	"DEFINE_ATTR"
.LASF201:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF490:
	.string	"x_nonlocal_labels"
.LASF585:
	.string	"reg_loc"
.LASF276:
	.string	"UNSIGNED_FLOAT"
.LASF392:
	.string	"cselib_val_struct"
.LASF367:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF248:
	.string	"ROTATE"
.LASF334:
	.string	"succ"
.LASF606:
	.string	"ssa_rename_from_traverse"
.LASF399:
	.string	"refs"
.LASF272:
	.string	"TRUNCATE"
.LASF684:
	.string	"reg2"
.LASF123:
	.string	"SCmode"
.LASF378:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF113:
	.string	"PDImode"
.LASF389:
	.string	"bitmap"
.LASF358:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF723:
	.string	"rtx_class"
.LASF343:
	.string	"flags"
.LASF464:
	.string	"x_regno_reg_rtx"
.LASF176:
	.string	"EXPR_LIST"
.LASF203:
	.string	"EQ_ATTR"
.LASF156:
	.string	"CCGOCmode"
.LASF234:
	.string	"CONCAT"
.LASF567:
	.string	"pred_next"
.LASF302:
	.string	"min_after_vec"
.LASF63:
	.string	"FILE"
.LASF240:
	.string	"COND"
.LASF422:
	.string	"simple_bitmap_def"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF506:
	.string	"x_parm_birth_insn"
.LASF508:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF655:
	.string	"compute_dominance_frontiers"
.LASF124:
	.string	"DCmode"
.LASF191:
	.string	"DEFINE_COMBINE"
.LASF734:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF500:
	.string	"x_tail_recursion_reentry"
.LASF249:
	.string	"ASHIFTRT"
.LASF636:
	.string	"passes"
.LASF700:
	.string	"element_index"
.LASF154:
	.string	"CCmode"
.LASF332:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF351:
	.string	"NOTE_INSN_LOOP_END"
.LASF720:
	.string	"fe_evals"
.LASF152:
	.string	"V16SFmode"
.LASF365:
	.string	"NOTE_INSN_LIVE"
.LASF196:
	.string	"DEFINE_COND_EXEC"
.LASF74:
	.string	"_IO_save_base"
.LASF446:
	.string	"var_refs_queue"
.LASF468:
	.string	"x_stack_pointer_delta"
.LASF192:
	.string	"DEFINE_EXPAND"
.LASF539:
	.string	"is_thunk"
.LASF630:
	.string	"ptr_"
.LASF410:
	.string	"elements_used"
.LASF143:
	.string	"V8SImode"
.LASF492:
	.string	"x_nonlocal_goto_handler_labels"
.LASF205:
	.string	"INSN"
.LASF316:
	.string	"rtint"
.LASF713:
	.string	"conflicting_hard_regs_p"
.LASF235:
	.string	"LABEL_REF"
.LASF695:
	.string	"mark_phi_and_copy_regs"
.LASF406:
	.string	"elt_list"
.LASF680:
	.string	"alt2"
.LASF588:
	.string	"prev_reg"
.LASF730:
	.string	"in_ssa_form"
.LASF355:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF722:
	.string	"mode_size"
.LASF0:
	.string	"code"
.LASF564:
	.string	"regset"
.LASF155:
	.string	"CCGCmode"
.LASF338:
	.string	"global_live_at_end"
.LASF231:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF693:
	.string	"phi_set"
.LASF718:
	.string	"ssa_rename_to_hard"
.LASF627:
	.string	"word_num_"
.LASF270:
	.string	"SIGN_EXTEND"
.LASF531:
	.string	"calls_setjmp"
.LASF579:
	.string	"original"
.LASF292:
	.string	"VEC_DUPLICATE"
.LASF562:
	.string	"bitmap_head"
.LASF493:
	.string	"x_nonlocal_goto_stack_level"
.LASF95:
	.string	"_next"
.LASF310:
	.string	"expr"
.LASF629:
	.string	"size_"
.LASF361:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF491:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF639:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF605:
	.string	"slot"
.LASF214:
	.string	"ASM_OPERANDS"
.LASF724:
	.string	"global_rtl"
.LASF511:
	.string	"x_temp_slot_level"
.LASF598:
	.string	"ssa_rename_from_lookup"
.LASF158:
	.string	"CCZmode"
.LASF352:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF733:
	.string	"ssa_rename_from_ht"
.LASF537:
	.string	"contains_functions"
.LASF476:
	.string	"varasm"
.LASF592:
	.string	"done_renames"
.LASF611:
	.string	"ssa_rename_from_print_1"
.LASF218:
	.string	"ADDR_DIFF_VEC"
.LASF280:
	.string	"ZERO_EXTRACT"
.LASF385:
	.string	"hint"
.LASF213:
	.string	"ASM_INPUT"
.LASF263:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF448:
	.string	"promoted_mode"
.LASF434:
	.string	"eq_f"
.LASF632:
	.string	"_mask"
.LASF409:
	.string	"num_elements"
.LASF277:
	.string	"UNSIGNED_FIX"
.LASF416:
	.string	"class_element"
.LASF687:
	.string	"coalesce_reg_in_phi"
.LASF528:
	.string	"returns_pcc_struct"
.LASF47:
	.string	"sse_words"
.LASF29:
	.string	"GENERAL_REGS"
.LASF709:
	.string	"successor"
.LASF710:
	.string	"result"
.LASF412:
	.string	"name"
.LASF177:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF285:
	.string	"RANGE_VAR"
.LASF405:
	.string	"changes_mode"
.LASF76:
	.string	"_IO_save_end"
.LASF421:
	.string	"partition"
.LASF164:
	.string	"MODE_INT"
.LASF411:
	.string	"element_size"
.LASF483:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF465:
	.string	"expr_status"
.LASF441:
	.string	"return_allocation_failure"
.LASF535:
	.string	"has_nonlocal_label"
.LASF616:
	.string	"ssa_rename_from_delete"
.LASF286:
	.string	"RANGE_LIVE"
.LASF466:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF480:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF391:
	.string	"const_equiv"
.LASF396:
	.string	"last_uid"
.LASF320:
	.string	"rt_addr_diff_vec_flags"
.LASF375:
	.string	"GR_ARG_POINTER"
.LASF719:
	.string	"ssa_max_reg_num"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF295:
	.string	"SS_MINUS"
.LASF182:
	.string	"MATCH_PARALLEL"
.LASF139:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF554:
	.string	"initial_value_struct"
.LASF625:
	.string	"idom"
.LASF57:
	.string	"short unsigned int"
.LASF58:
	.string	"signed char"
.LASF181:
	.string	"MATCH_OPERATOR"
.LASF408:
	.string	"varray_head_tag"
.LASF327:
	.string	"current"
.LASF458:
	.string	"x_cur_insn_uid"
.LASF507:
	.string	"x_last_parm_insn"
.LASF602:
	.string	"original_rtx"
.LASF297:
	.string	"SS_TRUNCATE"
.LASF675:
	.string	"make_equivalent_phi_alternatives_equivalent"
.LASF516:
	.string	"no_debugging_symbols"
.LASF301:
	.string	"base_after_vec"
.LASF186:
	.string	"DEFINE_INSN"
.LASF61:
	.string	"__off64_t"
.LASF140:
	.string	"V4DImode"
.LASF340:
	.string	"loop_depth"
.LASF667:
	.string	"eliminate_phi"
.LASF68:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF581:
	.string	"ssa_rename_from_hash_table_data"
.LASF86:
	.string	"_offset"
.LASF376:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF460:
	.string	"x_last_filename"
.LASF73:
	.string	"_IO_buf_end"
.LASF423:
	.string	"n_bits"
.LASF195:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF296:
	.string	"US_MINUS"
.LASF485:
	.string	"return_rtx"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF279:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF402:
	.string	"live_length"
.LASF220:
	.string	"CLOBBER"
.LASF566:
	.string	"edge_def"
.LASF622:
	.string	"evals"
.LASF92:
	.string	"_mode"
.LASF170:
	.string	"MODE_VECTOR_INT"
.LASF69:
	.string	"_IO_write_base"
.LASF288:
	.string	"CALL_PLACEHOLDER"
.LASF439:
	.string	"searches"
.LASF473:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF540:
	.string	"instrument_entry_exit"
.LASF503:
	.string	"x_frame_offset"
.LASF242:
	.string	"PLUS"
.LASF670:
	.string	"ireg"
.LASF433:
	.string	"hash_f"
.LASF258:
	.string	"POST_DEC"
.LASF560:
	.string	"bits"
.LASF105:
	.string	"HImode"
.LASF344:
	.string	"rtunion"
.LASF354:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF551:
	.string	"eh_status"
.LASF618:
	.string	"phi_vec"
.LASF450:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF380:
	.string	"GR_VIRTUAL_CFA"
.LASF727:
	.string	"basic_block_info"
.LASF610:
	.string	"ssa_rename_from_free"
.LASF94:
	.string	"_IO_marker"
.LASF119:
	.string	"XFmode"
.LASF530:
	.string	"needs_context"
.LASF578:
	.string	"successor_phi_fn"
.LASF149:
	.string	"V4DFmode"
.LASF712:
	.string	"phi_src"
.LASF4:
	.string	"unchanging"
.LASF440:
	.string	"collisions"
.LASF349:
	.string	"NOTE_INSN_BLOCK_END"
.LASF534:
	.string	"calls_eh_return"
.LASF513:
	.string	"x_target_temp_slot_level"
.LASF481:
	.string	"pretend_args_size"
.LASF649:
	.string	"context"
.LASF173:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF686:
	.string	"pattern"
.LASF451:
	.string	"last"
.LASF659:
	.string	"n_nodes"
.LASF543:
	.string	"varargs"
.LASF729:
	.string	"rtl_dump_file"
.LASF20:
	.string	"CREG"
.LASF591:
	.string	"new_renames"
.LASF545:
	.string	"x_whole_function_mode_p"
.LASF174:
	.string	"UNKNOWN"
.LASF216:
	.string	"UNSPEC_VOLATILE"
.LASF557:
	.string	"language_function"
.LASF357:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF635:
	.string	"worklist"
.LASF115:
	.string	"HFmode"
.LASF519:
	.string	"inl_last_parm_insn"
.LASF223:
	.string	"TRAP_IF"
.LASF438:
	.string	"n_deleted"
.LASF401:
	.string	"deaths"
.LASF509:
	.string	"x_parm_reg_stack_loc"
.LASF127:
	.string	"CQImode"
.LASF62:
	.string	"char"
.LASF527:
	.string	"returns_struct"
.LASF125:
	.string	"XCmode"
.LASF501:
	.string	"x_arg_pointer_save_area"
.LASF18:
	.string	"AREG"
.LASF499:
	.string	"x_tail_recursion_label"
.LASF72:
	.string	"_IO_buf_base"
.LASF589:
	.string	"set_insn"
.LASF525:
	.string	"language"
.LASF445:
	.string	"INSERT"
.LASF251:
	.string	"ROTATERT"
.LASF237:
	.string	"ADDRESSOF"
.LASF133:
	.string	"V2QImode"
.LASF454:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF447:
	.string	"modified"
.LASF463:
	.string	"regno_decl"
.LASF394:
	.string	"reg_info_def"
.LASF132:
	.string	"COImode"
.LASF701:
	.string	"already_seen"
.LASF256:
	.string	"PRE_DEC"
.LASF711:
	.string	"alternative"
.LASF64:
	.string	"_IO_FILE"
.LASF593:
	.string	"current_insn"
.LASF356:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF646:
	.string	"new_regno"
.LASF374:
	.string	"GR_HARD_FRAME_POINTER"
.LASF651:
	.string	"saved_new_renames"
.LASF533:
	.string	"calls_alloca"
.LASF512:
	.string	"x_var_temp_slot_level"
.LASF163:
	.string	"MODE_RANDOM"
.LASF294:
	.string	"US_PLUS"
.LASF153:
	.string	"BLKmode"
.LASF681:
	.string	"compute_conservative_reg_partition"
.LASF122:
	.string	"HCmode"
.LASF661:
	.string	"visited"
.LASF563:
	.string	"regset_head"
.LASF428:
	.string	"htab_hash"
.LASF228:
	.string	"CONST_STRING"
.LASF291:
	.string	"VEC_CONCAT"
.LASF312:
	.string	"size"
.LASF87:
	.string	"__pad1"
.LASF89:
	.string	"__pad3"
.LASF90:
	.string	"__pad4"
.LASF91:
	.string	"__pad5"
.LASF204:
	.string	"ATTR_FLAG"
.LASF706:
	.string	"convert_from_ssa"
.LASF704:
	.string	"rename_equivalent_regs"
.LASF160:
	.string	"CCFPUmode"
.LASF584:
	.string	"rename_set_data"
.LASF194:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF657:
	.string	"ephi_add_node"
.LASF426:
	.string	"sbitmap"
.LASF504:
	.string	"x_context_display"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF198:
	.string	"ADDRESS"
.LASF717:
	.string	"ssa_rename_to_pseudo"
.LASF570:
	.string	"insns"
.LASF517:
	.string	"original_arg_vector"
.LASF697:
	.string	"canonical_element_rtx"
.LASF549:
	.string	"uses_eh_lsda"
.LASF388:
	.string	"cptr"
.LASF325:
	.string	"bitmap_head_def"
.LASF596:
	.string	"changed"
.LASF403:
	.string	"calls_crossed"
.LASF298:
	.string	"US_TRUNCATE"
.LASF607:
	.string	"callback_function"
.LASF369:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF293:
	.string	"SS_PLUS"
.LASF255:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF307:
	.string	"scale"
.LASF672:
	.string	"make_regs_equivalent_over_bad_edges"
.LASF104:
	.string	"QImode"
.LASF413:
	.string	"data"
.LASF372:
	.string	"GR_STACK_POINTER"
.LASF587:
	.string	"new_reg"
.LASF116:
	.string	"TQFmode"
.LASF631:
	.string	"word_"
.LASF330:
	.string	"head"
.LASF44:
	.string	"words"
.LASF304:
	.string	"min_after_base"
.LASF390:
	.string	"sched"
.LASF640:
	.string	"end_p"
.LASF546:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF694:
	.string	"mark_reg_in_phi"
.LASF443:
	.string	"insert_option"
.LASF17:
	.string	"NO_REGS"
.LASF725:
	.string	"cfun"
.LASF576:
	.string	"CDI_DOMINATORS"
.LASF444:
	.string	"NO_INSERT"
.LASF482:
	.string	"outgoing_args_size"
.LASF109:
	.string	"OImode"
.LASF617:
	.string	"phi_alternative"
.LASF424:
	.string	"bytes"
.LASF253:
	.string	"SMAX"
.LASF708:
	.string	"for_each_successor_phi"
.LASF381:
	.string	"GR_MAX"
.LASF290:
	.string	"VEC_SELECT"
.LASF523:
	.string	"stack_alignment_needed"
.LASF453:
	.string	"emit_status"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF261:
	.string	"POST_MODIFY"
.LASF671:
	.string	"itgt"
.LASF678:
	.string	"tgt2_regno"
.LASF648:
	.string	"rename_insn_1"
.LASF452:
	.string	"sequence_rtl_expr"
.LASF677:
	.string	"set2"
.LASF187:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF363:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF311:
	.string	"offset"
.LASF308:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF183:
	.string	"MATCH_OP_DUP"
.LASF197:
	.string	"SEQUENCE"
.LASF590:
	.string	"rename_context"
.LASF114:
	.string	"QFmode"
.LASF603:
	.string	"ssa_rename_to_insert"
.LASF398:
	.string	"sets"
.LASF484:
	.string	"args_info"
.LASF429:
	.string	"htab_eq"
.LASF542:
	.string	"limit_stack"
.LASF224:
	.string	"RESX"
.LASF643:
	.string	"apply_delayed_renames"
.LASF569:
	.string	"dest"
.LASF212:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF580:
	.string	"ssa_rename_from_pair"
.LASF75:
	.string	"_IO_backup_base"
.LASF262:
	.string	"UNORDERED"
.LASF161:
	.string	"MAX_MACHINE_MODE"
.LASF66:
	.string	"_IO_read_ptr"
.LASF633:
	.string	"compute_iterated_dominance_frontiers"
.LASF614:
	.string	"srfp1"
.LASF337:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF179:
	.string	"MATCH_SCRATCH"
.LASF229:
	.string	"CONST"
.LASF462:
	.string	"regno_pointer_align"
.LASF431:
	.string	"htab_trav"
.LASF278:
	.string	"SQRT"
.LASF371:
	.string	"GR_CC0"
.LASF162:
	.string	"mode_class"
.LASF244:
	.string	"MULT"
.LASF167:
	.string	"MODE_CC"
.LASF335:
	.string	"local_set"
.LASF599:
	.string	"srfp"
.LASF110:
	.string	"PQImode"
.LASF142:
	.string	"V8HImode"
.LASF510:
	.string	"x_temp_slots"
.LASF497:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF207:
	.string	"CALL_INSN"
.LASF688:
	.string	"dest_regno"
.LASF608:
	.string	"srfhd"
.LASF232:
	.string	"SUBREG"
.LASF532:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF664:
	.string	"ephi_create"
.LASF477:
	.string	"decl"
.LASF99:
	.string	"long long int"
.LASF80:
	.string	"_flags2"
.LASF121:
	.string	"QCmode"
.LASF230:
	.string	"VALUE"
.LASF210:
	.string	"NOTE"
.LASF707:
	.string	"remove_phi_alternative"
.LASF641:
	.string	"insert_phi_nodes"
.LASF48:
	.string	"sse_nregs"
.LASF254:
	.string	"UMIN"
.LASF180:
	.string	"MATCH_DUP"
.LASF329:
	.string	"basic_block_def"
.LASF586:
	.string	"old_reg"
.LASF553:
	.string	"varasm_status"
.LASF435:
	.string	"del_f"
.LASF7:
	.string	"used"
.LASF692:
	.string	"phi_set_head"
.LASF350:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF731:
	.string	"ssa_definition"
.LASF561:
	.string	"bitmap_element"
.LASF489:
	.string	"x_function_call_count"
.LASF559:
	.string	"prev"
.LASF128:
	.string	"CHImode"
.LASF366:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF202:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF601:
	.string	"original_register"
.LASF420:
	.string	"elements"
.LASF461:
	.string	"regno_pointer_align_length"
.LASF456:
	.string	"x_first_insn"
.LASF470:
	.string	"x_apply_args_value"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF226:
	.string	"CONST_DOUBLE"
.LASF395:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF138:
	.string	"V4HImode"
.LASF735:
	.string	"ssa.c"
.LASF264:
	.string	"UNEQ"
.LASF650:
	.string	"destp"
.LASF247:
	.string	"ASHIFT"
.LASF252:
	.string	"SMIN"
.LASF645:
	.string	"__FUNCTION__"
.LASF239:
	.string	"IF_THEN_ELSE"
.LASF362:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF595:
	.string	"conflicts"
.LASF478:
	.string	"outer"
.LASF609:
	.string	"ssa_rename_from_initialize"
.LASF359:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF459:
	.string	"x_last_linenum"
.LASF419:
	.string	"partition_def"
.LASF52:
	.string	"unsigned int"
.LASF737:
	.string	"tree_node"
.LASF494:
	.string	"x_cleanup_label"
.LASF303:
	.string	"max_after_vec"
.LASF265:
	.string	"UNGE"
.LASF59:
	.string	"short int"
.LASF333:
	.string	"pred"
.LASF266:
	.string	"UNGT"
.LASF669:
	.string	"preg"
.LASF538:
	.string	"has_computed_jump"
.LASF457:
	.string	"x_last_insn"
.LASF541:
	.string	"profile"
.LASF83:
	.string	"_vtable_offset"
.LASF524:
	.string	"preferred_stack_boundary"
.LASF696:
	.string	"rename_equivalent_regs_in_insn"
.LASF102:
	.string	"VOIDmode"
.LASF379:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF282:
	.string	"LO_SUM"
.LASF342:
	.string	"frequency"
.LASF315:
	.string	"rtwint"
.LASF568:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
