	.file	"regclass.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 regclass.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	fixed_regs,53,32
	.comm	fixed_reg_set,8,8
	.section	.rodata
	.align 32
	.type	initial_fixed_regs, @object
	.size	initial_fixed_regs, 53
initial_fixed_regs:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.comm	call_used_regs,53,32
	.comm	call_used_reg_set,8,8
	.comm	losing_caller_save_reg_set,8,8
	.align 32
	.type	initial_call_used_regs, @object
	.size	initial_call_used_regs, 53
initial_call_used_regs:
	.byte	3
	.byte	3
	.byte	3
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.comm	call_fixed_regs,53,32
	.comm	call_fixed_reg_set,8,8
	.comm	n_non_fixed_regs,4,4
	.comm	global_regs,53,32
	.comm	regs_invalidated_by_call,8,8
	.globl	reg_alloc_order
	.data
	.align 32
	.type	reg_alloc_order, @object
	.size	reg_alloc_order, 212
reg_alloc_order:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.long	32
	.long	33
	.long	34
	.long	35
	.long	36
	.long	37
	.long	38
	.long	39
	.long	40
	.long	41
	.long	42
	.long	43
	.long	44
	.long	45
	.long	46
	.long	47
	.long	48
	.long	49
	.long	50
	.long	51
	.long	52
	.comm	inv_reg_alloc_order,212,32
	.comm	reg_class_contents,200,32
	.section	.rodata
	.align 32
	.type	int_reg_class_contents, @object
	.size	int_reg_class_contents, 200
int_reg_class_contents:
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2
	.long	0
	.long	4
	.long	0
	.long	8
	.long	0
	.long	16
	.long	0
	.long	32
	.long	0
	.long	3
	.long	0
	.long	15
	.long	0
	.long	1114352
	.long	8160
	.long	127
	.long	8160
	.long	1114367
	.long	0
	.long	1114367
	.long	8160
	.long	256
	.long	0
	.long	512
	.long	0
	.long	65280
	.long	0
	.long	534773760
	.long	2088960
	.long	-536870912
	.long	31
	.long	534774016
	.long	2088960
	.long	534774272
	.long	2088960
	.long	534839040
	.long	2088960
	.long	131071
	.long	8160
	.long	534839551
	.long	2097120
	.long	534904831
	.long	2097120
	.long	-1
	.long	2097151
	.comm	reg_class_size,100,32
	.comm	reg_class_superclasses,2500,32
	.comm	reg_class_subclasses,2500,32
	.comm	reg_class_subunion,2500,32
	.comm	reg_class_superunion,2500,32
	.comm	reg_raw_mode,212,32
	.local	contains_reg_of_mode
	.comm	contains_reg_of_mode,1475,32
	.local	move_cost
	.comm	move_cost,147500,32
	.local	may_move_in_cost
	.comm	may_move_in_cost,147500,32
	.local	may_move_out_cost
	.comm	may_move_out_cost,147500,32
	.local	top_of_stack
	.comm	top_of_stack,472,32
	.local	reg_info_head
	.comm	reg_info_head,8,8
	.local	no_global_reg_vars
	.comm	no_global_reg_vars,4,4
	.text
	.globl	init_reg_sets
	.type	init_reg_sets, @function
init_reg_sets:
.LFB2:
	.file 1 "regclass.c"
	.loc 1 278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 284 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L2	#
.L6:
	.loc 1 286 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	movq	$0, reg_class_contents(,%rax,8)	#, reg_class_contents
	.loc 1 289 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L3	#
.L5:
	.loc 1 290 0
	movl	-4(%rbp), %eax	# j, tmp70
	leal	31(%rax), %edx	#, tmp72
	testl	%eax, %eax	# tmp71
	cmovs	%edx, %eax	# tmp72,, tmp71
	sarl	$5, %eax	#, tmp73
	cltq
	movl	-8(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	addq	%rdx, %rdx	# tmp77
	addq	%rdx, %rax	# tmp77, tmp78
	movl	int_reg_class_contents(,%rax,4), %esi	# int_reg_class_contents, D.15013
	.loc 1 291 0
	movl	-4(%rbp), %eax	# j, tmp79
	cltd
	shrl	$27, %edx	#, tmp81
	addl	%edx, %eax	# tmp81, tmp82
	andl	$31, %eax	#, tmp83
	subl	%edx, %eax	# tmp81, tmp84
	.loc 1 290 0
	movl	%eax, %ecx	# D.15012, tmp116
	shrl	%cl, %esi	# tmp116, D.15013
	movl	%esi, %eax	# D.15013, D.15013
	andl	$1, %eax	#, D.15013
	testl	%eax, %eax	# D.15013
	je	.L4	#,
	.loc 1 292 0
	movl	-8(%rbp), %eax	# i, tmp86
	cltq
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15014
	movl	-4(%rbp), %eax	# j, tmp87
	movl	$1, %esi	#, tmp88
	movl	%eax, %ecx	# tmp87, tmp118
	salq	%cl, %rsi	# tmp118, D.15014
	movq	%rsi, %rax	# D.15014, D.15014
	orq	%rax, %rdx	# D.15014, D.15014
	movl	-8(%rbp), %eax	# i, tmp90
	cltq
	movq	%rdx, reg_class_contents(,%rax,8)	# D.15014, reg_class_contents
.L4:
	.loc 1 289 0
	addl	$1, -4(%rbp)	#, j
.L3:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, j
	jle	.L5	#,
	.loc 1 284 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 284 0 is_stmt 0 discriminator 1
	cmpl	$24, -8(%rbp)	#, i
	jle	.L6	#,
	.loc 1 295 0 is_stmt 1
	movq	initial_fixed_regs(%rip), %rax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp93
	movq	%rax, fixed_regs(%rip)	# tmp93, MEM[(char * {ref-all})&fixed_regs]
	movq	initial_fixed_regs+8(%rip), %rax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp94
	movq	%rax, fixed_regs+8(%rip)	# tmp94, MEM[(char * {ref-all})&fixed_regs]
	movq	initial_fixed_regs+16(%rip), %rax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp95
	movq	%rax, fixed_regs+16(%rip)	# tmp95, MEM[(char * {ref-all})&fixed_regs]
	movq	initial_fixed_regs+24(%rip), %rax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp96
	movq	%rax, fixed_regs+24(%rip)	# tmp96, MEM[(char * {ref-all})&fixed_regs]
	movq	initial_fixed_regs+32(%rip), %rax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp97
	movq	%rax, fixed_regs+32(%rip)	# tmp97, MEM[(char * {ref-all})&fixed_regs]
	movq	initial_fixed_regs+40(%rip), %rax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp98
	movq	%rax, fixed_regs+40(%rip)	# tmp98, MEM[(char * {ref-all})&fixed_regs]
	movl	initial_fixed_regs+48(%rip), %eax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp99
	movl	%eax, fixed_regs+48(%rip)	# tmp99, MEM[(char * {ref-all})&fixed_regs]
	movzbl	initial_fixed_regs+52(%rip), %eax	# MEM[(char * {ref-all})&initial_fixed_regs], tmp100
	movb	%al, fixed_regs+52(%rip)	# tmp100, MEM[(char * {ref-all})&fixed_regs]
	.loc 1 296 0
	movq	initial_call_used_regs(%rip), %rax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp103
	movq	%rax, call_used_regs(%rip)	# tmp103, MEM[(char * {ref-all})&call_used_regs]
	movq	initial_call_used_regs+8(%rip), %rax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp104
	movq	%rax, call_used_regs+8(%rip)	# tmp104, MEM[(char * {ref-all})&call_used_regs]
	movq	initial_call_used_regs+16(%rip), %rax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp105
	movq	%rax, call_used_regs+16(%rip)	# tmp105, MEM[(char * {ref-all})&call_used_regs]
	movq	initial_call_used_regs+24(%rip), %rax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp106
	movq	%rax, call_used_regs+24(%rip)	# tmp106, MEM[(char * {ref-all})&call_used_regs]
	movq	initial_call_used_regs+32(%rip), %rax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp107
	movq	%rax, call_used_regs+32(%rip)	# tmp107, MEM[(char * {ref-all})&call_used_regs]
	movq	initial_call_used_regs+40(%rip), %rax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp108
	movq	%rax, call_used_regs+40(%rip)	# tmp108, MEM[(char * {ref-all})&call_used_regs]
	movl	initial_call_used_regs+48(%rip), %eax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp109
	movl	%eax, call_used_regs+48(%rip)	# tmp109, MEM[(char * {ref-all})&call_used_regs]
	movzbl	initial_call_used_regs+52(%rip), %eax	# MEM[(char * {ref-all})&initial_call_used_regs], tmp110
	movb	%al, call_used_regs+52(%rip)	# tmp110, MEM[(char * {ref-all})&call_used_regs]
	.loc 1 297 0
	movl	$53, %edx	#,
	movl	$0, %esi	#,
	movl	$global_regs, %edi	#,
	call	memset	#
	.loc 1 303 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L7	#
.L8:
	.loc 1 304 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp112
	cltq
	movl	reg_alloc_order(,%rax,4), %eax	# reg_alloc_order, D.15012
	cltq
	movl	-8(%rbp), %edx	# i, tmp114
	movl	%edx, inv_reg_alloc_order(,%rax,4)	# tmp114, inv_reg_alloc_order
	.loc 1 303 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L7:
	.loc 1 303 0 is_stmt 0 discriminator 1
	cmpl	$52, -8(%rbp)	#, i
	jle	.L8	#,
	.loc 1 306 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_reg_sets, .-init_reg_sets
	.type	init_reg_sets_1, @function
init_reg_sets_1:
.LFB3:
	.loc 1 313 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 313 0
	movq	%fs:40, %rax	#, tmp527
	movq	%rax, -24(%rbp)	# tmp527, D.15023
	xorl	%eax, %eax	# tmp527
.LBB2:
	.loc 1 322 0
	movl	$0, -156(%rbp)	#, i
	jmp	.L10	#
.L15:
	.loc 1 322 0 is_stmt 0 discriminator 2
	movl	-156(%rbp), %eax	# i, tmp220
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15015
	movsbl	%al, %edx	# D.15015, D.15016
	movl	target_flags(%rip), %eax	# target_flags, target_flags.1
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	je	.L11	#,
	.loc 1 322 0 discriminator 1
	movl	$2, %eax	#, iftmp.0
	jmp	.L12	#
.L11:
	.loc 1 322 0 discriminator 2
	movl	$1, %eax	#, iftmp.0
.L12:
	.loc 1 322 0 discriminator 3
	andl	%edx, %eax	# D.15016, D.15016
	testl	%eax, %eax	# D.15016
	setne	%al	#, D.15017
	movl	%eax, %edx	# D.15017, D.15015
	movl	-156(%rbp), %eax	# i, tmp222
	cltq
	movb	%dl, fixed_regs(%rax)	# D.15015, fixed_regs
	movl	-156(%rbp), %eax	# i, tmp224
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.15015
	movsbl	%al, %edx	# D.15015, D.15016
	movl	target_flags(%rip), %eax	# target_flags, target_flags.3
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	je	.L13	#,
	.loc 1 322 0 discriminator 1
	movl	$2, %eax	#, iftmp.2
	jmp	.L14	#
.L13:
	.loc 1 322 0 discriminator 2
	movl	$1, %eax	#, iftmp.2
.L14:
	.loc 1 322 0 discriminator 3
	andl	%edx, %eax	# D.15016, D.15016
	testl	%eax, %eax	# D.15016
	setne	%al	#, D.15017
	movl	%eax, %edx	# D.15017, D.15015
	movl	-156(%rbp), %eax	# i, tmp226
	cltq
	movb	%dl, call_used_regs(%rax)	# D.15015, call_used_regs
	addl	$1, -156(%rbp)	#, i
.L10:
	.loc 1 322 0 discriminator 1
	cmpl	$52, -156(%rbp)	#, i
	jle	.L15	#,
	.loc 1 322 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.4
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L16	#,
	.loc 1 322 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.5
	testl	%eax, %eax	# flag_pic.5
	je	.L16	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.7
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L17	#,
	.loc 1 322 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.8
	testl	%eax, %eax	# flag_pic.8
	jne	.L18	#,
.L17:
	.loc 1 322 0 discriminator 1
	movl	$-1, %eax	#, iftmp.6
	jmp	.L19	#
.L18:
	movl	$3, %eax	#, iftmp.6
.L19:
	.loc 1 322 0 discriminator 3
	movl	%eax, %eax	# iftmp.6, tmp227
	movb	$1, fixed_regs(%rax)	#, fixed_regs
	movl	target_flags(%rip), %eax	# target_flags, target_flags.10
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L20	#,
	.loc 1 322 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.11
	testl	%eax, %eax	# flag_pic.11
	jne	.L21	#,
.L20:
	.loc 1 322 0 discriminator 1
	movl	$-1, %eax	#, iftmp.9
	jmp	.L22	#
.L21:
	movl	$3, %eax	#, iftmp.9
.L22:
	.loc 1 322 0 discriminator 3
	movl	%eax, %eax	# iftmp.9, tmp228
	movb	$1, call_used_regs(%rax)	#, call_used_regs
.L16:
	.loc 1 322 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.12
	andl	$16384, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L23	#,
.LBB3:
	.loc 1 322 0 discriminator 1
	movl	$0, -152(%rbp)	#, i
	jmp	.L24	#
.L26:
	.loc 1 322 0 discriminator 2
	movq	reg_class_contents+136(%rip), %rdx	# reg_class_contents, D.15018
	movl	-152(%rbp), %eax	# i, tmp229
	movl	%eax, %ecx	# tmp229, tmp530
	shrq	%cl, %rdx	# tmp530, D.15018
	movq	%rdx, %rax	# D.15018, D.15018
	andl	$1, %eax	#, D.15018
	testq	%rax, %rax	# D.15018
	je	.L25	#,
	.loc 1 322 0 discriminator 1
	movl	-152(%rbp), %eax	# i, tmp231
	cltq
	movb	$1, call_used_regs(%rax)	#, call_used_regs
	movl	-152(%rbp), %eax	# i, tmp233
	cltq
	movzbl	call_used_regs(%rax), %edx	# call_used_regs, D.15015
	movl	-152(%rbp), %eax	# i, tmp235
	cltq
	movb	%dl, fixed_regs(%rax)	# D.15015, fixed_regs
.L25:
	.loc 1 322 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L24:
	.loc 1 322 0 discriminator 1
	cmpl	$52, -152(%rbp)	#, i
	jle	.L26	#,
.L23:
.LBE3:
	.loc 1 322 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.13
	andl	$327680, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L27	#,
.LBB4:
	.loc 1 322 0 discriminator 1
	movl	$0, -148(%rbp)	#, i
	jmp	.L28	#
.L30:
	.loc 1 322 0 discriminator 2
	movq	reg_class_contents+128(%rip), %rdx	# reg_class_contents, D.15018
	movl	-148(%rbp), %eax	# i, tmp236
	movl	%eax, %ecx	# tmp236, tmp532
	shrq	%cl, %rdx	# tmp532, D.15018
	movq	%rdx, %rax	# D.15018, D.15018
	andl	$1, %eax	#, D.15018
	testq	%rax, %rax	# D.15018
	je	.L29	#,
	.loc 1 322 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp238
	cltq
	movb	$1, call_used_regs(%rax)	#, call_used_regs
	movl	-148(%rbp), %eax	# i, tmp240
	cltq
	movzbl	call_used_regs(%rax), %edx	# call_used_regs, D.15015
	movl	-148(%rbp), %eax	# i, tmp242
	cltq
	movb	%dl, fixed_regs(%rax)	# D.15015, fixed_regs
.L29:
	.loc 1 322 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L28:
	.loc 1 322 0 discriminator 1
	cmpl	$52, -148(%rbp)	#, i
	jle	.L30	#,
.L27:
.LBE4:
	.loc 1 322 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.14
	andl	$1, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L31	#,
	.loc 1 322 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.15
	andl	$32, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L31	#,
.LBB5:
	movq	reg_class_contents+120(%rip), %rax	# reg_class_contents, tmp243
	movq	%rax, -104(%rbp)	# tmp243, x
	movl	$0, -144(%rbp)	#, i
	jmp	.L32	#
.L34:
	.loc 1 322 0 discriminator 2
	movl	-144(%rbp), %eax	# i, tmp244
	movq	-104(%rbp), %rdx	# x, tmp245
	movl	%eax, %ecx	# tmp244, tmp534
	shrq	%cl, %rdx	# tmp534, D.15018
	movq	%rdx, %rax	# D.15018, D.15018
	andl	$1, %eax	#, D.15018
	testq	%rax, %rax	# D.15018
	je	.L33	#,
	.loc 1 322 0 discriminator 1
	movl	-144(%rbp), %eax	# i, tmp247
	cltq
	movb	$1, call_used_regs(%rax)	#, call_used_regs
	movl	-144(%rbp), %eax	# i, tmp249
	cltq
	movzbl	call_used_regs(%rax), %edx	# call_used_regs, D.15015
	movl	-144(%rbp), %eax	# i, tmp251
	cltq
	movb	%dl, fixed_regs(%rax)	# D.15015, fixed_regs
.L33:
	.loc 1 322 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L32:
	.loc 1 322 0 discriminator 1
	cmpl	$52, -144(%rbp)	#, i
	jle	.L34	#,
.L31:
.LBE5:
.LBE2:
	.loc 1 327 0 is_stmt 1
	movl	$100, %edx	#,
	movl	$0, %esi	#,
	movl	$reg_class_size, %edi	#,
	call	memset	#
	.loc 1 328 0
	movl	$0, -168(%rbp)	#, i
	jmp	.L35	#
.L39:
	.loc 1 329 0
	movl	$0, -164(%rbp)	#, j
	jmp	.L36	#
.L38:
	.loc 1 330 0
	movl	-168(%rbp), %eax	# i, tmp252
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15018
	movl	-164(%rbp), %eax	# j, j.16
	movl	%eax, %ecx	# j.16, tmp536
	shrq	%cl, %rdx	# tmp536, D.15018
	movq	%rdx, %rax	# D.15018, D.15018
	andl	$1, %eax	#, D.15018
	testq	%rax, %rax	# D.15018
	je	.L37	#,
	.loc 1 331 0
	movl	-168(%rbp), %eax	# i, tmp253
	movl	reg_class_size(,%rax,4), %eax	# reg_class_size, D.15019
	leal	1(%rax), %edx	#, D.15019
	movl	-168(%rbp), %eax	# i, tmp254
	movl	%edx, reg_class_size(,%rax,4)	# D.15019, reg_class_size
.L37:
	.loc 1 329 0
	addl	$1, -164(%rbp)	#, j
.L36:
	.loc 1 329 0 is_stmt 0 discriminator 1
	cmpl	$52, -164(%rbp)	#, j
	jbe	.L38	#,
	.loc 1 328 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L35:
	.loc 1 328 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L39	#,
	.loc 1 337 0 is_stmt 1
	movl	$0, -168(%rbp)	#, i
	jmp	.L40	#
.L49:
	.loc 1 339 0
	movl	$0, -164(%rbp)	#, j
	jmp	.L41	#
.L48:
.LBB6:
	.loc 1 347 0
	movl	-168(%rbp), %eax	# i, tmp255
	movq	reg_class_contents(,%rax,8), %rbx	# reg_class_contents, c
	.loc 1 348 0
	movl	-164(%rbp), %eax	# j, tmp256
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15018
	orq	%rax, %rbx	# D.15018, c
	.loc 1 349 0
	movl	$0, -140(%rbp)	#, k
	jmp	.L42	#
.L47:
	.loc 1 351 0
	movl	-140(%rbp), %eax	# k, tmp258
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15018
	movq	%rbx, %rdx	# c, D.15018
	notq	%rdx	# D.15018
	andq	%rdx, %rax	# D.15018, D.15018
	testq	%rax, %rax	# D.15018
	jne	.L43	#,
	.loc 1 351 0 is_stmt 0 discriminator 1
	nop
.L44:
	.loc 1 357 0 is_stmt 1 discriminator 1
	movl	-140(%rbp), %eax	# k, tmp260
	cltq
	movq	reg_class_contents(,%rax,8), %rcx	# reg_class_contents, D.15018
	movl	-164(%rbp), %esi	# j, tmp261
	movl	-168(%rbp), %edx	# i, tmp262
	movq	%rdx, %rax	# tmp262, tmp263
	salq	$2, %rax	#, tmp263
	addq	%rdx, %rax	# tmp262, tmp263
	leaq	0(,%rax,4), %rdx	#, tmp264
	addq	%rdx, %rax	# tmp264, tmp263
	addq	%rsi, %rax	# tmp261, tmp265
	movl	reg_class_subunion(,%rax,4), %eax	# reg_class_subunion, D.15020
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15018
	notq	%rax	# D.15018
	andq	%rcx, %rax	# D.15018, D.15018
	testq	%rax, %rax	# D.15018
	jne	.L46	#,
	jmp	.L132	#
.L43:
	.loc 1 353 0
	jmp	.L45	#
.L132:
	.loc 1 357 0 discriminator 1
	jmp	.L45	#
.L46:
	.loc 1 360 0
	movl	-140(%rbp), %ecx	# k, k.17
	movl	-164(%rbp), %esi	# j, tmp267
	movl	-168(%rbp), %edx	# i, tmp268
	movq	%rdx, %rax	# tmp268, tmp269
	salq	$2, %rax	#, tmp269
	addq	%rdx, %rax	# tmp268, tmp269
	leaq	0(,%rax,4), %rdx	#, tmp270
	addq	%rdx, %rax	# tmp270, tmp269
	addq	%rsi, %rax	# tmp267, tmp271
	movl	%ecx, reg_class_subunion(,%rax,4)	# k.17, reg_class_subunion
.L45:
	.loc 1 349 0
	addl	$1, -140(%rbp)	#, k
.L42:
	.loc 1 349 0 is_stmt 0 discriminator 1
	cmpl	$24, -140(%rbp)	#, k
	jle	.L47	#,
.LBE6:
	.loc 1 339 0 is_stmt 1
	addl	$1, -164(%rbp)	#, j
.L41:
	.loc 1 339 0 is_stmt 0 discriminator 1
	cmpl	$24, -164(%rbp)	#, j
	jbe	.L48	#,
	.loc 1 337 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L40:
	.loc 1 337 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L49	#,
	.loc 1 371 0 is_stmt 1
	movl	$0, -168(%rbp)	#, i
	jmp	.L50	#
.L57:
	.loc 1 373 0
	movl	$0, -164(%rbp)	#, j
	jmp	.L51	#
.L56:
.LBB7:
	.loc 1 381 0
	movl	-168(%rbp), %eax	# i, tmp272
	movq	reg_class_contents(,%rax,8), %rbx	# reg_class_contents, c
	.loc 1 382 0
	movl	-164(%rbp), %eax	# j, tmp273
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15018
	orq	%rax, %rbx	# D.15018, c
	.loc 1 383 0
	movl	$0, -136(%rbp)	#, k
	jmp	.L52	#
.L55:
	.loc 1 384 0
	movl	-136(%rbp), %eax	# k, tmp275
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15018
	notq	%rax	# D.15018
	andq	%rbx, %rax	# c, D.15018
	testq	%rax, %rax	# D.15018
	jne	.L53	#,
	.loc 1 384 0 is_stmt 0 discriminator 1
	jmp	.L54	#
.L53:
	.loc 1 383 0 is_stmt 1
	addl	$1, -136(%rbp)	#, k
.L52:
	.loc 1 383 0 is_stmt 0 discriminator 1
	cmpl	$24, -136(%rbp)	#, k
	jle	.L55	#,
.L54:
	.loc 1 387 0 is_stmt 1
	movl	-136(%rbp), %ecx	# k, k.18
	movl	-164(%rbp), %esi	# j, tmp276
	movl	-168(%rbp), %edx	# i, tmp277
	movq	%rdx, %rax	# tmp277, tmp278
	salq	$2, %rax	#, tmp278
	addq	%rdx, %rax	# tmp277, tmp278
	leaq	0(,%rax,4), %rdx	#, tmp279
	addq	%rdx, %rax	# tmp279, tmp278
	addq	%rsi, %rax	# tmp276, tmp280
	movl	%ecx, reg_class_superunion(,%rax,4)	# k.18, reg_class_superunion
.LBE7:
	.loc 1 373 0
	addl	$1, -164(%rbp)	#, j
.L51:
	.loc 1 373 0 is_stmt 0 discriminator 1
	cmpl	$24, -164(%rbp)	#, j
	jbe	.L56	#,
	.loc 1 371 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L50:
	.loc 1 371 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L57	#,
	.loc 1 394 0 is_stmt 1
	movl	$0, -168(%rbp)	#, i
	jmp	.L58	#
.L61:
	.loc 1 396 0
	movl	$0, -164(%rbp)	#, j
	jmp	.L59	#
.L60:
	.loc 1 398 0 discriminator 2
	movl	-164(%rbp), %ecx	# j, tmp281
	movl	-168(%rbp), %edx	# i, tmp282
	movq	%rdx, %rax	# tmp282, tmp283
	salq	$2, %rax	#, tmp283
	addq	%rdx, %rax	# tmp282, tmp283
	leaq	0(,%rax,4), %rdx	#, tmp284
	addq	%rdx, %rax	# tmp284, tmp283
	addq	%rcx, %rax	# tmp281, tmp285
	movl	$25, reg_class_superclasses(,%rax,4)	#, reg_class_superclasses
	.loc 1 399 0 discriminator 2
	movl	-164(%rbp), %ecx	# j, tmp286
	movl	-168(%rbp), %edx	# i, tmp287
	movq	%rdx, %rax	# tmp287, tmp288
	salq	$2, %rax	#, tmp288
	addq	%rdx, %rax	# tmp287, tmp288
	leaq	0(,%rax,4), %rdx	#, tmp289
	addq	%rdx, %rax	# tmp289, tmp288
	addq	%rcx, %rax	# tmp286, tmp290
	movl	$25, reg_class_subclasses(,%rax,4)	#, reg_class_subclasses
	.loc 1 396 0 discriminator 2
	addl	$1, -164(%rbp)	#, j
.L59:
	.loc 1 396 0 is_stmt 0 discriminator 1
	cmpl	$24, -164(%rbp)	#, j
	jbe	.L60	#,
	.loc 1 394 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L58:
	.loc 1 394 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L61	#,
	.loc 1 403 0 is_stmt 1
	movl	$0, -168(%rbp)	#, i
	jmp	.L62	#
.L74:
	.loc 1 405 0
	cmpl	$0, -168(%rbp)	#, i
	jne	.L63	#,
	.loc 1 406 0
	jmp	.L64	#
.L63:
	.loc 1 408 0
	movl	-168(%rbp), %eax	# i, tmp294
	addl	$1, %eax	#, tmp293
	movl	%eax, -164(%rbp)	# tmp293, j
	jmp	.L65	#
.L73:
.LBB8:
	.loc 1 412 0
	movl	-168(%rbp), %eax	# i, tmp295
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15018
	movl	-164(%rbp), %eax	# j, tmp296
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15018
	notq	%rax	# D.15018
	andq	%rdx, %rax	# D.15018, D.15018
	testq	%rax, %rax	# D.15018
	jne	.L66	#,
	.loc 1 412 0 is_stmt 0 discriminator 1
	nop
.L67:
	.loc 1 418 0 is_stmt 1 discriminator 1
	movl	-168(%rbp), %edx	# i, tmp297
	movq	%rdx, %rax	# tmp297, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# tmp297, tmp298
	leaq	0(,%rax,4), %rdx	#, tmp299
	addq	%rdx, %rax	# tmp299, tmp298
	salq	$2, %rax	#, tmp300
	addq	$reg_class_superclasses, %rax	#, tmp301
	movq	%rax, -128(%rbp)	# tmp301, p
	.loc 1 419 0 discriminator 1
	jmp	.L69	#
.L66:
	.loc 1 414 0
	jmp	.L68	#
.L70:
	.loc 1 419 0 discriminator 2
	addq	$4, -128(%rbp)	#, p
.L69:
	.loc 1 419 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# p, tmp302
	movl	(%rax), %eax	# *p_25, D.15020
	cmpl	$25, %eax	#, D.15020
	jne	.L70	#,
	.loc 1 420 0 is_stmt 1
	movq	-128(%rbp), %rax	# p, tmp303
	movl	-164(%rbp), %edx	# j, tmp304
	movl	%edx, (%rax)	# tmp304, *p_25
	.loc 1 422 0
	movl	-164(%rbp), %edx	# j, tmp305
	movq	%rdx, %rax	# tmp305, tmp306
	salq	$2, %rax	#, tmp306
	addq	%rdx, %rax	# tmp305, tmp306
	leaq	0(,%rax,4), %rdx	#, tmp307
	addq	%rdx, %rax	# tmp307, tmp306
	salq	$2, %rax	#, tmp308
	addq	$reg_class_subclasses, %rax	#, tmp309
	movq	%rax, -128(%rbp)	# tmp309, p
	.loc 1 423 0
	jmp	.L71	#
.L72:
	.loc 1 423 0 is_stmt 0 discriminator 2
	addq	$4, -128(%rbp)	#, p
.L71:
	.loc 1 423 0 discriminator 1
	movq	-128(%rbp), %rax	# p, tmp310
	movl	(%rax), %eax	# *p_26, D.15020
	cmpl	$25, %eax	#, D.15020
	jne	.L72	#,
	.loc 1 424 0 is_stmt 1
	movq	-128(%rbp), %rax	# p, tmp311
	movl	-168(%rbp), %edx	# i, tmp312
	movl	%edx, (%rax)	# tmp312, *p_26
.L68:
.LBE8:
	.loc 1 408 0
	addl	$1, -164(%rbp)	#, j
.L65:
	.loc 1 408 0 is_stmt 0 discriminator 1
	cmpl	$24, -164(%rbp)	#, j
	jbe	.L73	#,
.L64:
	.loc 1 403 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L62:
	.loc 1 403 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L74	#,
	.loc 1 430 0 is_stmt 1
	movq	$0, fixed_reg_set(%rip)	#, fixed_reg_set
	.loc 1 431 0
	movq	$0, call_used_reg_set(%rip)	#, call_used_reg_set
	.loc 1 432 0
	movq	$0, call_fixed_reg_set(%rip)	#, call_fixed_reg_set
	.loc 1 433 0
	movq	$0, regs_invalidated_by_call(%rip)	#, regs_invalidated_by_call
	.loc 1 435 0
	movq	fixed_regs(%rip), %rax	# MEM[(char * {ref-all})&fixed_regs], tmp315
	movq	%rax, call_fixed_regs(%rip)	# tmp315, MEM[(char * {ref-all})&call_fixed_regs]
	movq	fixed_regs+8(%rip), %rax	# MEM[(char * {ref-all})&fixed_regs], tmp316
	movq	%rax, call_fixed_regs+8(%rip)	# tmp316, MEM[(char * {ref-all})&call_fixed_regs]
	movq	fixed_regs+16(%rip), %rax	# MEM[(char * {ref-all})&fixed_regs], tmp317
	movq	%rax, call_fixed_regs+16(%rip)	# tmp317, MEM[(char * {ref-all})&call_fixed_regs]
	movq	fixed_regs+24(%rip), %rax	# MEM[(char * {ref-all})&fixed_regs], tmp318
	movq	%rax, call_fixed_regs+24(%rip)	# tmp318, MEM[(char * {ref-all})&call_fixed_regs]
	movq	fixed_regs+32(%rip), %rax	# MEM[(char * {ref-all})&fixed_regs], tmp319
	movq	%rax, call_fixed_regs+32(%rip)	# tmp319, MEM[(char * {ref-all})&call_fixed_regs]
	movq	fixed_regs+40(%rip), %rax	# MEM[(char * {ref-all})&fixed_regs], tmp320
	movq	%rax, call_fixed_regs+40(%rip)	# tmp320, MEM[(char * {ref-all})&call_fixed_regs]
	movl	fixed_regs+48(%rip), %eax	# MEM[(char * {ref-all})&fixed_regs], tmp321
	movl	%eax, call_fixed_regs+48(%rip)	# tmp321, MEM[(char * {ref-all})&call_fixed_regs]
	movzbl	fixed_regs+52(%rip), %eax	# MEM[(char * {ref-all})&fixed_regs], tmp322
	movb	%al, call_fixed_regs+52(%rip)	# tmp322, MEM[(char * {ref-all})&call_fixed_regs]
	.loc 1 437 0
	movl	$0, n_non_fixed_regs(%rip)	#, n_non_fixed_regs
	.loc 1 439 0
	movl	$0, -168(%rbp)	#, i
	jmp	.L75	#
.L89:
	.loc 1 441 0
	movl	-168(%rbp), %eax	# i, tmp323
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15015
	testb	%al, %al	# D.15015
	je	.L76	#,
	.loc 1 442 0
	movl	-168(%rbp), %eax	# i, i.19
	movl	$1, %edx	#, tmp324
	movl	%eax, %ecx	# i.19, tmp538
	salq	%cl, %rdx	# tmp538, D.15018
	movq	fixed_reg_set(%rip), %rax	# fixed_reg_set, fixed_reg_set.20
	orq	%rdx, %rax	# D.15018, fixed_reg_set.21
	movq	%rax, fixed_reg_set(%rip)	# fixed_reg_set.21, fixed_reg_set
	jmp	.L77	#
.L76:
	.loc 1 444 0
	movl	n_non_fixed_regs(%rip), %eax	# n_non_fixed_regs, n_non_fixed_regs.22
	addl	$1, %eax	#, n_non_fixed_regs.23
	movl	%eax, n_non_fixed_regs(%rip)	# n_non_fixed_regs.23, n_non_fixed_regs
.L77:
	.loc 1 446 0
	movl	-168(%rbp), %eax	# i, tmp325
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.15015
	testb	%al, %al	# D.15015
	je	.L78	#,
	.loc 1 447 0
	movl	-168(%rbp), %eax	# i, i.24
	movl	$1, %edx	#, tmp326
	movl	%eax, %ecx	# i.24, tmp539
	salq	%cl, %rdx	# tmp539, D.15018
	movq	call_used_reg_set(%rip), %rax	# call_used_reg_set, call_used_reg_set.25
	orq	%rdx, %rax	# D.15018, call_used_reg_set.26
	movq	%rax, call_used_reg_set(%rip)	# call_used_reg_set.26, call_used_reg_set
.L78:
	.loc 1 448 0
	movl	-168(%rbp), %eax	# i, tmp327
	movzbl	call_fixed_regs(%rax), %eax	# call_fixed_regs, D.15015
	testb	%al, %al	# D.15015
	je	.L79	#,
	.loc 1 449 0
	movl	-168(%rbp), %eax	# i, i.27
	movl	$1, %edx	#, tmp328
	movl	%eax, %ecx	# i.27, tmp540
	salq	%cl, %rdx	# tmp540, D.15018
	movq	call_fixed_reg_set(%rip), %rax	# call_fixed_reg_set, call_fixed_reg_set.28
	orq	%rdx, %rax	# D.15018, call_fixed_reg_set.29
	movq	%rax, call_fixed_reg_set(%rip)	# call_fixed_reg_set.29, call_fixed_reg_set
.L79:
	.loc 1 450 0
	movl	-168(%rbp), %eax	# i, tmp329
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$1, %eax	#, D.15020
	je	.L80	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	movl	-168(%rbp), %eax	# i, tmp330
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$2, %eax	#, D.15020
	je	.L80	#,
	movl	-168(%rbp), %eax	# i, tmp331
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$3, %eax	#, D.15020
	je	.L80	#,
	movl	-168(%rbp), %eax	# i, tmp332
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$4, %eax	#, D.15020
	je	.L80	#,
	movl	-168(%rbp), %eax	# i, tmp333
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$7, %eax	#, D.15020
	je	.L80	#,
	movl	-168(%rbp), %eax	# i, tmp334
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$5, %eax	#, D.15020
	je	.L80	#,
	movl	-168(%rbp), %eax	# i, tmp335
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15020
	cmpl	$6, %eax	#, D.15020
	jne	.L81	#,
.L80:
	.loc 1 451 0 is_stmt 1
	movl	-168(%rbp), %eax	# i, i.30
	movl	$1, %edx	#, tmp336
	movl	%eax, %ecx	# i.30, tmp541
	salq	%cl, %rdx	# tmp541, D.15018
	movq	losing_caller_save_reg_set(%rip), %rax	# losing_caller_save_reg_set, losing_caller_save_reg_set.31
	orq	%rdx, %rax	# D.15018, losing_caller_save_reg_set.32
	movq	%rax, losing_caller_save_reg_set(%rip)	# losing_caller_save_reg_set.32, losing_caller_save_reg_set
.L81:
	.loc 1 462 0
	cmpl	$7, -168(%rbp)	#, i
	je	.L82	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	cmpl	$20, -168(%rbp)	#, i
	je	.L82	#,
	.loc 1 465 0 is_stmt 1
	cmpl	$6, -168(%rbp)	#, i
	je	.L82	#,
	.loc 1 469 0
	cmpl	$16, -168(%rbp)	#, i
	jne	.L83	#,
	.loc 1 469 0 is_stmt 0 discriminator 1
	movl	-168(%rbp), %eax	# i, tmp337
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15015
	testb	%al, %al	# D.15015
	je	.L83	#,
	jmp	.L82	#
.L83:
	.loc 1 473 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.34
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	jne	.L84	#,
	.loc 1 473 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.35
	testl	%eax, %eax	# flag_pic.35
	jne	.L85	#,
.L84:
	.loc 1 473 0 discriminator 1
	movl	$-1, %eax	#, iftmp.33
	jmp	.L86	#
.L85:
	movl	$3, %eax	#, iftmp.33
.L86:
	.loc 1 473 0 discriminator 3
	cmpl	-168(%rbp), %eax	# i, iftmp.33
	jne	.L87	#,
	.loc 1 473 0 discriminator 1
	movl	-168(%rbp), %eax	# i, tmp338
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15015
	testb	%al, %al	# D.15015
	je	.L87	#,
	jmp	.L82	#
.L87:
	.loc 1 480 0 is_stmt 1
	movl	-168(%rbp), %eax	# i, tmp339
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.15015
	.loc 1 476 0
	testb	%al, %al	# D.15015
	jne	.L88	#,
	.loc 1 482 0
	movl	-168(%rbp), %eax	# i, tmp340
	movzbl	global_regs(%rax), %eax	# global_regs, D.15015
	testb	%al, %al	# D.15015
	je	.L82	#,
.L88:
	.loc 1 483 0
	movl	-168(%rbp), %eax	# i, i.36
	movl	$1, %edx	#, tmp341
	movl	%eax, %ecx	# i.36, tmp542
	salq	%cl, %rdx	# tmp542, D.15018
	movq	regs_invalidated_by_call(%rip), %rax	# regs_invalidated_by_call, regs_invalidated_by_call.37
	orq	%rdx, %rax	# D.15018, regs_invalidated_by_call.38
	movq	%rax, regs_invalidated_by_call(%rip)	# regs_invalidated_by_call.38, regs_invalidated_by_call
.L82:
	.loc 1 439 0
	addl	$1, -168(%rbp)	#, i
.L75:
	.loc 1 439 0 is_stmt 0 discriminator 1
	cmpl	$52, -168(%rbp)	#, i
	jbe	.L89	#,
	.loc 1 486 0 is_stmt 1
	movl	$1475, %edx	#,
	movl	$0, %esi	#,
	movl	$contains_reg_of_mode, %edi	#,
	call	memset	#
	.loc 1 487 0
	leaq	-96(%rbp), %rax	#, tmp342
	movl	$59, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp342,
	call	memset	#
	.loc 1 488 0
	movl	$0, -160(%rbp)	#, m
	jmp	.L90	#
.L108:
	.loc 1 489 0
	movl	$0, -168(%rbp)	#, i
	jmp	.L91	#
.L107:
	.loc 1 490 0
	movl	-168(%rbp), %eax	# i, tmp343
	movl	$12, %esi	#,
	movl	%eax, %edi	# tmp343,
	call	reg_classes_intersect_p	#
	testl	%eax, %eax	# D.15016
	jne	.L92	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# m, m.41
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15021
	cmpl	$5, %eax	#, D.15021
	je	.L93	#,
	.loc 1 490 0 discriminator 4
	movl	-160(%rbp), %eax	# m, m.42
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15021
	cmpl	$6, %eax	#, D.15021
	jne	.L94	#,
.L93:
	.loc 1 490 0 discriminator 3
	movl	$2, %eax	#, iftmp.40
	jmp	.L95	#
.L94:
	.loc 1 490 0 discriminator 1
	movl	$1, %eax	#, iftmp.40
.L95:
	jmp	.L96	#
.L92:
	.loc 1 490 0 discriminator 2
	cmpl	$18, -160(%rbp)	#, m
	je	.L97	#,
	.loc 1 490 0 discriminator 1
	movl	-160(%rbp), %eax	# m, iftmp.43
	jmp	.L98	#
.L97:
	.loc 1 490 0 discriminator 2
	movl	$17, %eax	#, iftmp.43
.L98:
	.loc 1 490 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15022
	movzbl	%al, %edx	# D.15022, D.15016
	movl	target_flags(%rip), %eax	# target_flags, target_flags.45
	andl	$33554432, %eax	#, D.15016
	testl	%eax, %eax	# D.15016
	je	.L99	#,
	.loc 1 490 0 discriminator 1
	movl	$8, %eax	#, iftmp.44
	jmp	.L100	#
.L99:
	.loc 1 490 0 discriminator 2
	movl	$4, %eax	#, iftmp.44
.L100:
	.loc 1 490 0 discriminator 3
	addl	%edx, %eax	# D.15016, D.15016
	subl	$1, %eax	#, D.15016
	movl	target_flags(%rip), %edx	# target_flags, target_flags.47
	andl	$33554432, %edx	#, D.15016
	testl	%edx, %edx	# D.15016
	je	.L101	#,
	.loc 1 490 0 discriminator 1
	movl	$8, %ebx	#, iftmp.46
	jmp	.L102	#
.L101:
	.loc 1 490 0 discriminator 2
	movl	$4, %ebx	#, iftmp.46
.L102:
	.loc 1 490 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.46
.L96:
	.loc 1 490 0 discriminator 6
	movl	-168(%rbp), %edx	# i, tmp349
	movl	reg_class_size(,%rdx,4), %edx	# reg_class_size, D.15019
	cmpl	%edx, %eax	# D.15019, iftmp.39
	ja	.L103	#,
	.loc 1 491 0 is_stmt 1
	movl	$0, -164(%rbp)	#, j
	jmp	.L104	#
.L106:
	.loc 1 492 0
	movl	-164(%rbp), %eax	# j, tmp350
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15015
	testb	%al, %al	# D.15015
	jne	.L105	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movl	-168(%rbp), %eax	# i, tmp351
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15018
	movl	-164(%rbp), %eax	# j, j.48
	movl	%eax, %ecx	# j.48, tmp545
	shrq	%cl, %rdx	# tmp545, D.15018
	movq	%rdx, %rax	# D.15018, D.15018
	andl	$1, %eax	#, D.15018
	testq	%rax, %rax	# D.15018
	je	.L105	#,
	.loc 1 493 0 is_stmt 1
	movl	-164(%rbp), %eax	# j, j.49
	movl	-160(%rbp), %edx	# m, tmp352
	movl	%edx, %esi	# tmp352,
	movl	%eax, %edi	# j.49,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15016
	je	.L105	#,
	.loc 1 495 0
	movl	-160(%rbp), %esi	# m, tmp353
	movl	-168(%rbp), %ecx	# i, tmp354
	movq	%rcx, %rdx	# tmp354, tmp355
	leaq	0(,%rdx,4), %rax	#, tmp356
	movq	%rax, %rdx	# tmp356, tmp355
	movq	%rdx, %rax	# tmp355, tmp357
	salq	$4, %rax	#, tmp357
	subq	%rdx, %rax	# tmp355, tmp357
	subq	%rcx, %rax	# tmp354, tmp357
	addq	%rsi, %rax	# tmp353, tmp358
	addq	$contains_reg_of_mode, %rax	#, tmp359
	movb	$1, (%rax)	#, contains_reg_of_mode
	.loc 1 496 0
	movl	-160(%rbp), %eax	# m, tmp360
	movb	$1, -96(%rbp,%rax)	#, allocatable_regs_of_mode
	.loc 1 497 0
	jmp	.L103	#
.L105:
	.loc 1 491 0
	addl	$1, -164(%rbp)	#, j
.L104:
	.loc 1 491 0 is_stmt 0 discriminator 1
	cmpl	$52, -164(%rbp)	#, j
	jbe	.L106	#,
.L103:
	.loc 1 489 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L91:
	.loc 1 489 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L107	#,
	.loc 1 488 0 is_stmt 1
	addl	$1, -160(%rbp)	#, m
.L90:
	.loc 1 488 0 is_stmt 0 discriminator 1
	cmpl	$58, -160(%rbp)	#, m
	jbe	.L108	#,
	.loc 1 503 0 is_stmt 1
	movl	$0, -160(%rbp)	#, m
	jmp	.L109	#
.L130:
	.loc 1 504 0
	movl	-160(%rbp), %eax	# m, tmp361
	movzbl	-96(%rbp,%rax), %eax	# allocatable_regs_of_mode, D.15015
	testb	%al, %al	# D.15015
	je	.L110	#,
	.loc 1 506 0
	movl	$0, -168(%rbp)	#, i
	jmp	.L111	#
.L129:
	.loc 1 507 0
	movl	-160(%rbp), %esi	# m, tmp362
	movl	-168(%rbp), %ecx	# i, tmp363
	movq	%rcx, %rdx	# tmp363, tmp364
	leaq	0(,%rdx,4), %rax	#, tmp365
	movq	%rax, %rdx	# tmp365, tmp364
	movq	%rdx, %rax	# tmp364, tmp366
	salq	$4, %rax	#, tmp366
	subq	%rdx, %rax	# tmp364, tmp366
	subq	%rcx, %rax	# tmp363, tmp366
	addq	%rsi, %rax	# tmp362, tmp367
	addq	$contains_reg_of_mode, %rax	#, tmp368
	movzbl	(%rax), %eax	# contains_reg_of_mode, D.15015
	testb	%al, %al	# D.15015
	je	.L112	#,
	.loc 1 508 0
	movl	$0, -164(%rbp)	#, j
	jmp	.L113	#
.L125:
.LBB9:
	.loc 1 513 0
	movl	-160(%rbp), %esi	# m, tmp369
	movl	-164(%rbp), %ecx	# j, tmp370
	movq	%rcx, %rdx	# tmp370, tmp371
	leaq	0(,%rdx,4), %rax	#, tmp372
	movq	%rax, %rdx	# tmp372, tmp371
	movq	%rdx, %rax	# tmp371, tmp373
	salq	$4, %rax	#, tmp373
	subq	%rdx, %rax	# tmp371, tmp373
	subq	%rcx, %rax	# tmp370, tmp373
	addq	%rsi, %rax	# tmp369, tmp374
	addq	$contains_reg_of_mode, %rax	#, tmp375
	movzbl	(%rax), %eax	# contains_reg_of_mode, D.15015
	testb	%al, %al	# D.15015
	jne	.L114	#,
	.loc 1 515 0
	movl	-164(%rbp), %ecx	# j, tmp376
	movl	-160(%rbp), %eax	# m, tmp377
	movl	-168(%rbp), %edx	# i, tmp378
	imulq	$625, %rax, %rsi	#, tmp377, tmp379
	movq	%rdx, %rax	# tmp378, tmp380
	salq	$2, %rax	#, tmp380
	addq	%rdx, %rax	# tmp378, tmp380
	leaq	0(,%rax,4), %rdx	#, tmp381
	addq	%rdx, %rax	# tmp381, tmp380
	addq	%rsi, %rax	# tmp379, tmp382
	addq	%rcx, %rax	# tmp376, tmp383
	movl	$65536, move_cost(,%rax,4)	#, move_cost
	.loc 1 516 0
	movl	-164(%rbp), %ecx	# j, tmp384
	movl	-160(%rbp), %eax	# m, tmp385
	movl	-168(%rbp), %edx	# i, tmp386
	imulq	$625, %rax, %rsi	#, tmp385, tmp387
	movq	%rdx, %rax	# tmp386, tmp388
	salq	$2, %rax	#, tmp388
	addq	%rdx, %rax	# tmp386, tmp388
	leaq	0(,%rax,4), %rdx	#, tmp389
	addq	%rdx, %rax	# tmp389, tmp388
	addq	%rsi, %rax	# tmp387, tmp390
	addq	%rcx, %rax	# tmp384, tmp391
	movl	$65536, may_move_in_cost(,%rax,4)	#, may_move_in_cost
	.loc 1 517 0
	movl	-164(%rbp), %ecx	# j, tmp392
	movl	-160(%rbp), %eax	# m, tmp393
	movl	-168(%rbp), %edx	# i, tmp394
	imulq	$625, %rax, %rsi	#, tmp393, tmp395
	movq	%rdx, %rax	# tmp394, tmp396
	salq	$2, %rax	#, tmp396
	addq	%rdx, %rax	# tmp394, tmp396
	leaq	0(,%rax,4), %rdx	#, tmp397
	addq	%rdx, %rax	# tmp397, tmp396
	addq	%rsi, %rax	# tmp395, tmp398
	addq	%rcx, %rax	# tmp392, tmp399
	movl	$65536, may_move_out_cost(,%rax,4)	#, may_move_out_cost
	jmp	.L115	#
.L114:
	.loc 1 521 0
	movl	-164(%rbp), %edx	# j, tmp400
	movl	-168(%rbp), %ecx	# i, tmp401
	movl	-160(%rbp), %eax	# m, tmp402
	movl	%ecx, %esi	# tmp401,
	movl	%eax, %edi	# tmp402,
	call	ix86_register_move_cost	#
	movl	%eax, -132(%rbp)	# tmp403, cost
	.loc 1 523 0
	movl	-164(%rbp), %edx	# j, tmp404
	movq	%rdx, %rax	# tmp404, tmp405
	salq	$2, %rax	#, tmp405
	addq	%rdx, %rax	# tmp404, tmp405
	leaq	0(,%rax,4), %rdx	#, tmp406
	addq	%rdx, %rax	# tmp406, tmp405
	salq	$2, %rax	#, tmp407
	addq	$reg_class_subclasses, %rax	#, tmp408
	movq	%rax, -112(%rbp)	# tmp408, p2
	jmp	.L116	#
.L118:
	.loc 1 526 0
	movq	-112(%rbp), %rax	# p2, tmp409
	movl	(%rax), %eax	# *p2_32, D.15020
	cmpl	-168(%rbp), %eax	# i, D.15020
	je	.L117	#,
	.loc 1 526 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# p2, tmp410
	movl	(%rax), %eax	# *p2_32, D.15020
	movl	-160(%rbp), %esi	# m, tmp411
	movl	%eax, %ecx	# D.15020, tmp412
	movq	%rcx, %rdx	# tmp412, tmp413
	leaq	0(,%rdx,4), %rax	#, tmp414
	movq	%rax, %rdx	# tmp414, tmp413
	movq	%rdx, %rax	# tmp413, tmp415
	salq	$4, %rax	#, tmp415
	subq	%rdx, %rax	# tmp413, tmp415
	subq	%rcx, %rax	# tmp412, tmp415
	addq	%rsi, %rax	# tmp411, tmp416
	addq	$contains_reg_of_mode, %rax	#, tmp417
	movzbl	(%rax), %eax	# contains_reg_of_mode, D.15015
	testb	%al, %al	# D.15015
	je	.L117	#,
	.loc 1 527 0 is_stmt 1
	movq	-112(%rbp), %rax	# p2, tmp418
	movl	(%rax), %eax	# *p2_32, D.15020
	movl	%eax, %ecx	# D.15020, tmp419
	movl	-160(%rbp), %eax	# m, tmp420
	movl	-168(%rbp), %edx	# i, tmp421
	imulq	$625, %rax, %rsi	#, tmp420, tmp422
	movq	%rdx, %rax	# tmp421, tmp423
	salq	$2, %rax	#, tmp423
	addq	%rdx, %rax	# tmp421, tmp423
	leaq	0(,%rax,4), %rdx	#, tmp424
	addq	%rdx, %rax	# tmp424, tmp423
	addq	%rsi, %rax	# tmp422, tmp425
	addq	%rcx, %rax	# tmp419, tmp426
	movl	move_cost(,%rax,4), %edx	# move_cost, D.15016
	movl	-132(%rbp), %eax	# cost, tmp428
	cmpl	%eax, %edx	# tmp428, D.15016
	cmovge	%edx, %eax	# D.15016,, tmp427
	movl	%eax, -132(%rbp)	# tmp427, cost
.L117:
	.loc 1 525 0
	addq	$4, -112(%rbp)	#, p2
.L116:
	.loc 1 524 0 discriminator 1
	movq	-112(%rbp), %rax	# p2, tmp429
	movl	(%rax), %eax	# *p2_32, D.15020
	.loc 1 523 0 discriminator 1
	cmpl	$25, %eax	#, D.15020
	jne	.L118	#,
	.loc 1 529 0
	movl	-168(%rbp), %edx	# i, tmp430
	movq	%rdx, %rax	# tmp430, tmp431
	salq	$2, %rax	#, tmp431
	addq	%rdx, %rax	# tmp430, tmp431
	leaq	0(,%rax,4), %rdx	#, tmp432
	addq	%rdx, %rax	# tmp432, tmp431
	salq	$2, %rax	#, tmp433
	addq	$reg_class_subclasses, %rax	#, tmp434
	movq	%rax, -120(%rbp)	# tmp434, p1
	jmp	.L119	#
.L121:
	.loc 1 532 0
	movq	-120(%rbp), %rax	# p1, tmp435
	movl	(%rax), %eax	# *p1_31, D.15020
	cmpl	-164(%rbp), %eax	# j, D.15020
	je	.L120	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# p1, tmp436
	movl	(%rax), %eax	# *p1_31, D.15020
	movl	-160(%rbp), %esi	# m, tmp437
	movl	%eax, %ecx	# D.15020, tmp438
	movq	%rcx, %rdx	# tmp438, tmp439
	leaq	0(,%rdx,4), %rax	#, tmp440
	movq	%rax, %rdx	# tmp440, tmp439
	movq	%rdx, %rax	# tmp439, tmp441
	salq	$4, %rax	#, tmp441
	subq	%rdx, %rax	# tmp439, tmp441
	subq	%rcx, %rax	# tmp438, tmp441
	addq	%rsi, %rax	# tmp437, tmp442
	addq	$contains_reg_of_mode, %rax	#, tmp443
	movzbl	(%rax), %eax	# contains_reg_of_mode, D.15015
	testb	%al, %al	# D.15015
	je	.L120	#,
	.loc 1 533 0 is_stmt 1
	movq	-120(%rbp), %rax	# p1, tmp444
	movl	(%rax), %edx	# *p1_31, D.15020
	movl	-164(%rbp), %ecx	# j, tmp445
	movl	-160(%rbp), %eax	# m, tmp446
	movl	%edx, %edx	# D.15020, tmp447
	imulq	$625, %rax, %rsi	#, tmp446, tmp448
	movq	%rdx, %rax	# tmp447, tmp449
	salq	$2, %rax	#, tmp449
	addq	%rdx, %rax	# tmp447, tmp449
	leaq	0(,%rax,4), %rdx	#, tmp450
	addq	%rdx, %rax	# tmp450, tmp449
	addq	%rsi, %rax	# tmp448, tmp451
	addq	%rcx, %rax	# tmp445, tmp452
	movl	move_cost(,%rax,4), %edx	# move_cost, D.15016
	movl	-132(%rbp), %eax	# cost, tmp454
	cmpl	%eax, %edx	# tmp454, D.15016
	cmovge	%edx, %eax	# D.15016,, tmp453
	movl	%eax, -132(%rbp)	# tmp453, cost
.L120:
	.loc 1 531 0
	addq	$4, -120(%rbp)	#, p1
.L119:
	.loc 1 530 0 discriminator 1
	movq	-120(%rbp), %rax	# p1, tmp455
	movl	(%rax), %eax	# *p1_31, D.15020
	.loc 1 529 0 discriminator 1
	cmpl	$25, %eax	#, D.15020
	jne	.L121	#,
	.loc 1 535 0
	movl	-164(%rbp), %ecx	# j, tmp456
	movl	-160(%rbp), %eax	# m, tmp457
	movl	-168(%rbp), %edx	# i, tmp458
	imulq	$625, %rax, %rsi	#, tmp457, tmp459
	movq	%rdx, %rax	# tmp458, tmp460
	salq	$2, %rax	#, tmp460
	addq	%rdx, %rax	# tmp458, tmp460
	leaq	0(,%rax,4), %rdx	#, tmp461
	addq	%rdx, %rax	# tmp461, tmp460
	addq	%rsi, %rax	# tmp459, tmp462
	leaq	(%rax,%rcx), %rdx	#, tmp463
	movl	-132(%rbp), %eax	# cost, tmp464
	movl	%eax, move_cost(,%rdx,4)	# tmp464, move_cost
	.loc 1 537 0
	movl	-164(%rbp), %edx	# j, tmp465
	movl	-168(%rbp), %eax	# i, tmp466
	movl	%edx, %esi	# tmp465,
	movl	%eax, %edi	# tmp466,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.15016
	je	.L122	#,
	.loc 1 538 0
	movl	-164(%rbp), %ecx	# j, tmp467
	movl	-160(%rbp), %eax	# m, tmp468
	movl	-168(%rbp), %edx	# i, tmp469
	imulq	$625, %rax, %rsi	#, tmp468, tmp470
	movq	%rdx, %rax	# tmp469, tmp471
	salq	$2, %rax	#, tmp471
	addq	%rdx, %rax	# tmp469, tmp471
	leaq	0(,%rax,4), %rdx	#, tmp472
	addq	%rdx, %rax	# tmp472, tmp471
	addq	%rsi, %rax	# tmp470, tmp473
	addq	%rcx, %rax	# tmp467, tmp474
	movl	$0, may_move_in_cost(,%rax,4)	#, may_move_in_cost
	jmp	.L123	#
.L122:
	.loc 1 540 0
	movl	-164(%rbp), %ecx	# j, tmp475
	movl	-160(%rbp), %eax	# m, tmp476
	movl	-168(%rbp), %edx	# i, tmp477
	imulq	$625, %rax, %rsi	#, tmp476, tmp478
	movq	%rdx, %rax	# tmp477, tmp479
	salq	$2, %rax	#, tmp479
	addq	%rdx, %rax	# tmp477, tmp479
	leaq	0(,%rax,4), %rdx	#, tmp480
	addq	%rdx, %rax	# tmp480, tmp479
	addq	%rsi, %rax	# tmp478, tmp481
	leaq	(%rax,%rcx), %rdx	#, tmp482
	movl	-132(%rbp), %eax	# cost, tmp483
	movl	%eax, may_move_in_cost(,%rdx,4)	# tmp483, may_move_in_cost
.L123:
	.loc 1 542 0
	movl	-168(%rbp), %edx	# i, tmp484
	movl	-164(%rbp), %eax	# j, tmp485
	movl	%edx, %esi	# tmp484,
	movl	%eax, %edi	# tmp485,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.15016
	je	.L124	#,
	.loc 1 543 0
	movl	-164(%rbp), %ecx	# j, tmp486
	movl	-160(%rbp), %eax	# m, tmp487
	movl	-168(%rbp), %edx	# i, tmp488
	imulq	$625, %rax, %rsi	#, tmp487, tmp489
	movq	%rdx, %rax	# tmp488, tmp490
	salq	$2, %rax	#, tmp490
	addq	%rdx, %rax	# tmp488, tmp490
	leaq	0(,%rax,4), %rdx	#, tmp491
	addq	%rdx, %rax	# tmp491, tmp490
	addq	%rsi, %rax	# tmp489, tmp492
	addq	%rcx, %rax	# tmp486, tmp493
	movl	$0, may_move_out_cost(,%rax,4)	#, may_move_out_cost
	jmp	.L115	#
.L124:
	.loc 1 545 0
	movl	-164(%rbp), %ecx	# j, tmp494
	movl	-160(%rbp), %eax	# m, tmp495
	movl	-168(%rbp), %edx	# i, tmp496
	imulq	$625, %rax, %rsi	#, tmp495, tmp497
	movq	%rdx, %rax	# tmp496, tmp498
	salq	$2, %rax	#, tmp498
	addq	%rdx, %rax	# tmp496, tmp498
	leaq	0(,%rax,4), %rdx	#, tmp499
	addq	%rdx, %rax	# tmp499, tmp498
	addq	%rsi, %rax	# tmp497, tmp500
	leaq	(%rax,%rcx), %rdx	#, tmp501
	movl	-132(%rbp), %eax	# cost, tmp502
	movl	%eax, may_move_out_cost(,%rdx,4)	# tmp502, may_move_out_cost
.L115:
.LBE9:
	.loc 1 508 0
	addl	$1, -164(%rbp)	#, j
.L113:
	.loc 1 508 0 is_stmt 0 discriminator 1
	cmpl	$24, -164(%rbp)	#, j
	jbe	.L125	#,
	jmp	.L126	#
.L112:
	.loc 1 549 0 is_stmt 1
	movl	$0, -164(%rbp)	#, j
	jmp	.L127	#
.L128:
	.loc 1 551 0 discriminator 2
	movl	-164(%rbp), %ecx	# j, tmp503
	movl	-160(%rbp), %eax	# m, tmp504
	movl	-168(%rbp), %edx	# i, tmp505
	imulq	$625, %rax, %rsi	#, tmp504, tmp506
	movq	%rdx, %rax	# tmp505, tmp507
	salq	$2, %rax	#, tmp507
	addq	%rdx, %rax	# tmp505, tmp507
	leaq	0(,%rax,4), %rdx	#, tmp508
	addq	%rdx, %rax	# tmp508, tmp507
	addq	%rsi, %rax	# tmp506, tmp509
	addq	%rcx, %rax	# tmp503, tmp510
	movl	$65536, move_cost(,%rax,4)	#, move_cost
	.loc 1 552 0 discriminator 2
	movl	-164(%rbp), %ecx	# j, tmp511
	movl	-160(%rbp), %eax	# m, tmp512
	movl	-168(%rbp), %edx	# i, tmp513
	imulq	$625, %rax, %rsi	#, tmp512, tmp514
	movq	%rdx, %rax	# tmp513, tmp515
	salq	$2, %rax	#, tmp515
	addq	%rdx, %rax	# tmp513, tmp515
	leaq	0(,%rax,4), %rdx	#, tmp516
	addq	%rdx, %rax	# tmp516, tmp515
	addq	%rsi, %rax	# tmp514, tmp517
	addq	%rcx, %rax	# tmp511, tmp518
	movl	$65536, may_move_in_cost(,%rax,4)	#, may_move_in_cost
	.loc 1 553 0 discriminator 2
	movl	-164(%rbp), %ecx	# j, tmp519
	movl	-160(%rbp), %eax	# m, tmp520
	movl	-168(%rbp), %edx	# i, tmp521
	imulq	$625, %rax, %rsi	#, tmp520, tmp522
	movq	%rdx, %rax	# tmp521, tmp523
	salq	$2, %rax	#, tmp523
	addq	%rdx, %rax	# tmp521, tmp523
	leaq	0(,%rax,4), %rdx	#, tmp524
	addq	%rdx, %rax	# tmp524, tmp523
	addq	%rsi, %rax	# tmp522, tmp525
	addq	%rcx, %rax	# tmp519, tmp526
	movl	$65536, may_move_out_cost(,%rax,4)	#, may_move_out_cost
	.loc 1 549 0 discriminator 2
	addl	$1, -164(%rbp)	#, j
.L127:
	.loc 1 549 0 is_stmt 0 discriminator 1
	cmpl	$24, -164(%rbp)	#, j
	jbe	.L128	#,
.L126:
	.loc 1 506 0 is_stmt 1
	addl	$1, -168(%rbp)	#, i
.L111:
	.loc 1 506 0 is_stmt 0 discriminator 1
	cmpl	$24, -168(%rbp)	#, i
	jbe	.L129	#,
.L110:
	.loc 1 503 0 is_stmt 1
	addl	$1, -160(%rbp)	#, m
.L109:
	.loc 1 503 0 is_stmt 0 discriminator 1
	cmpl	$58, -160(%rbp)	#, m
	jbe	.L130	#,
	.loc 1 572 0 is_stmt 1
	movq	-24(%rbp), %rax	# D.15023, tmp528
	xorq	%fs:40, %rax	#, tmp528
	je	.L131	#,
	call	__stack_chk_fail	#
.L131:
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	init_reg_sets_1, .-init_reg_sets_1
	.type	init_reg_modes, @function
init_reg_modes:
.LFB4:
	.loc 1 580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 583 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L134	#
.L138:
	.loc 1 585 0
	movl	-4(%rbp), %eax	# i, i.50
	movl	$1, %esi	#,
	movl	%eax, %edi	# i.50,
	call	choose_hard_reg_mode	#
	movl	-4(%rbp), %edx	# i, tmp65
	movslq	%edx, %rdx	# tmp65, tmp64
	movl	%eax, reg_raw_mode(,%rdx,4)	# D.15026, reg_raw_mode
	.loc 1 592 0
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.15026
	testl	%eax, %eax	# D.15026
	jne	.L135	#,
	.loc 1 593 0
	cmpl	$0, -4(%rbp)	#, i
	je	.L136	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp68
	subl	$1, %eax	#, D.15027
	cltq
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, iftmp.51
	jmp	.L137	#
.L136:
	.loc 1 593 0 discriminator 2
	movl	word_mode(%rip), %eax	# word_mode, iftmp.51
.L137:
	.loc 1 593 0 discriminator 3
	movl	-4(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, tmp70
	movl	%eax, reg_raw_mode(,%rdx,4)	# iftmp.51, reg_raw_mode
.L135:
	.loc 1 583 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L134:
	.loc 1 583 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, i
	jle	.L138	#,
	.loc 1 595 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_reg_modes, .-init_reg_modes
	.globl	init_regs
	.type	init_regs, @function
init_regs:
.LFB5:
	.loc 1 602 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 605 0
	call	init_reg_sets_1	#
	.loc 1 607 0
	call	init_reg_modes	#
.LBB10:
	.loc 1 615 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L140	#
.L141:
	.loc 1 616 0 discriminator 2
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.15028
	movl	-4(%rbp), %eax	# i, i.52
	movq	%rdx, %rsi	# D.15028,
	movl	%eax, %edi	# i.52,
	call	gen_rtx_MEM	#
	movl	-4(%rbp), %edx	# i, tmp63
	movslq	%edx, %rdx	# tmp63, tmp62
	movq	%rax, top_of_stack(,%rdx,8)	# D.15028, top_of_stack
	.loc 1 615 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L140:
	.loc 1 615 0 is_stmt 0 discriminator 1
	cmpl	$58, -4(%rbp)	#, i
	jle	.L141	#,
	.loc 1 617 0 is_stmt 1
	movl	$59, %esi	#,
	movl	$top_of_stack, %edi	#,
	call	ggc_add_rtx_root	#
.LBE10:
	.loc 1 620 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	init_regs, .-init_regs
	.globl	memory_move_secondary_cost
	.type	memory_move_secondary_cost, @function
memory_move_secondary_cost:
.LFB6:
	.loc 1 632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movl	%esi, -24(%rbp)	# class, class
	movl	%edx, -28(%rbp)	# in, in
	.loc 1 634 0
	movl	$0, -12(%rbp)	#, partial_cost
	.loc 1 637 0
	movl	-20(%rbp), %eax	# mode, mode.53
	cltq
	movq	top_of_stack(,%rax,8), %rax	# top_of_stack, tmp67
	movq	%rax, -8(%rbp)	# tmp67, mem
	.loc 1 640 0
	cmpl	$0, -28(%rbp)	#, in
	je	.L143	#,
	.loc 1 645 0
	movl	$0, -16(%rbp)	#, altclass
	jmp	.L144	#
.L143:
	.loc 1 651 0
	cmpl	$12, -24(%rbp)	#, class
	je	.L145	#,
	.loc 1 651 0 is_stmt 0 discriminator 2
	cmpl	$11, -24(%rbp)	#, class
	je	.L145	#,
	.loc 1 651 0 discriminator 1
	cmpl	$10, -24(%rbp)	#, class
	jne	.L146	#,
.L145:
	movl	target_flags(%rip), %eax	# target_flags, target_flags.55
	andl	$33554432, %eax	#, D.15029
	testl	%eax, %eax	# D.15029
	jne	.L146	#,
	cmpl	$2, -20(%rbp)	#, mode
	jne	.L146	#,
	movl	$8, %eax	#, iftmp.54
	jmp	.L147	#
.L146:
	movl	$0, %eax	#, iftmp.54
.L147:
	.loc 1 651 0 discriminator 3
	movl	%eax, -16(%rbp)	# iftmp.54, altclass
.L144:
	.loc 1 657 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, altclass
	jne	.L148	#,
	.loc 1 658 0
	movl	$0, %eax	#, D.15029
	jmp	.L149	#
.L148:
	.loc 1 660 0
	cmpl	$0, -28(%rbp)	#, in
	je	.L150	#,
	.loc 1 661 0
	movl	-24(%rbp), %edx	# class, tmp68
	movl	-16(%rbp), %ecx	# altclass, tmp69
	movl	-20(%rbp), %eax	# mode, tmp70
	movl	%ecx, %esi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	ix86_register_move_cost	#
	movl	%eax, -12(%rbp)	# tmp71, partial_cost
	jmp	.L151	#
.L150:
	.loc 1 663 0
	movl	-16(%rbp), %edx	# altclass, tmp72
	movl	-24(%rbp), %ecx	# class, tmp73
	movl	-20(%rbp), %eax	# mode, tmp74
	movl	%ecx, %esi	# tmp73,
	movl	%eax, %edi	# tmp74,
	call	ix86_register_move_cost	#
	movl	%eax, -12(%rbp)	# tmp75, partial_cost
.L151:
	.loc 1 665 0
	movl	-24(%rbp), %eax	# class, tmp76
	cmpl	-16(%rbp), %eax	# altclass, tmp76
	jne	.L152	#,
	.loc 1 673 0
	movl	-12(%rbp), %eax	# partial_cost, D.15029
	jmp	.L149	#
.L152:
	.loc 1 677 0
	movl	-28(%rbp), %edx	# in, tmp77
	movl	-16(%rbp), %ecx	# altclass, tmp78
	movl	-20(%rbp), %eax	# mode, tmp79
	movl	%ecx, %esi	# tmp78,
	movl	%eax, %edi	# tmp79,
	call	memory_move_secondary_cost	#
	movl	-12(%rbp), %edx	# partial_cost, tmp80
	addl	%edx, %eax	# tmp80, D.15029
.L149:
	.loc 1 678 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	memory_move_secondary_cost, .-memory_move_secondary_cost
	.globl	choose_hard_reg_mode
	.type	choose_hard_reg_mode, @function
choose_hard_reg_mode:
.LFB7:
	.loc 1 688 0
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
	movl	%esi, -40(%rbp)	# nregs, nregs
	.loc 1 690 0
	movl	$0, -24(%rbp)	#, found_mode
	.loc 1 696 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp209
	movl	%eax, -20(%rbp)	# tmp209, mode
	jmp	.L154	#
.L177:
	.loc 1 699 0
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L155	#,
	.loc 1 699 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L156	#,
.L155:
	.loc 1 699 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L157	#,
	.loc 1 699 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L156	#,
.L157:
	.loc 1 699 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L158	#,
	.loc 1 699 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L156	#,
.L158:
	.loc 1 699 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L159	#,
	.loc 1 699 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L159	#,
.L156:
	movl	-20(%rbp), %eax	# mode, mode.58
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$5, %eax	#, D.15033
	je	.L160	#,
	.loc 1 699 0 discriminator 4
	movl	-20(%rbp), %eax	# mode, mode.59
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$6, %eax	#, D.15033
	jne	.L161	#,
.L160:
	.loc 1 699 0 discriminator 3
	movl	$2, %eax	#, iftmp.57
	jmp	.L163	#
.L161:
	.loc 1 699 0 discriminator 1
	movl	$1, %eax	#, iftmp.57
	jmp	.L163	#
.L159:
	.loc 1 699 0 discriminator 2
	cmpl	$18, -20(%rbp)	#, mode
	jne	.L164	#,
	.loc 1 699 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.62
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L165	#,
	.loc 1 699 0 discriminator 9
	movl	$2, %eax	#, iftmp.61
	jmp	.L163	#
.L165:
	.loc 1 699 0 discriminator 10
	movl	$3, %eax	#, iftmp.61
	jmp	.L163	#
.L164:
	.loc 1 699 0 discriminator 8
	cmpl	$24, -20(%rbp)	#, mode
	jne	.L168	#,
	.loc 1 699 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.65
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L169	#,
	.loc 1 699 0 discriminator 13
	movl	$4, %eax	#, iftmp.64
	jmp	.L163	#
.L169:
	.loc 1 699 0 discriminator 14
	movl	$6, %eax	#, iftmp.64
	jmp	.L163	#
.L168:
	.loc 1 699 0 discriminator 12
	movl	-20(%rbp), %eax	# mode, mode.66
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15032
	movzbl	%al, %edx	# D.15032, D.15031
	movl	target_flags(%rip), %eax	# target_flags, target_flags.68
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L172	#,
	.loc 1 699 0 discriminator 1
	movl	$8, %eax	#, iftmp.67
	jmp	.L173	#
.L172:
	.loc 1 699 0 discriminator 2
	movl	$4, %eax	#, iftmp.67
.L173:
	.loc 1 699 0 discriminator 3
	addl	%edx, %eax	# D.15031, D.15031
	subl	$1, %eax	#, D.15031
	movl	target_flags(%rip), %edx	# target_flags, target_flags.70
	andl	$33554432, %edx	#, D.15031
	testl	%edx, %edx	# D.15031
	je	.L174	#,
	.loc 1 699 0 discriminator 1
	movl	$8, %ecx	#, iftmp.69
	jmp	.L175	#
.L174:
	.loc 1 699 0 discriminator 2
	movl	$4, %ecx	#, iftmp.69
.L175:
	.loc 1 699 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.69
.L163:
	.loc 1 699 0 discriminator 6
	cmpl	-40(%rbp), %eax	# nregs, iftmp.56
	jne	.L176	#,
	.loc 1 700 0 is_stmt 1
	movl	-36(%rbp), %eax	# regno, regno.71
	movl	-20(%rbp), %edx	# mode, tmp215
	movl	%edx, %esi	# tmp215,
	movl	%eax, %edi	# regno.71,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15031
	je	.L176	#,
	.loc 1 701 0
	movl	-20(%rbp), %eax	# mode, tmp216
	movl	%eax, -24(%rbp)	# tmp216, found_mode
.L176:
	.loc 1 698 0
	movl	-20(%rbp), %eax	# mode, mode.72
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.15032
	movzbl	%al, %eax	# D.15032, tmp218
	movl	%eax, -20(%rbp)	# tmp218, mode
.L154:
	.loc 1 696 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mode
	jne	.L177	#,
	.loc 1 703 0
	cmpl	$0, -24(%rbp)	#, found_mode
	je	.L178	#,
	.loc 1 704 0
	movl	-24(%rbp), %eax	# found_mode, D.15030
	jmp	.L179	#
.L178:
	.loc 1 706 0
	movl	class_narrowest_mode+8(%rip), %eax	# class_narrowest_mode, tmp219
	movl	%eax, -20(%rbp)	# tmp219, mode
	jmp	.L180	#
.L203:
	.loc 1 709 0
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L181	#,
	.loc 1 709 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L182	#,
.L181:
	.loc 1 709 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L183	#,
	.loc 1 709 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L182	#,
.L183:
	.loc 1 709 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L184	#,
	.loc 1 709 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L182	#,
.L184:
	.loc 1 709 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L185	#,
	.loc 1 709 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L185	#,
.L182:
	movl	-20(%rbp), %eax	# mode, mode.75
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$5, %eax	#, D.15033
	je	.L186	#,
	.loc 1 709 0 discriminator 4
	movl	-20(%rbp), %eax	# mode, mode.76
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$6, %eax	#, D.15033
	jne	.L187	#,
.L186:
	.loc 1 709 0 discriminator 3
	movl	$2, %eax	#, iftmp.74
	jmp	.L189	#
.L187:
	.loc 1 709 0 discriminator 1
	movl	$1, %eax	#, iftmp.74
	jmp	.L189	#
.L185:
	.loc 1 709 0 discriminator 2
	cmpl	$18, -20(%rbp)	#, mode
	jne	.L190	#,
	.loc 1 709 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.79
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L191	#,
	.loc 1 709 0 discriminator 9
	movl	$2, %eax	#, iftmp.78
	jmp	.L189	#
.L191:
	.loc 1 709 0 discriminator 10
	movl	$3, %eax	#, iftmp.78
	jmp	.L189	#
.L190:
	.loc 1 709 0 discriminator 8
	cmpl	$24, -20(%rbp)	#, mode
	jne	.L194	#,
	.loc 1 709 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.82
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L195	#,
	.loc 1 709 0 discriminator 13
	movl	$4, %eax	#, iftmp.81
	jmp	.L189	#
.L195:
	.loc 1 709 0 discriminator 14
	movl	$6, %eax	#, iftmp.81
	jmp	.L189	#
.L194:
	.loc 1 709 0 discriminator 12
	movl	-20(%rbp), %eax	# mode, mode.83
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15032
	movzbl	%al, %edx	# D.15032, D.15031
	movl	target_flags(%rip), %eax	# target_flags, target_flags.85
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L198	#,
	.loc 1 709 0 discriminator 1
	movl	$8, %eax	#, iftmp.84
	jmp	.L199	#
.L198:
	.loc 1 709 0 discriminator 2
	movl	$4, %eax	#, iftmp.84
.L199:
	.loc 1 709 0 discriminator 3
	addl	%edx, %eax	# D.15031, D.15031
	subl	$1, %eax	#, D.15031
	movl	target_flags(%rip), %edx	# target_flags, target_flags.87
	andl	$33554432, %edx	#, D.15031
	testl	%edx, %edx	# D.15031
	je	.L200	#,
	.loc 1 709 0 discriminator 1
	movl	$8, %ebx	#, iftmp.86
	jmp	.L201	#
.L200:
	.loc 1 709 0 discriminator 2
	movl	$4, %ebx	#, iftmp.86
.L201:
	.loc 1 709 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.86
.L189:
	.loc 1 709 0 discriminator 6
	cmpl	-40(%rbp), %eax	# nregs, iftmp.73
	jne	.L202	#,
	.loc 1 710 0 is_stmt 1
	movl	-36(%rbp), %eax	# regno, regno.88
	movl	-20(%rbp), %edx	# mode, tmp225
	movl	%edx, %esi	# tmp225,
	movl	%eax, %edi	# regno.88,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15031
	je	.L202	#,
	.loc 1 711 0
	movl	-20(%rbp), %eax	# mode, tmp226
	movl	%eax, -24(%rbp)	# tmp226, found_mode
.L202:
	.loc 1 708 0
	movl	-20(%rbp), %eax	# mode, mode.89
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.15032
	movzbl	%al, %eax	# D.15032, tmp228
	movl	%eax, -20(%rbp)	# tmp228, mode
.L180:
	.loc 1 706 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mode
	jne	.L203	#,
	.loc 1 713 0
	cmpl	$0, -24(%rbp)	#, found_mode
	je	.L204	#,
	.loc 1 714 0
	movl	-24(%rbp), %eax	# found_mode, D.15030
	jmp	.L179	#
.L204:
	.loc 1 716 0
	movl	class_narrowest_mode+32(%rip), %eax	# class_narrowest_mode, tmp229
	movl	%eax, -20(%rbp)	# tmp229, mode
	jmp	.L205	#
.L228:
	.loc 1 719 0
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L206	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L207	#,
.L206:
	.loc 1 719 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L208	#,
	.loc 1 719 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L207	#,
.L208:
	.loc 1 719 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L209	#,
	.loc 1 719 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L207	#,
.L209:
	.loc 1 719 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L210	#,
	.loc 1 719 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L210	#,
.L207:
	movl	-20(%rbp), %eax	# mode, mode.92
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$5, %eax	#, D.15033
	je	.L211	#,
	.loc 1 719 0 discriminator 4
	movl	-20(%rbp), %eax	# mode, mode.93
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$6, %eax	#, D.15033
	jne	.L212	#,
.L211:
	.loc 1 719 0 discriminator 3
	movl	$2, %eax	#, iftmp.91
	jmp	.L214	#
.L212:
	.loc 1 719 0 discriminator 1
	movl	$1, %eax	#, iftmp.91
	jmp	.L214	#
.L210:
	.loc 1 719 0 discriminator 2
	cmpl	$18, -20(%rbp)	#, mode
	jne	.L215	#,
	.loc 1 719 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.96
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L216	#,
	.loc 1 719 0 discriminator 9
	movl	$2, %eax	#, iftmp.95
	jmp	.L214	#
.L216:
	.loc 1 719 0 discriminator 10
	movl	$3, %eax	#, iftmp.95
	jmp	.L214	#
.L215:
	.loc 1 719 0 discriminator 8
	cmpl	$24, -20(%rbp)	#, mode
	jne	.L219	#,
	.loc 1 719 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.99
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L220	#,
	.loc 1 719 0 discriminator 13
	movl	$4, %eax	#, iftmp.98
	jmp	.L214	#
.L220:
	.loc 1 719 0 discriminator 14
	movl	$6, %eax	#, iftmp.98
	jmp	.L214	#
.L219:
	.loc 1 719 0 discriminator 12
	movl	-20(%rbp), %eax	# mode, mode.100
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15032
	movzbl	%al, %edx	# D.15032, D.15031
	movl	target_flags(%rip), %eax	# target_flags, target_flags.102
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L223	#,
	.loc 1 719 0 discriminator 1
	movl	$8, %eax	#, iftmp.101
	jmp	.L224	#
.L223:
	.loc 1 719 0 discriminator 2
	movl	$4, %eax	#, iftmp.101
.L224:
	.loc 1 719 0 discriminator 3
	addl	%edx, %eax	# D.15031, D.15031
	subl	$1, %eax	#, D.15031
	movl	target_flags(%rip), %edx	# target_flags, target_flags.104
	andl	$33554432, %edx	#, D.15031
	testl	%edx, %edx	# D.15031
	je	.L225	#,
	.loc 1 719 0 discriminator 1
	movl	$8, %ecx	#, iftmp.103
	jmp	.L226	#
.L225:
	.loc 1 719 0 discriminator 2
	movl	$4, %ecx	#, iftmp.103
.L226:
	.loc 1 719 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.103
.L214:
	.loc 1 719 0 discriminator 6
	cmpl	-40(%rbp), %eax	# nregs, iftmp.90
	jne	.L227	#,
	.loc 1 720 0 is_stmt 1
	movl	-36(%rbp), %eax	# regno, regno.105
	movl	-20(%rbp), %edx	# mode, tmp235
	movl	%edx, %esi	# tmp235,
	movl	%eax, %edi	# regno.105,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15031
	je	.L227	#,
	.loc 1 721 0
	movl	-20(%rbp), %eax	# mode, tmp236
	movl	%eax, -24(%rbp)	# tmp236, found_mode
.L227:
	.loc 1 718 0
	movl	-20(%rbp), %eax	# mode, mode.106
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.15032
	movzbl	%al, %eax	# D.15032, tmp238
	movl	%eax, -20(%rbp)	# tmp238, mode
.L205:
	.loc 1 716 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mode
	jne	.L228	#,
	.loc 1 723 0
	cmpl	$0, -24(%rbp)	#, found_mode
	je	.L229	#,
	.loc 1 724 0
	movl	-24(%rbp), %eax	# found_mode, D.15030
	jmp	.L179	#
.L229:
	.loc 1 726 0
	movl	class_narrowest_mode+28(%rip), %eax	# class_narrowest_mode, tmp239
	movl	%eax, -20(%rbp)	# tmp239, mode
	jmp	.L230	#
.L253:
	.loc 1 729 0
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L231	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L232	#,
.L231:
	.loc 1 729 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L233	#,
	.loc 1 729 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L232	#,
.L233:
	.loc 1 729 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L234	#,
	.loc 1 729 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L232	#,
.L234:
	.loc 1 729 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L235	#,
	.loc 1 729 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L235	#,
.L232:
	movl	-20(%rbp), %eax	# mode, mode.109
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$5, %eax	#, D.15033
	je	.L236	#,
	.loc 1 729 0 discriminator 4
	movl	-20(%rbp), %eax	# mode, mode.110
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$6, %eax	#, D.15033
	jne	.L237	#,
.L236:
	.loc 1 729 0 discriminator 3
	movl	$2, %eax	#, iftmp.108
	jmp	.L239	#
.L237:
	.loc 1 729 0 discriminator 1
	movl	$1, %eax	#, iftmp.108
	jmp	.L239	#
.L235:
	.loc 1 729 0 discriminator 2
	cmpl	$18, -20(%rbp)	#, mode
	jne	.L240	#,
	.loc 1 729 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.113
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L241	#,
	.loc 1 729 0 discriminator 9
	movl	$2, %eax	#, iftmp.112
	jmp	.L239	#
.L241:
	.loc 1 729 0 discriminator 10
	movl	$3, %eax	#, iftmp.112
	jmp	.L239	#
.L240:
	.loc 1 729 0 discriminator 8
	cmpl	$24, -20(%rbp)	#, mode
	jne	.L244	#,
	.loc 1 729 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.116
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L245	#,
	.loc 1 729 0 discriminator 13
	movl	$4, %eax	#, iftmp.115
	jmp	.L239	#
.L245:
	.loc 1 729 0 discriminator 14
	movl	$6, %eax	#, iftmp.115
	jmp	.L239	#
.L244:
	.loc 1 729 0 discriminator 12
	movl	-20(%rbp), %eax	# mode, mode.117
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15032
	movzbl	%al, %edx	# D.15032, D.15031
	movl	target_flags(%rip), %eax	# target_flags, target_flags.119
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L248	#,
	.loc 1 729 0 discriminator 1
	movl	$8, %eax	#, iftmp.118
	jmp	.L249	#
.L248:
	.loc 1 729 0 discriminator 2
	movl	$4, %eax	#, iftmp.118
.L249:
	.loc 1 729 0 discriminator 3
	addl	%edx, %eax	# D.15031, D.15031
	subl	$1, %eax	#, D.15031
	movl	target_flags(%rip), %edx	# target_flags, target_flags.121
	andl	$33554432, %edx	#, D.15031
	testl	%edx, %edx	# D.15031
	je	.L250	#,
	.loc 1 729 0 discriminator 1
	movl	$8, %ebx	#, iftmp.120
	jmp	.L251	#
.L250:
	.loc 1 729 0 discriminator 2
	movl	$4, %ebx	#, iftmp.120
.L251:
	.loc 1 729 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.120
.L239:
	.loc 1 729 0 discriminator 6
	cmpl	-40(%rbp), %eax	# nregs, iftmp.107
	jne	.L252	#,
	.loc 1 730 0 is_stmt 1
	movl	-36(%rbp), %eax	# regno, regno.122
	movl	-20(%rbp), %edx	# mode, tmp245
	movl	%edx, %esi	# tmp245,
	movl	%eax, %edi	# regno.122,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15031
	je	.L252	#,
	.loc 1 731 0
	movl	-20(%rbp), %eax	# mode, tmp246
	movl	%eax, -24(%rbp)	# tmp246, found_mode
.L252:
	.loc 1 728 0
	movl	-20(%rbp), %eax	# mode, mode.123
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.15032
	movzbl	%al, %eax	# D.15032, tmp248
	movl	%eax, -20(%rbp)	# tmp248, mode
.L230:
	.loc 1 726 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mode
	jne	.L253	#,
	.loc 1 733 0
	cmpl	$0, -24(%rbp)	#, found_mode
	je	.L254	#,
	.loc 1 734 0
	movl	-24(%rbp), %eax	# found_mode, D.15030
	jmp	.L179	#
.L254:
	.loc 1 737 0
	movl	$52, -28(%rbp)	#, m
	jmp	.L255	#
.L278:
	.loc 1 739 0
	movl	-28(%rbp), %eax	# m, tmp249
	movl	%eax, -20(%rbp)	# tmp249, mode
	.loc 1 740 0
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L256	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L257	#,
.L256:
	.loc 1 740 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L258	#,
	.loc 1 740 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L257	#,
.L258:
	.loc 1 740 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L259	#,
	.loc 1 740 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L257	#,
.L259:
	.loc 1 740 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L260	#,
	.loc 1 740 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L260	#,
.L257:
	movl	-20(%rbp), %eax	# mode, mode.126
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$5, %eax	#, D.15033
	je	.L261	#,
	.loc 1 740 0 discriminator 4
	movl	-20(%rbp), %eax	# mode, mode.127
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15033
	cmpl	$6, %eax	#, D.15033
	jne	.L262	#,
.L261:
	.loc 1 740 0 discriminator 3
	movl	$2, %eax	#, iftmp.125
	jmp	.L264	#
.L262:
	.loc 1 740 0 discriminator 1
	movl	$1, %eax	#, iftmp.125
	jmp	.L264	#
.L260:
	.loc 1 740 0 discriminator 2
	cmpl	$18, -20(%rbp)	#, mode
	jne	.L265	#,
	.loc 1 740 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.130
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L266	#,
	.loc 1 740 0 discriminator 9
	movl	$2, %eax	#, iftmp.129
	jmp	.L264	#
.L266:
	.loc 1 740 0 discriminator 10
	movl	$3, %eax	#, iftmp.129
	jmp	.L264	#
.L265:
	.loc 1 740 0 discriminator 8
	cmpl	$24, -20(%rbp)	#, mode
	jne	.L269	#,
	.loc 1 740 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.133
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L270	#,
	.loc 1 740 0 discriminator 13
	movl	$4, %eax	#, iftmp.132
	jmp	.L264	#
.L270:
	.loc 1 740 0 discriminator 14
	movl	$6, %eax	#, iftmp.132
	jmp	.L264	#
.L269:
	.loc 1 740 0 discriminator 12
	movl	-20(%rbp), %eax	# mode, mode.134
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15032
	movzbl	%al, %edx	# D.15032, D.15031
	movl	target_flags(%rip), %eax	# target_flags, target_flags.136
	andl	$33554432, %eax	#, D.15031
	testl	%eax, %eax	# D.15031
	je	.L273	#,
	.loc 1 740 0 discriminator 1
	movl	$8, %eax	#, iftmp.135
	jmp	.L274	#
.L273:
	.loc 1 740 0 discriminator 2
	movl	$4, %eax	#, iftmp.135
.L274:
	.loc 1 740 0 discriminator 3
	addl	%edx, %eax	# D.15031, D.15031
	subl	$1, %eax	#, D.15031
	movl	target_flags(%rip), %edx	# target_flags, target_flags.138
	andl	$33554432, %edx	#, D.15031
	testl	%edx, %edx	# D.15031
	je	.L275	#,
	.loc 1 740 0 discriminator 1
	movl	$8, %ecx	#, iftmp.137
	jmp	.L276	#
.L275:
	.loc 1 740 0 discriminator 2
	movl	$4, %ecx	#, iftmp.137
.L276:
	.loc 1 740 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.137
.L264:
	.loc 1 740 0 discriminator 6
	cmpl	-40(%rbp), %eax	# nregs, iftmp.124
	jne	.L277	#,
	.loc 1 741 0 is_stmt 1
	movl	-36(%rbp), %eax	# regno, regno.139
	movl	-20(%rbp), %edx	# mode, tmp255
	movl	%edx, %esi	# tmp255,
	movl	%eax, %edi	# regno.139,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.15031
	je	.L277	#,
	.loc 1 742 0
	movl	-20(%rbp), %eax	# mode, D.15030
	jmp	.L179	#
.L277:
	.loc 1 737 0
	addl	$1, -28(%rbp)	#, m
.L255:
	.loc 1 737 0 is_stmt 0 discriminator 1
	cmpl	$58, -28(%rbp)	#, m
	jbe	.L278	#,
	.loc 1 746 0 is_stmt 1
	movl	$0, %eax	#, D.15030
.L179:
	.loc 1 747 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	choose_hard_reg_mode, .-choose_hard_reg_mode
	.section	.rodata
	.align 8
.LC0:
	.string	"can't use '%s' as a %s register"
.LC1:
	.string	"unknown register name: %s"
	.text
	.globl	fix_register
	.type	fix_register, @function
fix_register:
.LFB8:
	.loc 1 757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movl	%esi, -28(%rbp)	# fixed, fixed
	movl	%edx, -32(%rbp)	# call_used, call_used
	.loc 1 763 0
	movq	-24(%rbp), %rax	# name, tmp62
	movq	%rax, %rdi	# tmp62,
	call	decode_reg_name	#
	movl	%eax, -4(%rbp)	# tmp63, i
	cmpl	$0, -4(%rbp)	#, i
	js	.L280	#,
	.loc 1 765 0
	cmpl	$7, -4(%rbp)	#, i
	je	.L281	#,
	.loc 1 767 0
	cmpl	$6, -4(%rbp)	#, i
	jne	.L282	#,
.L281:
	.loc 1 772 0
	cmpl	$0, -28(%rbp)	#, fixed
	je	.L283	#,
	.loc 1 772 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, call_used
	jne	.L282	#,
.L283:
.LBB11:
	.loc 1 778 0 is_stmt 1
	movl	-32(%rbp), %eax	# call_used, tmp65
	cltq
	movl	-28(%rbp), %edx	# fixed, tmp67
	movslq	%edx, %rdx	# tmp67, tmp66
	addq	%rdx, %rdx	# tmp68
	addq	%rdx, %rax	# tmp68, tmp69
	movq	what_option.11623(,%rax,8), %rdx	# what_option, D.15034
	movq	-24(%rbp), %rax	# name, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.LBE11:
	.loc 1 773 0
	nop
	jmp	.L279	#
.L282:
	.loc 1 783 0
	movl	-28(%rbp), %eax	# fixed, tmp71
	movl	%eax, %edx	# tmp71, D.15035
	movl	-4(%rbp), %eax	# i, tmp73
	cltq
	movb	%dl, fixed_regs(%rax)	# D.15035, fixed_regs
	.loc 1 784 0
	movl	-32(%rbp), %eax	# call_used, tmp74
	movl	%eax, %edx	# tmp74, D.15035
	movl	-4(%rbp), %eax	# i, tmp76
	cltq
	movb	%dl, call_used_regs(%rax)	# D.15035, call_used_regs
	jmp	.L279	#
.L280:
	.loc 1 793 0
	movq	-24(%rbp), %rax	# name, tmp77
	movq	%rax, %rsi	# tmp77,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L279:
	.loc 1 795 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fix_register, .-fix_register
	.section	.rodata
	.align 8
.LC2:
	.string	"global register variable follows a function definition"
	.align 8
.LC3:
	.string	"register used for two global register variables"
	.align 8
.LC4:
	.string	"call-clobbered register used for global register variable"
	.text
	.globl	globalize_reg
	.type	globalize_reg, @function
globalize_reg:
.LFB9:
	.loc 1 802 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# i, i
	.loc 1 803 0
	movl	-4(%rbp), %eax	# i, tmp82
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15038
	testb	%al, %al	# D.15038
	jne	.L287	#,
	.loc 1 803 0 is_stmt 0 discriminator 1
	movl	no_global_reg_vars(%rip), %eax	# no_global_reg_vars, no_global_reg_vars.140
	testl	%eax, %eax	# no_global_reg_vars.140
	je	.L287	#,
	.loc 1 804 0 is_stmt 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L287:
	.loc 1 806 0
	movl	-4(%rbp), %eax	# i, tmp84
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.15038
	testb	%al, %al	# D.15038
	je	.L288	#,
	.loc 1 808 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 809 0
	jmp	.L286	#
.L288:
	.loc 1 812 0
	movl	-4(%rbp), %eax	# i, tmp86
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.15038
	testb	%al, %al	# D.15038
	je	.L290	#,
	.loc 1 812 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15038
	testb	%al, %al	# D.15038
	jne	.L290	#,
	.loc 1 813 0 is_stmt 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L290:
	.loc 1 815 0
	movl	-4(%rbp), %eax	# i, tmp90
	cltq
	movb	$1, global_regs(%rax)	#, global_regs
	.loc 1 818 0
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.15038
	testb	%al, %al	# D.15038
	je	.L291	#,
	.loc 1 819 0
	jmp	.L286	#
.L291:
	.loc 1 821 0
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	movb	$1, call_fixed_regs(%rax)	#, call_fixed_regs
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	movzbl	call_fixed_regs(%rax), %edx	# call_fixed_regs, D.15038
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	movb	%dl, call_used_regs(%rax)	# D.15038, call_used_regs
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	movzbl	call_used_regs(%rax), %edx	# call_used_regs, D.15038
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	movb	%dl, fixed_regs(%rax)	# D.15038, fixed_regs
	.loc 1 822 0
	movl	n_non_fixed_regs(%rip), %eax	# n_non_fixed_regs, n_non_fixed_regs.141
	subl	$1, %eax	#, n_non_fixed_regs.142
	movl	%eax, n_non_fixed_regs(%rip)	# n_non_fixed_regs.142, n_non_fixed_regs
	.loc 1 824 0
	movl	-4(%rbp), %eax	# i, tmp103
	movl	$1, %edx	#, tmp104
	movl	%eax, %ecx	# tmp103, tmp111
	salq	%cl, %rdx	# tmp111, D.15039
	movq	fixed_reg_set(%rip), %rax	# fixed_reg_set, fixed_reg_set.143
	orq	%rdx, %rax	# D.15039, fixed_reg_set.144
	movq	%rax, fixed_reg_set(%rip)	# fixed_reg_set.144, fixed_reg_set
	.loc 1 825 0
	movl	-4(%rbp), %eax	# i, tmp105
	movl	$1, %edx	#, tmp106
	movl	%eax, %ecx	# tmp105, tmp112
	salq	%cl, %rdx	# tmp112, D.15039
	movq	call_used_reg_set(%rip), %rax	# call_used_reg_set, call_used_reg_set.145
	orq	%rdx, %rax	# D.15039, call_used_reg_set.146
	movq	%rax, call_used_reg_set(%rip)	# call_used_reg_set.146, call_used_reg_set
	.loc 1 826 0
	movl	-4(%rbp), %eax	# i, tmp107
	movl	$1, %edx	#, tmp108
	movl	%eax, %ecx	# tmp107, tmp113
	salq	%cl, %rdx	# tmp113, D.15039
	movq	call_fixed_reg_set(%rip), %rax	# call_fixed_reg_set, call_fixed_reg_set.147
	orq	%rdx, %rax	# D.15039, call_fixed_reg_set.148
	movq	%rax, call_fixed_reg_set(%rip)	# call_fixed_reg_set.148, call_fixed_reg_set
	.loc 1 827 0
	movl	-4(%rbp), %eax	# i, tmp109
	movl	$1, %edx	#, tmp110
	movl	%eax, %ecx	# tmp109, tmp114
	salq	%cl, %rdx	# tmp114, D.15039
	movq	regs_invalidated_by_call(%rip), %rax	# regs_invalidated_by_call, regs_invalidated_by_call.149
	orq	%rdx, %rax	# D.15039, regs_invalidated_by_call.150
	movq	%rax, regs_invalidated_by_call(%rip)	# regs_invalidated_by_call.150, regs_invalidated_by_call
.L286:
	.loc 1 828 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	globalize_reg, .-globalize_reg
	.local	costs
	.comm	costs,8,8
	.local	init_cost
	.comm	init_cost,104,32
	.local	reg_pref
	.comm	reg_pref,8,8
	.local	reg_pref_buffer
	.comm	reg_pref_buffer,8,8
	.local	frequency
	.comm	frequency,4,4
	.globl	reg_preferred_class
	.type	reg_preferred_class, @function
reg_preferred_class:
.LFB10:
	.loc 1 901 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# regno, regno
	.loc 1 902 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.151
	testq	%rax, %rax	# reg_pref.151
	jne	.L293	#,
	.loc 1 903 0
	movl	$12, %eax	#, D.15043
	jmp	.L294	#
.L293:
	.loc 1 904 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.152
	movl	-4(%rbp), %edx	# regno, tmp67
	movslq	%edx, %rdx	# tmp67, D.15044
	addq	%rdx, %rdx	# D.15044
	addq	%rdx, %rax	# D.15044, D.15045
	movzbl	(%rax), %eax	# _8->prefclass, D.15046
	movsbl	%al, %eax	# D.15046, D.15043
.L294:
	.loc 1 905 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	reg_preferred_class, .-reg_preferred_class
	.globl	reg_alternate_class
	.type	reg_alternate_class, @function
reg_alternate_class:
.LFB11:
	.loc 1 910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# regno, regno
	.loc 1 911 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.153
	testq	%rax, %rax	# reg_pref.153
	jne	.L296	#,
	.loc 1 912 0
	movl	$24, %eax	#, D.15047
	jmp	.L297	#
.L296:
	.loc 1 914 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.154
	movl	-4(%rbp), %edx	# regno, tmp67
	movslq	%edx, %rdx	# tmp67, D.15048
	addq	%rdx, %rdx	# D.15048
	addq	%rdx, %rax	# D.15048, D.15049
	movzbl	1(%rax), %eax	# _8->altclass, D.15050
	movsbl	%al, %eax	# D.15050, D.15047
.L297:
	.loc 1 915 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	reg_alternate_class, .-reg_alternate_class
	.globl	regclass_init
	.type	regclass_init, @function
regclass_init:
.LFB12:
	.loc 1 921 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 924 0
	movl	$10000, init_cost+100(%rip)	#, init_cost.mem_cost
	.loc 1 925 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L299	#
.L300:
	.loc 1 926 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp60
	cltq
	movl	$10000, init_cost(,%rax,4)	#, init_cost.cost
	.loc 1 925 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L299:
	.loc 1 925 0 is_stmt 0 discriminator 1
	cmpl	$24, -4(%rbp)	#, i
	jle	.L300	#,
	.loc 1 930 0 is_stmt 1
	movq	$0, reg_pref(%rip)	#, reg_pref
	.loc 1 933 0
	movl	$1, no_global_reg_vars(%rip)	#, no_global_reg_vars
	.loc 1 934 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	regclass_init, .-regclass_init
	.section	.rodata
.LC5:
	.string	"  Register %i costs:"
.LC6:
	.string	" %s:%i"
.LC7:
	.string	" MEM:%i\n"
	.text
	.type	dump_regclass, @function
dump_regclass:
.LFB13:
	.loc 1 940 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# dump, dump
	.loc 1 943 0
	movl	$53, -8(%rbp)	#, i
	jmp	.L302	#
.L307:
.LBB12:
	.loc 1 946 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.155
	movl	-8(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, tmp86
	addq	$4, %rdx	#, tmp88
	movq	(%rax,%rdx,8), %rax	# reg_n_info.155_5->data.reg, D.15051
	movl	16(%rax), %eax	# _6->refs, D.15052
	testl	%eax, %eax	# D.15052
	je	.L303	#,
	.loc 1 948 0
	movl	-8(%rbp), %edx	# i, tmp89
	movq	-24(%rbp), %rax	# dump, tmp90
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 949 0
	movl	$0, -4(%rbp)	#, class
	jmp	.L304	#
.L306:
	.loc 1 950 0
	movl	-4(%rbp), %edx	# class, class.156
	movq	cfun(%rip), %rax	# cfun, cfun.157
	movq	24(%rax), %rax	# cfun.157_11->emit, D.15053
	movq	80(%rax), %rax	# _12->x_regno_reg_rtx, D.15054
	movl	-8(%rbp), %ecx	# i, tmp91
	movslq	%ecx, %rcx	# tmp91, D.15055
	salq	$3, %rcx	#, D.15055
	addq	%rcx, %rax	# D.15055, D.15054
	movq	(%rax), %rax	# *_16, D.15056
	movzbl	2(%rax), %eax	# _17->mode, D.15057
	movzbl	%al, %eax	# D.15057, D.15058
	movl	%eax, %esi	# D.15058, tmp92
	movl	%edx, %ecx	# class.156, tmp93
	movq	%rcx, %rdx	# tmp93, tmp94
	leaq	0(,%rdx,4), %rax	#, tmp95
	movq	%rax, %rdx	# tmp95, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	salq	$4, %rax	#, tmp96
	subq	%rdx, %rax	# tmp94, tmp96
	subq	%rcx, %rax	# tmp93, tmp96
	addq	%rsi, %rax	# tmp92, tmp97
	addq	$contains_reg_of_mode, %rax	#, tmp98
	movzbl	(%rax), %eax	# contains_reg_of_mode, D.15059
	testb	%al, %al	# D.15059
	je	.L305	#,
	.loc 1 961 0
	movq	costs(%rip), %rcx	# costs, costs.158
	movl	-8(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, D.15055
	movq	%rdx, %rax	# D.15055, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# D.15055, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# D.15055, tmp100
	salq	$3, %rax	#, tmp101
	leaq	(%rcx,%rax), %rdx	#, D.15060
	.loc 1 960 0
	movl	-4(%rbp), %eax	# class, class.159
	movl	%eax, %eax	# class.159, tmp102
	movl	(%rdx,%rax,4), %ecx	# _24->cost, D.15052
	movl	-4(%rbp), %eax	# class, tmp104
	cltq
	movq	reg_class_names.11685(,%rax,8), %rdx	# reg_class_names, D.15061
	movq	-24(%rbp), %rax	# dump, tmp105
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
.L305:
	.loc 1 949 0
	addl	$1, -4(%rbp)	#, class
.L304:
	.loc 1 949 0 is_stmt 0 discriminator 1
	cmpl	$24, -4(%rbp)	#, class
	jle	.L306	#,
	.loc 1 962 0 is_stmt 1
	movq	costs(%rip), %rcx	# costs, costs.160
	movl	-8(%rbp), %eax	# i, tmp106
	movslq	%eax, %rdx	# tmp106, D.15055
	movq	%rdx, %rax	# D.15055, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# D.15055, tmp107
	salq	$2, %rax	#, tmp107
	addq	%rdx, %rax	# D.15055, tmp107
	salq	$3, %rax	#, tmp108
	addq	%rcx, %rax	# costs.160, D.15060
	movl	100(%rax), %edx	# _32->mem_cost, D.15052
	movq	-24(%rbp), %rax	# dump, tmp109
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	fprintf	#
.L303:
.LBE12:
	.loc 1 943 0
	addl	$1, -8(%rbp)	#, i
.L302:
	.loc 1 943 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.161
	cmpl	%eax, -8(%rbp)	# max_regno.161, i
	jl	.L307	#,
	.loc 1 965 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	dump_regclass, .-dump_regclass
	.type	record_operand_costs, @function
record_operand_costs:
.LFB14:
	.loc 1 975 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$672, %rsp	#,
	movq	%rdi, -632(%rbp)	# insn, insn
	movq	%rsi, -640(%rbp)	# op_costs, op_costs
	movq	%rdx, -648(%rbp)	# reg_pref, reg_pref
	.loc 1 980 0
	movl	$0, -624(%rbp)	#, i
	jmp	.L309	#
.L310:
	.loc 1 982 0 discriminator 2
	movl	-624(%rbp), %eax	# i, tmp103
	cltq
	addq	$60, %rax	#, tmp104
	movq	recog_data(,%rax,8), %rdx	# recog_data.constraints, D.15067
	movl	-624(%rbp), %eax	# i, tmp106
	cltq
	movq	%rdx, -480(%rbp,%rax,8)	# D.15067, constraints
	.loc 1 983 0 discriminator 2
	movl	-624(%rbp), %eax	# i, tmp108
	cltq
	addq	$180, %rax	#, tmp109
	movl	recog_data(,%rax,4), %edx	# recog_data.operand_mode, D.15068
	movl	-624(%rbp), %eax	# i, tmp111
	cltq
	movl	%edx, -608(%rbp,%rax,4)	# D.15068, modes
	.loc 1 980 0 discriminator 2
	addl	$1, -624(%rbp)	#, i
.L309:
	.loc 1 980 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15065
	movsbl	%al, %eax	# D.15065, D.15066
	cmpl	-624(%rbp), %eax	# i, D.15066
	jg	.L310	#,
	.loc 1 992 0 is_stmt 1
	movl	$0, -624(%rbp)	#, i
	jmp	.L311	#
.L315:
	.loc 1 994 0
	movl	-624(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, D.15069
	movq	%rdx, %rax	# D.15069, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# D.15069, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# D.15069, tmp113
	salq	$3, %rax	#, tmp114
	movq	%rax, %rdx	# tmp113, D.15069
	movq	-640(%rbp), %rax	# op_costs, tmp115
	addq	%rdx, %rax	# D.15069, D.15070
	movq	init_cost(%rip), %rdx	# init_cost, tmp117
	movq	%rdx, (%rax)	# tmp117, *_17
	movq	init_cost+8(%rip), %rdx	# init_cost, tmp118
	movq	%rdx, 8(%rax)	# tmp118, *_17
	movq	init_cost+16(%rip), %rdx	# init_cost, tmp119
	movq	%rdx, 16(%rax)	# tmp119, *_17
	movq	init_cost+24(%rip), %rdx	# init_cost, tmp120
	movq	%rdx, 24(%rax)	# tmp120, *_17
	movq	init_cost+32(%rip), %rdx	# init_cost, tmp121
	movq	%rdx, 32(%rax)	# tmp121, *_17
	movq	init_cost+40(%rip), %rdx	# init_cost, tmp122
	movq	%rdx, 40(%rax)	# tmp122, *_17
	movq	init_cost+48(%rip), %rdx	# init_cost, tmp123
	movq	%rdx, 48(%rax)	# tmp123, *_17
	movq	init_cost+56(%rip), %rdx	# init_cost, tmp124
	movq	%rdx, 56(%rax)	# tmp124, *_17
	movq	init_cost+64(%rip), %rdx	# init_cost, tmp125
	movq	%rdx, 64(%rax)	# tmp125, *_17
	movq	init_cost+72(%rip), %rdx	# init_cost, tmp126
	movq	%rdx, 72(%rax)	# tmp126, *_17
	movq	init_cost+80(%rip), %rdx	# init_cost, tmp127
	movq	%rdx, 80(%rax)	# tmp127, *_17
	movq	init_cost+88(%rip), %rdx	# init_cost, tmp128
	movq	%rdx, 88(%rax)	# tmp128, *_17
	movq	init_cost+96(%rip), %rdx	# init_cost, tmp129
	movq	%rdx, 96(%rax)	# tmp129, *_17
	.loc 1 996 0
	movl	-624(%rbp), %eax	# i, tmp131
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15071
	movzwl	(%rax), %eax	# _18->code, D.15072
	cmpw	$63, %ax	#, D.15072
	jne	.L312	#,
.LBB13:
	.loc 1 998 0
	movl	-624(%rbp), %eax	# i, tmp133
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15071
	movq	8(%rax), %rax	# _20->fld[0].rtx, tmp134
	movq	%rax, -616(%rbp)	# tmp134, inner
	.loc 1 1004 0
	movl	-624(%rbp), %eax	# i, tmp136
	cltq
	movq	-616(%rbp), %rdx	# inner, tmp137
	movq	%rdx, recog_data(,%rax,8)	# tmp137, recog_data.operand
.L312:
.LBE13:
	.loc 1 1007 0
	movl	-624(%rbp), %eax	# i, tmp139
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15071
	movzwl	(%rax), %eax	# _22->code, D.15072
	cmpw	$66, %ax	#, D.15072
	jne	.L313	#,
	.loc 1 1008 0
	movl	frequency(%rip), %eax	# frequency, frequency.162
	leal	(%rax,%rax), %edx	#, D.15066
	movl	-624(%rbp), %eax	# i, tmp141
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15071
	movq	8(%rax), %rax	# _26->fld[0].rtx, D.15071
	movl	$12, %esi	#,
	movq	%rax, %rdi	# D.15071,
	call	record_address_regs	#
	jmp	.L314	#
.L313:
	.loc 1 1010 0
	movl	-624(%rbp), %eax	# i, tmp143
	cltq
	movq	-480(%rbp,%rax,8), %rax	# constraints, D.15067
	movzbl	(%rax), %eax	# *_28, D.15065
	cmpb	$112, %al	#, D.15065
	jne	.L314	#,
	.loc 1 1011 0
	movl	frequency(%rip), %eax	# frequency, frequency.163
	leal	(%rax,%rax), %edx	#, D.15066
	movl	-624(%rbp), %eax	# i, tmp145
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15071
	movl	$12, %esi	#,
	movq	%rax, %rdi	# D.15071,
	call	record_address_regs	#
.L314:
	.loc 1 992 0
	addl	$1, -624(%rbp)	#, i
.L311:
	.loc 1 992 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15065
	movsbl	%al, %eax	# D.15065, D.15066
	cmpl	-624(%rbp), %eax	# i, D.15066
	jg	.L315	#,
	.loc 1 1019 0 is_stmt 1
	movl	$0, -624(%rbp)	#, i
	jmp	.L316	#
.L320:
	.loc 1 1020 0
	movl	-624(%rbp), %eax	# i, tmp147
	cltq
	movq	-480(%rbp,%rax,8), %rax	# constraints, D.15067
	movzbl	(%rax), %eax	# *_38, D.15065
	cmpb	$37, %al	#, D.15065
	jne	.L317	#,
.LBB14:
	.loc 1 1028 0
	movl	$0, -620(%rbp)	#, j
	jmp	.L318	#
.L319:
	.loc 1 1029 0 discriminator 2
	movl	-620(%rbp), %eax	# j, tmp149
	cltq
	movq	-480(%rbp,%rax,8), %rdx	# constraints, D.15067
	movl	-620(%rbp), %eax	# j, tmp151
	cltq
	movq	%rdx, -240(%rbp,%rax,8)	# D.15067, xconstraints
	.loc 1 1028 0 discriminator 2
	addl	$1, -620(%rbp)	#, j
.L318:
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15065
	movsbl	%al, %eax	# D.15065, D.15066
	cmpl	-620(%rbp), %eax	# j, D.15066
	jg	.L319	#,
	.loc 1 1031 0 is_stmt 1
	movl	-624(%rbp), %eax	# i, tmp152
	addl	$1, %eax	#, D.15066
	cltq
	movq	-480(%rbp,%rax,8), %rdx	# constraints, D.15067
	movl	-624(%rbp), %eax	# i, tmp155
	cltq
	movq	%rdx, -240(%rbp,%rax,8)	# D.15067, xconstraints
	.loc 1 1032 0
	movl	-624(%rbp), %eax	# i, tmp156
	leal	1(%rax), %ecx	#, D.15066
	movl	-624(%rbp), %eax	# i, tmp158
	cltq
	movq	-480(%rbp,%rax,8), %rdx	# constraints, D.15067
	movslq	%ecx, %rax	# D.15066, tmp159
	movq	%rdx, -240(%rbp,%rax,8)	# D.15067, xconstraints
	.loc 1 1033 0
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15065
	movsbl	%al, %esi	# D.15065, D.15066
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.15065
	movsbl	%al, %eax	# D.15065, D.15066
	movq	-632(%rbp), %r8	# insn, tmp160
	leaq	-240(%rbp), %rdi	#, tmp161
	leaq	-608(%rbp), %rdx	#, tmp162
	movq	-648(%rbp), %rcx	# reg_pref, tmp163
	movq	%rcx, 8(%rsp)	# tmp163,
	movq	-640(%rbp), %rcx	# op_costs, tmp164
	movq	%rcx, (%rsp)	# tmp164,
	movq	%r8, %r9	# tmp160,
	movq	%rdi, %r8	# tmp161,
	movq	%rdx, %rcx	# tmp162,
	movl	$recog_data, %edx	#,
	movl	%eax, %edi	# D.15066,
	call	record_reg_classes	#
.L317:
.LBE14:
	.loc 1 1019 0
	addl	$1, -624(%rbp)	#, i
.L316:
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15065
	movsbl	%al, %eax	# D.15065, D.15066
	subl	$1, %eax	#, D.15066
	cmpl	-624(%rbp), %eax	# i, D.15066
	jg	.L320	#,
	.loc 1 1038 0 is_stmt 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15065
	movsbl	%al, %esi	# D.15065, D.15066
	movzbl	recog_data+998(%rip), %eax	# recog_data.n_alternatives, D.15065
	movsbl	%al, %eax	# D.15065, D.15066
	movq	-632(%rbp), %r8	# insn, tmp165
	leaq	-480(%rbp), %rdi	#, tmp166
	leaq	-608(%rbp), %rdx	#, tmp167
	movq	-648(%rbp), %rcx	# reg_pref, tmp168
	movq	%rcx, 8(%rsp)	# tmp168,
	movq	-640(%rbp), %rcx	# op_costs, tmp169
	movq	%rcx, (%rsp)	# tmp169,
	movq	%r8, %r9	# tmp165,
	movq	%rdi, %r8	# tmp166,
	movq	%rdx, %rcx	# tmp167,
	movl	$recog_data, %edx	#,
	movl	%eax, %edi	# D.15066,
	call	record_reg_classes	#
	.loc 1 1041 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	record_operand_costs, .-record_operand_costs
	.type	scan_one_insn, @function
scan_one_insn:
.LFB15:
	.loc 1 1054 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$3216, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -3224(%rbp)	# insn, insn
	movl	%esi, -3228(%rbp)	# pass, pass
	.loc 1 1055 0
	movq	-3224(%rbp), %rax	# insn, tmp267
	movzwl	(%rax), %eax	# insn_8(D)->code, D.15074
	movzwl	%ax, %eax	# D.15074, tmp268
	movl	%eax, -3204(%rbp)	# tmp268, code
	.loc 1 1061 0
	movl	-3204(%rbp), %eax	# code, code.164
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15075
	cmpb	$105, %al	#, D.15075
	je	.L322	#,
	.loc 1 1062 0
	movq	-3224(%rbp), %rax	# insn, D.15073
	jmp	.L350	#
.L322:
	.loc 1 1064 0
	movq	-3224(%rbp), %rax	# insn, tmp270
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, D.15076
	movzwl	(%rax), %eax	# _14->code, D.15074
	movzwl	%ax, %eax	# D.15074, tmp271
	movl	%eax, -3200(%rbp)	# tmp271, pat_code
	.loc 1 1065 0
	cmpl	$48, -3200(%rbp)	#, pat_code
	je	.L324	#,
	.loc 1 1066 0
	cmpl	$49, -3200(%rbp)	#, pat_code
	je	.L324	#,
	.loc 1 1067 0
	cmpl	$40, -3200(%rbp)	#, pat_code
	je	.L324	#,
	.loc 1 1068 0
	cmpl	$44, -3200(%rbp)	#, pat_code
	je	.L324	#,
	.loc 1 1069 0
	cmpl	$45, -3200(%rbp)	#, pat_code
	jne	.L325	#,
.L324:
	.loc 1 1070 0
	movq	-3224(%rbp), %rax	# insn, D.15073
	jmp	.L350	#
.L325:
	.loc 1 1072 0
	movq	-3224(%rbp), %rax	# insn, tmp272
	movzwl	(%rax), %eax	# insn_8(D)->code, D.15074
	movzwl	%ax, %eax	# D.15074, D.15077
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15075
	cmpb	$105, %al	#, D.15075
	jne	.L326	#,
	.loc 1 1072 0 is_stmt 0 discriminator 1
	movq	-3224(%rbp), %rax	# insn, tmp274
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, D.15076
	movzwl	(%rax), %eax	# _20->code, D.15074
	cmpw	$47, %ax	#, D.15074
	jne	.L327	#,
	.loc 1 1072 0 discriminator 3
	movq	-3224(%rbp), %rax	# insn, tmp275
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, iftmp.166
	jmp	.L329	#
.L327:
	.loc 1 1072 0 discriminator 4
	movq	-3224(%rbp), %rax	# insn, tmp276
	movq	32(%rax), %rdx	# insn_8(D)->fld[3].rtx, D.15076
	movq	-3224(%rbp), %rax	# insn, tmp277
	movq	%rdx, %rsi	# D.15076,
	movq	%rax, %rdi	# tmp277,
	call	single_set_2	#
	jmp	.L329	#
.L326:
	.loc 1 1072 0 discriminator 2
	movl	$0, %eax	#, iftmp.165
.L329:
	.loc 1 1072 0 discriminator 5
	movq	%rax, -3192(%rbp)	# iftmp.165, set
	.loc 1 1073 0 is_stmt 1 discriminator 5
	movq	-3224(%rbp), %rax	# insn, tmp278
	movq	%rax, %rdi	# tmp278,
	call	extract_insn	#
	.loc 1 1079 0 discriminator 5
	cmpq	$0, -3192(%rbp)	#, set
	je	.L330	#,
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movq	-3192(%rbp), %rax	# set, tmp279
	movq	8(%rax), %rax	# set_27->fld[0].rtx, D.15076
	movzwl	(%rax), %eax	# _28->code, D.15074
	cmpw	$61, %ax	#, D.15074
	jne	.L330	#,
	.loc 1 1080 0 is_stmt 1
	movq	-3192(%rbp), %rax	# set, tmp280
	movq	16(%rax), %rax	# set_27->fld[1].rtx, D.15076
	movzwl	(%rax), %eax	# _30->code, D.15074
	cmpw	$66, %ax	#, D.15074
	jne	.L330	#,
	.loc 1 1081 0
	movq	-3224(%rbp), %rax	# insn, tmp281
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp281,
	call	find_reg_note	#
	movq	%rax, -3184(%rbp)	# tmp282, note
	cmpq	$0, -3184(%rbp)	#, note
	je	.L330	#,
	.loc 1 1083 0
	movq	-3184(%rbp), %rax	# note, tmp283
	movq	8(%rax), %rax	# note_32->fld[0].rtx, D.15076
	movzwl	(%rax), %eax	# _33->code, D.15074
	cmpw	$66, %ax	#, D.15074
	jne	.L330	#,
	.loc 1 1086 0
	movq	costs(%rip), %rcx	# costs, costs.167
	.loc 1 1085 0
	movq	-3192(%rbp), %rax	# set, tmp284
	movq	8(%rax), %rax	# set_27->fld[0].rtx, D.15076
	movl	8(%rax), %eax	# _36->fld[0].rtuint, D.15078
	.loc 1 1086 0
	movl	%eax, %edx	# D.15078, D.15079
	movq	%rdx, %rax	# D.15079, tmp285
	addq	%rax, %rax	# tmp285
	addq	%rdx, %rax	# D.15079, tmp285
	salq	$2, %rax	#, tmp285
	addq	%rdx, %rax	# D.15079, tmp285
	salq	$3, %rax	#, tmp286
	leaq	(%rcx,%rax), %rbx	#, D.15080
	movq	costs(%rip), %rcx	# costs, costs.168
	.loc 1 1085 0
	movq	-3192(%rbp), %rax	# set, tmp287
	movq	8(%rax), %rax	# set_27->fld[0].rtx, D.15076
	movl	8(%rax), %eax	# _42->fld[0].rtuint, D.15078
	.loc 1 1086 0
	movl	%eax, %edx	# D.15078, D.15079
	movq	%rdx, %rax	# D.15079, tmp288
	addq	%rax, %rax	# tmp288
	addq	%rdx, %rax	# D.15079, tmp288
	salq	$2, %rax	#, tmp288
	addq	%rdx, %rax	# D.15079, tmp288
	salq	$3, %rax	#, tmp289
	addq	%rcx, %rax	# costs.168, D.15080
	movl	100(%rax), %r12d	# _46->mem_cost, D.15077
	movq	-3192(%rbp), %rax	# set, tmp290
	movq	8(%rax), %rax	# set_27->fld[0].rtx, D.15076
	movzbl	2(%rax), %eax	# _48->mode, D.15081
	movzbl	%al, %eax	# D.15081, D.15082
	movl	$1, %edx	#,
	movl	$12, %esi	#,
	movl	%eax, %edi	# D.15082,
	call	ix86_memory_move_cost	#
	.loc 1 1088 0
	movl	frequency(%rip), %edx	# frequency, frequency.169
	imull	%edx, %eax	# frequency.169, D.15077
	.loc 1 1086 0
	subl	%eax, %r12d	# D.15077, D.15077
	movl	%r12d, %eax	# D.15077, D.15077
	movl	%eax, 100(%rbx)	# D.15077, _40->mem_cost
	.loc 1 1089 0
	movl	frequency(%rip), %eax	# frequency, frequency.170
	leal	(%rax,%rax), %edx	#, D.15077
	movq	-3192(%rbp), %rax	# set, tmp291
	movq	16(%rax), %rax	# set_27->fld[1].rtx, D.15076
	movq	8(%rax), %rax	# _57->fld[0].rtx, D.15076
	movl	$12, %esi	#,
	movq	%rax, %rdi	# D.15076,
	call	record_address_regs	#
	.loc 1 1091 0
	movq	-3224(%rbp), %rax	# insn, D.15073
	jmp	.L350	#
.L330:
	.loc 1 1106 0
	cmpl	$0, -3228(%rbp)	#, pass
	jne	.L331	#,
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movl	optimize(%rip), %eax	# optimize, optimize.171
	testl	%eax, %eax	# optimize.171
	je	.L331	#,
	.loc 1 1107 0 is_stmt 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15075
	cmpb	$2, %al	#, D.15075
	jle	.L331	#,
	.loc 1 1108 0
	movq	recog_data+488(%rip), %rax	# recog_data.constraints, D.15083
	movzbl	(%rax), %eax	# *_63, D.15075
	cmpb	$48, %al	#, D.15075
	jne	.L331	#,
	.loc 1 1109 0
	movq	recog_data+488(%rip), %rax	# recog_data.constraints, D.15083
	addq	$1, %rax	#, D.15083
	movzbl	(%rax), %eax	# *_66, D.15075
	testb	%al, %al	# D.15075
	jne	.L331	#,
	.loc 1 1110 0
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _68->code, D.15074
	cmpw	$67, %ax	#, D.15074
	je	.L332	#,
	.loc 1 1110 0 is_stmt 0 discriminator 1
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _70->code, D.15074
	cmpw	$68, %ax	#, D.15074
	je	.L332	#,
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _72->code, D.15074
	cmpw	$54, %ax	#, D.15074
	je	.L332	#,
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _74->code, D.15074
	cmpw	$55, %ax	#, D.15074
	je	.L332	#,
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _76->code, D.15074
	cmpw	$58, %ax	#, D.15074
	je	.L332	#,
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _78->code, D.15074
	cmpw	$134, %ax	#, D.15074
	je	.L332	#,
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _80->code, D.15074
	cmpw	$56, %ax	#, D.15074
	je	.L332	#,
	movq	recog_data+8(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _82->code, D.15074
	cmpw	$140, %ax	#, D.15074
	jne	.L331	#,
.L332:
	.loc 1 1111 0 is_stmt 1
	movq	recog_data+8(%rip), %rdx	# recog_data.operand, D.15076
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movq	%rdx, %rsi	# D.15076,
	movq	%rax, %rdi	# D.15076,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15077
	jne	.L331	#,
	.loc 1 1112 0
	movq	recog_data+16(%rip), %rdx	# recog_data.operand, D.15076
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movq	%rdx, %rsi	# D.15076,
	movq	%rax, %rdi	# D.15076,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15077
	jne	.L331	#,
	.loc 1 1113 0
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _90->code, D.15074
	cmpw	$61, %ax	#, D.15074
	jne	.L331	#,
	.loc 1 1114 0
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzbl	2(%rax), %eax	# _92->mode, D.15081
	movzbl	%al, %edx	# D.15081, D.15078
	movl	recog_data+724(%rip), %eax	# recog_data.operand_mode, D.15082
	cmpl	%eax, %edx	# D.15082, D.15078
	je	.L333	#,
	.loc 1 1114 0 is_stmt 0 discriminator 1
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzbl	2(%rax), %eax	# _96->mode, D.15081
	cmpb	$3, %al	#, D.15081
	je	.L334	#,
	.loc 1 1114 0 discriminator 2
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzbl	2(%rax), %eax	# _98->mode, D.15081
	cmpb	$4, %al	#, D.15081
	je	.L334	#,
	.loc 1 1114 0 discriminator 1
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzbl	2(%rax), %eax	# _100->mode, D.15081
	cmpb	$2, %al	#, D.15081
	jne	.L335	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.172
	andl	$33554432, %eax	#, D.15077
	testl	%eax, %eax	# D.15077
	jne	.L334	#,
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.173
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.174
	movl	%eax, %ecx	# ix86_cpu.175, tmp366
	sarl	%cl, %edx	# tmp366, D.15077
	movl	%edx, %eax	# D.15077, D.15077
	andl	$1, %eax	#, D.15077
	testl	%eax, %eax	# D.15077
	je	.L334	#,
.L335:
	.loc 1 1114 0 discriminator 2
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzbl	2(%rax), %eax	# _109->mode, D.15081
	cmpb	$5, %al	#, D.15081
	jne	.L331	#,
	.loc 1 1114 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.176
	andl	$33554432, %eax	#, D.15077
	testl	%eax, %eax	# D.15077
	je	.L331	#,
.L334:
	movl	recog_data+724(%rip), %eax	# recog_data.operand_mode, D.15082
	cmpl	$3, %eax	#, D.15082
	je	.L333	#,
	movl	recog_data+724(%rip), %eax	# recog_data.operand_mode, D.15082
	cmpl	$4, %eax	#, D.15082
	je	.L333	#,
	movq	recog_data(%rip), %rax	# recog_data.operand, D.15076
	movzbl	2(%rax), %eax	# _115->mode, D.15081
	cmpb	$2, %al	#, D.15081
	jne	.L336	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.177
	andl	$33554432, %eax	#, D.15077
	testl	%eax, %eax	# D.15077
	jne	.L333	#,
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.178
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.179
	movl	%eax, %ecx	# ix86_cpu.180, tmp368
	sarl	%cl, %edx	# tmp368, D.15077
	movl	%edx, %eax	# D.15077, D.15077
	andl	$1, %eax	#, D.15077
	testl	%eax, %eax	# D.15077
	je	.L333	#,
.L336:
	.loc 1 1114 0 discriminator 2
	movl	recog_data+724(%rip), %eax	# recog_data.operand_mode, D.15082
	cmpl	$5, %eax	#, D.15082
	jne	.L331	#,
	.loc 1 1114 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.181
	andl	$33554432, %eax	#, D.15077
	testl	%eax, %eax	# D.15077
	je	.L331	#,
.L333:
.LBB15:
	.loc 1 1117 0 is_stmt 1
	movq	-3224(%rbp), %rax	# insn, tmp292
	movq	%rax, %rdi	# tmp292,
	call	prev_real_insn	#
	movq	%rax, -3176(%rbp)	# tmp293, previnsn
	.loc 1 1119 0
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	recog_data+724(%rip), %eax	# recog_data.operand_mode, D.15082
	.loc 1 1118 0
	movq	%rdx, %rsi	# D.15076,
	movl	%eax, %edi	# D.15082,
	call	gen_lowpart	#
	movq	%rax, -3168(%rbp)	# tmp294, dest
	.loc 1 1122 0
	movq	recog_data+8(%rip), %rdx	# recog_data.operand, D.15076
	movq	-3168(%rbp), %rax	# dest, tmp295
	movq	%rdx, %rsi	# D.15076,
	movq	%rax, %rdi	# tmp295,
	call	gen_move_insn	#
	.loc 1 1121 0
	movq	-3224(%rbp), %rdx	# insn, tmp296
	movq	%rdx, %rsi	# tmp296,
	movq	%rax, %rdi	# D.15076,
	call	emit_insn_before	#
	movq	%rax, -3160(%rbp)	# tmp297, newinsn
	.loc 1 1129 0
	cmpq	$0, -3176(%rbp)	#, previnsn
	je	.L337	#,
	.loc 1 1129 0 is_stmt 0 discriminator 1
	movq	-3176(%rbp), %rax	# previnsn, tmp298
	movzwl	(%rax), %eax	# previnsn_127->code, D.15074
	cmpw	$33, %ax	#, D.15074
	jne	.L338	#,
.L337:
.LBB16:
	.loc 1 1132 0 is_stmt 1
	movl	$0, -3208(%rbp)	#, b
	jmp	.L339	#
.L341:
	.loc 1 1133 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.182
	movl	-3208(%rbp), %edx	# b, tmp300
	movslq	%edx, %rdx	# tmp300, tmp299
	addq	$4, %rdx	#, tmp301
	movq	(%rax,%rdx,8), %rax	# basic_block_info.182_137->data.bb, D.15084
	movq	(%rax), %rax	# _138->head, D.15076
	cmpq	-3224(%rbp), %rax	# insn, D.15076
	jne	.L340	#,
	.loc 1 1134 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.183
	movl	-3208(%rbp), %edx	# b, tmp303
	movslq	%edx, %rdx	# tmp303, tmp302
	addq	$4, %rdx	#, tmp304
	movq	(%rax,%rdx,8), %rax	# basic_block_info.183_140->data.bb, D.15084
	movq	-3160(%rbp), %rdx	# newinsn, tmp305
	movq	%rdx, (%rax)	# tmp305, _141->head
.L340:
	.loc 1 1132 0
	addl	$1, -3208(%rbp)	#, b
.L339:
	.loc 1 1132 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.184
	cmpl	%eax, -3208(%rbp)	# n_basic_blocks.184, b
	jl	.L341	#,
.L338:
.LBE16:
	.loc 1 1138 0 is_stmt 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.185
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _144->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp306
	addq	$4, %rdx	#, tmp307
	movq	(%rax,%rdx,8), %rax	# reg_n_info.185_143->data.reg, D.15085
	movl	12(%rax), %edx	# _146->sets, D.15077
	addl	$1, %edx	#, D.15077
	movl	%edx, 12(%rax)	# D.15077, _146->sets
	.loc 1 1139 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.186
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _150->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp308
	addq	$4, %rdx	#, tmp309
	movq	(%rax,%rdx,8), %rax	# reg_n_info.186_149->data.reg, D.15085
	movl	16(%rax), %edx	# _152->refs, D.15077
	addl	$1, %edx	#, D.15077
	movl	%edx, 16(%rax)	# D.15077, _152->refs
	.loc 1 1140 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.187
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _156->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp310
	addq	$4, %rdx	#, tmp311
	movq	(%rax,%rdx,8), %rax	# reg_n_info.187_155->data.reg, D.15085
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.188
	movq	recog_data(%rip), %rcx	# recog_data.operand, D.15076
	movl	8(%rcx), %ecx	# _160->fld[0].rtuint, D.15078
	movl	%ecx, %ecx	# D.15078, tmp312
	addq	$4, %rcx	#, tmp313
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.188_159->data.reg, D.15085
	movl	20(%rdx), %ecx	# _162->freq, D.15077
	movl	frequency(%rip), %edx	# frequency, frequency.189
	addl	%ecx, %edx	# D.15077, D.15077
	movl	%edx, 20(%rax)	# D.15077, _158->freq
	.loc 1 1142 0
	movq	recog_data+248(%rip), %rax	# recog_data.operand_loc, D.15086
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movq	%rdx, (%rax)	# D.15076, *_166
	.loc 1 1143 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.190
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _169->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp314
	addq	$4, %rdx	#, tmp315
	movq	(%rax,%rdx,8), %rax	# reg_n_info.190_168->data.reg, D.15085
	movl	16(%rax), %edx	# _171->refs, D.15077
	addl	$1, %edx	#, D.15077
	movl	%edx, 16(%rax)	# D.15077, _171->refs
	.loc 1 1144 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.191
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _175->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp316
	addq	$4, %rdx	#, tmp317
	movq	(%rax,%rdx,8), %rax	# reg_n_info.191_174->data.reg, D.15085
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.192
	movq	recog_data(%rip), %rcx	# recog_data.operand, D.15076
	movl	8(%rcx), %ecx	# _179->fld[0].rtuint, D.15078
	movl	%ecx, %ecx	# D.15078, tmp318
	addq	$4, %rcx	#, tmp319
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.192_178->data.reg, D.15085
	movl	20(%rdx), %ecx	# _181->freq, D.15077
	movl	frequency(%rip), %edx	# frequency, frequency.193
	addl	%ecx, %edx	# D.15077, D.15077
	movl	%edx, 20(%rax)	# D.15077, _177->freq
	.loc 1 1145 0
	movzbl	recog_data+997(%rip), %eax	# recog_data.n_dups, D.15075
	movsbl	%al, %eax	# D.15075, D.15077
	subl	$1, %eax	#, tmp320
	movl	%eax, -3216(%rbp)	# tmp320, i
	jmp	.L342	#
.L344:
	.loc 1 1146 0
	movl	-3216(%rbp), %eax	# i, tmp322
	cltq
	movzbl	recog_data+992(%rax), %eax	# recog_data.dup_num, D.15075
	cmpb	$1, %al	#, D.15075
	jne	.L343	#,
	.loc 1 1148 0
	movl	-3216(%rbp), %eax	# i, tmp324
	cltq
	addq	$120, %rax	#, tmp325
	movq	recog_data(,%rax,8), %rax	# recog_data.dup_loc, D.15086
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movq	%rdx, (%rax)	# D.15076, *_189
	.loc 1 1149 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.194
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _192->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp326
	addq	$4, %rdx	#, tmp327
	movq	(%rax,%rdx,8), %rax	# reg_n_info.194_191->data.reg, D.15085
	movl	16(%rax), %edx	# _194->refs, D.15077
	addl	$1, %edx	#, D.15077
	movl	%edx, 16(%rax)	# D.15077, _194->refs
	.loc 1 1150 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.195
	movq	recog_data(%rip), %rdx	# recog_data.operand, D.15076
	movl	8(%rdx), %edx	# _198->fld[0].rtuint, D.15078
	movl	%edx, %edx	# D.15078, tmp328
	addq	$4, %rdx	#, tmp329
	movq	(%rax,%rdx,8), %rax	# reg_n_info.195_197->data.reg, D.15085
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.196
	movq	recog_data(%rip), %rcx	# recog_data.operand, D.15076
	movl	8(%rcx), %ecx	# _202->fld[0].rtuint, D.15078
	movl	%ecx, %ecx	# D.15078, tmp330
	addq	$4, %rcx	#, tmp331
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.196_201->data.reg, D.15085
	movl	20(%rdx), %ecx	# _204->freq, D.15077
	movl	frequency(%rip), %edx	# frequency, frequency.197
	addl	%ecx, %edx	# D.15077, D.15077
	movl	%edx, 20(%rax)	# D.15077, _200->freq
.L343:
	.loc 1 1145 0
	subl	$1, -3216(%rbp)	#, i
.L342:
	.loc 1 1145 0 is_stmt 0 discriminator 1
	cmpl	$0, -3216(%rbp)	#, i
	jns	.L344	#,
	.loc 1 1153 0 is_stmt 1
	movq	-3160(%rbp), %rax	# newinsn, tmp332
	movq	16(%rax), %rax	# newinsn_133->fld[1].rtx, D.15073
	jmp	.L350	#
.L331:
.LBE15:
	.loc 1 1156 0
	movq	reg_pref(%rip), %rdx	# reg_pref, reg_pref.198
	leaq	-3136(%rbp), %rcx	#, tmp333
	movq	-3224(%rbp), %rax	# insn, tmp334
	movq	%rcx, %rsi	# tmp333,
	movq	%rax, %rdi	# tmp334,
	call	record_operand_costs	#
	.loc 1 1161 0
	movl	$0, -3216(%rbp)	#, i
	jmp	.L345	#
.L349:
	.loc 1 1162 0
	movl	-3216(%rbp), %eax	# i, tmp336
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15076
	movzwl	(%rax), %eax	# _214->code, D.15074
	cmpw	$61, %ax	#, D.15074
	jne	.L346	#,
	.loc 1 1163 0
	movl	-3216(%rbp), %eax	# i, tmp338
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15076
	movl	8(%rax), %eax	# _216->fld[0].rtuint, D.15078
	cmpl	$52, %eax	#, D.15078
	jbe	.L346	#,
.LBB17:
	.loc 1 1165 0
	movl	-3216(%rbp), %eax	# i, tmp340
	cltq
	movq	recog_data(,%rax,8), %rax	# recog_data.operand, D.15076
	movl	8(%rax), %eax	# _218->fld[0].rtuint, D.15078
	movl	%eax, -3196(%rbp)	# D.15078, regno
	.loc 1 1166 0
	movq	costs(%rip), %rcx	# costs, costs.199
	movl	-3196(%rbp), %eax	# regno, tmp341
	movslq	%eax, %rdx	# tmp341, D.15079
	movq	%rdx, %rax	# D.15079, tmp342
	addq	%rax, %rax	# tmp342
	addq	%rdx, %rax	# D.15079, tmp342
	salq	$2, %rax	#, tmp342
	addq	%rdx, %rax	# D.15079, tmp342
	salq	$3, %rax	#, tmp343
	addq	%rcx, %rax	# costs.199, tmp344
	movq	%rax, -3152(%rbp)	# tmp344, p
	leaq	-3136(%rbp), %rcx	#, tmp345
	movl	-3216(%rbp), %eax	# i, tmp347
	movslq	%eax, %rdx	# tmp347, tmp346
	movq	%rdx, %rax	# tmp346, tmp348
	addq	%rax, %rax	# tmp348
	addq	%rdx, %rax	# tmp346, tmp348
	salq	$2, %rax	#, tmp348
	addq	%rdx, %rax	# tmp346, tmp348
	salq	$3, %rax	#, tmp349
	addq	%rcx, %rax	# tmp345, tmp350
	movq	%rax, -3144(%rbp)	# tmp350, q
	.loc 1 1168 0
	movq	-3152(%rbp), %rax	# p, tmp351
	movl	100(%rax), %edx	# p_224->mem_cost, D.15077
	movq	-3144(%rbp), %rax	# q, tmp352
	movl	100(%rax), %ecx	# q_225->mem_cost, D.15077
	movl	frequency(%rip), %eax	# frequency, frequency.200
	imull	%ecx, %eax	# D.15077, D.15077
	addl	%eax, %edx	# D.15077, D.15077
	movq	-3152(%rbp), %rax	# p, tmp353
	movl	%edx, 100(%rax)	# D.15077, p_224->mem_cost
	.loc 1 1169 0
	movl	$0, -3212(%rbp)	#, j
	jmp	.L347	#
.L348:
	.loc 1 1170 0 discriminator 2
	movq	-3152(%rbp), %rax	# p, tmp354
	movl	-3212(%rbp), %edx	# j, tmp356
	movslq	%edx, %rdx	# tmp356, tmp355
	movl	(%rax,%rdx,4), %ecx	# p_224->cost, D.15077
	movq	-3144(%rbp), %rax	# q, tmp357
	movl	-3212(%rbp), %edx	# j, tmp359
	movslq	%edx, %rdx	# tmp359, tmp358
	movl	(%rax,%rdx,4), %edx	# q_225->cost, D.15077
	movl	frequency(%rip), %eax	# frequency, frequency.201
	imull	%edx, %eax	# D.15077, D.15077
	addl	%eax, %ecx	# D.15077, D.15077
	movq	-3152(%rbp), %rax	# p, tmp360
	movl	-3212(%rbp), %edx	# j, tmp362
	movslq	%edx, %rdx	# tmp362, tmp361
	movl	%ecx, (%rax,%rdx,4)	# D.15077, p_224->cost
	.loc 1 1169 0 discriminator 2
	addl	$1, -3212(%rbp)	#, j
.L347:
	.loc 1 1169 0 is_stmt 0 discriminator 1
	cmpl	$24, -3212(%rbp)	#, j
	jle	.L348	#,
.L346:
.LBE17:
	.loc 1 1161 0 is_stmt 1
	addl	$1, -3216(%rbp)	#, i
.L345:
	.loc 1 1161 0 is_stmt 0 discriminator 1
	movzbl	recog_data+996(%rip), %eax	# recog_data.n_operands, D.15075
	movsbl	%al, %eax	# D.15075, D.15077
	cmpl	-3216(%rbp), %eax	# i, D.15077
	jg	.L349	#,
	.loc 1 1173 0 is_stmt 1
	movq	-3224(%rbp), %rax	# insn, D.15073
.L350:
	.loc 1 1174 0
	addq	$3216, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	scan_one_insn, .-scan_one_insn
	.section	.rodata
.LC8:
	.string	"\n\nPass %i\n\n"
.LC9:
	.string	"  Register %i"
.LC10:
	.string	" pref %s\n"
.LC11:
	.string	" pref %s or none\n"
.LC12:
	.string	" pref %s, else %s\n"
	.text
	.globl	regclass
	.type	regclass, @function
regclass:
.LFB16:
	.loc 1 1186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# f, f
	movl	%esi, -76(%rbp)	# nregs, nregs
	movq	%rdx, -88(%rbp)	# dump, dump
	.loc 1 1191 0
	call	init_recog	#
	.loc 1 1193 0
	movl	-76(%rbp), %eax	# nregs, tmp145
	movslq	%eax, %rdx	# tmp145, D.15087
	movq	%rdx, %rax	# D.15087, tmp146
	addq	%rax, %rax	# tmp146
	addq	%rdx, %rax	# D.15087, tmp146
	salq	$2, %rax	#, tmp146
	addq	%rdx, %rax	# D.15087, tmp146
	salq	$3, %rax	#, tmp147
	movq	%rax, %rdi	# D.15087,
	call	xmalloc	#
	movq	%rax, costs(%rip)	# costs.202, costs
	.loc 1 1257 0
	movl	$0, -48(%rbp)	#, pass
	jmp	.L352	#
.L389:
.LBB18:
	.loc 1 1261 0
	cmpq	$0, -88(%rbp)	#, dump
	je	.L353	#,
	.loc 1 1262 0
	movl	-48(%rbp), %edx	# pass, tmp149
	movq	-88(%rbp), %rax	# dump, tmp150
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp150,
	movl	$0, %eax	#,
	call	fprintf	#
.L353:
	.loc 1 1265 0
	movl	-76(%rbp), %eax	# nregs, tmp151
	movslq	%eax, %rdx	# tmp151, D.15087
	movq	%rdx, %rax	# D.15087, tmp152
	addq	%rax, %rax	# tmp152
	addq	%rdx, %rax	# D.15087, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.15087, tmp152
	salq	$3, %rax	#, tmp153
	movq	%rax, %rdx	# tmp152, D.15087
	movq	costs(%rip), %rax	# costs, costs.203
	movl	$0, %esi	#,
	movq	%rax, %rdi	# costs.203,
	call	memset	#
	.loc 1 1274 0
	movl	optimize(%rip), %eax	# optimize, optimize.204
	testl	%eax, %eax	# optimize.204
	jne	.L354	#,
	.loc 1 1276 0
	movl	$1000, frequency(%rip)	#, frequency
	.loc 1 1277 0
	movq	-72(%rbp), %rax	# f, tmp154
	movq	%rax, -24(%rbp)	# tmp154, insn
	jmp	.L355	#
.L356:
	.loc 1 1278 0 discriminator 2
	movl	-48(%rbp), %edx	# pass, tmp155
	movq	-24(%rbp), %rax	# insn, tmp156
	movl	%edx, %esi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	scan_one_insn	#
	movq	%rax, -24(%rbp)	# tmp157, insn
	.loc 1 1277 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp158
	movq	24(%rax), %rax	# insn_31->fld[2].rtx, tmp159
	movq	%rax, -24(%rbp)	# tmp159, insn
.L355:
	.loc 1 1277 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L356	#,
	jmp	.L357	#
.L354:
	.loc 1 1281 0 is_stmt 1
	movl	$0, -44(%rbp)	#, index
	jmp	.L358	#
.L367:
.LBB19:
	.loc 1 1283 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.205
	movl	-44(%rbp), %edx	# index, tmp161
	movslq	%edx, %rdx	# tmp161, tmp160
	addq	$4, %rdx	#, tmp162
	movq	(%rax,%rdx,8), %rax	# basic_block_info.205_35->data.bb, tmp163
	movq	%rax, -16(%rbp)	# tmp163, bb
	.loc 1 1289 0
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.207
	testl	%eax, %eax	# optimize_size.207
	jne	.L359	#,
	.loc 1 1289 0 is_stmt 0 discriminator 1
	movl	flag_branch_probabilities(%rip), %eax	# flag_branch_probabilities, flag_branch_probabilities.208
	testl	%eax, %eax	# flag_branch_probabilities.208
	je	.L360	#,
	.loc 1 1289 0 discriminator 2
	movq	entry_exit_blocks+96(%rip), %rax	# entry_exit_blocks[0].count, D.15088
	testq	%rax, %rax	# D.15088
	je	.L359	#,
.L360:
	.loc 1 1289 0 discriminator 1
	movq	-16(%rbp), %rax	# bb, tmp164
	movl	104(%rax), %eax	# bb_36->frequency, D.15089
	imull	$1000, %eax, %eax	#, D.15089, D.15089
	addl	$9999, %eax	#, D.15090
	cmpl	$19998, %eax	#, D.15090
	jbe	.L361	#,
	movq	-16(%rbp), %rax	# bb, tmp165
	movl	104(%rax), %eax	# bb_36->frequency, D.15089
	imull	$1000, %eax, %ecx	#, D.15089, D.15089
	movl	$1759218605, %edx	#, tmp167
	movl	%ecx, %eax	# D.15089, tmp250
	imull	%edx	# tmp167
	sarl	$12, %edx	#, tmp168
	movl	%ecx, %eax	# D.15089, tmp169
	sarl	$31, %eax	#, tmp169
	subl	%eax, %edx	# tmp169, iftmp.209
	movl	%edx, %eax	# iftmp.209, iftmp.209
	jmp	.L362	#
.L361:
	.loc 1 1289 0 discriminator 2
	movl	$1, %eax	#, iftmp.209
.L362:
	.loc 1 1289 0 discriminator 3
	jmp	.L363	#
.L359:
	.loc 1 1289 0 discriminator 2
	movl	$1000, %eax	#, iftmp.206
.L363:
	.loc 1 1289 0 discriminator 3
	movl	%eax, frequency(%rip)	# iftmp.206, frequency
	.loc 1 1290 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# bb, tmp170
	movq	(%rax), %rax	# bb_36->head, tmp171
	movq	%rax, -24(%rbp)	# tmp171, insn
.L366:
	.loc 1 1292 0
	movl	-48(%rbp), %edx	# pass, tmp172
	movq	-24(%rbp), %rax	# insn, tmp173
	movl	%edx, %esi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	scan_one_insn	#
	movq	%rax, -24(%rbp)	# tmp174, insn
	.loc 1 1293 0
	movq	-16(%rbp), %rax	# bb, tmp175
	movq	8(%rax), %rax	# bb_36->end, D.15091
	cmpq	-24(%rbp), %rax	# insn, D.15091
	jne	.L364	#,
	.loc 1 1294 0
	nop
.LBE19:
	.loc 1 1281 0
	addl	$1, -44(%rbp)	#, index
	jmp	.L358	#
.L364:
.LBB20:
	.loc 1 1290 0
	movq	-24(%rbp), %rax	# insn, tmp176
	movq	24(%rax), %rax	# insn_51->fld[2].rtx, tmp177
	movq	%rax, -24(%rbp)	# tmp177, insn
	.loc 1 1295 0
	jmp	.L366	#
.L358:
.LBE20:
	.loc 1 1281 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.210
	cmpl	%eax, -44(%rbp)	# n_basic_blocks.210, index
	jl	.L367	#,
.L357:
	.loc 1 1303 0
	cmpl	$0, -48(%rbp)	#, pass
	jne	.L368	#,
	.loc 1 1304 0
	movq	reg_pref_buffer(%rip), %rax	# reg_pref_buffer, reg_pref_buffer.211
	movq	%rax, reg_pref(%rip)	# reg_pref_buffer.211, reg_pref
.L368:
	.loc 1 1306 0
	cmpq	$0, -88(%rbp)	#, dump
	je	.L369	#,
	.loc 1 1308 0
	movq	-88(%rbp), %rax	# dump, tmp178
	movq	%rax, %rdi	# tmp178,
	call	dump_regclass	#
	.loc 1 1309 0
	movq	-88(%rbp), %rax	# dump, tmp179
	movq	%rax, %rsi	# tmp179,
	movl	$10, %edi	#,
	call	fputc	#
.L369:
	.loc 1 1311 0
	movl	$53, -52(%rbp)	#, i
	jmp	.L370	#
.L388:
.LBB21:
	.loc 1 1313 0
	movl	$1073741823, -40(%rbp)	#, best_cost
	.loc 1 1314 0
	movl	$24, -36(%rbp)	#, best
	movl	$0, -32(%rbp)	#, alt
	.loc 1 1318 0
	movq	costs(%rip), %rcx	# costs, costs.212
	movl	-52(%rbp), %eax	# i, tmp180
	movslq	%eax, %rdx	# tmp180, D.15087
	movq	%rdx, %rax	# D.15087, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.15087, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# D.15087, tmp181
	salq	$3, %rax	#, tmp182
	addq	%rcx, %rax	# costs.212, tmp183
	movq	%rax, -8(%rbp)	# tmp183, p
	.loc 1 1322 0
	movl	optimize(%rip), %eax	# optimize, optimize.213
	testl	%eax, %eax	# optimize.213
	je	.L371	#,
	.loc 1 1322 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.214
	movl	-52(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, tmp184
	addq	$4, %rdx	#, tmp186
	movq	(%rax,%rdx,8), %rax	# reg_n_info.214_65->data.reg, D.15092
	movl	16(%rax), %eax	# _66->refs, D.15089
	testl	%eax, %eax	# D.15089
	jne	.L371	#,
	.loc 1 1323 0 is_stmt 1
	jmp	.L372	#
.L371:
	.loc 1 1325 0
	movl	$23, -28(%rbp)	#, class
	jmp	.L373	#
.L376:
	.loc 1 1329 0
	movq	cfun(%rip), %rax	# cfun, cfun.215
	movq	24(%rax), %rax	# cfun.215_69->emit, D.15093
	movq	80(%rax), %rax	# _70->x_regno_reg_rtx, D.15094
	movl	-52(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, D.15087
	salq	$3, %rdx	#, D.15087
	addq	%rdx, %rax	# D.15087, D.15094
	movq	(%rax), %rax	# *_74, D.15091
	movzbl	2(%rax), %eax	# _75->mode, D.15095
	movzbl	%al, %eax	# D.15095, D.15096
	movl	%eax, %esi	# D.15096, tmp188
	movl	-28(%rbp), %eax	# class, tmp190
	movslq	%eax, %rcx	# tmp190, tmp189
	movq	%rcx, %rdx	# tmp189, tmp191
	leaq	0(,%rdx,4), %rax	#, tmp192
	movq	%rax, %rdx	# tmp192, tmp191
	movq	%rdx, %rax	# tmp191, tmp193
	salq	$4, %rax	#, tmp193
	subq	%rdx, %rax	# tmp191, tmp193
	subq	%rcx, %rax	# tmp189, tmp193
	addq	%rsi, %rax	# tmp188, tmp194
	addq	$contains_reg_of_mode, %rax	#, tmp195
	movzbl	(%rax), %eax	# contains_reg_of_mode, D.15097
	testb	%al, %al	# D.15097
	je	.L374	#,
	.loc 1 1339 0
	movq	-8(%rbp), %rax	# p, tmp196
	movl	-28(%rbp), %edx	# class, tmp198
	movslq	%edx, %rdx	# tmp198, tmp197
	movl	(%rax,%rdx,4), %eax	# p_63->cost, D.15089
	cmpl	-40(%rbp), %eax	# best_cost, D.15089
	jge	.L375	#,
	.loc 1 1341 0
	movq	-8(%rbp), %rax	# p, tmp199
	movl	-28(%rbp), %edx	# class, tmp201
	movslq	%edx, %rdx	# tmp201, tmp200
	movl	(%rax,%rdx,4), %eax	# p_63->cost, tmp202
	movl	%eax, -40(%rbp)	# tmp202, best_cost
	.loc 1 1342 0
	movl	-28(%rbp), %eax	# class, tmp203
	movl	%eax, -36(%rbp)	# tmp203, best
	jmp	.L374	#
.L375:
	.loc 1 1344 0
	movq	-8(%rbp), %rax	# p, tmp204
	movl	-28(%rbp), %edx	# class, tmp206
	movslq	%edx, %rdx	# tmp206, tmp205
	movl	(%rax,%rdx,4), %eax	# p_63->cost, D.15089
	cmpl	-40(%rbp), %eax	# best_cost, D.15089
	jne	.L374	#,
	.loc 1 1345 0
	movl	-36(%rbp), %eax	# best, best.216
	movl	-28(%rbp), %edx	# class, tmp208
	movslq	%edx, %rcx	# tmp208, tmp207
	movslq	%eax, %rdx	# best.216, tmp209
	movq	%rdx, %rax	# tmp209, tmp210
	salq	$2, %rax	#, tmp210
	addq	%rdx, %rax	# tmp209, tmp210
	leaq	0(,%rax,4), %rdx	#, tmp211
	addq	%rdx, %rax	# tmp211, tmp210
	addq	%rcx, %rax	# tmp207, tmp212
	movl	reg_class_subunion(,%rax,4), %eax	# reg_class_subunion, tmp213
	movl	%eax, -36(%rbp)	# tmp213, best
.L374:
	.loc 1 1325 0
	subl	$1, -28(%rbp)	#, class
.L373:
	.loc 1 1325 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, class
	jg	.L376	#,
	.loc 1 1355 0 is_stmt 1
	cmpl	$1, -48(%rbp)	#, pass
	je	.L377	#,
	.loc 1 1355 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, dump
	jne	.L377	#,
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.217
	testl	%eax, %eax	# flag_expensive_optimizations.217
	jne	.L378	#,
.L377:
	.loc 1 1356 0 is_stmt 1
	movl	$0, -28(%rbp)	#, class
	jmp	.L379	#
.L381:
	.loc 1 1357 0
	movq	-8(%rbp), %rax	# p, tmp214
	movl	-28(%rbp), %edx	# class, tmp216
	movslq	%edx, %rdx	# tmp216, tmp215
	movl	(%rax,%rdx,4), %edx	# p_63->cost, D.15089
	movq	-8(%rbp), %rax	# p, tmp217
	movl	100(%rax), %eax	# p_63->mem_cost, D.15089
	cmpl	%eax, %edx	# D.15089, D.15089
	jge	.L380	#,
	.loc 1 1358 0
	movl	-32(%rbp), %eax	# alt, alt.218
	movl	-28(%rbp), %edx	# class, tmp219
	movslq	%edx, %rcx	# tmp219, tmp218
	movslq	%eax, %rdx	# alt.218, tmp220
	movq	%rdx, %rax	# tmp220, tmp221
	salq	$2, %rax	#, tmp221
	addq	%rdx, %rax	# tmp220, tmp221
	leaq	0(,%rax,4), %rdx	#, tmp222
	addq	%rdx, %rax	# tmp222, tmp221
	addq	%rcx, %rax	# tmp218, tmp223
	movl	reg_class_subunion(,%rax,4), %eax	# reg_class_subunion, D.15098
	cltq
	movl	reg_class_size(,%rax,4), %edx	# reg_class_size, D.15096
	.loc 1 1359 0
	movl	-32(%rbp), %eax	# alt, alt.219
	cltq
	movl	reg_class_size(,%rax,4), %eax	# reg_class_size, D.15096
	.loc 1 1358 0
	cmpl	%eax, %edx	# D.15096, D.15096
	jbe	.L380	#,
	.loc 1 1368 0
	movl	-32(%rbp), %eax	# alt, alt.220
	movl	-28(%rbp), %edx	# class, tmp227
	movslq	%edx, %rcx	# tmp227, tmp226
	movslq	%eax, %rdx	# alt.220, tmp228
	movq	%rdx, %rax	# tmp228, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# tmp228, tmp229
	leaq	0(,%rax,4), %rdx	#, tmp230
	addq	%rdx, %rax	# tmp230, tmp229
	addq	%rcx, %rax	# tmp226, tmp231
	movl	reg_class_subunion(,%rax,4), %eax	# reg_class_subunion, tmp232
	movl	%eax, -32(%rbp)	# tmp232, alt
.L380:
	.loc 1 1356 0
	addl	$1, -28(%rbp)	#, class
.L379:
	.loc 1 1356 0 is_stmt 0 discriminator 1
	cmpl	$24, -28(%rbp)	#, class
	jle	.L381	#,
.L378:
	.loc 1 1371 0 is_stmt 1
	movl	-32(%rbp), %eax	# alt, tmp233
	cmpl	-36(%rbp), %eax	# best, tmp233
	jne	.L382	#,
	.loc 1 1372 0
	movl	$0, -32(%rbp)	#, alt
.L382:
	.loc 1 1374 0
	cmpq	$0, -88(%rbp)	#, dump
	je	.L383	#,
	.loc 1 1375 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.221
	movl	-52(%rbp), %edx	# i, tmp234
	movslq	%edx, %rdx	# tmp234, D.15087
	addq	%rdx, %rdx	# D.15087
	addq	%rdx, %rax	# D.15087, D.15099
	movzbl	(%rax), %eax	# _103->prefclass, D.15097
	movsbl	%al, %edx	# D.15097, D.15089
	movl	-36(%rbp), %eax	# best, best.222
	cmpl	%eax, %edx	# best.222, D.15089
	jne	.L384	#,
	.loc 1 1376 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.223
	movl	-52(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, D.15087
	addq	%rdx, %rdx	# D.15087
	addq	%rdx, %rax	# D.15087, D.15099
	movzbl	1(%rax), %eax	# _110->altclass, D.15097
	movsbl	%al, %edx	# D.15097, D.15089
	movl	-32(%rbp), %eax	# alt, alt.224
	cmpl	%eax, %edx	# alt.224, D.15089
	je	.L383	#,
.L384:
.LBB22:
	.loc 1 1379 0
	movl	-52(%rbp), %edx	# i, tmp236
	movq	-88(%rbp), %rax	# dump, tmp237
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp237,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1380 0
	cmpl	$24, -32(%rbp)	#, alt
	je	.L385	#,
	.loc 1 1380 0 is_stmt 0 discriminator 1
	cmpl	$24, -36(%rbp)	#, best
	jne	.L386	#,
.L385:
	.loc 1 1381 0 is_stmt 1
	movl	-36(%rbp), %eax	# best, best.225
	cltq
	movq	reg_class_names.11777(,%rax,8), %rdx	# reg_class_names, D.15100
	movq	-88(%rbp), %rax	# dump, tmp239
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp239,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L383	#
.L386:
	.loc 1 1382 0
	cmpl	$0, -32(%rbp)	#, alt
	jne	.L387	#,
	.loc 1 1383 0
	movl	-36(%rbp), %eax	# best, best.226
	cltq
	movq	reg_class_names.11777(,%rax,8), %rdx	# reg_class_names, D.15100
	movq	-88(%rbp), %rax	# dump, tmp241
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp241,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L383	#
.L387:
	.loc 1 1387 0
	movl	-32(%rbp), %eax	# alt, alt.227
	.loc 1 1385 0
	cltq
	movq	reg_class_names.11777(,%rax,8), %rcx	# reg_class_names, D.15100
	.loc 1 1386 0
	movl	-36(%rbp), %eax	# best, best.228
	.loc 1 1385 0
	cltq
	movq	reg_class_names.11777(,%rax,8), %rdx	# reg_class_names, D.15100
	movq	-88(%rbp), %rax	# dump, tmp244
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp244,
	movl	$0, %eax	#,
	call	fprintf	#
.L383:
.LBE22:
	.loc 1 1391 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.229
	movl	-52(%rbp), %edx	# i, tmp245
	movslq	%edx, %rdx	# tmp245, D.15087
	addq	%rdx, %rdx	# D.15087
	addq	%rax, %rdx	# reg_pref.229, D.15099
	movl	-36(%rbp), %eax	# best, tmp246
	movb	%al, (%rdx)	# D.15097, _125->prefclass
	.loc 1 1392 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.230
	movl	-52(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, D.15087
	addq	%rdx, %rdx	# D.15087
	addq	%rax, %rdx	# reg_pref.230, D.15099
	movl	-32(%rbp), %eax	# alt, tmp248
	movb	%al, 1(%rdx)	# D.15097, _130->altclass
.L372:
.LBE21:
	.loc 1 1311 0
	addl	$1, -52(%rbp)	#, i
.L370:
	.loc 1 1311 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp249
	cmpl	-76(%rbp), %eax	# nregs, tmp249
	jl	.L388	#,
.LBE18:
	.loc 1 1257 0 is_stmt 1
	addl	$1, -48(%rbp)	#, pass
.L352:
	.loc 1 1257 0 is_stmt 0 discriminator 1
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.231
	cmpl	%eax, -48(%rbp)	# flag_expensive_optimizations.231, pass
	jle	.L389	#,
	.loc 1 1402 0 is_stmt 1
	movq	costs(%rip), %rax	# costs, costs.232
	movq	%rax, %rdi	# costs.232,
	call	free	#
	.loc 1 1403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	regclass, .-regclass
	.type	record_reg_classes, @function
record_reg_classes:
.LFB17:
	.loc 1 1440 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$3560, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -3524(%rbp)	# n_alts, n_alts
	movl	%esi, -3528(%rbp)	# n_ops, n_ops
	movq	%rdx, -3536(%rbp)	# ops, ops
	movq	%rcx, -3544(%rbp)	# modes, modes
	movq	%r8, -3552(%rbp)	# constraints, constraints
	movq	%r9, -3560(%rbp)	# insn, insn
	.loc 1 1448 0
	movl	$0, -3508(%rbp)	#, alt
	jmp	.L391	#
.L617:
.LBB23:
	.loc 1 1451 0
	movl	$0, -3500(%rbp)	#, alt_fail
	.loc 1 1452 0
	movl	$0, -3496(%rbp)	#, alt_cost
	.loc 1 1457 0
	movl	$0, -3504(%rbp)	#, i
	jmp	.L392	#
.L607:
.LBB24:
	.loc 1 1459 0
	movl	-3504(%rbp), %eax	# i, tmp572
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3552(%rbp), %rax	# constraints, tmp573
	addq	%rdx, %rax	# D.15106, D.15107
	movq	(%rax), %rax	# *_153, tmp574
	movq	%rax, -3448(%rbp)	# tmp574, p
	.loc 1 1460 0
	movl	-3504(%rbp), %eax	# i, tmp575
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp576
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_158, tmp577
	movq	%rax, -3440(%rbp)	# tmp577, op
	.loc 1 1461 0
	movl	-3504(%rbp), %eax	# i, tmp578
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15106
	movq	-3544(%rbp), %rax	# modes, tmp579
	addq	%rdx, %rax	# D.15106, D.15109
	movl	(%rax), %eax	# *_163, tmp580
	movl	%eax, -3472(%rbp)	# tmp580, mode
	.loc 1 1462 0
	movl	$0, -3488(%rbp)	#, allows_addr
	.loc 1 1463 0
	movl	$0, -3484(%rbp)	#, win
	.loc 1 1467 0
	movl	-3504(%rbp), %eax	# i, tmp582
	cltq
	movl	$0, -3392(%rbp,%rax,4)	#, classes
	.loc 1 1468 0
	movl	-3504(%rbp), %eax	# i, tmp584
	cltq
	movl	$0, -3264(%rbp,%rax,4)	#, allows_mem
	.loc 1 1473 0
	movq	-3448(%rbp), %rax	# p, tmp585
	movzbl	(%rax), %eax	# *p_154, D.15110
	testb	%al, %al	# D.15110
	jne	.L393	#,
	.loc 1 1475 0
	movq	-3440(%rbp), %rax	# op, tmp586
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L394	#,
	.loc 1 1475 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp587
	movl	8(%rax), %eax	# op_159->fld[0].rtuint, D.15112
	cmpl	$52, %eax	#, D.15112
	jbe	.L394	#,
	.loc 1 1476 0 is_stmt 1
	leaq	-3136(%rbp), %rcx	#, tmp588
	movl	-3504(%rbp), %eax	# i, tmp590
	movslq	%eax, %rdx	# tmp590, tmp589
	movq	%rdx, %rax	# tmp589, tmp591
	addq	%rax, %rax	# tmp591
	addq	%rdx, %rax	# tmp589, tmp591
	salq	$2, %rax	#, tmp591
	addq	%rdx, %rax	# tmp589, tmp591
	salq	$3, %rax	#, tmp592
	addq	%rcx, %rax	# tmp588, D.15113
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15113,
	call	memset	#
	.loc 1 1478 0
	jmp	.L395	#
.L394:
	jmp	.L395	#
.L393:
	.loc 1 1486 0
	jmp	.L396	#
.L397:
	.loc 1 1487 0
	addq	$1, -3448(%rbp)	#, p
.L396:
	.loc 1 1486 0 discriminator 1
	movq	-3448(%rbp), %rax	# p, tmp593
	movzbl	(%rax), %eax	# *p_25, D.15110
	cmpb	$37, %al	#, D.15110
	je	.L397	#,
	.loc 1 1486 0 is_stmt 0 discriminator 2
	movq	-3448(%rbp), %rax	# p, tmp594
	movzbl	(%rax), %eax	# *p_25, D.15110
	cmpb	$61, %al	#, D.15110
	je	.L397	#,
	.loc 1 1486 0 discriminator 1
	movq	-3448(%rbp), %rax	# p, tmp595
	movzbl	(%rax), %eax	# *p_25, D.15110
	cmpb	$43, %al	#, D.15110
	je	.L397	#,
	movq	-3448(%rbp), %rax	# p, tmp596
	movzbl	(%rax), %eax	# *p_25, D.15110
	cmpb	$38, %al	#, D.15110
	je	.L397	#,
	.loc 1 1489 0 is_stmt 1
	movq	-3448(%rbp), %rax	# p, tmp597
	movzbl	(%rax), %eax	# *p_25, D.15110
	cmpb	$47, %al	#, D.15110
	jle	.L398	#,
	.loc 1 1489 0 is_stmt 0 discriminator 1
	movq	-3448(%rbp), %rax	# p, tmp598
	movzbl	(%rax), %eax	# *p_25, D.15110
	movsbl	%al, %eax	# D.15110, D.15114
	movl	-3504(%rbp), %edx	# i, tmp599
	addl	$48, %edx	#, D.15114
	cmpl	%edx, %eax	# D.15114, D.15114
	jg	.L398	#,
	movq	-3448(%rbp), %rax	# p, tmp600
	addq	$1, %rax	#, D.15115
	movzbl	(%rax), %eax	# *_179, D.15110
	cmpb	$44, %al	#, D.15110
	je	.L399	#,
	movq	-3448(%rbp), %rax	# p, tmp601
	addq	$1, %rax	#, D.15115
	movzbl	(%rax), %eax	# *_181, D.15110
	testb	%al, %al	# D.15110
	jne	.L398	#,
.L399:
	.loc 1 1494 0 is_stmt 1
	movq	-3448(%rbp), %rax	# p, tmp602
	movzbl	(%rax), %eax	# *p_25, D.15110
	movsbl	%al, %eax	# D.15110, D.15114
	subl	$48, %eax	#, tmp603
	movl	%eax, -3468(%rbp)	# tmp603, j
	.loc 1 1495 0
	movl	-3468(%rbp), %eax	# j, tmp605
	cltq
	movl	-3392(%rbp,%rax,4), %edx	# classes, D.15116
	movl	-3504(%rbp), %eax	# i, tmp607
	cltq
	movl	%edx, -3392(%rbp,%rax,4)	# D.15116, classes
	.loc 1 1496 0
	movl	-3468(%rbp), %eax	# j, tmp609
	cltq
	movl	-3264(%rbp,%rax,4), %edx	# allows_mem, D.15114
	movl	-3504(%rbp), %eax	# i, tmp611
	cltq
	movl	%edx, -3264(%rbp,%rax,4)	# D.15114, allows_mem
	.loc 1 1498 0
	movq	-3440(%rbp), %rax	# op, tmp612
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L400	#,
	.loc 1 1498 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp613
	movl	8(%rax), %eax	# op_159->fld[0].rtuint, D.15112
	cmpl	$52, %eax	#, D.15112
	ja	.L401	#,
.L400:
	.loc 1 1502 0 is_stmt 1
	movl	-3468(%rbp), %eax	# j, tmp614
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp615
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_268, D.15117
	movq	-3440(%rbp), %rdx	# op, tmp616
	movq	%rdx, %rsi	# tmp616,
	movq	%rax, %rdi	# D.15117,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15114
	je	.L402	#,
	.loc 1 1503 0
	movl	$1, -3484(%rbp)	#, win
	jmp	.L403	#
.L402:
	.loc 1 1509 0
	movl	-3468(%rbp), %eax	# j, tmp618
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	testl	%eax, %eax	# D.15116
	je	.L403	#,
	.loc 1 1510 0
	movl	-3468(%rbp), %eax	# j, tmp620
	cltq
	movl	-3392(%rbp,%rax,4), %edx	# classes, D.15116
	movl	-3472(%rbp), %esi	# mode, tmp621
	movq	-3440(%rbp), %rax	# op, tmp622
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp622,
	call	copy_cost	#
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1502 0
	jmp	.L398	#
.L403:
	jmp	.L398	#
.L401:
	.loc 1 1512 0
	movl	-3468(%rbp), %eax	# j, tmp623
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp624
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_192, D.15117
	movzwl	(%rax), %eax	# _193->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L404	#,
	.loc 1 1513 0
	movl	-3468(%rbp), %eax	# j, tmp625
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp626
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_197, D.15117
	movl	8(%rax), %eax	# _198->fld[0].rtuint, D.15112
	cmpl	$52, %eax	#, D.15112
	ja	.L405	#,
.L404:
	.loc 1 1520 0
	movl	-3468(%rbp), %eax	# j, tmp628
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	testl	%eax, %eax	# D.15116
	jne	.L406	#,
	.loc 1 1521 0
	movl	$1, -3500(%rbp)	#, alt_fail
	.loc 1 1520 0
	jmp	.L398	#
.L406:
	.loc 1 1528 0
	movl	-3468(%rbp), %eax	# j, tmp630
	cltq
	movl	-3392(%rbp,%rax,4), %edx	# classes, D.15116
	movl	-3468(%rbp), %eax	# j, tmp631
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp632
	addq	%rcx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_262, D.15117
	movl	-3472(%rbp), %esi	# mode, tmp633
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.15117,
	call	copy_cost	#
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
	.loc 1 1520 0
	jmp	.L398	#
.L405:
.LBB25:
	.loc 1 1537 0
	leaq	-3136(%rbp), %rcx	#, tmp634
	movl	-3504(%rbp), %eax	# i, tmp636
	movslq	%eax, %rdx	# tmp636, tmp635
	movq	%rdx, %rax	# tmp635, tmp637
	addq	%rax, %rax	# tmp637
	addq	%rdx, %rax	# tmp635, tmp637
	salq	$2, %rax	#, tmp637
	addq	%rdx, %rax	# tmp635, tmp637
	salq	$3, %rax	#, tmp638
	addq	%rcx, %rax	# tmp634, tmp639
	movq	%rax, -3432(%rbp)	# tmp639, pp
	.loc 1 1539 0
	movl	$0, -3492(%rbp)	#, class
	jmp	.L408	#
.L413:
	.loc 1 1541 0
	movl	-3504(%rbp), %eax	# i, tmp641
	cltq
	addq	$208, %rax	#, tmp642
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1543 0
	cmpl	$1, %eax	#, D.15118
	je	.L409	#,
	.loc 1 1542 0
	movl	-3504(%rbp), %eax	# i, tmp644
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	.loc 1 1543 0
	movslq	%eax, %rcx	# D.15114, tmp645
	movl	-3472(%rbp), %eax	# mode, tmp646
	movl	-3492(%rbp), %edx	# class, tmp648
	movslq	%edx, %rdx	# tmp648, tmp647
	imulq	$625, %rax, %rsi	#, tmp646, tmp649
	movq	%rdx, %rax	# tmp647, tmp650
	salq	$2, %rax	#, tmp650
	addq	%rdx, %rax	# tmp647, tmp650
	leaq	0(,%rax,4), %rdx	#, tmp651
	addq	%rdx, %rax	# tmp651, tmp650
	addq	%rsi, %rax	# tmp649, tmp652
	addq	%rcx, %rax	# tmp645, tmp653
	movl	may_move_in_cost(,%rax,4), %edx	# may_move_in_cost, iftmp.233
	jmp	.L410	#
.L409:
	.loc 1 1543 0 is_stmt 0 discriminator 1
	movl	$0, %edx	#, iftmp.233
.L410:
	.loc 1 1544 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp655
	cltq
	addq	$208, %rax	#, tmp656
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1546 0
	testl	%eax, %eax	# D.15118
	je	.L411	#,
	.loc 1 1545 0
	movl	-3504(%rbp), %eax	# i, tmp658
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	movl	%eax, %ecx	# D.15116, D.15114
	.loc 1 1546 0
	movl	-3492(%rbp), %eax	# class, tmp660
	movslq	%eax, %rsi	# tmp660, tmp659
	movl	-3472(%rbp), %eax	# mode, tmp661
	movslq	%ecx, %rcx	# D.15114, tmp662
	imulq	$625, %rax, %rdi	#, tmp661, tmp663
	movq	%rcx, %rax	# tmp662, tmp664
	salq	$2, %rax	#, tmp664
	addq	%rcx, %rax	# tmp662, tmp664
	leaq	0(,%rax,4), %rcx	#, tmp665
	addq	%rcx, %rax	# tmp665, tmp664
	addq	%rdi, %rax	# tmp663, tmp666
	addq	%rsi, %rax	# tmp659, tmp667
	movl	may_move_out_cost(,%rax,4), %eax	# may_move_out_cost, iftmp.234
	jmp	.L412	#
.L411:
	.loc 1 1546 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.234
.L412:
	.loc 1 1544 0 is_stmt 1
	leal	(%rdx,%rax), %ecx	#, D.15114
	.loc 1 1541 0
	movq	-3432(%rbp), %rax	# pp, tmp668
	movl	-3492(%rbp), %edx	# class, tmp670
	movslq	%edx, %rdx	# tmp670, tmp669
	movl	%ecx, (%rax,%rdx,4)	# D.15114, pp_200->cost
	.loc 1 1539 0
	addl	$1, -3492(%rbp)	#, class
.L408:
	.loc 1 1539 0 is_stmt 0 discriminator 1
	cmpl	$24, -3492(%rbp)	#, class
	jle	.L413	#,
	.loc 1 1553 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp672
	cltq
	addq	$208, %rax	#, tmp673
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1555 0
	testl	%eax, %eax	# D.15118
	je	.L414	#,
	.loc 1 1554 0
	movl	-3504(%rbp), %eax	# i, tmp675
	cltq
	movl	-3392(%rbp,%rax,4), %ecx	# classes, D.15116
	.loc 1 1555 0
	movl	-3472(%rbp), %eax	# mode, tmp676
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.15116,
	movl	%eax, %edi	# tmp676,
	call	ix86_memory_move_cost	#
	movl	%eax, %ebx	#, iftmp.235
	jmp	.L415	#
.L414:
	.loc 1 1555 0 is_stmt 0 discriminator 1
	movl	$0, %ebx	#, iftmp.235
.L415:
	.loc 1 1556 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp678
	cltq
	addq	$208, %rax	#, tmp679
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1558 0
	cmpl	$1, %eax	#, D.15118
	je	.L416	#,
	.loc 1 1557 0
	movl	-3504(%rbp), %eax	# i, tmp681
	cltq
	movl	-3392(%rbp,%rax,4), %ecx	# classes, D.15116
	.loc 1 1558 0
	movl	-3472(%rbp), %eax	# mode, tmp682
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.15116,
	movl	%eax, %edi	# tmp682,
	call	ix86_memory_move_cost	#
	jmp	.L417	#
.L416:
	.loc 1 1558 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.236
.L417:
	.loc 1 1556 0 is_stmt 1
	leal	(%rbx,%rax), %edx	#, D.15114
	.loc 1 1558 0
	movl	-3504(%rbp), %eax	# i, tmp684
	cltq
	movl	-3264(%rbp,%rax,4), %eax	# allows_mem, D.15114
	subl	%eax, %edx	# D.15114, D.15114
	.loc 1 1553 0
	movq	-3432(%rbp), %rax	# pp, tmp685
	movl	%edx, 100(%rax)	# D.15114, pp_200->mem_cost
	.loc 1 1565 0
	cmpq	$0, 24(%rbp)	#, reg_pref
	je	.L418	#,
	.loc 1 1568 0
	movq	-3440(%rbp), %rax	# op, tmp686
	movl	8(%rax), %eax	# op_159->fld[0].rtuint, D.15112
	movl	%eax, %eax	# D.15112, D.15106
	leaq	(%rax,%rax), %rdx	#, D.15106
	movq	24(%rbp), %rax	# reg_pref, tmp687
	addq	%rdx, %rax	# D.15106, D.15119
	movzbl	(%rax), %eax	# _229->prefclass, D.15110
	.loc 1 1569 0
	movzbl	%al, %edx	# D.15120, D.15114
	movl	-3504(%rbp), %eax	# i, tmp689
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	movslq	%eax, %rcx	# D.15114, tmp690
	movl	-3472(%rbp), %eax	# mode, tmp691
	movslq	%edx, %rdx	# D.15114, tmp692
	imulq	$625, %rax, %rsi	#, tmp691, tmp693
	movq	%rdx, %rax	# tmp692, tmp694
	salq	$2, %rax	#, tmp694
	addq	%rdx, %rax	# tmp692, tmp694
	leaq	0(,%rax,4), %rdx	#, tmp695
	addq	%rdx, %rax	# tmp695, tmp694
	addq	%rsi, %rax	# tmp693, tmp696
	addq	%rcx, %rax	# tmp690, tmp697
	movl	may_move_in_cost(,%rax,4), %eax	# may_move_in_cost, D.15114
	.loc 1 1567 0
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
.L418:
	.loc 1 1571 0
	movl	-3504(%rbp), %eax	# i, tmp698
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp699
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_239, D.15117
	movl	8(%rax), %edx	# _240->fld[0].rtuint, D.15112
	movl	-3468(%rbp), %eax	# j, tmp700
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp701
	addq	%rcx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_244, D.15117
	movl	8(%rax), %eax	# _245->fld[0].rtuint, D.15112
	cmpl	%eax, %edx	# D.15112, D.15112
	je	.L419	#,
	.loc 1 1572 0
	movq	-3440(%rbp), %rdx	# op, tmp702
	movq	-3560(%rbp), %rax	# insn, tmp703
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp703,
	call	find_reg_note	#
	testq	%rax, %rax	# D.15117
	jne	.L419	#,
	.loc 1 1573 0
	addl	$2, -3496(%rbp)	#, alt_cost
	.loc 1 1578 0
	jmp	.L704	#
.L419:
.L704:
	nop
.L421:
	.loc 1 1578 0 is_stmt 0 discriminator 1
	movq	-3448(%rbp), %rax	# p, tmp704
	movzbl	(%rax), %eax	# *p_26, D.15110
	testb	%al, %al	# D.15110
	je	.L420	#,
	.loc 1 1578 0 discriminator 2
	movq	-3448(%rbp), %rax	# p, p.237
	leaq	1(%rax), %rdx	#, tmp705
	movq	%rdx, -3448(%rbp)	# tmp705, p
	movzbl	(%rax), %eax	# *p.237_251, D.15110
	cmpb	$44, %al	#, D.15110
	jne	.L421	#,
.L420:
	.loc 1 1581 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp706
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3552(%rbp), %rax	# constraints, tmp707
	addq	%rax, %rdx	# tmp707, D.15107
	movq	-3448(%rbp), %rax	# p, tmp708
	movq	%rax, (%rdx)	# tmp708, *_256
	.loc 1 1582 0
	jmp	.L395	#
.L398:
.LBE25:
	.loc 1 1590 0
	jmp	.L422	#
.L586:
	.loc 1 1591 0
	movzbl	-3509(%rbp), %eax	# c, D.15114
	subl	$33, %eax	#, tmp709
	cmpl	$82, %eax	#, tmp709
	ja	.L423	#,
	movl	%eax, %eax	# tmp709, tmp710
	movq	.L425(,%rax,8), %rax	#, tmp711
	jmp	*%rax	# tmp711
	.section	.rodata
	.align 8
	.align 4
.L425:
	.quad	.L705
	.quad	.L423
	.quad	.L705
	.quad	.L423
	.quad	.L423
	.quad	.L705
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L426
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L705
	.quad	.L423
	.quad	.L423
	.quad	.L427
	.quad	.L423
	.quad	.L428
	.quad	.L429
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L430
	.quad	.L431
	.quad	.L432
	.quad	.L432
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L434
	.quad	.L423
	.quad	.L435
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L436
	.quad	.L423
	.quad	.L437
	.quad	.L423
	.quad	.L423
	.quad	.L423
	.quad	.L434
	.quad	.L438
	.quad	.L434
	.quad	.L439
	.quad	.L423
	.quad	.L440
	.quad	.L441
	.text
.L426:
	.loc 1 1595 0
	addq	$1, -3448(%rbp)	#, p
	.loc 1 1596 0
	jmp	.L422	#
.L429:
	.loc 1 1599 0
	addl	$2, -3496(%rbp)	#, alt_cost
	.loc 1 1603 0
	jmp	.L705	#
.L439:
	.loc 1 1606 0
	movl	$1, -3488(%rbp)	#, allows_addr
	.loc 1 1607 0
	movq	-3440(%rbp), %rax	# op, tmp712
	movzbl	2(%rax), %eax	# op_159->mode, D.15120
	movzbl	%al, %edx	# D.15120, D.15121
	movq	-3440(%rbp), %rax	# op, tmp713
	movl	%edx, %esi	# D.15121,
	movq	%rax, %rdi	# tmp713,
	call	address_operand	#
	movl	%eax, -3484(%rbp)	# tmp714, win
	.loc 1 1612 0
	movl	-3504(%rbp), %eax	# i, tmp716
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	.loc 1 1613 0
	movslq	%eax, %rdx	# D.15114, tmp717
	movq	%rdx, %rax	# tmp717, tmp718
	salq	$2, %rax	#, tmp718
	addq	%rdx, %rax	# tmp717, tmp718
	leaq	0(,%rax,4), %rdx	#, tmp719
	addq	%rdx, %rax	# tmp719, tmp718
	salq	$2, %rax	#, tmp720
	addq	$reg_class_subunion+48, %rax	#, tmp721
	movl	(%rax), %edx	# reg_class_subunion, D.15116
	.loc 1 1612 0
	movl	-3504(%rbp), %eax	# i, tmp723
	cltq
	movl	%edx, -3392(%rbp,%rax,4)	# D.15116, classes
	.loc 1 1614 0
	jmp	.L422	#
.L434:
	.loc 1 1619 0
	movl	-3504(%rbp), %eax	# i, tmp725
	cltq
	movl	$1, -3264(%rbp,%rax,4)	#, allows_mem
	.loc 1 1620 0
	movq	-3440(%rbp), %rax	# op, tmp726
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$66, %ax	#, D.15111
	jne	.L442	#,
	.loc 1 1621 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1622 0
	jmp	.L422	#
.L442:
	jmp	.L422	#
.L427:
	.loc 1 1625 0
	movq	-3440(%rbp), %rax	# op, tmp727
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$66, %ax	#, D.15111
	jne	.L443	#,
	.loc 1 1626 0
	movq	-3440(%rbp), %rax	# op, tmp728
	movq	8(%rax), %rax	# op_159->fld[0].rtx, D.15117
	movzwl	(%rax), %eax	# _295->code, D.15111
	cmpw	$96, %ax	#, D.15111
	je	.L444	#,
	.loc 1 1627 0
	movq	-3440(%rbp), %rax	# op, tmp729
	movq	8(%rax), %rax	# op_159->fld[0].rtx, D.15117
	movzwl	(%rax), %eax	# _297->code, D.15111
	cmpw	$98, %ax	#, D.15111
	jne	.L443	#,
.L444:
	.loc 1 1628 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1629 0
	jmp	.L422	#
.L443:
	jmp	.L422	#
.L428:
	.loc 1 1632 0
	movq	-3440(%rbp), %rax	# op, tmp730
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$66, %ax	#, D.15111
	jne	.L445	#,
	.loc 1 1633 0
	movq	-3440(%rbp), %rax	# op, tmp731
	movq	8(%rax), %rax	# op_159->fld[0].rtx, D.15117
	movzwl	(%rax), %eax	# _301->code, D.15111
	cmpw	$97, %ax	#, D.15111
	je	.L446	#,
	.loc 1 1634 0
	movq	-3440(%rbp), %rax	# op, tmp732
	movq	8(%rax), %rax	# op_159->fld[0].rtx, D.15117
	movzwl	(%rax), %eax	# _303->code, D.15111
	cmpw	$99, %ax	#, D.15111
	jne	.L445	#,
.L446:
	.loc 1 1635 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1636 0
	jmp	.L422	#
.L445:
	jmp	.L422	#
.L430:
	.loc 1 1647 0
	movq	-3440(%rbp), %rax	# op, tmp733
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	jne	.L447	#,
	.loc 1 1648 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1649 0
	jmp	.L422	#
.L447:
	jmp	.L422	#
.L431:
	.loc 1 1652 0
	movq	-3440(%rbp), %rax	# op, tmp734
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	jne	.L448	#,
	.loc 1 1653 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1654 0
	jmp	.L422	#
.L448:
	jmp	.L422	#
.L432:
	.loc 1 1658 0
	movq	-3440(%rbp), %rax	# op, tmp735
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	jne	.L449	#,
	.loc 1 1659 0
	cmpb	$71, -3509(%rbp)	#, c
	jne	.L450	#,
	.loc 1 1659 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp736
	movq	%rax, %rdi	# tmp736,
	call	standard_80387_constant_p	#
	testl	%eax, %eax	# D.15114
	setne	%al	#, iftmp.238
	jmp	.L451	#
.L450:
	.loc 1 1659 0 discriminator 2
	cmpb	$72, -3509(%rbp)	#, c
	jne	.L452	#,
	.loc 1 1659 0 discriminator 3
	movq	-3440(%rbp), %rax	# op, tmp737
	movq	%rax, %rdi	# tmp737,
	call	standard_sse_constant_p	#
	testl	%eax, %eax	# D.15114
	je	.L452	#,
	.loc 1 1659 0 discriminator 5
	movl	$1, %eax	#, iftmp.239
	jmp	.L453	#
.L452:
	.loc 1 1659 0 discriminator 4
	movl	$0, %eax	#, iftmp.239
.L453:
	.loc 1 1659 0 discriminator 6
	andl	$1, %eax	#, iftmp.238
.L451:
	.loc 1 1659 0 discriminator 7
	testb	%al, %al	# iftmp.238
	je	.L449	#,
	.loc 1 1660 0 is_stmt 1
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1661 0
	jmp	.L422	#
.L449:
	jmp	.L422	#
.L441:
	.loc 1 1664 0
	movq	-3440(%rbp), %rax	# op, tmp738
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$54, %ax	#, D.15111
	je	.L422	#,
	.loc 1 1665 0
	movq	-3440(%rbp), %rax	# op, tmp739
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	jne	.L437	#,
	.loc 1 1666 0
	movq	-3440(%rbp), %rax	# op, tmp740
	movzbl	2(%rax), %eax	# op_159->mode, D.15120
	testb	%al, %al	# D.15120
	je	.L422	#,
.L437:
	.loc 1 1669 0
	movq	-3440(%rbp), %rax	# op, tmp741
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$67, %ax	#, D.15111
	je	.L454	#,
	.loc 1 1669 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp742
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$68, %ax	#, D.15111
	je	.L454	#,
	movq	-3440(%rbp), %rax	# op, tmp743
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$54, %ax	#, D.15111
	je	.L454	#,
	movq	-3440(%rbp), %rax	# op, tmp744
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	je	.L454	#,
	movq	-3440(%rbp), %rax	# op, tmp745
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$58, %ax	#, D.15111
	je	.L454	#,
	movq	-3440(%rbp), %rax	# op, tmp746
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$134, %ax	#, D.15111
	je	.L454	#,
	movq	-3440(%rbp), %rax	# op, tmp747
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$56, %ax	#, D.15111
	je	.L454	#,
	movq	-3440(%rbp), %rax	# op, tmp748
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$140, %ax	#, D.15111
	jne	.L455	#,
.L454:
	.loc 1 1671 0 is_stmt 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.240
	testl	%eax, %eax	# flag_pic.240
	je	.L456	#,
	.loc 1 1671 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp749
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$68, %ax	#, D.15111
	je	.L457	#,
	movq	-3440(%rbp), %rax	# op, tmp750
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$67, %ax	#, D.15111
	je	.L457	#,
	movq	-3440(%rbp), %rax	# op, tmp751
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$58, %ax	#, D.15111
	jne	.L456	#,
	movq	-3440(%rbp), %rax	# op, tmp752
	movq	%rax, %rdi	# tmp752,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.15114
	je	.L456	#,
.L457:
	.loc 1 1671 0 discriminator 2
	movq	-3440(%rbp), %rax	# op, tmp753
	movq	%rax, %rdi	# tmp753,
	call	legitimate_pic_address_disp_p	#
	testl	%eax, %eax	# D.15114
	je	.L455	#,
.L456:
	.loc 1 1674 0 is_stmt 1
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1675 0
	jmp	.L422	#
.L455:
	jmp	.L422	#
.L438:
	.loc 1 1678 0
	movq	-3440(%rbp), %rax	# op, tmp754
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$54, %ax	#, D.15111
	je	.L458	#,
	.loc 1 1679 0
	movq	-3440(%rbp), %rax	# op, tmp755
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	jne	.L459	#,
	.loc 1 1680 0
	movq	-3440(%rbp), %rax	# op, tmp756
	movzbl	2(%rax), %eax	# op_159->mode, D.15120
	testb	%al, %al	# D.15120
	jne	.L459	#,
.L458:
	.loc 1 1681 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1682 0
	jmp	.L422	#
.L459:
	jmp	.L422	#
.L433:
	.loc 1 1692 0
	movq	-3440(%rbp), %rax	# op, tmp757
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$54, %ax	#, D.15111
	jne	.L460	#,
	.loc 1 1693 0
	cmpb	$73, -3509(%rbp)	#, c
	jne	.L461	#,
	.loc 1 1693 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp758
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	testq	%rax, %rax	# D.15122
	js	.L462	#,
	movq	-3440(%rbp), %rax	# op, tmp759
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$31, %rax	#, D.15122
	jg	.L462	#,
	.loc 1 1693 0 discriminator 3
	movl	$1, %eax	#, iftmp.242
	jmp	.L463	#
.L462:
	.loc 1 1693 0 discriminator 2
	movl	$0, %eax	#, iftmp.242
.L463:
	.loc 1 1693 0 discriminator 4
	andl	$1, %eax	#, iftmp.241
	jmp	.L464	#
.L461:
	.loc 1 1693 0 discriminator 2
	cmpb	$74, -3509(%rbp)	#, c
	jne	.L465	#,
	.loc 1 1693 0 discriminator 3
	movq	-3440(%rbp), %rax	# op, tmp760
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	testq	%rax, %rax	# D.15122
	js	.L466	#,
	.loc 1 1693 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp761
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$63, %rax	#, D.15122
	jg	.L466	#,
	.loc 1 1693 0 discriminator 3
	movl	$1, %eax	#, iftmp.244
	jmp	.L467	#
.L466:
	.loc 1 1693 0 discriminator 2
	movl	$0, %eax	#, iftmp.244
.L467:
	.loc 1 1693 0 discriminator 4
	andl	$1, %eax	#, iftmp.243
	jmp	.L464	#
.L465:
	cmpb	$75, -3509(%rbp)	#, c
	jne	.L469	#,
	.loc 1 1693 0 discriminator 5
	movq	-3440(%rbp), %rax	# op, tmp762
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$-128, %rax	#, D.15122
	jl	.L470	#,
	.loc 1 1693 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp763
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$127, %rax	#, D.15122
	jg	.L470	#,
	.loc 1 1693 0 discriminator 3
	movl	$1, %eax	#, iftmp.246
	jmp	.L471	#
.L470:
	.loc 1 1693 0 discriminator 2
	movl	$0, %eax	#, iftmp.246
.L471:
	.loc 1 1693 0 discriminator 4
	andl	$1, %eax	#, iftmp.245
	jmp	.L464	#
.L469:
	.loc 1 1693 0 discriminator 6
	cmpb	$76, -3509(%rbp)	#, c
	jne	.L473	#,
	.loc 1 1693 0 discriminator 7
	movq	-3440(%rbp), %rax	# op, tmp764
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$255, %rax	#, D.15122
	je	.L474	#,
	.loc 1 1693 0 discriminator 2
	movq	-3440(%rbp), %rax	# op, tmp765
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$65535, %rax	#, D.15122
	jne	.L475	#,
.L474:
	.loc 1 1693 0 discriminator 1
	movl	$1, %eax	#, iftmp.248
	jmp	.L476	#
.L475:
	.loc 1 1693 0 discriminator 3
	movl	$0, %eax	#, iftmp.248
.L476:
	.loc 1 1693 0 discriminator 4
	andl	$1, %eax	#, iftmp.247
	jmp	.L464	#
.L473:
	.loc 1 1693 0 discriminator 8
	cmpb	$77, -3509(%rbp)	#, c
	jne	.L478	#,
	.loc 1 1693 0 discriminator 9
	movq	-3440(%rbp), %rax	# op, tmp766
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	testq	%rax, %rax	# D.15122
	js	.L479	#,
	.loc 1 1693 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp767
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$3, %rax	#, D.15122
	jg	.L479	#,
	.loc 1 1693 0 discriminator 3
	movl	$1, %eax	#, iftmp.250
	jmp	.L480	#
.L479:
	.loc 1 1693 0 discriminator 2
	movl	$0, %eax	#, iftmp.250
.L480:
	.loc 1 1693 0 discriminator 4
	andl	$1, %eax	#, iftmp.249
	jmp	.L464	#
.L478:
	.loc 1 1693 0 discriminator 10
	cmpb	$78, -3509(%rbp)	#, c
	jne	.L482	#,
	.loc 1 1693 0 discriminator 11
	movq	-3440(%rbp), %rax	# op, tmp768
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	testq	%rax, %rax	# D.15122
	js	.L482	#,
	.loc 1 1693 0 discriminator 13
	movq	-3440(%rbp), %rax	# op, tmp769
	movq	8(%rax), %rax	# op_159->fld[0].rtwint, D.15122
	cmpq	$255, %rax	#, D.15122
	jg	.L482	#,
	.loc 1 1693 0 discriminator 1
	movl	$1, %eax	#, iftmp.251
	jmp	.L483	#
.L482:
	.loc 1 1693 0 discriminator 12
	movl	$0, %eax	#, iftmp.251
.L483:
	.loc 1 1693 0 discriminator 14
	andl	$1, %eax	#, iftmp.249
.L464:
	.loc 1 1693 0 discriminator 19
	testb	%al, %al	# iftmp.241
	je	.L460	#,
	.loc 1 1694 0 is_stmt 1
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1695 0
	jmp	.L422	#
.L460:
	jmp	.L422	#
.L435:
	.loc 1 1698 0
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1699 0
	jmp	.L422	#
.L436:
	.loc 1 1702 0
	movq	-3440(%rbp), %rax	# op, tmp770
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$66, %ax	#, D.15111
	je	.L484	#,
	.loc 1 1703 0
	movq	-3440(%rbp), %rax	# op, tmp771
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$67, %ax	#, D.15111
	je	.L485	#,
	.loc 1 1703 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp772
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$68, %ax	#, D.15111
	je	.L485	#,
	movq	-3440(%rbp), %rax	# op, tmp773
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$54, %ax	#, D.15111
	je	.L485	#,
	movq	-3440(%rbp), %rax	# op, tmp774
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	je	.L485	#,
	movq	-3440(%rbp), %rax	# op, tmp775
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$58, %ax	#, D.15111
	je	.L485	#,
	movq	-3440(%rbp), %rax	# op, tmp776
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$134, %ax	#, D.15111
	je	.L485	#,
	movq	-3440(%rbp), %rax	# op, tmp777
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$56, %ax	#, D.15111
	je	.L485	#,
	movq	-3440(%rbp), %rax	# op, tmp778
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$140, %ax	#, D.15111
	jne	.L486	#,
.L485:
	.loc 1 1705 0 is_stmt 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.252
	testl	%eax, %eax	# flag_pic.252
	je	.L484	#,
	.loc 1 1705 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp779
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$68, %ax	#, D.15111
	je	.L487	#,
	movq	-3440(%rbp), %rax	# op, tmp780
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$67, %ax	#, D.15111
	je	.L487	#,
	movq	-3440(%rbp), %rax	# op, tmp781
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$58, %ax	#, D.15111
	jne	.L484	#,
	movq	-3440(%rbp), %rax	# op, tmp782
	movq	%rax, %rdi	# tmp782,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.15114
	je	.L484	#,
.L487:
	.loc 1 1705 0 discriminator 2
	movq	-3440(%rbp), %rax	# op, tmp783
	movq	%rax, %rdi	# tmp783,
	call	legitimate_pic_address_disp_p	#
	testl	%eax, %eax	# D.15114
	je	.L486	#,
.L484:
	.loc 1 1708 0 is_stmt 1
	movl	$1, -3484(%rbp)	#, win
.L486:
	.loc 1 1709 0
	movl	-3504(%rbp), %eax	# i, tmp785
	cltq
	movl	$1, -3264(%rbp,%rax,4)	#, allows_mem
.L440:
	.loc 1 1712 0
	movl	-3504(%rbp), %eax	# i, tmp787
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	movslq	%eax, %rdx	# D.15114, tmp788
	movq	%rdx, %rax	# tmp788, tmp789
	salq	$2, %rax	#, tmp789
	addq	%rdx, %rax	# tmp788, tmp789
	leaq	0(,%rax,4), %rdx	#, tmp790
	addq	%rdx, %rax	# tmp790, tmp789
	salq	$2, %rax	#, tmp791
	addq	$reg_class_subunion+48, %rax	#, tmp792
	movl	(%rax), %edx	# reg_class_subunion, D.15116
	movl	-3504(%rbp), %eax	# i, tmp794
	cltq
	movl	%edx, -3392(%rbp,%rax,4)	# D.15116, classes
	.loc 1 1713 0
	jmp	.L422	#
.L423:
	.loc 1 1716 0
	cmpb	$114, -3509(%rbp)	#, c
	je	.L488	#,
	.loc 1 1716 0 is_stmt 0 discriminator 1
	cmpb	$82, -3509(%rbp)	#, c
	je	.L489	#,
	.loc 1 1716 0 discriminator 3
	cmpb	$113, -3509(%rbp)	#, c
	je	.L490	#,
	.loc 1 1716 0 discriminator 5
	cmpb	$81, -3509(%rbp)	#, c
	je	.L491	#,
	.loc 1 1716 0 discriminator 7
	cmpb	$102, -3509(%rbp)	#, c
	jne	.L492	#,
	.loc 1 1716 0 discriminator 9
	movl	target_flags(%rip), %eax	# target_flags, target_flags.259
	andl	$1, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	jne	.L493	#,
	.loc 1 1716 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.260
	andl	$32, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L494	#,
.L493:
	.loc 1 1716 0 discriminator 1
	movl	$1, %eax	#, iftmp.258
	jmp	.L495	#
.L494:
	.loc 1 1716 0 discriminator 3
	movl	$0, %eax	#, iftmp.258
.L495:
	.loc 1 1716 0 discriminator 4
	andl	$1, %eax	#, iftmp.257
	jmp	.L527	#
.L492:
	.loc 1 1716 0 discriminator 10
	cmpb	$116, -3509(%rbp)	#, c
	jne	.L497	#,
	.loc 1 1716 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.263
	andl	$1, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	jne	.L498	#,
	.loc 1 1716 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.264
	andl	$32, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L499	#,
.L498:
	.loc 1 1716 0 discriminator 1
	movl	$1, %eax	#, iftmp.262
	jmp	.L500	#
.L499:
	.loc 1 1716 0 discriminator 3
	movl	$0, %eax	#, iftmp.262
.L500:
	.loc 1 1716 0 discriminator 4
	andl	$1, %eax	#, iftmp.261
	jmp	.L527	#
.L497:
	.loc 1 1716 0 discriminator 12
	cmpb	$117, -3509(%rbp)	#, c
	jne	.L502	#,
	.loc 1 1716 0 discriminator 13
	movl	target_flags(%rip), %eax	# target_flags, target_flags.267
	andl	$1, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	jne	.L503	#,
	.loc 1 1716 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.268
	andl	$32, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L504	#,
.L503:
	.loc 1 1716 0 discriminator 1
	movl	$1, %eax	#, iftmp.266
	jmp	.L505	#
.L504:
	.loc 1 1716 0 discriminator 3
	movl	$0, %eax	#, iftmp.266
.L505:
	.loc 1 1716 0 discriminator 4
	andl	$1, %eax	#, iftmp.265
	jmp	.L527	#
.L502:
	.loc 1 1716 0 discriminator 14
	cmpb	$97, -3509(%rbp)	#, c
	je	.L507	#,
	.loc 1 1716 0 discriminator 15
	cmpb	$98, -3509(%rbp)	#, c
	je	.L508	#,
	.loc 1 1716 0 discriminator 17
	cmpb	$99, -3509(%rbp)	#, c
	je	.L509	#,
	.loc 1 1716 0 discriminator 19
	cmpb	$100, -3509(%rbp)	#, c
	je	.L510	#,
	.loc 1 1716 0 discriminator 21
	cmpb	$120, -3509(%rbp)	#, c
	jne	.L511	#,
	.loc 1 1716 0 discriminator 23
	movl	target_flags(%rip), %eax	# target_flags, target_flags.274
	andl	$327680, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	setne	%al	#, iftmp.273
	jmp	.L527	#
.L511:
	.loc 1 1716 0 discriminator 24
	cmpb	$89, -3509(%rbp)	#, c
	jne	.L513	#,
	.loc 1 1716 0 discriminator 25
	movl	target_flags(%rip), %eax	# target_flags, target_flags.276
	andl	$262144, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	setne	%al	#, iftmp.275
	jmp	.L527	#
.L513:
	.loc 1 1716 0 discriminator 26
	cmpb	$121, -3509(%rbp)	#, c
	jne	.L515	#,
	.loc 1 1716 0 discriminator 27
	movl	target_flags(%rip), %eax	# target_flags, target_flags.278
	andl	$16384, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	setne	%al	#, iftmp.277
	jmp	.L527	#
.L515:
	.loc 1 1716 0 discriminator 28
	cmpb	$65, -3509(%rbp)	#, c
	je	.L517	#,
	.loc 1 1716 0 discriminator 30
	cmpb	$68, -3509(%rbp)	#, c
	je	.L517	#,
	.loc 1 1716 0 discriminator 31
	cmpb	$83, -3509(%rbp)	#, c
	jne	.L518	#,
.L517:
	.loc 1 1716 0 discriminator 29
	movl	$1, %eax	#, iftmp.279
	jmp	.L519	#
.L518:
	.loc 1 1716 0 discriminator 32
	movl	$0, %eax	#, iftmp.279
.L519:
	.loc 1 1716 0 discriminator 33
	andl	$1, %eax	#, iftmp.277
	jmp	.L527	#
.L510:
	.loc 1 1716 0 discriminator 22
	movl	$1, %eax	#, iftmp.272
	jmp	.L527	#
.L509:
	.loc 1 1716 0 discriminator 20
	movl	$1, %eax	#, iftmp.271
	jmp	.L527	#
.L508:
	.loc 1 1716 0 discriminator 18
	movl	$1, %eax	#, iftmp.270
	jmp	.L527	#
.L507:
	.loc 1 1716 0 discriminator 16
	movl	$1, %eax	#, iftmp.269
	jmp	.L527	#
.L491:
	.loc 1 1716 0 discriminator 8
	movl	$1, %eax	#, iftmp.256
	jmp	.L527	#
.L490:
	.loc 1 1716 0 discriminator 6
	movl	$1, %eax	#, iftmp.255
	jmp	.L527	#
.L489:
	.loc 1 1716 0 discriminator 4
	movl	$1, %eax	#, iftmp.254
	jmp	.L527	#
.L488:
	.loc 1 1716 0 discriminator 2
	movl	$1, %eax	#, iftmp.253
.L527:
	.loc 1 1716 0 discriminator 39
	testb	%al, %al	# iftmp.253
	je	.L528	#,
	.loc 1 1718 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp796
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	movl	%eax, %edx	# D.15116, D.15114
	.loc 1 1719 0
	cmpb	$114, -3509(%rbp)	#, c
	je	.L529	#,
	.loc 1 1719 0 is_stmt 0 discriminator 1
	cmpb	$82, -3509(%rbp)	#, c
	je	.L530	#,
	cmpb	$113, -3509(%rbp)	#, c
	jne	.L531	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.284
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L532	#,
	movl	$12, %eax	#, iftmp.283
	jmp	.L579	#
.L532:
	.loc 1 1719 0 discriminator 2
	movl	$8, %eax	#, iftmp.283
	jmp	.L579	#
.L531:
	cmpb	$81, -3509(%rbp)	#, c
	je	.L535	#,
	.loc 1 1719 0 discriminator 1
	cmpb	$102, -3509(%rbp)	#, c
	jne	.L536	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.288
	andl	$1, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	jne	.L537	#,
	.loc 1 1719 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.289
	andl	$32, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L538	#,
.L537:
	.loc 1 1719 0 discriminator 1
	movl	$15, %eax	#, iftmp.287
	jmp	.L539	#
.L538:
	movl	$0, %eax	#, iftmp.287
.L539:
	jmp	.L579	#
.L536:
	.loc 1 1719 0 discriminator 2
	cmpb	$116, -3509(%rbp)	#, c
	jne	.L541	#,
	.loc 1 1719 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.292
	andl	$1, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	jne	.L542	#,
	.loc 1 1719 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.293
	andl	$32, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L543	#,
.L542:
	.loc 1 1719 0 discriminator 1
	movl	$13, %eax	#, iftmp.291
	jmp	.L544	#
.L543:
	movl	$0, %eax	#, iftmp.291
.L544:
	jmp	.L579	#
.L541:
	.loc 1 1719 0 discriminator 2
	cmpb	$117, -3509(%rbp)	#, c
	jne	.L546	#,
	.loc 1 1719 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.296
	andl	$1, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	jne	.L547	#,
	.loc 1 1719 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.297
	andl	$32, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L548	#,
.L547:
	.loc 1 1719 0 discriminator 1
	movl	$14, %eax	#, iftmp.295
	jmp	.L549	#
.L548:
	movl	$0, %eax	#, iftmp.295
.L549:
	jmp	.L579	#
.L546:
	.loc 1 1719 0 discriminator 2
	cmpb	$97, -3509(%rbp)	#, c
	je	.L551	#,
	.loc 1 1719 0 discriminator 1
	cmpb	$98, -3509(%rbp)	#, c
	je	.L552	#,
	cmpb	$99, -3509(%rbp)	#, c
	je	.L553	#,
	cmpb	$100, -3509(%rbp)	#, c
	je	.L554	#,
	cmpb	$120, -3509(%rbp)	#, c
	jne	.L555	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.304
	andl	$327680, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L556	#,
	movl	$16, %eax	#, iftmp.303
	jmp	.L579	#
.L556:
	.loc 1 1719 0 discriminator 2
	movl	$0, %eax	#, iftmp.303
	jmp	.L579	#
.L555:
	cmpb	$89, -3509(%rbp)	#, c
	jne	.L559	#,
	.loc 1 1719 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.307
	andl	$262144, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L560	#,
	movl	$16, %eax	#, iftmp.306
	jmp	.L579	#
.L560:
	.loc 1 1719 0 discriminator 2
	movl	$0, %eax	#, iftmp.306
	jmp	.L579	#
.L559:
	cmpb	$121, -3509(%rbp)	#, c
	jne	.L563	#,
	.loc 1 1719 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.310
	andl	$16384, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L564	#,
	movl	$17, %eax	#, iftmp.309
	jmp	.L579	#
.L564:
	.loc 1 1719 0 discriminator 2
	movl	$0, %eax	#, iftmp.309
	jmp	.L579	#
.L563:
	cmpb	$65, -3509(%rbp)	#, c
	je	.L567	#,
	.loc 1 1719 0 discriminator 1
	cmpb	$68, -3509(%rbp)	#, c
	je	.L568	#,
	cmpb	$83, -3509(%rbp)	#, c
	jne	.L569	#,
	movl	$5, %eax	#, iftmp.313
	jmp	.L579	#
.L569:
	.loc 1 1719 0 discriminator 2
	movl	$0, %eax	#, iftmp.313
	jmp	.L579	#
.L568:
	movl	$6, %eax	#, iftmp.312
	jmp	.L579	#
.L567:
	movl	$7, %eax	#, iftmp.311
	jmp	.L579	#
.L554:
	movl	$2, %eax	#, iftmp.301
	jmp	.L579	#
.L553:
	movl	$3, %eax	#, iftmp.300
	jmp	.L579	#
.L552:
	movl	$4, %eax	#, iftmp.299
	jmp	.L579	#
.L551:
	movl	$1, %eax	#, iftmp.298
	jmp	.L579	#
.L535:
	movl	$8, %eax	#, iftmp.285
	jmp	.L579	#
.L530:
	movl	$11, %eax	#, iftmp.281
	jmp	.L579	#
.L529:
	movl	$12, %eax	#, iftmp.280
.L579:
	.loc 1 1719 0 discriminator 22
	movslq	%eax, %rcx	# iftmp.280, tmp797
	movslq	%edx, %rdx	# D.15114, tmp798
	movq	%rdx, %rax	# tmp798, tmp799
	salq	$2, %rax	#, tmp799
	addq	%rdx, %rax	# tmp798, tmp799
	leaq	0(,%rax,4), %rdx	#, tmp800
	addq	%rdx, %rax	# tmp800, tmp799
	addq	%rcx, %rax	# tmp797, tmp801
	movl	reg_class_subunion(,%rax,4), %edx	# reg_class_subunion, D.15116
	.loc 1 1718 0 is_stmt 1 discriminator 22
	movl	-3504(%rbp), %eax	# i, tmp803
	cltq
	movl	%edx, -3392(%rbp,%rax,4)	# D.15116, classes
	jmp	.L580	#
.L528:
	.loc 1 1721 0
	cmpb	$101, -3509(%rbp)	#, c
	jne	.L581	#,
	.loc 1 1721 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp804
	movq	%rax, %rdi	# tmp804,
	call	x86_64_sign_extended_value	#
	testl	%eax, %eax	# D.15114
	setne	%al	#, iftmp.314
	jmp	.L582	#
.L581:
	.loc 1 1721 0 discriminator 2
	cmpb	$90, -3509(%rbp)	#, c
	jne	.L583	#,
	.loc 1 1721 0 discriminator 3
	movq	-3440(%rbp), %rax	# op, tmp805
	movq	%rax, %rdi	# tmp805,
	call	x86_64_zero_extended_value	#
	testl	%eax, %eax	# D.15114
	je	.L583	#,
	.loc 1 1721 0 discriminator 5
	movl	$1, %eax	#, iftmp.315
	jmp	.L584	#
.L583:
	.loc 1 1721 0 discriminator 4
	movl	$0, %eax	#, iftmp.315
.L584:
	.loc 1 1721 0 discriminator 6
	andl	$1, %eax	#, iftmp.314
.L582:
	.loc 1 1721 0 discriminator 7
	testb	%al, %al	# iftmp.314
	je	.L580	#,
	.loc 1 1722 0 is_stmt 1
	movl	$1, -3484(%rbp)	#, win
	.loc 1 1724 0
	jmp	.L422	#
.L580:
	jmp	.L422	#
.L705:
	.loc 1 1603 0
	nop
.L422:
	.loc 1 1590 0 discriminator 1
	movq	-3448(%rbp), %rax	# p, tmp806
	movzbl	(%rax), %eax	# *p_28, D.15110
	testb	%al, %al	# D.15110
	je	.L585	#,
	.loc 1 1590 0 is_stmt 0 discriminator 2
	movq	-3448(%rbp), %rax	# p, p.316
	leaq	1(%rax), %rdx	#, tmp807
	movq	%rdx, -3448(%rbp)	# tmp807, p
	movzbl	(%rax), %eax	# *p.316_278, D.15110
	movb	%al, -3509(%rbp)	# D.15110, c
	cmpb	$44, -3509(%rbp)	#, c
	jne	.L586	#,
.L585:
	.loc 1 1727 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp808
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3552(%rbp), %rax	# constraints, tmp809
	addq	%rax, %rdx	# tmp809, D.15107
	movq	-3448(%rbp), %rax	# p, tmp810
	movq	%rax, (%rdx)	# tmp810, *_530
	.loc 1 1736 0
	movq	-3440(%rbp), %rax	# op, tmp811
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L587	#,
	.loc 1 1736 0 is_stmt 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp812
	movl	8(%rax), %eax	# op_159->fld[0].rtuint, D.15112
	cmpl	$52, %eax	#, D.15112
	jbe	.L587	#,
	.loc 1 1738 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp814
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	testl	%eax, %eax	# D.15116
	jne	.L588	#,
	.loc 1 1746 0
	movl	$1, -3500(%rbp)	#, alt_fail
	jmp	.L589	#
.L588:
.LBB26:
	.loc 1 1750 0
	leaq	-3136(%rbp), %rcx	#, tmp815
	movl	-3504(%rbp), %eax	# i, tmp817
	movslq	%eax, %rdx	# tmp817, tmp816
	movq	%rdx, %rax	# tmp816, tmp818
	addq	%rax, %rax	# tmp818
	addq	%rdx, %rax	# tmp816, tmp818
	salq	$2, %rax	#, tmp818
	addq	%rdx, %rax	# tmp816, tmp818
	salq	$3, %rax	#, tmp819
	addq	%rcx, %rax	# tmp815, tmp820
	movq	%rax, -3424(%rbp)	# tmp820, pp
	.loc 1 1752 0
	movl	$0, -3492(%rbp)	#, class
	jmp	.L590	#
.L595:
	.loc 1 1754 0
	movl	-3504(%rbp), %eax	# i, tmp822
	cltq
	addq	$208, %rax	#, tmp823
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1756 0
	cmpl	$1, %eax	#, D.15118
	je	.L591	#,
	.loc 1 1755 0
	movl	-3504(%rbp), %eax	# i, tmp825
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	.loc 1 1756 0
	movslq	%eax, %rcx	# D.15114, tmp826
	movl	-3472(%rbp), %eax	# mode, tmp827
	movl	-3492(%rbp), %edx	# class, tmp829
	movslq	%edx, %rdx	# tmp829, tmp828
	imulq	$625, %rax, %rsi	#, tmp827, tmp830
	movq	%rdx, %rax	# tmp828, tmp831
	salq	$2, %rax	#, tmp831
	addq	%rdx, %rax	# tmp828, tmp831
	leaq	0(,%rax,4), %rdx	#, tmp832
	addq	%rdx, %rax	# tmp832, tmp831
	addq	%rsi, %rax	# tmp830, tmp833
	addq	%rcx, %rax	# tmp826, tmp834
	movl	may_move_in_cost(,%rax,4), %edx	# may_move_in_cost, iftmp.317
	jmp	.L592	#
.L591:
	.loc 1 1756 0 is_stmt 0 discriminator 1
	movl	$0, %edx	#, iftmp.317
.L592:
	.loc 1 1757 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp836
	cltq
	addq	$208, %rax	#, tmp837
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1759 0
	testl	%eax, %eax	# D.15118
	je	.L593	#,
	.loc 1 1758 0
	movl	-3504(%rbp), %eax	# i, tmp839
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	movl	%eax, %ecx	# D.15116, D.15114
	.loc 1 1759 0
	movl	-3492(%rbp), %eax	# class, tmp841
	movslq	%eax, %rsi	# tmp841, tmp840
	movl	-3472(%rbp), %eax	# mode, tmp842
	movslq	%ecx, %rcx	# D.15114, tmp843
	imulq	$625, %rax, %rdi	#, tmp842, tmp844
	movq	%rcx, %rax	# tmp843, tmp845
	salq	$2, %rax	#, tmp845
	addq	%rcx, %rax	# tmp843, tmp845
	leaq	0(,%rax,4), %rcx	#, tmp846
	addq	%rcx, %rax	# tmp846, tmp845
	addq	%rdi, %rax	# tmp844, tmp847
	addq	%rsi, %rax	# tmp840, tmp848
	movl	may_move_out_cost(,%rax,4), %eax	# may_move_out_cost, iftmp.318
	jmp	.L594	#
.L593:
	.loc 1 1759 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.318
.L594:
	.loc 1 1757 0 is_stmt 1
	leal	(%rdx,%rax), %ecx	#, D.15114
	.loc 1 1754 0
	movq	-3424(%rbp), %rax	# pp, tmp849
	movl	-3492(%rbp), %edx	# class, tmp851
	movslq	%edx, %rdx	# tmp851, tmp850
	movl	%ecx, (%rax,%rdx,4)	# D.15114, pp_535->cost
	.loc 1 1752 0
	addl	$1, -3492(%rbp)	#, class
.L590:
	.loc 1 1752 0 is_stmt 0 discriminator 1
	cmpl	$24, -3492(%rbp)	#, class
	jle	.L595	#,
	.loc 1 1766 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp853
	cltq
	addq	$208, %rax	#, tmp854
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1768 0
	testl	%eax, %eax	# D.15118
	je	.L596	#,
	.loc 1 1767 0
	movl	-3504(%rbp), %eax	# i, tmp856
	cltq
	movl	-3392(%rbp,%rax,4), %ecx	# classes, D.15116
	.loc 1 1768 0
	movl	-3472(%rbp), %eax	# mode, tmp857
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.15116,
	movl	%eax, %edi	# tmp857,
	call	ix86_memory_move_cost	#
	movl	%eax, %ebx	#, iftmp.319
	jmp	.L597	#
.L596:
	.loc 1 1768 0 is_stmt 0 discriminator 1
	movl	$0, %ebx	#, iftmp.319
.L597:
	.loc 1 1769 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp859
	cltq
	addq	$208, %rax	#, tmp860
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	.loc 1 1771 0
	cmpl	$1, %eax	#, D.15118
	je	.L598	#,
	.loc 1 1770 0
	movl	-3504(%rbp), %eax	# i, tmp862
	cltq
	movl	-3392(%rbp,%rax,4), %ecx	# classes, D.15116
	.loc 1 1771 0
	movl	-3472(%rbp), %eax	# mode, tmp863
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.15116,
	movl	%eax, %edi	# tmp863,
	call	ix86_memory_move_cost	#
	jmp	.L599	#
.L598:
	.loc 1 1771 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.320
.L599:
	.loc 1 1769 0 is_stmt 1
	leal	(%rbx,%rax), %edx	#, D.15114
	.loc 1 1771 0
	movl	-3504(%rbp), %eax	# i, tmp865
	cltq
	movl	-3264(%rbp,%rax,4), %eax	# allows_mem, D.15114
	subl	%eax, %edx	# D.15114, D.15114
	.loc 1 1766 0
	movq	-3424(%rbp), %rax	# pp, tmp866
	movl	%edx, 100(%rax)	# D.15114, pp_535->mem_cost
	.loc 1 1778 0
	cmpq	$0, 24(%rbp)	#, reg_pref
	je	.L589	#,
	.loc 1 1781 0
	movq	-3440(%rbp), %rax	# op, tmp867
	movl	8(%rax), %eax	# op_159->fld[0].rtuint, D.15112
	movl	%eax, %eax	# D.15112, D.15106
	leaq	(%rax,%rax), %rdx	#, D.15106
	movq	24(%rbp), %rax	# reg_pref, tmp868
	addq	%rdx, %rax	# D.15106, D.15119
	movzbl	(%rax), %eax	# _563->prefclass, D.15110
	.loc 1 1782 0
	movzbl	%al, %edx	# D.15120, D.15114
	movl	-3504(%rbp), %eax	# i, tmp870
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	movslq	%eax, %rcx	# D.15114, tmp871
	movl	-3472(%rbp), %eax	# mode, tmp872
	movslq	%edx, %rdx	# D.15114, tmp873
	imulq	$625, %rax, %rsi	#, tmp872, tmp874
	movq	%rdx, %rax	# tmp873, tmp875
	salq	$2, %rax	#, tmp875
	addq	%rdx, %rax	# tmp873, tmp875
	leaq	0(,%rax,4), %rdx	#, tmp876
	addq	%rdx, %rax	# tmp876, tmp875
	addq	%rsi, %rax	# tmp874, tmp877
	addq	%rcx, %rax	# tmp871, tmp878
	movl	may_move_in_cost(,%rax,4), %eax	# may_move_in_cost, D.15114
	.loc 1 1780 0
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
.LBE26:
	.loc 1 1738 0
	jmp	.L395	#
.L589:
	jmp	.L395	#
.L587:
	.loc 1 1790 0
	cmpl	$0, -3484(%rbp)	#, win
	jne	.L395	#,
	.loc 1 1791 0
	movq	-3440(%rbp), %rax	# op, tmp879
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L600	#,
	.loc 1 1792 0
	movq	-3440(%rbp), %rax	# op, tmp880
	movzbl	2(%rax), %eax	# op_159->mode, D.15120
	movzbl	%al, %edx	# D.15120, D.15121
	movl	-3504(%rbp), %eax	# i, tmp882
	cltq
	movl	-3392(%rbp,%rax,4), %esi	# classes, D.15116
	movq	-3440(%rbp), %rax	# op, tmp883
	movl	%edx, %ecx	# D.15121,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp883,
	call	reg_fits_class_p	#
	testl	%eax, %eax	# D.15114
	je	.L600	#,
	.loc 1 1792 0 is_stmt 0 discriminator 1
	jmp	.L395	#
.L600:
	.loc 1 1798 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp885
	cltq
	movl	-3392(%rbp,%rax,4), %eax	# classes, D.15116
	testl	%eax, %eax	# D.15116
	je	.L601	#,
	.loc 1 1800 0
	movl	-3504(%rbp), %eax	# i, tmp887
	cltq
	addq	$208, %rax	#, tmp888
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	cmpl	$1, %eax	#, D.15118
	je	.L602	#,
	.loc 1 1801 0
	movl	-3504(%rbp), %eax	# i, tmp890
	cltq
	movl	-3392(%rbp,%rax,4), %edx	# classes, D.15116
	movl	-3472(%rbp), %esi	# mode, tmp891
	movq	-3440(%rbp), %rax	# op, tmp892
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp892,
	call	copy_cost	#
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
.L602:
	.loc 1 1803 0
	movl	-3504(%rbp), %eax	# i, tmp894
	cltq
	addq	$208, %rax	#, tmp895
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	testl	%eax, %eax	# D.15118
	je	.L395	#,
	.loc 1 1804 0
	movl	-3504(%rbp), %eax	# i, tmp897
	cltq
	movl	-3392(%rbp,%rax,4), %edx	# classes, D.15116
	movl	-3472(%rbp), %esi	# mode, tmp898
	movq	-3440(%rbp), %rax	# op, tmp899
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp899,
	call	copy_cost	#
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
	jmp	.L395	#
.L601:
	.loc 1 1810 0
	movq	-3440(%rbp), %rax	# op, tmp900
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$67, %ax	#, D.15111
	je	.L604	#,
	.loc 1 1810 0 is_stmt 0 discriminator 2
	movq	-3440(%rbp), %rax	# op, tmp901
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$68, %ax	#, D.15111
	je	.L604	#,
	.loc 1 1810 0 discriminator 1
	movq	-3440(%rbp), %rax	# op, tmp902
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$54, %ax	#, D.15111
	je	.L604	#,
	movq	-3440(%rbp), %rax	# op, tmp903
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$55, %ax	#, D.15111
	je	.L604	#,
	movq	-3440(%rbp), %rax	# op, tmp904
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$58, %ax	#, D.15111
	je	.L604	#,
	movq	-3440(%rbp), %rax	# op, tmp905
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$134, %ax	#, D.15111
	je	.L604	#,
	movq	-3440(%rbp), %rax	# op, tmp906
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$56, %ax	#, D.15111
	je	.L604	#,
	movq	-3440(%rbp), %rax	# op, tmp907
	movzwl	(%rax), %eax	# op_159->code, D.15111
	cmpw	$140, %ax	#, D.15111
	jne	.L605	#,
.L604:
	cmpl	$0, -3488(%rbp)	#, allows_addr
	jne	.L606	#,
	movl	-3504(%rbp), %eax	# i, tmp909
	cltq
	movl	-3264(%rbp,%rax,4), %eax	# allows_mem, D.15114
	testl	%eax, %eax	# D.15114
	je	.L605	#,
.L606:
	.loc 1 1811 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp911
	cltq
	movl	-3392(%rbp,%rax,4), %ecx	# classes, D.15116
	movl	-3472(%rbp), %eax	# mode, tmp912
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.15116,
	movl	%eax, %edi	# tmp912,
	call	ix86_memory_move_cost	#
	addl	%eax, -3496(%rbp)	# D.15114, alt_cost
	jmp	.L395	#
.L605:
	.loc 1 1813 0
	movl	$1, -3500(%rbp)	#, alt_fail
.L395:
.LBE24:
	.loc 1 1457 0
	addl	$1, -3504(%rbp)	#, i
.L392:
	.loc 1 1457 0 is_stmt 0 discriminator 1
	movl	-3504(%rbp), %eax	# i, tmp913
	cmpl	-3528(%rbp), %eax	# n_ops, tmp913
	jl	.L607	#,
	.loc 1 1816 0 is_stmt 1
	cmpl	$0, -3500(%rbp)	#, alt_fail
	jne	.L609	#,
	.loc 1 1822 0
	movl	$0, -3504(%rbp)	#, i
	jmp	.L610	#
.L616:
	.loc 1 1823 0
	movl	-3504(%rbp), %eax	# i, tmp914
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp915
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_603, D.15117
	movzwl	(%rax), %eax	# _604->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L611	#,
	.loc 1 1824 0
	movl	-3504(%rbp), %eax	# i, tmp916
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp917
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_608, D.15117
	movl	8(%rax), %eax	# _609->fld[0].rtuint, D.15112
	cmpl	$52, %eax	#, D.15112
	jbe	.L611	#,
.LBB27:
	.loc 1 1826 0
	movl	-3504(%rbp), %eax	# i, tmp918
	movslq	%eax, %rdx	# tmp918, D.15106
	movq	%rdx, %rax	# D.15106, tmp919
	addq	%rax, %rax	# tmp919
	addq	%rdx, %rax	# D.15106, tmp919
	salq	$2, %rax	#, tmp919
	addq	%rdx, %rax	# D.15106, tmp919
	salq	$3, %rax	#, tmp920
	movq	%rax, %rdx	# tmp919, D.15106
	movq	16(%rbp), %rax	# op_costs, tmp924
	addq	%rdx, %rax	# D.15106, tmp923
	movq	%rax, -3416(%rbp)	# tmp923, pp
	leaq	-3136(%rbp), %rcx	#, tmp925
	movl	-3504(%rbp), %eax	# i, tmp927
	movslq	%eax, %rdx	# tmp927, tmp926
	movq	%rdx, %rax	# tmp926, tmp928
	addq	%rax, %rax	# tmp928
	addq	%rdx, %rax	# tmp926, tmp928
	salq	$2, %rax	#, tmp928
	addq	%rdx, %rax	# tmp926, tmp928
	salq	$3, %rax	#, tmp929
	addq	%rcx, %rax	# tmp925, tmp930
	movq	%rax, -3408(%rbp)	# tmp930, qq
	.loc 1 1827 0
	movl	-3504(%rbp), %eax	# i, tmp932
	cltq
	addq	$208, %rax	#, tmp933
	movl	recog_data+8(,%rax,4), %eax	# recog_data.operand_type, D.15118
	cmpl	$2, %eax	#, D.15118
	jne	.L612	#,
	.loc 1 1827 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.321
	jmp	.L613	#
.L612:
	.loc 1 1827 0 discriminator 2
	movl	$1, %eax	#, iftmp.321
.L613:
	.loc 1 1827 0 discriminator 3
	movl	%eax, -3464(%rbp)	# iftmp.321, scale
	.loc 1 1829 0 is_stmt 1 discriminator 3
	movq	-3408(%rbp), %rax	# qq, tmp934
	movl	100(%rax), %edx	# qq_615->mem_cost, D.15114
	movl	-3496(%rbp), %eax	# alt_cost, tmp935
	addl	%edx, %eax	# D.15114, D.15114
	imull	-3464(%rbp), %eax	# scale, D.15114
	movl	%eax, %edx	# D.15114, D.15114
	movq	-3416(%rbp), %rax	# pp, tmp936
	movl	100(%rax), %eax	# pp_614->mem_cost, D.15114
	cmpl	%eax, %edx	# D.15114, D.15114
	cmovg	%eax, %edx	# D.15114,, D.15114, D.15114
	movq	-3416(%rbp), %rax	# pp, tmp937
	movl	%edx, 100(%rax)	# D.15114, pp_614->mem_cost
	.loc 1 1832 0 discriminator 3
	movl	$0, -3492(%rbp)	#, class
	jmp	.L614	#
.L615:
	.loc 1 1833 0 discriminator 2
	movq	-3408(%rbp), %rax	# qq, tmp938
	movl	-3492(%rbp), %edx	# class, tmp940
	movslq	%edx, %rdx	# tmp940, tmp939
	movl	(%rax,%rdx,4), %edx	# qq_615->cost, D.15114
	movl	-3496(%rbp), %eax	# alt_cost, tmp941
	addl	%edx, %eax	# D.15114, D.15114
	imull	-3464(%rbp), %eax	# scale, D.15114
	movl	%eax, %edx	# D.15114, D.15114
	movq	-3416(%rbp), %rax	# pp, tmp942
	movl	-3492(%rbp), %ecx	# class, tmp944
	movslq	%ecx, %rcx	# tmp944, tmp943
	movl	(%rax,%rcx,4), %eax	# pp_614->cost, D.15114
	cmpl	%eax, %edx	# D.15114, D.15114
	cmovle	%edx, %eax	# D.15114,, D.15114
	movl	%eax, %ecx	# D.15114, D.15114
	movq	-3416(%rbp), %rax	# pp, tmp945
	movl	-3492(%rbp), %edx	# class, tmp947
	movslq	%edx, %rdx	# tmp947, tmp946
	movl	%ecx, (%rax,%rdx,4)	# D.15114, pp_614->cost
	.loc 1 1832 0 discriminator 2
	addl	$1, -3492(%rbp)	#, class
.L614:
	.loc 1 1832 0 is_stmt 0 discriminator 1
	cmpl	$24, -3492(%rbp)	#, class
	jle	.L615	#,
.L611:
.LBE27:
	.loc 1 1822 0 is_stmt 1
	addl	$1, -3504(%rbp)	#, i
.L610:
	.loc 1 1822 0 is_stmt 0 discriminator 1
	movl	-3504(%rbp), %eax	# i, tmp948
	cmpl	-3528(%rbp), %eax	# n_ops, tmp948
	jl	.L616	#,
.L609:
.LBE23:
	.loc 1 1448 0 is_stmt 1
	addl	$1, -3508(%rbp)	#, alt
.L391:
	.loc 1 1448 0 is_stmt 0 discriminator 1
	movl	-3508(%rbp), %eax	# alt, tmp949
	cmpl	-3524(%rbp), %eax	# n_alts, tmp949
	jl	.L617	#,
	.loc 1 1852 0 is_stmt 1
	movq	-3560(%rbp), %rax	# insn, tmp950
	movzwl	(%rax), %eax	# insn_247(D)->code, D.15111
	movzwl	%ax, %eax	# D.15111, D.15114
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15110
	cmpb	$105, %al	#, D.15110
	jne	.L618	#,
	.loc 1 1852 0 is_stmt 0 discriminator 1
	movq	-3560(%rbp), %rax	# insn, tmp952
	movq	32(%rax), %rax	# insn_247(D)->fld[3].rtx, D.15117
	movzwl	(%rax), %eax	# _637->code, D.15111
	cmpw	$47, %ax	#, D.15111
	jne	.L619	#,
	.loc 1 1852 0 discriminator 3
	movq	-3560(%rbp), %rax	# insn, tmp953
	movq	32(%rax), %rax	# insn_247(D)->fld[3].rtx, iftmp.323
	jmp	.L621	#
.L619:
	.loc 1 1852 0 discriminator 4
	movq	-3560(%rbp), %rax	# insn, tmp954
	movq	32(%rax), %rdx	# insn_247(D)->fld[3].rtx, D.15117
	movq	-3560(%rbp), %rax	# insn, tmp955
	movq	%rdx, %rsi	# D.15117,
	movq	%rax, %rdi	# tmp955,
	call	single_set_2	#
	jmp	.L621	#
.L618:
	.loc 1 1852 0 discriminator 2
	movl	$0, %eax	#, iftmp.322
.L621:
	.loc 1 1852 0 discriminator 5
	movq	%rax, -3400(%rbp)	# iftmp.322, set
	cmpq	$0, -3400(%rbp)	#, set
	je	.L390	#,
	.loc 1 1853 0 is_stmt 1
	movq	-3536(%rbp), %rax	# ops, tmp956
	movq	(%rax), %rdx	# *ops_157(D), D.15117
	movq	-3400(%rbp), %rax	# set, tmp957
	movq	8(%rax), %rax	# set_644->fld[0].rtx, D.15117
	cmpq	%rax, %rdx	# D.15117, D.15117
	jne	.L390	#,
	.loc 1 1853 0 is_stmt 0 discriminator 1
	movq	-3536(%rbp), %rax	# ops, tmp958
	addq	$8, %rax	#, D.15108
	movq	(%rax), %rdx	# *_647, D.15117
	movq	-3400(%rbp), %rax	# set, tmp959
	movq	16(%rax), %rax	# set_644->fld[1].rtx, D.15117
	cmpq	%rax, %rdx	# D.15117, D.15117
	jne	.L390	#,
	.loc 1 1854 0 is_stmt 1
	movq	-3536(%rbp), %rax	# ops, tmp960
	movq	(%rax), %rax	# *ops_157(D), D.15117
	movzwl	(%rax), %eax	# _650->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L390	#,
	.loc 1 1854 0 is_stmt 0 discriminator 1
	movq	-3536(%rbp), %rax	# ops, tmp961
	addq	$8, %rax	#, D.15108
	movq	(%rax), %rax	# *_652, D.15117
	movzwl	(%rax), %eax	# _653->code, D.15111
	cmpw	$61, %ax	#, D.15111
	jne	.L390	#,
	.loc 1 1855 0 is_stmt 1
	movq	-3536(%rbp), %rax	# ops, tmp962
	addq	$8, %rax	#, D.15108
	movq	(%rax), %rax	# *_655, D.15117
	movl	8(%rax), %edx	# _656->fld[0].rtuint, D.15112
	movq	-3560(%rbp), %rax	# insn, tmp963
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp963,
	call	find_regno_note	#
	testq	%rax, %rax	# D.15117
	je	.L390	#,
	.loc 1 1856 0
	movl	$0, -3504(%rbp)	#, i
	jmp	.L623	#
.L703:
	.loc 1 1857 0
	movl	-3504(%rbp), %eax	# i, tmp964
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15106
	movq	-3536(%rbp), %rax	# ops, tmp965
	addq	%rdx, %rax	# D.15106, D.15108
	movq	(%rax), %rax	# *_662, D.15117
	movl	8(%rax), %eax	# _663->fld[0].rtuint, D.15112
	cmpl	$52, %eax	#, D.15112
	jbe	.L624	#,
.LBB28:
	.loc 1 1859 0
	cmpl	$0, -3504(%rbp)	#, i
	jne	.L625	#,
	.loc 1 1859 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.324
	jmp	.L626	#
.L625:
	.loc 1 1859 0 discriminator 2
	movl	$0, %eax	#, iftmp.324
.L626:
	.loc 1 1859 0 discriminator 3
	movq	-3536(%rbp), %rdx	# ops, tmp966
	addq	%rdx, %rax	# tmp966, D.15108
	movq	(%rax), %rax	# *_667, D.15117
	movl	8(%rax), %eax	# _668->fld[0].rtuint, tmp967
	movl	%eax, -3460(%rbp)	# tmp967, regno
	.loc 1 1860 0 is_stmt 1 discriminator 3
	cmpl	$0, -3504(%rbp)	#, i
	jne	.L627	#,
	.loc 1 1860 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.325
	jmp	.L628	#
.L627:
	.loc 1 1860 0 discriminator 2
	movl	$0, %eax	#, iftmp.325
.L628:
	.loc 1 1860 0 discriminator 3
	movq	-3536(%rbp), %rdx	# ops, tmp968
	addq	%rdx, %rax	# tmp968, D.15108
	movq	(%rax), %rax	# *_672, D.15117
	movzbl	2(%rax), %eax	# _673->mode, D.15120
	movzbl	%al, %eax	# D.15120, tmp969
	movl	%eax, -3456(%rbp)	# tmp969, mode
	.loc 1 1864 0 is_stmt 1 discriminator 3
	cmpl	$52, -3460(%rbp)	#, regno
	jbe	.L629	#,
	.loc 1 1864 0 is_stmt 0 discriminator 1
	cmpq	$0, 24(%rbp)	#, reg_pref
	je	.L629	#,
.LBB29:
	.loc 1 1866 0 is_stmt 1
	movl	-3460(%rbp), %eax	# regno, D.15106
	leaq	(%rax,%rax), %rdx	#, D.15106
	movq	24(%rbp), %rax	# reg_pref, tmp970
	addq	%rdx, %rax	# D.15106, D.15119
	movzbl	(%rax), %eax	# _678->prefclass, D.15110
	movsbl	%al, %eax	# D.15110, tmp971
	movl	%eax, -3452(%rbp)	# tmp971, pref
	.loc 1 1868 0
	movl	-3452(%rbp), %eax	# pref, tmp972
	movzbl	%al, %eax	# D.15120, D.15114
	cltq
	movl	reg_class_size(,%rax,4), %ebx	# reg_class_size, D.15112
	.loc 1 1869 0
	movl	-3452(%rbp), %eax	# pref, tmp974
	movl	$12, %esi	#,
	movl	%eax, %edi	# tmp974,
	call	reg_classes_intersect_p	#
	testl	%eax, %eax	# D.15114
	jne	.L630	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movl	-3456(%rbp), %eax	# mode, mode.328
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$5, %eax	#, D.15123
	je	.L631	#,
	.loc 1 1869 0 discriminator 4
	movl	-3456(%rbp), %eax	# mode, mode.329
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$6, %eax	#, D.15123
	jne	.L632	#,
.L631:
	.loc 1 1869 0 discriminator 3
	movl	$2, %eax	#, iftmp.327
	jmp	.L633	#
.L632:
	.loc 1 1869 0 discriminator 1
	movl	$1, %eax	#, iftmp.327
.L633:
	jmp	.L634	#
.L630:
	.loc 1 1869 0 discriminator 2
	cmpl	$18, -3456(%rbp)	#, mode
	je	.L635	#,
	.loc 1 1869 0 discriminator 1
	movl	-3456(%rbp), %eax	# mode, iftmp.330
	jmp	.L636	#
.L635:
	.loc 1 1869 0 discriminator 2
	movl	$17, %eax	#, iftmp.330
.L636:
	.loc 1 1869 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15120
	movzbl	%al, %edx	# D.15120, D.15114
	movl	target_flags(%rip), %eax	# target_flags, target_flags.332
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L637	#,
	.loc 1 1869 0 discriminator 1
	movl	$8, %eax	#, iftmp.331
	jmp	.L638	#
.L637:
	.loc 1 1869 0 discriminator 2
	movl	$4, %eax	#, iftmp.331
.L638:
	.loc 1 1869 0 discriminator 3
	addl	%edx, %eax	# D.15114, D.15114
	subl	$1, %eax	#, D.15114
	movl	target_flags(%rip), %edx	# target_flags, target_flags.334
	andl	$33554432, %edx	#, D.15114
	testl	%edx, %edx	# D.15114
	je	.L639	#,
	.loc 1 1869 0 discriminator 1
	movl	$8, %edi	#, iftmp.333
	jmp	.L640	#
.L639:
	.loc 1 1869 0 discriminator 2
	movl	$4, %edi	#, iftmp.333
.L640:
	.loc 1 1869 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.333
.L634:
	.loc 1 1868 0 is_stmt 1
	cmpl	%eax, %ebx	# iftmp.326, D.15112
	jne	.L641	#,
	.loc 1 1870 0
	movl	-3452(%rbp), %edx	# pref, tmp980
	movl	-3452(%rbp), %ecx	# pref, tmp981
	movl	-3456(%rbp), %eax	# mode, tmp982
	movl	%ecx, %esi	# tmp981,
	movl	%eax, %edi	# tmp982,
	call	ix86_register_move_cost	#
	cmpl	$19, %eax	#, D.15114
	jg	.L641	#,
	.loc 1 1871 0
	movl	-3504(%rbp), %eax	# i, tmp983
	movslq	%eax, %rdx	# tmp983, D.15106
	movq	%rdx, %rax	# D.15106, tmp984
	addq	%rax, %rax	# tmp984
	addq	%rdx, %rax	# D.15106, tmp984
	salq	$2, %rax	#, tmp984
	addq	%rdx, %rax	# D.15106, tmp984
	salq	$3, %rax	#, tmp985
	movq	%rax, %rdx	# tmp984, D.15106
	movq	16(%rbp), %rax	# op_costs, tmp986
	addq	%rax, %rdx	# tmp986, D.15113
	movl	-3452(%rbp), %eax	# pref, tmp987
	movzbl	%al, %eax	# D.15120, D.15114
	cltq
	movl	$-1, (%rdx,%rax,4)	#, _711->cost
.LBE29:
	.loc 1 1865 0
	jmp	.L624	#
.L641:
	jmp	.L624	#
.L629:
	.loc 1 1873 0
	cmpl	$52, -3460(%rbp)	#, regno
	ja	.L624	#,
	.loc 1 1874 0
	movl	$0, -3480(%rbp)	#, class
	jmp	.L642	#
.L702:
	.loc 1 1875 0
	movl	-3480(%rbp), %eax	# class, tmp990
	cltq
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15106
	movl	-3460(%rbp), %eax	# regno, regno.335
	movl	%eax, %ecx	# regno.335, tmp1031
	shrq	%cl, %rdx	# tmp1031, D.15106
	movq	%rdx, %rax	# D.15106, D.15106
	andl	$1, %eax	#, D.15106
	testq	%rax, %rax	# D.15106
	je	.L643	#,
	.loc 1 1876 0
	movl	-3480(%rbp), %eax	# class, tmp992
	cltq
	movl	reg_class_size(,%rax,4), %ebx	# reg_class_size, D.15112
	movl	-3480(%rbp), %eax	# class, class.337
	movl	$12, %esi	#,
	movl	%eax, %edi	# class.337,
	call	reg_classes_intersect_p	#
	testl	%eax, %eax	# D.15114
	jne	.L644	#,
	.loc 1 1876 0 is_stmt 0 discriminator 1
	movl	-3456(%rbp), %eax	# mode, mode.339
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$5, %eax	#, D.15123
	je	.L645	#,
	.loc 1 1876 0 discriminator 4
	movl	-3456(%rbp), %eax	# mode, mode.340
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$6, %eax	#, D.15123
	jne	.L646	#,
.L645:
	.loc 1 1876 0 discriminator 3
	movl	$2, %eax	#, iftmp.338
	jmp	.L647	#
.L646:
	.loc 1 1876 0 discriminator 1
	movl	$1, %eax	#, iftmp.338
.L647:
	jmp	.L648	#
.L644:
	.loc 1 1876 0 discriminator 2
	cmpl	$18, -3456(%rbp)	#, mode
	je	.L649	#,
	.loc 1 1876 0 discriminator 1
	movl	-3456(%rbp), %eax	# mode, iftmp.341
	jmp	.L650	#
.L649:
	.loc 1 1876 0 discriminator 2
	movl	$17, %eax	#, iftmp.341
.L650:
	.loc 1 1876 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15120
	movzbl	%al, %edx	# D.15120, D.15114
	movl	target_flags(%rip), %eax	# target_flags, target_flags.343
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L651	#,
	.loc 1 1876 0 discriminator 1
	movl	$8, %eax	#, iftmp.342
	jmp	.L652	#
.L651:
	.loc 1 1876 0 discriminator 2
	movl	$4, %eax	#, iftmp.342
.L652:
	.loc 1 1876 0 discriminator 3
	addl	%edx, %eax	# D.15114, D.15114
	subl	$1, %eax	#, D.15114
	movl	target_flags(%rip), %edx	# target_flags, target_flags.345
	andl	$33554432, %edx	#, D.15114
	testl	%edx, %edx	# D.15114
	je	.L653	#,
	.loc 1 1876 0 discriminator 1
	movl	$8, %edi	#, iftmp.344
	jmp	.L654	#
.L653:
	.loc 1 1876 0 discriminator 2
	movl	$4, %edi	#, iftmp.344
.L654:
	.loc 1 1876 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.344
.L648:
	.loc 1 1876 0 discriminator 6
	cmpl	%eax, %ebx	# iftmp.336, D.15112
	jne	.L643	#,
	.loc 1 1878 0 is_stmt 1
	movl	-3480(%rbp), %eax	# class, tmp999
	cltq
	movl	reg_class_size(,%rax,4), %eax	# reg_class_size, D.15112
	cmpl	$1, %eax	#, D.15112
	jne	.L655	#,
	.loc 1 1879 0
	movl	-3504(%rbp), %eax	# i, tmp1000
	movslq	%eax, %rdx	# tmp1000, D.15106
	movq	%rdx, %rax	# D.15106, tmp1001
	addq	%rax, %rax	# tmp1001
	addq	%rdx, %rax	# D.15106, tmp1001
	salq	$2, %rax	#, tmp1001
	addq	%rdx, %rax	# D.15106, tmp1001
	salq	$3, %rax	#, tmp1002
	movq	%rax, %rdx	# tmp1001, D.15106
	movq	16(%rbp), %rax	# op_costs, tmp1003
	addq	%rax, %rdx	# tmp1003, D.15113
	movl	-3480(%rbp), %eax	# class, tmp1005
	cltq
	movl	$-1, (%rdx,%rax,4)	#, _748->cost
	jmp	.L643	#
.L655:
	.loc 1 1882 0
	movl	$0, -3476(%rbp)	#, nr
	jmp	.L656	#
.L680:
	.loc 1 1884 0
	movl	-3480(%rbp), %eax	# class, tmp1007
	cltq
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15106
	movl	-3476(%rbp), %eax	# nr, tmp1008
	movl	-3460(%rbp), %ecx	# regno, tmp1009
	addl	%ecx, %eax	# tmp1009, D.15112
	movl	%eax, %ecx	# D.15114, tmp1034
	shrq	%cl, %rdx	# tmp1034, D.15106
	movq	%rdx, %rax	# D.15106, D.15106
	andl	$1, %eax	#, D.15106
	testq	%rax, %rax	# D.15106
	jne	.L657	#,
	.loc 1 1886 0
	jmp	.L658	#
.L657:
	.loc 1 1882 0
	addl	$1, -3476(%rbp)	#, nr
.L656:
	.loc 1 1882 0 is_stmt 0 discriminator 1
	cmpl	$7, -3460(%rbp)	#, regno
	jbe	.L659	#,
	cmpl	$15, -3460(%rbp)	#, regno
	jbe	.L660	#,
.L659:
	.loc 1 1882 0 discriminator 2
	cmpl	$20, -3460(%rbp)	#, regno
	jbe	.L661	#,
	.loc 1 1882 0 discriminator 1
	cmpl	$28, -3460(%rbp)	#, regno
	jbe	.L660	#,
.L661:
	.loc 1 1882 0 discriminator 2
	cmpl	$44, -3460(%rbp)	#, regno
	jbe	.L662	#,
	.loc 1 1882 0 discriminator 1
	cmpl	$52, -3460(%rbp)	#, regno
	jbe	.L660	#,
.L662:
	.loc 1 1882 0 discriminator 2
	cmpl	$28, -3460(%rbp)	#, regno
	jbe	.L663	#,
	.loc 1 1882 0 discriminator 1
	cmpl	$36, -3460(%rbp)	#, regno
	ja	.L663	#,
.L660:
	movl	-3456(%rbp), %eax	# mode, mode.348
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$5, %eax	#, D.15123
	je	.L664	#,
	.loc 1 1882 0 discriminator 4
	movl	-3456(%rbp), %eax	# mode, mode.349
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$6, %eax	#, D.15123
	jne	.L665	#,
.L664:
	.loc 1 1882 0 discriminator 3
	movl	$2, %eax	#, iftmp.347
	jmp	.L667	#
.L665:
	.loc 1 1882 0 discriminator 1
	movl	$1, %eax	#, iftmp.347
	jmp	.L667	#
.L663:
	.loc 1 1882 0 discriminator 2
	cmpl	$18, -3456(%rbp)	#, mode
	jne	.L668	#,
	.loc 1 1882 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.352
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L669	#,
	.loc 1 1882 0 discriminator 9
	movl	$2, %eax	#, iftmp.351
	jmp	.L667	#
.L669:
	.loc 1 1882 0 discriminator 10
	movl	$3, %eax	#, iftmp.351
	jmp	.L667	#
.L668:
	.loc 1 1882 0 discriminator 8
	cmpl	$24, -3456(%rbp)	#, mode
	jne	.L672	#,
	.loc 1 1882 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.355
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L673	#,
	.loc 1 1882 0 discriminator 13
	movl	$4, %eax	#, iftmp.354
	jmp	.L667	#
.L673:
	.loc 1 1882 0 discriminator 14
	movl	$6, %eax	#, iftmp.354
	jmp	.L667	#
.L672:
	.loc 1 1882 0 discriminator 12
	movl	-3456(%rbp), %eax	# mode, mode.356
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15120
	movzbl	%al, %edx	# D.15120, D.15114
	movl	target_flags(%rip), %eax	# target_flags, target_flags.358
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L676	#,
	.loc 1 1882 0 discriminator 1
	movl	$8, %eax	#, iftmp.357
	jmp	.L677	#
.L676:
	.loc 1 1882 0 discriminator 2
	movl	$4, %eax	#, iftmp.357
.L677:
	.loc 1 1882 0 discriminator 3
	addl	%edx, %eax	# D.15114, D.15114
	subl	$1, %eax	#, D.15114
	movl	target_flags(%rip), %edx	# target_flags, target_flags.360
	andl	$33554432, %edx	#, D.15114
	testl	%edx, %edx	# D.15114
	je	.L678	#,
	.loc 1 1882 0 discriminator 1
	movl	$8, %ebx	#, iftmp.359
	jmp	.L679	#
.L678:
	.loc 1 1882 0 discriminator 2
	movl	$4, %ebx	#, iftmp.359
.L679:
	.loc 1 1882 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.359
.L667:
	.loc 1 1882 0 discriminator 6
	cmpl	-3476(%rbp), %eax	# nr, iftmp.346
	ja	.L680	#,
.L658:
	.loc 1 1889 0 is_stmt 1
	cmpl	$7, -3460(%rbp)	#, regno
	jbe	.L681	#,
	.loc 1 1889 0 is_stmt 0 discriminator 1
	cmpl	$15, -3460(%rbp)	#, regno
	jbe	.L682	#,
.L681:
	.loc 1 1889 0 discriminator 2
	cmpl	$20, -3460(%rbp)	#, regno
	jbe	.L683	#,
	.loc 1 1889 0 discriminator 1
	cmpl	$28, -3460(%rbp)	#, regno
	jbe	.L682	#,
.L683:
	.loc 1 1889 0 discriminator 2
	cmpl	$44, -3460(%rbp)	#, regno
	jbe	.L684	#,
	.loc 1 1889 0 discriminator 1
	cmpl	$52, -3460(%rbp)	#, regno
	jbe	.L682	#,
.L684:
	.loc 1 1889 0 discriminator 2
	cmpl	$28, -3460(%rbp)	#, regno
	jbe	.L685	#,
	.loc 1 1889 0 discriminator 1
	cmpl	$36, -3460(%rbp)	#, regno
	ja	.L685	#,
.L682:
	movl	-3456(%rbp), %eax	# mode, mode.363
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$5, %eax	#, D.15123
	je	.L686	#,
	.loc 1 1889 0 discriminator 4
	movl	-3456(%rbp), %eax	# mode, mode.364
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15123
	cmpl	$6, %eax	#, D.15123
	jne	.L687	#,
.L686:
	.loc 1 1889 0 discriminator 3
	movl	$2, %eax	#, iftmp.362
	jmp	.L689	#
.L687:
	.loc 1 1889 0 discriminator 1
	movl	$1, %eax	#, iftmp.362
	jmp	.L689	#
.L685:
	.loc 1 1889 0 discriminator 2
	cmpl	$18, -3456(%rbp)	#, mode
	jne	.L690	#,
	.loc 1 1889 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.367
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L691	#,
	.loc 1 1889 0 discriminator 9
	movl	$2, %eax	#, iftmp.366
	jmp	.L689	#
.L691:
	.loc 1 1889 0 discriminator 10
	movl	$3, %eax	#, iftmp.366
	jmp	.L689	#
.L690:
	.loc 1 1889 0 discriminator 8
	cmpl	$24, -3456(%rbp)	#, mode
	jne	.L694	#,
	.loc 1 1889 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.370
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L695	#,
	.loc 1 1889 0 discriminator 13
	movl	$4, %eax	#, iftmp.369
	jmp	.L689	#
.L695:
	.loc 1 1889 0 discriminator 14
	movl	$6, %eax	#, iftmp.369
	jmp	.L689	#
.L694:
	.loc 1 1889 0 discriminator 12
	movl	-3456(%rbp), %eax	# mode, mode.371
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15120
	movzbl	%al, %edx	# D.15120, D.15114
	movl	target_flags(%rip), %eax	# target_flags, target_flags.373
	andl	$33554432, %eax	#, D.15114
	testl	%eax, %eax	# D.15114
	je	.L698	#,
	.loc 1 1889 0 discriminator 1
	movl	$8, %eax	#, iftmp.372
	jmp	.L699	#
.L698:
	.loc 1 1889 0 discriminator 2
	movl	$4, %eax	#, iftmp.372
.L699:
	.loc 1 1889 0 discriminator 3
	addl	%edx, %eax	# D.15114, D.15114
	subl	$1, %eax	#, D.15114
	movl	target_flags(%rip), %edx	# target_flags, target_flags.375
	andl	$33554432, %edx	#, D.15114
	testl	%edx, %edx	# D.15114
	je	.L700	#,
	.loc 1 1889 0 discriminator 1
	movl	$8, %ebx	#, iftmp.374
	jmp	.L701	#
.L700:
	.loc 1 1889 0 discriminator 2
	movl	$4, %ebx	#, iftmp.374
.L701:
	.loc 1 1889 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.374
.L689:
	.loc 1 1889 0 discriminator 6
	cmpl	-3476(%rbp), %eax	# nr, iftmp.361
	jne	.L643	#,
	.loc 1 1890 0 is_stmt 1
	movl	-3504(%rbp), %eax	# i, tmp1020
	movslq	%eax, %rdx	# tmp1020, D.15106
	movq	%rdx, %rax	# D.15106, tmp1021
	addq	%rax, %rax	# tmp1021
	addq	%rdx, %rax	# D.15106, tmp1021
	salq	$2, %rax	#, tmp1021
	addq	%rdx, %rax	# D.15106, tmp1021
	salq	$3, %rax	#, tmp1022
	movq	%rax, %rdx	# tmp1021, D.15106
	movq	16(%rbp), %rax	# op_costs, tmp1023
	addq	%rax, %rdx	# tmp1023, D.15113
	movl	-3480(%rbp), %eax	# class, tmp1025
	cltq
	movl	$-1, (%rdx,%rax,4)	#, _826->cost
.L643:
	.loc 1 1874 0
	addl	$1, -3480(%rbp)	#, class
.L642:
	.loc 1 1874 0 is_stmt 0 discriminator 1
	cmpl	$24, -3480(%rbp)	#, class
	jle	.L702	#,
.L624:
.LBE28:
	.loc 1 1856 0 is_stmt 1
	addl	$1, -3504(%rbp)	#, i
.L623:
	.loc 1 1856 0 is_stmt 0 discriminator 1
	cmpl	$1, -3504(%rbp)	#, i
	jle	.L703	#,
.L390:
	.loc 1 1894 0 is_stmt 1
	addq	$3560, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	record_reg_classes, .-record_reg_classes
	.type	copy_cost, @function
copy_cost:
.LFB18:
	.loc 1 1907 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# mode, mode
	movl	%edx, -48(%rbp)	# class, class
	movl	%ecx, -52(%rbp)	# to_p, to_p
	.loc 1 1909 0
	movl	$0, -20(%rbp)	#, secondary_class
	.loc 1 1915 0
	movq	-40(%rbp), %rax	# x, tmp75
	movzwl	(%rax), %eax	# x_5(D)->code, D.15125
	cmpw	$62, %ax	#, D.15125
	jne	.L707	#,
	.loc 1 1916 0
	movl	$0, %eax	#, D.15124
	jmp	.L708	#
.L707:
	.loc 1 1919 0
	movl	-48(%rbp), %edx	# class, tmp76
	movq	-40(%rbp), %rax	# x, tmp77
	movl	%edx, %esi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	ix86_preferred_reload_class	#
	movl	%eax, -48(%rbp)	# tmp78, class
	.loc 1 1933 0
	cmpl	$0, -52(%rbp)	#, to_p
	jne	.L709	#,
	.loc 1 1934 0
	cmpl	$12, -48(%rbp)	#, class
	je	.L710	#,
	.loc 1 1934 0 is_stmt 0 discriminator 2
	cmpl	$11, -48(%rbp)	#, class
	je	.L710	#,
	.loc 1 1934 0 discriminator 1
	cmpl	$10, -48(%rbp)	#, class
	jne	.L711	#,
.L710:
	movl	target_flags(%rip), %eax	# target_flags, target_flags.377
	andl	$33554432, %eax	#, D.15124
	testl	%eax, %eax	# D.15124
	jne	.L711	#,
	cmpl	$2, -44(%rbp)	#, mode
	jne	.L711	#,
	movl	$8, %eax	#, iftmp.376
	jmp	.L712	#
.L711:
	movl	$0, %eax	#, iftmp.376
.L712:
	.loc 1 1934 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.376, secondary_class
.L709:
	.loc 1 1937 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, secondary_class
	je	.L713	#,
	.loc 1 1938 0
	movl	-20(%rbp), %edx	# secondary_class, secondary_class.378
	movl	-48(%rbp), %eax	# class, class.379
	movslq	%eax, %rcx	# class.379, tmp79
	movl	-44(%rbp), %eax	# mode, tmp80
	movslq	%edx, %rdx	# secondary_class.378, tmp81
	imulq	$625, %rax, %rsi	#, tmp80, tmp82
	movq	%rdx, %rax	# tmp81, tmp83
	salq	$2, %rax	#, tmp83
	addq	%rdx, %rax	# tmp81, tmp83
	leaq	0(,%rax,4), %rdx	#, tmp84
	addq	%rdx, %rax	# tmp84, tmp83
	addq	%rsi, %rax	# tmp82, tmp85
	addq	%rcx, %rax	# tmp79, tmp86
	movl	move_cost(,%rax,4), %ebx	# move_cost, D.15124
	.loc 1 1939 0
	movl	-20(%rbp), %edx	# secondary_class, tmp87
	movl	-44(%rbp), %esi	# mode, tmp88
	movq	-40(%rbp), %rax	# x, tmp89
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp89,
	call	copy_cost	#
	.loc 1 1938 0
	addl	%ebx, %eax	# D.15124, D.15124
	jmp	.L708	#
.L713:
	.loc 1 1946 0
	movq	-40(%rbp), %rax	# x, tmp90
	movzwl	(%rax), %eax	# x_5(D)->code, D.15125
	cmpw	$66, %ax	#, D.15125
	je	.L714	#,
	.loc 1 1946 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, class
	jne	.L715	#,
.L714:
	.loc 1 1947 0 is_stmt 1
	movl	-52(%rbp), %edx	# to_p, tmp91
	movl	-48(%rbp), %ecx	# class, tmp92
	movl	-44(%rbp), %eax	# mode, tmp93
	movl	%ecx, %esi	# tmp92,
	movl	%eax, %edi	# tmp93,
	call	ix86_memory_move_cost	#
	jmp	.L708	#
.L715:
	.loc 1 1949 0
	movq	-40(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_5(D)->code, D.15125
	cmpw	$61, %ax	#, D.15125
	jne	.L716	#,
	.loc 1 1950 0
	movq	-40(%rbp), %rax	# x, tmp95
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15126
	movl	%eax, %eax	# D.15126, tmp96
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15127
	movl	%eax, %edx	# D.15127, D.15124
	movl	-48(%rbp), %eax	# class, class.380
	movslq	%eax, %rcx	# class.380, tmp97
	movl	-44(%rbp), %eax	# mode, tmp98
	movslq	%edx, %rdx	# D.15124, tmp99
	imulq	$625, %rax, %rsi	#, tmp98, tmp100
	movq	%rdx, %rax	# tmp99, tmp101
	salq	$2, %rax	#, tmp101
	addq	%rdx, %rax	# tmp99, tmp101
	leaq	0(,%rax,4), %rdx	#, tmp102
	addq	%rdx, %rax	# tmp102, tmp101
	addq	%rsi, %rax	# tmp100, tmp103
	addq	%rcx, %rax	# tmp97, tmp104
	movl	move_cost(,%rax,4), %eax	# move_cost, D.15124
	jmp	.L708	#
.L716:
	.loc 1 1954 0
	movl	$4, %eax	#, D.15124
.L708:
	.loc 1 1955 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	copy_cost, .-copy_cost
	.type	record_address_regs, @function
record_address_regs:
.LFB19:
	.loc 1 1971 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# x, x
	movl	%esi, -92(%rbp)	# class, class
	movl	%edx, -96(%rbp)	# scale, scale
	.loc 1 1972 0
	movq	-88(%rbp), %rax	# x, tmp147
	movzwl	(%rax), %eax	# x_11(D)->code, D.15128
	movzwl	%ax, %eax	# D.15128, tmp148
	movl	%eax, -52(%rbp)	# tmp148, code
	.loc 1 1974 0
	movl	-52(%rbp), %eax	# code, tmp150
	subl	$54, %eax	#, tmp149
	cmpl	$47, %eax	#, tmp149
	ja	.L718	#,
	movl	%eax, %eax	# tmp149, tmp151
	movq	.L720(,%rax,8), %rax	#, tmp152
	jmp	*%rax	# tmp152
	.section	.rodata
	.align 8
	.align 4
.L720:
	.quad	.L766
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L766
	.quad	.L766
	.quad	.L718
	.quad	.L721
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L766
	.quad	.L766
	.quad	.L766
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L722
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L718
	.quad	.L723
	.quad	.L723
	.quad	.L723
	.quad	.L723
	.quad	.L724
	.quad	.L724
	.text
.L722:
.LBB30:
	.loc 1 1998 0
	movq	-88(%rbp), %rax	# x, tmp153
	movq	8(%rax), %rax	# x_11(D)->fld[0].rtx, tmp154
	movq	%rax, -48(%rbp)	# tmp154, arg0
	.loc 1 1999 0
	movq	-88(%rbp), %rax	# x, tmp155
	movq	16(%rax), %rax	# x_11(D)->fld[1].rtx, tmp156
	movq	%rax, -40(%rbp)	# tmp156, arg1
	.loc 1 2000 0
	movq	-48(%rbp), %rax	# arg0, tmp157
	movzwl	(%rax), %eax	# arg0_14->code, D.15128
	movzwl	%ax, %eax	# D.15128, tmp158
	movl	%eax, -68(%rbp)	# tmp158, code0
	.loc 1 2001 0
	movq	-40(%rbp), %rax	# arg1, tmp159
	movzwl	(%rax), %eax	# arg1_15->code, D.15128
	movzwl	%ax, %eax	# D.15128, tmp160
	movl	%eax, -64(%rbp)	# tmp160, code1
	.loc 1 2004 0
	cmpl	$63, -68(%rbp)	#, code0
	jne	.L726	#,
	.loc 1 2005 0
	movq	-48(%rbp), %rax	# arg0, tmp161
	movq	8(%rax), %rax	# arg0_14->fld[0].rtx, tmp162
	movq	%rax, -48(%rbp)	# tmp162, arg0
	movq	-48(%rbp), %rax	# arg0, tmp163
	movzwl	(%rax), %eax	# arg0_20->code, D.15128
	movzwl	%ax, %eax	# D.15128, tmp164
	movl	%eax, -68(%rbp)	# tmp164, code0
.L726:
	.loc 1 2006 0
	cmpl	$63, -64(%rbp)	#, code1
	jne	.L765	#,
	.loc 1 2007 0
	movq	-40(%rbp), %rax	# arg1, tmp165
	movq	8(%rax), %rax	# arg1_15->fld[0].rtx, tmp166
	movq	%rax, -40(%rbp)	# tmp166, arg1
	movq	-40(%rbp), %rax	# arg1, tmp167
	movzwl	(%rax), %eax	# arg1_23->code, D.15128
	movzwl	%ax, %eax	# D.15128, tmp168
	movl	%eax, -64(%rbp)	# tmp168, code1
.L765:
	.loc 1 2030 0
	cmpl	$54, -64(%rbp)	#, code1
	je	.L728	#,
	.loc 1 2030 0 is_stmt 0 discriminator 1
	cmpl	$55, -64(%rbp)	#, code1
	jne	.L729	#,
.L728:
	.loc 1 2031 0 is_stmt 1
	movl	-96(%rbp), %edx	# scale, tmp169
	movl	-92(%rbp), %ecx	# class, tmp170
	movq	-48(%rbp), %rax	# arg0, tmp171
	movl	%ecx, %esi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	record_address_regs	#
	jmp	.L730	#
.L729:
	.loc 1 2036 0
	cmpl	$68, -64(%rbp)	#, code1
	je	.L731	#,
	.loc 1 2036 0 is_stmt 0 discriminator 1
	cmpl	$58, -64(%rbp)	#, code1
	je	.L731	#,
	cmpl	$67, -64(%rbp)	#, code1
	jne	.L732	#,
.L731:
	.loc 1 2037 0 is_stmt 1
	movl	-96(%rbp), %edx	# scale, tmp172
	movq	-48(%rbp), %rax	# arg0, tmp173
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	record_address_regs	#
	jmp	.L730	#
.L732:
	.loc 1 2044 0
	cmpl	$61, -68(%rbp)	#, code0
	jne	.L733	#,
	.loc 1 2044 0 is_stmt 0 discriminator 1
	cmpl	$61, -64(%rbp)	#, code1
	jne	.L733	#,
	.loc 1 2045 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg0, tmp174
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	ja	.L733	#,
	.loc 1 2046 0
	movq	-48(%rbp), %rax	# arg0, tmp175
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$7, %eax	#, D.15129
	jbe	.L734	#,
	.loc 1 2046 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# arg0, tmp176
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$16, %eax	#, D.15129
	je	.L734	#,
	movq	-48(%rbp), %rax	# arg0, tmp177
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$20, %eax	#, D.15129
	je	.L734	#,
	movq	-48(%rbp), %rax	# arg0, tmp178
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$36, %eax	#, D.15129
	jbe	.L735	#,
	movq	-48(%rbp), %rax	# arg0, tmp179
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$44, %eax	#, D.15129
	jbe	.L734	#,
.L735:
	.loc 1 2046 0 discriminator 2
	movq	-48(%rbp), %rax	# arg0, tmp180
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	ja	.L734	#,
	.loc 1 2046 0 discriminator 1
	movq	-48(%rbp), %rax	# arg0, tmp181
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$6, %eax	#, D.15129
	jbe	.L734	#,
	movq	-48(%rbp), %rax	# arg0, tmp182
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$36, %eax	#, D.15129
	jbe	.L736	#,
	movq	-48(%rbp), %rax	# arg0, tmp183
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$44, %eax	#, D.15129
	jbe	.L734	#,
.L736:
	.loc 1 2046 0 discriminator 2
	movq	-48(%rbp), %rax	# arg0, tmp184
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	jbe	.L733	#,
.L734:
	.loc 1 2048 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg0, tmp185
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	.loc 1 2047 0
	cmpl	$7, %eax	#, D.15129
	jbe	.L737	#,
	.loc 1 2048 0
	movq	-48(%rbp), %rax	# arg0, tmp186
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$16, %eax	#, D.15129
	je	.L737	#,
	.loc 1 2048 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# arg0, tmp187
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$20, %eax	#, D.15129
	je	.L737	#,
	movq	-48(%rbp), %rax	# arg0, tmp188
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$36, %eax	#, D.15129
	jbe	.L738	#,
	movq	-48(%rbp), %rax	# arg0, tmp189
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$44, %eax	#, D.15129
	jbe	.L737	#,
.L738:
	.loc 1 2048 0 discriminator 2
	movq	-48(%rbp), %rax	# arg0, tmp190
	movl	8(%rax), %eax	# arg0_1->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	jbe	.L739	#,
.L737:
	.loc 1 2047 0 is_stmt 1 discriminator 1
	movl	$10, %eax	#, iftmp.381
	jmp	.L740	#
.L739:
	.loc 1 2047 0 is_stmt 0
	movl	$12, %eax	#, iftmp.381
.L740:
	.loc 1 2047 0 discriminator 2
	movl	-96(%rbp), %edx	# scale, tmp191
	movq	-40(%rbp), %rcx	# arg1, tmp192
	movl	%eax, %esi	# iftmp.381,
	movq	%rcx, %rdi	# tmp192,
	call	record_address_regs	#
	jmp	.L730	#
.L733:
	.loc 1 2051 0 is_stmt 1
	cmpl	$61, -68(%rbp)	#, code0
	jne	.L741	#,
	.loc 1 2051 0 is_stmt 0 discriminator 1
	cmpl	$61, -64(%rbp)	#, code1
	jne	.L741	#,
	.loc 1 2052 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg1, tmp193
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	ja	.L741	#,
	.loc 1 2053 0
	movq	-40(%rbp), %rax	# arg1, tmp194
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$7, %eax	#, D.15129
	jbe	.L742	#,
	.loc 1 2053 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg1, tmp195
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$16, %eax	#, D.15129
	je	.L742	#,
	movq	-40(%rbp), %rax	# arg1, tmp196
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$20, %eax	#, D.15129
	je	.L742	#,
	movq	-40(%rbp), %rax	# arg1, tmp197
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$36, %eax	#, D.15129
	jbe	.L743	#,
	movq	-40(%rbp), %rax	# arg1, tmp198
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$44, %eax	#, D.15129
	jbe	.L742	#,
.L743:
	.loc 1 2053 0 discriminator 2
	movq	-40(%rbp), %rax	# arg1, tmp199
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	ja	.L742	#,
	.loc 1 2053 0 discriminator 1
	movq	-40(%rbp), %rax	# arg1, tmp200
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$6, %eax	#, D.15129
	jbe	.L742	#,
	movq	-40(%rbp), %rax	# arg1, tmp201
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$36, %eax	#, D.15129
	jbe	.L744	#,
	movq	-40(%rbp), %rax	# arg1, tmp202
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$44, %eax	#, D.15129
	jbe	.L742	#,
.L744:
	.loc 1 2053 0 discriminator 2
	movq	-40(%rbp), %rax	# arg1, tmp203
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	jbe	.L741	#,
.L742:
	.loc 1 2055 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg1, tmp204
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	.loc 1 2054 0
	cmpl	$7, %eax	#, D.15129
	jbe	.L745	#,
	.loc 1 2055 0
	movq	-40(%rbp), %rax	# arg1, tmp205
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$16, %eax	#, D.15129
	je	.L745	#,
	.loc 1 2055 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg1, tmp206
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$20, %eax	#, D.15129
	je	.L745	#,
	movq	-40(%rbp), %rax	# arg1, tmp207
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$36, %eax	#, D.15129
	jbe	.L746	#,
	movq	-40(%rbp), %rax	# arg1, tmp208
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$44, %eax	#, D.15129
	jbe	.L745	#,
.L746:
	.loc 1 2055 0 discriminator 2
	movq	-40(%rbp), %rax	# arg1, tmp209
	movl	8(%rax), %eax	# arg1_2->fld[0].rtuint, D.15129
	cmpl	$52, %eax	#, D.15129
	jbe	.L747	#,
.L745:
	.loc 1 2054 0 is_stmt 1 discriminator 1
	movl	$10, %eax	#, iftmp.382
	jmp	.L748	#
.L747:
	.loc 1 2054 0 is_stmt 0
	movl	$12, %eax	#, iftmp.382
.L748:
	.loc 1 2054 0 discriminator 2
	movl	-96(%rbp), %edx	# scale, tmp210
	movq	-48(%rbp), %rcx	# arg0, tmp211
	movl	%eax, %esi	# iftmp.382,
	movq	%rcx, %rdi	# tmp211,
	call	record_address_regs	#
	jmp	.L730	#
.L741:
	.loc 1 2064 0 is_stmt 1
	cmpl	$61, -68(%rbp)	#, code0
	jne	.L749	#,
	.loc 1 2064 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# arg0, tmp212
	movzbl	3(%rax), %eax	# *arg0_1, D.15130
	andl	$-128, %eax	#, D.15130
	testb	%al, %al	# D.15130
	jne	.L750	#,
.L749:
	.loc 1 2065 0 is_stmt 1
	cmpl	$78, -64(%rbp)	#, code1
	jne	.L751	#,
.L750:
	.loc 1 2067 0
	movl	-96(%rbp), %edx	# scale, tmp213
	movq	-48(%rbp), %rax	# arg0, tmp214
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	record_address_regs	#
	.loc 1 2068 0
	movl	-96(%rbp), %edx	# scale, tmp215
	movq	-40(%rbp), %rax	# arg1, tmp216
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	record_address_regs	#
	jmp	.L730	#
.L751:
	.loc 1 2070 0
	cmpl	$61, -64(%rbp)	#, code1
	jne	.L752	#,
	.loc 1 2070 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg1, tmp217
	movzbl	3(%rax), %eax	# *arg1_2, D.15130
	andl	$-128, %eax	#, D.15130
	testb	%al, %al	# D.15130
	jne	.L753	#,
.L752:
	.loc 1 2071 0 is_stmt 1
	cmpl	$78, -68(%rbp)	#, code0
	jne	.L754	#,
.L753:
	.loc 1 2073 0
	movl	-96(%rbp), %edx	# scale, tmp218
	movq	-48(%rbp), %rax	# arg0, tmp219
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp219,
	call	record_address_regs	#
	.loc 1 2074 0
	movl	-96(%rbp), %edx	# scale, tmp220
	movq	-40(%rbp), %rax	# arg1, tmp221
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	record_address_regs	#
	jmp	.L730	#
.L754:
	.loc 1 2082 0
	movl	-96(%rbp), %eax	# scale, tmp222
	movl	%eax, %edx	# tmp222, tmp223
	shrl	$31, %edx	#, tmp223
	addl	%edx, %eax	# tmp223, tmp224
	sarl	%eax	# tmp225
	movl	%eax, %edx	# tmp225, D.15131
	movq	-48(%rbp), %rax	# arg0, tmp226
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	record_address_regs	#
	.loc 1 2084 0
	movl	-96(%rbp), %eax	# scale, tmp227
	movl	%eax, %edx	# tmp227, tmp228
	shrl	$31, %edx	#, tmp228
	addl	%edx, %eax	# tmp228, tmp229
	sarl	%eax	# tmp230
	movl	%eax, %edx	# tmp230, D.15131
	movq	-48(%rbp), %rax	# arg0, tmp231
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	record_address_regs	#
	.loc 1 2085 0
	movl	-96(%rbp), %eax	# scale, tmp232
	movl	%eax, %edx	# tmp232, tmp233
	shrl	$31, %edx	#, tmp233
	addl	%edx, %eax	# tmp233, tmp234
	sarl	%eax	# tmp235
	movl	%eax, %edx	# tmp235, D.15131
	movq	-40(%rbp), %rax	# arg1, tmp236
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	record_address_regs	#
	.loc 1 2087 0
	movl	-96(%rbp), %eax	# scale, tmp237
	movl	%eax, %edx	# tmp237, tmp238
	shrl	$31, %edx	#, tmp238
	addl	%edx, %eax	# tmp238, tmp239
	sarl	%eax	# tmp240
	movl	%eax, %edx	# tmp240, D.15131
	movq	-40(%rbp), %rax	# arg1, tmp241
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp241,
	call	record_address_regs	#
.LBE30:
	.loc 1 2090 0
	jmp	.L717	#
.L730:
	jmp	.L717	#
.L724:
	.loc 1 2097 0
	movl	-96(%rbp), %eax	# scale, tmp242
	leal	(%rax,%rax), %edx	#, D.15131
	movq	-88(%rbp), %rax	# x, tmp243
	movq	8(%rax), %rax	# x_11(D)->fld[0].rtx, D.15132
	movl	$12, %esi	#,
	movq	%rax, %rdi	# D.15132,
	call	record_address_regs	#
	.loc 1 2099 0
	movq	-88(%rbp), %rax	# x, tmp244
	movq	16(%rax), %rax	# x_11(D)->fld[1].rtx, D.15132
	movq	16(%rax), %rax	# _76->fld[1].rtx, D.15132
	movzwl	(%rax), %eax	# _77->code, D.15128
	cmpw	$61, %ax	#, D.15128
	jne	.L755	#,
	.loc 1 2100 0
	movl	-96(%rbp), %eax	# scale, tmp245
	leal	(%rax,%rax), %edx	#, D.15131
	movq	-88(%rbp), %rax	# x, tmp246
	movq	16(%rax), %rax	# x_11(D)->fld[1].rtx, D.15132
	movq	16(%rax), %rax	# _80->fld[1].rtx, D.15132
	movl	$10, %esi	#,
	movq	%rax, %rdi	# D.15132,
	call	record_address_regs	#
	.loc 1 2102 0
	jmp	.L717	#
.L755:
	jmp	.L717	#
.L723:
	.loc 1 2119 0
	movl	-96(%rbp), %eax	# scale, tmp247
	leal	(%rax,%rax), %edx	#, D.15131
	movq	-88(%rbp), %rax	# x, tmp248
	movq	8(%rax), %rax	# x_11(D)->fld[0].rtx, D.15132
	movl	-92(%rbp), %ecx	# class, tmp249
	movl	%ecx, %esi	# tmp249,
	movq	%rax, %rdi	# D.15132,
	call	record_address_regs	#
	.loc 1 2120 0
	jmp	.L717	#
.L721:
.LBB31:
	.loc 1 2124 0
	movq	costs(%rip), %rcx	# costs, costs.383
	movq	-88(%rbp), %rax	# x, tmp250
	movl	8(%rax), %eax	# x_11(D)->fld[0].rtuint, D.15129
	movl	%eax, %edx	# D.15129, D.15133
	movq	%rdx, %rax	# D.15133, tmp251
	addq	%rax, %rax	# tmp251
	addq	%rdx, %rax	# D.15133, tmp251
	salq	$2, %rax	#, tmp251
	addq	%rdx, %rax	# D.15133, tmp251
	salq	$3, %rax	#, tmp252
	addq	%rcx, %rax	# costs.383, tmp253
	movq	%rax, -32(%rbp)	# tmp253, pp
	.loc 1 2127 0
	movq	-32(%rbp), %rax	# pp, tmp254
	movl	100(%rax), %ebx	# pp_88->mem_cost, D.15131
	movl	target_flags(%rip), %eax	# target_flags, target_flags.385
	andl	$33554432, %eax	#, D.15131
	testl	%eax, %eax	# D.15131
	je	.L756	#,
	.loc 1 2127 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.384
	jmp	.L757	#
.L756:
	.loc 1 2127 0 discriminator 2
	movl	$4, %eax	#, iftmp.384
.L757:
	.loc 1 2127 0 discriminator 3
	movl	-92(%rbp), %ecx	# class, tmp255
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp255,
	movl	%eax, %edi	# iftmp.384,
	call	ix86_memory_move_cost	#
	imull	-96(%rbp), %eax	# scale, D.15131
	movl	%eax, %edx	# D.15131, tmp256
	shrl	$31, %edx	#, tmp256
	addl	%edx, %eax	# tmp256, tmp257
	sarl	%eax	# tmp258
	leal	(%rbx,%rax), %edx	#, D.15131
	movq	-32(%rbp), %rax	# pp, tmp259
	movl	%edx, 100(%rax)	# D.15131, pp_88->mem_cost
	.loc 1 2129 0 is_stmt 1 discriminator 3
	movl	$0, -60(%rbp)	#, i
	jmp	.L758	#
.L761:
	.loc 1 2130 0
	movq	-32(%rbp), %rax	# pp, tmp260
	movl	-60(%rbp), %edx	# i, tmp262
	movslq	%edx, %rdx	# tmp262, tmp261
	movl	(%rax,%rdx,4), %ecx	# pp_88->cost, D.15131
	movl	target_flags(%rip), %eax	# target_flags, target_flags.387
	andl	$33554432, %eax	#, D.15131
	testl	%eax, %eax	# D.15131
	je	.L759	#,
	.loc 1 2130 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.386
	jmp	.L760	#
.L759:
	.loc 1 2130 0 discriminator 2
	movl	$4, %eax	#, iftmp.386
.L760:
	.loc 1 2130 0 discriminator 3
	movl	-92(%rbp), %edx	# class, class.388
	movslq	%edx, %rsi	# class.388, tmp263
	cltq
	movl	-60(%rbp), %edx	# i, tmp266
	movslq	%edx, %rdx	# tmp266, tmp265
	imulq	$625, %rax, %rdi	#, tmp264, tmp267
	movq	%rdx, %rax	# tmp265, tmp268
	salq	$2, %rax	#, tmp268
	addq	%rdx, %rax	# tmp265, tmp268
	leaq	0(,%rax,4), %rdx	#, tmp269
	addq	%rdx, %rax	# tmp269, tmp268
	addq	%rdi, %rax	# tmp267, tmp270
	addq	%rsi, %rax	# tmp263, tmp271
	movl	may_move_in_cost(,%rax,4), %eax	# may_move_in_cost, D.15131
	imull	-96(%rbp), %eax	# scale, D.15131
	movl	%eax, %edx	# D.15131, tmp272
	shrl	$31, %edx	#, tmp272
	addl	%edx, %eax	# tmp272, tmp273
	sarl	%eax	# tmp274
	addl	%eax, %ecx	# D.15131, D.15131
	movq	-32(%rbp), %rax	# pp, tmp275
	movl	-60(%rbp), %edx	# i, tmp277
	movslq	%edx, %rdx	# tmp277, tmp276
	movl	%ecx, (%rax,%rdx,4)	# D.15131, pp_88->cost
	.loc 1 2129 0 is_stmt 1 discriminator 3
	addl	$1, -60(%rbp)	#, i
.L758:
	.loc 1 2129 0 is_stmt 0 discriminator 1
	cmpl	$24, -60(%rbp)	#, i
	jle	.L761	#,
.LBE31:
	.loc 1 2132 0 is_stmt 1
	jmp	.L717	#
.L718:
.LBB32:
	.loc 1 2136 0
	movl	-52(%rbp), %eax	# code, code.389
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp279
	movq	%rax, -24(%rbp)	# tmp279, fmt
	.loc 1 2138 0
	movl	-52(%rbp), %eax	# code, code.390
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15130
	movzbl	%al, %eax	# D.15130, D.15131
	subl	$1, %eax	#, tmp281
	movl	%eax, -56(%rbp)	# tmp281, i
	jmp	.L762	#
.L764:
	.loc 1 2139 0
	movl	-56(%rbp), %eax	# i, tmp282
	movslq	%eax, %rdx	# tmp282, D.15134
	movq	-24(%rbp), %rax	# fmt, tmp283
	addq	%rdx, %rax	# D.15134, D.15135
	movzbl	(%rax), %eax	# *_117, D.15136
	cmpb	$101, %al	#, D.15136
	jne	.L763	#,
	.loc 1 2140 0
	movq	-88(%rbp), %rax	# x, tmp284
	movl	-56(%rbp), %edx	# i, tmp286
	movslq	%edx, %rdx	# tmp286, tmp285
	movq	8(%rax,%rdx,8), %rax	# x_11(D)->fld[i_6].rtx, D.15132
	movl	-96(%rbp), %edx	# scale, tmp287
	movl	-92(%rbp), %ecx	# class, tmp288
	movl	%ecx, %esi	# tmp288,
	movq	%rax, %rdi	# D.15132,
	call	record_address_regs	#
.L763:
	.loc 1 2138 0
	subl	$1, -56(%rbp)	#, i
.L762:
	.loc 1 2138 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, i
	jns	.L764	#,
	jmp	.L717	#
.L766:
.LBE32:
	.loc 1 1982 0 is_stmt 1
	nop
.L717:
	.loc 1 2143 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	record_address_regs, .-record_address_regs
	.local	renumber
	.comm	renumber,8,8
	.local	regno_allocated
	.comm	regno_allocated,8,8
	.local	reg_n_max
	.comm	reg_n_max,4,4
	.section	.rodata
.LC13:
	.string	"reg_n_info"
	.text
	.globl	allocate_reg_info
	.type	allocate_reg_info, @function
allocate_reg_info:
.LFB20:
	.loc 1 2191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# num_regs, num_regs
	movl	%esi, -92(%rbp)	# new_p, new_p
	movl	%edx, -96(%rbp)	# renumber_p, renumber_p
	.loc 1 2194 0
	cmpl	$0, -92(%rbp)	#, new_p
	jne	.L768	#,
	.loc 1 2194 0 is_stmt 0 discriminator 1
	movl	reg_n_max(%rip), %eax	# reg_n_max, reg_n_max.392
	movl	%eax, %eax	# reg_n_max.392, iftmp.391
	jmp	.L769	#
.L768:
	.loc 1 2194 0 discriminator 2
	movl	$0, %eax	#, iftmp.391
.L769:
	.loc 1 2194 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.391, min
	.loc 1 2197 0 is_stmt 1 discriminator 3
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.393
	cmpq	%rax, -88(%rbp)	# regno_allocated.393, num_regs
	jbe	.L770	#,
.LBB33:
	.loc 1 2199 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, tmp119
	movq	%rax, -48(%rbp)	# tmp119, old_allocated
	.loc 1 2201 0
	movq	-88(%rbp), %rax	# num_regs, tmp120
	movabsq	$-3689348814741910323, %rdx	#, tmp122
	mulq	%rdx	# tmp122
	shrq	$4, %rdx	#, D.15137
	movq	-88(%rbp), %rax	# num_regs, tmp123
	addq	%rdx, %rax	# D.15137, regno_allocated.394
	movq	%rax, regno_allocated(%rip)	# regno_allocated.394, regno_allocated
	.loc 1 2202 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.395
	addq	%rax, %rax	# tmp124
	movq	%rax, -40(%rbp)	# tmp124, size_renumber
	.loc 1 2204 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.396
	testq	%rax, %rax	# reg_n_info.396
	jne	.L771	#,
	.loc 1 2206 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.397
	movl	$.LC13, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# regno_allocated.397,
	call	varray_init	#
	movq	%rax, reg_n_info(%rip)	# reg_n_info.398, reg_n_info
	.loc 1 2207 0
	movq	-40(%rbp), %rax	# size_renumber, tmp125
	movq	%rax, %rdi	# tmp125,
	call	xmalloc	#
	movq	%rax, renumber(%rip)	# renumber.399, renumber
	.loc 1 2208 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.400
	addq	%rax, %rax	# D.15137
	movq	%rax, %rdi	# D.15137,
	call	xmalloc	#
	movq	%rax, reg_pref_buffer(%rip)	# reg_pref_buffer.401, reg_pref_buffer
	jmp	.L772	#
.L771:
	.loc 1 2214 0
	movq	regno_allocated(%rip), %rdx	# regno_allocated, regno_allocated.402
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.403
	movq	%rdx, %rsi	# regno_allocated.402,
	movq	%rax, %rdi	# reg_n_info.403,
	call	varray_grow	#
	movq	%rax, reg_n_info(%rip)	# reg_n_info.404, reg_n_info
	.loc 1 2216 0
	cmpl	$0, -92(%rbp)	#, new_p
	je	.L773	#,
	.loc 1 2218 0
	movq	renumber(%rip), %rax	# renumber, renumber.405
	movq	%rax, %rdi	# renumber.405,
	call	free	#
	.loc 1 2219 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.406
	movq	%rax, %rdi	# reg_pref.406,
	call	free	#
	.loc 1 2220 0
	movq	-40(%rbp), %rax	# size_renumber, tmp128
	movq	%rax, %rdi	# tmp128,
	call	xmalloc	#
	movq	%rax, renumber(%rip)	# renumber.407, renumber
	.loc 1 2221 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.408
	addq	%rax, %rax	# D.15137
	movq	%rax, %rdi	# D.15137,
	call	xmalloc	#
	movq	%rax, reg_pref_buffer(%rip)	# reg_pref_buffer.409, reg_pref_buffer
	jmp	.L772	#
.L773:
	.loc 1 2227 0
	movq	renumber(%rip), %rax	# renumber, renumber.410
	movq	-40(%rbp), %rdx	# size_renumber, tmp131
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# renumber.410,
	call	xrealloc	#
	movq	%rax, renumber(%rip)	# renumber.411, renumber
	.loc 1 2228 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.412
	leaq	(%rax,%rax), %rdx	#, D.15137
	movq	reg_pref_buffer(%rip), %rax	# reg_pref_buffer, reg_pref_buffer.413
	movq	%rdx, %rsi	# D.15137,
	movq	%rax, %rdi	# reg_pref_buffer.413,
	call	xrealloc	#
	movq	%rax, reg_pref_buffer(%rip)	# reg_pref_buffer.414, reg_pref_buffer
.L772:
	.loc 1 2234 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.415
	subq	-48(%rbp), %rax	# old_allocated, D.15137
	movq	%rax, %rdx	# D.15137, D.15137
	movq	%rdx, %rax	# D.15137, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.15137, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# D.15137, tmp132
	salq	$2, %rax	#, tmp133
	addq	$28, %rax	#, tmp134
	movq	%rax, -32(%rbp)	# tmp134, size_info
	.loc 1 2236 0
	movq	-32(%rbp), %rax	# size_info, tmp135
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	xcalloc	#
	movq	%rax, -80(%rbp)	# tmp136, reg_data
	.loc 1 2237 0
	movq	-80(%rbp), %rax	# reg_data, tmp137
	movq	-48(%rbp), %rdx	# old_allocated, tmp138
	movq	%rdx, 8(%rax)	# tmp138, reg_data_43->min_index
	.loc 1 2238 0
	movq	regno_allocated(%rip), %rax	# regno_allocated, regno_allocated.416
	leaq	-1(%rax), %rdx	#, D.15137
	movq	-80(%rbp), %rax	# reg_data, tmp139
	movq	%rdx, 16(%rax)	# D.15137, reg_data_43->max_index
	.loc 1 2239 0
	movq	reg_info_head(%rip), %rdx	# reg_info_head, reg_info_head.417
	movq	-80(%rbp), %rax	# reg_data, tmp140
	movq	%rdx, (%rax)	# reg_info_head.417, reg_data_43->next
	.loc 1 2240 0
	movq	-80(%rbp), %rax	# reg_data, tmp141
	movq	%rax, reg_info_head(%rip)	# tmp141, reg_info_head
.L770:
.LBE33:
	.loc 1 2243 0
	movq	-88(%rbp), %rax	# num_regs, tmp142
	movl	%eax, reg_n_max(%rip)	# reg_n_max.418, reg_n_max
	.loc 1 2244 0
	movq	-56(%rbp), %rax	# min, tmp143
	cmpq	-88(%rbp), %rax	# num_regs, tmp143
	jae	.L774	#,
	.loc 1 2248 0
	movq	reg_info_head(%rip), %rax	# reg_info_head, tmp144
	movq	%rax, -80(%rbp)	# tmp144, reg_data
	jmp	.L775	#
.L783:
.LBB34:
	.loc 1 2252 0
	movq	-80(%rbp), %rax	# reg_data, tmp145
	movq	8(%rax), %rax	# reg_data_1->min_index, tmp146
	movq	%rax, -24(%rbp)	# tmp146, min_index
	.loc 1 2253 0
	movq	-80(%rbp), %rax	# reg_data, tmp147
	movq	16(%rax), %rax	# reg_data_1->max_index, tmp148
	movq	%rax, -16(%rbp)	# tmp148, max_index
	.loc 1 2254 0
	movq	-16(%rbp), %rax	# max_index, tmp150
	cmpq	%rax, -88(%rbp)	# tmp150, num_regs
	cmovbe	-88(%rbp), %rax	# num_regs,, tmp149
	movq	%rax, -8(%rbp)	# tmp149, max
	.loc 1 2255 0
	movq	-24(%rbp), %rax	# min_index, tmp155
	movq	-56(%rbp), %rdx	# min, tmp156
	subq	%rax, %rdx	# tmp155, tmp154
	movq	%rdx, %rax	# tmp154, tmp154
	movq	%rax, -72(%rbp)	# tmp154, local_min
	.loc 1 2258 0
	movq	-80(%rbp), %rax	# reg_data, tmp157
	movq	8(%rax), %rax	# reg_data_1->min_index, D.15137
	cmpq	-88(%rbp), %rax	# num_regs, D.15137
	jbe	.L776	#,
	.loc 1 2259 0
	jmp	.L777	#
.L776:
	.loc 1 2261 0
	movq	-56(%rbp), %rax	# min, tmp158
	cmpq	-24(%rbp), %rax	# min_index, tmp158
	jae	.L778	#,
	.loc 1 2262 0
	movq	$0, -72(%rbp)	#, local_min
.L778:
	.loc 1 2263 0
	movq	-80(%rbp), %rax	# reg_data, tmp159
	movzbl	24(%rax), %eax	# reg_data_1->used_p, D.15138
	testb	%al, %al	# D.15138
	jne	.L779	#,
	.loc 1 2264 0
	movq	-80(%rbp), %rax	# reg_data, tmp160
	movb	$1, 24(%rax)	#, reg_data_1->used_p
	jmp	.L780	#
.L779:
	.loc 1 2267 0
	movq	-24(%rbp), %rax	# min_index, tmp161
	movq	-8(%rbp), %rdx	# max, tmp162
	subq	%rax, %rdx	# tmp161, D.15137
	movq	%rdx, %rax	# D.15137, D.15137
	subq	-72(%rbp), %rax	# local_min, D.15137
	.loc 1 2266 0
	leaq	1(%rax), %rdx	#, D.15137
	movq	%rdx, %rax	# D.15137, tmp163
	salq	$2, %rax	#, tmp163
	addq	%rdx, %rax	# D.15137, tmp163
	addq	%rax, %rax	# tmp163
	addq	%rdx, %rax	# D.15137, tmp163
	salq	$2, %rax	#, tmp164
	movq	%rax, %rcx	# tmp163, D.15137
	movq	-72(%rbp), %rdx	# local_min, tmp165
	movq	%rdx, %rax	# tmp165, tmp166
	salq	$2, %rax	#, tmp166
	addq	%rdx, %rax	# tmp165, tmp166
	addq	%rax, %rax	# tmp166
	addq	%rdx, %rax	# tmp165, tmp166
	salq	$2, %rax	#, tmp167
	leaq	16(%rax), %rdx	#, tmp168
	movq	-80(%rbp), %rax	# reg_data, tmp170
	addq	%rdx, %rax	# tmp168, tmp169
	addq	$12, %rax	#, D.15139
	movq	%rcx, %rdx	# D.15137,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15139,
	call	memset	#
.L780:
	.loc 1 2269 0
	movq	-72(%rbp), %rax	# local_min, tmp175
	movq	-24(%rbp), %rdx	# min_index, tmp176
	addq	%rdx, %rax	# tmp176, tmp174
	movq	%rax, -64(%rbp)	# tmp174, i
	jmp	.L781	#
.L782:
	.loc 1 2271 0 discriminator 2
	movq	reg_n_info(%rip), %rcx	# reg_n_info, reg_n_info.419
	movq	-24(%rbp), %rax	# min_index, tmp177
	movq	-64(%rbp), %rdx	# i, tmp178
	subq	%rax, %rdx	# tmp177, D.15137
	movq	%rdx, %rax	# D.15137, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# D.15137, tmp179
	addq	%rax, %rax	# tmp179
	addq	%rdx, %rax	# D.15137, tmp179
	salq	$2, %rax	#, tmp180
	leaq	16(%rax), %rdx	#, tmp181
	movq	-80(%rbp), %rax	# reg_data, tmp183
	addq	%rdx, %rax	# tmp181, tmp182
	leaq	12(%rax), %rdx	#, D.15139
	movq	-64(%rbp), %rax	# i, tmp185
	addq	$4, %rax	#, tmp184
	movq	%rdx, (%rcx,%rax,8)	# D.15139, reg_n_info.419_63->data.reg
	.loc 1 2272 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.420
	movq	-64(%rbp), %rdx	# i, tmp187
	addq	$4, %rdx	#, tmp186
	movq	(%rax,%rdx,8), %rax	# reg_n_info.420_66->data.reg, D.15140
	movl	$-1, 36(%rax)	#, _67->basic_block
	.loc 1 2273 0 discriminator 2
	movq	renumber(%rip), %rax	# renumber, renumber.421
	movq	-64(%rbp), %rdx	# i, tmp188
	addq	%rdx, %rdx	# D.15137
	addq	%rdx, %rax	# D.15137, D.15141
	movw	$-1, (%rax)	#, *_70
	.loc 1 2274 0 discriminator 2
	movq	reg_pref_buffer(%rip), %rax	# reg_pref_buffer, reg_pref_buffer.422
	movq	-64(%rbp), %rdx	# i, tmp189
	addq	%rdx, %rdx	# D.15137
	addq	%rdx, %rax	# D.15137, D.15142
	movb	$0, (%rax)	#, _73->prefclass
	.loc 1 2275 0 discriminator 2
	movq	reg_pref_buffer(%rip), %rax	# reg_pref_buffer, reg_pref_buffer.423
	movq	-64(%rbp), %rdx	# i, tmp190
	addq	%rdx, %rdx	# D.15137
	addq	%rdx, %rax	# D.15137, D.15142
	movb	$0, 1(%rax)	#, _76->altclass
	.loc 1 2269 0 discriminator 2
	addq	$1, -64(%rbp)	#, i
.L781:
	.loc 1 2269 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# i, tmp191
	cmpq	-8(%rbp), %rax	# max, tmp191
	jbe	.L782	#,
.L777:
.LBE34:
	.loc 1 2250 0 is_stmt 1
	movq	-80(%rbp), %rax	# reg_data, tmp192
	movq	(%rax), %rax	# reg_data_1->next, tmp193
	movq	%rax, -80(%rbp)	# tmp193, reg_data
.L775:
	.loc 1 2248 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, reg_data
	je	.L774	#,
	.loc 1 2249 0
	movq	-80(%rbp), %rax	# reg_data, tmp194
	movq	16(%rax), %rax	# reg_data_1->max_index, D.15137
	cmpq	-56(%rbp), %rax	# min, D.15137
	jae	.L783	#,
.L774:
	.loc 1 2282 0
	movq	reg_pref(%rip), %rax	# reg_pref, reg_pref.424
	testq	%rax, %rax	# reg_pref.424
	je	.L784	#,
	.loc 1 2283 0
	movq	reg_pref_buffer(%rip), %rax	# reg_pref_buffer, reg_pref_buffer.425
	movq	%rax, reg_pref(%rip)	# reg_pref_buffer.425, reg_pref
.L784:
	.loc 1 2285 0
	cmpl	$0, -96(%rbp)	#, renumber_p
	je	.L767	#,
	.loc 1 2286 0
	movq	renumber(%rip), %rax	# renumber, renumber.426
	movq	%rax, reg_renumber(%rip)	# renumber.426, reg_renumber
.L767:
	.loc 1 2290 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	allocate_reg_info, .-allocate_reg_info
	.globl	free_reg_info
	.type	free_reg_info, @function
free_reg_info:
.LFB21:
	.loc 1 2295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2296 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.427
	testq	%rax, %rax	# reg_n_info.427
	je	.L787	#,
.LBB35:
	.loc 1 2301 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.428
	testq	%rax, %rax	# reg_n_info.428
	je	.L788	#,
	.loc 1 2301 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.429
	movq	%rax, %rdi	# reg_n_info.429,
	call	free	#
	movq	$0, reg_n_info(%rip)	#, reg_n_info
.L788:
	.loc 1 2302 0 is_stmt 1
	movq	reg_info_head(%rip), %rax	# reg_info_head, tmp63
	movq	%rax, -16(%rbp)	# tmp63, reg_data
	jmp	.L789	#
.L790:
	.loc 1 2304 0 discriminator 2
	movq	-16(%rbp), %rax	# reg_data, tmp64
	movq	(%rax), %rax	# reg_data_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, reg_next
	.loc 1 2305 0 discriminator 2
	movq	-16(%rbp), %rax	# reg_data, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	.loc 1 2302 0 discriminator 2
	movq	-8(%rbp), %rax	# reg_next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, reg_data
.L789:
	.loc 1 2302 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, reg_data
	jne	.L790	#,
	.loc 1 2308 0 is_stmt 1
	movq	reg_pref_buffer(%rip), %rax	# reg_pref_buffer, reg_pref_buffer.430
	movq	%rax, %rdi	# reg_pref_buffer.430,
	call	free	#
	.loc 1 2309 0
	movq	$0, reg_pref_buffer(%rip)	#, reg_pref_buffer
	.loc 1 2310 0
	movq	$0, reg_info_head(%rip)	#, reg_info_head
	.loc 1 2311 0
	movq	$0, renumber(%rip)	#, renumber
.L787:
.LBE35:
	.loc 1 2313 0
	movq	$0, regno_allocated(%rip)	#, regno_allocated
	.loc 1 2314 0
	movl	$0, reg_n_max(%rip)	#, reg_n_max
	.loc 1 2315 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	free_reg_info, .-free_reg_info
	.comm	max_parallel,4,4
	.local	max_set_parallel
	.comm	max_set_parallel,4,4
	.globl	reg_scan
	.type	reg_scan, @function
reg_scan:
.LFB22:
	.loc 1 2344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movl	%esi, -28(%rbp)	# nregs, nregs
	movl	%edx, -32(%rbp)	# repeat, repeat
	.loc 1 2347 0
	movl	-28(%rbp), %eax	# nregs, D.15145
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.15145,
	call	allocate_reg_info	#
	.loc 1 2348 0
	movl	$3, max_parallel(%rip)	#, max_parallel
	.loc 1 2349 0
	movl	$0, max_set_parallel(%rip)	#, max_set_parallel
	.loc 1 2351 0
	movq	-24(%rbp), %rax	# f, tmp78
	movq	%rax, -8(%rbp)	# tmp78, insn
	jmp	.L792	#
.L796:
	.loc 1 2352 0
	movq	-8(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_1->code, D.15146
	cmpw	$32, %ax	#, D.15146
	je	.L793	#,
	.loc 1 2353 0
	movq	-8(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_1->code, D.15146
	cmpw	$34, %ax	#, D.15146
	je	.L793	#,
	.loc 1 2354 0
	movq	-8(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_1->code, D.15146
	cmpw	$33, %ax	#, D.15146
	jne	.L794	#,
.L793:
	.loc 1 2356 0
	movq	-8(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15147
	movzwl	(%rax), %eax	# _9->code, D.15146
	cmpw	$39, %ax	#, D.15146
	jne	.L795	#,
	.loc 1 2357 0
	movq	-8(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15147
	movq	8(%rax), %rax	# _11->fld[0].rtvec, D.15148
	movl	(%rax), %edx	# _12->num_elem, D.15149
	movl	max_parallel(%rip), %eax	# max_parallel, max_parallel.431
	cmpl	%eax, %edx	# max_parallel.431, D.15149
	jle	.L795	#,
	.loc 1 2358 0
	movq	-8(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15147
	movq	8(%rax), %rax	# _15->fld[0].rtvec, D.15148
	movl	(%rax), %eax	# _16->num_elem, max_parallel.432
	movl	%eax, max_parallel(%rip)	# max_parallel.432, max_parallel
.L795:
	.loc 1 2359 0
	movq	-8(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15147
	movq	-8(%rbp), %rsi	# insn, tmp86
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.15147,
	call	reg_scan_mark_refs	#
	.loc 1 2361 0
	movq	-8(%rbp), %rax	# insn, tmp87
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.15147
	testq	%rax, %rax	# D.15147
	je	.L794	#,
	.loc 1 2362 0
	movq	-8(%rbp), %rax	# insn, tmp88
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.15147
	movq	-8(%rbp), %rsi	# insn, tmp89
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.15147,
	call	reg_scan_mark_refs	#
.L794:
	.loc 1 2351 0
	movq	-8(%rbp), %rax	# insn, tmp90
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp91
	movq	%rax, -8(%rbp)	# tmp91, insn
.L792:
	.loc 1 2351 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L796	#,
	.loc 1 2365 0 is_stmt 1
	movl	max_parallel(%rip), %edx	# max_parallel, max_parallel.433
	movl	max_set_parallel(%rip), %eax	# max_set_parallel, max_set_parallel.434
	addl	%edx, %eax	# max_parallel.433, max_parallel.435
	movl	%eax, max_parallel(%rip)	# max_parallel.435, max_parallel
	.loc 1 2366 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	reg_scan, .-reg_scan
	.globl	reg_scan_update
	.type	reg_scan_update, @function
reg_scan_update:
.LFB23:
	.loc 1 2378 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# first, first
	movq	%rsi, -32(%rbp)	# last, last
	movl	%edx, -36(%rbp)	# old_max_regno, old_max_regno
	.loc 1 2381 0
	call	max_reg_num	#
	cltq
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15151,
	call	allocate_reg_info	#
	.loc 1 2383 0
	movq	-24(%rbp), %rax	# first, tmp76
	movq	%rax, -8(%rbp)	# tmp76, insn
	jmp	.L798	#
.L802:
	.loc 1 2384 0
	movq	-8(%rbp), %rax	# insn, tmp77
	movzwl	(%rax), %eax	# insn_1->code, D.15152
	cmpw	$32, %ax	#, D.15152
	je	.L799	#,
	.loc 1 2385 0
	movq	-8(%rbp), %rax	# insn, tmp78
	movzwl	(%rax), %eax	# insn_1->code, D.15152
	cmpw	$34, %ax	#, D.15152
	je	.L799	#,
	.loc 1 2386 0
	movq	-8(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_1->code, D.15152
	cmpw	$33, %ax	#, D.15152
	jne	.L800	#,
.L799:
	.loc 1 2388 0
	movq	-8(%rbp), %rax	# insn, tmp80
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15153
	movzwl	(%rax), %eax	# _10->code, D.15152
	cmpw	$39, %ax	#, D.15152
	jne	.L801	#,
	.loc 1 2389 0
	movq	-8(%rbp), %rax	# insn, tmp81
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15153
	movq	8(%rax), %rax	# _12->fld[0].rtvec, D.15154
	movl	(%rax), %edx	# _13->num_elem, D.15150
	movl	max_parallel(%rip), %eax	# max_parallel, max_parallel.436
	cmpl	%eax, %edx	# max_parallel.436, D.15150
	jle	.L801	#,
	.loc 1 2390 0
	movq	-8(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15153
	movq	8(%rax), %rax	# _16->fld[0].rtvec, D.15154
	movl	(%rax), %eax	# _17->num_elem, max_parallel.437
	movl	%eax, max_parallel(%rip)	# max_parallel.437, max_parallel
.L801:
	.loc 1 2391 0
	movq	-8(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15153
	movl	-36(%rbp), %edx	# old_max_regno, tmp84
	movq	-8(%rbp), %rsi	# insn, tmp85
	movl	%edx, %ecx	# tmp84,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.15153,
	call	reg_scan_mark_refs	#
	.loc 1 2393 0
	movq	-8(%rbp), %rax	# insn, tmp86
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.15153
	testq	%rax, %rax	# D.15153
	je	.L800	#,
	.loc 1 2394 0
	movq	-8(%rbp), %rax	# insn, tmp87
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.15153
	movl	-36(%rbp), %edx	# old_max_regno, tmp88
	movq	-8(%rbp), %rsi	# insn, tmp89
	movl	%edx, %ecx	# tmp88,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.15153,
	call	reg_scan_mark_refs	#
.L800:
	.loc 1 2383 0
	movq	-8(%rbp), %rax	# insn, tmp90
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp91
	movq	%rax, -8(%rbp)	# tmp91, insn
.L798:
	.loc 1 2383 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp92
	cmpq	-32(%rbp), %rax	# last, tmp92
	jne	.L802	#,
	.loc 1 2396 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	reg_scan_update, .-reg_scan_update
	.type	reg_scan_mark_refs, @function
reg_scan_mark_refs:
.LFB24:
	.loc 1 2409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# insn, insn
	movl	%edx, -68(%rbp)	# note_flag, note_flag
	movl	%ecx, -72(%rbp)	# min_regno, min_regno
	.loc 1 2414 0
	movq	-56(%rbp), %rax	# x, tmp242
	movzwl	(%rax), %eax	# x_5(D)->code, D.15155
	movzwl	%ax, %eax	# D.15155, tmp243
	movl	%eax, -40(%rbp)	# tmp243, code
	.loc 1 2415 0
	movl	-40(%rbp), %eax	# code, tmp245
	subl	$3, %eax	#, tmp244
	cmpl	$66, %eax	#, tmp244
	ja	.L804	#,
	movl	%eax, %eax	# tmp244, tmp246
	movq	.L806(,%rax,8), %rax	#, tmp247
	jmp	*%rax	# tmp247
	.section	.rodata
	.align 8
	.align 4
.L806:
	.quad	.L805
	.quad	.L807
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L839
	.quad	.L839
	.quad	.L804
	.quad	.L809
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L839
	.quad	.L839
	.quad	.L839
	.quad	.L804
	.quad	.L839
	.quad	.L839
	.quad	.L804
	.quad	.L810
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L804
	.quad	.L839
	.quad	.L839
	.quad	.L839
	.text
.L810:
.LBB36:
	.loc 1 2431 0
	movq	-56(%rbp), %rax	# x, tmp248
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, tmp249
	movl	%eax, -36(%rbp)	# tmp249, regno
	.loc 1 2433 0
	movl	-36(%rbp), %eax	# regno, tmp250
	cmpl	-72(%rbp), %eax	# min_regno, tmp250
	jb	.L812	#,
	.loc 1 2435 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.438
	movl	-36(%rbp), %edx	# regno, tmp251
	addq	$4, %rdx	#, tmp252
	movq	(%rax,%rdx,8), %rax	# reg_n_info.438_10->data.reg, D.15156
	movq	-64(%rbp), %rdx	# insn, tmp253
	movl	8(%rdx), %edx	# insn_12(D)->fld[0].rtint, D.15157
	movl	%edx, 8(%rax)	# D.15157, _11->last_note_uid
	.loc 1 2436 0
	cmpl	$0, -68(%rbp)	#, note_flag
	jne	.L813	#,
	.loc 1 2437 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.439
	movl	-36(%rbp), %edx	# regno, tmp254
	addq	$4, %rdx	#, tmp255
	movq	(%rax,%rdx,8), %rax	# reg_n_info.439_15->data.reg, D.15156
	movq	-64(%rbp), %rdx	# insn, tmp256
	movl	8(%rdx), %edx	# insn_12(D)->fld[0].rtint, D.15157
	movl	%edx, 4(%rax)	# D.15157, _16->last_uid
.L813:
	.loc 1 2438 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.440
	movl	-36(%rbp), %edx	# regno, tmp257
	addq	$4, %rdx	#, tmp258
	movq	(%rax,%rdx,8), %rax	# reg_n_info.440_18->data.reg, D.15156
	movl	(%rax), %eax	# _19->first_uid, D.15157
	testl	%eax, %eax	# D.15157
	jne	.L812	#,
	.loc 1 2439 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.441
	movl	-36(%rbp), %edx	# regno, tmp259
	addq	$4, %rdx	#, tmp260
	movq	(%rax,%rdx,8), %rax	# reg_n_info.441_21->data.reg, D.15156
	movq	-64(%rbp), %rdx	# insn, tmp261
	movl	8(%rdx), %edx	# insn_12(D)->fld[0].rtint, D.15157
	movl	%edx, (%rax)	# D.15157, _22->first_uid
.LBE36:
	.loc 1 2442 0
	jmp	.L803	#
.L812:
	jmp	.L803	#
.L805:
	.loc 1 2445 0
	movq	-56(%rbp), %rax	# x, tmp262
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	testq	%rax, %rax	# D.15158
	je	.L814	#,
	.loc 1 2446 0
	movq	-56(%rbp), %rax	# x, tmp263
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movl	-72(%rbp), %ecx	# min_regno, tmp264
	movl	-68(%rbp), %edx	# note_flag, tmp265
	movq	-64(%rbp), %rsi	# insn, tmp266
	movq	%rax, %rdi	# D.15158,
	call	reg_scan_mark_refs	#
.L814:
	.loc 1 2447 0
	movq	-56(%rbp), %rax	# x, tmp267
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	testq	%rax, %rax	# D.15158
	je	.L815	#,
	.loc 1 2448 0
	movq	-56(%rbp), %rax	# x, tmp268
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movl	-72(%rbp), %ecx	# min_regno, tmp269
	movl	-68(%rbp), %edx	# note_flag, tmp270
	movq	-64(%rbp), %rsi	# insn, tmp271
	movq	%rax, %rdi	# D.15158,
	call	reg_scan_mark_refs	#
	.loc 1 2449 0
	jmp	.L803	#
.L815:
	jmp	.L803	#
.L807:
	.loc 1 2452 0
	movq	-56(%rbp), %rax	# x, tmp272
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	testq	%rax, %rax	# D.15158
	je	.L816	#,
	.loc 1 2453 0
	movq	-56(%rbp), %rax	# x, tmp273
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movl	-72(%rbp), %ecx	# min_regno, tmp274
	movl	-68(%rbp), %edx	# note_flag, tmp275
	movq	-64(%rbp), %rsi	# insn, tmp276
	movq	%rax, %rdi	# D.15158,
	call	reg_scan_mark_refs	#
	.loc 1 2454 0
	jmp	.L803	#
.L816:
	jmp	.L803	#
.L809:
	.loc 1 2458 0
	movq	-56(%rbp), %rax	# x, tmp277
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, tmp278
	movq	%rax, -32(%rbp)	# tmp278, dest
	jmp	.L817	#
.L818:
	.loc 1 2461 0
	movq	-32(%rbp), %rax	# dest, tmp279
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp280
	movq	%rax, -32(%rbp)	# tmp280, dest
.L817:
	.loc 1 2459 0 discriminator 1
	movq	-32(%rbp), %rax	# dest, tmp281
	movzwl	(%rax), %eax	# dest_1->code, D.15155
	.loc 1 2458 0 discriminator 1
	cmpw	$63, %ax	#, D.15155
	je	.L818	#,
	.loc 1 2459 0
	movq	-32(%rbp), %rax	# dest, tmp282
	movzwl	(%rax), %eax	# dest_1->code, D.15155
	cmpw	$64, %ax	#, D.15155
	je	.L818	#,
	.loc 1 2460 0
	movq	-32(%rbp), %rax	# dest, tmp283
	movzwl	(%rax), %eax	# dest_1->code, D.15155
	cmpw	$121, %ax	#, D.15155
	je	.L818	#,
	.loc 1 2466 0
	movq	-32(%rbp), %rax	# dest, tmp284
	movzwl	(%rax), %eax	# dest_1->code, D.15155
	cmpw	$39, %ax	#, D.15155
	jne	.L819	#,
	.loc 1 2467 0
	movq	-32(%rbp), %rax	# dest, tmp285
	movq	8(%rax), %rax	# dest_1->fld[0].rtvec, D.15159
	movl	(%rax), %eax	# _35->num_elem, D.15157
	leal	-1(%rax), %edx	#, D.15157
	movl	max_set_parallel(%rip), %eax	# max_set_parallel, max_set_parallel.442
	cmpl	%eax, %edx	# max_set_parallel.442, D.15157
	cmovge	%edx, %eax	# D.15157,, max_set_parallel.443
	movl	%eax, max_set_parallel(%rip)	# max_set_parallel.443, max_set_parallel
.L819:
	.loc 1 2469 0
	movq	-32(%rbp), %rax	# dest, tmp286
	movzwl	(%rax), %eax	# dest_1->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L820	#,
	.loc 1 2470 0
	movq	-32(%rbp), %rax	# dest, tmp287
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.15160
	cmpl	-72(%rbp), %eax	# min_regno, D.15160
	jb	.L820	#,
	.loc 1 2472 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.444
	movq	-32(%rbp), %rdx	# dest, tmp288
	movl	8(%rdx), %edx	# dest_1->fld[0].rtuint, D.15160
	movl	%edx, %edx	# D.15160, tmp289
	addq	$4, %rdx	#, tmp290
	movq	(%rax,%rdx,8), %rax	# reg_n_info.444_42->data.reg, D.15156
	movl	12(%rax), %edx	# _44->sets, D.15157
	addl	$1, %edx	#, D.15157
	movl	%edx, 12(%rax)	# D.15157, _44->sets
	.loc 1 2473 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.445
	movq	-32(%rbp), %rdx	# dest, tmp291
	movl	8(%rdx), %edx	# dest_1->fld[0].rtuint, D.15160
	movl	%edx, %edx	# D.15160, tmp292
	addq	$4, %rdx	#, tmp293
	movq	(%rax,%rdx,8), %rax	# reg_n_info.445_47->data.reg, D.15156
	movl	16(%rax), %edx	# _49->refs, D.15157
	addl	$1, %edx	#, D.15157
	movl	%edx, 16(%rax)	# D.15157, _49->refs
.L820:
	.loc 1 2488 0
	movq	-56(%rbp), %rax	# x, tmp294
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _52->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L821	#,
	.loc 1 2489 0
	movq	-56(%rbp), %rax	# x, tmp295
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movl	8(%rax), %eax	# _54->fld[0].rtuint, D.15160
	cmpl	$52, %eax	#, D.15160
	jbe	.L821	#,
	.loc 1 2490 0
	movq	-56(%rbp), %rax	# x, tmp296
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movl	8(%rax), %eax	# _56->fld[0].rtuint, D.15160
	cmpl	-72(%rbp), %eax	# min_regno, D.15160
	jb	.L821	#,
	.loc 1 2496 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.446
	movq	-56(%rbp), %rdx	# x, tmp297
	movq	8(%rdx), %rdx	# x_5(D)->fld[0].rtx, D.15158
	movl	8(%rdx), %edx	# _59->fld[0].rtuint, D.15160
	movl	%edx, %edx	# D.15160, tmp298
	addq	$4, %rdx	#, tmp299
	movq	(%rax,%rdx,8), %rax	# reg_n_info.446_58->data.reg, D.15156
	movl	12(%rax), %eax	# _61->sets, D.15157
	cmpl	$1, %eax	#, D.15157
	jne	.L821	#,
	.loc 1 2497 0
	movq	-56(%rbp), %rax	# x, tmp300
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movzbl	3(%rax), %eax	# *_63, D.15161
	andl	$8, %eax	#, D.15161
	testb	%al, %al	# D.15161
	jne	.L821	#,
	.loc 1 2498 0
	movq	-56(%rbp), %rax	# x, tmp301
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movzbl	3(%rax), %eax	# *_66, D.15161
	andl	$-128, %eax	#, D.15161
	testb	%al, %al	# D.15161
	jne	.L821	#,
	.loc 1 2499 0
	movq	-56(%rbp), %rax	# x, tmp302
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _69->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L822	#,
	.loc 1 2500 0
	movq	-56(%rbp), %rax	# x, tmp303
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzbl	3(%rax), %eax	# *_71, D.15161
	andl	$-128, %eax	#, D.15161
	testb	%al, %al	# D.15161
	jne	.L823	#,
.L822:
	.loc 1 2501 0
	movq	-56(%rbp), %rax	# x, tmp304
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _74->code, D.15155
	cmpw	$75, %ax	#, D.15155
	je	.L824	#,
	.loc 1 2502 0
	movq	-56(%rbp), %rax	# x, tmp305
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _76->code, D.15155
	cmpw	$135, %ax	#, D.15155
	jne	.L825	#,
.L824:
	.loc 1 2503 0
	movq	-56(%rbp), %rax	# x, tmp306
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	16(%rax), %rax	# _78->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _79->code, D.15155
	cmpw	$54, %ax	#, D.15155
	jne	.L825	#,
	.loc 1 2504 0
	movq	-56(%rbp), %rax	# x, tmp307
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	8(%rax), %rax	# _81->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _82->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L825	#,
	.loc 1 2505 0
	movq	-56(%rbp), %rax	# x, tmp308
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	8(%rax), %rax	# _84->fld[0].rtx, D.15158
	movzbl	3(%rax), %eax	# *_85, D.15161
	andl	$-128, %eax	#, D.15161
	testb	%al, %al	# D.15161
	jne	.L823	#,
.L825:
	.loc 1 2506 0
	movq	-56(%rbp), %rax	# x, tmp309
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _88->code, D.15155
	cmpw	$58, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2507 0
	movq	-56(%rbp), %rax	# x, tmp310
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _90->code, D.15155
	cmpw	$68, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2508 0
	movq	-56(%rbp), %rax	# x, tmp311
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _92->code, D.15155
	cmpw	$67, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2509 0
	movq	-56(%rbp), %rax	# x, tmp312
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _94->code, D.15155
	cmpw	$134, %ax	#, D.15155
	jne	.L826	#,
	.loc 1 2510 0
	movq	-56(%rbp), %rax	# x, tmp313
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	8(%rax), %rax	# _96->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _97->code, D.15155
	cmpw	$58, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2511 0
	movq	-56(%rbp), %rax	# x, tmp314
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	8(%rax), %rax	# _99->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _100->code, D.15155
	cmpw	$68, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2512 0
	movq	-56(%rbp), %rax	# x, tmp315
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	8(%rax), %rax	# _102->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _103->code, D.15155
	cmpw	$67, %ax	#, D.15155
	je	.L823	#,
.L826:
	.loc 1 2513 0
	movq	-56(%rbp), %rax	# x, tmp316
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _105->code, D.15155
	cmpw	$75, %ax	#, D.15155
	je	.L827	#,
	.loc 1 2514 0
	movq	-56(%rbp), %rax	# x, tmp317
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _107->code, D.15155
	cmpw	$135, %ax	#, D.15155
	jne	.L828	#,
.L827:
	.loc 1 2515 0
	movq	-56(%rbp), %rax	# x, tmp318
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	16(%rax), %rax	# _109->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _110->code, D.15155
	cmpw	$58, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2516 0
	movq	-56(%rbp), %rax	# x, tmp319
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	16(%rax), %rax	# _112->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _113->code, D.15155
	cmpw	$68, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2517 0
	movq	-56(%rbp), %rax	# x, tmp320
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.15158
	movq	16(%rax), %rax	# _115->fld[1].rtx, D.15158
	movzwl	(%rax), %eax	# _116->code, D.15155
	cmpw	$67, %ax	#, D.15155
	je	.L823	#,
.L828:
	.loc 1 2518 0
	movq	-64(%rbp), %rax	# insn, tmp321
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp321,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp322, note
	cmpq	$0, -16(%rbp)	#, note
	je	.L821	#,
	.loc 1 2519 0
	movq	-16(%rbp), %rax	# note, tmp323
	movq	8(%rax), %rax	# note_118->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _119->code, D.15155
	cmpw	$58, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2520 0
	movq	-16(%rbp), %rax	# note, tmp324
	movq	8(%rax), %rax	# note_118->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _121->code, D.15155
	cmpw	$68, %ax	#, D.15155
	je	.L823	#,
	.loc 1 2521 0
	movq	-16(%rbp), %rax	# note, tmp325
	movq	8(%rax), %rax	# note_118->fld[0].rtx, D.15158
	movzwl	(%rax), %eax	# _123->code, D.15155
	cmpw	$67, %ax	#, D.15155
	jne	.L821	#,
.L823:
	.loc 1 2522 0
	movq	-56(%rbp), %rax	# x, tmp326
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.15158
	movzbl	3(%rax), %edx	# _125->frame_related, tmp329
	orl	$-128, %edx	#, tmp330
	movb	%dl, 3(%rax)	# tmp330, _125->frame_related
.L821:
	.loc 1 2526 0
	movq	-32(%rbp), %rax	# dest, tmp331
	movzwl	(%rax), %eax	# dest_1->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L804	#,
.LBB37:
	.loc 1 2528 0
	movq	-56(%rbp), %rax	# x, tmp332
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, tmp333
	movq	%rax, -24(%rbp)	# tmp333, src
	.loc 1 2530 0
	jmp	.L829	#
.L830:
	.loc 1 2534 0
	movq	-24(%rbp), %rax	# src, tmp334
	movq	8(%rax), %rax	# src_2->fld[0].rtx, tmp335
	movq	%rax, -24(%rbp)	# tmp335, src
.L829:
	.loc 1 2530 0 discriminator 1
	movq	-24(%rbp), %rax	# src, tmp336
	movzwl	(%rax), %eax	# src_2->code, D.15155
	cmpw	$120, %ax	#, D.15155
	je	.L830	#,
	.loc 1 2531 0
	movq	-24(%rbp), %rax	# src, tmp337
	movzwl	(%rax), %eax	# src_2->code, D.15155
	cmpw	$121, %ax	#, D.15155
	je	.L830	#,
	.loc 1 2532 0
	movq	-24(%rbp), %rax	# src, tmp338
	movzwl	(%rax), %eax	# src_2->code, D.15155
	cmpw	$122, %ax	#, D.15155
	je	.L830	#,
	.loc 1 2533 0
	movq	-24(%rbp), %rax	# src, tmp339
	movzwl	(%rax), %eax	# src_2->code, D.15155
	cmpw	$63, %ax	#, D.15155
	jne	.L831	#,
	.loc 1 2533 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# src, tmp340
	movq	%rax, %rdi	# tmp340,
	call	subreg_lowpart_p	#
	testl	%eax, %eax	# D.15157
	jne	.L830	#,
.L831:
	.loc 1 2536 0 is_stmt 1
	movq	-24(%rbp), %rax	# src, tmp341
	movzwl	(%rax), %eax	# src_2->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L832	#,
	.loc 1 2536 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.447
	movq	24(%rax), %rax	# cfun.447_134->emit, D.15162
	movq	72(%rax), %rdx	# _135->regno_decl, D.15163
	movq	-24(%rbp), %rax	# src, tmp342
	movl	8(%rax), %eax	# src_2->fld[0].rtuint, D.15160
	movl	%eax, %eax	# D.15160, D.15164
	salq	$3, %rax	#, D.15164
	addq	%rdx, %rax	# D.15163, D.15163
	movq	(%rax), %rax	# *_140, D.15165
	testq	%rax, %rax	# D.15165
	jne	.L832	#,
	.loc 1 2537 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.448
	movq	24(%rax), %rax	# cfun.448_142->emit, D.15162
	movq	72(%rax), %rdx	# _143->regno_decl, D.15163
	movq	-24(%rbp), %rax	# src, tmp343
	movl	8(%rax), %eax	# src_2->fld[0].rtuint, D.15160
	movl	%eax, %eax	# D.15160, D.15164
	salq	$3, %rax	#, D.15164
	addq	%rax, %rdx	# D.15164, D.15163
	movq	cfun(%rip), %rax	# cfun, cfun.449
	movq	24(%rax), %rax	# cfun.449_149->emit, D.15162
	movq	72(%rax), %rcx	# _150->regno_decl, D.15163
	movq	-32(%rbp), %rax	# dest, tmp344
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.15160
	movl	%eax, %eax	# D.15160, D.15164
	salq	$3, %rax	#, D.15164
	addq	%rcx, %rax	# D.15163, D.15163
	movq	(%rax), %rax	# *_155, D.15165
	movq	%rax, (%rdx)	# D.15165, *_148
	jmp	.L804	#
.L832:
	.loc 1 2538 0
	movq	-24(%rbp), %rax	# src, tmp345
	movzwl	(%rax), %eax	# src_2->code, D.15155
	cmpw	$61, %ax	#, D.15155
	jne	.L804	#,
	.loc 1 2538 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.450
	movq	24(%rax), %rax	# cfun.450_158->emit, D.15162
	movq	72(%rax), %rdx	# _159->regno_decl, D.15163
	movq	-32(%rbp), %rax	# dest, tmp346
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.15160
	movl	%eax, %eax	# D.15160, D.15164
	salq	$3, %rax	#, D.15164
	addq	%rdx, %rax	# D.15163, D.15163
	movq	(%rax), %rax	# *_164, D.15165
	testq	%rax, %rax	# D.15165
	jne	.L804	#,
	.loc 1 2539 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.451
	movq	24(%rax), %rax	# cfun.451_166->emit, D.15162
	movq	72(%rax), %rdx	# _167->regno_decl, D.15163
	movq	-32(%rbp), %rax	# dest, tmp347
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.15160
	movl	%eax, %eax	# D.15160, D.15164
	salq	$3, %rax	#, D.15164
	addq	%rax, %rdx	# D.15164, D.15163
	movq	cfun(%rip), %rax	# cfun, cfun.452
	movq	24(%rax), %rax	# cfun.452_173->emit, D.15162
	movq	72(%rax), %rcx	# _174->regno_decl, D.15163
	movq	-24(%rbp), %rax	# src, tmp348
	movl	8(%rax), %eax	# src_2->fld[0].rtuint, D.15160
	movl	%eax, %eax	# D.15160, D.15164
	salq	$3, %rax	#, D.15164
	addq	%rcx, %rax	# D.15163, D.15163
	movq	(%rax), %rax	# *_179, D.15165
	movq	%rax, (%rdx)	# D.15165, *_172
.L804:
.LBE37:
.LBB38:
	.loc 1 2546 0
	movl	-40(%rbp), %eax	# code, code.453
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp350
	movq	%rax, -8(%rbp)	# tmp350, fmt
	.loc 1 2548 0
	movl	-40(%rbp), %eax	# code, code.454
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15161
	movzbl	%al, %eax	# D.15161, D.15157
	subl	$1, %eax	#, tmp352
	movl	%eax, -48(%rbp)	# tmp352, i
	jmp	.L833	#
.L838:
	.loc 1 2550 0
	movl	-48(%rbp), %eax	# i, tmp353
	movslq	%eax, %rdx	# tmp353, D.15166
	movq	-8(%rbp), %rax	# fmt, tmp354
	addq	%rdx, %rax	# D.15166, D.15167
	movzbl	(%rax), %eax	# *_190, D.15168
	cmpb	$101, %al	#, D.15168
	jne	.L834	#,
	.loc 1 2551 0
	movq	-56(%rbp), %rax	# x, tmp355
	movl	-48(%rbp), %edx	# i, tmp357
	movslq	%edx, %rdx	# tmp357, tmp356
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtx, D.15158
	movl	-72(%rbp), %ecx	# min_regno, tmp358
	movl	-68(%rbp), %edx	# note_flag, tmp359
	movq	-64(%rbp), %rsi	# insn, tmp360
	movq	%rax, %rdi	# D.15158,
	call	reg_scan_mark_refs	#
	jmp	.L835	#
.L834:
	.loc 1 2552 0
	movl	-48(%rbp), %eax	# i, tmp361
	movslq	%eax, %rdx	# tmp361, D.15166
	movq	-8(%rbp), %rax	# fmt, tmp362
	addq	%rdx, %rax	# D.15166, D.15167
	movzbl	(%rax), %eax	# *_194, D.15168
	cmpb	$69, %al	#, D.15168
	jne	.L835	#,
	.loc 1 2552 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp363
	movl	-48(%rbp), %edx	# i, tmp365
	movslq	%edx, %rdx	# tmp365, tmp364
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtvec, D.15159
	testq	%rax, %rax	# D.15159
	je	.L835	#,
.LBB39:
	.loc 1 2555 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp366
	movl	-48(%rbp), %edx	# i, tmp368
	movslq	%edx, %rdx	# tmp368, tmp367
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtvec, D.15159
	movl	(%rax), %eax	# _197->num_elem, D.15157
	subl	$1, %eax	#, tmp369
	movl	%eax, -44(%rbp)	# tmp369, j
	jmp	.L836	#
.L837:
	.loc 1 2556 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp370
	movl	-48(%rbp), %edx	# i, tmp372
	movslq	%edx, %rdx	# tmp372, tmp371
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtvec, D.15159
	movl	-44(%rbp), %edx	# j, tmp374
	movslq	%edx, %rdx	# tmp374, tmp373
	movq	8(%rax,%rdx,8), %rax	# _200->elem, D.15158
	movl	-72(%rbp), %ecx	# min_regno, tmp375
	movl	-68(%rbp), %edx	# note_flag, tmp376
	movq	-64(%rbp), %rsi	# insn, tmp377
	movq	%rax, %rdi	# D.15158,
	call	reg_scan_mark_refs	#
	.loc 1 2555 0 discriminator 2
	subl	$1, -44(%rbp)	#, j
.L836:
	.loc 1 2555 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, j
	jns	.L837	#,
.L835:
.LBE39:
	.loc 1 2548 0 is_stmt 1
	subl	$1, -48(%rbp)	#, i
.L833:
	.loc 1 2548 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, i
	jns	.L838	#,
	jmp	.L803	#
.L839:
.LBE38:
	.loc 1 2427 0 is_stmt 1
	nop
.L803:
	.loc 1 2561 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	reg_scan_mark_refs, .-reg_scan_mark_refs
	.globl	reg_class_subset_p
	.type	reg_class_subset_p, @function
reg_class_subset_p:
.LFB25:
	.loc 1 2570 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# c1, c1
	movl	%esi, -8(%rbp)	# c2, c2
	.loc 1 2571 0
	movl	-4(%rbp), %eax	# c1, tmp67
	cmpl	-8(%rbp), %eax	# c2, tmp67
	jne	.L841	#,
	.loc 1 2571 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.15169
	jmp	.L842	#
.L841:
	.loc 1 2573 0 is_stmt 1
	cmpl	$24, -8(%rbp)	#, c2
	jne	.L843	#,
.L844:
	.loc 1 2575 0
	movl	$1, %eax	#, D.15169
	jmp	.L842	#
.L843:
	.loc 1 2576 0
	movl	-4(%rbp), %eax	# c1, c1.455
	cltq
	movq	reg_class_contents(,%rax,8), %rdx	# reg_class_contents, D.15170
	movl	-8(%rbp), %eax	# c2, c2.456
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15170
	notq	%rax	# D.15170
	andq	%rdx, %rax	# D.15170, D.15170
	testq	%rax, %rax	# D.15170
	jne	.L845	#,
	.loc 1 2576 0 is_stmt 0 discriminator 1
	jmp	.L844	#
.L845:
	.loc 1 2579 0 is_stmt 1
	movl	$0, %eax	#, D.15169
.L842:
	.loc 1 2580 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	reg_class_subset_p, .-reg_class_subset_p
	.globl	reg_classes_intersect_p
	.type	reg_classes_intersect_p, @function
reg_classes_intersect_p:
.LFB26:
	.loc 1 2588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)	# c1, c1
	movl	%esi, -16(%rbp)	# c2, c2
	.loc 1 2594 0
	movl	-12(%rbp), %eax	# c1, tmp68
	cmpl	-16(%rbp), %eax	# c2, tmp68
	jne	.L847	#,
	.loc 1 2594 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.15171
	jmp	.L848	#
.L847:
	.loc 1 2596 0 is_stmt 1
	cmpl	$24, -12(%rbp)	#, c1
	je	.L849	#,
	.loc 1 2596 0 is_stmt 0 discriminator 1
	cmpl	$24, -16(%rbp)	#, c2
	jne	.L850	#,
.L849:
	.loc 1 2597 0 is_stmt 1
	movl	$1, %eax	#, D.15171
	jmp	.L848	#
.L850:
	.loc 1 2599 0
	movl	-12(%rbp), %eax	# c1, c1.457
	cltq
	movq	reg_class_contents(,%rax,8), %rbx	# reg_class_contents, c
	.loc 1 2600 0
	movl	-16(%rbp), %eax	# c2, c2.458
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.15172
	andq	%rax, %rbx	# D.15172, c
	.loc 1 2602 0
	movq	reg_class_contents(%rip), %rax	# reg_class_contents, D.15172
	notq	%rax	# D.15172
	andq	%rbx, %rax	# c, D.15172
	testq	%rax, %rax	# D.15172
	jne	.L851	#,
	.loc 1 2602 0 is_stmt 0 discriminator 1
	nop
.L852:
	.loc 1 2606 0 is_stmt 1 discriminator 1
	movl	$0, %eax	#, D.15171
	jmp	.L848	#
.L851:
	.loc 1 2603 0
	movl	$1, %eax	#, D.15171
.L848:
	.loc 1 2607 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	reg_classes_intersect_p, .-reg_classes_intersect_p
	.globl	regset_release_memory
	.type	regset_release_memory, @function
regset_release_memory:
.LFB27:
	.loc 1 2613 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2614 0
	call	bitmap_release_memory	#
	.loc 1 2615 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	regset_release_memory, .-regset_release_memory
	.section	.rodata
.LC14:
	.string	"call-saved"
.LC15:
	.string	"call-used"
.LC16:
	.string	"no-such-option"
.LC17:
	.string	"fixed"
	.align 32
	.type	what_option.11623, @object
	.size	what_option.11623, 32
what_option.11623:
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
.LC18:
	.string	"NO_REGS"
.LC19:
	.string	"AREG"
.LC20:
	.string	"DREG"
.LC21:
	.string	"CREG"
.LC22:
	.string	"BREG"
.LC23:
	.string	"SIREG"
.LC24:
	.string	"DIREG"
.LC25:
	.string	"AD_REGS"
.LC26:
	.string	"Q_REGS"
.LC27:
	.string	"NON_Q_REGS"
.LC28:
	.string	"INDEX_REGS"
.LC29:
	.string	"LEGACY_REGS"
.LC30:
	.string	"GENERAL_REGS"
.LC31:
	.string	"FP_TOP_REG"
.LC32:
	.string	"FP_SECOND_REG"
.LC33:
	.string	"FLOAT_REGS"
.LC34:
	.string	"SSE_REGS"
.LC35:
	.string	"MMX_REGS"
.LC36:
	.string	"FP_TOP_SSE_REGS"
.LC37:
	.string	"FP_SECOND_SSE_REGS"
.LC38:
	.string	"FLOAT_SSE_REGS"
.LC39:
	.string	"FLOAT_INT_REGS"
.LC40:
	.string	"INT_SSE_REGS"
.LC41:
	.string	"FLOAT_INT_SSE_REGS"
.LC42:
	.string	"ALL_REGS"
	.align 32
	.type	reg_class_names.11685, @object
	.size	reg_class_names.11685, 200
reg_class_names.11685:
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.align 32
	.type	reg_class_names.11777, @object
	.size	reg_class_names.11777, 200
reg_class_names.11777:
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
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
	.file 17 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3373
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF747
	.byte	0x1
	.long	.LASF748
	.long	.LASF749
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
	.long	0xd80
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
	.long	0xd90
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
	.long	.LASF750
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
	.long	.LASF751
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
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF108
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF109
	.uleb128 0x16
	.long	.LASF110
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x69e
	.uleb128 0xe
	.long	.LASF111
	.sleb128 0
	.uleb128 0xe
	.long	.LASF112
	.sleb128 1
	.uleb128 0xe
	.long	.LASF113
	.sleb128 2
	.uleb128 0xe
	.long	.LASF114
	.sleb128 3
	.uleb128 0xe
	.long	.LASF115
	.sleb128 4
	.uleb128 0xe
	.long	.LASF116
	.sleb128 5
	.uleb128 0xe
	.long	.LASF117
	.sleb128 6
	.uleb128 0xe
	.long	.LASF118
	.sleb128 7
	.uleb128 0xe
	.long	.LASF119
	.sleb128 8
	.uleb128 0xe
	.long	.LASF120
	.sleb128 9
	.uleb128 0xe
	.long	.LASF121
	.sleb128 10
	.uleb128 0xe
	.long	.LASF122
	.sleb128 11
	.uleb128 0xe
	.long	.LASF123
	.sleb128 12
	.uleb128 0xe
	.long	.LASF124
	.sleb128 13
	.uleb128 0xe
	.long	.LASF125
	.sleb128 14
	.uleb128 0xe
	.long	.LASF126
	.sleb128 15
	.uleb128 0xe
	.long	.LASF127
	.sleb128 16
	.uleb128 0xe
	.long	.LASF128
	.sleb128 17
	.uleb128 0xe
	.long	.LASF129
	.sleb128 18
	.uleb128 0xe
	.long	.LASF130
	.sleb128 19
	.uleb128 0xe
	.long	.LASF131
	.sleb128 20
	.uleb128 0xe
	.long	.LASF132
	.sleb128 21
	.uleb128 0xe
	.long	.LASF133
	.sleb128 22
	.uleb128 0xe
	.long	.LASF134
	.sleb128 23
	.uleb128 0xe
	.long	.LASF135
	.sleb128 24
	.uleb128 0xe
	.long	.LASF136
	.sleb128 25
	.uleb128 0xe
	.long	.LASF137
	.sleb128 26
	.uleb128 0xe
	.long	.LASF138
	.sleb128 27
	.uleb128 0xe
	.long	.LASF139
	.sleb128 28
	.uleb128 0xe
	.long	.LASF140
	.sleb128 29
	.uleb128 0xe
	.long	.LASF141
	.sleb128 30
	.uleb128 0xe
	.long	.LASF142
	.sleb128 31
	.uleb128 0xe
	.long	.LASF143
	.sleb128 32
	.uleb128 0xe
	.long	.LASF144
	.sleb128 33
	.uleb128 0xe
	.long	.LASF145
	.sleb128 34
	.uleb128 0xe
	.long	.LASF146
	.sleb128 35
	.uleb128 0xe
	.long	.LASF147
	.sleb128 36
	.uleb128 0xe
	.long	.LASF148
	.sleb128 37
	.uleb128 0xe
	.long	.LASF149
	.sleb128 38
	.uleb128 0xe
	.long	.LASF150
	.sleb128 39
	.uleb128 0xe
	.long	.LASF151
	.sleb128 40
	.uleb128 0xe
	.long	.LASF152
	.sleb128 41
	.uleb128 0xe
	.long	.LASF153
	.sleb128 42
	.uleb128 0xe
	.long	.LASF154
	.sleb128 43
	.uleb128 0xe
	.long	.LASF155
	.sleb128 44
	.uleb128 0xe
	.long	.LASF156
	.sleb128 45
	.uleb128 0xe
	.long	.LASF157
	.sleb128 46
	.uleb128 0xe
	.long	.LASF158
	.sleb128 47
	.uleb128 0xe
	.long	.LASF159
	.sleb128 48
	.uleb128 0xe
	.long	.LASF160
	.sleb128 49
	.uleb128 0xe
	.long	.LASF161
	.sleb128 50
	.uleb128 0xe
	.long	.LASF162
	.sleb128 51
	.uleb128 0xe
	.long	.LASF163
	.sleb128 52
	.uleb128 0xe
	.long	.LASF164
	.sleb128 53
	.uleb128 0xe
	.long	.LASF165
	.sleb128 54
	.uleb128 0xe
	.long	.LASF166
	.sleb128 55
	.uleb128 0xe
	.long	.LASF167
	.sleb128 56
	.uleb128 0xe
	.long	.LASF168
	.sleb128 57
	.uleb128 0xe
	.long	.LASF169
	.sleb128 58
	.uleb128 0xe
	.long	.LASF170
	.sleb128 59
	.byte	0
	.uleb128 0x16
	.long	.LASF171
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x6e7
	.uleb128 0xe
	.long	.LASF172
	.sleb128 0
	.uleb128 0xe
	.long	.LASF173
	.sleb128 1
	.uleb128 0xe
	.long	.LASF174
	.sleb128 2
	.uleb128 0xe
	.long	.LASF175
	.sleb128 3
	.uleb128 0xe
	.long	.LASF176
	.sleb128 4
	.uleb128 0xe
	.long	.LASF177
	.sleb128 5
	.uleb128 0xe
	.long	.LASF178
	.sleb128 6
	.uleb128 0xe
	.long	.LASF179
	.sleb128 7
	.uleb128 0xe
	.long	.LASF180
	.sleb128 8
	.uleb128 0xe
	.long	.LASF181
	.sleb128 9
	.byte	0
	.uleb128 0x16
	.long	.LASF182
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xae3
	.uleb128 0xe
	.long	.LASF183
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF184
	.sleb128 2
	.uleb128 0xe
	.long	.LASF185
	.sleb128 3
	.uleb128 0xe
	.long	.LASF186
	.sleb128 4
	.uleb128 0xe
	.long	.LASF187
	.sleb128 5
	.uleb128 0xe
	.long	.LASF188
	.sleb128 6
	.uleb128 0xe
	.long	.LASF189
	.sleb128 7
	.uleb128 0xe
	.long	.LASF190
	.sleb128 8
	.uleb128 0xe
	.long	.LASF191
	.sleb128 9
	.uleb128 0xe
	.long	.LASF192
	.sleb128 10
	.uleb128 0xe
	.long	.LASF193
	.sleb128 11
	.uleb128 0xe
	.long	.LASF194
	.sleb128 12
	.uleb128 0xe
	.long	.LASF195
	.sleb128 13
	.uleb128 0xe
	.long	.LASF196
	.sleb128 14
	.uleb128 0xe
	.long	.LASF197
	.sleb128 15
	.uleb128 0xe
	.long	.LASF198
	.sleb128 16
	.uleb128 0xe
	.long	.LASF199
	.sleb128 17
	.uleb128 0xe
	.long	.LASF200
	.sleb128 18
	.uleb128 0xe
	.long	.LASF201
	.sleb128 19
	.uleb128 0xe
	.long	.LASF202
	.sleb128 20
	.uleb128 0xe
	.long	.LASF203
	.sleb128 21
	.uleb128 0xe
	.long	.LASF204
	.sleb128 22
	.uleb128 0xe
	.long	.LASF205
	.sleb128 23
	.uleb128 0xe
	.long	.LASF206
	.sleb128 24
	.uleb128 0xe
	.long	.LASF207
	.sleb128 25
	.uleb128 0xe
	.long	.LASF208
	.sleb128 26
	.uleb128 0xe
	.long	.LASF209
	.sleb128 27
	.uleb128 0xe
	.long	.LASF210
	.sleb128 28
	.uleb128 0xe
	.long	.LASF211
	.sleb128 29
	.uleb128 0xe
	.long	.LASF212
	.sleb128 30
	.uleb128 0xe
	.long	.LASF213
	.sleb128 31
	.uleb128 0xe
	.long	.LASF214
	.sleb128 32
	.uleb128 0xe
	.long	.LASF215
	.sleb128 33
	.uleb128 0xe
	.long	.LASF216
	.sleb128 34
	.uleb128 0xe
	.long	.LASF217
	.sleb128 35
	.uleb128 0xe
	.long	.LASF218
	.sleb128 36
	.uleb128 0xe
	.long	.LASF219
	.sleb128 37
	.uleb128 0xe
	.long	.LASF220
	.sleb128 38
	.uleb128 0xe
	.long	.LASF221
	.sleb128 39
	.uleb128 0xe
	.long	.LASF222
	.sleb128 40
	.uleb128 0xe
	.long	.LASF223
	.sleb128 41
	.uleb128 0xe
	.long	.LASF224
	.sleb128 42
	.uleb128 0xe
	.long	.LASF225
	.sleb128 43
	.uleb128 0xe
	.long	.LASF226
	.sleb128 44
	.uleb128 0xe
	.long	.LASF227
	.sleb128 45
	.uleb128 0xe
	.long	.LASF228
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF229
	.sleb128 49
	.uleb128 0xe
	.long	.LASF230
	.sleb128 50
	.uleb128 0xe
	.long	.LASF231
	.sleb128 51
	.uleb128 0xe
	.long	.LASF232
	.sleb128 52
	.uleb128 0xe
	.long	.LASF233
	.sleb128 53
	.uleb128 0xe
	.long	.LASF234
	.sleb128 54
	.uleb128 0xe
	.long	.LASF235
	.sleb128 55
	.uleb128 0xe
	.long	.LASF236
	.sleb128 56
	.uleb128 0xe
	.long	.LASF237
	.sleb128 57
	.uleb128 0xe
	.long	.LASF238
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF239
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF240
	.sleb128 62
	.uleb128 0xe
	.long	.LASF241
	.sleb128 63
	.uleb128 0xe
	.long	.LASF242
	.sleb128 64
	.uleb128 0xe
	.long	.LASF243
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF244
	.sleb128 67
	.uleb128 0xe
	.long	.LASF245
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF246
	.sleb128 70
	.uleb128 0xe
	.long	.LASF247
	.sleb128 71
	.uleb128 0xe
	.long	.LASF248
	.sleb128 72
	.uleb128 0xe
	.long	.LASF249
	.sleb128 73
	.uleb128 0xe
	.long	.LASF250
	.sleb128 74
	.uleb128 0xe
	.long	.LASF251
	.sleb128 75
	.uleb128 0xe
	.long	.LASF252
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF253
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF254
	.sleb128 81
	.uleb128 0xe
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
	.uleb128 0xe
	.long	.LASF256
	.sleb128 87
	.uleb128 0xe
	.long	.LASF257
	.sleb128 88
	.uleb128 0xe
	.long	.LASF258
	.sleb128 89
	.uleb128 0xe
	.long	.LASF259
	.sleb128 90
	.uleb128 0xe
	.long	.LASF260
	.sleb128 91
	.uleb128 0xe
	.long	.LASF261
	.sleb128 92
	.uleb128 0xe
	.long	.LASF262
	.sleb128 93
	.uleb128 0xe
	.long	.LASF263
	.sleb128 94
	.uleb128 0xe
	.long	.LASF264
	.sleb128 95
	.uleb128 0xe
	.long	.LASF265
	.sleb128 96
	.uleb128 0xe
	.long	.LASF266
	.sleb128 97
	.uleb128 0xe
	.long	.LASF267
	.sleb128 98
	.uleb128 0xe
	.long	.LASF268
	.sleb128 99
	.uleb128 0xe
	.long	.LASF269
	.sleb128 100
	.uleb128 0xe
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
	.uleb128 0xe
	.long	.LASF271
	.sleb128 112
	.uleb128 0xe
	.long	.LASF272
	.sleb128 113
	.uleb128 0xe
	.long	.LASF273
	.sleb128 114
	.uleb128 0xe
	.long	.LASF274
	.sleb128 115
	.uleb128 0xe
	.long	.LASF275
	.sleb128 116
	.uleb128 0xe
	.long	.LASF276
	.sleb128 117
	.uleb128 0xe
	.long	.LASF277
	.sleb128 118
	.uleb128 0xe
	.long	.LASF278
	.sleb128 119
	.uleb128 0xe
	.long	.LASF279
	.sleb128 120
	.uleb128 0xe
	.long	.LASF280
	.sleb128 121
	.uleb128 0xe
	.long	.LASF281
	.sleb128 122
	.uleb128 0xe
	.long	.LASF282
	.sleb128 123
	.uleb128 0xe
	.long	.LASF283
	.sleb128 124
	.uleb128 0xe
	.long	.LASF284
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF285
	.sleb128 127
	.uleb128 0xe
	.long	.LASF286
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF287
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF288
	.sleb128 132
	.uleb128 0xe
	.long	.LASF289
	.sleb128 133
	.uleb128 0xe
	.long	.LASF290
	.sleb128 134
	.uleb128 0xe
	.long	.LASF291
	.sleb128 135
	.uleb128 0xe
	.long	.LASF292
	.sleb128 136
	.uleb128 0xe
	.long	.LASF293
	.sleb128 137
	.uleb128 0xe
	.long	.LASF294
	.sleb128 138
	.uleb128 0xe
	.long	.LASF295
	.sleb128 139
	.uleb128 0xe
	.long	.LASF296
	.sleb128 140
	.uleb128 0xe
	.long	.LASF297
	.sleb128 141
	.uleb128 0xe
	.long	.LASF298
	.sleb128 142
	.uleb128 0xe
	.long	.LASF299
	.sleb128 143
	.uleb128 0xe
	.long	.LASF300
	.sleb128 144
	.uleb128 0xe
	.long	.LASF301
	.sleb128 145
	.uleb128 0xe
	.long	.LASF302
	.sleb128 146
	.uleb128 0xe
	.long	.LASF303
	.sleb128 147
	.uleb128 0xe
	.long	.LASF304
	.sleb128 148
	.uleb128 0xe
	.long	.LASF305
	.sleb128 149
	.uleb128 0xe
	.long	.LASF306
	.sleb128 150
	.uleb128 0xe
	.long	.LASF307
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF308
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb64
	.uleb128 0x5
	.long	.LASF309
	.byte	0x2
	.byte	0x47
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF310
	.byte	0x2
	.byte	0x49
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF311
	.byte	0x2
	.byte	0x4a
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF312
	.byte	0x2
	.byte	0x4c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF313
	.byte	0x2
	.byte	0x4e
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF314
	.byte	0x2
	.byte	0x50
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF315
	.byte	0x2
	.byte	0x53
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF316
	.byte	0x2
	.byte	0x55
	.long	0x2a9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF317
	.byte	0x2
	.byte	0x56
	.long	0xae3
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xbb4
	.uleb128 0x8
	.long	.LASF318
	.byte	0x2
	.byte	0x5e
	.long	0x2b2
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
	.long	0x2a9
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF323
	.byte	0x2
	.byte	0x63
	.long	0xb6f
	.uleb128 0x19
	.long	.LASF430
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc5a
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x2
	.byte	0x69
	.long	0x2b2
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x2
	.byte	0x6b
	.long	0x2a9
	.uleb128 0x1a
	.long	.LASF327
	.byte	0x2
	.byte	0x6c
	.long	0x510
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
	.long	0x529
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x2
	.byte	0x70
	.long	0xb64
	.uleb128 0x1a
	.long	.LASF330
	.byte	0x2
	.byte	0x71
	.long	0xc5f
	.uleb128 0x1a
	.long	.LASF331
	.byte	0x2
	.byte	0x72
	.long	0xc96
	.uleb128 0x1a
	.long	.LASF332
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd69
	.uleb128 0x1a
	.long	.LASF333
	.byte	0x2
	.byte	0x75
	.long	0xd6f
	.byte	0
	.uleb128 0x1c
	.long	.LASF438
	.uleb128 0x3
	.byte	0x8
	.long	0xc5a
	.uleb128 0x4
	.long	.LASF334
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc96
	.uleb128 0x8
	.long	.LASF335
	.byte	0xa
	.byte	0x35
	.long	0xfd6
	.byte	0
	.uleb128 0x8
	.long	.LASF336
	.byte	0xa
	.byte	0x36
	.long	0xfd6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF337
	.byte	0xa
	.byte	0x37
	.long	0x2a9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc65
	.uleb128 0x4
	.long	.LASF338
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd69
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
	.long	0x13b8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xb7
	.long	0x13b8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF344
	.byte	0xb
	.byte	0xbc
	.long	0x1323
	.byte	0x30
	.uleb128 0x8
	.long	.LASF345
	.byte	0xb
	.byte	0xc0
	.long	0x1323
	.byte	0x38
	.uleb128 0x8
	.long	.LASF346
	.byte	0xb
	.byte	0xc6
	.long	0x1323
	.byte	0x40
	.uleb128 0x8
	.long	.LASF347
	.byte	0xb
	.byte	0xc8
	.long	0x1323
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x2b0
	.byte	0x50
	.uleb128 0x8
	.long	.LASF348
	.byte	0xb
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF349
	.byte	0xb
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF350
	.byte	0xb
	.byte	0xd4
	.long	0x132e
	.byte	0x60
	.uleb128 0x8
	.long	.LASF351
	.byte	0xb
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF352
	.byte	0xb
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc9c
	.uleb128 0x3
	.byte	0x8
	.long	0xbb4
	.uleb128 0x7
	.long	.LASF353
	.byte	0x2
	.byte	0x76
	.long	0xbbf
	.uleb128 0x13
	.long	0xd75
	.long	0xd90
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0xda0
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF354
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe62
	.uleb128 0xe
	.long	.LASF355
	.sleb128 1
	.uleb128 0xe
	.long	.LASF356
	.sleb128 2
	.uleb128 0xe
	.long	.LASF357
	.sleb128 3
	.uleb128 0xe
	.long	.LASF358
	.sleb128 4
	.uleb128 0xe
	.long	.LASF359
	.sleb128 5
	.uleb128 0xe
	.long	.LASF360
	.sleb128 6
	.uleb128 0xe
	.long	.LASF361
	.sleb128 7
	.uleb128 0xe
	.long	.LASF362
	.sleb128 8
	.uleb128 0xe
	.long	.LASF363
	.sleb128 9
	.uleb128 0xe
	.long	.LASF364
	.sleb128 10
	.uleb128 0xe
	.long	.LASF365
	.sleb128 11
	.uleb128 0xe
	.long	.LASF366
	.sleb128 12
	.uleb128 0xe
	.long	.LASF367
	.sleb128 13
	.uleb128 0xe
	.long	.LASF368
	.sleb128 14
	.uleb128 0xe
	.long	.LASF369
	.sleb128 15
	.uleb128 0xe
	.long	.LASF370
	.sleb128 16
	.uleb128 0xe
	.long	.LASF371
	.sleb128 17
	.uleb128 0xe
	.long	.LASF372
	.sleb128 18
	.uleb128 0xe
	.long	.LASF373
	.sleb128 19
	.uleb128 0xe
	.long	.LASF374
	.sleb128 20
	.uleb128 0xe
	.long	.LASF375
	.sleb128 21
	.uleb128 0xe
	.long	.LASF376
	.sleb128 22
	.uleb128 0xe
	.long	.LASF377
	.sleb128 23
	.uleb128 0xe
	.long	.LASF378
	.sleb128 24
	.uleb128 0xe
	.long	.LASF379
	.sleb128 25
	.uleb128 0xe
	.long	.LASF380
	.sleb128 26
	.uleb128 0xe
	.long	.LASF381
	.sleb128 27
	.uleb128 0xe
	.long	.LASF382
	.sleb128 28
	.uleb128 0xe
	.long	.LASF383
	.sleb128 29
	.uleb128 0xe
	.long	.LASF384
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF385
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xf11
	.uleb128 0xe
	.long	.LASF386
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF387
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF388
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF389
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF390
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF391
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF392
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF393
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF394
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF395
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF396
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF397
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF398
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF399
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF400
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF401
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF402
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF403
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF404
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF405
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF406
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF407
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF408
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF409
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf6d
	.uleb128 0xe
	.long	.LASF410
	.sleb128 0
	.uleb128 0xe
	.long	.LASF411
	.sleb128 1
	.uleb128 0xe
	.long	.LASF412
	.sleb128 2
	.uleb128 0xe
	.long	.LASF413
	.sleb128 3
	.uleb128 0xe
	.long	.LASF414
	.sleb128 4
	.uleb128 0xe
	.long	.LASF415
	.sleb128 5
	.uleb128 0xe
	.long	.LASF416
	.sleb128 6
	.uleb128 0xe
	.long	.LASF417
	.sleb128 7
	.uleb128 0xe
	.long	.LASF418
	.sleb128 8
	.uleb128 0xe
	.long	.LASF419
	.sleb128 9
	.uleb128 0xe
	.long	.LASF420
	.sleb128 10
	.uleb128 0xe
	.long	.LASF421
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF422
	.byte	0xc
	.byte	0x29
	.long	0x2c4
	.uleb128 0x4
	.long	.LASF423
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0xfb5
	.uleb128 0x8
	.long	.LASF424
	.byte	0xa
	.byte	0x2d
	.long	0xfb5
	.byte	0
	.uleb128 0x8
	.long	.LASF425
	.byte	0xa
	.byte	0x2e
	.long	0xfb5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF337
	.byte	0xa
	.byte	0x2f
	.long	0x2a9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF426
	.byte	0xa
	.byte	0x30
	.long	0xfbb
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf78
	.uleb128 0x13
	.long	0x2c4
	.long	0xfcb
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF427
	.byte	0xa
	.byte	0x31
	.long	0xf78
	.uleb128 0x3
	.byte	0x8
	.long	0xfcb
	.uleb128 0x7
	.long	.LASF428
	.byte	0xa
	.byte	0x39
	.long	0xc96
	.uleb128 0x13
	.long	0x2c4
	.long	0xff7
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF429
	.byte	0x10
	.byte	0xd
	.byte	0x24
	.long	0x101c
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
	.uleb128 0x19
	.long	.LASF431
	.byte	0x10
	.byte	0xd
	.byte	0x3a
	.long	0x1101
	.uleb128 0x1b
	.string	"c"
	.byte	0xd
	.byte	0x3b
	.long	0x4ea
	.uleb128 0x1b
	.string	"uc"
	.byte	0xd
	.byte	0x3c
	.long	0x1101
	.uleb128 0x1b
	.string	"s"
	.byte	0xd
	.byte	0x3d
	.long	0x1111
	.uleb128 0x1b
	.string	"us"
	.byte	0xd
	.byte	0x3e
	.long	0x1121
	.uleb128 0x1b
	.string	"i"
	.byte	0xd
	.byte	0x3f
	.long	0x1131
	.uleb128 0x1b
	.string	"u"
	.byte	0xd
	.byte	0x40
	.long	0x1141
	.uleb128 0x1b
	.string	"l"
	.byte	0xd
	.byte	0x41
	.long	0x1151
	.uleb128 0x1b
	.string	"ul"
	.byte	0xd
	.byte	0x42
	.long	0xfe7
	.uleb128 0x1a
	.long	.LASF432
	.byte	0xd
	.byte	0x43
	.long	0x1151
	.uleb128 0x1a
	.long	.LASF433
	.byte	0xd
	.byte	0x44
	.long	0xfe7
	.uleb128 0x1a
	.long	.LASF434
	.byte	0xd
	.byte	0x45
	.long	0x1161
	.uleb128 0x1a
	.long	.LASF435
	.byte	0xd
	.byte	0x46
	.long	0x1171
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xd
	.byte	0x47
	.long	0x1181
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xd
	.byte	0x48
	.long	0x1191
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xd
	.byte	0x49
	.long	0x11a1
	.uleb128 0x1a
	.long	.LASF428
	.byte	0xd
	.byte	0x4a
	.long	0x11b1
	.uleb128 0x1a
	.long	.LASF436
	.byte	0xd
	.byte	0x4b
	.long	0x11c1
	.uleb128 0x1b
	.string	"reg"
	.byte	0xd
	.byte	0x4c
	.long	0x11dc
	.uleb128 0x1a
	.long	.LASF437
	.byte	0xd
	.byte	0x4d
	.long	0x1283
	.uleb128 0x1b
	.string	"bb"
	.byte	0xd
	.byte	0x4e
	.long	0x1293
	.uleb128 0x1b
	.string	"te"
	.byte	0xd
	.byte	0x4f
	.long	0x12a3
	.byte	0
	.uleb128 0x13
	.long	0x2cb
	.long	0x1111
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2e0
	.long	0x1121
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2d2
	.long	0x1131
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x13e
	.long	0x1141
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2a9
	.long	0x1151
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2b2
	.long	0x1161
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2b0
	.long	0x1171
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x2fd
	.long	0x1181
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x38
	.long	0x1191
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf8
	.long	0x11a1
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x12e
	.long	0x11b1
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xc96
	.long	0x11c1
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x11d1
	.long	0x11d1
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11d7
	.uleb128 0x1c
	.long	.LASF439
	.uleb128 0x13
	.long	0x11ec
	.long	0x11ec
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11f2
	.uleb128 0x4
	.long	.LASF440
	.byte	0x2c
	.byte	0xe
	.byte	0x2d
	.long	0x1283
	.uleb128 0x8
	.long	.LASF441
	.byte	0xe
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF442
	.byte	0xe
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF443
	.byte	0xe
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF444
	.byte	0xe
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF445
	.byte	0xe
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF446
	.byte	0xe
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF447
	.byte	0xe
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF448
	.byte	0xe
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF449
	.byte	0xe
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF450
	.byte	0xe
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF451
	.byte	0xe
	.byte	0x3d
	.long	0x303
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0xff7
	.long	0x1293
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xd69
	.long	0x12a3
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x12b3
	.long	0x12b3
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12b9
	.uleb128 0x1c
	.long	.LASF452
	.uleb128 0x7
	.long	.LASF453
	.byte	0xd
	.byte	0x50
	.long	0x101c
	.uleb128 0x4
	.long	.LASF454
	.byte	0x30
	.byte	0xd
	.byte	0x53
	.long	0x1312
	.uleb128 0x8
	.long	.LASF455
	.byte	0xd
	.byte	0x54
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF456
	.byte	0xd
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF457
	.byte	0xd
	.byte	0x57
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF458
	.byte	0xd
	.byte	0x58
	.long	0x510
	.byte	0x18
	.uleb128 0x8
	.long	.LASF459
	.byte	0xd
	.byte	0x59
	.long	0x12be
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF460
	.byte	0xd
	.byte	0x5a
	.long	0x131d
	.uleb128 0x3
	.byte	0x8
	.long	0x12c9
	.uleb128 0x7
	.long	.LASF461
	.byte	0xb
	.byte	0x21
	.long	0xfdc
	.uleb128 0x7
	.long	.LASF462
	.byte	0xb
	.byte	0x74
	.long	0x2b2
	.uleb128 0x4
	.long	.LASF463
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x13b2
	.uleb128 0x8
	.long	.LASF464
	.byte	0xb
	.byte	0x79
	.long	0x13b2
	.byte	0
	.uleb128 0x8
	.long	.LASF465
	.byte	0xb
	.byte	0x79
	.long	0x13b2
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd69
	.byte	0x10
	.uleb128 0x8
	.long	.LASF466
	.byte	0xb
	.byte	0x7c
	.long	0xd69
	.byte	0x18
	.uleb128 0x8
	.long	.LASF467
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
	.long	.LASF352
	.byte	0xb
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF468
	.byte	0xb
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF350
	.byte	0xb
	.byte	0x86
	.long	0x132e
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1339
	.uleb128 0x7
	.long	.LASF469
	.byte	0xb
	.byte	0x88
	.long	0x13b2
	.uleb128 0x7
	.long	.LASF450
	.byte	0xb
	.byte	0xdb
	.long	0xd69
	.uleb128 0x7
	.long	.LASF470
	.byte	0xe
	.byte	0x3f
	.long	0x11f2
	.uleb128 0x4
	.long	.LASF471
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x1416
	.uleb128 0x8
	.long	.LASF472
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF473
	.byte	0xf
	.byte	0x19
	.long	0x529
	.byte	0x8
	.uleb128 0x8
	.long	.LASF474
	.byte	0xf
	.byte	0x1a
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF424
	.byte	0xf
	.byte	0x1b
	.long	0x1416
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13d9
	.uleb128 0x4
	.long	.LASF475
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x1459
	.uleb128 0x8
	.long	.LASF335
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF476
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF424
	.byte	0xf
	.byte	0x28
	.long	0x1459
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x141c
	.uleb128 0x4
	.long	.LASF478
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x1508
	.uleb128 0x8
	.long	.LASF479
	.byte	0xf
	.byte	0x39
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF480
	.byte	0xf
	.byte	0x3c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF481
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF482
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF475
	.byte	0xf
	.byte	0x4f
	.long	0x1459
	.byte	0x20
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0x53
	.long	0x13e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF484
	.byte	0xf
	.byte	0x57
	.long	0x13e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF485
	.byte	0xf
	.byte	0x58
	.long	0x510
	.byte	0x30
	.uleb128 0x8
	.long	.LASF486
	.byte	0xf
	.byte	0x5e
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF487
	.byte	0xf
	.byte	0x63
	.long	0x1508
	.byte	0x40
	.uleb128 0x8
	.long	.LASF488
	.byte	0xf
	.byte	0x67
	.long	0x150e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0x6b
	.long	0xf11
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cb
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF490
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x1575
	.uleb128 0x8
	.long	.LASF491
	.byte	0xf
	.byte	0x7b
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF492
	.byte	0xf
	.byte	0x8c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0x92
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF496
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF498
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x19f5
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x19fa
	.byte	0
	.uleb128 0x8
	.long	.LASF499
	.byte	0xf
	.byte	0xb1
	.long	0x1a05
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xf
	.byte	0xb2
	.long	0x1a0b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0xb3
	.long	0x1a11
	.byte	0x18
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0xb4
	.long	0x1a1c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF458
	.byte	0xf
	.byte	0xb9
	.long	0x510
	.byte	0x28
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF503
	.byte	0xf
	.byte	0xbf
	.long	0x1a22
	.byte	0x38
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0xc4
	.long	0x13e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0xc9
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0xce
	.long	0x13e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0xd2
	.long	0x13e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0xda
	.long	0x29d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF510
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF511
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF512
	.byte	0xf
	.byte	0xe7
	.long	0x510
	.byte	0x88
	.uleb128 0x8
	.long	.LASF513
	.byte	0xf
	.byte	0xeb
	.long	0x1a2d
	.byte	0x90
	.uleb128 0x8
	.long	.LASF514
	.byte	0xf
	.byte	0xee
	.long	0x13e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF515
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF516
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF517
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF518
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF519
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF520
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF521
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF522
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF523
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF524
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF525
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF526
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1e
	.long	.LASF527
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1e
	.long	.LASF528
	.byte	0xf
	.value	0x12f
	.long	0x2b2
	.value	0x108
	.uleb128 0x1e
	.long	.LASF529
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1e
	.long	.LASF530
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1e
	.long	.LASF531
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1e
	.long	.LASF532
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1e
	.long	.LASF533
	.byte	0xf
	.value	0x148
	.long	0x2a9
	.value	0x130
	.uleb128 0x1e
	.long	.LASF534
	.byte	0xf
	.value	0x14e
	.long	0xf11
	.value	0x138
	.uleb128 0x1e
	.long	.LASF535
	.byte	0xf
	.value	0x151
	.long	0x1a38
	.value	0x140
	.uleb128 0x1e
	.long	.LASF536
	.byte	0xf
	.value	0x154
	.long	0x13e
	.value	0x148
	.uleb128 0x1e
	.long	.LASF537
	.byte	0xf
	.value	0x157
	.long	0x13e
	.value	0x14c
	.uleb128 0x1e
	.long	.LASF538
	.byte	0xf
	.value	0x15d
	.long	0x13e
	.value	0x150
	.uleb128 0x1e
	.long	.LASF539
	.byte	0xf
	.value	0x161
	.long	0x1416
	.value	0x158
	.uleb128 0x1e
	.long	.LASF540
	.byte	0xf
	.value	0x164
	.long	0x13e
	.value	0x160
	.uleb128 0x1e
	.long	.LASF541
	.byte	0xf
	.value	0x165
	.long	0x13e
	.value	0x164
	.uleb128 0x1e
	.long	.LASF542
	.byte	0xf
	.value	0x167
	.long	0x2b0
	.value	0x168
	.uleb128 0x1e
	.long	.LASF543
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1e
	.long	.LASF544
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1e
	.long	.LASF545
	.byte	0xf
	.value	0x16d
	.long	0x13e
	.value	0x180
	.uleb128 0x1e
	.long	.LASF546
	.byte	0xf
	.value	0x170
	.long	0x13e
	.value	0x184
	.uleb128 0x1e
	.long	.LASF547
	.byte	0xf
	.value	0x175
	.long	0x1a43
	.value	0x188
	.uleb128 0x1e
	.long	.LASF548
	.byte	0xf
	.value	0x177
	.long	0x13e
	.value	0x190
	.uleb128 0x1e
	.long	.LASF549
	.byte	0xf
	.value	0x179
	.long	0x13e
	.value	0x194
	.uleb128 0x1e
	.long	.LASF550
	.byte	0xf
	.value	0x17c
	.long	0x1a4e
	.value	0x198
	.uleb128 0x1e
	.long	.LASF551
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1f
	.long	.LASF552
	.byte	0xf
	.value	0x188
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF553
	.byte	0xf
	.value	0x18c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF554
	.byte	0xf
	.value	0x18f
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF555
	.byte	0xf
	.value	0x192
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF556
	.byte	0xf
	.value	0x195
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF557
	.byte	0xf
	.value	0x198
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF558
	.byte	0xf
	.value	0x19c
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF559
	.byte	0xf
	.value	0x19f
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF560
	.byte	0xf
	.value	0x1a3
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF561
	.byte	0xf
	.value	0x1a7
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF562
	.byte	0xf
	.value	0x1aa
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF563
	.byte	0xf
	.value	0x1ad
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF564
	.byte	0xf
	.value	0x1b2
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF565
	.byte	0xf
	.value	0x1b6
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF566
	.byte	0xf
	.value	0x1b9
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF567
	.byte	0xf
	.value	0x1bd
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF568
	.byte	0xf
	.value	0x1c1
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF569
	.byte	0xf
	.value	0x1c5
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF570
	.byte	0xf
	.value	0x1cb
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF571
	.byte	0xf
	.value	0x1d4
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF572
	.byte	0xf
	.value	0x1d7
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF573
	.byte	0xf
	.value	0x1da
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF574
	.byte	0xf
	.value	0x1dd
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF575
	.byte	0xf
	.value	0x1e0
	.long	0x2a9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1c
	.long	.LASF576
	.uleb128 0x3
	.byte	0x8
	.long	0x19f5
	.uleb128 0x1c
	.long	.LASF577
	.uleb128 0x3
	.byte	0x8
	.long	0x1a00
	.uleb128 0x3
	.byte	0x8
	.long	0x1514
	.uleb128 0x3
	.byte	0x8
	.long	0x145f
	.uleb128 0x1c
	.long	.LASF578
	.uleb128 0x3
	.byte	0x8
	.long	0x1a17
	.uleb128 0x3
	.byte	0x8
	.long	0x1575
	.uleb128 0x1c
	.long	.LASF579
	.uleb128 0x3
	.byte	0x8
	.long	0x1a28
	.uleb128 0x1c
	.long	.LASF580
	.uleb128 0x3
	.byte	0x8
	.long	0x1a33
	.uleb128 0x1c
	.long	.LASF581
	.uleb128 0x3
	.byte	0x8
	.long	0x1a3e
	.uleb128 0x1c
	.long	.LASF582
	.uleb128 0x3
	.byte	0x8
	.long	0x1a49
	.uleb128 0x16
	.long	.LASF583
	.byte	0x4
	.byte	0x10
	.byte	0x1c
	.long	0x1a73
	.uleb128 0xe
	.long	.LASF584
	.sleb128 0
	.uleb128 0xe
	.long	.LASF585
	.sleb128 1
	.uleb128 0xe
	.long	.LASF586
	.sleb128 2
	.byte	0
	.uleb128 0x1d
	.long	.LASF587
	.value	0x3f0
	.byte	0x10
	.byte	0x95
	.long	0x1b0e
	.uleb128 0x8
	.long	.LASF588
	.byte	0x10
	.byte	0x9e
	.long	0x1b0e
	.byte	0
	.uleb128 0x8
	.long	.LASF589
	.byte	0x10
	.byte	0xa1
	.long	0x1b1e
	.byte	0xf0
	.uleb128 0x20
	.long	.LASF590
	.byte	0x10
	.byte	0xa4
	.long	0x1b2e
	.value	0x1e0
	.uleb128 0x20
	.long	.LASF591
	.byte	0x10
	.byte	0xa7
	.long	0x1b3e
	.value	0x2d0
	.uleb128 0x20
	.long	.LASF592
	.byte	0x10
	.byte	0xaa
	.long	0x1b4e
	.value	0x348
	.uleb128 0x20
	.long	.LASF593
	.byte	0x10
	.byte	0xae
	.long	0x1b5e
	.value	0x3c0
	.uleb128 0x20
	.long	.LASF594
	.byte	0x10
	.byte	0xb2
	.long	0x496
	.value	0x3e0
	.uleb128 0x20
	.long	.LASF595
	.byte	0x10
	.byte	0xbf
	.long	0x303
	.value	0x3e4
	.uleb128 0x20
	.long	.LASF596
	.byte	0x10
	.byte	0xc2
	.long	0x303
	.value	0x3e5
	.uleb128 0x20
	.long	.LASF597
	.byte	0x10
	.byte	0xc5
	.long	0x303
	.value	0x3e6
	.uleb128 0x20
	.long	.LASF598
	.byte	0x10
	.byte	0xc8
	.long	0x2d
	.value	0x3e8
	.byte	0
	.uleb128 0x13
	.long	0x2d
	.long	0x1b1e
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0xf11
	.long	0x1b2e
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x510
	.long	0x1b3e
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x529
	.long	0x1b4e
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x1a54
	.long	0x1b5e
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0xf11
	.long	0x1b6e
	.uleb128 0x14
	.long	0x145
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF599
	.byte	0x48
	.byte	0x1
	.value	0x101
	.long	0x1bbd
	.uleb128 0x10
	.long	.LASF424
	.byte	0x1
	.value	0x102
	.long	0x1bbd
	.byte	0
	.uleb128 0x10
	.long	.LASF600
	.byte	0x1
	.value	0x103
	.long	0x2b9
	.byte	0x8
	.uleb128 0x10
	.long	.LASF601
	.byte	0x1
	.value	0x104
	.long	0x2b9
	.byte	0x10
	.uleb128 0x10
	.long	.LASF602
	.byte	0x1
	.value	0x105
	.long	0x303
	.byte	0x18
	.uleb128 0x10
	.long	.LASF459
	.byte	0x1
	.value	0x106
	.long	0x1bc3
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b6e
	.uleb128 0x13
	.long	0x13ce
	.long	0x1bd3
	.uleb128 0x14
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF603
	.byte	0x68
	.byte	0x1
	.value	0x345
	.long	0x1bfb
	.uleb128 0x10
	.long	.LASF604
	.byte	0x1
	.value	0x347
	.long	0x1bfb
	.byte	0
	.uleb128 0x10
	.long	.LASF605
	.byte	0x1
	.value	0x348
	.long	0x13e
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.long	0x13e
	.long	0x1c0b
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF606
	.byte	0x2
	.byte	0x1
	.value	0x34c
	.long	0x1c33
	.uleb128 0x10
	.long	.LASF607
	.byte	0x1
	.value	0x34f
	.long	0x303
	.byte	0
	.uleb128 0x10
	.long	.LASF608
	.byte	0x1
	.value	0x358
	.long	0x303
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.long	.LASF616
	.byte	0x1
	.value	0x115
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c6c
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x117
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x117
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF614
	.byte	0x1
	.value	0x138
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e63
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x13a
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x13a
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.value	0x13b
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF609
	.byte	0x1
	.value	0x13c
	.long	0x1e63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF610
	.byte	0x1
	.value	0x163
	.quad	.L44
	.uleb128 0x25
	.long	.LASF611
	.byte	0x1
	.value	0x169
	.quad	.L45
	.uleb128 0x25
	.long	.LASF612
	.byte	0x1
	.value	0x182
	.quad	.L54
	.uleb128 0x25
	.long	.LASF613
	.byte	0x1
	.value	0x19f
	.quad	.L67
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1d9e
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x142
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1d4b
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x142
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x26
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1d6f
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x142
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x142
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.value	0x142
	.long	0xf6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1dce
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x158
	.long	0xf6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.value	0x159
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1dfe
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x17a
	.long	0xf6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.value	0x17b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x26
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1e22
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.value	0x19a
	.long	0x1e73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x27
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x24
	.long	.LASF604
	.byte	0x1
	.value	0x1fe
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x22
	.string	"p1"
	.byte	0x1
	.value	0x1ff
	.long	0x1e73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.string	"p2"
	.byte	0x1
	.value	0x1ff
	.long	0x1e73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x303
	.long	0x1e73
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18a
	.uleb128 0x23
	.long	.LASF615
	.byte	0x1
	.value	0x243
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea5
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x245
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF617
	.byte	0x1
	.value	0x259
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee3
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x265
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF620
	.byte	0x1
	.value	0x274
	.long	0x13e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f5f
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x275
	.long	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF618
	.byte	0x1
	.value	0x276
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"in"
	.byte	0x1
	.value	0x277
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF608
	.byte	0x1
	.value	0x279
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF619
	.byte	0x1
	.value	0x27a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.value	0x27d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF621
	.byte	0x1
	.value	0x2ad
	.long	0x529
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fcb
	.uleb128 0x29
	.long	.LASF56
	.byte	0x1
	.value	0x2ae
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF55
	.byte	0x1
	.value	0x2af
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.value	0x2b1
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF622
	.byte	0x1
	.value	0x2b2
	.long	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF1
	.byte	0x1
	.value	0x2b2
	.long	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x21
	.long	.LASF623
	.byte	0x1
	.value	0x2f2
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x204c
	.uleb128 0x29
	.long	.LASF458
	.byte	0x1
	.value	0x2f3
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF624
	.byte	0x1
	.value	0x2f4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF625
	.byte	0x1
	.value	0x2f4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x2f6
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x24
	.long	.LASF626
	.byte	0x1
	.value	0x306
	.long	0x2062
	.uleb128 0x9
	.byte	0x3
	.quad	what_option.11623
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x510
	.long	0x2062
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x204c
	.uleb128 0x21
	.long	.LASF627
	.byte	0x1
	.value	0x320
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2093
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x321
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF628
	.byte	0x1
	.value	0x383
	.long	0x18a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x20c5
	.uleb128 0x29
	.long	.LASF56
	.byte	0x1
	.value	0x384
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF629
	.byte	0x1
	.value	0x38c
	.long	0x18a
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f7
	.uleb128 0x29
	.long	.LASF56
	.byte	0x1
	.value	0x38d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF630
	.byte	0x1
	.value	0x398
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2123
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x39a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF631
	.byte	0x1
	.value	0x3aa
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2195
	.uleb128 0x29
	.long	.LASF632
	.byte	0x1
	.value	0x3ab
	.long	0x2195
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF633
	.byte	0x1
	.value	0x3ad
	.long	0x21ab
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_names.11685
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x3ae
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x24
	.long	.LASF618
	.byte	0x1
	.value	0x3b1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30a
	.uleb128 0x13
	.long	0x510
	.long	0x21ab
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	0x219b
	.uleb128 0x23
	.long	.LASF634
	.byte	0x1
	.value	0x3cb
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2283
	.uleb128 0x29
	.long	.LASF598
	.byte	0x1
	.value	0x3cc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x29
	.long	.LASF635
	.byte	0x1
	.value	0x3cd
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x29
	.long	.LASF606
	.byte	0x1
	.value	0x3ce
	.long	0x2289
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x24
	.long	.LASF590
	.byte	0x1
	.value	0x3d0
	.long	0x1b2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x24
	.long	.LASF636
	.byte	0x1
	.value	0x3d1
	.long	0x1b3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x3d2
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x26
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x2252
	.uleb128 0x24
	.long	.LASF637
	.byte	0x1
	.value	0x3e6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.byte	0
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x24
	.long	.LASF638
	.byte	0x1
	.value	0x3fe
	.long	0x1b2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x3ff
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -636
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bd3
	.uleb128 0x3
	.byte	0x8
	.long	0x1c0b
	.uleb128 0x2d
	.long	.LASF657
	.byte	0x1
	.value	0x41b
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x23e2
	.uleb128 0x29
	.long	.LASF598
	.byte	0x1
	.value	0x41c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3240
	.uleb128 0x29
	.long	.LASF639
	.byte	0x1
	.value	0x41d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3244
	.uleb128 0x24
	.long	.LASF0
	.byte	0x1
	.value	0x41f
	.long	0x6e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3220
	.uleb128 0x24
	.long	.LASF640
	.byte	0x1
	.value	0x420
	.long	0x6e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3216
	.uleb128 0x22
	.string	"set"
	.byte	0x1
	.value	0x421
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3208
	.uleb128 0x24
	.long	.LASF641
	.byte	0x1
	.value	0x421
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3200
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x422
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3232
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x422
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3228
	.uleb128 0x24
	.long	.LASF635
	.byte	0x1
	.value	0x423
	.long	0x23e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3152
	.uleb128 0x26
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x23a3
	.uleb128 0x24
	.long	.LASF642
	.byte	0x1
	.value	0x45d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3192
	.uleb128 0x24
	.long	.LASF466
	.byte	0x1
	.value	0x45e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3184
	.uleb128 0x24
	.long	.LASF643
	.byte	0x1
	.value	0x461
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3176
	.uleb128 0x27
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x46b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3224
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.value	0x48d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3212
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.value	0x48e
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3168
	.uleb128 0x22
	.string	"q"
	.byte	0x1
	.value	0x48e
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3160
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1bd3
	.long	0x23f2
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x21
	.long	.LASF644
	.byte	0x1
	.value	0x49e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2527
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x49f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF55
	.byte	0x1
	.value	0x4a0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	.LASF632
	.byte	0x1
	.value	0x4a1
	.long	0x2195
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF598
	.byte	0x1
	.value	0x4a3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x4a4
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF639
	.byte	0x1
	.value	0x4a5
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x24
	.long	.LASF348
	.byte	0x1
	.value	0x4eb
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.long	0x24a2
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.value	0x503
	.long	0x13c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x24
	.long	.LASF645
	.byte	0x1
	.value	0x521
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF646
	.byte	0x1
	.value	0x522
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"alt"
	.byte	0x1
	.value	0x522
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF618
	.byte	0x1
	.value	0x525
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.value	0x526
	.long	0x2283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x24
	.long	.LASF633
	.byte	0x1
	.value	0x562
	.long	0x2527
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_names.11777
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x219b
	.uleb128 0x23
	.long	.LASF647
	.byte	0x1
	.value	0x596
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e5
	.uleb128 0x29
	.long	.LASF648
	.byte	0x1
	.value	0x598
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3540
	.uleb128 0x29
	.long	.LASF649
	.byte	0x1
	.value	0x599
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3544
	.uleb128 0x2a
	.string	"ops"
	.byte	0x1
	.value	0x59a
	.long	0xf11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3552
	.uleb128 0x29
	.long	.LASF636
	.byte	0x1
	.value	0x59b
	.long	0x27e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3560
	.uleb128 0x29
	.long	.LASF590
	.byte	0x1
	.value	0x59c
	.long	0x27eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3568
	.uleb128 0x29
	.long	.LASF598
	.byte	0x1
	.value	0x59d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3576
	.uleb128 0x29
	.long	.LASF635
	.byte	0x1
	.value	0x59e
	.long	0x2283
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF606
	.byte	0x1
	.value	0x59f
	.long	0x2289
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"alt"
	.byte	0x1
	.value	0x5a1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3524
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x5a2
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3520
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x5a2
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3484
	.uleb128 0x22
	.string	"set"
	.byte	0x1
	.value	0x5a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3416
	.uleb128 0x26
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x2771
	.uleb128 0x24
	.long	.LASF650
	.byte	0x1
	.value	0x5aa
	.long	0x23e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3152
	.uleb128 0x24
	.long	.LASF651
	.byte	0x1
	.value	0x5ab
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3516
	.uleb128 0x24
	.long	.LASF652
	.byte	0x1
	.value	0x5ac
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3512
	.uleb128 0x24
	.long	.LASF653
	.byte	0x1
	.value	0x5ad
	.long	0x27f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3408
	.uleb128 0x24
	.long	.LASF654
	.byte	0x1
	.value	0x5ae
	.long	0x2801
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3280
	.uleb128 0x24
	.long	.LASF618
	.byte	0x1
	.value	0x5af
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3508
	.uleb128 0x26
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2730
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.value	0x5b3
	.long	0x510
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3464
	.uleb128 0x22
	.string	"op"
	.byte	0x1
	.value	0x5b4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3456
	.uleb128 0x24
	.long	.LASF1
	.byte	0x1
	.value	0x5b5
	.long	0x529
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3488
	.uleb128 0x24
	.long	.LASF655
	.byte	0x1
	.value	0x5b6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3504
	.uleb128 0x22
	.string	"win"
	.byte	0x1
	.value	0x5b7
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3500
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x5b8
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3525
	.uleb128 0x26
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x270e
	.uleb128 0x22
	.string	"pp"
	.byte	0x1
	.value	0x601
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3448
	.byte	0
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x22
	.string	"pp"
	.byte	0x1
	.value	0x6d6
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3440
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x22
	.string	"pp"
	.byte	0x1
	.value	0x722
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3432
	.uleb128 0x22
	.string	"qq"
	.byte	0x1
	.value	0x722
	.long	0x2283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3424
	.uleb128 0x24
	.long	.LASF316
	.byte	0x1
	.value	0x723
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3480
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.value	0x743
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3476
	.uleb128 0x24
	.long	.LASF1
	.byte	0x1
	.value	0x744
	.long	0x529
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3472
	.uleb128 0x24
	.long	.LASF618
	.byte	0x1
	.value	0x745
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3496
	.uleb128 0x22
	.string	"nr"
	.byte	0x1
	.value	0x746
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3492
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x24
	.long	.LASF656
	.byte	0x1
	.value	0x74a
	.long	0x18a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3468
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x529
	.uleb128 0x3
	.byte	0x8
	.long	0x510
	.uleb128 0x13
	.long	0x18a
	.long	0x2801
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.long	0x13e
	.long	0x2811
	.uleb128 0x14
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x2d
	.long	.LASF658
	.byte	0x1
	.value	0x76e
	.long	0x13e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x287e
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x76f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x770
	.long	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF618
	.byte	0x1
	.value	0x771
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF659
	.byte	0x1
	.value	0x772
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF660
	.byte	0x1
	.value	0x775
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF661
	.byte	0x1
	.value	0x7af
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2990
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x7b0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF618
	.byte	0x1
	.value	0x7b1
	.long	0x18a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF316
	.byte	0x1
	.value	0x7b2
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF0
	.byte	0x1
	.value	0x7b4
	.long	0x6e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x292e
	.uleb128 0x24
	.long	.LASF662
	.byte	0x1
	.value	0x7ce
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF663
	.byte	0x1
	.value	0x7cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF664
	.byte	0x1
	.value	0x7d0
	.long	0x6e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF665
	.byte	0x1
	.value	0x7d1
	.long	0x6e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x26
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x2960
	.uleb128 0x22
	.string	"pp"
	.byte	0x1
	.value	0x84c
	.long	0x2283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x84d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x22
	.string	"fmt"
	.byte	0x1
	.value	0x858
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x859
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF666
	.byte	0x1
	.value	0x88b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a9f
	.uleb128 0x29
	.long	.LASF667
	.byte	0x1
	.value	0x88c
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF668
	.byte	0x1
	.value	0x88d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF669
	.byte	0x1
	.value	0x88e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF670
	.byte	0x1
	.value	0x890
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF671
	.byte	0x1
	.value	0x891
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"min"
	.byte	0x1
	.value	0x892
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF672
	.byte	0x1
	.value	0x893
	.long	0x1bbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x2a41
	.uleb128 0x24
	.long	.LASF673
	.byte	0x1
	.value	0x897
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x24
	.long	.LASF600
	.byte	0x1
	.value	0x8cc
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF601
	.byte	0x1
	.value	0x8cd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"max"
	.byte	0x1
	.value	0x8ce
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF674
	.byte	0x1
	.value	0x8cf
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x8d0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF675
	.byte	0x1
	.value	0x8f6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aee
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x24
	.long	.LASF672
	.byte	0x1
	.value	0x8fa
	.long	0x1bbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF676
	.byte	0x1
	.value	0x8fb
	.long	0x1bbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF677
	.byte	0x1
	.value	0x924
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b47
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x925
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF55
	.byte	0x1
	.value	0x926
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF678
	.byte	0x1
	.value	0x927
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF598
	.byte	0x1
	.value	0x929
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF679
	.byte	0x1
	.value	0x946
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ba2
	.uleb128 0x29
	.long	.LASF335
	.byte	0x1
	.value	0x947
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF476
	.byte	0x1
	.value	0x948
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF680
	.byte	0x1
	.value	0x949
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF598
	.byte	0x1
	.value	0x94b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF681
	.byte	0x1
	.value	0x964
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc3
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x965
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF598
	.byte	0x1
	.value	0x966
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF682
	.byte	0x1
	.value	0x967
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.long	.LASF683
	.byte	0x1
	.value	0x968
	.long	0x2a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF0
	.byte	0x1
	.value	0x96a
	.long	0x6e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF466
	.byte	0x1
	.value	0x96b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF641
	.byte	0x1
	.value	0x96c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x2c50
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.value	0x97f
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x2c75
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x9e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x22
	.string	"fmt"
	.byte	0x1
	.value	0x9f2
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x9f3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x9fa
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF684
	.byte	0x1
	.value	0xa07
	.long	0x13e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d12
	.uleb128 0x2a
	.string	"c1"
	.byte	0x1
	.value	0xa08
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"c2"
	.byte	0x1
	.value	0xa09
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"win"
	.byte	0x1
	.value	0xa0e
	.quad	.L844
	.byte	0
	.uleb128 0x2b
	.long	.LASF685
	.byte	0x1
	.value	0xa19
	.long	0x13e
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d6d
	.uleb128 0x2a
	.string	"c1"
	.byte	0x1
	.value	0xa1a
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"c2"
	.byte	0x1
	.value	0xa1b
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0xa20
	.long	0xf6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF686
	.byte	0x1
	.value	0xa2d
	.quad	.L852
	.byte	0
	.uleb128 0x30
	.long	.LASF752
	.byte	0x1
	.value	0xa34
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	0x303
	.long	0x2d97
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x31
	.long	.LASF687
	.byte	0x1
	.byte	0x4d
	.long	0x2dac
	.uleb128 0x9
	.byte	0x3
	.quad	initial_fixed_regs
	.uleb128 0xa
	.long	0x2d87
	.uleb128 0x31
	.long	.LASF688
	.byte	0x1
	.byte	0x60
	.long	0x2dc6
	.uleb128 0x9
	.byte	0x3
	.quad	initial_call_used_regs
	.uleb128 0xa
	.long	0x2d87
	.uleb128 0x13
	.long	0x2a9
	.long	0x2de1
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.long	.LASF689
	.byte	0x1
	.byte	0x9e
	.long	0x2df6
	.uleb128 0x9
	.byte	0x3
	.quad	int_reg_class_contents
	.uleb128 0xa
	.long	0x2dcb
	.uleb128 0x13
	.long	0x303
	.long	0x2e11
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x31
	.long	.LASF690
	.byte	0x1
	.byte	0xc7
	.long	0x2dfb
	.uleb128 0x9
	.byte	0x3
	.quad	contains_reg_of_mode
	.uleb128 0x13
	.long	0x13e
	.long	0x2e42
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x31
	.long	.LASF691
	.byte	0x1
	.byte	0xcc
	.long	0x2e26
	.uleb128 0x9
	.byte	0x3
	.quad	move_cost
	.uleb128 0x31
	.long	.LASF692
	.byte	0x1
	.byte	0xd1
	.long	0x2e26
	.uleb128 0x9
	.byte	0x3
	.quad	may_move_in_cost
	.uleb128 0x31
	.long	.LASF693
	.byte	0x1
	.byte	0xd6
	.long	0x2e26
	.uleb128 0x9
	.byte	0x3
	.quad	may_move_out_cost
	.uleb128 0x13
	.long	0x2d
	.long	0x2e91
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x31
	.long	.LASF694
	.byte	0x1
	.byte	0xf9
	.long	0x2e81
	.uleb128 0x9
	.byte	0x3
	.quad	top_of_stack
	.uleb128 0x24
	.long	.LASF695
	.byte	0x1
	.value	0x109
	.long	0x1bbd
	.uleb128 0x9
	.byte	0x3
	.quad	reg_info_head
	.uleb128 0x24
	.long	.LASF696
	.byte	0x1
	.value	0x10e
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	no_global_reg_vars
	.uleb128 0x24
	.long	.LASF603
	.byte	0x1
	.value	0x35d
	.long	0x2283
	.uleb128 0x9
	.byte	0x3
	.quad	costs
	.uleb128 0x24
	.long	.LASF697
	.byte	0x1
	.value	0x361
	.long	0x1bd3
	.uleb128 0x9
	.byte	0x3
	.quad	init_cost
	.uleb128 0x24
	.long	.LASF606
	.byte	0x1
	.value	0x366
	.long	0x2289
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pref
	.uleb128 0x24
	.long	.LASF698
	.byte	0x1
	.value	0x36a
	.long	0x2289
	.uleb128 0x9
	.byte	0x3
	.quad	reg_pref_buffer
	.uleb128 0x24
	.long	.LASF351
	.byte	0x1
	.value	0x36e
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	frequency
	.uleb128 0x24
	.long	.LASF699
	.byte	0x1
	.value	0x87f
	.long	0x2f56
	.uleb128 0x9
	.byte	0x3
	.quad	renumber
	.uleb128 0x3
	.byte	0x8
	.long	0x2e0
	.uleb128 0x24
	.long	.LASF700
	.byte	0x1
	.value	0x880
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	regno_allocated
	.uleb128 0x24
	.long	.LASF701
	.byte	0x1
	.value	0x881
	.long	0x2a9
	.uleb128 0x9
	.byte	0x3
	.quad	reg_n_max
	.uleb128 0x24
	.long	.LASF702
	.byte	0x1
	.value	0x921
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	max_set_parallel
	.uleb128 0x32
	.long	.LASF703
	.byte	0x4
	.byte	0x62
	.long	0x13e
	.uleb128 0x32
	.long	.LASF704
	.byte	0x4
	.byte	0xd6
	.long	0x139
	.uleb128 0x33
	.long	.LASF705
	.byte	0x4
	.value	0x19c
	.long	0x14c
	.uleb128 0x13
	.long	0x18a
	.long	0x2fd0
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x33
	.long	.LASF706
	.byte	0x4
	.value	0xc3a
	.long	0x2fdc
	.uleb128 0xa
	.long	0x2fc0
	.uleb128 0x13
	.long	0x69e
	.long	0x2ff1
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.long	.LASF171
	.byte	0x9
	.byte	0x34
	.long	0x2ffc
	.uleb128 0xa
	.long	0x2fe1
	.uleb128 0x13
	.long	0x2cb
	.long	0x3011
	.uleb128 0x14
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.long	.LASF707
	.byte	0x9
	.byte	0x50
	.long	0x301c
	.uleb128 0xa
	.long	0x3001
	.uleb128 0x32
	.long	.LASF708
	.byte	0x9
	.byte	0x7b
	.long	0x302c
	.uleb128 0xa
	.long	0x3001
	.uleb128 0x13
	.long	0x529
	.long	0x3041
	.uleb128 0x14
	.long	0x145
	.byte	0x8
	.byte	0
	.uleb128 0x32
	.long	.LASF709
	.byte	0x9
	.byte	0x9d
	.long	0x304c
	.uleb128 0xa
	.long	0x3031
	.uleb128 0x32
	.long	.LASF710
	.byte	0x9
	.byte	0xa4
	.long	0x529
	.uleb128 0x13
	.long	0x2cb
	.long	0x306c
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF711
	.byte	0x2
	.byte	0x36
	.long	0x3077
	.uleb128 0xa
	.long	0x305c
	.uleb128 0x13
	.long	0x510
	.long	0x308c
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF712
	.byte	0x2
	.byte	0x3c
	.long	0x3097
	.uleb128 0xa
	.long	0x307c
	.uleb128 0x13
	.long	0x303
	.long	0x30ac
	.uleb128 0x14
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF713
	.byte	0x2
	.byte	0x3f
	.long	0x30b7
	.uleb128 0xa
	.long	0x309c
	.uleb128 0x34
	.long	.LASF714
	.byte	0x1
	.value	0x91c
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	max_parallel
	.uleb128 0x13
	.long	0x2d
	.long	0x30e2
	.uleb128 0x14
	.long	0x145
	.byte	0xa
	.byte	0
	.uleb128 0x33
	.long	.LASF715
	.byte	0x2
	.value	0x652
	.long	0x30d2
	.uleb128 0x35
	.long	.LASF716
	.byte	0x1
	.byte	0x45
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	fixed_regs
	.uleb128 0x35
	.long	.LASF717
	.byte	0x1
	.byte	0x49
	.long	0xf6d
	.uleb128 0x9
	.byte	0x3
	.quad	fixed_reg_set
	.uleb128 0x35
	.long	.LASF718
	.byte	0x1
	.byte	0x55
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	call_used_regs
	.uleb128 0x35
	.long	.LASF719
	.byte	0x1
	.byte	0x59
	.long	0xf6d
	.uleb128 0x9
	.byte	0x3
	.quad	call_used_reg_set
	.uleb128 0x35
	.long	.LASF720
	.byte	0x1
	.byte	0x5c
	.long	0xf6d
	.uleb128 0x9
	.byte	0x3
	.quad	losing_caller_save_reg_set
	.uleb128 0x35
	.long	.LASF721
	.byte	0x1
	.byte	0x70
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	call_fixed_regs
	.uleb128 0x35
	.long	.LASF722
	.byte	0x1
	.byte	0x74
	.long	0xf6d
	.uleb128 0x9
	.byte	0x3
	.quad	call_fixed_reg_set
	.uleb128 0x35
	.long	.LASF723
	.byte	0x1
	.byte	0x7f
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	global_regs
	.uleb128 0x35
	.long	.LASF724
	.byte	0x1
	.byte	0x88
	.long	0xf6d
	.uleb128 0x9
	.byte	0x3
	.quad	regs_invalidated_by_call
	.uleb128 0x13
	.long	0x13e
	.long	0x31bb
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF725
	.byte	0x1
	.byte	0x8c
	.long	0x31ab
	.uleb128 0x9
	.byte	0x3
	.quad	reg_alloc_order
	.uleb128 0x35
	.long	.LASF726
	.byte	0x1
	.byte	0x8f
	.long	0x31ab
	.uleb128 0x9
	.byte	0x3
	.quad	inv_reg_alloc_order
	.uleb128 0x13
	.long	0xf6d
	.long	0x31f5
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x35
	.long	.LASF727
	.byte	0x1
	.byte	0x94
	.long	0x31e5
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_contents
	.uleb128 0x13
	.long	0x2a9
	.long	0x321a
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x35
	.long	.LASF728
	.byte	0x1
	.byte	0xa3
	.long	0x320a
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_size
	.uleb128 0x13
	.long	0x18a
	.long	0x3245
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.uleb128 0x14
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x35
	.long	.LASF729
	.byte	0x1
	.byte	0xa7
	.long	0x322f
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_superclasses
	.uleb128 0x35
	.long	.LASF730
	.byte	0x1
	.byte	0xab
	.long	0x322f
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_subclasses
	.uleb128 0x35
	.long	.LASF731
	.byte	0x1
	.byte	0xb0
	.long	0x322f
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_subunion
	.uleb128 0x35
	.long	.LASF732
	.byte	0x1
	.byte	0xb5
	.long	0x322f
	.uleb128 0x9
	.byte	0x3
	.quad	reg_class_superunion
	.uleb128 0x35
	.long	.LASF733
	.byte	0x1
	.byte	0x78
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	n_non_fixed_regs
	.uleb128 0x32
	.long	.LASF734
	.byte	0x11
	.byte	0x3d
	.long	0x13e
	.uleb128 0x32
	.long	.LASF735
	.byte	0x11
	.byte	0x41
	.long	0x13e
	.uleb128 0x32
	.long	.LASF736
	.byte	0x11
	.byte	0xbf
	.long	0x13e
	.uleb128 0x33
	.long	.LASF737
	.byte	0x11
	.value	0x12a
	.long	0x13e
	.uleb128 0x33
	.long	.LASF738
	.byte	0x11
	.value	0x1c8
	.long	0x13e
	.uleb128 0x32
	.long	.LASF739
	.byte	0xb
	.byte	0xe4
	.long	0x13e
	.uleb128 0x32
	.long	.LASF740
	.byte	0xb
	.byte	0xec
	.long	0x1312
	.uleb128 0x13
	.long	0xc9c
	.long	0x330d
	.uleb128 0x14
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.long	.LASF741
	.byte	0xb
	.value	0x116
	.long	0x32fd
	.uleb128 0x32
	.long	.LASF742
	.byte	0xe
	.byte	0x2a
	.long	0x13e
	.uleb128 0x32
	.long	.LASF743
	.byte	0xe
	.byte	0x41
	.long	0x1312
	.uleb128 0x32
	.long	.LASF744
	.byte	0xe
	.byte	0x9d
	.long	0x2f56
	.uleb128 0x13
	.long	0x529
	.long	0x334a
	.uleb128 0x14
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF745
	.byte	0x1
	.byte	0xc3
	.long	0x333a
	.uleb128 0x9
	.byte	0x3
	.quad	reg_raw_mode
	.uleb128 0x33
	.long	.LASF746
	.byte	0xf
	.value	0x1e4
	.long	0x1a22
	.uleb128 0x32
	.long	.LASF587
	.byte	0x10
	.byte	0xcb
	.long	0x1a73
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x18
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF370:
	.string	"REG_BR_PROB"
.LASF400:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF546:
	.string	"profile_label_no"
.LASF327:
	.string	"rtstr"
.LASF614:
	.string	"init_reg_sets_1"
.LASF387:
	.string	"NOTE_INSN_DELETED"
.LASF103:
	.string	"_unused2"
.LASF255:
	.string	"UMOD"
.LASF309:
	.string	"min_align"
.LASF717:
	.string	"fixed_reg_set"
.LASF89:
	.string	"_fileno"
.LASF431:
	.string	"varray_data_tag"
.LASF34:
	.string	"AD_REGS"
.LASF335:
	.string	"first"
.LASF540:
	.string	"inlinable"
.LASF572:
	.string	"uses_const_pool"
.LASF296:
	.string	"CONSTANT_P_RTX"
.LASF721:
	.string	"call_fixed_regs"
.LASF723:
	.string	"global_regs"
.LASF612:
	.string	"superclass"
.LASF326:
	.string	"rtuint"
.LASF739:
	.string	"n_basic_blocks"
.LASF651:
	.string	"alt_fail"
.LASF330:
	.string	"rt_cselib"
.LASF199:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF545:
	.string	"inl_max_label_num"
.LASF259:
	.string	"LSHIFTRT"
.LASF683:
	.string	"min_regno"
.LASF193:
	.string	"MATCH_PAR_DUP"
.LASF94:
	.string	"_shortbuf"
.LASF749:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF718:
	.string	"call_used_regs"
.LASF254:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF187:
	.string	"MATCH_OPERAND"
.LASF480:
	.string	"x_first_label_num"
.LASF168:
	.string	"CCFPmode"
.LASF26:
	.string	"reg_class"
.LASF586:
	.string	"OP_INOUT"
.LASF276:
	.string	"UNLE"
.LASF38:
	.string	"LEGACY_REGS"
.LASF314:
	.string	"max_after_base"
.LASF626:
	.string	"what_option"
.LASF277:
	.string	"UNLT"
.LASF709:
	.string	"class_narrowest_mode"
.LASF573:
	.string	"uses_pic_offset_table"
.LASF579:
	.string	"initial_value_struct"
.LASF642:
	.string	"previnsn"
.LASF468:
	.string	"probability"
.LASF140:
	.string	"CTImode"
.LASF75:
	.string	"_flags"
.LASF424:
	.string	"next"
.LASF684:
	.string	"reg_class_subset_p"
.LASF70:
	.string	"__off_t"
.LASF671:
	.string	"size_renumber"
.LASF138:
	.string	"CSImode"
.LASF40:
	.string	"FP_TOP_REG"
.LASF298:
	.string	"VEC_MERGE"
.LASF543:
	.string	"original_decl_initial"
.LASF645:
	.string	"best_cost"
.LASF639:
	.string	"pass"
.LASF95:
	.string	"_lock"
.LASF433:
	.string	"uhint"
.LASF231:
	.string	"RETURN"
.LASF434:
	.string	"generic"
.LASF741:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF174:
	.string	"MODE_FLOAT"
.LASF701:
	.string	"reg_n_max"
.LASF702:
	.string	"max_set_parallel"
.LASF318:
	.string	"alias"
.LASF315:
	.string	"offset_unsigned"
.LASF144:
	.string	"V2SImode"
.LASF569:
	.string	"stdarg"
.LASF530:
	.string	"x_trampoline_list"
.LASF652:
	.string	"alt_cost"
.LASF35:
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
.LASF60:
	.string	"maybe_vaarg"
.LASF551:
	.string	"epilogue_delay_list"
.LASF668:
	.string	"new_p"
.LASF146:
	.string	"V4QImode"
.LASF732:
	.string	"reg_class_superunion"
.LASF209:
	.string	"ATTR"
.LASF350:
	.string	"count"
.LASF328:
	.string	"rttype"
.LASF712:
	.string	"rtx_format"
.LASF685:
	.string	"reg_classes_intersect_p"
.LASF29:
	.string	"DREG"
.LASF340:
	.string	"head_tree"
.LASF47:
	.string	"FLOAT_SSE_REGS"
.LASF417:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF623:
	.string	"fix_register"
.LASF145:
	.string	"V2DImode"
.LASF520:
	.string	"x_return_label"
.LASF21:
	.string	"PROCESSOR_K6"
.LASF460:
	.string	"varray_type"
.LASF323:
	.string	"mem_attrs"
.LASF81:
	.string	"_IO_write_end"
.LASF364:
	.string	"REG_UNUSED"
.LASF202:
	.string	"DEFINE_DELAY"
.LASF252:
	.string	"MINUS"
.LASF527:
	.string	"x_clobber_return_insn"
.LASF32:
	.string	"SIREG"
.LASF625:
	.string	"call_used"
.LASF439:
	.string	"sched_info_tag"
.LASF242:
	.string	"STRICT_LOW_PART"
.LASF725:
	.string	"reg_alloc_order"
.LASF184:
	.string	"INCLUDE"
.LASF413:
	.string	"GR_FRAME_POINTER"
.LASF348:
	.string	"index"
.LASF446:
	.string	"freq"
.LASF280:
	.string	"ZERO_EXTEND"
.LASF283:
	.string	"FLOAT_TRUNCATE"
.LASF496:
	.string	"x_forced_labels"
.LASF511:
	.string	"internal_arg_pointer"
.LASF410:
	.string	"GR_PC"
.LASF31:
	.string	"BREG"
.LASF609:
	.string	"allocatable_regs_of_mode"
.LASF155:
	.string	"V2SFmode"
.LASF453:
	.string	"varray_data"
.LASF581:
	.string	"machine_function"
.LASF284:
	.string	"FLOAT"
.LASF376:
	.string	"REG_EH_CONTEXT"
.LASF110:
	.string	"machine_mode"
.LASF722:
	.string	"call_fixed_reg_set"
.LASF333:
	.string	"rtmem"
.LASF539:
	.string	"fixup_var_refs_queue"
.LASF293:
	.string	"RANGE_REG"
.LASF331:
	.string	"rtbit"
.LASF423:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF117:
	.string	"TImode"
.LASF269:
	.string	"PRE_MODIFY"
.LASF554:
	.string	"returns_pointer"
.LASF687:
	.string	"initial_fixed_regs"
.LASF657:
	.string	"scan_one_insn"
.LASF282:
	.string	"FLOAT_EXTEND"
.LASF443:
	.string	"last_note_uid"
.LASF499:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF388:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF115:
	.string	"SImode"
.LASF226:
	.string	"ADDR_VEC"
.LASF577:
	.string	"stmt_status"
.LASF706:
	.string	"regclass_map"
.LASF156:
	.string	"V2DFmode"
.LASF700:
	.string	"regno_allocated"
.LASF308:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF646:
	.string	"best"
.LASF322:
	.string	"align"
.LASF59:
	.string	"sse_regno"
.LASF337:
	.string	"indx"
.LASF547:
	.string	"machine"
.LASF245:
	.string	"SYMBOL_REF"
.LASF386:
	.string	"NOTE_INSN_BIAS"
.LASF710:
	.string	"word_mode"
.LASF408:
	.string	"NOTE_INSN_MAX"
.LASF494:
	.string	"x_saveregs_value"
.LASF727:
	.string	"reg_class_contents"
.LASF726:
	.string	"inv_reg_alloc_order"
.LASF198:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF250:
	.string	"COMPARE"
.LASF278:
	.string	"LTGT"
.LASF616:
	.string	"init_reg_sets"
.LASF474:
	.string	"unsignedp"
.LASF290:
	.string	"HIGH"
.LASF247:
	.string	"QUEUED"
.LASF36:
	.string	"NON_Q_REGS"
.LASF630:
	.string	"regclass_init"
.LASF629:
	.string	"reg_alternate_class"
.LASF1:
	.string	"mode"
.LASF116:
	.string	"DImode"
.LASF429:
	.string	"const_equiv_data"
.LASF513:
	.string	"hard_reg_initial_vals"
.LASF492:
	.string	"x_inhibit_defer_pop"
.LASF88:
	.string	"_chain"
.LASF268:
	.string	"POST_INC"
.LASF731:
	.string	"reg_class_subunion"
.LASF17:
	.string	"PROCESSOR_I386"
.LASF129:
	.string	"TFmode"
.LASF66:
	.string	"unsigned char"
.LASF580:
	.string	"temp_slot"
.LASF41:
	.string	"FP_SECOND_REG"
.LASF497:
	.string	"x_pending_chain"
.LASF638:
	.string	"xconstraints"
.LASF512:
	.string	"cannot_inline"
.LASF751:
	.string	"_IO_lock_t"
.LASF618:
	.string	"class"
.LASF23:
	.string	"PROCESSOR_PENTIUM4"
.LASF450:
	.string	"basic_block"
.LASF112:
	.string	"BImode"
.LASF266:
	.string	"PRE_INC"
.LASF363:
	.string	"REG_NO_CONFLICT"
.LASF126:
	.string	"SFmode"
.LASF500:
	.string	"emit"
.LASF590:
	.string	"constraints"
.LASF215:
	.string	"JUMP_INSN"
.LASF345:
	.string	"cond_local_set"
.LASF24:
	.string	"PROCESSOR_max"
.LASF469:
	.string	"edge"
.LASF178:
	.string	"MODE_COMPLEX_FLOAT"
.LASF332:
	.string	"rttree"
.LASF385:
	.string	"insn_note"
.LASF588:
	.string	"operand"
.LASF404:
	.string	"NOTE_INSN_RANGE_END"
.LASF197:
	.string	"DEFINE_SPLIT"
.LASF561:
	.string	"has_nonlocal_goto"
.LASF575:
	.string	"arg_pointer_save_area_init"
.LASF236:
	.string	"CONST_VECTOR"
.LASF194:
	.string	"MATCH_INSN"
.LASF521:
	.string	"x_save_expr_regs"
.LASF127:
	.string	"DFmode"
.LASF43:
	.string	"SSE_REGS"
.LASF462:
	.string	"gcov_type"
.LASF64:
	.string	"size_t"
.LASF228:
	.string	"PREFETCH"
.LASF52:
	.string	"LIM_REG_CLASSES"
.LASF51:
	.string	"ALL_REGS"
.LASF504:
	.string	"pops_args"
.LASF121:
	.string	"PSImode"
.LASF523:
	.string	"x_rtl_expr_chain"
.LASF696:
	.string	"no_global_reg_vars"
.LASF292:
	.string	"RANGE_INFO"
.LASF705:
	.string	"ix86_cpu"
.LASF430:
	.string	"rtunion_def"
.LASF208:
	.string	"DEFINE_ATTR"
.LASF210:
	.string	"SET_ATTR"
.LASF135:
	.string	"TCmode"
.LASF515:
	.string	"x_nonlocal_labels"
.LASF285:
	.string	"UNSIGNED_FLOAT"
.LASF375:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF438:
	.string	"cselib_val_struct"
.LASF407:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF80:
	.string	"_IO_write_ptr"
.LASF748:
	.string	"regclass.c"
.LASF257:
	.string	"ROTATE"
.LASF699:
	.string	"renumber"
.LASF343:
	.string	"succ"
.LASF445:
	.string	"refs"
.LASF281:
	.string	"TRUNCATE"
.LASF368:
	.string	"REG_DEP_ANTI"
.LASF132:
	.string	"SCmode"
.LASF711:
	.string	"rtx_length"
.LASF418:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF122:
	.string	"PDImode"
.LASF389:
	.string	"NOTE_INSN_BLOCK_END"
.LASF678:
	.string	"repeat"
.LASF428:
	.string	"bitmap"
.LASF398:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF713:
	.string	"rtx_class"
.LASF697:
	.string	"init_cost"
.LASF352:
	.string	"flags"
.LASF489:
	.string	"x_regno_reg_rtx"
.LASF185:
	.string	"EXPR_LIST"
.LASF212:
	.string	"EQ_ATTR"
.LASF165:
	.string	"CCGOCmode"
.LASF243:
	.string	"CONCAT"
.LASF18:
	.string	"PROCESSOR_I486"
.LASF464:
	.string	"pred_next"
.LASF311:
	.string	"min_after_vec"
.LASF73:
	.string	"FILE"
.LASF249:
	.string	"COND"
.LASF175:
	.string	"MODE_PARTIAL_INT"
.LASF531:
	.string	"x_parm_birth_insn"
.LASF533:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF619:
	.string	"partial_cost"
.LASF133:
	.string	"DCmode"
.LASF608:
	.string	"altclass"
.LASF631:
	.string	"dump_regclass"
.LASF200:
	.string	"DEFINE_COMBINE"
.LASF736:
	.string	"flag_branch_probabilities"
.LASF747:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF525:
	.string	"x_tail_recursion_reentry"
.LASF258:
	.string	"ASHIFTRT"
.LASF163:
	.string	"CCmode"
.LASF19:
	.string	"PROCESSOR_PENTIUM"
.LASF341:
	.string	"end_tree"
.LASF42:
	.string	"FLOAT_REGS"
.LASF674:
	.string	"local_min"
.LASF391:
	.string	"NOTE_INSN_LOOP_END"
.LASF161:
	.string	"V16SFmode"
.LASF693:
	.string	"may_move_out_cost"
.LASF405:
	.string	"NOTE_INSN_LIVE"
.LASF205:
	.string	"DEFINE_COND_EXEC"
.LASF84:
	.string	"_IO_save_base"
.LASF471:
	.string	"var_refs_queue"
.LASF493:
	.string	"x_stack_pointer_delta"
.LASF201:
	.string	"DEFINE_EXPAND"
.LASF648:
	.string	"n_alts"
.LASF564:
	.string	"is_thunk"
.LASF735:
	.string	"optimize_size"
.LASF456:
	.string	"elements_used"
.LASF152:
	.string	"V8SImode"
.LASF517:
	.string	"x_nonlocal_goto_handler_labels"
.LASF214:
	.string	"INSN"
.LASF325:
	.string	"rtint"
.LASF689:
	.string	"int_reg_class_contents"
.LASF670:
	.string	"size_info"
.LASF244:
	.string	"LABEL_REF"
.LASF367:
	.string	"REG_LABEL"
.LASF742:
	.string	"max_regno"
.LASF452:
	.string	"elt_list"
.LASF355:
	.string	"REG_DEAD"
.LASF395:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF98:
	.string	"__pad2"
.LASF707:
	.string	"mode_size"
.LASF358:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF461:
	.string	"regset"
.LASF728:
	.string	"reg_class_size"
.LASF164:
	.string	"CCGCmode"
.LASF347:
	.string	"global_live_at_end"
.LASF724:
	.string	"regs_invalidated_by_call"
.LASF240:
	.string	"SCRATCH"
.LASF150:
	.string	"V8QImode"
.LASF153:
	.string	"V8DImode"
.LASF181:
	.string	"MAX_MODE_CLASS"
.LASF743:
	.string	"reg_n_info"
.LASF704:
	.string	"x86_partial_reg_stall"
.LASF660:
	.string	"secondary_class"
.LASF279:
	.string	"SIGN_EXTEND"
.LASF556:
	.string	"calls_setjmp"
.LASF719:
	.string	"call_used_reg_set"
.LASF301:
	.string	"VEC_DUPLICATE"
.LASF675:
	.string	"free_reg_info"
.LASF518:
	.string	"x_nonlocal_goto_stack_level"
.LASF669:
	.string	"renumber_p"
.LASF105:
	.string	"_next"
.LASF737:
	.string	"flag_expensive_optimizations"
.LASF597:
	.string	"n_alternatives"
.LASF319:
	.string	"expr"
.LASF401:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF591:
	.string	"operand_mode"
.LASF650:
	.string	"this_op_costs"
.LASF621:
	.string	"choose_hard_reg_mode"
.LASF516:
	.string	"x_nonlocal_goto_handler_slots"
.LASF159:
	.string	"V8SFmode"
.LASF598:
	.string	"insn"
.LASF33:
	.string	"DIREG"
.LASF366:
	.string	"REG_CC_USER"
.LASF223:
	.string	"ASM_OPERANDS"
.LASF715:
	.string	"global_rtl"
.LASF536:
	.string	"x_temp_slot_level"
.LASF672:
	.string	"reg_data"
.LASF167:
	.string	"CCZmode"
.LASF392:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF37:
	.string	"INDEX_REGS"
.LASF603:
	.string	"costs"
.LASF679:
	.string	"reg_scan_update"
.LASF25:
	.string	"processor_type"
.LASF562:
	.string	"contains_functions"
.LASF501:
	.string	"varasm"
.LASF381:
	.string	"REG_NON_LOCAL_GOTO"
.LASF227:
	.string	"ADDR_DIFF_VEC"
.LASF566:
	.string	"profile"
.LASF289:
	.string	"ZERO_EXTRACT"
.LASF432:
	.string	"hint"
.LASF222:
	.string	"ASM_INPUT"
.LASF272:
	.string	"ORDERED"
.LASF160:
	.string	"V8DFmode"
.LASF473:
	.string	"promoted_mode"
.LASF601:
	.string	"max_index"
.LASF455:
	.string	"num_elements"
.LASF286:
	.string	"UNSIGNED_FIX"
.LASF553:
	.string	"returns_pcc_struct"
.LASF667:
	.string	"num_regs"
.LASF57:
	.string	"sse_words"
.LASF39:
	.string	"GENERAL_REGS"
.LASF458:
	.string	"name"
.LASF186:
	.string	"INSN_LIST"
.LASF106:
	.string	"_sbuf"
.LASF294:
	.string	"RANGE_VAR"
.LASF451:
	.string	"changes_mode"
.LASF86:
	.string	"_IO_save_end"
.LASF634:
	.string	"record_operand_costs"
.LASF173:
	.string	"MODE_INT"
.LASF457:
	.string	"element_size"
.LASF745:
	.string	"reg_raw_mode"
.LASF508:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF56:
	.string	"regno"
.LASF490:
	.string	"expr_status"
.LASF560:
	.string	"has_nonlocal_label"
.LASF295:
	.string	"RANGE_LIVE"
.LASF491:
	.string	"x_pending_stack_adjust"
.LASF143:
	.string	"V2HImode"
.LASF505:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF587:
	.string	"recog_data"
.LASF437:
	.string	"const_equiv"
.LASF442:
	.string	"last_uid"
.LASF329:
	.string	"rt_addr_diff_vec_flags"
.LASF415:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF46:
	.string	"FP_SECOND_SSE_REGS"
.LASF304:
	.string	"SS_MINUS"
.LASF191:
	.string	"MATCH_PARALLEL"
.LASF148:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF357:
	.string	"REG_EQUIV"
.LASF67:
	.string	"short unsigned int"
.LASF68:
	.string	"signed char"
.LASF190:
	.string	"MATCH_OPERATOR"
.LASF708:
	.string	"mode_wider_mode"
.LASF454:
	.string	"varray_head_tag"
.LASF336:
	.string	"current"
.LASF643:
	.string	"newinsn"
.LASF483:
	.string	"x_cur_insn_uid"
.LASF752:
	.string	"regset_release_memory"
.LASF532:
	.string	"x_last_parm_insn"
.LASF605:
	.string	"mem_cost"
.LASF644:
	.string	"regclass"
.LASF306:
	.string	"SS_TRUNCATE"
.LASF371:
	.string	"REG_EXEC_COUNT"
.LASF541:
	.string	"no_debugging_symbols"
.LASF716:
	.string	"fixed_regs"
.LASF310:
	.string	"base_after_vec"
.LASF195:
	.string	"DEFINE_INSN"
.LASF71:
	.string	"__off64_t"
.LASF149:
	.string	"V4DImode"
.LASF349:
	.string	"loop_depth"
.LASF78:
	.string	"_IO_read_base"
.LASF49:
	.string	"INT_SSE_REGS"
.LASF96:
	.string	"_offset"
.LASF416:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF485:
	.string	"x_last_filename"
.LASF369:
	.string	"REG_DEP_OUTPUT"
.LASF677:
	.string	"reg_scan"
.LASF83:
	.string	"_IO_buf_end"
.LASF204:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF620:
	.string	"memory_move_secondary_cost"
.LASF305:
	.string	"US_MINUS"
.LASF729:
	.string	"reg_class_superclasses"
.LASF510:
	.string	"return_rtx"
.LASF45:
	.string	"FP_TOP_SSE_REGS"
.LASF615:
	.string	"init_reg_modes"
.LASF599:
	.string	"reg_info_data"
.LASF288:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF448:
	.string	"live_length"
.LASF229:
	.string	"CLOBBER"
.LASF463:
	.string	"edge_def"
.LASF102:
	.string	"_mode"
.LASF695:
	.string	"reg_info_head"
.LASF179:
	.string	"MODE_VECTOR_INT"
.LASF79:
	.string	"_IO_write_base"
.LASF373:
	.string	"REG_SAVE_AREA"
.LASF297:
	.string	"CALL_PLACEHOLDER"
.LASF498:
	.string	"function"
.LASF157:
	.string	"V4SFmode"
.LASF584:
	.string	"OP_IN"
.LASF565:
	.string	"instrument_entry_exit"
.LASF528:
	.string	"x_frame_offset"
.LASF251:
	.string	"PLUS"
.LASF267:
	.string	"POST_DEC"
.LASF426:
	.string	"bits"
.LASF114:
	.string	"HImode"
.LASF353:
	.string	"rtunion"
.LASF394:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF177:
	.string	"MODE_COMPLEX_INT"
.LASF576:
	.string	"eh_status"
.LASF475:
	.string	"sequence_stack"
.LASF63:
	.string	"long int"
.LASF420:
	.string	"GR_VIRTUAL_CFA"
.LASF661:
	.string	"record_address_regs"
.LASF740:
	.string	"basic_block_info"
.LASF359:
	.string	"REG_WAS_0"
.LASF632:
	.string	"dump"
.LASF673:
	.string	"old_allocated"
.LASF613:
	.string	"subclass"
.LASF380:
	.string	"REG_NORETURN"
.LASF104:
	.string	"_IO_marker"
.LASF128:
	.string	"XFmode"
.LASF555:
	.string	"needs_context"
.LASF379:
	.string	"REG_MAYBE_DEAD"
.LASF158:
	.string	"V4DFmode"
.LASF744:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF354:
	.string	"reg_note"
.LASF559:
	.string	"calls_eh_return"
.LASF538:
	.string	"x_target_temp_slot_level"
.LASF596:
	.string	"n_dups"
.LASF506:
	.string	"pretend_args_size"
.LASF734:
	.string	"optimize"
.LASF182:
	.string	"rtx_code"
.LASF61:
	.string	"CUMULATIVE_ARGS"
.LASF476:
	.string	"last"
.LASF640:
	.string	"pat_code"
.LASF606:
	.string	"reg_pref"
.LASF568:
	.string	"varargs"
.LASF30:
	.string	"CREG"
.LASF655:
	.string	"allows_addr"
.LASF592:
	.string	"operand_type"
.LASF570:
	.string	"x_whole_function_mode_p"
.LASF183:
	.string	"UNKNOWN"
.LASF225:
	.string	"UNSPEC_VOLATILE"
.LASF582:
	.string	"language_function"
.LASF593:
	.string	"dup_loc"
.LASF397:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF65:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF124:
	.string	"HFmode"
.LASF602:
	.string	"used_p"
.LASF544:
	.string	"inl_last_parm_insn"
.LASF232:
	.string	"TRAP_IF"
.LASF447:
	.string	"deaths"
.LASF377:
	.string	"REG_EH_REGION"
.LASF534:
	.string	"x_parm_reg_stack_loc"
.LASF595:
	.string	"n_operands"
.LASF360:
	.string	"REG_RETVAL"
.LASF730:
	.string	"reg_class_subclasses"
.LASF136:
	.string	"CQImode"
.LASF72:
	.string	"char"
.LASF552:
	.string	"returns_struct"
.LASF134:
	.string	"XCmode"
.LASF526:
	.string	"x_arg_pointer_save_area"
.LASF28:
	.string	"AREG"
.LASF617:
	.string	"init_regs"
.LASF524:
	.string	"x_tail_recursion_label"
.LASF82:
	.string	"_IO_buf_base"
.LASF550:
	.string	"language"
.LASF627:
	.string	"globalize_reg"
.LASF260:
	.string	"ROTATERT"
.LASF624:
	.string	"fixed"
.LASF246:
	.string	"ADDRESSOF"
.LASF382:
	.string	"REG_SETJMP"
.LASF142:
	.string	"V2QImode"
.LASF479:
	.string	"x_reg_rtx_no"
.LASF120:
	.string	"PHImode"
.LASF77:
	.string	"_IO_read_end"
.LASF472:
	.string	"modified"
.LASF488:
	.string	"regno_decl"
.LASF440:
	.string	"reg_info_def"
.LASF141:
	.string	"COImode"
.LASF265:
	.string	"PRE_DEC"
.LASF74:
	.string	"_IO_FILE"
.LASF396:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF414:
	.string	"GR_HARD_FRAME_POINTER"
.LASF365:
	.string	"REG_CC_SETTER"
.LASF622:
	.string	"found_mode"
.LASF558:
	.string	"calls_alloca"
.LASF583:
	.string	"op_type"
.LASF537:
	.string	"x_var_temp_slot_level"
.LASF654:
	.string	"allows_mem"
.LASF172:
	.string	"MODE_RANDOM"
.LASF303:
	.string	"US_PLUS"
.LASF720:
	.string	"losing_caller_save_reg_set"
.LASF162:
	.string	"BLKmode"
.LASF131:
	.string	"HCmode"
.LASF653:
	.string	"classes"
.LASF676:
	.string	"reg_next"
.LASF649:
	.string	"n_ops"
.LASF237:
	.string	"CONST_STRING"
.LASF300:
	.string	"VEC_CONCAT"
.LASF321:
	.string	"size"
.LASF633:
	.string	"reg_class_names"
.LASF97:
	.string	"__pad1"
.LASF99:
	.string	"__pad3"
.LASF100:
	.string	"__pad4"
.LASF101:
	.string	"__pad5"
.LASF372:
	.string	"REG_NOALIAS"
.LASF213:
	.string	"ATTR_FLAG"
.LASF664:
	.string	"code0"
.LASF665:
	.string	"code1"
.LASF169:
	.string	"CCFPUmode"
.LASF356:
	.string	"REG_INC"
.LASF203:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF529:
	.string	"x_context_display"
.LASF87:
	.string	"_markers"
.LASF107:
	.string	"_pos"
.LASF207:
	.string	"ADDRESS"
.LASF467:
	.string	"insns"
.LASF542:
	.string	"original_arg_vector"
.LASF22:
	.string	"PROCESSOR_ATHLON"
.LASF574:
	.string	"uses_eh_lsda"
.LASF435:
	.string	"cptr"
.LASF663:
	.string	"arg1"
.LASF334:
	.string	"bitmap_head_def"
.LASF690:
	.string	"contains_reg_of_mode"
.LASF449:
	.string	"calls_crossed"
.LASF307:
	.string	"US_TRUNCATE"
.LASF698:
	.string	"reg_pref_buffer"
.LASF409:
	.string	"global_rtl_index"
.LASF55:
	.string	"nregs"
.LASF302:
	.string	"SS_PLUS"
.LASF264:
	.string	"UMAX"
.LASF44:
	.string	"MMX_REGS"
.LASF316:
	.string	"scale"
.LASF647:
	.string	"record_reg_classes"
.LASF113:
	.string	"QImode"
.LASF703:
	.string	"target_flags"
.LASF459:
	.string	"data"
.LASF412:
	.string	"GR_STACK_POINTER"
.LASF125:
	.string	"TQFmode"
.LASF339:
	.string	"head"
.LASF20:
	.string	"PROCESSOR_PENTIUMPRO"
.LASF54:
	.string	"words"
.LASF604:
	.string	"cost"
.LASF313:
	.string	"min_after_base"
.LASF436:
	.string	"sched"
.LASF571:
	.string	"x_dont_save_pending_sizes_p"
.LASF53:
	.string	"ix86_args"
.LASF27:
	.string	"NO_REGS"
.LASF746:
	.string	"cfun"
.LASF507:
	.string	"outgoing_args_size"
.LASF738:
	.string	"flag_pic"
.LASF118:
	.string	"OImode"
.LASF378:
	.string	"REG_SAVE_NOTE"
.LASF262:
	.string	"SMAX"
.LASF421:
	.string	"GR_MAX"
.LASF299:
	.string	"VEC_SELECT"
.LASF362:
	.string	"REG_NONNEG"
.LASF548:
	.string	"stack_alignment_needed"
.LASF478:
	.string	"emit_status"
.LASF180:
	.string	"MODE_VECTOR_FLOAT"
.LASF270:
	.string	"POST_MODIFY"
.LASF635:
	.string	"op_costs"
.LASF374:
	.string	"REG_BR_PRED"
.LASF196:
	.string	"DEFINE_PEEPHOLE"
.LASF108:
	.string	"long long unsigned int"
.LASF403:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF320:
	.string	"offset"
.LASF317:
	.string	"addr_diff_vec_flags"
.LASF92:
	.string	"_cur_column"
.LASF192:
	.string	"MATCH_OP_DUP"
.LASF206:
	.string	"SEQUENCE"
.LASF733:
	.string	"n_non_fixed_regs"
.LASF610:
	.string	"subclass1"
.LASF611:
	.string	"subclass2"
.LASF681:
	.string	"reg_scan_mark_refs"
.LASF123:
	.string	"QFmode"
.LASF444:
	.string	"sets"
.LASF509:
	.string	"args_info"
.LASF714:
	.string	"max_parallel"
.LASF567:
	.string	"limit_stack"
.LASF688:
	.string	"initial_call_used_regs"
.LASF233:
	.string	"RESX"
.LASF466:
	.string	"dest"
.LASF221:
	.string	"PARALLEL"
.LASF682:
	.string	"note_flag"
.LASF13:
	.string	"num_elem"
.LASF85:
	.string	"_IO_backup_base"
.LASF271:
	.string	"UNORDERED"
.LASF170:
	.string	"MAX_MACHINE_MODE"
.LASF76:
	.string	"_IO_read_ptr"
.LASF346:
	.string	"global_live_at_start"
.LASF50:
	.string	"FLOAT_INT_SSE_REGS"
.LASF188:
	.string	"MATCH_SCRATCH"
.LASF238:
	.string	"CONST"
.LASF487:
	.string	"regno_pointer_align"
.LASF287:
	.string	"SQRT"
.LASF411:
	.string	"GR_CC0"
.LASF171:
	.string	"mode_class"
.LASF253:
	.string	"MULT"
.LASF176:
	.string	"MODE_CC"
.LASF344:
	.string	"local_set"
.LASF694:
	.string	"top_of_stack"
.LASF119:
	.string	"PQImode"
.LASF477:
	.string	"sequence_rtl_expr"
.LASF691:
	.string	"move_cost"
.LASF637:
	.string	"inner"
.LASF151:
	.string	"V8HImode"
.LASF535:
	.string	"x_temp_slots"
.LASF607:
	.string	"prefclass"
.LASF522:
	.string	"x_stack_slot_list"
.LASF91:
	.string	"_old_offset"
.LASF216:
	.string	"CALL_INSN"
.LASF636:
	.string	"modes"
.LASF241:
	.string	"SUBREG"
.LASF470:
	.string	"reg_info"
.LASF557:
	.string	"calls_longjmp"
.LASF154:
	.string	"V16QImode"
.LASF383:
	.string	"REG_ALWAYS_RETURN"
.LASF502:
	.string	"decl"
.LASF109:
	.string	"long long int"
.LASF628:
	.string	"reg_preferred_class"
.LASF361:
	.string	"REG_LIBCALL"
.LASF90:
	.string	"_flags2"
.LASF130:
	.string	"QCmode"
.LASF239:
	.string	"VALUE"
.LASF219:
	.string	"NOTE"
.LASF585:
	.string	"OP_OUT"
.LASF58:
	.string	"sse_nregs"
.LASF263:
	.string	"UMIN"
.LASF189:
	.string	"MATCH_DUP"
.LASF658:
	.string	"copy_cost"
.LASF422:
	.string	"HARD_REG_ELT_TYPE"
.LASF338:
	.string	"basic_block_def"
.LASF692:
	.string	"may_move_in_cost"
.LASF680:
	.string	"old_max_regno"
.LASF578:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF390:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF427:
	.string	"bitmap_element"
.LASF514:
	.string	"x_function_call_count"
.LASF137:
	.string	"CHImode"
.LASF406:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF211:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF486:
	.string	"regno_pointer_align_length"
.LASF481:
	.string	"x_first_insn"
.LASF495:
	.string	"x_apply_args_value"
.LASF48:
	.string	"FLOAT_INT_REGS"
.LASF235:
	.string	"CONST_DOUBLE"
.LASF441:
	.string	"first_uid"
.LASF166:
	.string	"CCNOmode"
.LASF147:
	.string	"V4HImode"
.LASF273:
	.string	"UNEQ"
.LASF256:
	.string	"ASHIFT"
.LASF261:
	.string	"SMIN"
.LASF248:
	.string	"IF_THEN_ELSE"
.LASF594:
	.string	"dup_num"
.LASF662:
	.string	"arg0"
.LASF659:
	.string	"to_p"
.LASF402:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF503:
	.string	"outer"
.LASF399:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF484:
	.string	"x_last_linenum"
.LASF600:
	.string	"min_index"
.LASF62:
	.string	"unsigned int"
.LASF666:
	.string	"allocate_reg_info"
.LASF750:
	.string	"tree_node"
.LASF641:
	.string	"note"
.LASF519:
	.string	"x_cleanup_label"
.LASF312:
	.string	"max_after_vec"
.LASF274:
	.string	"UNGE"
.LASF589:
	.string	"operand_loc"
.LASF69:
	.string	"short int"
.LASF342:
	.string	"pred"
.LASF275:
	.string	"UNGT"
.LASF656:
	.string	"pref"
.LASF563:
	.string	"has_computed_jump"
.LASF482:
	.string	"x_last_insn"
.LASF425:
	.string	"prev"
.LASF93:
	.string	"_vtable_offset"
.LASF549:
	.string	"preferred_stack_boundary"
.LASF686:
	.string	"lose"
.LASF111:
	.string	"VOIDmode"
.LASF384:
	.string	"REG_VTABLE_REF"
.LASF419:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF291:
	.string	"LO_SUM"
.LASF351:
	.string	"frequency"
.LASF324:
	.string	"rtwint"
.LASF465:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
