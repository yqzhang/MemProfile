	.file	"ggc-page.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ggc-page.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
	.align 16
	.type	extra_order_size_table, @object
	.size	extra_order_size_table, 16
extra_order_size_table:
	.quad	208
	.quad	40
	.local	objects_per_page_table
	.comm	objects_per_page_table,264,32
	.local	object_size_table
	.comm	object_size_table,528,32
	.local	G
	.comm	G,1136,32
	.text
	.type	lookup_page_table_entry, @function
lookup_page_table_entry:
.LFB3:
	.file 1 "ggc-page.c"
	.loc 1 421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# p, p
	.loc 1 428 0
	movq	G+1056(%rip), %rax	# G.lookup, tmp81
	movq	%rax, -40(%rbp)	# tmp81, table
	.loc 1 429 0
	movq	-56(%rbp), %rdx	# p, p.16
	movabsq	$-4294967296, %rax	#, tmp82
	andq	%rdx, %rax	# p.16, tmp83
	movq	%rax, -32(%rbp)	# tmp83, high_bits
	.loc 1 430 0
	jmp	.L2	#
.L3:
	.loc 1 431 0
	movq	-40(%rbp), %rax	# table, tmp84
	movq	(%rax), %rax	# table_1->next, tmp85
	movq	%rax, -40(%rbp)	# tmp85, table
.L2:
	.loc 1 430 0 discriminator 1
	movq	-40(%rbp), %rax	# table, tmp86
	movq	8(%rax), %rax	# table_1->high_bits, D.12310
	cmpq	-32(%rbp), %rax	# high_bits, D.12310
	jne	.L3	#,
	.loc 1 432 0
	movq	-40(%rbp), %rax	# table, tmp90
	addq	$16, %rax	#, tmp89
	movq	%rax, -24(%rbp)	# tmp89, base
	.loc 1 436 0
	movq	-56(%rbp), %rax	# p, p.17
	shrq	$24, %rax	#, D.12310
	andl	$255, %eax	#, tmp91
	movq	%rax, -16(%rbp)	# tmp91, L1
	.loc 1 437 0
	movq	-56(%rbp), %rdx	# p, p.18
	movq	G+1072(%rip), %rax	# G.lg_pagesize, D.12310
	movq	%rdx, %rsi	# p.18, D.12310
	movl	%eax, %ecx	# D.12311, tmp100
	shrq	%cl, %rsi	# tmp100, D.12310
	movq	G+1072(%rip), %rax	# G.lg_pagesize, D.12310
	movl	$24, %edx	#, tmp92
	subl	%eax, %edx	# D.12312, D.12312
	movl	%edx, %eax	# D.12312, D.12312
	movl	$1, %edx	#, tmp93
	movl	%eax, %ecx	# D.12311, tmp103
	sall	%cl, %edx	# tmp103, D.12311
	movl	%edx, %eax	# D.12311, D.12311
	subl	$1, %eax	#, D.12311
	cltq
	andq	%rsi, %rax	# D.12310, tmp94
	movq	%rax, -8(%rbp)	# tmp94, L2
	.loc 1 439 0
	movq	-16(%rbp), %rax	# L1, tmp95
	leaq	0(,%rax,8), %rdx	#, D.12310
	movq	-24(%rbp), %rax	# base, tmp96
	addq	%rdx, %rax	# D.12310, D.12313
	movq	(%rax), %rax	# *_25, D.12314
	movq	-8(%rbp), %rdx	# L2, tmp97
	salq	$3, %rdx	#, D.12310
	addq	%rdx, %rax	# D.12310, D.12314
	movq	(%rax), %rax	# *_28, D.12315
	.loc 1 440 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lookup_page_table_entry, .-lookup_page_table_entry
	.type	set_page_table_entry, @function
set_page_table_entry:
.LFB4:
	.loc 1 448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# p, p
	movq	%rsi, -80(%rbp)	# entry, entry
	.loc 1 456 0
	movq	-72(%rbp), %rdx	# p, p.0
	movabsq	$-4294967296, %rax	#, tmp91
	andq	%rdx, %rax	# p.0, tmp92
	movq	%rax, -48(%rbp)	# tmp92, high_bits
	.loc 1 457 0
	movq	G+1056(%rip), %rax	# G.lookup, tmp93
	movq	%rax, -56(%rbp)	# tmp93, table
	jmp	.L6	#
.L9:
	.loc 1 458 0
	movq	-56(%rbp), %rax	# table, tmp94
	movq	8(%rax), %rax	# table_1->high_bits, D.12316
	cmpq	-48(%rbp), %rax	# high_bits, D.12316
	jne	.L7	#,
	.loc 1 459 0
	jmp	.L8	#
.L7:
	.loc 1 457 0
	movq	-56(%rbp), %rax	# table, tmp95
	movq	(%rax), %rax	# table_1->next, tmp96
	movq	%rax, -56(%rbp)	# tmp96, table
.L6:
	.loc 1 457 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, table
	jne	.L9	#,
	.loc 1 462 0 is_stmt 1
	movl	$2064, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -56(%rbp)	# tmp97, table
	.loc 1 463 0
	movq	G+1056(%rip), %rdx	# G.lookup, D.12317
	movq	-56(%rbp), %rax	# table, tmp98
	movq	%rdx, (%rax)	# D.12317, table_9->next
	.loc 1 464 0
	movq	-56(%rbp), %rax	# table, tmp99
	movq	-48(%rbp), %rdx	# high_bits, tmp100
	movq	%rdx, 8(%rax)	# tmp100, table_9->high_bits
	.loc 1 465 0
	movq	-56(%rbp), %rax	# table, tmp101
	movq	%rax, G+1056(%rip)	# tmp101, G.lookup
.L8:
	.loc 1 467 0
	movq	-56(%rbp), %rax	# table, tmp105
	addq	$16, %rax	#, tmp104
	movq	%rax, -40(%rbp)	# tmp104, base
	.loc 1 471 0
	movq	-72(%rbp), %rax	# p, p.1
	shrq	$24, %rax	#, D.12316
	andl	$255, %eax	#, tmp106
	movq	%rax, -32(%rbp)	# tmp106, L1
	.loc 1 472 0
	movq	-72(%rbp), %rdx	# p, p.2
	movq	G+1072(%rip), %rax	# G.lg_pagesize, D.12316
	movq	%rdx, %rsi	# p.2, D.12316
	movl	%eax, %ecx	# D.12318, tmp122
	shrq	%cl, %rsi	# tmp122, D.12316
	movq	G+1072(%rip), %rax	# G.lg_pagesize, D.12316
	movl	$24, %edx	#, tmp107
	subl	%eax, %edx	# D.12319, D.12319
	movl	%edx, %eax	# D.12319, D.12319
	movl	$1, %edx	#, tmp108
	movl	%eax, %ecx	# D.12318, tmp125
	sall	%cl, %edx	# tmp125, D.12318
	movl	%edx, %eax	# D.12318, D.12318
	subl	$1, %eax	#, D.12318
	cltq
	andq	%rsi, %rax	# D.12316, tmp109
	movq	%rax, -24(%rbp)	# tmp109, L2
	.loc 1 474 0
	movq	-32(%rbp), %rax	# L1, tmp110
	leaq	0(,%rax,8), %rdx	#, D.12316
	movq	-40(%rbp), %rax	# base, tmp111
	addq	%rdx, %rax	# D.12316, D.12320
	movq	(%rax), %rax	# *_28, D.12321
	testq	%rax, %rax	# D.12321
	jne	.L10	#,
	.loc 1 475 0
	movq	-32(%rbp), %rax	# L1, tmp112
	leaq	0(,%rax,8), %rdx	#, D.12316
	movq	-40(%rbp), %rax	# base, tmp113
	leaq	(%rdx,%rax), %rbx	#, D.12320
	movq	G+1072(%rip), %rax	# G.lg_pagesize, D.12316
	movl	$24, %edx	#, tmp114
	subl	%eax, %edx	# D.12319, D.12319
	movl	%edx, %eax	# D.12319, D.12319
	movl	$1, %edx	#, tmp115
	movl	%eax, %ecx	# D.12318, tmp128
	salq	%cl, %rdx	# tmp128, D.12316
	movq	%rdx, %rax	# D.12316, D.12316
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.12316,
	call	xcalloc	#
	movq	%rax, (%rbx)	# D.12322, *_31
.L10:
	.loc 1 477 0
	movq	-32(%rbp), %rax	# L1, tmp117
	leaq	0(,%rax,8), %rdx	#, D.12316
	movq	-40(%rbp), %rax	# base, tmp118
	addq	%rdx, %rax	# D.12316, D.12320
	movq	(%rax), %rax	# *_39, D.12321
	movq	-24(%rbp), %rdx	# L2, tmp119
	salq	$3, %rdx	#, D.12316
	addq	%rax, %rdx	# D.12321, D.12321
	movq	-80(%rbp), %rax	# entry, tmp120
	movq	%rax, (%rdx)	# tmp120, *_42
	.loc 1 478 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	set_page_table_entry, .-set_page_table_entry
	.section	.rodata
.LC0:
	.string	"Head=%p, Tail=%p:\n"
.LC1:
	.string	"%p(%1d|%3d) -> "
.LC2:
	.string	"NULL"
	.text
	.globl	debug_print_page_list
	.type	debug_print_page_list, @function
debug_print_page_list:
.LFB5:
	.loc 1 485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# order, order
	.loc 1 488 0
	movl	-20(%rbp), %eax	# order, tmp67
	cltq
	addq	$66, %rax	#, tmp68
	movq	G(,%rax,8), %rdx	# G.page_tails, D.12323
	.loc 1 487 0
	movl	-20(%rbp), %eax	# order, tmp70
	cltq
	movq	G(,%rax,8), %rax	# G.pages, D.12323
	movq	%rax, %rsi	# D.12323,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 489 0
	movl	-20(%rbp), %eax	# order, tmp72
	cltq
	movq	G(,%rax,8), %rax	# G.pages, tmp73
	movq	%rax, -8(%rbp)	# tmp73, p
	.loc 1 490 0
	jmp	.L12	#
.L13:
	.loc 1 493 0
	movq	-8(%rbp), %rax	# p, tmp74
	movzwl	42(%rax), %eax	# p_1->num_free_objects, D.12324
	.loc 1 492 0
	movzwl	%ax, %ecx	# D.12324, D.12325
	movq	-8(%rbp), %rax	# p, tmp75
	movzwl	40(%rax), %eax	# p_1->context_depth, D.12324
	movzwl	%ax, %edx	# D.12324, D.12325
	movq	-8(%rbp), %rax	# p, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 494 0
	movq	-8(%rbp), %rax	# p, tmp77
	movq	(%rax), %rax	# p_1->next, tmp78
	movq	%rax, -8(%rbp)	# tmp78, p
.L12:
	.loc 1 490 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L13	#,
	.loc 1 496 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 497 0
	movq	stdout(%rip), %rax	# stdout, stdout.3
	movq	%rax, %rdi	# stdout.3,
	call	fflush	#
	.loc 1 498 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	debug_print_page_list, .-debug_print_page_list
	.type	page_group_index, @function
page_group_index:
.LFB6:
	.loc 1 537 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# allocation, allocation
	movq	%rsi, -16(%rbp)	# page, page
	.loc 1 538 0
	movq	-16(%rbp), %rdx	# page, page.12
	movq	-8(%rbp), %rax	# allocation, allocation.13
	subq	%rax, %rdx	# allocation.13, D.12329
	movq	%rdx, %rax	# D.12329, D.12329
	movq	%rax, %rdx	# D.12329, D.12330
	movq	G+1072(%rip), %rax	# G.lg_pagesize, D.12330
	movl	%eax, %ecx	# D.12331, tmp70
	shrq	%cl, %rdx	# tmp70, D.12332
	movq	%rdx, %rax	# D.12332, D.12332
	.loc 1 539 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	page_group_index, .-page_group_index
	.type	set_page_group_in_use, @function
set_page_group_in_use:
.LFB7:
	.loc 1 547 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# group, group
	movq	%rsi, -24(%rbp)	# page, page
	.loc 1 548 0
	movq	-16(%rbp), %rax	# group, tmp66
	movl	24(%rax), %ebx	# group_1(D)->in_use, D.12333
	movq	-16(%rbp), %rax	# group, tmp67
	movq	8(%rax), %rax	# group_1(D)->allocation, D.12334
	movq	-24(%rbp), %rdx	# page, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.12334,
	call	page_group_index	#
	movl	$1, %edx	#, tmp69
	movl	%eax, %ecx	# D.12336, tmp72
	sall	%cl, %edx	# tmp72, D.12336
	movl	%edx, %eax	# D.12336, D.12336
	orl	%eax, %ebx	# D.12333, D.12333
	movl	%ebx, %edx	# D.12333, D.12333
	movq	-16(%rbp), %rax	# group, tmp70
	movl	%edx, 24(%rax)	# D.12333, group_1(D)->in_use
	.loc 1 549 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_page_group_in_use, .-set_page_group_in_use
	.type	clear_page_group_in_use, @function
clear_page_group_in_use:
.LFB8:
	.loc 1 555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# group, group
	movq	%rsi, -24(%rbp)	# page, page
	.loc 1 556 0
	movq	-16(%rbp), %rax	# group, tmp67
	movl	24(%rax), %ebx	# group_1(D)->in_use, D.12337
	movq	-16(%rbp), %rax	# group, tmp68
	movq	8(%rax), %rax	# group_1(D)->allocation, D.12338
	movq	-24(%rbp), %rdx	# page, tmp69
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# D.12338,
	call	page_group_index	#
	movl	$1, %edx	#, tmp70
	movl	%eax, %ecx	# D.12340, tmp73
	sall	%cl, %edx	# tmp73, D.12340
	movl	%edx, %eax	# D.12340, D.12340
	notl	%eax	# D.12340
	andl	%eax, %ebx	# D.12337, D.12337
	movl	%ebx, %edx	# D.12337, D.12337
	movq	-16(%rbp), %rax	# group, tmp71
	movl	%edx, 24(%rax)	# D.12337, group_1(D)->in_use
	.loc 1 557 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	clear_page_group_in_use, .-clear_page_group_in_use
	.section	.rodata
.LC3:
	.string	"ggc-page.c"
	.text
	.type	alloc_page, @function
alloc_page:
.LFB9:
	.loc 1 567 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movl	%edi, -148(%rbp)	# order, order
	.loc 1 578 0
	movl	-148(%rbp), %eax	# order, tmp110
	movl	objects_per_page_table(,%rax,4), %eax	# objects_per_page_table, D.12341
	movl	%eax, %eax	# D.12341, tmp211
	movq	%rax, -48(%rbp)	# tmp211, num_objects
	.loc 1 579 0
	movq	-48(%rbp), %rax	# num_objects, tmp111
	addq	$64, %rax	#, D.12342
	shrq	$6, %rax	#, D.12342
	salq	$3, %rax	#, tmp112
	movq	%rax, -40(%rbp)	# tmp112, bitmap_size
	.loc 1 580 0
	movq	-40(%rbp), %rax	# bitmap_size, tmp116
	addq	$48, %rax	#, tmp115
	movq	%rax, -32(%rbp)	# tmp115, page_entry_size
	.loc 1 581 0
	movl	-148(%rbp), %eax	# order, tmp117
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12342
	imulq	-48(%rbp), %rax	# num_objects, tmp118
	movq	%rax, -104(%rbp)	# tmp118, entry_size
	.loc 1 582 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	cmpq	-104(%rbp), %rax	# entry_size, D.12342
	jbe	.L19	#,
	.loc 1 583 0
	movq	G+1064(%rip), %rax	# G.pagesize, tmp119
	movq	%rax, -104(%rbp)	# tmp119, entry_size
.L19:
	.loc 1 585 0
	movq	$0, -136(%rbp)	#, entry
	.loc 1 586 0
	movq	$0, -112(%rbp)	#, page
	.loc 1 589 0
	movq	$G+1112, -120(%rbp)	#, pp
	movq	-120(%rbp), %rax	# pp, tmp120
	movq	(%rax), %rax	# *pp_30, tmp121
	movq	%rax, -128(%rbp)	# tmp121, p
	jmp	.L20	#
.L23:
	.loc 1 590 0
	movq	-128(%rbp), %rax	# p, tmp122
	movq	8(%rax), %rax	# p_4->bytes, D.12342
	cmpq	-104(%rbp), %rax	# entry_size, D.12342
	jne	.L21	#,
	.loc 1 591 0
	jmp	.L22	#
.L21:
	.loc 1 589 0
	movq	-128(%rbp), %rax	# p, tmp123
	movq	%rax, -120(%rbp)	# tmp123, pp
	movq	-120(%rbp), %rax	# pp, tmp124
	movq	(%rax), %rax	# *pp_33, tmp125
	movq	%rax, -128(%rbp)	# tmp125, p
.L20:
	.loc 1 589 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, p
	jne	.L23	#,
.L22:
	.loc 1 593 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, p
	je	.L24	#,
	.loc 1 596 0
	movq	-128(%rbp), %rax	# p, tmp126
	movq	(%rax), %rdx	# p_4->next, D.12343
	movq	-120(%rbp), %rax	# pp, tmp127
	movq	%rdx, (%rax)	# D.12343, *pp_5
	.loc 1 597 0
	movq	-128(%rbp), %rax	# p, tmp128
	movq	16(%rax), %rax	# p_4->page, tmp129
	movq	%rax, -112(%rbp)	# tmp129, page
	.loc 1 600 0
	movq	-128(%rbp), %rax	# p, tmp130
	movq	24(%rax), %rax	# p_4->group, tmp131
	movq	%rax, -96(%rbp)	# tmp131, group
	.loc 1 604 0
	movq	-128(%rbp), %rax	# p, tmp132
	movzbl	46(%rax), %eax	# p_4->order, D.12344
	movzbl	%al, %eax	# D.12344, D.12341
	cmpl	-148(%rbp), %eax	# order, D.12341
	jne	.L25	#,
	.loc 1 606 0
	movq	-128(%rbp), %rax	# p, tmp133
	movq	%rax, -136(%rbp)	# tmp133, entry
	.loc 1 607 0
	movq	-32(%rbp), %rdx	# page_entry_size, tmp134
	movq	-136(%rbp), %rax	# entry, tmp135
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	memset	#
	jmp	.L27	#
.L25:
	.loc 1 610 0
	movq	-128(%rbp), %rax	# p, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free	#
	jmp	.L27	#
.L24:
.LBB2:
	.loc 1 649 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	cmpq	-104(%rbp), %rax	# entry_size, D.12342
	sete	%al	#, D.12345
	movzbl	%al, %eax	# D.12345, tmp137
	movl	%eax, -140(%rbp)	# tmp137, multiple_pages
	.loc 1 651 0
	cmpl	$0, -140(%rbp)	#, multiple_pages
	je	.L28	#,
	.loc 1 652 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	salq	$4, %rax	#, tmp138
	movq	%rax, -72(%rbp)	# tmp138, alloc_size
	jmp	.L29	#
.L28:
	.loc 1 654 0
	movq	G+1064(%rip), %rdx	# G.pagesize, D.12342
	movq	-104(%rbp), %rax	# entry_size, tmp139
	addq	%rdx, %rax	# D.12342, D.12342
	subq	$1, %rax	#, tmp140
	movq	%rax, -72(%rbp)	# tmp140, alloc_size
.L29:
	.loc 1 655 0
	movq	-72(%rbp), %rax	# alloc_size, tmp141
	movq	%rax, %rdi	# tmp141,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp142, allocation
	.loc 1 657 0
	movq	G+1064(%rip), %rdx	# G.pagesize, D.12342
	movq	-24(%rbp), %rax	# allocation, allocation.8
	addq	%rdx, %rax	# D.12342, D.12342
	leaq	-1(%rax), %rdx	#, D.12342
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	negq	%rax	# D.12342
	andq	%rdx, %rax	# D.12342, D.12342
	movq	%rax, -112(%rbp)	# D.12342, page
	.loc 1 658 0
	movq	-112(%rbp), %rdx	# page, page.9
	movq	-24(%rbp), %rax	# allocation, allocation.10
	subq	%rax, %rdx	# allocation.10, D.12346
	movq	%rdx, %rax	# D.12346, D.12346
	movq	%rax, -16(%rbp)	# D.12346, head_slop
	.loc 1 659 0
	cmpl	$0, -140(%rbp)	#, multiple_pages
	je	.L30	#,
	.loc 1 660 0
	movq	-24(%rbp), %rdx	# allocation, allocation.11
	movq	-72(%rbp), %rax	# alloc_size, tmp143
	addq	%rax, %rdx	# tmp143, D.12342
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	subq	$1, %rax	#, D.12342
	andq	%rdx, %rax	# D.12342, tmp144
	movq	%rax, -64(%rbp)	# tmp144, tail_slop
	jmp	.L31	#
.L30:
	.loc 1 662 0
	movq	-104(%rbp), %rax	# entry_size, tmp145
	movq	-72(%rbp), %rdx	# alloc_size, tmp146
	subq	%rax, %rdx	# tmp145, D.12342
	movq	%rdx, %rax	# D.12342, D.12342
	subq	-16(%rbp), %rax	# head_slop, tmp148
	movq	%rax, -64(%rbp)	# tmp148, tail_slop
.L31:
	.loc 1 663 0
	movq	-64(%rbp), %rax	# tail_slop, tmp149
	movq	-72(%rbp), %rdx	# alloc_size, tmp150
	subq	%rax, %rdx	# tmp149, D.12347
	movq	-24(%rbp), %rax	# allocation, tmp154
	addq	%rdx, %rax	# D.12347, tmp153
	movq	%rax, -80(%rbp)	# tmp153, enda
	.loc 1 668 0
	cmpq	$31, -16(%rbp)	#, head_slop
	jbe	.L32	#,
	.loc 1 669 0
	movq	-112(%rbp), %rax	# page, tmp158
	subq	$32, %rax	#, tmp157
	movq	%rax, -96(%rbp)	# tmp157, group
	jmp	.L33	#
.L32:
	.loc 1 674 0
	cmpq	$0, -64(%rbp)	#, tail_slop
	jne	.L34	#,
	.loc 1 676 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	negq	%rax	# D.12347
	addq	%rax, -80(%rbp)	# D.12347, enda
	.loc 1 677 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	addq	%rax, -64(%rbp)	# D.12342, tail_slop
.L34:
	.loc 1 679 0
	cmpq	$31, -64(%rbp)	#, tail_slop
	ja	.L35	#,
	.loc 1 680 0
	movl	$__FUNCTION__.11531, %edx	#,
	movl	$680, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L35:
	.loc 1 681 0
	movq	-80(%rbp), %rax	# enda, tmp159
	movq	%rax, -96(%rbp)	# tmp159, group
	.loc 1 682 0
	subq	$32, -64(%rbp)	#, tail_slop
.L33:
	.loc 1 686 0
	movq	G+1120(%rip), %rdx	# G.page_groups, D.12348
	movq	-96(%rbp), %rax	# group, tmp160
	movq	%rdx, (%rax)	# D.12348, group_8->next
	.loc 1 687 0
	movq	-96(%rbp), %rax	# group, tmp161
	movq	-24(%rbp), %rdx	# allocation, tmp162
	movq	%rdx, 8(%rax)	# tmp162, group_8->allocation
	.loc 1 688 0
	movq	-96(%rbp), %rax	# group, tmp163
	movq	-72(%rbp), %rdx	# alloc_size, tmp164
	movq	%rdx, 16(%rax)	# tmp164, group_8->alloc_size
	.loc 1 689 0
	movq	-96(%rbp), %rax	# group, tmp165
	movl	$0, 24(%rax)	#, group_8->in_use
	.loc 1 690 0
	movq	-96(%rbp), %rax	# group, tmp166
	movq	%rax, G+1120(%rip)	# tmp166, G.page_groups
	.loc 1 691 0
	movq	G+1096(%rip), %rdx	# G.bytes_mapped, D.12342
	movq	-72(%rbp), %rax	# alloc_size, tmp167
	addq	%rdx, %rax	# D.12342, D.12342
	movq	%rax, G+1096(%rip)	# D.12342, G.bytes_mapped
	.loc 1 694 0
	cmpl	$0, -140(%rbp)	#, multiple_pages
	je	.L27	#,
.LBB3:
	.loc 1 696 0
	movq	G+1112(%rip), %rax	# G.free_pages, tmp168
	movq	%rax, -56(%rbp)	# tmp168, f
	.loc 1 697 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	negq	%rax	# D.12347
	movq	%rax, %rdx	# D.12347, D.12347
	movq	-80(%rbp), %rax	# enda, tmp172
	addq	%rdx, %rax	# D.12347, tmp171
	movq	%rax, -88(%rbp)	# tmp171, a
	jmp	.L36	#
.L37:
	.loc 1 699 0 discriminator 2
	movq	-32(%rbp), %rax	# page_entry_size, tmp173
	movq	%rax, %rsi	# tmp173,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp174, e
	.loc 1 700 0 discriminator 2
	movl	-148(%rbp), %eax	# order, tmp175
	movl	%eax, %edx	# tmp175, D.12344
	movq	-8(%rbp), %rax	# e, tmp176
	movb	%dl, 46(%rax)	# D.12344, e_86->order
	.loc 1 701 0 discriminator 2
	movq	G+1064(%rip), %rdx	# G.pagesize, D.12342
	movq	-8(%rbp), %rax	# e, tmp177
	movq	%rdx, 8(%rax)	# D.12342, e_86->bytes
	.loc 1 702 0 discriminator 2
	movq	-8(%rbp), %rax	# e, tmp178
	movq	-88(%rbp), %rdx	# a, tmp179
	movq	%rdx, 16(%rax)	# tmp179, e_86->page
	.loc 1 703 0 discriminator 2
	movq	-8(%rbp), %rax	# e, tmp180
	movq	-96(%rbp), %rdx	# group, tmp181
	movq	%rdx, 24(%rax)	# tmp181, e_86->group
	.loc 1 704 0 discriminator 2
	movq	-8(%rbp), %rax	# e, tmp182
	movq	-56(%rbp), %rdx	# f, tmp183
	movq	%rdx, (%rax)	# tmp183, e_86->next
	.loc 1 705 0 discriminator 2
	movq	-8(%rbp), %rax	# e, tmp184
	movq	%rax, -56(%rbp)	# tmp184, f
	.loc 1 697 0 discriminator 2
	movq	G+1064(%rip), %rax	# G.pagesize, D.12342
	negq	%rax	# D.12347
	addq	%rax, -88(%rbp)	# D.12347, a
.L36:
	.loc 1 697 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# a, tmp185
	cmpq	-112(%rbp), %rax	# page, tmp185
	jne	.L37	#,
	.loc 1 707 0 is_stmt 1
	movq	-56(%rbp), %rax	# f, tmp186
	movq	%rax, G+1112(%rip)	# tmp186, G.free_pages
.L27:
.LBE3:
.LBE2:
	.loc 1 712 0
	cmpq	$0, -136(%rbp)	#, entry
	jne	.L38	#,
	.loc 1 713 0
	movq	-32(%rbp), %rax	# page_entry_size, tmp187
	movq	%rax, %rsi	# tmp187,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -136(%rbp)	# tmp188, entry
.L38:
	.loc 1 715 0
	movq	-136(%rbp), %rax	# entry, tmp189
	movq	-104(%rbp), %rdx	# entry_size, tmp190
	movq	%rdx, 8(%rax)	# tmp190, entry_3->bytes
	.loc 1 716 0
	movq	-136(%rbp), %rax	# entry, tmp191
	movq	-112(%rbp), %rdx	# page, tmp192
	movq	%rdx, 16(%rax)	# tmp192, entry_3->page
	.loc 1 717 0
	movzwl	G+1104(%rip), %edx	# G.context_depth, D.12349
	movq	-136(%rbp), %rax	# entry, tmp193
	movw	%dx, 40(%rax)	# D.12349, entry_3->context_depth
	.loc 1 718 0
	movl	-148(%rbp), %eax	# order, tmp194
	movl	%eax, %edx	# tmp194, D.12344
	movq	-136(%rbp), %rax	# entry, tmp195
	movb	%dl, 46(%rax)	# D.12344, entry_3->order
	.loc 1 719 0
	movq	-48(%rbp), %rax	# num_objects, tmp196
	movl	%eax, %edx	# tmp196, D.12349
	movq	-136(%rbp), %rax	# entry, tmp197
	movw	%dx, 42(%rax)	# D.12349, entry_3->num_free_objects
	.loc 1 720 0
	movq	-136(%rbp), %rax	# entry, tmp198
	movw	$1, 44(%rax)	#, entry_3->next_bit_hint
	.loc 1 723 0
	movq	-136(%rbp), %rax	# entry, tmp199
	movq	-96(%rbp), %rdx	# group, tmp200
	movq	%rdx, 24(%rax)	# tmp200, entry_3->group
	.loc 1 724 0
	movq	-112(%rbp), %rdx	# page, tmp201
	movq	-96(%rbp), %rax	# group, tmp202
	movq	%rdx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	set_page_group_in_use	#
	.loc 1 729 0
	movq	-48(%rbp), %rax	# num_objects, tmp203
	shrq	$6, %rax	#, D.12342
	movq	%rax, %rsi	# D.12342, D.12342
	.loc 1 730 0
	movq	-48(%rbp), %rax	# num_objects, tmp204
	andl	$63, %eax	#, D.12350
	movl	$1, %edx	#, tmp205
	movl	%eax, %ecx	# D.12350, tmp217
	salq	%cl, %rdx	# tmp217, D.12342
	movq	%rdx, %rcx	# D.12342, D.12342
	movq	-136(%rbp), %rax	# entry, tmp206
	leaq	6(%rsi), %rdx	#, tmp207
	movq	%rcx, (%rax,%rdx,8)	# D.12342, entry_3->in_use_p
	.loc 1 732 0
	movq	-136(%rbp), %rdx	# entry, tmp208
	movq	-112(%rbp), %rax	# page, tmp209
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	set_page_table_entry	#
	.loc 1 740 0
	movq	-136(%rbp), %rax	# entry, D.12343
	.loc 1 741 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	alloc_page, .-alloc_page
	.type	free_page, @function
free_page:
.LFB10:
	.loc 1 748 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# entry, entry
	.loc 1 754 0
	movq	-8(%rbp), %rax	# entry, tmp63
	movq	16(%rax), %rax	# entry_1(D)->page, D.12352
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12352,
	call	set_page_table_entry	#
	.loc 1 757 0
	movq	-8(%rbp), %rax	# entry, tmp64
	movq	16(%rax), %rdx	# entry_1(D)->page, D.12352
	movq	-8(%rbp), %rax	# entry, tmp65
	movq	24(%rax), %rax	# entry_1(D)->group, D.12353
	movq	%rdx, %rsi	# D.12352,
	movq	%rax, %rdi	# D.12353,
	call	clear_page_group_in_use	#
	.loc 1 760 0
	movq	G+1112(%rip), %rdx	# G.free_pages, D.12354
	movq	-8(%rbp), %rax	# entry, tmp66
	movq	%rdx, (%rax)	# D.12354, entry_1(D)->next
	.loc 1 761 0
	movq	-8(%rbp), %rax	# entry, tmp67
	movq	%rax, G+1112(%rip)	# tmp67, G.free_pages
	.loc 1 762 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	free_page, .-free_page
	.type	release_pages, @function
release_pages:
.LFB11:
	.loc 1 768 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 804 0
	movq	$G+1112, -32(%rbp)	#, pp
	.loc 1 805 0
	jmp	.L42	#
.L44:
	.loc 1 806 0
	movq	-16(%rbp), %rax	# p, tmp68
	movq	24(%rax), %rax	# p_4->group, D.12355
	movl	24(%rax), %eax	# _5->in_use, D.12356
	testl	%eax, %eax	# D.12356
	jne	.L43	#,
	.loc 1 808 0
	movq	-16(%rbp), %rax	# p, tmp69
	movq	(%rax), %rdx	# p_4->next, D.12357
	movq	-32(%rbp), %rax	# pp, tmp70
	movq	%rdx, (%rax)	# D.12357, *pp_1
	.loc 1 809 0
	movq	-16(%rbp), %rax	# p, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
	jmp	.L42	#
.L43:
	.loc 1 812 0
	movq	-16(%rbp), %rax	# p, tmp72
	movq	%rax, -32(%rbp)	# tmp72, pp
.L42:
	.loc 1 805 0 discriminator 1
	movq	-32(%rbp), %rax	# pp, tmp73
	movq	(%rax), %rax	# *pp_1, tmp74
	movq	%rax, -16(%rbp)	# tmp74, p
	cmpq	$0, -16(%rbp)	#, p
	jne	.L44	#,
	.loc 1 815 0
	movq	$G+1120, -24(%rbp)	#, gp
	.loc 1 816 0
	jmp	.L45	#
.L47:
	.loc 1 817 0
	movq	-8(%rbp), %rax	# g, tmp75
	movl	24(%rax), %eax	# g_10->in_use, D.12356
	testl	%eax, %eax	# D.12356
	jne	.L46	#,
	.loc 1 819 0
	movq	-8(%rbp), %rax	# g, tmp76
	movq	(%rax), %rdx	# g_10->next, D.12355
	movq	-24(%rbp), %rax	# gp, tmp77
	movq	%rdx, (%rax)	# D.12355, *gp_2
	.loc 1 820 0
	movq	G+1096(%rip), %rdx	# G.bytes_mapped, D.12358
	movq	-8(%rbp), %rax	# g, tmp78
	movq	16(%rax), %rax	# g_10->alloc_size, D.12358
	subq	%rax, %rdx	# D.12358, D.12358
	movq	%rdx, %rax	# D.12358, D.12358
	movq	%rax, G+1096(%rip)	# D.12358, G.bytes_mapped
	.loc 1 821 0
	movq	-8(%rbp), %rax	# g, tmp79
	movq	8(%rax), %rax	# g_10->allocation, D.12359
	movq	%rax, %rdi	# D.12359,
	call	free	#
	jmp	.L45	#
.L46:
	.loc 1 824 0
	movq	-8(%rbp), %rax	# g, tmp80
	movq	%rax, -24(%rbp)	# tmp80, gp
.L45:
	.loc 1 816 0 discriminator 1
	movq	-24(%rbp), %rax	# gp, tmp81
	movq	(%rax), %rax	# *gp_2, tmp82
	movq	%rax, -8(%rbp)	# tmp82, g
	cmpq	$0, -8(%rbp)	#, g
	jne	.L47	#,
	.loc 1 826 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	release_pages, .-release_pages
	.data
	.align 32
	.type	size_lookup, @object
	.size	size_lookup, 257
size_lookup:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.text
	.globl	ggc_alloc
	.type	ggc_alloc, @function
ggc_alloc:
.LFB12:
	.loc 1 858 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# size, size
	.loc 1 863 0
	cmpq	$256, -56(%rbp)	#, size
	ja	.L49	#,
	.loc 1 864 0
	movq	-56(%rbp), %rax	# size, tmp97
	addq	$size_lookup, %rax	#, tmp96
	movzbl	(%rax), %eax	# size_lookup, D.12360
	movzbl	%al, %eax	# D.12360, tmp98
	movl	%eax, -44(%rbp)	# tmp98, order
	jmp	.L50	#
.L49:
	.loc 1 867 0
	movl	$9, -44(%rbp)	#, order
	.loc 1 868 0
	jmp	.L51	#
.L52:
	.loc 1 869 0
	addl	$1, -44(%rbp)	#, order
.L51:
	.loc 1 868 0 discriminator 1
	movl	-44(%rbp), %eax	# order, tmp99
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12361
	cmpq	-56(%rbp), %rax	# size, D.12361
	jb	.L52	#,
.L50:
	.loc 1 874 0
	movl	-44(%rbp), %eax	# order, tmp100
	movq	G(,%rax,8), %rax	# G.pages, tmp101
	movq	%rax, -24(%rbp)	# tmp101, entry
	.loc 1 878 0
	cmpq	$0, -24(%rbp)	#, entry
	je	.L53	#,
	.loc 1 878 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# entry, tmp102
	movzwl	42(%rax), %eax	# entry_18->num_free_objects, D.12362
	testw	%ax, %ax	# D.12362
	jne	.L54	#,
.L53:
.LBB4:
	.loc 1 881 0 is_stmt 1
	movl	-44(%rbp), %eax	# order, tmp103
	movl	%eax, %edi	# tmp103,
	call	alloc_page	#
	movq	%rax, -16(%rbp)	# tmp104, new_entry
	.loc 1 884 0
	cmpq	$0, -24(%rbp)	#, entry
	jne	.L55	#,
	.loc 1 885 0
	movl	-44(%rbp), %eax	# order, tmp105
	leaq	66(%rax), %rdx	#, tmp106
	movq	-16(%rbp), %rax	# new_entry, tmp107
	movq	%rax, G(,%rdx,8)	# tmp107, G.page_tails
.L55:
	.loc 1 888 0
	movq	-16(%rbp), %rax	# new_entry, tmp108
	movq	-24(%rbp), %rdx	# entry, tmp109
	movq	%rdx, (%rax)	# tmp109, new_entry_44->next
	.loc 1 889 0
	movq	-16(%rbp), %rax	# new_entry, tmp110
	movq	%rax, -24(%rbp)	# tmp110, entry
	.loc 1 890 0
	movl	-44(%rbp), %eax	# order, tmp111
	movq	-16(%rbp), %rdx	# new_entry, tmp112
	movq	%rdx, G(,%rax,8)	# tmp112, G.pages
	.loc 1 894 0
	movq	-16(%rbp), %rax	# new_entry, tmp113
	movw	$1, 44(%rax)	#, new_entry_44->next_bit_hint
	.loc 1 895 0
	movl	$0, -40(%rbp)	#, word
	.loc 1 896 0
	movl	$0, -36(%rbp)	#, bit
	.loc 1 897 0
	movl	$0, -32(%rbp)	#, object_offset
.LBE4:
	.loc 1 879 0
	jmp	.L56	#
.L54:
.LBB5:
	.loc 1 905 0
	movq	-24(%rbp), %rax	# entry, tmp114
	movzwl	44(%rax), %eax	# entry_18->next_bit_hint, D.12362
	movzwl	%ax, %eax	# D.12362, tmp115
	movl	%eax, -28(%rbp)	# tmp115, hint
	.loc 1 906 0
	movl	-28(%rbp), %eax	# hint, tmp117
	shrl	$6, %eax	#, tmp116
	movl	%eax, -40(%rbp)	# tmp116, word
	.loc 1 907 0
	movl	-28(%rbp), %eax	# hint, tmp121
	andl	$63, %eax	#, tmp120
	movl	%eax, -36(%rbp)	# tmp120, bit
	.loc 1 910 0
	movq	-24(%rbp), %rax	# entry, tmp122
	movl	-40(%rbp), %edx	# word, tmp123
	addq	$6, %rdx	#, tmp124
	movq	(%rax,%rdx,8), %rdx	# entry_18->in_use_p, D.12361
	movl	-36(%rbp), %eax	# bit, bit.4
	movl	%eax, %ecx	# bit.4, tmp167
	shrq	%cl, %rdx	# tmp167, D.12361
	movq	%rdx, %rax	# D.12361, D.12361
	andl	$1, %eax	#, D.12361
	testq	%rax, %rax	# D.12361
	je	.L57	#,
	.loc 1 912 0
	movl	$0, -36(%rbp)	#, bit
	movl	-36(%rbp), %eax	# bit, tmp125
	movl	%eax, -40(%rbp)	# tmp125, word
	.loc 1 913 0
	jmp	.L58	#
.L59:
	.loc 1 914 0
	addl	$1, -40(%rbp)	#, word
.L58:
	.loc 1 913 0 discriminator 1
	movq	-24(%rbp), %rax	# entry, tmp126
	movl	-40(%rbp), %edx	# word, tmp127
	addq	$6, %rdx	#, tmp128
	movq	(%rax,%rdx,8), %rax	# entry_18->in_use_p, D.12361
	cmpq	$-1, %rax	#, D.12361
	je	.L59	#,
	.loc 1 915 0
	jmp	.L60	#
.L61:
	.loc 1 916 0
	addl	$1, -36(%rbp)	#, bit
.L60:
	.loc 1 915 0 discriminator 1
	movq	-24(%rbp), %rax	# entry, tmp129
	movl	-40(%rbp), %edx	# word, tmp130
	addq	$6, %rdx	#, tmp131
	movq	(%rax,%rdx,8), %rdx	# entry_18->in_use_p, D.12361
	movl	-36(%rbp), %eax	# bit, bit.5
	movl	%eax, %ecx	# bit.5, tmp169
	shrq	%cl, %rdx	# tmp169, D.12361
	movq	%rdx, %rax	# D.12361, D.12361
	andl	$1, %eax	#, D.12361
	testq	%rax, %rax	# D.12361
	jne	.L61	#,
	.loc 1 917 0
	movl	-40(%rbp), %eax	# word, tmp132
	sall	$6, %eax	#, D.12363
	movl	%eax, %edx	# D.12363, D.12363
	movl	-36(%rbp), %eax	# bit, tmp136
	addl	%edx, %eax	# D.12363, tmp135
	movl	%eax, -28(%rbp)	# tmp135, hint
.L57:
	.loc 1 921 0
	movl	-28(%rbp), %eax	# hint, tmp137
	leal	1(%rax), %edx	#, D.12362
	movq	-24(%rbp), %rax	# entry, tmp138
	movw	%dx, 44(%rax)	# D.12362, entry_18->next_bit_hint
	.loc 1 923 0
	movl	-44(%rbp), %eax	# order, tmp139
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12361
	imull	-28(%rbp), %eax	# hint, tmp140
	movl	%eax, -32(%rbp)	# tmp140, object_offset
.L56:
.LBE5:
	.loc 1 927 0
	movq	-24(%rbp), %rax	# entry, tmp141
	movl	-40(%rbp), %edx	# word, tmp142
	addq	$6, %rdx	#, tmp143
	movq	(%rax,%rdx,8), %rdx	# entry_10->in_use_p, D.12361
	movl	-36(%rbp), %eax	# bit, bit.6
	movl	$1, %esi	#, tmp144
	movl	%eax, %ecx	# bit.6, tmp172
	salq	%cl, %rsi	# tmp172, D.12361
	movq	%rsi, %rax	# D.12361, D.12361
	movq	%rdx, %rcx	# D.12361, D.12361
	orq	%rax, %rcx	# D.12361, D.12361
	movq	-24(%rbp), %rax	# entry, tmp145
	movl	-40(%rbp), %edx	# word, tmp146
	addq	$6, %rdx	#, tmp147
	movq	%rcx, (%rax,%rdx,8)	# D.12361, entry_10->in_use_p
	.loc 1 933 0
	movq	-24(%rbp), %rax	# entry, tmp148
	movzwl	42(%rax), %eax	# entry_10->num_free_objects, D.12362
	leal	-1(%rax), %edx	#, D.12362
	movq	-24(%rbp), %rax	# entry, tmp149
	movw	%dx, 42(%rax)	# D.12362, entry_10->num_free_objects
	movq	-24(%rbp), %rax	# entry, tmp150
	movzwl	42(%rax), %eax	# entry_10->num_free_objects, D.12362
	testw	%ax, %ax	# D.12362
	jne	.L62	#,
	.loc 1 934 0
	movq	-24(%rbp), %rax	# entry, tmp151
	movq	(%rax), %rax	# entry_10->next, D.12364
	testq	%rax, %rax	# D.12364
	je	.L62	#,
	.loc 1 935 0
	movq	-24(%rbp), %rax	# entry, tmp152
	movq	(%rax), %rax	# entry_10->next, D.12364
	movzwl	42(%rax), %eax	# _57->num_free_objects, D.12362
	testw	%ax, %ax	# D.12362
	je	.L62	#,
	.loc 1 937 0
	movq	-24(%rbp), %rax	# entry, tmp153
	movq	(%rax), %rdx	# entry_10->next, D.12364
	movl	-44(%rbp), %eax	# order, tmp154
	movq	%rdx, G(,%rax,8)	# D.12364, G.pages
	.loc 1 938 0
	movq	-24(%rbp), %rax	# entry, tmp155
	movq	$0, (%rax)	#, entry_10->next
	.loc 1 939 0
	movl	-44(%rbp), %eax	# order, tmp156
	addq	$66, %rax	#, tmp157
	movq	G(,%rax,8), %rax	# G.page_tails, D.12365
	movq	-24(%rbp), %rdx	# entry, tmp158
	movq	%rdx, (%rax)	# tmp158, _60->next
	.loc 1 940 0
	movl	-44(%rbp), %eax	# order, tmp159
	leaq	66(%rax), %rdx	#, tmp160
	movq	-24(%rbp), %rax	# entry, tmp161
	movq	%rax, G(,%rdx,8)	# tmp161, G.page_tails
.L62:
	.loc 1 944 0
	movq	-24(%rbp), %rax	# entry, tmp162
	movq	16(%rax), %rdx	# entry_10->page, D.12366
	movl	-32(%rbp), %eax	# object_offset, D.12367
	addq	%rdx, %rax	# D.12366, tmp163
	movq	%rax, -8(%rbp)	# tmp163, result
	.loc 1 954 0
	movq	G+1080(%rip), %rdx	# G.allocated, D.12361
	movl	-44(%rbp), %eax	# order, tmp164
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12361
	addq	%rdx, %rax	# D.12361, D.12361
	movq	%rax, G+1080(%rip)	# D.12361, G.allocated
	.loc 1 961 0
	movq	-8(%rbp), %rax	# result, D.12368
	.loc 1 962 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ggc_alloc, .-ggc_alloc
	.globl	ggc_set_mark
	.type	ggc_set_mark, @function
ggc_set_mark:
.LFB13:
	.loc 1 971 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	.loc 1 978 0
	movq	-40(%rbp), %rax	# p, tmp78
	movq	%rax, %rdi	# tmp78,
	call	lookup_page_table_entry	#
	movq	%rax, -16(%rbp)	# tmp79, entry
	.loc 1 986 0
	movq	-40(%rbp), %rdx	# p, p.14
	movq	-16(%rbp), %rax	# entry, tmp80
	movq	16(%rax), %rax	# entry_3->page, D.12370
	subq	%rax, %rdx	# D.12371, D.12371
	movq	%rdx, %rax	# D.12371, D.12371
	movq	-16(%rbp), %rdx	# entry, tmp81
	movzbl	46(%rdx), %edx	# entry_3->order, D.12373
	movzbl	%dl, %edx	# D.12373, D.12369
	movslq	%edx, %rdx	# D.12369, tmp82
	movq	object_size_table(,%rdx,8), %rsi	# object_size_table, D.12372
	movl	$0, %edx	#, tmp84
	divq	%rsi	# D.12372
	movl	%eax, -24(%rbp)	# D.12372, bit
	.loc 1 987 0
	movl	-24(%rbp), %eax	# bit, tmp86
	shrl	$6, %eax	#, tmp85
	movl	%eax, -20(%rbp)	# tmp85, word
	.loc 1 988 0
	movl	-24(%rbp), %eax	# bit, bit.15
	andl	$63, %eax	#, D.12369
	movl	$1, %edx	#, tmp87
	movl	%eax, %ecx	# D.12369, tmp104
	salq	%cl, %rdx	# tmp104, tmp88
	movq	%rdx, %rax	# tmp88, tmp88
	movq	%rax, -8(%rbp)	# tmp88, mask
	.loc 1 991 0
	movq	-16(%rbp), %rax	# entry, tmp89
	movl	-20(%rbp), %edx	# word, tmp90
	addq	$6, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# entry_3->in_use_p, D.12372
	andq	-8(%rbp), %rax	# mask, D.12372
	testq	%rax, %rax	# D.12372
	je	.L65	#,
	.loc 1 992 0
	movl	$1, %eax	#, D.12369
	jmp	.L66	#
.L65:
	.loc 1 995 0
	movq	-16(%rbp), %rax	# entry, tmp92
	movl	-20(%rbp), %edx	# word, tmp93
	addq	$6, %rdx	#, tmp94
	movq	(%rax,%rdx,8), %rax	# entry_3->in_use_p, D.12372
	orq	-8(%rbp), %rax	# mask, D.12372
	movq	%rax, %rdx	# D.12372, D.12372
	movq	-16(%rbp), %rax	# entry, tmp95
	movl	-20(%rbp), %ecx	# word, tmp96
	addq	$6, %rcx	#, tmp97
	movq	%rdx, (%rax,%rcx,8)	# D.12372, entry_3->in_use_p
	.loc 1 996 0
	movq	-16(%rbp), %rax	# entry, tmp98
	movzwl	42(%rax), %eax	# entry_3->num_free_objects, D.12374
	leal	-1(%rax), %edx	#, D.12374
	movq	-16(%rbp), %rax	# entry, tmp99
	movw	%dx, 42(%rax)	# D.12374, entry_3->num_free_objects
	.loc 1 1001 0
	movl	$0, %eax	#, D.12369
.L66:
	.loc 1 1002 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ggc_set_mark, .-ggc_set_mark
	.globl	ggc_marked_p
	.type	ggc_marked_p, @function
ggc_marked_p:
.LFB14:
	.loc 1 1011 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	.loc 1 1018 0
	movq	-40(%rbp), %rax	# p, tmp75
	movq	%rax, %rdi	# tmp75,
	call	lookup_page_table_entry	#
	movq	%rax, -16(%rbp)	# tmp76, entry
	.loc 1 1026 0
	movq	-40(%rbp), %rdx	# p, p.19
	movq	-16(%rbp), %rax	# entry, tmp77
	movq	16(%rax), %rax	# entry_2->page, D.12376
	subq	%rax, %rdx	# D.12377, D.12377
	movq	%rdx, %rax	# D.12377, D.12377
	movq	-16(%rbp), %rdx	# entry, tmp78
	movzbl	46(%rdx), %edx	# entry_2->order, D.12379
	movzbl	%dl, %edx	# D.12379, D.12380
	movslq	%edx, %rdx	# D.12380, tmp79
	movq	object_size_table(,%rdx,8), %rsi	# object_size_table, D.12378
	movl	$0, %edx	#, tmp81
	divq	%rsi	# D.12378
	movl	%eax, -24(%rbp)	# D.12378, bit
	.loc 1 1027 0
	movl	-24(%rbp), %eax	# bit, tmp83
	shrl	$6, %eax	#, tmp82
	movl	%eax, -20(%rbp)	# tmp82, word
	.loc 1 1028 0
	movl	-24(%rbp), %eax	# bit, bit.20
	andl	$63, %eax	#, D.12380
	movl	$1, %edx	#, tmp84
	movl	%eax, %ecx	# D.12380, tmp93
	salq	%cl, %rdx	# tmp93, tmp85
	movq	%rdx, %rax	# tmp85, tmp85
	movq	%rax, -8(%rbp)	# tmp85, mask
	.loc 1 1030 0
	movq	-16(%rbp), %rax	# entry, tmp86
	movl	-20(%rbp), %edx	# word, tmp87
	addq	$6, %rdx	#, tmp88
	movq	(%rax,%rdx,8), %rax	# entry_2->in_use_p, D.12378
	andq	-8(%rbp), %rax	# mask, D.12378
	testq	%rax, %rax	# D.12378
	setne	%al	#, D.12381
	movzbl	%al, %eax	# D.12381, D.12380
	.loc 1 1031 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ggc_marked_p, .-ggc_marked_p
	.globl	ggc_get_size
	.type	ggc_get_size, @function
ggc_get_size:
.LFB15:
	.loc 1 1038 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 1039 0
	movq	-24(%rbp), %rax	# p, tmp63
	movq	%rax, %rdi	# tmp63,
	call	lookup_page_table_entry	#
	movq	%rax, -8(%rbp)	# tmp64, pe
	.loc 1 1040 0
	movq	-8(%rbp), %rax	# pe, tmp65
	movzbl	46(%rax), %eax	# pe_2->order, D.12382
	movzbl	%al, %eax	# D.12382, D.12383
	cltq
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12384
	.loc 1 1041 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ggc_get_size, .-ggc_get_size
	.globl	init_ggc
	.type	init_ggc, @function
init_ggc:
.LFB16:
	.loc 1 1047 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1065 0
	call	getpagesize	#
	cltq
	movq	%rax, G+1064(%rip)	# D.12386, G.pagesize
	.loc 1 1067 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12386
	movq	%rax, %rdi	# D.12386,
	call	exact_log2_wide	#
	cltq
	movq	%rax, G+1072(%rip)	# D.12386, G.lg_pagesize
	.loc 1 1078 0
	movq	stdout(%rip), %rax	# stdout, stdout.21
	movq	%rax, G+1128(%rip)	# stdout.21, G.debug_file
	.loc 1 1081 0
	movq	$4194304, G+1088(%rip)	#, G.allocated_last_gc
	.loc 1 1111 0
	movl	$0, -20(%rbp)	#, order
	jmp	.L72	#
.L73:
	.loc 1 1112 0 discriminator 2
	movl	-20(%rbp), %eax	# order, order.22
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# order.22, tmp104
	salq	%cl, %rdx	# tmp104, D.12386
	movl	-20(%rbp), %eax	# order, tmp82
	movq	%rdx, object_size_table(,%rax,8)	# D.12386, object_size_table
	.loc 1 1111 0 discriminator 2
	addl	$1, -20(%rbp)	#, order
.L72:
	.loc 1 1111 0 is_stmt 0 discriminator 1
	cmpl	$63, -20(%rbp)	#, order
	jbe	.L73	#,
	.loc 1 1113 0 is_stmt 1
	movl	$64, -20(%rbp)	#, order
	jmp	.L74	#
.L75:
.LBB6:
	.loc 1 1115 0 discriminator 2
	movl	-20(%rbp), %eax	# order, tmp83
	subl	$64, %eax	#, D.12387
	movl	%eax, %eax	# D.12387, tmp84
	movq	extra_order_size_table(,%rax,8), %rax	# extra_order_size_table, tmp85
	movq	%rax, -8(%rbp)	# tmp85, s
	.loc 1 1119 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp86
	addq	$15, %rax	#, D.12386
	shrq	$4, %rax	#, D.12386
	salq	$4, %rax	#, tmp87
	movq	%rax, -8(%rbp)	# tmp87, s
	.loc 1 1120 0 discriminator 2
	movl	-20(%rbp), %eax	# order, tmp88
	movq	-8(%rbp), %rdx	# s, tmp89
	movq	%rdx, object_size_table(,%rax,8)	# tmp89, object_size_table
.LBE6:
	.loc 1 1113 0 discriminator 2
	addl	$1, -20(%rbp)	#, order
.L74:
	.loc 1 1113 0 is_stmt 0 discriminator 1
	cmpl	$65, -20(%rbp)	#, order
	jbe	.L75	#,
	.loc 1 1124 0 is_stmt 1
	movl	$0, -20(%rbp)	#, order
	jmp	.L76	#
.L78:
	.loc 1 1126 0
	movq	G+1064(%rip), %rax	# G.pagesize, D.12386
	movl	-20(%rbp), %edx	# order, tmp90
	movq	object_size_table(,%rdx,8), %rsi	# object_size_table, D.12386
	movl	$0, %edx	#, tmp92
	divq	%rsi	# D.12386
	movl	%eax, %edx	# D.12386, D.12387
	movl	-20(%rbp), %eax	# order, tmp93
	movl	%edx, objects_per_page_table(,%rax,4)	# D.12387, objects_per_page_table
	.loc 1 1127 0
	movl	-20(%rbp), %eax	# order, tmp94
	movl	objects_per_page_table(,%rax,4), %eax	# objects_per_page_table, D.12387
	testl	%eax, %eax	# D.12387
	jne	.L77	#,
	.loc 1 1128 0
	movl	-20(%rbp), %eax	# order, tmp95
	movl	$1, objects_per_page_table(,%rax,4)	#, objects_per_page_table
.L77:
	.loc 1 1124 0
	addl	$1, -20(%rbp)	#, order
.L76:
	.loc 1 1124 0 is_stmt 0 discriminator 1
	cmpl	$65, -20(%rbp)	#, order
	jbe	.L78	#,
	.loc 1 1135 0 is_stmt 1
	movl	$64, -20(%rbp)	#, order
	jmp	.L79	#
.L82:
.LBB7:
	.loc 1 1140 0
	movl	-20(%rbp), %eax	# order, tmp96
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12386
	movzbl	size_lookup(%rax), %eax	# size_lookup, D.12388
	movzbl	%al, %eax	# D.12388, tmp97
	movl	%eax, -12(%rbp)	# tmp97, o
	.loc 1 1141 0
	movl	-20(%rbp), %eax	# order, tmp98
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12386
	movl	%eax, -16(%rbp)	# D.12386, i
	jmp	.L80	#
.L81:
	.loc 1 1142 0 discriminator 2
	movl	-20(%rbp), %eax	# order, tmp99
	movl	%eax, %edx	# tmp99, D.12388
	movl	-16(%rbp), %eax	# i, tmp101
	cltq
	movb	%dl, size_lookup(%rax)	# D.12388, size_lookup
	.loc 1 1141 0 discriminator 2
	subl	$1, -16(%rbp)	#, i
.L80:
	.loc 1 1141 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp103
	cltq
	movzbl	size_lookup(%rax), %eax	# size_lookup, D.12388
	movzbl	%al, %eax	# D.12388, D.12385
	cmpl	-12(%rbp), %eax	# o, D.12385
	je	.L81	#,
.LBE7:
	.loc 1 1135 0 is_stmt 1
	addl	$1, -20(%rbp)	#, order
.L79:
	.loc 1 1135 0 is_stmt 0 discriminator 1
	cmpl	$65, -20(%rbp)	#, order
	jbe	.L82	#,
	.loc 1 1144 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	init_ggc, .-init_ggc
	.globl	ggc_push_context
	.type	ggc_push_context, @function
ggc_push_context:
.LFB17:
	.loc 1 1151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1152 0
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12389
	addl	$1, %eax	#, D.12389
	movw	%ax, G+1104(%rip)	# D.12389, G.context_depth
	.loc 1 1155 0
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12389
	testw	%ax, %ax	# D.12389
	jne	.L83	#,
	.loc 1 1156 0
	movl	$__FUNCTION__.11614, %edx	#,
	movl	$1156, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L83:
	.loc 1 1157 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ggc_push_context, .-ggc_push_context
	.type	ggc_recalculate_in_use_p, @function
ggc_recalculate_in_use_p:
.LFB18:
	.loc 1 1165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	.loc 1 1171 0
	movq	-40(%rbp), %rax	# p, tmp84
	movzbl	46(%rax), %eax	# p_3(D)->order, D.12390
	movzbl	%al, %eax	# D.12390, D.12391
	cltq
	movl	objects_per_page_table(,%rax,4), %eax	# objects_per_page_table, D.12392
	addl	$1, %eax	#, D.12392
	movl	%eax, %eax	# D.12392, tmp104
	movq	%rax, -8(%rbp)	# tmp104, num_objects
	.loc 1 1174 0
	movq	-8(%rbp), %rax	# num_objects, tmp86
	movl	%eax, %edx	# tmp86, D.12393
	movq	-40(%rbp), %rax	# p, tmp87
	movw	%dx, 42(%rax)	# D.12393, p_3(D)->num_free_objects
	.loc 1 1177 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L86	#
.L89:
.LBB8:
	.loc 1 1186 0
	movq	-40(%rbp), %rax	# p, tmp88
	movl	-20(%rbp), %edx	# i, tmp89
	addq	$6, %rdx	#, tmp90
	movq	(%rax,%rdx,8), %rdx	# p_3(D)->in_use_p, D.12394
	movq	-40(%rbp), %rax	# p, tmp91
	movq	32(%rax), %rax	# p_3(D)->save_in_use_p, D.12395
	movl	-20(%rbp), %ecx	# i, D.12394
	salq	$3, %rcx	#, D.12394
	addq	%rcx, %rax	# D.12394, D.12395
	movq	(%rax), %rax	# *_22, D.12394
	movq	%rdx, %rcx	# D.12394, D.12394
	orq	%rax, %rcx	# D.12394, D.12394
	movq	-40(%rbp), %rax	# p, tmp92
	movl	-20(%rbp), %edx	# i, tmp93
	addq	$6, %rdx	#, tmp94
	movq	%rcx, (%rax,%rdx,8)	# D.12394, p_3(D)->in_use_p
	.loc 1 1189 0
	movq	-40(%rbp), %rax	# p, tmp95
	movl	-20(%rbp), %edx	# i, tmp96
	addq	$6, %rdx	#, tmp97
	movq	(%rax,%rdx,8), %rax	# p_3(D)->in_use_p, tmp98
	movq	%rax, -16(%rbp)	# tmp98, j
	jmp	.L87	#
.L88:
	.loc 1 1190 0 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp99
	movzwl	42(%rax), %eax	# p_3(D)->num_free_objects, D.12393
	movq	-16(%rbp), %rdx	# j, tmp100
	andl	$1, %edx	#, D.12393
	subl	%edx, %eax	# D.12393, D.12393
	movl	%eax, %edx	# D.12393, D.12393
	movq	-40(%rbp), %rax	# p, tmp101
	movw	%dx, 42(%rax)	# D.12393, p_3(D)->num_free_objects
	.loc 1 1189 0 discriminator 2
	shrq	-16(%rbp)	# j
.L87:
	.loc 1 1189 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, j
	jne	.L88	#,
.LBE8:
	.loc 1 1180 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L86:
	.loc 1 1178 0 discriminator 1
	movl	-20(%rbp), %eax	# i, D.12394
	movq	-8(%rbp), %rdx	# num_objects, tmp102
	addq	$63, %rdx	#, D.12394
	shrq	$6, %rdx	#, D.12394
	addq	$1, %rdx	#, D.12394
	salq	$3, %rdx	#, D.12394
	subq	$1, %rdx	#, D.12394
	shrq	$3, %rdx	#, D.12394
	.loc 1 1177 0 discriminator 1
	cmpq	%rdx, %rax	# D.12394, D.12394
	jb	.L89	#,
	.loc 1 1193 0
	movq	-40(%rbp), %rax	# p, tmp103
	movzwl	42(%rax), %eax	# p_3(D)->num_free_objects, D.12393
	movzwl	%ax, %eax	# D.12393, D.12394
	cmpq	-8(%rbp), %rax	# num_objects, D.12394
	jb	.L85	#,
	.loc 1 1194 0
	movl	$__FUNCTION__.11627, %edx	#,
	movl	$1194, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L85:
	.loc 1 1195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ggc_recalculate_in_use_p, .-ggc_recalculate_in_use_p
	.globl	ggc_pop_context
	.type	ggc_pop_context, @function
ggc_pop_context:
.LFB19:
	.loc 1 1202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1205 0
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12396
	subl	$1, %eax	#, D.12396
	movw	%ax, G+1104(%rip)	# D.12396, G.context_depth
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12396
	movzwl	%ax, %eax	# D.12396, tmp69
	movl	%eax, -12(%rbp)	# tmp69, depth
	.loc 1 1210 0
	movl	$2, -16(%rbp)	#, order
	jmp	.L92	#
.L97:
.LBB9:
	.loc 1 1214 0
	movl	-16(%rbp), %eax	# order, tmp70
	movq	G(,%rax,8), %rax	# G.pages, tmp71
	movq	%rax, -8(%rbp)	# tmp71, p
	jmp	.L93	#
.L96:
	.loc 1 1216 0
	movq	-8(%rbp), %rax	# p, tmp72
	movzwl	40(%rax), %eax	# p_2->context_depth, D.12396
	movzwl	%ax, %eax	# D.12396, D.12397
	cmpl	-12(%rbp), %eax	# depth, D.12397
	jbe	.L94	#,
	.loc 1 1217 0
	movl	-12(%rbp), %eax	# depth, tmp73
	movl	%eax, %edx	# tmp73, D.12396
	movq	-8(%rbp), %rax	# p, tmp74
	movw	%dx, 40(%rax)	# D.12396, p_2->context_depth
	jmp	.L95	#
.L94:
	.loc 1 1221 0
	movq	-8(%rbp), %rax	# p, tmp75
	movzwl	40(%rax), %eax	# p_2->context_depth, D.12396
	movzwl	%ax, %eax	# D.12396, D.12397
	cmpl	-12(%rbp), %eax	# depth, D.12397
	jne	.L95	#,
	.loc 1 1221 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp76
	movq	32(%rax), %rax	# p_2->save_in_use_p, D.12398
	testq	%rax, %rax	# D.12398
	je	.L95	#,
	.loc 1 1223 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp77
	movq	%rax, %rdi	# tmp77,
	call	ggc_recalculate_in_use_p	#
	.loc 1 1224 0
	movq	-8(%rbp), %rax	# p, tmp78
	movq	32(%rax), %rax	# p_2->save_in_use_p, D.12398
	movq	%rax, %rdi	# D.12398,
	call	free	#
	.loc 1 1225 0
	movq	-8(%rbp), %rax	# p, tmp79
	movq	$0, 32(%rax)	#, p_2->save_in_use_p
.L95:
	.loc 1 1214 0
	movq	-8(%rbp), %rax	# p, tmp80
	movq	(%rax), %rax	# p_2->next, tmp81
	movq	%rax, -8(%rbp)	# tmp81, p
.L93:
	.loc 1 1214 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L96	#,
.LBE9:
	.loc 1 1210 0 is_stmt 1
	addl	$1, -16(%rbp)	#, order
.L92:
	.loc 1 1210 0 is_stmt 0 discriminator 1
	cmpl	$65, -16(%rbp)	#, order
	jbe	.L97	#,
	.loc 1 1229 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ggc_pop_context, .-ggc_pop_context
	.type	clear_marks, @function
clear_marks:
.LFB20:
	.loc 1 1235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1238 0
	movl	$2, -28(%rbp)	#, order
	jmp	.L99	#
.L104:
.LBB10:
	.loc 1 1240 0
	movl	-28(%rbp), %eax	# order, tmp74
	movl	objects_per_page_table(,%rax,4), %eax	# objects_per_page_table, D.12399
	movl	%eax, %eax	# D.12399, tmp98
	movq	%rax, -16(%rbp)	# tmp98, num_objects
	.loc 1 1241 0
	movq	-16(%rbp), %rax	# num_objects, tmp75
	addq	$64, %rax	#, D.12400
	shrq	$6, %rax	#, D.12400
	salq	$3, %rax	#, tmp76
	movq	%rax, -8(%rbp)	# tmp76, bitmap_size
	.loc 1 1244 0
	movl	-28(%rbp), %eax	# order, tmp77
	movq	G(,%rax,8), %rax	# G.pages, tmp78
	movq	%rax, -24(%rbp)	# tmp78, p
	jmp	.L100	#
.L103:
	.loc 1 1255 0
	movq	-24(%rbp), %rax	# p, tmp79
	movzwl	40(%rax), %edx	# p_2->context_depth, D.12401
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12401
	cmpw	%ax, %dx	# D.12401, D.12401
	jae	.L101	#,
	.loc 1 1257 0
	movq	-24(%rbp), %rax	# p, tmp80
	movq	32(%rax), %rax	# p_2->save_in_use_p, D.12402
	testq	%rax, %rax	# D.12402
	jne	.L102	#,
	.loc 1 1258 0
	movq	-8(%rbp), %rax	# bitmap_size, tmp81
	movq	%rax, %rdi	# tmp81,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp82, D.12403
	movq	-24(%rbp), %rax	# p, tmp83
	movq	%rdx, 32(%rax)	# D.12403, p_2->save_in_use_p
.L102:
	.loc 1 1259 0
	movq	-24(%rbp), %rax	# p, tmp84
	leaq	48(%rax), %rcx	#, D.12404
	movq	-24(%rbp), %rax	# p, tmp85
	movq	32(%rax), %rax	# p_2->save_in_use_p, D.12402
	movq	-8(%rbp), %rdx	# bitmap_size, tmp86
	movq	%rcx, %rsi	# D.12404,
	movq	%rax, %rdi	# D.12402,
	call	memcpy	#
.L101:
	.loc 1 1264 0
	movq	-16(%rbp), %rax	# num_objects, tmp87
	movl	%eax, %edx	# tmp87, D.12401
	movq	-24(%rbp), %rax	# p, tmp88
	movw	%dx, 42(%rax)	# D.12401, p_2->num_free_objects
	.loc 1 1265 0
	movq	-24(%rbp), %rax	# p, tmp89
	leaq	48(%rax), %rcx	#, D.12404
	movq	-8(%rbp), %rax	# bitmap_size, tmp90
	movq	%rax, %rdx	# tmp90,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.12404,
	call	memset	#
	.loc 1 1268 0
	movq	-16(%rbp), %rax	# num_objects, tmp91
	shrq	$6, %rax	#, D.12400
	movq	%rax, %rsi	# D.12400, D.12400
	.loc 1 1269 0
	movq	-16(%rbp), %rax	# num_objects, tmp92
	andl	$63, %eax	#, D.12405
	movl	$1, %edx	#, tmp93
	movl	%eax, %ecx	# D.12405, tmp101
	salq	%cl, %rdx	# tmp101, D.12400
	movq	%rdx, %rcx	# D.12400, D.12400
	movq	-24(%rbp), %rax	# p, tmp94
	leaq	6(%rsi), %rdx	#, tmp95
	movq	%rcx, (%rax,%rdx,8)	# D.12400, p_2->in_use_p
	.loc 1 1244 0
	movq	-24(%rbp), %rax	# p, tmp96
	movq	(%rax), %rax	# p_2->next, tmp97
	movq	%rax, -24(%rbp)	# tmp97, p
.L100:
	.loc 1 1244 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	jne	.L103	#,
.LBE10:
	.loc 1 1238 0 is_stmt 1
	addl	$1, -28(%rbp)	#, order
.L99:
	.loc 1 1238 0 is_stmt 0 discriminator 1
	cmpl	$65, -28(%rbp)	#, order
	jbe	.L104	#,
	.loc 1 1272 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	clear_marks, .-clear_marks
	.type	sweep_pages, @function
sweep_pages:
.LFB21:
	.loc 1 1279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1282 0
	movl	$2, -56(%rbp)	#, order
	jmp	.L106	#
.L123:
.LBB11:
	.loc 1 1286 0
	movl	-56(%rbp), %eax	# order, tmp79
	addq	$66, %rax	#, tmp80
	movq	G(,%rax,8), %rax	# G.page_tails, tmp81
	movq	%rax, -32(%rbp)	# tmp81, last
	.loc 1 1288 0
	movl	-56(%rbp), %eax	# order, tmp82
	movl	objects_per_page_table(,%rax,4), %eax	# objects_per_page_table, D.12406
	movl	%eax, %eax	# D.12406, tmp143
	movq	%rax, -24(%rbp)	# tmp143, num_objects
	.loc 1 1293 0
	movl	-56(%rbp), %eax	# order, tmp83
	movq	G(,%rax,8), %rax	# G.pages, tmp84
	movq	%rax, -48(%rbp)	# tmp84, p
	.loc 1 1294 0
	cmpq	$0, -48(%rbp)	#, p
	jne	.L107	#,
	.loc 1 1295 0
	jmp	.L108	#
.L107:
	.loc 1 1297 0
	movq	$0, -40(%rbp)	#, previous
.L119:
.LBB12:
	.loc 1 1300 0
	movq	-48(%rbp), %rax	# p, tmp85
	movq	(%rax), %rax	# p_2->next, tmp86
	movq	%rax, -16(%rbp)	# tmp86, next
	.loc 1 1303 0
	movq	-48(%rbp), %rax	# p, tmp87
	cmpq	-32(%rbp), %rax	# last, tmp87
	sete	%al	#, D.12407
	movzbl	%al, %eax	# D.12407, tmp88
	movl	%eax, -52(%rbp)	# tmp88, done
	.loc 1 1307 0
	movq	-48(%rbp), %rax	# p, tmp89
	movzwl	42(%rax), %eax	# p_2->num_free_objects, D.12408
	movzwl	%ax, %eax	# D.12408, D.12409
	movq	-24(%rbp), %rdx	# num_objects, tmp93
	subq	%rax, %rdx	# D.12409, tmp92
	movq	%rdx, %rax	# tmp92, tmp92
	movq	%rax, -8(%rbp)	# tmp92, live_objects
	.loc 1 1309 0
	movq	G+1080(%rip), %rdx	# G.allocated, D.12409
	movl	-56(%rbp), %eax	# order, tmp94
	movq	object_size_table(,%rax,8), %rax	# object_size_table, D.12409
	imulq	-8(%rbp), %rax	# live_objects, D.12409
	addq	%rdx, %rax	# D.12409, D.12409
	movq	%rax, G+1080(%rip)	# D.12409, G.allocated
	.loc 1 1313 0
	movq	-48(%rbp), %rax	# p, tmp95
	movzwl	40(%rax), %edx	# p_2->context_depth, D.12408
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12408
	cmpw	%ax, %dx	# D.12408, D.12408
	jb	.L109	#,
	.loc 1 1317 0
	cmpq	$0, -8(%rbp)	#, live_objects
	jne	.L110	#,
	.loc 1 1319 0
	cmpq	$0, -40(%rbp)	#, previous
	jne	.L111	#,
	.loc 1 1320 0
	movl	-56(%rbp), %eax	# order, tmp96
	movq	-16(%rbp), %rdx	# next, tmp97
	movq	%rdx, G(,%rax,8)	# tmp97, G.pages
	jmp	.L112	#
.L111:
	.loc 1 1322 0
	movq	-40(%rbp), %rax	# previous, tmp98
	movq	-16(%rbp), %rdx	# next, tmp99
	movq	%rdx, (%rax)	# tmp99, previous_6->next
.L112:
	.loc 1 1325 0
	movl	-56(%rbp), %eax	# order, tmp100
	addq	$66, %rax	#, tmp101
	movq	G(,%rax,8), %rax	# G.page_tails, D.12410
	cmpq	-48(%rbp), %rax	# p, D.12410
	jne	.L113	#,
	.loc 1 1326 0
	movl	-56(%rbp), %eax	# order, tmp102
	leaq	66(%rax), %rdx	#, tmp103
	movq	-40(%rbp), %rax	# previous, tmp104
	movq	%rax, G(,%rdx,8)	# tmp104, G.page_tails
.L113:
	.loc 1 1327 0
	movq	-48(%rbp), %rax	# p, tmp105
	movq	%rax, %rdi	# tmp105,
	call	free_page	#
	.loc 1 1328 0
	movq	-40(%rbp), %rax	# previous, tmp106
	movq	%rax, -48(%rbp)	# tmp106, p
	jmp	.L109	#
.L110:
	.loc 1 1332 0
	movq	-48(%rbp), %rax	# p, tmp107
	movzwl	42(%rax), %eax	# p_2->num_free_objects, D.12408
	testw	%ax, %ax	# D.12408
	jne	.L114	#,
	.loc 1 1335 0
	movl	-56(%rbp), %eax	# order, tmp108
	addq	$66, %rax	#, tmp109
	movq	G(,%rax,8), %rax	# G.page_tails, D.12410
	cmpq	-48(%rbp), %rax	# p, D.12410
	je	.L109	#,
	.loc 1 1338 0
	movq	-48(%rbp), %rax	# p, tmp110
	movq	$0, (%rax)	#, p_2->next
	.loc 1 1339 0
	movl	-56(%rbp), %eax	# order, tmp111
	addq	$66, %rax	#, tmp112
	movq	G(,%rax,8), %rax	# G.page_tails, D.12410
	movq	-48(%rbp), %rdx	# p, tmp113
	movq	%rdx, (%rax)	# tmp113, _29->next
	.loc 1 1342 0
	movl	-56(%rbp), %eax	# order, tmp114
	leaq	66(%rax), %rdx	#, tmp115
	movq	-48(%rbp), %rax	# p, tmp116
	movq	%rax, G(,%rdx,8)	# tmp116, G.page_tails
	.loc 1 1345 0
	cmpq	$0, -40(%rbp)	#, previous
	jne	.L116	#,
	.loc 1 1346 0
	movl	-56(%rbp), %eax	# order, tmp117
	movq	-16(%rbp), %rdx	# next, tmp118
	movq	%rdx, G(,%rax,8)	# tmp118, G.pages
	jmp	.L117	#
.L116:
	.loc 1 1348 0
	movq	-40(%rbp), %rax	# previous, tmp119
	movq	-16(%rbp), %rdx	# next, tmp120
	movq	%rdx, (%rax)	# tmp120, previous_6->next
.L117:
	.loc 1 1349 0
	movq	-40(%rbp), %rax	# previous, tmp121
	movq	%rax, -48(%rbp)	# tmp121, p
	jmp	.L109	#
.L114:
	.loc 1 1357 0
	movl	-56(%rbp), %eax	# order, tmp122
	movq	G(,%rax,8), %rax	# G.pages, D.12410
	cmpq	-48(%rbp), %rax	# p, D.12410
	je	.L109	#,
	.loc 1 1359 0
	movq	-48(%rbp), %rax	# p, tmp123
	movq	(%rax), %rdx	# p_2->next, D.12411
	movq	-40(%rbp), %rax	# previous, tmp124
	movq	%rdx, (%rax)	# D.12411, previous_6->next
	.loc 1 1360 0
	movl	-56(%rbp), %eax	# order, tmp125
	movq	G(,%rax,8), %rdx	# G.pages, D.12410
	movq	-48(%rbp), %rax	# p, tmp126
	movq	%rdx, (%rax)	# D.12410, p_2->next
	.loc 1 1361 0
	movl	-56(%rbp), %eax	# order, tmp127
	movq	-48(%rbp), %rdx	# p, tmp128
	movq	%rdx, G(,%rax,8)	# tmp128, G.pages
	.loc 1 1363 0
	movl	-56(%rbp), %eax	# order, tmp129
	addq	$66, %rax	#, tmp130
	movq	G(,%rax,8), %rax	# G.page_tails, D.12410
	cmpq	-48(%rbp), %rax	# p, D.12410
	jne	.L118	#,
	.loc 1 1364 0
	movl	-56(%rbp), %eax	# order, tmp131
	leaq	66(%rax), %rdx	#, tmp132
	movq	-40(%rbp), %rax	# previous, tmp133
	movq	%rax, G(,%rdx,8)	# tmp133, G.page_tails
.L118:
	.loc 1 1365 0
	movq	-40(%rbp), %rax	# previous, tmp134
	movq	%rax, -48(%rbp)	# tmp134, p
.L109:
	.loc 1 1368 0
	movq	-48(%rbp), %rax	# p, tmp135
	movq	%rax, -40(%rbp)	# tmp135, previous
	.loc 1 1369 0
	movq	-16(%rbp), %rax	# next, tmp136
	movq	%rax, -48(%rbp)	# tmp136, p
.LBE12:
	.loc 1 1371 0
	cmpl	$0, -52(%rbp)	#, done
	je	.L119	#,
	.loc 1 1375 0
	movl	-56(%rbp), %eax	# order, tmp137
	movq	G(,%rax,8), %rax	# G.pages, tmp138
	movq	%rax, -48(%rbp)	# tmp138, p
	jmp	.L120	#
.L122:
	.loc 1 1376 0
	movq	-48(%rbp), %rax	# p, tmp139
	movzwl	40(%rax), %edx	# p_5->context_depth, D.12408
	movzwl	G+1104(%rip), %eax	# G.context_depth, D.12408
	cmpw	%ax, %dx	# D.12408, D.12408
	je	.L121	#,
	.loc 1 1377 0
	movq	-48(%rbp), %rax	# p, tmp140
	movq	%rax, %rdi	# tmp140,
	call	ggc_recalculate_in_use_p	#
.L121:
	.loc 1 1375 0
	movq	-48(%rbp), %rax	# p, tmp141
	movq	(%rax), %rax	# p_5->next, tmp142
	movq	%rax, -48(%rbp)	# tmp142, p
.L120:
	.loc 1 1375 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, p
	jne	.L122	#,
.L108:
.LBE11:
	.loc 1 1282 0 is_stmt 1
	addl	$1, -56(%rbp)	#, order
.L106:
	.loc 1 1282 0 is_stmt 0 discriminator 1
	cmpl	$65, -56(%rbp)	#, order
	jbe	.L123	#,
	.loc 1 1379 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	sweep_pages, .-sweep_pages
	.section	.rodata
.LC5:
	.string	" {GC %luk -> "
.LC6:
	.string	"%luk}"
	.text
	.globl	ggc_collect
	.type	ggc_collect, @function
ggc_collect:
.LFB22:
	.loc 1 1423 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1428 0
	movq	G+1080(%rip), %rax	# G.allocated, D.12412
	testq	%rax, %rax	# D.12412
	js	.L125	#,
	cvtsi2sdq	%rax, %xmm0	# D.12412, D.12413
	jmp	.L126	#
.L125:
	movq	%rax, %rdx	# D.12412, tmp75
	shrq	%rdx	# tmp75
	andl	$1, %eax	#, tmp76
	orq	%rax, %rdx	# tmp76, tmp75
	cvtsi2sdq	%rdx, %xmm0	# tmp75, tmp74
	addsd	%xmm0, %xmm0	# tmp74, D.12413
.L126:
	movq	G+1088(%rip), %rax	# G.allocated_last_gc, D.12412
	testq	%rax, %rax	# D.12412
	js	.L127	#,
	cvtsi2sdq	%rax, %xmm1	# D.12412, D.12413
	jmp	.L128	#
.L127:
	movq	%rax, %rdx	# D.12412, tmp78
	shrq	%rdx	# tmp78
	andl	$1, %eax	#, tmp79
	orq	%rax, %rdx	# tmp79, tmp78
	cvtsi2sdq	%rdx, %xmm1	# tmp78, tmp77
	addsd	%xmm1, %xmm1	# tmp77, D.12413
.L128:
	movsd	.LC4(%rip), %xmm2	#, tmp80
	mulsd	%xmm2, %xmm1	# tmp80, D.12413
	ucomisd	%xmm0, %xmm1	# D.12413, D.12413
	jbe	.L135	#,
	.loc 1 1429 0
	jmp	.L124	#
.L135:
	.loc 1 1432 0
	movl	$1, %edi	#,
	call	timevar_push	#
	.loc 1 1433 0
	movl	quiet_flag(%rip), %eax	# quiet_flag, quiet_flag.23
	testl	%eax, %eax	# quiet_flag.23
	jne	.L132	#,
	.loc 1 1434 0
	movq	G+1080(%rip), %rax	# G.allocated, D.12412
	shrq	$10, %rax	#, D.12412
	movq	%rax, %rdx	# D.12412, D.12412
	movq	stderr(%rip), %rax	# stderr, stderr.24
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# stderr.24,
	movl	$0, %eax	#,
	call	fprintf	#
.L132:
	.loc 1 1438 0
	movq	$0, G+1080(%rip)	#, G.allocated
	.loc 1 1442 0
	call	release_pages	#
	.loc 1 1444 0
	call	clear_marks	#
	.loc 1 1445 0
	call	ggc_mark_roots	#
	.loc 1 1451 0
	call	sweep_pages	#
	.loc 1 1453 0
	movq	G+1080(%rip), %rax	# G.allocated, D.12412
	movq	%rax, G+1088(%rip)	# D.12412, G.allocated_last_gc
	.loc 1 1454 0
	movq	G+1088(%rip), %rax	# G.allocated_last_gc, D.12412
	cmpq	$4194303, %rax	#, D.12412
	ja	.L133	#,
	.loc 1 1455 0
	movq	$4194304, G+1088(%rip)	#, G.allocated_last_gc
.L133:
	.loc 1 1457 0
	movl	$1, %edi	#,
	call	timevar_pop	#
	.loc 1 1459 0
	movl	quiet_flag(%rip), %eax	# quiet_flag, quiet_flag.25
	testl	%eax, %eax	# quiet_flag.25
	jne	.L124	#,
	.loc 1 1460 0
	movq	G+1080(%rip), %rax	# G.allocated, D.12412
	shrq	$10, %rax	#, D.12412
	movq	%rax, %rdx	# D.12412, D.12412
	movq	stderr(%rip), %rax	# stderr, stderr.26
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.26,
	movl	$0, %eax	#,
	call	fprintf	#
.L124:
	.loc 1 1461 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ggc_collect, .-ggc_collect
	.globl	ggc_print_statistics
	.type	ggc_print_statistics, @function
ggc_print_statistics:
.LFB23:
	.loc 1 1473 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$6072, %rsp	#,
	.loc 1 1476 0
	movq	$0, -6184(%rbp)	#, total_overhead
	.loc 1 1533 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ggc_print_statistics, .-ggc_print_statistics
	.section	.rodata
	.type	__FUNCTION__.11531, @object
	.size	__FUNCTION__.11531, 11
__FUNCTION__.11531:
	.string	"alloc_page"
	.align 16
	.type	__FUNCTION__.11614, @object
	.size	__FUNCTION__.11614, 17
__FUNCTION__.11614:
	.string	"ggc_push_context"
	.align 16
	.type	__FUNCTION__.11627, @object
	.size	__FUNCTION__.11627, 25
__FUNCTION__.11627:
	.string	"ggc_recalculate_in_use_p"
	.align 8
.LC4:
	.long	3435973837
	.long	1073007820
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "machmode.h"
	.file 7 "tree.h"
	.file 8 "rtl.h"
	.file 9 "ggc.h"
	.file 10 "flags.h"
	.file 11 "timevar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1bc2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF597
	.byte	0x1
	.long	.LASF598
	.long	.LASF599
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
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
	.long	0x2d
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
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x79
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x6b
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
	.long	0x84
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF600
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
	.long	0x2d
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
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0xd
	.uleb128 0xe
	.long	.LASF109
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x41c
	.uleb128 0xf
	.long	.LASF49
	.sleb128 0
	.uleb128 0xf
	.long	.LASF50
	.sleb128 1
	.uleb128 0xf
	.long	.LASF51
	.sleb128 2
	.uleb128 0xf
	.long	.LASF52
	.sleb128 3
	.uleb128 0xf
	.long	.LASF53
	.sleb128 4
	.uleb128 0xf
	.long	.LASF54
	.sleb128 5
	.uleb128 0xf
	.long	.LASF55
	.sleb128 6
	.uleb128 0xf
	.long	.LASF56
	.sleb128 7
	.uleb128 0xf
	.long	.LASF57
	.sleb128 8
	.uleb128 0xf
	.long	.LASF58
	.sleb128 9
	.uleb128 0xf
	.long	.LASF59
	.sleb128 10
	.uleb128 0xf
	.long	.LASF60
	.sleb128 11
	.uleb128 0xf
	.long	.LASF61
	.sleb128 12
	.uleb128 0xf
	.long	.LASF62
	.sleb128 13
	.uleb128 0xf
	.long	.LASF63
	.sleb128 14
	.uleb128 0xf
	.long	.LASF64
	.sleb128 15
	.uleb128 0xf
	.long	.LASF65
	.sleb128 16
	.uleb128 0xf
	.long	.LASF66
	.sleb128 17
	.uleb128 0xf
	.long	.LASF67
	.sleb128 18
	.uleb128 0xf
	.long	.LASF68
	.sleb128 19
	.uleb128 0xf
	.long	.LASF69
	.sleb128 20
	.uleb128 0xf
	.long	.LASF70
	.sleb128 21
	.uleb128 0xf
	.long	.LASF71
	.sleb128 22
	.uleb128 0xf
	.long	.LASF72
	.sleb128 23
	.uleb128 0xf
	.long	.LASF73
	.sleb128 24
	.uleb128 0xf
	.long	.LASF74
	.sleb128 25
	.uleb128 0xf
	.long	.LASF75
	.sleb128 26
	.uleb128 0xf
	.long	.LASF76
	.sleb128 27
	.uleb128 0xf
	.long	.LASF77
	.sleb128 28
	.uleb128 0xf
	.long	.LASF78
	.sleb128 29
	.uleb128 0xf
	.long	.LASF79
	.sleb128 30
	.uleb128 0xf
	.long	.LASF80
	.sleb128 31
	.uleb128 0xf
	.long	.LASF81
	.sleb128 32
	.uleb128 0xf
	.long	.LASF82
	.sleb128 33
	.uleb128 0xf
	.long	.LASF83
	.sleb128 34
	.uleb128 0xf
	.long	.LASF84
	.sleb128 35
	.uleb128 0xf
	.long	.LASF85
	.sleb128 36
	.uleb128 0xf
	.long	.LASF86
	.sleb128 37
	.uleb128 0xf
	.long	.LASF87
	.sleb128 38
	.uleb128 0xf
	.long	.LASF88
	.sleb128 39
	.uleb128 0xf
	.long	.LASF89
	.sleb128 40
	.uleb128 0xf
	.long	.LASF90
	.sleb128 41
	.uleb128 0xf
	.long	.LASF91
	.sleb128 42
	.uleb128 0xf
	.long	.LASF92
	.sleb128 43
	.uleb128 0xf
	.long	.LASF93
	.sleb128 44
	.uleb128 0xf
	.long	.LASF94
	.sleb128 45
	.uleb128 0xf
	.long	.LASF95
	.sleb128 46
	.uleb128 0xf
	.long	.LASF96
	.sleb128 47
	.uleb128 0xf
	.long	.LASF97
	.sleb128 48
	.uleb128 0xf
	.long	.LASF98
	.sleb128 49
	.uleb128 0xf
	.long	.LASF99
	.sleb128 50
	.uleb128 0xf
	.long	.LASF100
	.sleb128 51
	.uleb128 0xf
	.long	.LASF101
	.sleb128 52
	.uleb128 0xf
	.long	.LASF102
	.sleb128 53
	.uleb128 0xf
	.long	.LASF103
	.sleb128 54
	.uleb128 0xf
	.long	.LASF104
	.sleb128 55
	.uleb128 0xf
	.long	.LASF105
	.sleb128 56
	.uleb128 0xf
	.long	.LASF106
	.sleb128 57
	.uleb128 0xf
	.long	.LASF107
	.sleb128 58
	.uleb128 0xf
	.long	.LASF108
	.sleb128 59
	.byte	0
	.uleb128 0xe
	.long	.LASF110
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x465
	.uleb128 0xf
	.long	.LASF111
	.sleb128 0
	.uleb128 0xf
	.long	.LASF112
	.sleb128 1
	.uleb128 0xf
	.long	.LASF113
	.sleb128 2
	.uleb128 0xf
	.long	.LASF114
	.sleb128 3
	.uleb128 0xf
	.long	.LASF115
	.sleb128 4
	.uleb128 0xf
	.long	.LASF116
	.sleb128 5
	.uleb128 0xf
	.long	.LASF117
	.sleb128 6
	.uleb128 0xf
	.long	.LASF118
	.sleb128 7
	.uleb128 0xf
	.long	.LASF119
	.sleb128 8
	.uleb128 0xf
	.long	.LASF120
	.sleb128 9
	.byte	0
	.uleb128 0xe
	.long	.LASF121
	.byte	0x4
	.byte	0x7
	.byte	0x54
	.long	0x6d2
	.uleb128 0xf
	.long	.LASF122
	.sleb128 0
	.uleb128 0xf
	.long	.LASF123
	.sleb128 1
	.uleb128 0xf
	.long	.LASF124
	.sleb128 2
	.uleb128 0xf
	.long	.LASF125
	.sleb128 3
	.uleb128 0xf
	.long	.LASF126
	.sleb128 4
	.uleb128 0xf
	.long	.LASF127
	.sleb128 5
	.uleb128 0xf
	.long	.LASF128
	.sleb128 6
	.uleb128 0xf
	.long	.LASF129
	.sleb128 7
	.uleb128 0xf
	.long	.LASF130
	.sleb128 8
	.uleb128 0xf
	.long	.LASF131
	.sleb128 9
	.uleb128 0xf
	.long	.LASF132
	.sleb128 10
	.uleb128 0xf
	.long	.LASF133
	.sleb128 11
	.uleb128 0xf
	.long	.LASF134
	.sleb128 12
	.uleb128 0xf
	.long	.LASF135
	.sleb128 13
	.uleb128 0xf
	.long	.LASF136
	.sleb128 14
	.uleb128 0xf
	.long	.LASF137
	.sleb128 15
	.uleb128 0xf
	.long	.LASF138
	.sleb128 16
	.uleb128 0xf
	.long	.LASF139
	.sleb128 17
	.uleb128 0xf
	.long	.LASF140
	.sleb128 18
	.uleb128 0xf
	.long	.LASF141
	.sleb128 19
	.uleb128 0xf
	.long	.LASF142
	.sleb128 20
	.uleb128 0xf
	.long	.LASF143
	.sleb128 21
	.uleb128 0xf
	.long	.LASF144
	.sleb128 22
	.uleb128 0xf
	.long	.LASF145
	.sleb128 23
	.uleb128 0xf
	.long	.LASF146
	.sleb128 24
	.uleb128 0xf
	.long	.LASF147
	.sleb128 25
	.uleb128 0xf
	.long	.LASF148
	.sleb128 26
	.uleb128 0xf
	.long	.LASF149
	.sleb128 27
	.uleb128 0xf
	.long	.LASF150
	.sleb128 28
	.uleb128 0xf
	.long	.LASF151
	.sleb128 29
	.uleb128 0xf
	.long	.LASF152
	.sleb128 30
	.uleb128 0xf
	.long	.LASF153
	.sleb128 31
	.uleb128 0xf
	.long	.LASF154
	.sleb128 32
	.uleb128 0xf
	.long	.LASF155
	.sleb128 33
	.uleb128 0xf
	.long	.LASF156
	.sleb128 34
	.uleb128 0xf
	.long	.LASF157
	.sleb128 35
	.uleb128 0xf
	.long	.LASF158
	.sleb128 36
	.uleb128 0xf
	.long	.LASF159
	.sleb128 37
	.uleb128 0xf
	.long	.LASF160
	.sleb128 38
	.uleb128 0xf
	.long	.LASF161
	.sleb128 39
	.uleb128 0xf
	.long	.LASF162
	.sleb128 40
	.uleb128 0xf
	.long	.LASF163
	.sleb128 41
	.uleb128 0xf
	.long	.LASF164
	.sleb128 42
	.uleb128 0xf
	.long	.LASF165
	.sleb128 43
	.uleb128 0xf
	.long	.LASF166
	.sleb128 44
	.uleb128 0xf
	.long	.LASF167
	.sleb128 45
	.uleb128 0xf
	.long	.LASF168
	.sleb128 46
	.uleb128 0xf
	.long	.LASF169
	.sleb128 47
	.uleb128 0xf
	.long	.LASF170
	.sleb128 48
	.uleb128 0xf
	.long	.LASF171
	.sleb128 49
	.uleb128 0xf
	.long	.LASF172
	.sleb128 50
	.uleb128 0xf
	.long	.LASF173
	.sleb128 51
	.uleb128 0xf
	.long	.LASF174
	.sleb128 52
	.uleb128 0xf
	.long	.LASF175
	.sleb128 53
	.uleb128 0xf
	.long	.LASF176
	.sleb128 54
	.uleb128 0xf
	.long	.LASF177
	.sleb128 55
	.uleb128 0xf
	.long	.LASF178
	.sleb128 56
	.uleb128 0xf
	.long	.LASF179
	.sleb128 57
	.uleb128 0xf
	.long	.LASF180
	.sleb128 58
	.uleb128 0xf
	.long	.LASF181
	.sleb128 59
	.uleb128 0xf
	.long	.LASF182
	.sleb128 60
	.uleb128 0xf
	.long	.LASF183
	.sleb128 61
	.uleb128 0xf
	.long	.LASF184
	.sleb128 62
	.uleb128 0xf
	.long	.LASF185
	.sleb128 63
	.uleb128 0xf
	.long	.LASF186
	.sleb128 64
	.uleb128 0xf
	.long	.LASF187
	.sleb128 65
	.uleb128 0xf
	.long	.LASF188
	.sleb128 66
	.uleb128 0xf
	.long	.LASF189
	.sleb128 67
	.uleb128 0xf
	.long	.LASF190
	.sleb128 68
	.uleb128 0xf
	.long	.LASF191
	.sleb128 69
	.uleb128 0xf
	.long	.LASF192
	.sleb128 70
	.uleb128 0xf
	.long	.LASF193
	.sleb128 71
	.uleb128 0xf
	.long	.LASF194
	.sleb128 72
	.uleb128 0xf
	.long	.LASF195
	.sleb128 73
	.uleb128 0xf
	.long	.LASF196
	.sleb128 74
	.uleb128 0xf
	.long	.LASF197
	.sleb128 75
	.uleb128 0xf
	.long	.LASF198
	.sleb128 76
	.uleb128 0xf
	.long	.LASF199
	.sleb128 77
	.uleb128 0xf
	.long	.LASF200
	.sleb128 78
	.uleb128 0xf
	.long	.LASF201
	.sleb128 79
	.uleb128 0xf
	.long	.LASF202
	.sleb128 80
	.uleb128 0xf
	.long	.LASF203
	.sleb128 81
	.uleb128 0xf
	.long	.LASF204
	.sleb128 82
	.uleb128 0xf
	.long	.LASF205
	.sleb128 83
	.uleb128 0xf
	.long	.LASF206
	.sleb128 84
	.uleb128 0xf
	.long	.LASF207
	.sleb128 85
	.uleb128 0xf
	.long	.LASF208
	.sleb128 86
	.uleb128 0xf
	.long	.LASF209
	.sleb128 87
	.uleb128 0xf
	.long	.LASF210
	.sleb128 88
	.uleb128 0xf
	.long	.LASF211
	.sleb128 89
	.uleb128 0xf
	.long	.LASF212
	.sleb128 90
	.uleb128 0xf
	.long	.LASF213
	.sleb128 91
	.uleb128 0xf
	.long	.LASF214
	.sleb128 92
	.uleb128 0xf
	.long	.LASF215
	.sleb128 93
	.uleb128 0xf
	.long	.LASF216
	.sleb128 94
	.uleb128 0xf
	.long	.LASF217
	.sleb128 95
	.byte	0
	.uleb128 0x10
	.long	.LASF218
	.byte	0x4
	.byte	0x7
	.value	0x757
	.long	0x818
	.uleb128 0xf
	.long	.LASF219
	.sleb128 0
	.uleb128 0xf
	.long	.LASF220
	.sleb128 1
	.uleb128 0xf
	.long	.LASF221
	.sleb128 2
	.uleb128 0xf
	.long	.LASF222
	.sleb128 3
	.uleb128 0xf
	.long	.LASF223
	.sleb128 4
	.uleb128 0xf
	.long	.LASF224
	.sleb128 5
	.uleb128 0xf
	.long	.LASF225
	.sleb128 6
	.uleb128 0xf
	.long	.LASF226
	.sleb128 7
	.uleb128 0xf
	.long	.LASF227
	.sleb128 8
	.uleb128 0xf
	.long	.LASF228
	.sleb128 9
	.uleb128 0xf
	.long	.LASF229
	.sleb128 10
	.uleb128 0xf
	.long	.LASF230
	.sleb128 11
	.uleb128 0xf
	.long	.LASF231
	.sleb128 12
	.uleb128 0xf
	.long	.LASF232
	.sleb128 13
	.uleb128 0xf
	.long	.LASF233
	.sleb128 14
	.uleb128 0xf
	.long	.LASF234
	.sleb128 15
	.uleb128 0xf
	.long	.LASF235
	.sleb128 16
	.uleb128 0xf
	.long	.LASF236
	.sleb128 17
	.uleb128 0xf
	.long	.LASF237
	.sleb128 18
	.uleb128 0xf
	.long	.LASF238
	.sleb128 19
	.uleb128 0xf
	.long	.LASF239
	.sleb128 20
	.uleb128 0xf
	.long	.LASF240
	.sleb128 21
	.uleb128 0xf
	.long	.LASF241
	.sleb128 22
	.uleb128 0xf
	.long	.LASF242
	.sleb128 23
	.uleb128 0xf
	.long	.LASF243
	.sleb128 24
	.uleb128 0xf
	.long	.LASF244
	.sleb128 25
	.uleb128 0xf
	.long	.LASF245
	.sleb128 26
	.uleb128 0xf
	.long	.LASF246
	.sleb128 27
	.uleb128 0xf
	.long	.LASF247
	.sleb128 28
	.uleb128 0xf
	.long	.LASF248
	.sleb128 29
	.uleb128 0xf
	.long	.LASF249
	.sleb128 30
	.uleb128 0xf
	.long	.LASF250
	.sleb128 31
	.uleb128 0xf
	.long	.LASF251
	.sleb128 32
	.uleb128 0xf
	.long	.LASF252
	.sleb128 33
	.uleb128 0xf
	.long	.LASF253
	.sleb128 34
	.uleb128 0xf
	.long	.LASF254
	.sleb128 35
	.uleb128 0xf
	.long	.LASF255
	.sleb128 36
	.uleb128 0xf
	.long	.LASF256
	.sleb128 37
	.uleb128 0xf
	.long	.LASF257
	.sleb128 38
	.uleb128 0xf
	.long	.LASF258
	.sleb128 39
	.uleb128 0xf
	.long	.LASF259
	.sleb128 40
	.uleb128 0xf
	.long	.LASF260
	.sleb128 41
	.uleb128 0xf
	.long	.LASF261
	.sleb128 42
	.uleb128 0xf
	.long	.LASF262
	.sleb128 43
	.uleb128 0xf
	.long	.LASF263
	.sleb128 44
	.uleb128 0xf
	.long	.LASF264
	.sleb128 45
	.uleb128 0xf
	.long	.LASF265
	.sleb128 46
	.uleb128 0xf
	.long	.LASF266
	.sleb128 47
	.uleb128 0xf
	.long	.LASF267
	.sleb128 48
	.uleb128 0xf
	.long	.LASF268
	.sleb128 49
	.uleb128 0xf
	.long	.LASF269
	.sleb128 50
	.uleb128 0xf
	.long	.LASF270
	.sleb128 51
	.byte	0
	.uleb128 0x10
	.long	.LASF271
	.byte	0x4
	.byte	0x7
	.value	0x7e4
	.long	0x86e
	.uleb128 0xf
	.long	.LASF272
	.sleb128 0
	.uleb128 0xf
	.long	.LASF273
	.sleb128 1
	.uleb128 0xf
	.long	.LASF274
	.sleb128 2
	.uleb128 0xf
	.long	.LASF275
	.sleb128 3
	.uleb128 0xf
	.long	.LASF276
	.sleb128 4
	.uleb128 0xf
	.long	.LASF277
	.sleb128 5
	.uleb128 0xf
	.long	.LASF278
	.sleb128 6
	.uleb128 0xf
	.long	.LASF279
	.sleb128 7
	.uleb128 0xf
	.long	.LASF280
	.sleb128 8
	.uleb128 0xf
	.long	.LASF281
	.sleb128 9
	.uleb128 0xf
	.long	.LASF282
	.sleb128 10
	.uleb128 0xf
	.long	.LASF283
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF284
	.uleb128 0x10
	.long	.LASF285
	.byte	0x4
	.byte	0x7
	.value	0x972
	.long	0x8ad
	.uleb128 0xf
	.long	.LASF286
	.sleb128 0
	.uleb128 0xf
	.long	.LASF287
	.sleb128 1
	.uleb128 0xf
	.long	.LASF288
	.sleb128 2
	.uleb128 0xf
	.long	.LASF289
	.sleb128 3
	.uleb128 0xf
	.long	.LASF290
	.sleb128 4
	.uleb128 0xf
	.long	.LASF291
	.sleb128 5
	.uleb128 0xf
	.long	.LASF292
	.sleb128 6
	.byte	0
	.uleb128 0xe
	.long	.LASF293
	.byte	0x4
	.byte	0x8
	.byte	0x29
	.long	0xca9
	.uleb128 0xf
	.long	.LASF294
	.sleb128 0
	.uleb128 0x11
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF295
	.sleb128 2
	.uleb128 0xf
	.long	.LASF296
	.sleb128 3
	.uleb128 0xf
	.long	.LASF297
	.sleb128 4
	.uleb128 0xf
	.long	.LASF298
	.sleb128 5
	.uleb128 0xf
	.long	.LASF299
	.sleb128 6
	.uleb128 0xf
	.long	.LASF300
	.sleb128 7
	.uleb128 0xf
	.long	.LASF301
	.sleb128 8
	.uleb128 0xf
	.long	.LASF302
	.sleb128 9
	.uleb128 0xf
	.long	.LASF303
	.sleb128 10
	.uleb128 0xf
	.long	.LASF304
	.sleb128 11
	.uleb128 0xf
	.long	.LASF305
	.sleb128 12
	.uleb128 0xf
	.long	.LASF306
	.sleb128 13
	.uleb128 0xf
	.long	.LASF307
	.sleb128 14
	.uleb128 0xf
	.long	.LASF308
	.sleb128 15
	.uleb128 0xf
	.long	.LASF309
	.sleb128 16
	.uleb128 0xf
	.long	.LASF310
	.sleb128 17
	.uleb128 0xf
	.long	.LASF311
	.sleb128 18
	.uleb128 0xf
	.long	.LASF312
	.sleb128 19
	.uleb128 0xf
	.long	.LASF313
	.sleb128 20
	.uleb128 0xf
	.long	.LASF314
	.sleb128 21
	.uleb128 0xf
	.long	.LASF315
	.sleb128 22
	.uleb128 0xf
	.long	.LASF316
	.sleb128 23
	.uleb128 0xf
	.long	.LASF317
	.sleb128 24
	.uleb128 0xf
	.long	.LASF318
	.sleb128 25
	.uleb128 0xf
	.long	.LASF319
	.sleb128 26
	.uleb128 0xf
	.long	.LASF320
	.sleb128 27
	.uleb128 0xf
	.long	.LASF321
	.sleb128 28
	.uleb128 0xf
	.long	.LASF322
	.sleb128 29
	.uleb128 0xf
	.long	.LASF323
	.sleb128 30
	.uleb128 0xf
	.long	.LASF324
	.sleb128 31
	.uleb128 0xf
	.long	.LASF325
	.sleb128 32
	.uleb128 0xf
	.long	.LASF326
	.sleb128 33
	.uleb128 0xf
	.long	.LASF327
	.sleb128 34
	.uleb128 0xf
	.long	.LASF328
	.sleb128 35
	.uleb128 0xf
	.long	.LASF329
	.sleb128 36
	.uleb128 0xf
	.long	.LASF330
	.sleb128 37
	.uleb128 0xf
	.long	.LASF331
	.sleb128 38
	.uleb128 0xf
	.long	.LASF332
	.sleb128 39
	.uleb128 0xf
	.long	.LASF333
	.sleb128 40
	.uleb128 0xf
	.long	.LASF334
	.sleb128 41
	.uleb128 0xf
	.long	.LASF335
	.sleb128 42
	.uleb128 0xf
	.long	.LASF336
	.sleb128 43
	.uleb128 0xf
	.long	.LASF337
	.sleb128 44
	.uleb128 0xf
	.long	.LASF338
	.sleb128 45
	.uleb128 0xf
	.long	.LASF339
	.sleb128 46
	.uleb128 0x11
	.string	"SET"
	.sleb128 47
	.uleb128 0x11
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF340
	.sleb128 49
	.uleb128 0xf
	.long	.LASF341
	.sleb128 50
	.uleb128 0xf
	.long	.LASF342
	.sleb128 51
	.uleb128 0xf
	.long	.LASF343
	.sleb128 52
	.uleb128 0xf
	.long	.LASF344
	.sleb128 53
	.uleb128 0xf
	.long	.LASF345
	.sleb128 54
	.uleb128 0xf
	.long	.LASF346
	.sleb128 55
	.uleb128 0xf
	.long	.LASF347
	.sleb128 56
	.uleb128 0xf
	.long	.LASF348
	.sleb128 57
	.uleb128 0xf
	.long	.LASF349
	.sleb128 58
	.uleb128 0x11
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF350
	.sleb128 60
	.uleb128 0x11
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF351
	.sleb128 62
	.uleb128 0xf
	.long	.LASF352
	.sleb128 63
	.uleb128 0xf
	.long	.LASF353
	.sleb128 64
	.uleb128 0xf
	.long	.LASF354
	.sleb128 65
	.uleb128 0x11
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF355
	.sleb128 67
	.uleb128 0xf
	.long	.LASF356
	.sleb128 68
	.uleb128 0x11
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF357
	.sleb128 70
	.uleb128 0xf
	.long	.LASF358
	.sleb128 71
	.uleb128 0xf
	.long	.LASF359
	.sleb128 72
	.uleb128 0xf
	.long	.LASF360
	.sleb128 73
	.uleb128 0xf
	.long	.LASF361
	.sleb128 74
	.uleb128 0xf
	.long	.LASF362
	.sleb128 75
	.uleb128 0xf
	.long	.LASF363
	.sleb128 76
	.uleb128 0x11
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF364
	.sleb128 78
	.uleb128 0x11
	.string	"DIV"
	.sleb128 79
	.uleb128 0x11
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF365
	.sleb128 81
	.uleb128 0xf
	.long	.LASF366
	.sleb128 82
	.uleb128 0x11
	.string	"AND"
	.sleb128 83
	.uleb128 0x11
	.string	"IOR"
	.sleb128 84
	.uleb128 0x11
	.string	"XOR"
	.sleb128 85
	.uleb128 0x11
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF367
	.sleb128 87
	.uleb128 0xf
	.long	.LASF368
	.sleb128 88
	.uleb128 0xf
	.long	.LASF369
	.sleb128 89
	.uleb128 0xf
	.long	.LASF370
	.sleb128 90
	.uleb128 0xf
	.long	.LASF371
	.sleb128 91
	.uleb128 0xf
	.long	.LASF372
	.sleb128 92
	.uleb128 0xf
	.long	.LASF373
	.sleb128 93
	.uleb128 0xf
	.long	.LASF374
	.sleb128 94
	.uleb128 0xf
	.long	.LASF375
	.sleb128 95
	.uleb128 0xf
	.long	.LASF376
	.sleb128 96
	.uleb128 0xf
	.long	.LASF377
	.sleb128 97
	.uleb128 0xf
	.long	.LASF378
	.sleb128 98
	.uleb128 0xf
	.long	.LASF379
	.sleb128 99
	.uleb128 0xf
	.long	.LASF380
	.sleb128 100
	.uleb128 0xf
	.long	.LASF381
	.sleb128 101
	.uleb128 0x11
	.string	"NE"
	.sleb128 102
	.uleb128 0x11
	.string	"EQ"
	.sleb128 103
	.uleb128 0x11
	.string	"GE"
	.sleb128 104
	.uleb128 0x11
	.string	"GT"
	.sleb128 105
	.uleb128 0x11
	.string	"LE"
	.sleb128 106
	.uleb128 0x11
	.string	"LT"
	.sleb128 107
	.uleb128 0x11
	.string	"GEU"
	.sleb128 108
	.uleb128 0x11
	.string	"GTU"
	.sleb128 109
	.uleb128 0x11
	.string	"LEU"
	.sleb128 110
	.uleb128 0x11
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF382
	.sleb128 112
	.uleb128 0xf
	.long	.LASF383
	.sleb128 113
	.uleb128 0xf
	.long	.LASF384
	.sleb128 114
	.uleb128 0xf
	.long	.LASF385
	.sleb128 115
	.uleb128 0xf
	.long	.LASF386
	.sleb128 116
	.uleb128 0xf
	.long	.LASF387
	.sleb128 117
	.uleb128 0xf
	.long	.LASF388
	.sleb128 118
	.uleb128 0xf
	.long	.LASF389
	.sleb128 119
	.uleb128 0xf
	.long	.LASF390
	.sleb128 120
	.uleb128 0xf
	.long	.LASF391
	.sleb128 121
	.uleb128 0xf
	.long	.LASF392
	.sleb128 122
	.uleb128 0xf
	.long	.LASF393
	.sleb128 123
	.uleb128 0xf
	.long	.LASF394
	.sleb128 124
	.uleb128 0xf
	.long	.LASF395
	.sleb128 125
	.uleb128 0x11
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF396
	.sleb128 127
	.uleb128 0xf
	.long	.LASF397
	.sleb128 128
	.uleb128 0x11
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF398
	.sleb128 130
	.uleb128 0x11
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF399
	.sleb128 132
	.uleb128 0xf
	.long	.LASF400
	.sleb128 133
	.uleb128 0xf
	.long	.LASF401
	.sleb128 134
	.uleb128 0xf
	.long	.LASF402
	.sleb128 135
	.uleb128 0xf
	.long	.LASF403
	.sleb128 136
	.uleb128 0xf
	.long	.LASF404
	.sleb128 137
	.uleb128 0xf
	.long	.LASF405
	.sleb128 138
	.uleb128 0xf
	.long	.LASF406
	.sleb128 139
	.uleb128 0xf
	.long	.LASF407
	.sleb128 140
	.uleb128 0xf
	.long	.LASF408
	.sleb128 141
	.uleb128 0xf
	.long	.LASF409
	.sleb128 142
	.uleb128 0xf
	.long	.LASF410
	.sleb128 143
	.uleb128 0xf
	.long	.LASF411
	.sleb128 144
	.uleb128 0xf
	.long	.LASF412
	.sleb128 145
	.uleb128 0xf
	.long	.LASF413
	.sleb128 146
	.uleb128 0xf
	.long	.LASF414
	.sleb128 147
	.uleb128 0xf
	.long	.LASF415
	.sleb128 148
	.uleb128 0xf
	.long	.LASF416
	.sleb128 149
	.uleb128 0xf
	.long	.LASF417
	.sleb128 150
	.uleb128 0xf
	.long	.LASF418
	.sleb128 151
	.uleb128 0x11
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF419
	.sleb128 153
	.byte	0
	.uleb128 0x10
	.long	.LASF420
	.byte	0x4
	.byte	0x8
	.value	0x297
	.long	0xd58
	.uleb128 0xf
	.long	.LASF421
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF422
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF423
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF424
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF425
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF426
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF427
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF428
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF429
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF430
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF431
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF432
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF433
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF434
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF435
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF436
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF437
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF438
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF439
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF440
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF441
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF442
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF443
	.sleb128 -78
	.byte	0
	.uleb128 0x10
	.long	.LASF444
	.byte	0x4
	.byte	0x8
	.value	0x630
	.long	0xdae
	.uleb128 0xf
	.long	.LASF445
	.sleb128 0
	.uleb128 0xf
	.long	.LASF446
	.sleb128 1
	.uleb128 0xf
	.long	.LASF447
	.sleb128 2
	.uleb128 0xf
	.long	.LASF448
	.sleb128 3
	.uleb128 0xf
	.long	.LASF449
	.sleb128 4
	.uleb128 0xf
	.long	.LASF450
	.sleb128 5
	.uleb128 0xf
	.long	.LASF451
	.sleb128 6
	.uleb128 0xf
	.long	.LASF452
	.sleb128 7
	.uleb128 0xf
	.long	.LASF453
	.sleb128 8
	.uleb128 0xf
	.long	.LASF454
	.sleb128 9
	.uleb128 0xf
	.long	.LASF455
	.sleb128 10
	.uleb128 0xf
	.long	.LASF456
	.sleb128 11
	.byte	0
	.uleb128 0xb
	.long	0x56
	.long	0xdbe
	.uleb128 0xc
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF457
	.value	0x1818
	.byte	0x9
	.byte	0xcd
	.long	0xe33
	.uleb128 0x8
	.long	.LASF458
	.byte	0x9
	.byte	0xd0
	.long	0xe33
	.byte	0
	.uleb128 0x13
	.long	.LASF459
	.byte	0x9
	.byte	0xd3
	.long	0xe43
	.value	0x400
	.uleb128 0x13
	.long	.LASF460
	.byte	0x9
	.byte	0xd5
	.long	0xe33
	.value	0xc00
	.uleb128 0x13
	.long	.LASF461
	.byte	0x9
	.byte	0xd8
	.long	0xe43
	.value	0x1000
	.uleb128 0x13
	.long	.LASF462
	.byte	0x9
	.byte	0xda
	.long	0x4b
	.value	0x1800
	.uleb128 0x13
	.long	.LASF463
	.byte	0x9
	.byte	0xdc
	.long	0x4b
	.value	0x1808
	.uleb128 0x13
	.long	.LASF464
	.byte	0x9
	.byte	0xde
	.long	0x3b
	.value	0x1810
	.uleb128 0x13
	.long	.LASF465
	.byte	0x9
	.byte	0xe0
	.long	0x3b
	.value	0x1814
	.byte	0
	.uleb128 0xb
	.long	0x3b
	.long	0xe43
	.uleb128 0xc
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x4b
	.long	0xe53
	.uleb128 0xc
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF466
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.byte	0x48
	.long	0xf77
	.uleb128 0xf
	.long	.LASF467
	.sleb128 0
	.uleb128 0xf
	.long	.LASF468
	.sleb128 1
	.uleb128 0xf
	.long	.LASF469
	.sleb128 2
	.uleb128 0xf
	.long	.LASF470
	.sleb128 3
	.uleb128 0xf
	.long	.LASF471
	.sleb128 4
	.uleb128 0xf
	.long	.LASF472
	.sleb128 5
	.uleb128 0xf
	.long	.LASF473
	.sleb128 6
	.uleb128 0xf
	.long	.LASF474
	.sleb128 7
	.uleb128 0xf
	.long	.LASF475
	.sleb128 8
	.uleb128 0xf
	.long	.LASF476
	.sleb128 9
	.uleb128 0xf
	.long	.LASF477
	.sleb128 10
	.uleb128 0xf
	.long	.LASF478
	.sleb128 11
	.uleb128 0xf
	.long	.LASF479
	.sleb128 12
	.uleb128 0xf
	.long	.LASF480
	.sleb128 13
	.uleb128 0xf
	.long	.LASF481
	.sleb128 14
	.uleb128 0xf
	.long	.LASF482
	.sleb128 15
	.uleb128 0xf
	.long	.LASF483
	.sleb128 16
	.uleb128 0xf
	.long	.LASF484
	.sleb128 17
	.uleb128 0xf
	.long	.LASF485
	.sleb128 18
	.uleb128 0xf
	.long	.LASF486
	.sleb128 19
	.uleb128 0xf
	.long	.LASF487
	.sleb128 20
	.uleb128 0xf
	.long	.LASF488
	.sleb128 21
	.uleb128 0xf
	.long	.LASF489
	.sleb128 22
	.uleb128 0xf
	.long	.LASF490
	.sleb128 23
	.uleb128 0xf
	.long	.LASF491
	.sleb128 24
	.uleb128 0xf
	.long	.LASF492
	.sleb128 25
	.uleb128 0xf
	.long	.LASF493
	.sleb128 26
	.uleb128 0xf
	.long	.LASF494
	.sleb128 27
	.uleb128 0xf
	.long	.LASF495
	.sleb128 28
	.uleb128 0xf
	.long	.LASF496
	.sleb128 29
	.uleb128 0xf
	.long	.LASF497
	.sleb128 30
	.uleb128 0xf
	.long	.LASF498
	.sleb128 31
	.uleb128 0xf
	.long	.LASF499
	.sleb128 32
	.uleb128 0xf
	.long	.LASF500
	.sleb128 33
	.uleb128 0xf
	.long	.LASF501
	.sleb128 34
	.uleb128 0xf
	.long	.LASF502
	.sleb128 35
	.uleb128 0xf
	.long	.LASF503
	.sleb128 36
	.uleb128 0xf
	.long	.LASF504
	.sleb128 37
	.uleb128 0xf
	.long	.LASF505
	.sleb128 38
	.uleb128 0xf
	.long	.LASF506
	.sleb128 39
	.uleb128 0xf
	.long	.LASF507
	.sleb128 40
	.uleb128 0xf
	.long	.LASF508
	.sleb128 41
	.uleb128 0xf
	.long	.LASF509
	.sleb128 42
	.uleb128 0xf
	.long	.LASF510
	.sleb128 43
	.uleb128 0xf
	.long	.LASF511
	.sleb128 44
	.uleb128 0xf
	.long	.LASF512
	.sleb128 45
	.byte	0
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF513
	.uleb128 0x7
	.long	.LASF514
	.byte	0x38
	.byte	0x1
	.byte	0xd2
	.long	0x1003
	.uleb128 0x8
	.long	.LASF515
	.byte	0x1
	.byte	0xd6
	.long	0x1003
	.byte	0
	.uleb128 0x8
	.long	.LASF516
	.byte	0x1
	.byte	0xda
	.long	0x4b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF517
	.byte	0x1
	.byte	0xdd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF518
	.byte	0x1
	.byte	0xe1
	.long	0x104a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF519
	.byte	0x1
	.byte	0xe6
	.long	0x1050
	.byte	0x20
	.uleb128 0x8
	.long	.LASF520
	.byte	0x1
	.byte	0xe9
	.long	0x64
	.byte	0x28
	.uleb128 0x8
	.long	.LASF521
	.byte	0x1
	.byte	0xec
	.long	0x64
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF522
	.byte	0x1
	.byte	0xf0
	.long	0x64
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF523
	.byte	0x1
	.byte	0xf3
	.long	0x5d
	.byte	0x2e
	.uleb128 0x8
	.long	.LASF524
	.byte	0x1
	.byte	0xf8
	.long	0xdae
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf7e
	.uleb128 0x7
	.long	.LASF525
	.byte	0x20
	.byte	0x1
	.byte	0xfe
	.long	0x104a
	.uleb128 0x9
	.long	.LASF515
	.byte	0x1
	.value	0x101
	.long	0x104a
	.byte	0
	.uleb128 0x9
	.long	.LASF526
	.byte	0x1
	.value	0x104
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF527
	.byte	0x1
	.value	0x107
	.long	0x4b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF528
	.byte	0x1
	.value	0x10a
	.long	0x3b
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1009
	.uleb128 0x6
	.byte	0x8
	.long	0x56
	.uleb128 0x5
	.long	.LASF514
	.byte	0x1
	.byte	0xf9
	.long	0xf7e
	.uleb128 0x15
	.long	.LASF525
	.byte	0x1
	.value	0x10b
	.long	0x1009
	.uleb128 0x16
	.long	.LASF529
	.value	0x810
	.byte	0x1
	.value	0x118
	.long	0x10a3
	.uleb128 0x9
	.long	.LASF515
	.byte	0x1
	.value	0x11a
	.long	0x10a3
	.byte	0
	.uleb128 0x9
	.long	.LASF530
	.byte	0x1
	.value	0x11b
	.long	0x4b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF531
	.byte	0x1
	.value	0x11c
	.long	0x10a9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x106d
	.uleb128 0xb
	.long	0x10b9
	.long	0x10b9
	.uleb128 0xc
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10bf
	.uleb128 0x6
	.byte	0x8
	.long	0x1056
	.uleb128 0x15
	.long	.LASF532
	.byte	0x1
	.value	0x11d
	.long	0x10a3
	.uleb128 0x16
	.long	.LASF533
	.value	0x470
	.byte	0x1
	.value	0x122
	.long	0x1187
	.uleb128 0x9
	.long	.LASF534
	.byte	0x1
	.value	0x128
	.long	0x1187
	.byte	0
	.uleb128 0x17
	.long	.LASF535
	.byte	0x1
	.value	0x12d
	.long	0x1187
	.value	0x210
	.uleb128 0x17
	.long	.LASF536
	.byte	0x1
	.value	0x130
	.long	0x10c5
	.value	0x420
	.uleb128 0x17
	.long	.LASF537
	.byte	0x1
	.value	0x133
	.long	0x4b
	.value	0x428
	.uleb128 0x17
	.long	.LASF538
	.byte	0x1
	.value	0x134
	.long	0x4b
	.value	0x430
	.uleb128 0x17
	.long	.LASF539
	.byte	0x1
	.value	0x137
	.long	0x4b
	.value	0x438
	.uleb128 0x17
	.long	.LASF540
	.byte	0x1
	.value	0x13a
	.long	0x4b
	.value	0x440
	.uleb128 0x17
	.long	.LASF541
	.byte	0x1
	.value	0x13d
	.long	0x4b
	.value	0x448
	.uleb128 0x17
	.long	.LASF520
	.byte	0x1
	.value	0x140
	.long	0x64
	.value	0x450
	.uleb128 0x17
	.long	.LASF542
	.byte	0x1
	.value	0x148
	.long	0x10bf
	.value	0x458
	.uleb128 0x17
	.long	.LASF543
	.byte	0x1
	.value	0x14b
	.long	0x1197
	.value	0x460
	.uleb128 0x17
	.long	.LASF544
	.byte	0x1
	.value	0x14f
	.long	0x119d
	.value	0x468
	.byte	0
	.uleb128 0xb
	.long	0x10bf
	.long	0x1197
	.uleb128 0xc
	.long	0x34
	.byte	0x41
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1061
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x18
	.long	.LASF547
	.byte	0x1
	.value	0x1a3
	.long	0x10bf
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x121d
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x1a4
	.long	0x2a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF545
	.byte	0x1
	.value	0x1a6
	.long	0x121d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"L1"
	.byte	0x1
	.value	0x1a7
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"L2"
	.byte	0x1
	.value	0x1a7
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF531
	.byte	0x1
	.value	0x1ac
	.long	0x10c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF530
	.byte	0x1
	.value	0x1ad
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10b9
	.uleb128 0x1c
	.long	.LASF549
	.byte	0x1
	.value	0x1bd
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ba
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x1be
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF546
	.byte	0x1
	.value	0x1bf
	.long	0x10bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF545
	.byte	0x1
	.value	0x1c1
	.long	0x121d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"L1"
	.byte	0x1
	.value	0x1c2
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"L2"
	.byte	0x1
	.value	0x1c2
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF531
	.byte	0x1
	.value	0x1c7
	.long	0x10c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF530
	.byte	0x1
	.value	0x1c8
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF601
	.byte	0x1
	.value	0x1d2
	.quad	.L8
	.byte	0
	.uleb128 0x1f
	.long	.LASF574
	.byte	0x1
	.value	0x1e3
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f5
	.uleb128 0x1d
	.long	.LASF523
	.byte	0x1
	.value	0x1e4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x1e6
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF548
	.byte	0x1
	.value	0x217
	.long	0x4b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1336
	.uleb128 0x1d
	.long	.LASF526
	.byte	0x1
	.value	0x218
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF517
	.byte	0x1
	.value	0x218
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF550
	.byte	0x1
	.value	0x220
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1373
	.uleb128 0x1d
	.long	.LASF518
	.byte	0x1
	.value	0x221
	.long	0x1197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF517
	.byte	0x1
	.value	0x222
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF551
	.byte	0x1
	.value	0x228
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b0
	.uleb128 0x1d
	.long	.LASF518
	.byte	0x1
	.value	0x229
	.long	0x1197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF517
	.byte	0x1
	.value	0x22a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF552
	.byte	0x1
	.value	0x235
	.long	0x1003
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x152b
	.uleb128 0x1d
	.long	.LASF523
	.byte	0x1
	.value	0x236
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1a
	.long	.LASF546
	.byte	0x1
	.value	0x238
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x238
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.string	"pp"
	.byte	0x1
	.value	0x238
	.long	0x152b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1a
	.long	.LASF517
	.byte	0x1
	.value	0x239
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF553
	.byte	0x1
	.value	0x23a
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF554
	.byte	0x1
	.value	0x23b
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF555
	.byte	0x1
	.value	0x23c
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF556
	.byte	0x1
	.value	0x23d
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF518
	.byte	0x1
	.value	0x23f
	.long	0x1197
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF577
	.long	0x1541
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11531
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF526
	.byte	0x1
	.value	0x287
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"a"
	.byte	0x1
	.value	0x287
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF557
	.byte	0x1
	.value	0x287
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF527
	.byte	0x1
	.value	0x288
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF558
	.byte	0x1
	.value	0x288
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF559
	.byte	0x1
	.value	0x288
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF560
	.byte	0x1
	.value	0x289
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.value	0x2b8
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.value	0x2b8
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1003
	.uleb128 0xb
	.long	0x95
	.long	0x1541
	.uleb128 0xc
	.long	0x34
	.byte	0xa
	.byte	0
	.uleb128 0x23
	.long	0x1531
	.uleb128 0x1c
	.long	.LASF561
	.byte	0x1
	.value	0x2ea
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1574
	.uleb128 0x1d
	.long	.LASF546
	.byte	0x1
	.value	0x2eb
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF562
	.byte	0x1
	.value	0x2ff
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c9
	.uleb128 0x1b
	.string	"pp"
	.byte	0x1
	.value	0x320
	.long	0x10b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x320
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"gp"
	.byte	0x1
	.value	0x321
	.long	0x15c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"g"
	.byte	0x1
	.value	0x321
	.long	0x1197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1197
	.uleb128 0x24
	.long	.LASF569
	.byte	0x1
	.value	0x358
	.long	0x42
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a2
	.uleb128 0x1d
	.long	.LASF563
	.byte	0x1
	.value	0x359
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x35b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF564
	.byte	0x1
	.value	0x35b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"bit"
	.byte	0x1
	.value	0x35b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF565
	.byte	0x1
	.value	0x35b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF546
	.byte	0x1
	.value	0x35c
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF566
	.byte	0x1
	.value	0x35d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1680
	.uleb128 0x1a
	.long	.LASF567
	.byte	0x1
	.value	0x370
	.long	0x1003
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1a
	.long	.LASF568
	.byte	0x1
	.value	0x389
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF570
	.byte	0x1
	.value	0x3c9
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x170e
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x3ca
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF546
	.byte	0x1
	.value	0x3cc
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"bit"
	.byte	0x1
	.value	0x3cd
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF564
	.byte	0x1
	.value	0x3cd
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF571
	.byte	0x1
	.value	0x3ce
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF572
	.byte	0x1
	.value	0x3f1
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x177a
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x3f2
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF546
	.byte	0x1
	.value	0x3f4
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"bit"
	.byte	0x1
	.value	0x3f5
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF564
	.byte	0x1
	.value	0x3f5
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF571
	.byte	0x1
	.value	0x3f6
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF573
	.byte	0x1
	.value	0x40c
	.long	0x4b
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x17b8
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x40d
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"pe"
	.byte	0x1
	.value	0x40f
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF575
	.byte	0x1
	.value	0x416
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1835
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x418
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1808
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x45b
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1b
	.string	"o"
	.byte	0x1
	.value	0x471
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x472
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF576
	.byte	0x1
	.value	0x47e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1867
	.uleb128 0x21
	.long	.LASF577
	.long	0x1877
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11614
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1877
	.uleb128 0xc
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.long	0x1867
	.uleb128 0x1c
	.long	.LASF578
	.byte	0x1
	.value	0x48b
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f6
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x48c
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x48e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF553
	.byte	0x1
	.value	0x48f
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF577
	.long	0x1906
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11627
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.value	0x49e
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1906
	.uleb128 0xc
	.long	0x34
	.byte	0x18
	.byte	0
	.uleb128 0x23
	.long	0x18f6
	.uleb128 0x1f
	.long	.LASF579
	.byte	0x1
	.value	0x4b1
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1967
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x4b3
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF580
	.byte	0x1
	.value	0x4b3
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x4bc
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF581
	.byte	0x1
	.value	0x4d2
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d2
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x4d4
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1a
	.long	.LASF553
	.byte	0x1
	.value	0x4d8
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF554
	.byte	0x1
	.value	0x4d9
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x4da
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF582
	.byte	0x1
	.value	0x4fe
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a8d
	.uleb128 0x1a
	.long	.LASF523
	.byte	0x1
	.value	0x500
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1a
	.long	.LASF583
	.byte	0x1
	.value	0x506
	.long	0x1a8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF553
	.byte	0x1
	.value	0x508
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF584
	.byte	0x1
	.value	0x509
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x50a
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF585
	.byte	0x1
	.value	0x50a
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF586
	.byte	0x1
	.value	0x50b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1a
	.long	.LASF515
	.byte	0x1
	.value	0x514
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x10bf
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0x58e
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF587
	.byte	0x1
	.value	0x5c0
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af5
	.uleb128 0x1a
	.long	.LASF588
	.byte	0x1
	.value	0x5c2
	.long	0xdbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6192
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x5c3
	.long	0x3b
	.uleb128 0x1a
	.long	.LASF589
	.byte	0x1
	.value	0x5c4
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6200
	.byte	0
	.uleb128 0xb
	.long	0x4b
	.long	0x1b05
	.uleb128 0xc
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.long	.LASF590
	.byte	0x1
	.byte	0xab
	.long	0x1b1a
	.uleb128 0x9
	.byte	0x3
	.quad	extra_order_size_table
	.uleb128 0x23
	.long	0x1af5
	.uleb128 0xb
	.long	0x3b
	.long	0x1b2f
	.uleb128 0xc
	.long	0x34
	.byte	0x41
	.byte	0
	.uleb128 0x29
	.long	.LASF591
	.byte	0x1
	.byte	0xca
	.long	0x1b1f
	.uleb128 0x9
	.byte	0x3
	.quad	objects_per_page_table
	.uleb128 0xb
	.long	0x4b
	.long	0x1b54
	.uleb128 0xc
	.long	0x34
	.byte	0x41
	.byte	0
	.uleb128 0x29
	.long	.LASF592
	.byte	0x1
	.byte	0xce
	.long	0x1b44
	.uleb128 0x9
	.byte	0x3
	.quad	object_size_table
	.uleb128 0x1b
	.string	"G"
	.byte	0x1
	.value	0x150
	.long	0x10d1
	.uleb128 0x9
	.byte	0x3
	.quad	G
	.uleb128 0xb
	.long	0x5d
	.long	0x1b8e
	.uleb128 0x2a
	.long	0x34
	.value	0x100
	.byte	0
	.uleb128 0x1a
	.long	.LASF593
	.byte	0x1
	.value	0x33f
	.long	0x1b7d
	.uleb128 0x9
	.byte	0x3
	.quad	size_lookup
	.uleb128 0x2b
	.long	.LASF594
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x2b
	.long	.LASF595
	.byte	0x4
	.byte	0xaa
	.long	0x266
	.uleb128 0x2b
	.long	.LASF596
	.byte	0xa
	.byte	0x46
	.long	0x2d
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2117
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF209:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF259:
	.string	"TI_UV16QI_TYPE"
.LASF130:
	.string	"BUILT_IN_CONJ"
.LASF274:
	.string	"itk_unsigned_char"
.LASF495:
	.string	"TV_FLOW2"
.LASF556:
	.string	"entry_size"
.LASF422:
	.string	"NOTE_INSN_DELETED"
.LASF501:
	.string	"TV_DBR_SCHED"
.LASF176:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF41:
	.string	"_unused2"
.LASF366:
	.string	"UMOD"
.LASF126:
	.string	"BUILT_IN_FABSF"
.LASF27:
	.string	"_fileno"
.LASF127:
	.string	"BUILT_IN_FABSL"
.LASF587:
	.string	"ggc_print_statistics"
.LASF530:
	.string	"high_bits"
.LASF593:
	.string	"size_lookup"
.LASF468:
	.string	"TV_GC"
.LASF582:
	.string	"sweep_pages"
.LASF266:
	.string	"TI_V2SI_TYPE"
.LASF511:
	.string	"TV_REST_OF_COMPILATION"
.LASF227:
	.string	"TI_UINTSI_TYPE"
.LASF407:
	.string	"CONSTANT_P_RTX"
.LASF284:
	.string	"_Bool"
.LASF463:
	.string	"total_size_rtxs"
.LASF310:
	.string	"DEFINE_PEEPHOLE2"
.LASF370:
	.string	"LSHIFTRT"
.LASF210:
	.string	"BUILT_IN_EH_RETURN"
.LASF304:
	.string	"MATCH_PAR_DUP"
.LASF32:
	.string	"_shortbuf"
.LASF599:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF505:
	.string	"TV_TO_SSA"
.LASF365:
	.string	"UDIV"
.LASF149:
	.string	"BUILT_IN_STRCPY"
.LASF586:
	.string	"done"
.LASF298:
	.string	"MATCH_OPERAND"
.LASF246:
	.string	"TI_VOID_TYPE"
.LASF212:
	.string	"BUILT_IN_VARARGS_START"
.LASF549:
	.string	"set_page_table_entry"
.LASF560:
	.string	"multiple_pages"
.LASF387:
	.string	"UNLE"
.LASF233:
	.string	"TI_NULL_POINTER"
.LASF388:
	.string	"UNLT"
.LASF476:
	.string	"TV_PARSE"
.LASF262:
	.string	"TI_V4SI_TYPE"
.LASF189:
	.string	"BUILT_IN_FWRITE"
.LASF483:
	.string	"TV_LOOP"
.LASF78:
	.string	"CTImode"
.LASF13:
	.string	"_flags"
.LASF515:
	.string	"next"
.LASF545:
	.string	"base"
.LASF9:
	.string	"__off_t"
.LASF489:
	.string	"TV_REGMOVE"
.LASF236:
	.string	"TI_BITSIZE_ZERO"
.LASF558:
	.string	"head_slop"
.LASF165:
	.string	"BUILT_IN_COSF"
.LASF76:
	.string	"CSImode"
.LASF168:
	.string	"BUILT_IN_COSL"
.LASF409:
	.string	"VEC_MERGE"
.LASF435:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF33:
	.string	"_lock"
.LASF342:
	.string	"RETURN"
.LASF139:
	.string	"BUILT_IN_BZERO"
.LASF536:
	.string	"lookup"
.LASF497:
	.string	"TV_PEEPHOLE2"
.LASF172:
	.string	"BUILT_IN_ARGS_INFO"
.LASF113:
	.string	"MODE_FLOAT"
.LASF145:
	.string	"BUILT_IN_MEMCMP"
.LASF187:
	.string	"BUILT_IN_FPUTC"
.LASF179:
	.string	"BUILT_IN_RETURN"
.LASF224:
	.string	"TI_INTTI_TYPE"
.LASF188:
	.string	"BUILT_IN_FPUTS"
.LASF596:
	.string	"quiet_flag"
.LASF537:
	.string	"pagesize"
.LASF82:
	.string	"V2SImode"
.LASF509:
	.string	"TV_FINAL"
.LASF194:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF243:
	.string	"TI_FLOAT_TYPE"
.LASF329:
	.string	"CODE_LABEL"
.LASF195:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF77:
	.string	"CDImode"
.LASF335:
	.string	"UNSPEC"
.LASF161:
	.string	"BUILT_IN_SIN"
.LASF328:
	.string	"BARRIER"
.LASF249:
	.string	"TI_PTRDIFF_TYPE"
.LASF428:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF331:
	.string	"COND_EXEC"
.LASF571:
	.string	"mask"
.LASF345:
	.string	"CONST_INT"
.LASF341:
	.string	"CALL"
.LASF257:
	.string	"TI_UV2SI_TYPE"
.LASF84:
	.string	"V4QImode"
.LASF320:
	.string	"ATTR"
.LASF208:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF535:
	.string	"page_tails"
.LASF452:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF164:
	.string	"BUILT_IN_SINF"
.LASF83:
	.string	"V2DImode"
.LASF167:
	.string	"BUILT_IN_SINL"
.LASF533:
	.string	"globals"
.LASF19:
	.string	"_IO_write_end"
.LASF524:
	.string	"in_use_p"
.LASF313:
	.string	"DEFINE_DELAY"
.LASF363:
	.string	"MINUS"
.LASF144:
	.string	"BUILT_IN_MEMCPY"
.LASF353:
	.string	"STRICT_LOW_PART"
.LASF295:
	.string	"INCLUDE"
.LASF448:
	.string	"GR_FRAME_POINTER"
.LASF391:
	.string	"ZERO_EXTEND"
.LASF510:
	.string	"TV_SYMOUT"
.LASF173:
	.string	"BUILT_IN_CONSTANT_P"
.LASF394:
	.string	"FLOAT_TRUNCATE"
.LASF199:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF445:
	.string	"GR_PC"
.LASF458:
	.string	"num_trees"
.LASF93:
	.string	"V2SFmode"
.LASF395:
	.string	"FLOAT"
.LASF109:
	.string	"machine_mode"
.LASF506:
	.string	"TV_SSA_CCP"
.LASF404:
	.string	"RANGE_REG"
.LASF55:
	.string	"TImode"
.LASF380:
	.string	"PRE_MODIFY"
.LASF552:
	.string	"alloc_page"
.LASF393:
	.string	"FLOAT_EXTEND"
.LASF142:
	.string	"BUILT_IN_INDEX"
.LASF423:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF53:
	.string	"SImode"
.LASF337:
	.string	"ADDR_VEC"
.LASF585:
	.string	"previous"
.LASF94:
	.string	"V2DFmode"
.LASF419:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF121:
	.string	"built_in_function"
.LASF542:
	.string	"free_pages"
.LASF356:
	.string	"SYMBOL_REF"
.LASF421:
	.string	"NOTE_INSN_BIAS"
.LASF541:
	.string	"bytes_mapped"
.LASF592:
	.string	"object_size_table"
.LASF443:
	.string	"NOTE_INSN_MAX"
.LASF309:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF361:
	.string	"COMPARE"
.LASF389:
	.string	"LTGT"
.LASF465:
	.string	"total_num_rtxs"
.LASF401:
	.string	"HIGH"
.LASF358:
	.string	"QUEUED"
.LASF578:
	.string	"ggc_recalculate_in_use_p"
.LASF543:
	.string	"page_groups"
.LASF54:
	.string	"DImode"
.LASF122:
	.string	"BUILT_IN_ALLOCA"
.LASF280:
	.string	"itk_unsigned_long"
.LASF26:
	.string	"_chain"
.LASF379:
	.string	"POST_INC"
.LASF229:
	.string	"TI_UINTTI_TYPE"
.LASF67:
	.string	"TFmode"
.LASF472:
	.string	"TV_LIFE"
.LASF181:
	.string	"BUILT_IN_LONGJMP"
.LASF4:
	.string	"unsigned char"
.LASF457:
	.string	"ggc_statistics"
.LASF226:
	.string	"TI_UINTHI_TYPE"
.LASF600:
	.string	"_IO_lock_t"
.LASF248:
	.string	"TI_CONST_PTR_TYPE"
.LASF525:
	.string	"page_group"
.LASF466:
	.string	"float"
.LASF50:
	.string	"BImode"
.LASF377:
	.string	"PRE_INC"
.LASF64:
	.string	"SFmode"
.LASF223:
	.string	"TI_INTDI_TYPE"
.LASF504:
	.string	"TV_REG_STACK"
.LASF123:
	.string	"BUILT_IN_ABS"
.LASF326:
	.string	"JUMP_INSN"
.LASF507:
	.string	"TV_SSA_DCE"
.LASF276:
	.string	"itk_unsigned_short"
.LASF133:
	.string	"BUILT_IN_CREAL"
.LASF117:
	.string	"MODE_COMPLEX_FLOAT"
.LASF557:
	.string	"enda"
.LASF129:
	.string	"BUILT_IN_IMAXABS"
.LASF138:
	.string	"BUILT_IN_CIMAGL"
.LASF420:
	.string	"insn_note"
.LASF439:
	.string	"NOTE_INSN_RANGE_END"
.LASF308:
	.string	"DEFINE_SPLIT"
.LASF574:
	.string	"debug_print_page_list"
.LASF198:
	.string	"BUILT_IN_ISGREATER"
.LASF182:
	.string	"BUILT_IN_TRAP"
.LASF347:
	.string	"CONST_VECTOR"
.LASF305:
	.string	"MATCH_INSN"
.LASF265:
	.string	"TI_V4HI_TYPE"
.LASF65:
	.string	"DFmode"
.LASF529:
	.string	"page_table_chain"
.LASF8:
	.string	"size_t"
.LASF339:
	.string	"PREFETCH"
.LASF59:
	.string	"PSImode"
.LASF148:
	.string	"BUILT_IN_STRNCAT"
.LASF403:
	.string	"RANGE_INFO"
.LASF287:
	.string	"SSIZETYPE"
.LASF201:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF319:
	.string	"DEFINE_ATTR"
.LASF288:
	.string	"USIZETYPE"
.LASF321:
	.string	"SET_ATTR"
.LASF73:
	.string	"TCmode"
.LASF567:
	.string	"new_entry"
.LASF396:
	.string	"UNSIGNED_FLOAT"
.LASF442:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF18:
	.string	"_IO_write_ptr"
.LASF368:
	.string	"ROTATE"
.LASF183:
	.string	"BUILT_IN_PREFETCH"
.LASF392:
	.string	"TRUNCATE"
.LASF70:
	.string	"SCmode"
.LASF453:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF271:
	.string	"integer_type_kind"
.LASF60:
	.string	"PDImode"
.LASF240:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF433:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF232:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF245:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF296:
	.string	"EXPR_LIST"
.LASF323:
	.string	"EQ_ATTR"
.LASF242:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF103:
	.string	"CCGOCmode"
.LASF354:
	.string	"CONCAT"
.LASF159:
	.string	"BUILT_IN_STRRCHR"
.LASF261:
	.string	"TI_V16SF_TYPE"
.LASF241:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF12:
	.string	"FILE"
.LASF360:
	.string	"COND"
.LASF114:
	.string	"MODE_PARTIAL_INT"
.LASF140:
	.string	"BUILT_IN_BCMP"
.LASF71:
	.string	"DCmode"
.LASF311:
	.string	"DEFINE_COMBINE"
.LASF597:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF247:
	.string	"TI_PTR_TYPE"
.LASF369:
	.string	"ASHIFTRT"
.LASF462:
	.string	"total_size_trees"
.LASF101:
	.string	"CCmode"
.LASF211:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF203:
	.string	"BUILT_IN_ISUNORDERED"
.LASF426:
	.string	"NOTE_INSN_LOOP_END"
.LASF99:
	.string	"V16SFmode"
.LASF413:
	.string	"SS_PLUS"
.LASF503:
	.string	"TV_SHORTEN_BRANCH"
.LASF534:
	.string	"pages"
.LASF440:
	.string	"NOTE_INSN_LIVE"
.LASF316:
	.string	"DEFINE_COND_EXEC"
.LASF22:
	.string	"_IO_save_base"
.LASF286:
	.string	"SIZETYPE"
.LASF312:
	.string	"DEFINE_EXPAND"
.LASF90:
	.string	"V8SImode"
.LASF325:
	.string	"INSN"
.LASF213:
	.string	"BUILT_IN_STDARG_START"
.LASF355:
	.string	"LABEL_REF"
.LASF228:
	.string	"TI_UINTDI_TYPE"
.LASF238:
	.string	"TI_BITSIZE_UNIT"
.LASF473:
	.string	"TV_LIFE_UPDATE"
.LASF602:
	.string	"ggc_collect"
.LASF430:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF36:
	.string	"__pad2"
.LASF408:
	.string	"CALL_PLACEHOLDER"
.LASF244:
	.string	"TI_DOUBLE_TYPE"
.LASF502:
	.string	"TV_REORDER_BLOCKS"
.LASF102:
	.string	"CCGCmode"
.LASF175:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF351:
	.string	"SCRATCH"
.LASF88:
	.string	"V8QImode"
.LASF91:
	.string	"V8DImode"
.LASF120:
	.string	"MAX_MODE_CLASS"
.LASF282:
	.string	"itk_unsigned_long_long"
.LASF390:
	.string	"SIGN_EXTEND"
.LASF412:
	.string	"VEC_DUPLICATE"
.LASF44:
	.string	"_next"
.LASF496:
	.string	"TV_IFCVT2"
.LASF155:
	.string	"BUILT_IN_STRPBRK"
.LASF300:
	.string	"MATCH_DUP"
.LASF548:
	.string	"page_group_index"
.LASF436:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF184:
	.string	"BUILT_IN_PUTCHAR"
.LASF97:
	.string	"V8SFmode"
.LASF532:
	.string	"page_table"
.LASF174:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF334:
	.string	"ASM_OPERANDS"
.LASF105:
	.string	"CCZmode"
.LASF427:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF291:
	.string	"UBITSIZETYPE"
.LASF220:
	.string	"TI_INTQI_TYPE"
.LASF338:
	.string	"ADDR_DIFF_VEC"
.LASF400:
	.string	"ZERO_EXTRACT"
.LASF522:
	.string	"next_bit_hint"
.LASF333:
	.string	"ASM_INPUT"
.LASF487:
	.string	"TV_COMBINE"
.LASF383:
	.string	"ORDERED"
.LASF98:
	.string	"V8DFmode"
.LASF253:
	.string	"TI_UV4SI_TYPE"
.LASF397:
	.string	"UNSIGNED_FIX"
.LASF471:
	.string	"TV_CLEANUP_CFG"
.LASF152:
	.string	"BUILT_IN_STRNCMP"
.LASF601:
	.string	"found"
.LASF579:
	.string	"ggc_pop_context"
.LASF106:
	.string	"CCFPmode"
.LASF595:
	.string	"stderr"
.LASF566:
	.string	"result"
.LASF297:
	.string	"INSN_LIST"
.LASF45:
	.string	"_sbuf"
.LASF405:
	.string	"RANGE_VAR"
.LASF24:
	.string	"_IO_save_end"
.LASF112:
	.string	"MODE_INT"
.LASF234:
	.string	"TI_SIZE_ZERO"
.LASF512:
	.string	"TIMEVAR_LAST"
.LASF594:
	.string	"stdout"
.LASF275:
	.string	"itk_short"
.LASF540:
	.string	"allocated_last_gc"
.LASF146:
	.string	"BUILT_IN_MEMSET"
.LASF406:
	.string	"RANGE_LIVE"
.LASF81:
	.string	"V2HImode"
.LASF217:
	.string	"END_BUILTINS"
.LASF289:
	.string	"BITSIZETYPE"
.LASF450:
	.string	"GR_ARG_POINTER"
.LASF0:
	.string	"sizetype"
.LASF415:
	.string	"SS_MINUS"
.LASF302:
	.string	"MATCH_PARALLEL"
.LASF86:
	.string	"V4SImode"
.LASF460:
	.string	"num_rtxs"
.LASF237:
	.string	"TI_BITSIZE_ONE"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF231:
	.string	"TI_INTEGER_ONE"
.LASF301:
	.string	"MATCH_OPERATOR"
.LASF221:
	.string	"TI_INTHI_TYPE"
.LASF568:
	.string	"hint"
.LASF553:
	.string	"num_objects"
.LASF417:
	.string	"SS_TRUNCATE"
.LASF192:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF482:
	.string	"TV_GCSE"
.LASF589:
	.string	"total_overhead"
.LASF196:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF306:
	.string	"DEFINE_INSN"
.LASF10:
	.string	"__off64_t"
.LASF485:
	.string	"TV_BRANCH_PROB"
.LASF270:
	.string	"TI_MAX"
.LASF87:
	.string	"V4DImode"
.LASF16:
	.string	"_IO_read_base"
.LASF34:
	.string	"_offset"
.LASF451:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF21:
	.string	"_IO_buf_end"
.LASF315:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF416:
	.string	"US_MINUS"
.LASF547:
	.string	"lookup_page_table_entry"
.LASF588:
	.string	"stats"
.LASF255:
	.string	"TI_UV8QI_TYPE"
.LASF399:
	.string	"SIGN_EXTRACT"
.LASF565:
	.string	"object_offset"
.LASF340:
	.string	"CLOBBER"
.LASF569:
	.string	"ggc_alloc"
.LASF40:
	.string	"_mode"
.LASF118:
	.string	"MODE_VECTOR_INT"
.LASF17:
	.string	"_IO_write_base"
.LASF561:
	.string	"free_page"
.LASF156:
	.string	"BUILT_IN_STRSPN"
.LASF95:
	.string	"V4SFmode"
.LASF225:
	.string	"TI_UINTQI_TYPE"
.LASF521:
	.string	"num_free_objects"
.LASF528:
	.string	"in_use"
.LASF191:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF362:
	.string	"PLUS"
.LASF143:
	.string	"BUILT_IN_RINDEX"
.LASF499:
	.string	"TV_SCHED2"
.LASF475:
	.string	"TV_LEX"
.LASF378:
	.string	"POST_DEC"
.LASF52:
	.string	"HImode"
.LASF429:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF116:
	.string	"MODE_COMPLEX_INT"
.LASF2:
	.string	"long int"
.LASF570:
	.string	"ggc_set_mark"
.LASF455:
	.string	"GR_VIRTUAL_CFA"
.LASF219:
	.string	"TI_ERROR_MARK"
.LASF43:
	.string	"_IO_marker"
.LASF66:
	.string	"XFmode"
.LASF96:
	.string	"V4DFmode"
.LASF267:
	.string	"TI_V2SF_TYPE"
.LASF500:
	.string	"TV_MACH_DEP"
.LASF584:
	.string	"live_objects"
.LASF424:
	.string	"NOTE_INSN_BLOCK_END"
.LASF293:
	.string	"rtx_code"
.LASF583:
	.string	"last"
.LASF218:
	.string	"tree_index"
.LASF559:
	.string	"tail_slop"
.LASF551:
	.string	"clear_page_group_in_use"
.LASF576:
	.string	"ggc_push_context"
.LASF526:
	.string	"allocation"
.LASF480:
	.string	"TV_JUMP"
.LASF513:
	.string	"long double"
.LASF207:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF580:
	.string	"depth"
.LASF294:
	.string	"UNKNOWN"
.LASF336:
	.string	"UNSPEC_VOLATILE"
.LASF292:
	.string	"TYPE_KIND_LAST"
.LASF154:
	.string	"BUILT_IN_STRSTR"
.LASF572:
	.string	"ggc_marked_p"
.LASF432:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF3:
	.string	"long unsigned int"
.LASF581:
	.string	"clear_marks"
.LASF205:
	.string	"BUILT_IN_DWARF_CFA"
.LASF62:
	.string	"HFmode"
.LASF190:
	.string	"BUILT_IN_FPRINTF"
.LASF546:
	.string	"entry"
.LASF162:
	.string	"BUILT_IN_COS"
.LASF343:
	.string	"TRAP_IF"
.LASF598:
	.string	"ggc-page.c"
.LASF490:
	.string	"TV_MODE_SWITCH"
.LASF260:
	.string	"TI_V4SF_TYPE"
.LASF575:
	.string	"init_ggc"
.LASF74:
	.string	"CQImode"
.LASF11:
	.string	"char"
.LASF72:
	.string	"XCmode"
.LASF202:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF459:
	.string	"size_trees"
.LASF531:
	.string	"table"
.LASF517:
	.string	"page"
.LASF20:
	.string	"_IO_buf_base"
.LASF371:
	.string	"ROTATERT"
.LASF357:
	.string	"ADDRESSOF"
.LASF80:
	.string	"V2QImode"
.LASF136:
	.string	"BUILT_IN_CIMAG"
.LASF177:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF58:
	.string	"PHImode"
.LASF15:
	.string	"_IO_read_end"
.LASF573:
	.string	"ggc_get_size"
.LASF285:
	.string	"size_type_kind"
.LASF79:
	.string	"COImode"
.LASF376:
	.string	"PRE_DEC"
.LASF42:
	.string	"_IO_FILE"
.LASF431:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF449:
	.string	"GR_HARD_FRAME_POINTER"
.LASF204:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF272:
	.string	"itk_char"
.LASF564:
	.string	"word"
.LASF590:
	.string	"extra_order_size_table"
.LASF239:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF111:
	.string	"MODE_RANDOM"
.LASF414:
	.string	"US_PLUS"
.LASF527:
	.string	"alloc_size"
.LASF100:
	.string	"BLKmode"
.LASF69:
	.string	"HCmode"
.LASF258:
	.string	"TI_UV2SF_TYPE"
.LASF264:
	.string	"TI_V8QI_TYPE"
.LASF269:
	.string	"TI_MAIN_IDENTIFIER"
.LASF153:
	.string	"BUILT_IN_STRLEN"
.LASF544:
	.string	"debug_file"
.LASF348:
	.string	"CONST_STRING"
.LASF411:
	.string	"VEC_CONCAT"
.LASF563:
	.string	"size"
.LASF171:
	.string	"BUILT_IN_NEXT_ARG"
.LASF35:
	.string	"__pad1"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF324:
	.string	"ATTR_FLAG"
.LASF107:
	.string	"CCFPUmode"
.LASF470:
	.string	"TV_CFG"
.LASF314:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF25:
	.string	"_markers"
.LASF46:
	.string	"_pos"
.LASF318:
	.string	"ADDRESS"
.LASF469:
	.string	"TV_DUMP"
.LASF215:
	.string	"BUILT_IN_VA_COPY"
.LASF477:
	.string	"TV_EXPAND"
.LASF492:
	.string	"TV_LOCAL_ALLOC"
.LASF216:
	.string	"BUILT_IN_EXPECT"
.LASF491:
	.string	"TV_SCHED"
.LASF252:
	.string	"TI_UV4SF_TYPE"
.LASF418:
	.string	"US_TRUNCATE"
.LASF157:
	.string	"BUILT_IN_STRCSPN"
.LASF268:
	.string	"TI_V16QI_TYPE"
.LASF281:
	.string	"itk_long_long"
.LASF375:
	.string	"UMAX"
.LASF518:
	.string	"group"
.LASF51:
	.string	"QImode"
.LASF447:
	.string	"GR_STACK_POINTER"
.LASF124:
	.string	"BUILT_IN_LABS"
.LASF63:
	.string	"TQFmode"
.LASF147:
	.string	"BUILT_IN_STRCAT"
.LASF163:
	.string	"BUILT_IN_SQRTF"
.LASF520:
	.string	"context_depth"
.LASF166:
	.string	"BUILT_IN_SQRTL"
.LASF278:
	.string	"itk_unsigned_int"
.LASF444:
	.string	"global_rtl_index"
.LASF141:
	.string	"BUILT_IN_FFS"
.LASF186:
	.string	"BUILT_IN_PRINTF"
.LASF263:
	.string	"TI_V8HI_TYPE"
.LASF56:
	.string	"OImode"
.LASF193:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF516:
	.string	"bytes"
.LASF373:
	.string	"SMAX"
.LASF456:
	.string	"GR_MAX"
.LASF410:
	.string	"VEC_SELECT"
.LASF128:
	.string	"BUILT_IN_LLABS"
.LASF256:
	.string	"TI_UV4HI_TYPE"
.LASF119:
	.string	"MODE_VECTOR_FLOAT"
.LASF381:
	.string	"POST_MODIFY"
.LASF169:
	.string	"BUILT_IN_SAVEREGS"
.LASF131:
	.string	"BUILT_IN_CONJF"
.LASF132:
	.string	"BUILT_IN_CONJL"
.LASF307:
	.string	"DEFINE_PEEPHOLE"
.LASF47:
	.string	"long long unsigned int"
.LASF438:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF30:
	.string	"_cur_column"
.LASF303:
	.string	"MATCH_OP_DUP"
.LASF317:
	.string	"SEQUENCE"
.LASF61:
	.string	"QFmode"
.LASF344:
	.string	"RESX"
.LASF332:
	.string	"PARALLEL"
.LASF514:
	.string	"page_entry"
.LASF230:
	.string	"TI_INTEGER_ZERO"
.LASF23:
	.string	"_IO_backup_base"
.LASF382:
	.string	"UNORDERED"
.LASF108:
	.string	"MAX_MACHINE_MODE"
.LASF14:
	.string	"_IO_read_ptr"
.LASF277:
	.string	"itk_int"
.LASF170:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF299:
	.string	"MATCH_SCRATCH"
.LASF349:
	.string	"CONST"
.LASF398:
	.string	"SQRT"
.LASF446:
	.string	"GR_CC0"
.LASF478:
	.string	"TV_VARCONST"
.LASF110:
	.string	"mode_class"
.LASF364:
	.string	"MULT"
.LASF494:
	.string	"TV_RELOAD_CSE_REGS"
.LASF115:
	.string	"MODE_CC"
.LASF488:
	.string	"TV_IFCVT"
.LASF57:
	.string	"PQImode"
.LASF486:
	.string	"TV_FLOW"
.LASF562:
	.string	"release_pages"
.LASF89:
	.string	"V8HImode"
.LASF222:
	.string	"TI_INTSI_TYPE"
.LASF137:
	.string	"BUILT_IN_CIMAGF"
.LASF29:
	.string	"_old_offset"
.LASF327:
	.string	"CALL_INSN"
.LASF493:
	.string	"TV_GLOBAL_ALLOC"
.LASF352:
	.string	"SUBREG"
.LASF92:
	.string	"V16QImode"
.LASF125:
	.string	"BUILT_IN_FABS"
.LASF48:
	.string	"long long int"
.LASF479:
	.string	"TV_INTEGRATION"
.LASF283:
	.string	"itk_none"
.LASF28:
	.string	"_flags2"
.LASF290:
	.string	"SBITSIZETYPE"
.LASF68:
	.string	"QCmode"
.LASF350:
	.string	"VALUE"
.LASF330:
	.string	"NOTE"
.LASF508:
	.string	"TV_FROM_SSA"
.LASF474:
	.string	"TV_CPP"
.LASF374:
	.string	"UMIN"
.LASF254:
	.string	"TI_UV8HI_TYPE"
.LASF200:
	.string	"BUILT_IN_ISLESS"
.LASF158:
	.string	"BUILT_IN_STRCHR"
.LASF214:
	.string	"BUILT_IN_VA_END"
.LASF178:
	.string	"BUILT_IN_APPLY"
.LASF539:
	.string	"allocated"
.LASF498:
	.string	"TV_RENAME_REGISTERS"
.LASF425:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF75:
	.string	"CHImode"
.LASF134:
	.string	"BUILT_IN_CREALF"
.LASF441:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF322:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF135:
	.string	"BUILT_IN_CREALL"
.LASF273:
	.string	"itk_signed_char"
.LASF346:
	.string	"CONST_DOUBLE"
.LASF180:
	.string	"BUILT_IN_SETJMP"
.LASF197:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF279:
	.string	"itk_long"
.LASF104:
	.string	"CCNOmode"
.LASF484:
	.string	"TV_CSE2"
.LASF538:
	.string	"lg_pagesize"
.LASF85:
	.string	"V4HImode"
.LASF384:
	.string	"UNEQ"
.LASF519:
	.string	"save_in_use_p"
.LASF591:
	.string	"objects_per_page_table"
.LASF367:
	.string	"ASHIFT"
.LASF251:
	.string	"TI_VOID_LIST_NODE"
.LASF550:
	.string	"set_page_group_in_use"
.LASF372:
	.string	"SMIN"
.LASF577:
	.string	"__FUNCTION__"
.LASF359:
	.string	"IF_THEN_ELSE"
.LASF185:
	.string	"BUILT_IN_PUTS"
.LASF481:
	.string	"TV_CSE"
.LASF437:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF434:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF555:
	.string	"page_entry_size"
.LASF523:
	.string	"order"
.LASF1:
	.string	"unsigned int"
.LASF467:
	.string	"TV_TOTAL"
.LASF150:
	.string	"BUILT_IN_STRNCPY"
.LASF385:
	.string	"UNGE"
.LASF7:
	.string	"short int"
.LASF386:
	.string	"UNGT"
.LASF160:
	.string	"BUILT_IN_SQRT"
.LASF461:
	.string	"size_rtxs"
.LASF31:
	.string	"_vtable_offset"
.LASF464:
	.string	"total_num_trees"
.LASF206:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF49:
	.string	"VOIDmode"
.LASF250:
	.string	"TI_VA_LIST_TYPE"
.LASF454:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF402:
	.string	"LO_SUM"
.LASF151:
	.string	"BUILT_IN_STRCMP"
.LASF235:
	.string	"TI_SIZE_ONE"
.LASF554:
	.string	"bitmap_size"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
