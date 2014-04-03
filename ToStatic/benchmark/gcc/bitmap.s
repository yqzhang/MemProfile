	.file	"bitmap.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 bitmap.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	bitmap_obstack
	.comm	bitmap_obstack,88,32
	.local	bitmap_obstack_init
	.comm	bitmap_obstack_init,4,4
	.comm	bitmap_zero_bits,40,32
	.local	bitmap_free
	.comm	bitmap_free,8,8
	.type	bitmap_element_free, @function
bitmap_element_free:
.LFB2:
	.file 1 "bitmap.c"
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# head, head
	movq	%rsi, -32(%rbp)	# elt, elt
	.loc 1 64 0
	movq	-32(%rbp), %rax	# elt, tmp66
	movq	(%rax), %rax	# elt_2(D)->next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, next
	.loc 1 65 0
	movq	-32(%rbp), %rax	# elt, tmp68
	movq	8(%rax), %rax	# elt_2(D)->prev, tmp69
	movq	%rax, -8(%rbp)	# tmp69, prev
	.loc 1 67 0
	cmpq	$0, -8(%rbp)	#, prev
	je	.L2	#,
	.loc 1 68 0
	movq	-8(%rbp), %rax	# prev, tmp70
	movq	-16(%rbp), %rdx	# next, tmp71
	movq	%rdx, (%rax)	# tmp71, prev_4->next
.L2:
	.loc 1 70 0
	cmpq	$0, -16(%rbp)	#, next
	je	.L3	#,
	.loc 1 71 0
	movq	-16(%rbp), %rax	# next, tmp72
	movq	-8(%rbp), %rdx	# prev, tmp73
	movq	%rdx, 8(%rax)	# tmp73, next_3->prev
.L3:
	.loc 1 73 0
	movq	-24(%rbp), %rax	# head, tmp74
	movq	(%rax), %rax	# head_5(D)->first, D.9500
	cmpq	-32(%rbp), %rax	# elt, D.9500
	jne	.L4	#,
	.loc 1 74 0
	movq	-24(%rbp), %rax	# head, tmp75
	movq	-16(%rbp), %rdx	# next, tmp76
	movq	%rdx, (%rax)	# tmp76, head_5(D)->first
.L4:
	.loc 1 78 0
	movq	-24(%rbp), %rax	# head, tmp77
	movq	8(%rax), %rax	# head_5(D)->current, D.9500
	cmpq	-32(%rbp), %rax	# elt, D.9500
	jne	.L5	#,
	.loc 1 80 0
	cmpq	$0, -16(%rbp)	#, next
	je	.L6	#,
	.loc 1 80 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# next, iftmp.0
	jmp	.L7	#
.L6:
	.loc 1 80 0 discriminator 2
	movq	-8(%rbp), %rax	# prev, iftmp.0
.L7:
	.loc 1 80 0 discriminator 3
	movq	-24(%rbp), %rdx	# head, tmp78
	movq	%rax, 8(%rdx)	# iftmp.0, head_5(D)->current
	.loc 1 81 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# head, tmp79
	movq	8(%rax), %rax	# head_5(D)->current, D.9500
	testq	%rax, %rax	# D.9500
	je	.L5	#,
	.loc 1 82 0
	movq	-24(%rbp), %rax	# head, tmp80
	movq	8(%rax), %rax	# head_5(D)->current, D.9500
	movl	16(%rax), %edx	# _11->indx, D.9501
	movq	-24(%rbp), %rax	# head, tmp81
	movl	%edx, 16(%rax)	# D.9501, head_5(D)->indx
.L5:
	.loc 1 85 0
	movq	bitmap_free(%rip), %rdx	# bitmap_free, bitmap_free.1
	movq	-32(%rbp), %rax	# elt, tmp82
	movq	%rdx, (%rax)	# bitmap_free.1, elt_2(D)->next
	.loc 1 86 0
	movq	-32(%rbp), %rax	# elt, tmp83
	movq	%rax, bitmap_free(%rip)	# tmp83, bitmap_free
	.loc 1 87 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	bitmap_element_free, .-bitmap_element_free
	.type	bitmap_element_allocate, @function
bitmap_element_allocate:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 96 0
	movq	bitmap_free(%rip), %rax	# bitmap_free, bitmap_free.2
	testq	%rax, %rax	# bitmap_free.2
	je	.L9	#,
	.loc 1 98 0
	movq	bitmap_free(%rip), %rax	# bitmap_free, tmp99
	movq	%rax, -40(%rbp)	# tmp99, element
	.loc 1 99 0
	movq	-40(%rbp), %rax	# element, tmp100
	movq	(%rax), %rax	# element_3->next, bitmap_free.3
	movq	%rax, bitmap_free(%rip)	# bitmap_free.3, bitmap_free
	jmp	.L10	#
.L9:
	.loc 1 106 0
	movl	bitmap_obstack_init(%rip), %eax	# bitmap_obstack_init, bitmap_obstack_init.4
	testl	%eax, %eax	# bitmap_obstack_init.4
	jne	.L11	#,
	.loc 1 108 0
	movl	$1, bitmap_obstack_init(%rip)	#, bitmap_obstack_init
	.loc 1 126 0
	movl	$free, %r8d	#,
	movl	$xmalloc, %ecx	#,
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movl	$bitmap_obstack, %edi	#,
	call	_obstack_begin	#
.L11:
.LBB2:
	.loc 1 132 0
	movq	$bitmap_obstack, -32(%rbp)	#, __h
.LBB3:
	movq	-32(%rbp), %rax	# __h, tmp101
	movq	%rax, -24(%rbp)	# tmp101, __o
	movl	$40, -44(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp102
	movq	32(%rax), %rax	# __o_7->chunk_limit, D.9502
	movq	%rax, %rdx	# D.9502, D.9503
	movq	-24(%rbp), %rax	# __o, tmp103
	movq	24(%rax), %rax	# __o_7->next_free, D.9502
	subq	%rax, %rdx	# D.9503, D.9503
	movl	-44(%rbp), %eax	# __len, tmp104
	cltq
	cmpq	%rax, %rdx	# D.9503, D.9503
	jge	.L12	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp105
	movq	-24(%rbp), %rax	# __o, tmp106
	movl	%edx, %esi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_obstack_newchunk	#
.L12:
	.loc 1 132 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp107
	movq	24(%rax), %rdx	# __o_7->next_free, D.9502
	movl	-44(%rbp), %eax	# __len, tmp108
	cltq
	addq	%rax, %rdx	# D.9504, D.9502
	movq	-24(%rbp), %rax	# __o, tmp109
	movq	%rdx, 24(%rax)	# D.9502, __o_7->next_free
.LBE3:
.LBB4:
	movq	-32(%rbp), %rax	# __h, tmp110
	movq	%rax, -16(%rbp)	# tmp110, __o1
	movq	-16(%rbp), %rax	# __o1, tmp111
	movq	16(%rax), %rax	# __o1_18->object_base, tmp112
	movq	%rax, -8(%rbp)	# tmp112, value
	movq	-16(%rbp), %rax	# __o1, tmp113
	movq	24(%rax), %rax	# __o1_18->next_free, D.9502
	cmpq	-8(%rbp), %rax	# value, D.9502
	jne	.L13	#,
	.loc 1 132 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp114
	movzbl	80(%rax), %edx	# __o1_18->maybe_empty_object, tmp117
	orl	$2, %edx	#, tmp118
	movb	%dl, 80(%rax)	# tmp118, __o1_18->maybe_empty_object
.L13:
	.loc 1 132 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp119
	movq	24(%rax), %rax	# __o1_18->next_free, D.9502
	movq	%rax, %rdx	# D.9502, D.9503
	movq	-16(%rbp), %rax	# __o1, tmp120
	movl	48(%rax), %eax	# __o1_18->alignment_mask, D.9505
	cltq
	addq	%rax, %rdx	# D.9503, D.9503
	movq	-16(%rbp), %rax	# __o1, tmp121
	movl	48(%rax), %eax	# __o1_18->alignment_mask, D.9505
	notl	%eax	# D.9505
	cltq
	andq	%rdx, %rax	# D.9503, D.9503
	movq	%rax, %rdx	# D.9503, D.9502
	movq	-16(%rbp), %rax	# __o1, tmp122
	movq	%rdx, 24(%rax)	# D.9502, __o1_18->next_free
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rax	# __o1_18->next_free, D.9502
	movq	%rax, %rdx	# D.9502, D.9503
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	8(%rax), %rax	# __o1_18->chunk, D.9506
	movq	%rdx, %rcx	# D.9503, D.9503
	subq	%rax, %rcx	# D.9503, D.9503
	movq	-16(%rbp), %rax	# __o1, tmp125
	movq	32(%rax), %rax	# __o1_18->chunk_limit, D.9502
	movq	%rax, %rdx	# D.9502, D.9503
	movq	-16(%rbp), %rax	# __o1, tmp126
	movq	8(%rax), %rax	# __o1_18->chunk, D.9506
	subq	%rax, %rdx	# D.9503, D.9503
	movq	%rdx, %rax	# D.9503, D.9503
	cmpq	%rax, %rcx	# D.9503, D.9503
	jle	.L14	#,
	.loc 1 132 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp127
	movq	32(%rax), %rdx	# __o1_18->chunk_limit, D.9502
	movq	-16(%rbp), %rax	# __o1, tmp128
	movq	%rdx, 24(%rax)	# D.9502, __o1_18->next_free
.L14:
	.loc 1 132 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp129
	movq	24(%rax), %rdx	# __o1_18->next_free, D.9502
	movq	-16(%rbp), %rax	# __o1, tmp130
	movq	%rdx, 16(%rax)	# D.9502, __o1_18->object_base
	movq	-8(%rbp), %rax	# value, D.9507
.LBE4:
.LBE2:
	movq	%rax, -40(%rbp)	# element.5, element
.L10:
	.loc 1 136 0 is_stmt 1
	movq	-40(%rbp), %rax	# element, tmp131
	addq	$24, %rax	#, D.9508
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.9508,
	call	memset	#
	.loc 1 138 0
	movq	-40(%rbp), %rax	# element, D.9509
	.loc 1 139 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	bitmap_element_allocate, .-bitmap_element_allocate
	.globl	bitmap_release_memory
	.type	bitmap_release_memory, @function
bitmap_release_memory:
.LFB4:
	.loc 1 145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 146 0
	movq	$0, bitmap_free(%rip)	#, bitmap_free
	.loc 1 147 0
	movl	bitmap_obstack_init(%rip), %eax	# bitmap_obstack_init, bitmap_obstack_init.6
	testl	%eax, %eax	# bitmap_obstack_init.6
	je	.L16	#,
	.loc 1 149 0
	movl	$0, bitmap_obstack_init(%rip)	#, bitmap_obstack_init
.LBB5:
	.loc 1 150 0
	movq	$bitmap_obstack, -16(%rbp)	#, __o
	movq	$0, -8(%rbp)	#, __obj
	movq	-16(%rbp), %rax	# __o, tmp63
	movq	8(%rax), %rax	# __o_2->chunk, D.9510
	cmpq	-8(%rbp), %rax	# __obj, D.9510
	jae	.L18	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp64
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.9511
	cmpq	-8(%rbp), %rax	# __obj, D.9511
	jbe	.L18	#,
	movq	-16(%rbp), %rax	# __o, tmp65
	movq	-8(%rbp), %rdx	# __obj, tmp66
	movq	%rdx, 16(%rax)	# tmp66, __o_2->object_base
	movq	-16(%rbp), %rax	# __o, tmp67
	movq	16(%rax), %rdx	# __o_2->object_base, D.9511
	movq	-16(%rbp), %rax	# __o, tmp68
	movq	%rdx, 24(%rax)	# D.9511, __o_2->next_free
	jmp	.L16	#
.L18:
	.loc 1 150 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp69
	movq	-16(%rbp), %rax	# __o, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	obstack_free	#
.L16:
.LBE5:
	.loc 1 152 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bitmap_release_memory, .-bitmap_release_memory
	.type	bitmap_element_zerop, @function
bitmap_element_zerop:
.LFB5:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# element, element
	.loc 1 161 0
	movq	-8(%rbp), %rax	# element, tmp65
	movq	24(%rax), %rdx	# element_1(D)->bits, D.9512
	movq	-8(%rbp), %rax	# element, tmp66
	movq	32(%rax), %rax	# element_1(D)->bits, D.9512
	orq	%rdx, %rax	# D.9512, D.9512
	testq	%rax, %rax	# D.9512
	sete	%al	#, D.9513
	movzbl	%al, %eax	# D.9513, D.9514
	.loc 1 171 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	bitmap_element_zerop, .-bitmap_element_zerop
	.type	bitmap_element_link, @function
bitmap_element_link:
.LFB6:
	.loc 1 179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# head, head
	movq	%rsi, -32(%rbp)	# element, element
	.loc 1 180 0
	movq	-32(%rbp), %rax	# element, tmp74
	movl	16(%rax), %eax	# element_3(D)->indx, tmp75
	movl	%eax, -12(%rbp)	# tmp75, indx
	.loc 1 184 0
	movq	-24(%rbp), %rax	# head, tmp76
	movq	(%rax), %rax	# head_5(D)->first, D.9515
	testq	%rax, %rax	# D.9515
	jne	.L22	#,
	.loc 1 186 0
	movq	-32(%rbp), %rax	# element, tmp77
	movq	$0, 8(%rax)	#, element_3(D)->prev
	movq	-32(%rbp), %rax	# element, tmp78
	movq	8(%rax), %rdx	# element_3(D)->prev, D.9516
	movq	-32(%rbp), %rax	# element, tmp79
	movq	%rdx, (%rax)	# D.9516, element_3(D)->next
	.loc 1 187 0
	movq	-24(%rbp), %rax	# head, tmp80
	movq	-32(%rbp), %rdx	# element, tmp81
	movq	%rdx, (%rax)	# tmp81, head_5(D)->first
	jmp	.L23	#
.L22:
	.loc 1 192 0
	movq	-24(%rbp), %rax	# head, tmp82
	movl	16(%rax), %eax	# head_5(D)->indx, D.9517
	cmpl	-12(%rbp), %eax	# indx, D.9517
	jbe	.L24	#,
	.loc 1 194 0
	movq	-24(%rbp), %rax	# head, tmp83
	movq	8(%rax), %rax	# head_5(D)->current, tmp84
	movq	%rax, -8(%rbp)	# tmp84, ptr
	jmp	.L25	#
.L27:
	.loc 1 196 0
	movq	-8(%rbp), %rax	# ptr, tmp85
	movq	8(%rax), %rax	# ptr_1->prev, tmp86
	movq	%rax, -8(%rbp)	# tmp86, ptr
.L25:
	.loc 1 195 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp87
	movq	8(%rax), %rax	# ptr_1->prev, D.9516
	.loc 1 194 0 discriminator 1
	testq	%rax, %rax	# D.9516
	je	.L26	#,
	.loc 1 195 0
	movq	-8(%rbp), %rax	# ptr, tmp88
	movq	8(%rax), %rax	# ptr_1->prev, D.9516
	movl	16(%rax), %eax	# _11->indx, D.9517
	cmpl	-12(%rbp), %eax	# indx, D.9517
	ja	.L27	#,
.L26:
	.loc 1 199 0
	movq	-8(%rbp), %rax	# ptr, tmp89
	movq	8(%rax), %rax	# ptr_1->prev, D.9516
	testq	%rax, %rax	# D.9516
	je	.L28	#,
	.loc 1 200 0
	movq	-8(%rbp), %rax	# ptr, tmp90
	movq	8(%rax), %rax	# ptr_1->prev, D.9516
	movq	-32(%rbp), %rdx	# element, tmp91
	movq	%rdx, (%rax)	# tmp91, _15->next
	jmp	.L29	#
.L28:
	.loc 1 202 0
	movq	-24(%rbp), %rax	# head, tmp92
	movq	-32(%rbp), %rdx	# element, tmp93
	movq	%rdx, (%rax)	# tmp93, head_5(D)->first
.L29:
	.loc 1 204 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp94
	movq	8(%rax), %rdx	# ptr_1->prev, D.9516
	movq	-32(%rbp), %rax	# element, tmp95
	movq	%rdx, 8(%rax)	# D.9516, element_3(D)->prev
	.loc 1 205 0 discriminator 1
	movq	-32(%rbp), %rax	# element, tmp96
	movq	-8(%rbp), %rdx	# ptr, tmp97
	movq	%rdx, (%rax)	# tmp97, element_3(D)->next
	.loc 1 206 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp98
	movq	-32(%rbp), %rdx	# element, tmp99
	movq	%rdx, 8(%rax)	# tmp99, ptr_1->prev
	jmp	.L23	#
.L24:
	.loc 1 212 0
	movq	-24(%rbp), %rax	# head, tmp100
	movq	8(%rax), %rax	# head_5(D)->current, tmp101
	movq	%rax, -8(%rbp)	# tmp101, ptr
	jmp	.L30	#
.L32:
	.loc 1 214 0
	movq	-8(%rbp), %rax	# ptr, tmp102
	movq	(%rax), %rax	# ptr_2->next, tmp103
	movq	%rax, -8(%rbp)	# tmp103, ptr
.L30:
	.loc 1 213 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp104
	movq	(%rax), %rax	# ptr_2->next, D.9516
	.loc 1 212 0 discriminator 1
	testq	%rax, %rax	# D.9516
	je	.L31	#,
	.loc 1 213 0
	movq	-8(%rbp), %rax	# ptr, tmp105
	movq	(%rax), %rax	# ptr_2->next, D.9516
	movl	16(%rax), %eax	# _19->indx, D.9517
	cmpl	-12(%rbp), %eax	# indx, D.9517
	jb	.L32	#,
.L31:
	.loc 1 217 0
	movq	-8(%rbp), %rax	# ptr, tmp106
	movq	(%rax), %rax	# ptr_2->next, D.9516
	testq	%rax, %rax	# D.9516
	je	.L33	#,
	.loc 1 218 0
	movq	-8(%rbp), %rax	# ptr, tmp107
	movq	(%rax), %rax	# ptr_2->next, D.9516
	movq	-32(%rbp), %rdx	# element, tmp108
	movq	%rdx, 8(%rax)	# tmp108, _23->prev
.L33:
	.loc 1 220 0
	movq	-8(%rbp), %rax	# ptr, tmp109
	movq	(%rax), %rdx	# ptr_2->next, D.9516
	movq	-32(%rbp), %rax	# element, tmp110
	movq	%rdx, (%rax)	# D.9516, element_3(D)->next
	.loc 1 221 0
	movq	-32(%rbp), %rax	# element, tmp111
	movq	-8(%rbp), %rdx	# ptr, tmp112
	movq	%rdx, 8(%rax)	# tmp112, element_3(D)->prev
	.loc 1 222 0
	movq	-8(%rbp), %rax	# ptr, tmp113
	movq	-32(%rbp), %rdx	# element, tmp114
	movq	%rdx, (%rax)	# tmp114, ptr_2->next
.L23:
	.loc 1 226 0
	movq	-24(%rbp), %rax	# head, tmp115
	movq	-32(%rbp), %rdx	# element, tmp116
	movq	%rdx, 8(%rax)	# tmp116, head_5(D)->current
	.loc 1 227 0
	movq	-24(%rbp), %rax	# head, tmp117
	movl	-12(%rbp), %edx	# indx, tmp118
	movl	%edx, 16(%rax)	# tmp118, head_5(D)->indx
	.loc 1 228 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bitmap_element_link, .-bitmap_element_link
	.globl	bitmap_clear
	.type	bitmap_clear, @function
bitmap_clear:
.LFB7:
	.loc 1 235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# head, head
	.loc 1 238 0
	movq	-24(%rbp), %rax	# head, tmp61
	movq	(%rax), %rax	# head_2(D)->first, tmp62
	movq	%rax, -16(%rbp)	# tmp62, element
	jmp	.L35	#
.L36:
	.loc 1 240 0 discriminator 2
	movq	-16(%rbp), %rax	# element, tmp63
	movq	(%rax), %rax	# element_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, next
	.loc 1 241 0 discriminator 2
	movq	bitmap_free(%rip), %rdx	# bitmap_free, bitmap_free.7
	movq	-16(%rbp), %rax	# element, tmp65
	movq	%rdx, (%rax)	# bitmap_free.7, element_1->next
	.loc 1 242 0 discriminator 2
	movq	-16(%rbp), %rax	# element, tmp66
	movq	%rax, bitmap_free(%rip)	# tmp66, bitmap_free
	.loc 1 238 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, element
.L35:
	.loc 1 238 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, element
	jne	.L36	#,
	.loc 1 245 0 is_stmt 1
	movq	-24(%rbp), %rax	# head, tmp68
	movq	$0, 8(%rax)	#, head_2(D)->current
	movq	-24(%rbp), %rax	# head, tmp69
	movq	8(%rax), %rdx	# head_2(D)->current, D.9518
	movq	-24(%rbp), %rax	# head, tmp70
	movq	%rdx, (%rax)	# D.9518, head_2(D)->first
	.loc 1 246 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bitmap_clear, .-bitmap_clear
	.globl	bitmap_copy
	.type	bitmap_copy, @function
bitmap_copy:
.LFB8:
	.loc 1 254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# to, to
	movq	%rsi, -48(%rbp)	# from, from
	.loc 1 255 0
	movq	$0, -16(%rbp)	#, to_ptr
	.loc 1 260 0
	movq	-40(%rbp), %rax	# to, tmp65
	movq	%rax, %rdi	# tmp65,
	call	bitmap_clear	#
	.loc 1 263 0
	movq	-48(%rbp), %rax	# from, tmp66
	movq	(%rax), %rax	# from_5(D)->first, tmp67
	movq	%rax, -24(%rbp)	# tmp67, from_ptr
	jmp	.L38	#
.L41:
.LBB6:
	.loc 1 265 0
	call	bitmap_element_allocate	#
	movq	%rax, -8(%rbp)	# tmp68, to_elt
	.loc 1 267 0
	movq	-24(%rbp), %rax	# from_ptr, tmp69
	movl	16(%rax), %edx	# from_ptr_1->indx, D.9519
	movq	-8(%rbp), %rax	# to_elt, tmp70
	movl	%edx, 16(%rax)	# D.9519, to_elt_7->indx
	.loc 1 270 0
	movq	-24(%rbp), %rax	# from_ptr, tmp71
	movq	24(%rax), %rdx	# from_ptr_1->bits, D.9520
	movq	-8(%rbp), %rax	# to_elt, tmp72
	movq	%rdx, 24(%rax)	# D.9520, to_elt_7->bits
	.loc 1 271 0
	movq	-24(%rbp), %rax	# from_ptr, tmp73
	movq	32(%rax), %rdx	# from_ptr_1->bits, D.9520
	movq	-8(%rbp), %rax	# to_elt, tmp74
	movq	%rdx, 32(%rax)	# D.9520, to_elt_7->bits
	.loc 1 279 0
	cmpq	$0, -16(%rbp)	#, to_ptr
	jne	.L39	#,
	.loc 1 281 0
	movq	-40(%rbp), %rax	# to, tmp75
	movq	-8(%rbp), %rdx	# to_elt, tmp76
	movq	%rdx, 8(%rax)	# tmp76, to_4(D)->current
	movq	-40(%rbp), %rax	# to, tmp77
	movq	8(%rax), %rdx	# to_4(D)->current, D.9521
	movq	-40(%rbp), %rax	# to, tmp78
	movq	%rdx, (%rax)	# D.9521, to_4(D)->first
	.loc 1 282 0
	movq	-24(%rbp), %rax	# from_ptr, tmp79
	movl	16(%rax), %edx	# from_ptr_1->indx, D.9519
	movq	-40(%rbp), %rax	# to, tmp80
	movl	%edx, 16(%rax)	# D.9519, to_4(D)->indx
	.loc 1 283 0
	movq	-8(%rbp), %rax	# to_elt, tmp81
	movq	$0, 8(%rax)	#, to_elt_7->prev
	movq	-8(%rbp), %rax	# to_elt, tmp82
	movq	8(%rax), %rdx	# to_elt_7->prev, D.9522
	movq	-8(%rbp), %rax	# to_elt, tmp83
	movq	%rdx, (%rax)	# D.9522, to_elt_7->next
	jmp	.L40	#
.L39:
	.loc 1 287 0
	movq	-8(%rbp), %rax	# to_elt, tmp84
	movq	-16(%rbp), %rdx	# to_ptr, tmp85
	movq	%rdx, 8(%rax)	# tmp85, to_elt_7->prev
	.loc 1 288 0
	movq	-8(%rbp), %rax	# to_elt, tmp86
	movq	$0, (%rax)	#, to_elt_7->next
	.loc 1 289 0
	movq	-16(%rbp), %rax	# to_ptr, tmp87
	movq	-8(%rbp), %rdx	# to_elt, tmp88
	movq	%rdx, (%rax)	# tmp88, to_ptr_2->next
.L40:
	.loc 1 292 0
	movq	-8(%rbp), %rax	# to_elt, tmp89
	movq	%rax, -16(%rbp)	# tmp89, to_ptr
.LBE6:
	.loc 1 263 0
	movq	-24(%rbp), %rax	# from_ptr, tmp90
	movq	(%rax), %rax	# from_ptr_1->next, tmp91
	movq	%rax, -24(%rbp)	# tmp91, from_ptr
.L38:
	.loc 1 263 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, from_ptr
	jne	.L41	#,
	.loc 1 294 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	bitmap_copy, .-bitmap_copy
	.type	bitmap_find_bit, @function
bitmap_find_bit:
.LFB9:
	.loc 1 305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# head, head
	movl	%esi, -28(%rbp)	# bit, bit
	.loc 1 307 0
	movl	-28(%rbp), %eax	# bit, tmp76
	shrl	$7, %eax	#, D.9524
	movl	%eax, %eax	# D.9524, tmp99
	movq	%rax, -8(%rbp)	# tmp99, indx
	.loc 1 309 0
	movq	-24(%rbp), %rax	# head, tmp77
	movq	8(%rax), %rax	# head_9(D)->current, D.9523
	testq	%rax, %rax	# D.9523
	je	.L43	#,
	.loc 1 310 0
	movq	-24(%rbp), %rax	# head, tmp78
	movl	16(%rax), %eax	# head_9(D)->indx, D.9524
	movl	%eax, %eax	# D.9524, D.9525
	cmpq	-8(%rbp), %rax	# indx, D.9525
	jne	.L44	#,
.L43:
	.loc 1 311 0
	movq	-24(%rbp), %rax	# head, tmp79
	movq	8(%rax), %rax	# head_9(D)->current, D.9523
	jmp	.L45	#
.L44:
	.loc 1 313 0
	movq	-24(%rbp), %rax	# head, tmp80
	movl	16(%rax), %eax	# head_9(D)->indx, D.9524
	movl	%eax, %eax	# D.9524, D.9525
	cmpq	-8(%rbp), %rax	# indx, D.9525
	jbe	.L46	#,
	.loc 1 314 0
	movq	-24(%rbp), %rax	# head, tmp81
	movq	8(%rax), %rax	# head_9(D)->current, tmp82
	movq	%rax, -16(%rbp)	# tmp82, element
	jmp	.L47	#
.L49:
	.loc 1 316 0
	movq	-16(%rbp), %rax	# element, tmp83
	movq	8(%rax), %rax	# element_1->prev, tmp84
	movq	%rax, -16(%rbp)	# tmp84, element
.L47:
	.loc 1 315 0 discriminator 1
	movq	-16(%rbp), %rax	# element, tmp85
	movq	8(%rax), %rax	# element_1->prev, D.9526
	.loc 1 314 0 discriminator 1
	testq	%rax, %rax	# D.9526
	je	.L48	#,
	.loc 1 315 0
	movq	-16(%rbp), %rax	# element, tmp86
	movl	16(%rax), %eax	# element_1->indx, D.9524
	movl	%eax, %eax	# D.9524, D.9525
	cmpq	-8(%rbp), %rax	# indx, D.9525
	ja	.L49	#,
	jmp	.L48	#
.L46:
	.loc 1 320 0
	movq	-24(%rbp), %rax	# head, tmp87
	movq	8(%rax), %rax	# head_9(D)->current, tmp88
	movq	%rax, -16(%rbp)	# tmp88, element
	jmp	.L50	#
.L51:
	.loc 1 322 0
	movq	-16(%rbp), %rax	# element, tmp89
	movq	(%rax), %rax	# element_2->next, tmp90
	movq	%rax, -16(%rbp)	# tmp90, element
.L50:
	.loc 1 321 0 discriminator 1
	movq	-16(%rbp), %rax	# element, tmp91
	movq	(%rax), %rax	# element_2->next, D.9526
	.loc 1 320 0 discriminator 1
	testq	%rax, %rax	# D.9526
	je	.L48	#,
	.loc 1 321 0
	movq	-16(%rbp), %rax	# element, tmp92
	movl	16(%rax), %eax	# element_2->indx, D.9524
	movl	%eax, %eax	# D.9524, D.9525
	cmpq	-8(%rbp), %rax	# indx, D.9525
	jb	.L51	#,
.L48:
	.loc 1 327 0
	movq	-24(%rbp), %rax	# head, tmp93
	movq	-16(%rbp), %rdx	# element, tmp94
	movq	%rdx, 8(%rax)	# tmp94, head_9(D)->current
	.loc 1 328 0
	movq	-16(%rbp), %rax	# element, tmp95
	movl	16(%rax), %edx	# element_3->indx, D.9524
	movq	-24(%rbp), %rax	# head, tmp96
	movl	%edx, 16(%rax)	# D.9524, head_9(D)->indx
	.loc 1 329 0
	cmpq	$0, -16(%rbp)	#, element
	je	.L52	#,
	.loc 1 329 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# element, tmp97
	movl	16(%rax), %eax	# element_3->indx, D.9524
	movl	%eax, %eax	# D.9524, D.9525
	cmpq	-8(%rbp), %rax	# indx, D.9525
	je	.L52	#,
	.loc 1 330 0 is_stmt 1
	movq	$0, -16(%rbp)	#, element
.L52:
	.loc 1 332 0
	movq	-16(%rbp), %rax	# element, D.9523
.L45:
	.loc 1 333 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bitmap_find_bit, .-bitmap_find_bit
	.globl	bitmap_clear_bit
	.type	bitmap_clear_bit, @function
bitmap_clear_bit:
.LFB10:
	.loc 1 341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# head, head
	movl	%esi, -28(%rbp)	# bit, bit
	.loc 1 342 0
	movl	-28(%rbp), %edx	# bit, bit.8
	movq	-24(%rbp), %rax	# head, tmp69
	movl	%edx, %esi	# bit.8,
	movq	%rax, %rdi	# tmp69,
	call	bitmap_find_bit	#
	movq	%rax, -8(%rbp)	# tmp70, ptr
	.loc 1 344 0
	cmpq	$0, -8(%rbp)	#, ptr
	je	.L53	#,
.LBB7:
	.loc 1 346 0
	movl	-28(%rbp), %eax	# bit, bit.9
	andl	$63, %eax	#, tmp71
	movl	%eax, -16(%rbp)	# tmp71, bit_num
	.loc 1 347 0
	movl	-28(%rbp), %eax	# bit, bit.10
	shrl	$6, %eax	#, D.9527
	andl	$1, %eax	#, tmp72
	movl	%eax, -12(%rbp)	# tmp72, word_num
	.loc 1 349 0
	movq	-8(%rbp), %rax	# ptr, tmp73
	movl	-12(%rbp), %edx	# word_num, tmp74
	addq	$2, %rdx	#, tmp75
	movq	8(%rax,%rdx,8), %rdx	# ptr_4->bits, D.9528
	movl	-16(%rbp), %eax	# bit_num, bit_num.11
	movl	$1, %esi	#, tmp76
	movl	%eax, %ecx	# bit_num.11, tmp84
	salq	%cl, %rsi	# tmp84, D.9528
	movq	%rsi, %rax	# D.9528, D.9528
	notq	%rax	# D.9528
	movq	%rdx, %rcx	# D.9528, D.9528
	andq	%rax, %rcx	# D.9528, D.9528
	movq	-8(%rbp), %rax	# ptr, tmp77
	movl	-12(%rbp), %edx	# word_num, tmp78
	addq	$2, %rdx	#, tmp79
	movq	%rcx, 8(%rax,%rdx,8)	# D.9528, ptr_4->bits
	.loc 1 352 0
	movq	-8(%rbp), %rax	# ptr, tmp80
	movq	%rax, %rdi	# tmp80,
	call	bitmap_element_zerop	#
	testl	%eax, %eax	# D.9529
	je	.L53	#,
	.loc 1 353 0
	movq	-8(%rbp), %rdx	# ptr, tmp81
	movq	-24(%rbp), %rax	# head, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	bitmap_element_free	#
.L53:
.LBE7:
	.loc 1 355 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	bitmap_clear_bit, .-bitmap_clear_bit
	.globl	bitmap_set_bit
	.type	bitmap_set_bit, @function
bitmap_set_bit:
.LFB11:
	.loc 1 363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# head, head
	movl	%esi, -44(%rbp)	# bit, bit
	.loc 1 364 0
	movl	-44(%rbp), %edx	# bit, bit.12
	movq	-40(%rbp), %rax	# head, tmp68
	movl	%edx, %esi	# bit.12,
	movq	%rax, %rdi	# tmp68,
	call	bitmap_find_bit	#
	movq	%rax, -16(%rbp)	# tmp69, ptr
	.loc 1 366 0
	movl	-44(%rbp), %eax	# bit, bit.13
	shrl	$6, %eax	#, D.9530
	.loc 1 365 0
	andl	$1, %eax	#, tmp70
	movl	%eax, -24(%rbp)	# tmp70, word_num
	.loc 1 367 0
	movl	-44(%rbp), %eax	# bit, bit.14
	andl	$63, %eax	#, tmp71
	movl	%eax, -20(%rbp)	# tmp71, bit_num
	.loc 1 368 0
	movl	-20(%rbp), %eax	# bit_num, bit_num.15
	movl	$1, %edx	#, tmp72
	movl	%eax, %ecx	# bit_num.15, tmp89
	salq	%cl, %rdx	# tmp89, tmp73
	movq	%rdx, %rax	# tmp73, tmp73
	movq	%rax, -8(%rbp)	# tmp73, bit_val
	.loc 1 370 0
	cmpq	$0, -16(%rbp)	#, ptr
	jne	.L56	#,
	.loc 1 372 0
	call	bitmap_element_allocate	#
	movq	%rax, -16(%rbp)	# tmp74, ptr
	.loc 1 373 0
	movl	-44(%rbp), %eax	# bit, bit.16
	shrl	$7, %eax	#, D.9530
	movl	%eax, %edx	# D.9530, D.9530
	movq	-16(%rbp), %rax	# ptr, tmp75
	movl	%edx, 16(%rax)	# D.9530, ptr_12->indx
	.loc 1 374 0
	movq	-16(%rbp), %rax	# ptr, tmp76
	movl	-24(%rbp), %edx	# word_num, tmp77
	leaq	2(%rdx), %rcx	#, tmp78
	movq	-8(%rbp), %rdx	# bit_val, tmp79
	movq	%rdx, 8(%rax,%rcx,8)	# tmp79, ptr_12->bits
	.loc 1 375 0
	movq	-16(%rbp), %rdx	# ptr, tmp80
	movq	-40(%rbp), %rax	# head, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	bitmap_element_link	#
	jmp	.L55	#
.L56:
	.loc 1 378 0
	movq	-16(%rbp), %rax	# ptr, tmp82
	movl	-24(%rbp), %edx	# word_num, tmp83
	addq	$2, %rdx	#, tmp84
	movq	8(%rax,%rdx,8), %rax	# ptr_4->bits, D.9531
	orq	-8(%rbp), %rax	# bit_val, D.9531
	movq	%rax, %rdx	# D.9531, D.9531
	movq	-16(%rbp), %rax	# ptr, tmp85
	movl	-24(%rbp), %ecx	# word_num, tmp86
	addq	$2, %rcx	#, tmp87
	movq	%rdx, 8(%rax,%rcx,8)	# D.9531, ptr_4->bits
.L55:
	.loc 1 379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	bitmap_set_bit, .-bitmap_set_bit
	.globl	bitmap_bit_p
	.type	bitmap_bit_p, @function
bitmap_bit_p:
.LFB12:
	.loc 1 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# head, head
	movl	%esi, -28(%rbp)	# bit, bit
	.loc 1 392 0
	movl	-28(%rbp), %edx	# bit, bit.17
	movq	-24(%rbp), %rax	# head, tmp69
	movl	%edx, %esi	# bit.17,
	movq	%rax, %rdi	# tmp69,
	call	bitmap_find_bit	#
	movq	%rax, -8(%rbp)	# tmp70, ptr
	.loc 1 393 0
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L59	#,
	.loc 1 394 0
	movl	$0, %eax	#, D.9532
	jmp	.L60	#
.L59:
	.loc 1 396 0
	movl	-28(%rbp), %eax	# bit, bit.18
	andl	$63, %eax	#, tmp71
	movl	%eax, -16(%rbp)	# tmp71, bit_num
	.loc 1 398 0
	movl	-28(%rbp), %eax	# bit, bit.19
	shrl	$6, %eax	#, D.9533
	andl	$1, %eax	#, tmp72
	movl	%eax, -12(%rbp)	# tmp72, word_num
	.loc 1 400 0
	movq	-8(%rbp), %rax	# ptr, tmp73
	movl	-12(%rbp), %edx	# word_num, tmp74
	addq	$2, %rdx	#, tmp75
	movq	8(%rax,%rdx,8), %rdx	# ptr_5->bits, D.9534
	movl	-16(%rbp), %eax	# bit_num, bit_num.20
	movl	%eax, %ecx	# bit_num.20, tmp78
	shrq	%cl, %rdx	# tmp78, D.9534
	movq	%rdx, %rax	# D.9534, D.9534
	andl	$1, %eax	#, D.9532
.L60:
	.loc 1 401 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	bitmap_bit_p, .-bitmap_bit_p
	.globl	bitmap_first_set_bit
	.type	bitmap_first_set_bit, @function
bitmap_first_set_bit:
.LFB13:
	.loc 1 409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# a, a
	.loc 1 410 0
	movq	-40(%rbp), %rax	# a, tmp73
	movq	(%rax), %rax	# a_13(D)->first, tmp74
	movq	%rax, -8(%rbp)	# tmp74, ptr
	.loc 1 414 0
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L62	#,
	.loc 1 415 0
	movl	$-1, %eax	#, D.9535
	jmp	.L63	#
.L62:
	.loc 1 418 0
	movl	$0, -24(%rbp)	#, word_num
	movq	-8(%rbp), %rax	# ptr, tmp75
	movq	24(%rax), %rax	# ptr_14->bits, tmp76
	movq	%rax, -16(%rbp)	# tmp76, word
	.loc 1 419 0
	cmpq	$0, -16(%rbp)	#, word
	jne	.L64	#,
	.loc 1 420 0
	movl	$1, -24(%rbp)	#, word_num
	movq	-8(%rbp), %rax	# ptr, tmp77
	movq	32(%rax), %rax	# ptr_14->bits, tmp78
	movq	%rax, -16(%rbp)	# tmp78, word
.L64:
	.loc 1 430 0
	movl	$0, -20(%rbp)	#, bit_num
	.loc 1 431 0
	movq	-16(%rbp), %rax	# word, tmp79
	negq	%rax	# D.9536
	andq	%rax, -16(%rbp)	# D.9536, word
	.loc 1 437 0
	movq	-16(%rbp), %rax	# word, tmp80
	movl	%eax, %eax	# tmp80, D.9536
	testq	%rax, %rax	# D.9536
	jne	.L65	#,
	.loc 1 438 0
	shrq	$32, -16(%rbp)	#, word
	addl	$32, -20(%rbp)	#, bit_num
.L65:
	.loc 1 440 0
	movq	-16(%rbp), %rax	# word, tmp81
	movzwl	%ax, %eax	# tmp81, D.9536
	testq	%rax, %rax	# D.9536
	jne	.L66	#,
	.loc 1 441 0
	shrq	$16, -16(%rbp)	#, word
	addl	$16, -20(%rbp)	#, bit_num
.L66:
	.loc 1 442 0
	movq	-16(%rbp), %rax	# word, tmp82
	movzbl	%al, %eax	# tmp82, D.9536
	testq	%rax, %rax	# D.9536
	jne	.L67	#,
	.loc 1 443 0
	shrq	$8, -16(%rbp)	#, word
	addl	$8, -20(%rbp)	#, bit_num
.L67:
	.loc 1 444 0
	movq	-16(%rbp), %rax	# word, tmp83
	andl	$240, %eax	#, D.9536
	testq	%rax, %rax	# D.9536
	je	.L68	#,
	.loc 1 445 0
	addl	$4, -20(%rbp)	#, bit_num
.L68:
	.loc 1 446 0
	movq	-16(%rbp), %rax	# word, tmp84
	andl	$204, %eax	#, D.9536
	testq	%rax, %rax	# D.9536
	je	.L69	#,
	.loc 1 447 0
	addl	$2, -20(%rbp)	#, bit_num
.L69:
	.loc 1 448 0
	movq	-16(%rbp), %rax	# word, tmp85
	andl	$170, %eax	#, D.9536
	testq	%rax, %rax	# D.9536
	je	.L70	#,
	.loc 1 449 0
	addl	$1, -20(%rbp)	#, bit_num
.L70:
	.loc 1 451 0
	movq	-8(%rbp), %rax	# ptr, tmp86
	movl	16(%rax), %eax	# ptr_14->indx, D.9537
	.loc 1 452 0
	leal	(%rax,%rax), %edx	#, D.9537
	movl	-24(%rbp), %eax	# word_num, tmp87
	addl	%edx, %eax	# D.9537, D.9537
	sall	$6, %eax	#, D.9537
	movl	%eax, %edx	# D.9537, D.9537
	.loc 1 453 0
	movl	-20(%rbp), %eax	# bit_num, tmp88
	addl	%edx, %eax	# D.9537, D.9537
.L63:
	.loc 1 454 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	bitmap_first_set_bit, .-bitmap_first_set_bit
	.globl	bitmap_last_set_bit
	.type	bitmap_last_set_bit, @function
bitmap_last_set_bit:
.LFB14:
	.loc 1 462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# a, a
	.loc 1 463 0
	movq	-40(%rbp), %rax	# a, tmp73
	movq	(%rax), %rax	# a_16(D)->first, tmp74
	movq	%rax, -16(%rbp)	# tmp74, ptr
	.loc 1 467 0
	cmpq	$0, -16(%rbp)	#, ptr
	jne	.L72	#,
	.loc 1 468 0
	movl	$-1, %eax	#, D.9538
	jmp	.L73	#
.L72:
	.loc 1 470 0
	jmp	.L74	#
.L75:
	.loc 1 471 0
	movq	-16(%rbp), %rax	# ptr, tmp75
	movq	(%rax), %rax	# ptr_1->next, tmp76
	movq	%rax, -16(%rbp)	# tmp76, ptr
.L74:
	.loc 1 470 0 discriminator 1
	movq	-16(%rbp), %rax	# ptr, tmp77
	movq	(%rax), %rax	# ptr_1->next, D.9539
	testq	%rax, %rax	# D.9539
	jne	.L75	#,
	.loc 1 474 0
	movl	$1, -24(%rbp)	#, word_num
	movq	-16(%rbp), %rax	# ptr, tmp78
	movq	32(%rax), %rax	# ptr_1->bits, tmp79
	movq	%rax, -8(%rbp)	# tmp79, word
	.loc 1 475 0
	cmpq	$0, -8(%rbp)	#, word
	jne	.L76	#,
	.loc 1 476 0
	movl	$0, -24(%rbp)	#, word_num
	movq	-16(%rbp), %rax	# ptr, tmp80
	movq	24(%rax), %rax	# ptr_1->bits, tmp81
	movq	%rax, -8(%rbp)	# tmp81, word
.L76:
	.loc 1 485 0
	movl	$0, -20(%rbp)	#, bit_num
	.loc 1 490 0
	movabsq	$-4294967296, %rax	#, tmp82
	andq	-8(%rbp), %rax	# word, D.9540
	testq	%rax, %rax	# D.9540
	je	.L77	#,
	.loc 1 491 0
	shrq	$32, -8(%rbp)	#, word
	addl	$32, -20(%rbp)	#, bit_num
.L77:
	.loc 1 493 0
	movq	-8(%rbp), %rax	# word, tmp83
	andl	$4294901760, %eax	#, D.9540
	testq	%rax, %rax	# D.9540
	je	.L78	#,
	.loc 1 494 0
	shrq	$16, -8(%rbp)	#, word
	addl	$16, -20(%rbp)	#, bit_num
.L78:
	.loc 1 495 0
	movq	-8(%rbp), %rax	# word, tmp84
	andl	$65280, %eax	#, D.9540
	testq	%rax, %rax	# D.9540
	je	.L79	#,
	.loc 1 496 0
	shrq	$8, -8(%rbp)	#, word
	addl	$8, -20(%rbp)	#, bit_num
.L79:
	.loc 1 497 0
	movq	-8(%rbp), %rax	# word, tmp85
	andl	$240, %eax	#, D.9540
	testq	%rax, %rax	# D.9540
	je	.L80	#,
	.loc 1 498 0
	shrq	$4, -8(%rbp)	#, word
	addl	$4, -20(%rbp)	#, bit_num
.L80:
	.loc 1 499 0
	movq	-8(%rbp), %rax	# word, tmp86
	andl	$12, %eax	#, D.9540
	testq	%rax, %rax	# D.9540
	je	.L81	#,
	.loc 1 500 0
	shrq	$2, -8(%rbp)	#, word
	addl	$2, -20(%rbp)	#, bit_num
.L81:
	.loc 1 501 0
	movq	-8(%rbp), %rax	# word, tmp87
	andl	$2, %eax	#, D.9540
	testq	%rax, %rax	# D.9540
	je	.L82	#,
	.loc 1 502 0
	addl	$1, -20(%rbp)	#, bit_num
.L82:
	.loc 1 504 0
	movq	-16(%rbp), %rax	# ptr, tmp88
	movl	16(%rax), %eax	# ptr_1->indx, D.9541
	.loc 1 505 0
	leal	(%rax,%rax), %edx	#, D.9541
	movl	-24(%rbp), %eax	# word_num, tmp89
	addl	%edx, %eax	# D.9541, D.9541
	sall	$6, %eax	#, D.9541
	movl	%eax, %edx	# D.9541, D.9541
	.loc 1 506 0
	movl	-20(%rbp), %eax	# bit_num, tmp90
	addl	%edx, %eax	# D.9541, D.9541
.L73:
	.loc 1 507 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	bitmap_last_set_bit, .-bitmap_last_set_bit
	.section	.rodata
.LC0:
	.string	"bitmap.c"
	.text
	.globl	bitmap_operation
	.type	bitmap_operation, @function
bitmap_operation:
.LFB15:
	.loc 1 518 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$336, %rsp	#,
	movq	%rdi, -312(%rbp)	# to, to
	movq	%rsi, -320(%rbp)	# from1, from1
	movq	%rdx, -328(%rbp)	# from2, from2
	movl	%ecx, -332(%rbp)	# operation, operation
	.loc 1 521 0
	movq	-320(%rbp), %rax	# from1, tmp109
	movq	(%rax), %rax	# from1_27(D)->first, tmp110
	movq	%rax, -288(%rbp)	# tmp110, from1_ptr
	.loc 1 522 0
	movq	-328(%rbp), %rax	# from2, tmp111
	movq	(%rax), %rax	# from2_29(D)->first, tmp112
	movq	%rax, -280(%rbp)	# tmp112, from2_ptr
	.loc 1 523 0
	cmpq	$0, -288(%rbp)	#, from1_ptr
	je	.L84	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# from1_ptr, tmp113
	movl	16(%rax), %eax	# from1_ptr_28->indx, iftmp.21
	jmp	.L85	#
.L84:
	.loc 1 523 0 discriminator 2
	movl	$-1, %eax	#, iftmp.21
.L85:
	.loc 1 523 0 discriminator 3
	movl	%eax, -304(%rbp)	# iftmp.21, indx1
	.loc 1 524 0 is_stmt 1 discriminator 3
	cmpq	$0, -280(%rbp)	#, from2_ptr
	je	.L86	#,
	.loc 1 524 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# from2_ptr, tmp114
	movl	16(%rax), %eax	# from2_ptr_30->indx, iftmp.22
	jmp	.L87	#
.L86:
	.loc 1 524 0 discriminator 2
	movl	$-1, %eax	#, iftmp.22
.L87:
	.loc 1 524 0 discriminator 3
	movl	%eax, -300(%rbp)	# iftmp.22, indx2
	.loc 1 525 0 is_stmt 1 discriminator 3
	movq	-312(%rbp), %rax	# to, tmp115
	movq	(%rax), %rax	# to_37(D)->first, tmp116
	movq	%rax, -272(%rbp)	# tmp116, to_ptr
	.loc 1 530 0 discriminator 3
	movl	$0, -292(%rbp)	#, changed
	.loc 1 563 0 discriminator 3
	movq	-312(%rbp), %rax	# to, tmp117
	movq	$0, 8(%rax)	#, to_37(D)->current
	movq	-312(%rbp), %rax	# to, tmp118
	movq	8(%rax), %rdx	# to_37(D)->current, D.9542
	movq	-312(%rbp), %rax	# to, tmp119
	movq	%rdx, (%rax)	# D.9542, to_37(D)->first
	.loc 1 565 0 discriminator 3
	jmp	.L88	#
.L114:
	.loc 1 569 0
	movl	-304(%rbp), %eax	# indx1, tmp120
	cmpl	-300(%rbp), %eax	# indx2, tmp120
	jne	.L89	#,
	.loc 1 571 0
	movl	-304(%rbp), %eax	# indx1, tmp121
	movl	%eax, -296(%rbp)	# tmp121, indx
	.loc 1 572 0
	movq	-288(%rbp), %rax	# from1_ptr, tmp122
	movq	%rax, -264(%rbp)	# tmp122, from1_tmp
	.loc 1 573 0
	movq	-280(%rbp), %rax	# from2_ptr, tmp123
	movq	%rax, -256(%rbp)	# tmp123, from2_tmp
	.loc 1 574 0
	movq	-288(%rbp), %rax	# from1_ptr, tmp124
	movq	(%rax), %rax	# from1_ptr_2->next, tmp125
	movq	%rax, -288(%rbp)	# tmp125, from1_ptr
	.loc 1 575 0
	cmpq	$0, -288(%rbp)	#, from1_ptr
	je	.L90	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# from1_ptr, tmp126
	movl	16(%rax), %eax	# from1_ptr_50->indx, iftmp.23
	jmp	.L91	#
.L90:
	.loc 1 575 0 discriminator 2
	movl	$-1, %eax	#, iftmp.23
.L91:
	.loc 1 575 0 discriminator 3
	movl	%eax, -304(%rbp)	# iftmp.23, indx1
	.loc 1 576 0 is_stmt 1 discriminator 3
	movq	-280(%rbp), %rax	# from2_ptr, tmp127
	movq	(%rax), %rax	# from2_ptr_4->next, tmp128
	movq	%rax, -280(%rbp)	# tmp128, from2_ptr
	.loc 1 577 0 discriminator 3
	cmpq	$0, -280(%rbp)	#, from2_ptr
	je	.L92	#,
	.loc 1 577 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# from2_ptr, tmp129
	movl	16(%rax), %eax	# from2_ptr_54->indx, iftmp.24
	jmp	.L93	#
.L92:
	.loc 1 577 0 discriminator 2
	movl	$-1, %eax	#, iftmp.24
.L93:
	.loc 1 577 0 discriminator 1
	movl	%eax, -300(%rbp)	# iftmp.24, indx2
	jmp	.L94	#
.L89:
	.loc 1 579 0 is_stmt 1
	movl	-304(%rbp), %eax	# indx1, tmp130
	cmpl	-300(%rbp), %eax	# indx2, tmp130
	jae	.L95	#,
	.loc 1 581 0
	movl	-304(%rbp), %eax	# indx1, tmp131
	movl	%eax, -296(%rbp)	# tmp131, indx
	.loc 1 582 0
	movq	-288(%rbp), %rax	# from1_ptr, tmp132
	movq	%rax, -264(%rbp)	# tmp132, from1_tmp
	.loc 1 583 0
	movq	$bitmap_zero_bits, -256(%rbp)	#, from2_tmp
	.loc 1 584 0
	movq	-288(%rbp), %rax	# from1_ptr, tmp133
	movq	(%rax), %rax	# from1_ptr_2->next, tmp134
	movq	%rax, -288(%rbp)	# tmp134, from1_ptr
	.loc 1 585 0
	cmpq	$0, -288(%rbp)	#, from1_ptr
	je	.L96	#,
	.loc 1 585 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# from1_ptr, tmp135
	movl	16(%rax), %eax	# from1_ptr_61->indx, iftmp.25
	jmp	.L97	#
.L96:
	.loc 1 585 0 discriminator 2
	movl	$-1, %eax	#, iftmp.25
.L97:
	movl	%eax, -304(%rbp)	# iftmp.25, indx1
	jmp	.L94	#
.L95:
	.loc 1 589 0 is_stmt 1
	movl	-300(%rbp), %eax	# indx2, tmp136
	movl	%eax, -296(%rbp)	# tmp136, indx
	.loc 1 590 0
	movq	$bitmap_zero_bits, -264(%rbp)	#, from1_tmp
	.loc 1 591 0
	movq	-280(%rbp), %rax	# from2_ptr, tmp137
	movq	%rax, -256(%rbp)	# tmp137, from2_tmp
	.loc 1 592 0
	movq	-280(%rbp), %rax	# from2_ptr, tmp138
	movq	(%rax), %rax	# from2_ptr_4->next, tmp139
	movq	%rax, -280(%rbp)	# tmp139, from2_ptr
	.loc 1 593 0
	cmpq	$0, -280(%rbp)	#, from2_ptr
	je	.L98	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# from2_ptr, tmp140
	movl	16(%rax), %eax	# from2_ptr_68->indx, iftmp.26
	jmp	.L99	#
.L98:
	.loc 1 593 0 discriminator 2
	movl	$-1, %eax	#, iftmp.26
.L99:
	.loc 1 593 0 discriminator 3
	movl	%eax, -300(%rbp)	# iftmp.26, indx2
	.loc 1 598 0 is_stmt 1 discriminator 3
	jmp	.L100	#
.L94:
	.loc 1 598 0 is_stmt 0
	jmp	.L100	#
.L102:
	.loc 1 600 0 is_stmt 1
	movl	$1, -292(%rbp)	#, changed
	.loc 1 601 0
	movq	-272(%rbp), %rax	# to_ptr, tmp141
	movq	%rax, -248(%rbp)	# tmp141, to_tmp
	.loc 1 602 0
	movq	-272(%rbp), %rax	# to_ptr, tmp142
	movq	(%rax), %rax	# to_ptr_9->next, tmp143
	movq	%rax, -272(%rbp)	# tmp143, to_ptr
	.loc 1 603 0
	movq	bitmap_free(%rip), %rdx	# bitmap_free, bitmap_free.27
	movq	-248(%rbp), %rax	# to_tmp, tmp144
	movq	%rdx, (%rax)	# bitmap_free.27, to_tmp_74->next
	.loc 1 604 0
	movq	-248(%rbp), %rax	# to_tmp, tmp145
	movq	%rax, bitmap_free(%rip)	# tmp145, bitmap_free
.L100:
	.loc 1 598 0 discriminator 1
	cmpq	$0, -272(%rbp)	#, to_ptr
	je	.L101	#,
	.loc 1 598 0 is_stmt 0 discriminator 2
	movq	-272(%rbp), %rax	# to_ptr, tmp146
	movl	16(%rax), %eax	# to_ptr_9->indx, D.9545
	cmpl	-296(%rbp), %eax	# indx, D.9545
	jb	.L102	#,
.L101:
	.loc 1 606 0 is_stmt 1
	cmpq	$0, -272(%rbp)	#, to_ptr
	je	.L103	#,
	.loc 1 606 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# to_ptr, tmp147
	movl	16(%rax), %eax	# to_ptr_9->indx, D.9545
	cmpl	-296(%rbp), %eax	# indx, D.9545
	jne	.L103	#,
	.loc 1 608 0 is_stmt 1
	movq	-272(%rbp), %rax	# to_ptr, tmp148
	movq	%rax, -248(%rbp)	# tmp148, to_tmp
	.loc 1 609 0
	movq	-272(%rbp), %rax	# to_ptr, tmp149
	movq	(%rax), %rax	# to_ptr_9->next, tmp150
	movq	%rax, -272(%rbp)	# tmp150, to_ptr
	jmp	.L104	#
.L103:
	.loc 1 612 0
	call	bitmap_element_allocate	#
	movq	%rax, -248(%rbp)	# tmp151, to_tmp
.L104:
	.loc 1 616 0
	cmpl	$4, -332(%rbp)	#, operation
	ja	.L105	#,
	movl	-332(%rbp), %eax	# operation, tmp152
	movq	.L107(,%rax,8), %rax	#, tmp153
	jmp	*%rax	# tmp153
	.section	.rodata
	.align 8
	.align 4
.L107:
	.quad	.L106
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.text
.L105:
	.loc 1 619 0
	movl	$__FUNCTION__.8973, %edx	#,
	movl	$619, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L106:
.LBB8:
	.loc 1 622 0
	movq	-264(%rbp), %rax	# from1_tmp, tmp154
	movq	24(%rax), %rax	# from1_tmp_12->bits, tmp155
	movq	%rax, -240(%rbp)	# tmp155, f10
	movq	-256(%rbp), %rax	# from2_tmp, tmp156
	movq	24(%rax), %rax	# from2_tmp_13->bits, tmp157
	movq	%rax, -232(%rbp)	# tmp157, f20
	movq	-232(%rbp), %rax	# f20, tmp162
	movq	-240(%rbp), %rdx	# f10, tmp163
	andq	%rdx, %rax	# tmp163, tmp161
	movq	%rax, -224(%rbp)	# tmp161, t0
	movq	-248(%rbp), %rax	# to_tmp, tmp164
	movq	24(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-224(%rbp), %rax	# t0, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-264(%rbp), %rax	# from1_tmp, tmp165
	movq	32(%rax), %rax	# from1_tmp_12->bits, tmp166
	movq	%rax, -216(%rbp)	# tmp166, f11
	movq	-256(%rbp), %rax	# from2_tmp, tmp167
	movq	32(%rax), %rax	# from2_tmp_13->bits, tmp168
	movq	%rax, -208(%rbp)	# tmp168, f21
	movq	-208(%rbp), %rax	# f21, tmp173
	movq	-216(%rbp), %rdx	# f11, tmp174
	andq	%rdx, %rax	# tmp174, tmp172
	movq	%rax, -200(%rbp)	# tmp172, t1
	movq	-248(%rbp), %rax	# to_tmp, tmp175
	movq	32(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-200(%rbp), %rax	# t1, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-248(%rbp), %rax	# to_tmp, tmp176
	movq	-224(%rbp), %rdx	# t0, tmp177
	movq	%rdx, 24(%rax)	# tmp177, to_tmp_14->bits
	movq	-248(%rbp), %rax	# to_tmp, tmp178
	movq	-200(%rbp), %rdx	# t1, tmp179
	movq	%rdx, 32(%rax)	# tmp179, to_tmp_14->bits
.LBE8:
	.loc 1 623 0
	jmp	.L112	#
.L108:
.LBB9:
	.loc 1 626 0
	movq	-264(%rbp), %rax	# from1_tmp, tmp180
	movq	24(%rax), %rax	# from1_tmp_12->bits, tmp181
	movq	%rax, -192(%rbp)	# tmp181, f10
	movq	-256(%rbp), %rax	# from2_tmp, tmp182
	movq	24(%rax), %rax	# from2_tmp_13->bits, tmp183
	movq	%rax, -184(%rbp)	# tmp183, f20
	movq	-184(%rbp), %rax	# f20, tmp184
	notq	%rax	# D.9546
	andq	-192(%rbp), %rax	# f10, tmp186
	movq	%rax, -176(%rbp)	# tmp186, t0
	movq	-248(%rbp), %rax	# to_tmp, tmp187
	movq	24(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-176(%rbp), %rax	# t0, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-264(%rbp), %rax	# from1_tmp, tmp188
	movq	32(%rax), %rax	# from1_tmp_12->bits, tmp189
	movq	%rax, -168(%rbp)	# tmp189, f11
	movq	-256(%rbp), %rax	# from2_tmp, tmp190
	movq	32(%rax), %rax	# from2_tmp_13->bits, tmp191
	movq	%rax, -160(%rbp)	# tmp191, f21
	movq	-160(%rbp), %rax	# f21, tmp192
	notq	%rax	# D.9546
	andq	-168(%rbp), %rax	# f11, tmp194
	movq	%rax, -152(%rbp)	# tmp194, t1
	movq	-248(%rbp), %rax	# to_tmp, tmp195
	movq	32(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-152(%rbp), %rax	# t1, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-248(%rbp), %rax	# to_tmp, tmp196
	movq	-176(%rbp), %rdx	# t0, tmp197
	movq	%rdx, 24(%rax)	# tmp197, to_tmp_14->bits
	movq	-248(%rbp), %rax	# to_tmp, tmp198
	movq	-152(%rbp), %rdx	# t1, tmp199
	movq	%rdx, 32(%rax)	# tmp199, to_tmp_14->bits
.LBE9:
	.loc 1 627 0
	jmp	.L112	#
.L109:
.LBB10:
	.loc 1 630 0
	movq	-264(%rbp), %rax	# from1_tmp, tmp200
	movq	24(%rax), %rax	# from1_tmp_12->bits, tmp201
	movq	%rax, -144(%rbp)	# tmp201, f10
	movq	-256(%rbp), %rax	# from2_tmp, tmp202
	movq	24(%rax), %rax	# from2_tmp_13->bits, tmp203
	movq	%rax, -136(%rbp)	# tmp203, f20
	movq	-136(%rbp), %rax	# f20, tmp208
	movq	-144(%rbp), %rdx	# f10, tmp209
	orq	%rdx, %rax	# tmp209, tmp207
	movq	%rax, -128(%rbp)	# tmp207, t0
	movq	-248(%rbp), %rax	# to_tmp, tmp210
	movq	24(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-128(%rbp), %rax	# t0, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-264(%rbp), %rax	# from1_tmp, tmp211
	movq	32(%rax), %rax	# from1_tmp_12->bits, tmp212
	movq	%rax, -120(%rbp)	# tmp212, f11
	movq	-256(%rbp), %rax	# from2_tmp, tmp213
	movq	32(%rax), %rax	# from2_tmp_13->bits, tmp214
	movq	%rax, -112(%rbp)	# tmp214, f21
	movq	-112(%rbp), %rax	# f21, tmp219
	movq	-120(%rbp), %rdx	# f11, tmp220
	orq	%rdx, %rax	# tmp220, tmp218
	movq	%rax, -104(%rbp)	# tmp218, t1
	movq	-248(%rbp), %rax	# to_tmp, tmp221
	movq	32(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-104(%rbp), %rax	# t1, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-248(%rbp), %rax	# to_tmp, tmp222
	movq	-128(%rbp), %rdx	# t0, tmp223
	movq	%rdx, 24(%rax)	# tmp223, to_tmp_14->bits
	movq	-248(%rbp), %rax	# to_tmp, tmp224
	movq	-104(%rbp), %rdx	# t1, tmp225
	movq	%rdx, 32(%rax)	# tmp225, to_tmp_14->bits
.LBE10:
	.loc 1 631 0
	jmp	.L112	#
.L111:
.LBB11:
	.loc 1 633 0
	movq	-264(%rbp), %rax	# from1_tmp, tmp226
	movq	24(%rax), %rax	# from1_tmp_12->bits, tmp227
	movq	%rax, -96(%rbp)	# tmp227, f10
	movq	-256(%rbp), %rax	# from2_tmp, tmp228
	movq	24(%rax), %rax	# from2_tmp_13->bits, tmp229
	movq	%rax, -88(%rbp)	# tmp229, f20
	movq	-88(%rbp), %rax	# f20, tmp230
	notq	%rax	# D.9546
	orq	-96(%rbp), %rax	# f10, tmp232
	movq	%rax, -80(%rbp)	# tmp232, t0
	movq	-248(%rbp), %rax	# to_tmp, tmp233
	movq	24(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-80(%rbp), %rax	# t0, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-264(%rbp), %rax	# from1_tmp, tmp234
	movq	32(%rax), %rax	# from1_tmp_12->bits, tmp235
	movq	%rax, -72(%rbp)	# tmp235, f11
	movq	-256(%rbp), %rax	# from2_tmp, tmp236
	movq	32(%rax), %rax	# from2_tmp_13->bits, tmp237
	movq	%rax, -64(%rbp)	# tmp237, f21
	movq	-64(%rbp), %rax	# f21, tmp238
	notq	%rax	# D.9546
	orq	-72(%rbp), %rax	# f11, tmp240
	movq	%rax, -56(%rbp)	# tmp240, t1
	movq	-248(%rbp), %rax	# to_tmp, tmp241
	movq	32(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-56(%rbp), %rax	# t1, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-248(%rbp), %rax	# to_tmp, tmp242
	movq	-80(%rbp), %rdx	# t0, tmp243
	movq	%rdx, 24(%rax)	# tmp243, to_tmp_14->bits
	movq	-248(%rbp), %rax	# to_tmp, tmp244
	movq	-56(%rbp), %rdx	# t1, tmp245
	movq	%rdx, 32(%rax)	# tmp245, to_tmp_14->bits
.LBE11:
	.loc 1 634 0
	jmp	.L112	#
.L110:
.LBB12:
	.loc 1 636 0
	movq	-264(%rbp), %rax	# from1_tmp, tmp246
	movq	24(%rax), %rax	# from1_tmp_12->bits, tmp247
	movq	%rax, -48(%rbp)	# tmp247, f10
	movq	-256(%rbp), %rax	# from2_tmp, tmp248
	movq	24(%rax), %rax	# from2_tmp_13->bits, tmp249
	movq	%rax, -40(%rbp)	# tmp249, f20
	movq	-40(%rbp), %rax	# f20, tmp254
	movq	-48(%rbp), %rdx	# f10, tmp255
	xorq	%rdx, %rax	# tmp255, tmp253
	movq	%rax, -32(%rbp)	# tmp253, t0
	movq	-248(%rbp), %rax	# to_tmp, tmp256
	movq	24(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-32(%rbp), %rax	# t0, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-264(%rbp), %rax	# from1_tmp, tmp257
	movq	32(%rax), %rax	# from1_tmp_12->bits, tmp258
	movq	%rax, -24(%rbp)	# tmp258, f11
	movq	-256(%rbp), %rax	# from2_tmp, tmp259
	movq	32(%rax), %rax	# from2_tmp_13->bits, tmp260
	movq	%rax, -16(%rbp)	# tmp260, f21
	movq	-16(%rbp), %rax	# f21, tmp265
	movq	-24(%rbp), %rdx	# f11, tmp266
	xorq	%rdx, %rax	# tmp266, tmp264
	movq	%rax, -8(%rbp)	# tmp264, t1
	movq	-248(%rbp), %rax	# to_tmp, tmp267
	movq	32(%rax), %rax	# to_tmp_14->bits, D.9546
	cmpq	-8(%rbp), %rax	# t1, D.9546
	setne	%al	#, D.9547
	movzbl	%al, %eax	# D.9547, D.9544
	orl	%eax, -292(%rbp)	# D.9544, changed
	movq	-248(%rbp), %rax	# to_tmp, tmp268
	movq	-32(%rbp), %rdx	# t0, tmp269
	movq	%rdx, 24(%rax)	# tmp269, to_tmp_14->bits
	movq	-248(%rbp), %rax	# to_tmp, tmp270
	movq	-8(%rbp), %rdx	# t1, tmp271
	movq	%rdx, 32(%rax)	# tmp271, to_tmp_14->bits
.LBE12:
	.loc 1 637 0
	nop
.L112:
	.loc 1 640 0
	movq	-248(%rbp), %rax	# to_tmp, tmp272
	movq	%rax, %rdi	# tmp272,
	call	bitmap_element_zerop	#
	testl	%eax, %eax	# D.9544
	jne	.L113	#,
	.loc 1 642 0
	movq	-248(%rbp), %rax	# to_tmp, tmp273
	movl	-296(%rbp), %edx	# indx, tmp274
	movl	%edx, 16(%rax)	# tmp274, to_tmp_14->indx
	.loc 1 643 0
	movq	-248(%rbp), %rdx	# to_tmp, tmp275
	movq	-312(%rbp), %rax	# to, tmp276
	movq	%rdx, %rsi	# tmp275,
	movq	%rax, %rdi	# tmp276,
	call	bitmap_element_link	#
	jmp	.L88	#
.L113:
	.loc 1 647 0
	movq	bitmap_free(%rip), %rdx	# bitmap_free, bitmap_free.28
	movq	-248(%rbp), %rax	# to_tmp, tmp277
	movq	%rdx, (%rax)	# bitmap_free.28, to_tmp_14->next
	.loc 1 648 0
	movq	-248(%rbp), %rax	# to_tmp, tmp278
	movq	%rax, bitmap_free(%rip)	# tmp278, bitmap_free
.L88:
	.loc 1 565 0 discriminator 1
	cmpq	$0, -288(%rbp)	#, from1_ptr
	jne	.L114	#,
	.loc 1 565 0 is_stmt 0 discriminator 2
	cmpq	$0, -280(%rbp)	#, from2_ptr
	jne	.L114	#,
	.loc 1 653 0 is_stmt 1
	cmpq	$0, -272(%rbp)	#, to_ptr
	je	.L115	#,
	.loc 1 655 0
	movl	$1, -292(%rbp)	#, changed
	.loc 1 656 0
	movq	-272(%rbp), %rax	# to_ptr, tmp279
	movq	%rax, -248(%rbp)	# tmp279, to_tmp
	jmp	.L116	#
.L117:
	movq	-248(%rbp), %rax	# to_tmp, tmp280
	movq	(%rax), %rax	# to_tmp_15->next, tmp281
	movq	%rax, -248(%rbp)	# tmp281, to_tmp
.L116:
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# to_tmp, tmp282
	movq	(%rax), %rax	# to_tmp_15->next, D.9543
	testq	%rax, %rax	# D.9543
	jne	.L117	#,
	.loc 1 658 0 is_stmt 1
	movq	bitmap_free(%rip), %rdx	# bitmap_free, bitmap_free.29
	movq	-248(%rbp), %rax	# to_tmp, tmp283
	movq	%rdx, (%rax)	# bitmap_free.29, to_tmp_15->next
	.loc 1 659 0
	movq	-272(%rbp), %rax	# to_ptr, tmp284
	movq	%rax, bitmap_free(%rip)	# tmp284, bitmap_free
.L115:
	.loc 1 664 0
	movl	-292(%rbp), %eax	# changed, D.9544
	.loc 1 665 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	bitmap_operation, .-bitmap_operation
	.globl	bitmap_equal_p
	.type	bitmap_equal_p, @function
bitmap_equal_p:
.LFB16:
	.loc 1 673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# a, a
	movq	%rsi, -64(%rbp)	# b, b
	.loc 1 677 0
	movq	$0, -24(%rbp)	#, c.current
	movq	-24(%rbp), %rax	# c.current, D.9549
	movq	%rax, -32(%rbp)	# D.9549, c.first
	.loc 1 678 0
	movq	-64(%rbp), %rdx	# b, tmp64
	movq	-56(%rbp), %rsi	# a, tmp65
	leaq	-32(%rbp), %rax	#, tmp66
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp66,
	call	bitmap_operation	#
	testl	%eax, %eax	# D.9550
	sete	%al	#, D.9551
	movzbl	%al, %eax	# D.9551, tmp67
	movl	%eax, -36(%rbp)	# tmp67, ret
	.loc 1 679 0
	leaq	-32(%rbp), %rax	#, tmp68
	movq	%rax, %rdi	# tmp68,
	call	bitmap_clear	#
	.loc 1 681 0
	movl	-36(%rbp), %eax	# ret, D.9550
	.loc 1 682 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	bitmap_equal_p, .-bitmap_equal_p
	.globl	bitmap_ior_and_compl
	.type	bitmap_ior_and_compl, @function
bitmap_ior_and_compl:
.LFB17:
	.loc 1 692 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# to, to
	movq	%rsi, -48(%rbp)	# from1, from1
	movq	%rdx, -56(%rbp)	# from2, from2
	.loc 1 695 0
	movq	$0, -24(%rbp)	#, tmp.current
	movq	-24(%rbp), %rax	# tmp.current, D.9552
	movq	%rax, -32(%rbp)	# D.9552, tmp.first
	.loc 1 697 0
	movq	-56(%rbp), %rdx	# from2, tmp60
	movq	-48(%rbp), %rsi	# from1, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp62,
	call	bitmap_operation	#
	.loc 1 698 0
	leaq	-32(%rbp), %rdx	#, tmp63
	movq	-40(%rbp), %rsi	# to, tmp64
	movq	-40(%rbp), %rax	# to, tmp65
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp65,
	call	bitmap_operation	#
	.loc 1 699 0
	leaq	-32(%rbp), %rax	#, tmp66
	movq	%rax, %rdi	# tmp66,
	call	bitmap_clear	#
	.loc 1 700 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	bitmap_ior_and_compl, .-bitmap_ior_and_compl
	.globl	bitmap_union_of_diff
	.type	bitmap_union_of_diff, @function
bitmap_union_of_diff:
.LFB18:
	.loc 1 708 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# dst, dst
	movq	%rsi, -64(%rbp)	# a, a
	movq	%rdx, -72(%rbp)	# b, b
	movq	%rcx, -80(%rbp)	# c, c
	.loc 1 712 0
	movq	$0, -24(%rbp)	#, tmp.current
	movq	-24(%rbp), %rax	# tmp.current, D.9553
	movq	%rax, -32(%rbp)	# D.9553, tmp.first
	.loc 1 714 0
	movq	-80(%rbp), %rdx	# c, tmp62
	movq	-72(%rbp), %rsi	# b, tmp63
	leaq	-32(%rbp), %rax	#, tmp64
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp64,
	call	bitmap_operation	#
	.loc 1 715 0
	movq	-64(%rbp), %rdx	# a, tmp65
	leaq	-32(%rbp), %rsi	#, tmp66
	movq	-56(%rbp), %rax	# dst, tmp67
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp67,
	call	bitmap_operation	#
	movl	%eax, -36(%rbp)	# tmp68, changed
	.loc 1 716 0
	leaq	-32(%rbp), %rax	#, tmp69
	movq	%rax, %rdi	# tmp69,
	call	bitmap_clear	#
	.loc 1 718 0
	movl	-36(%rbp), %eax	# changed, D.9554
	.loc 1 719 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	bitmap_union_of_diff, .-bitmap_union_of_diff
	.globl	bitmap_initialize
	.type	bitmap_initialize, @function
bitmap_initialize:
.LFB19:
	.loc 1 726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# head, head
	.loc 1 727 0
	movq	-8(%rbp), %rax	# head, tmp62
	movq	$0, 8(%rax)	#, head_1(D)->current
	movq	-8(%rbp), %rax	# head, tmp63
	movq	8(%rax), %rdx	# head_1(D)->current, D.9555
	movq	-8(%rbp), %rax	# head, tmp64
	movq	%rdx, (%rax)	# D.9555, head_1(D)->first
	.loc 1 729 0
	movq	-8(%rbp), %rax	# head, D.9556
	.loc 1 730 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	bitmap_initialize, .-bitmap_initialize
	.section	.rodata
.LC1:
	.string	"\nfirst = "
.LC2:
	.string	"%p"
.LC3:
	.string	" current = "
.LC4:
	.string	" indx = %u\n"
.LC5:
	.string	" next = "
.LC6:
	.string	" prev = "
.LC7:
	.string	" indx = %u\n\t\tbits = {"
.LC8:
	.string	"\n\t\t\t"
.LC9:
	.string	" %u"
.LC10:
	.string	" }\n"
	.text
	.globl	debug_bitmap_file
	.type	debug_bitmap_file, @function
debug_bitmap_file:
.LFB20:
	.loc 1 738 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	movq	%rsi, -48(%rbp)	# head, head
	.loc 1 741 0
	movq	-40(%rbp), %rax	# file, tmp75
	movq	%rax, %rcx	# tmp75,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 742 0
	movq	-48(%rbp), %rax	# head, tmp76
	movq	(%rax), %rdx	# head_9(D)->first, D.9557
	movq	-40(%rbp), %rax	# file, tmp77
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp77,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 743 0
	movq	-40(%rbp), %rax	# file, tmp78
	movq	%rax, %rcx	# tmp78,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 744 0
	movq	-48(%rbp), %rax	# head, tmp79
	movq	8(%rax), %rdx	# head_9(D)->current, D.9557
	movq	-40(%rbp), %rax	# file, tmp80
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 745 0
	movq	-48(%rbp), %rax	# head, tmp81
	movl	16(%rax), %edx	# head_9(D)->indx, D.9558
	movq	-40(%rbp), %rax	# file, tmp82
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 747 0
	movq	-48(%rbp), %rax	# head, tmp83
	movq	(%rax), %rax	# head_9(D)->first, tmp84
	movq	%rax, -8(%rbp)	# tmp84, ptr
	jmp	.L127	#
.L134:
.LBB13:
	.loc 1 749 0
	movl	$26, -12(%rbp)	#, col
	.loc 1 751 0
	movq	-40(%rbp), %rax	# file, tmp85
	movq	%rax, %rsi	# tmp85,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 752 0
	movq	-8(%rbp), %rdx	# ptr, tmp86
	movq	-40(%rbp), %rax	# file, tmp87
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 753 0
	movq	-40(%rbp), %rax	# file, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
	.loc 1 754 0
	movq	-8(%rbp), %rax	# ptr, tmp89
	movq	(%rax), %rdx	# ptr_1->next, D.9559
	movq	-40(%rbp), %rax	# file, tmp90
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 755 0
	movq	-40(%rbp), %rax	# file, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 756 0
	movq	-8(%rbp), %rax	# ptr, tmp92
	movq	8(%rax), %rdx	# ptr_1->prev, D.9559
	movq	-40(%rbp), %rax	# file, tmp93
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 757 0
	movq	-8(%rbp), %rax	# ptr, tmp94
	movl	16(%rax), %edx	# ptr_1->indx, D.9558
	movq	-40(%rbp), %rax	# file, tmp95
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 759 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L128	#
.L133:
	.loc 1 760 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L129	#
.L132:
	.loc 1 761 0
	movq	-8(%rbp), %rax	# ptr, tmp96
	movl	-20(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	addq	$2, %rdx	#, tmp99
	movq	8(%rax,%rdx,8), %rdx	# ptr_1->bits, D.9560
	movl	-16(%rbp), %eax	# j, tmp100
	movl	%eax, %ecx	# tmp100, tmp109
	shrq	%cl, %rdx	# tmp109, D.9560
	movq	%rdx, %rax	# D.9560, D.9560
	andl	$1, %eax	#, D.9560
	testq	%rax, %rax	# D.9560
	je	.L130	#,
	.loc 1 763 0
	cmpl	$70, -12(%rbp)	#, col
	jle	.L131	#,
	.loc 1 765 0
	movq	-40(%rbp), %rax	# file, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 766 0
	movl	$24, -12(%rbp)	#, col
.L131:
	.loc 1 769 0
	movq	-8(%rbp), %rax	# ptr, tmp102
	movl	16(%rax), %eax	# ptr_1->indx, D.9558
	sall	$7, %eax	#, D.9558
	movl	%eax, %edx	# D.9558, D.9558
	.loc 1 770 0
	movl	-20(%rbp), %eax	# i, tmp103
	sall	$6, %eax	#, D.9561
	addl	%eax, %edx	# D.9558, D.9558
	.loc 1 769 0
	movl	-16(%rbp), %eax	# j, j.30
	addl	%eax, %edx	# j.30, D.9558
	movq	-40(%rbp), %rax	# file, tmp104
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 771 0
	addl	$4, -12(%rbp)	#, col
.L130:
	.loc 1 760 0
	addl	$1, -16(%rbp)	#, j
.L129:
	.loc 1 760 0 is_stmt 0 discriminator 1
	cmpl	$63, -16(%rbp)	#, j
	jle	.L132	#,
	.loc 1 759 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L128:
	.loc 1 759 0 is_stmt 0 discriminator 1
	cmpl	$1, -20(%rbp)	#, i
	jle	.L133	#,
	.loc 1 774 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
.LBE13:
	.loc 1 747 0
	movq	-8(%rbp), %rax	# ptr, tmp106
	movq	(%rax), %rax	# ptr_1->next, tmp107
	movq	%rax, -8(%rbp)	# tmp107, ptr
.L127:
	.loc 1 747 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L134	#,
	.loc 1 776 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	debug_bitmap_file, .-debug_bitmap_file
	.globl	debug_bitmap
	.type	debug_bitmap, @function
debug_bitmap:
.LFB21:
	.loc 1 784 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# head, head
	.loc 1 785 0
	movq	stdout(%rip), %rax	# stdout, stdout.31
	movq	-8(%rbp), %rdx	# head, tmp60
	movq	%rdx, %rsi	# tmp60,
	movq	%rax, %rdi	# stdout.31,
	call	debug_bitmap_file	#
	.loc 1 786 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	debug_bitmap, .-debug_bitmap
	.section	.rodata
.LC11:
	.string	""
.LC12:
	.string	"%s%d"
.LC13:
	.string	", "
	.text
	.globl	bitmap_print
	.type	bitmap_print, @function
bitmap_print:
.LFB22:
	.loc 1 797 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# file, file
	movq	%rsi, -64(%rbp)	# head, head
	movq	%rdx, -72(%rbp)	# prefix, prefix
	movq	%rcx, -80(%rbp)	# suffix, suffix
	.loc 1 798 0
	movq	$.LC11, -32(%rbp)	#, comma
	.loc 1 801 0
	movq	-56(%rbp), %rdx	# file, tmp69
	movq	-72(%rbp), %rax	# prefix, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	fputs	#
.LBB14:
	.loc 1 802 0
	movq	-64(%rbp), %rax	# head, tmp71
	movq	(%rax), %rax	# head_20(D)->first, tmp72
	movq	%rax, -24(%rbp)	# tmp72, ptr_
	movl	$0, -40(%rbp)	#, indx_
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L137	#
.L139:
	.loc 1 802 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp73
	movq	(%rax), %rax	# ptr__6->next, tmp74
	movq	%rax, -24(%rbp)	# tmp74, ptr_
.L137:
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L138	#,
	.loc 1 802 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp75
	movl	16(%rax), %eax	# ptr__6->indx, D.9572
	cmpl	-40(%rbp), %eax	# indx_, D.9572
	jb	.L139	#,
.L138:
	.loc 1 802 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L140	#,
	.loc 1 802 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp76
	movl	16(%rax), %eax	# ptr__6->indx, D.9572
	cmpl	-40(%rbp), %eax	# indx_, D.9572
	je	.L140	#,
	movl	$0, -48(%rbp)	#, bit_num_
	movl	$0, -44(%rbp)	#, word_num_
	jmp	.L141	#
.L140:
	.loc 1 802 0 discriminator 2
	jmp	.L141	#
.L148:
	.loc 1 802 0
	jmp	.L142	#
.L147:
.LBB15:
	.loc 1 802 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp77
	movl	-44(%rbp), %edx	# word_num_, tmp78
	addq	$2, %rdx	#, tmp79
	movq	8(%rax,%rdx,8), %rax	# ptr__7->bits, tmp80
	movq	%rax, -16(%rbp)	# tmp80, word_
	cmpq	$0, -16(%rbp)	#, word_
	je	.L143	#,
	.loc 1 802 0 discriminator 1
	jmp	.L144	#
.L146:
.LBB16:
	.loc 1 802 0 discriminator 2
	movl	-48(%rbp), %eax	# bit_num_, bit_num_.32
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# bit_num_.32, tmp97
	salq	%cl, %rdx	# tmp97, tmp82
	movq	%rdx, %rax	# tmp82, tmp82
	movq	%rax, -8(%rbp)	# tmp82, mask_
	movq	-8(%rbp), %rax	# mask_, tmp83
	movq	-16(%rbp), %rdx	# word_, tmp84
	andq	%rdx, %rax	# tmp84, D.9573
	testq	%rax, %rax	# D.9573
	je	.L145	#,
	.loc 1 802 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp85
	notq	%rax	# D.9573
	andq	%rax, -16(%rbp)	# D.9573, word_
	movq	-24(%rbp), %rax	# ptr_, tmp86
	movl	16(%rax), %eax	# ptr__7->indx, D.9572
	leal	(%rax,%rax), %edx	#, D.9572
	movl	-44(%rbp), %eax	# word_num_, tmp87
	addl	%edx, %eax	# D.9572, D.9572
	sall	$6, %eax	#, D.9572
	movl	%eax, %edx	# D.9572, D.9572
	movl	-48(%rbp), %eax	# bit_num_, tmp88
	addl	%edx, %eax	# D.9572, D.9572
	movl	%eax, -36(%rbp)	# D.9572, i
	movl	-36(%rbp), %ecx	# i, tmp89
	movq	-32(%rbp), %rdx	# comma, tmp90
	movq	-56(%rbp), %rax	# file, tmp91
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	$.LC13, -32(%rbp)	#, comma
	cmpq	$0, -16(%rbp)	#, word_
	jne	.L145	#,
	jmp	.L143	#
.L145:
.LBE16:
	.loc 1 802 0 discriminator 2
	addl	$1, -48(%rbp)	#, bit_num_
.L144:
	.loc 1 802 0 discriminator 1
	cmpl	$63, -48(%rbp)	#, bit_num_
	jbe	.L146	#,
.L143:
	.loc 1 802 0 discriminator 2
	movl	$0, -48(%rbp)	#, bit_num_
.LBE15:
	addl	$1, -44(%rbp)	#, word_num_
.L142:
	.loc 1 802 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, word_num_
	jbe	.L147	#,
	.loc 1 802 0 discriminator 3
	movl	$0, -44(%rbp)	#, word_num_
	movq	-24(%rbp), %rax	# ptr_, tmp92
	movq	(%rax), %rax	# ptr__7->next, tmp93
	movq	%rax, -24(%rbp)	# tmp93, ptr_
.L141:
	.loc 1 802 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, ptr_
	jne	.L148	#,
.LBE14:
	.loc 1 807 0 is_stmt 1
	movq	-56(%rbp), %rdx	# file, tmp94
	movq	-80(%rbp), %rax	# suffix, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	fputs	#
	.loc 1 808 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	bitmap_print, .-bitmap_print
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8973, @object
	.size	__FUNCTION__.8973, 17
__FUNCTION__.8973:
	.string	"bitmap_operation"
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "machmode.h"
	.file 7 "rtl.h"
	.file 8 "bitmap.h"
	.file 9 "obstack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x178e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF380
	.byte	0x1
	.long	.LASF381
	.long	.LASF382
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
	.long	0x270
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x276
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
	.long	0x27c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x28c
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
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	0x95
	.long	0x238
	.uleb128 0xb
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF383
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x270
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x270
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x276
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
	.long	0x23f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xa
	.long	0x95
	.long	0x28c
	.uleb128 0xb
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x238
	.uleb128 0xa
	.long	0x95
	.long	0x2a2
	.uleb128 0xb
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a8
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0xe
	.long	.LASF109
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x430
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
	.long	0x479
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
	.byte	0x29
	.long	0x875
	.uleb128 0xf
	.long	.LASF122
	.sleb128 0
	.uleb128 0x10
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF123
	.sleb128 2
	.uleb128 0xf
	.long	.LASF124
	.sleb128 3
	.uleb128 0xf
	.long	.LASF125
	.sleb128 4
	.uleb128 0xf
	.long	.LASF126
	.sleb128 5
	.uleb128 0xf
	.long	.LASF127
	.sleb128 6
	.uleb128 0xf
	.long	.LASF128
	.sleb128 7
	.uleb128 0xf
	.long	.LASF129
	.sleb128 8
	.uleb128 0xf
	.long	.LASF130
	.sleb128 9
	.uleb128 0xf
	.long	.LASF131
	.sleb128 10
	.uleb128 0xf
	.long	.LASF132
	.sleb128 11
	.uleb128 0xf
	.long	.LASF133
	.sleb128 12
	.uleb128 0xf
	.long	.LASF134
	.sleb128 13
	.uleb128 0xf
	.long	.LASF135
	.sleb128 14
	.uleb128 0xf
	.long	.LASF136
	.sleb128 15
	.uleb128 0xf
	.long	.LASF137
	.sleb128 16
	.uleb128 0xf
	.long	.LASF138
	.sleb128 17
	.uleb128 0xf
	.long	.LASF139
	.sleb128 18
	.uleb128 0xf
	.long	.LASF140
	.sleb128 19
	.uleb128 0xf
	.long	.LASF141
	.sleb128 20
	.uleb128 0xf
	.long	.LASF142
	.sleb128 21
	.uleb128 0xf
	.long	.LASF143
	.sleb128 22
	.uleb128 0xf
	.long	.LASF144
	.sleb128 23
	.uleb128 0xf
	.long	.LASF145
	.sleb128 24
	.uleb128 0xf
	.long	.LASF146
	.sleb128 25
	.uleb128 0xf
	.long	.LASF147
	.sleb128 26
	.uleb128 0xf
	.long	.LASF148
	.sleb128 27
	.uleb128 0xf
	.long	.LASF149
	.sleb128 28
	.uleb128 0xf
	.long	.LASF150
	.sleb128 29
	.uleb128 0xf
	.long	.LASF151
	.sleb128 30
	.uleb128 0xf
	.long	.LASF152
	.sleb128 31
	.uleb128 0xf
	.long	.LASF153
	.sleb128 32
	.uleb128 0xf
	.long	.LASF154
	.sleb128 33
	.uleb128 0xf
	.long	.LASF155
	.sleb128 34
	.uleb128 0xf
	.long	.LASF156
	.sleb128 35
	.uleb128 0xf
	.long	.LASF157
	.sleb128 36
	.uleb128 0xf
	.long	.LASF158
	.sleb128 37
	.uleb128 0xf
	.long	.LASF159
	.sleb128 38
	.uleb128 0xf
	.long	.LASF160
	.sleb128 39
	.uleb128 0xf
	.long	.LASF161
	.sleb128 40
	.uleb128 0xf
	.long	.LASF162
	.sleb128 41
	.uleb128 0xf
	.long	.LASF163
	.sleb128 42
	.uleb128 0xf
	.long	.LASF164
	.sleb128 43
	.uleb128 0xf
	.long	.LASF165
	.sleb128 44
	.uleb128 0xf
	.long	.LASF166
	.sleb128 45
	.uleb128 0xf
	.long	.LASF167
	.sleb128 46
	.uleb128 0x10
	.string	"SET"
	.sleb128 47
	.uleb128 0x10
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF168
	.sleb128 49
	.uleb128 0xf
	.long	.LASF169
	.sleb128 50
	.uleb128 0xf
	.long	.LASF170
	.sleb128 51
	.uleb128 0xf
	.long	.LASF171
	.sleb128 52
	.uleb128 0xf
	.long	.LASF172
	.sleb128 53
	.uleb128 0xf
	.long	.LASF173
	.sleb128 54
	.uleb128 0xf
	.long	.LASF174
	.sleb128 55
	.uleb128 0xf
	.long	.LASF175
	.sleb128 56
	.uleb128 0xf
	.long	.LASF176
	.sleb128 57
	.uleb128 0xf
	.long	.LASF177
	.sleb128 58
	.uleb128 0x10
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF178
	.sleb128 60
	.uleb128 0x10
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF179
	.sleb128 62
	.uleb128 0xf
	.long	.LASF180
	.sleb128 63
	.uleb128 0xf
	.long	.LASF181
	.sleb128 64
	.uleb128 0xf
	.long	.LASF182
	.sleb128 65
	.uleb128 0x10
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF183
	.sleb128 67
	.uleb128 0xf
	.long	.LASF184
	.sleb128 68
	.uleb128 0x10
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF185
	.sleb128 70
	.uleb128 0xf
	.long	.LASF186
	.sleb128 71
	.uleb128 0xf
	.long	.LASF187
	.sleb128 72
	.uleb128 0xf
	.long	.LASF188
	.sleb128 73
	.uleb128 0xf
	.long	.LASF189
	.sleb128 74
	.uleb128 0xf
	.long	.LASF190
	.sleb128 75
	.uleb128 0xf
	.long	.LASF191
	.sleb128 76
	.uleb128 0x10
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF192
	.sleb128 78
	.uleb128 0x10
	.string	"DIV"
	.sleb128 79
	.uleb128 0x10
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF193
	.sleb128 81
	.uleb128 0xf
	.long	.LASF194
	.sleb128 82
	.uleb128 0x10
	.string	"AND"
	.sleb128 83
	.uleb128 0x10
	.string	"IOR"
	.sleb128 84
	.uleb128 0x10
	.string	"XOR"
	.sleb128 85
	.uleb128 0x10
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF195
	.sleb128 87
	.uleb128 0xf
	.long	.LASF196
	.sleb128 88
	.uleb128 0xf
	.long	.LASF197
	.sleb128 89
	.uleb128 0xf
	.long	.LASF198
	.sleb128 90
	.uleb128 0xf
	.long	.LASF199
	.sleb128 91
	.uleb128 0xf
	.long	.LASF200
	.sleb128 92
	.uleb128 0xf
	.long	.LASF201
	.sleb128 93
	.uleb128 0xf
	.long	.LASF202
	.sleb128 94
	.uleb128 0xf
	.long	.LASF203
	.sleb128 95
	.uleb128 0xf
	.long	.LASF204
	.sleb128 96
	.uleb128 0xf
	.long	.LASF205
	.sleb128 97
	.uleb128 0xf
	.long	.LASF206
	.sleb128 98
	.uleb128 0xf
	.long	.LASF207
	.sleb128 99
	.uleb128 0xf
	.long	.LASF208
	.sleb128 100
	.uleb128 0xf
	.long	.LASF209
	.sleb128 101
	.uleb128 0x10
	.string	"NE"
	.sleb128 102
	.uleb128 0x10
	.string	"EQ"
	.sleb128 103
	.uleb128 0x10
	.string	"GE"
	.sleb128 104
	.uleb128 0x10
	.string	"GT"
	.sleb128 105
	.uleb128 0x10
	.string	"LE"
	.sleb128 106
	.uleb128 0x10
	.string	"LT"
	.sleb128 107
	.uleb128 0x10
	.string	"GEU"
	.sleb128 108
	.uleb128 0x10
	.string	"GTU"
	.sleb128 109
	.uleb128 0x10
	.string	"LEU"
	.sleb128 110
	.uleb128 0x10
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF210
	.sleb128 112
	.uleb128 0xf
	.long	.LASF211
	.sleb128 113
	.uleb128 0xf
	.long	.LASF212
	.sleb128 114
	.uleb128 0xf
	.long	.LASF213
	.sleb128 115
	.uleb128 0xf
	.long	.LASF214
	.sleb128 116
	.uleb128 0xf
	.long	.LASF215
	.sleb128 117
	.uleb128 0xf
	.long	.LASF216
	.sleb128 118
	.uleb128 0xf
	.long	.LASF217
	.sleb128 119
	.uleb128 0xf
	.long	.LASF218
	.sleb128 120
	.uleb128 0xf
	.long	.LASF219
	.sleb128 121
	.uleb128 0xf
	.long	.LASF220
	.sleb128 122
	.uleb128 0xf
	.long	.LASF221
	.sleb128 123
	.uleb128 0xf
	.long	.LASF222
	.sleb128 124
	.uleb128 0xf
	.long	.LASF223
	.sleb128 125
	.uleb128 0x10
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF224
	.sleb128 127
	.uleb128 0xf
	.long	.LASF225
	.sleb128 128
	.uleb128 0x10
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF226
	.sleb128 130
	.uleb128 0x10
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF227
	.sleb128 132
	.uleb128 0xf
	.long	.LASF228
	.sleb128 133
	.uleb128 0xf
	.long	.LASF229
	.sleb128 134
	.uleb128 0xf
	.long	.LASF230
	.sleb128 135
	.uleb128 0xf
	.long	.LASF231
	.sleb128 136
	.uleb128 0xf
	.long	.LASF232
	.sleb128 137
	.uleb128 0xf
	.long	.LASF233
	.sleb128 138
	.uleb128 0xf
	.long	.LASF234
	.sleb128 139
	.uleb128 0xf
	.long	.LASF235
	.sleb128 140
	.uleb128 0xf
	.long	.LASF236
	.sleb128 141
	.uleb128 0xf
	.long	.LASF237
	.sleb128 142
	.uleb128 0xf
	.long	.LASF238
	.sleb128 143
	.uleb128 0xf
	.long	.LASF239
	.sleb128 144
	.uleb128 0xf
	.long	.LASF240
	.sleb128 145
	.uleb128 0xf
	.long	.LASF241
	.sleb128 146
	.uleb128 0xf
	.long	.LASF242
	.sleb128 147
	.uleb128 0xf
	.long	.LASF243
	.sleb128 148
	.uleb128 0xf
	.long	.LASF244
	.sleb128 149
	.uleb128 0xf
	.long	.LASF245
	.sleb128 150
	.uleb128 0xf
	.long	.LASF246
	.sleb128 151
	.uleb128 0x10
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF247
	.sleb128 153
	.byte	0
	.uleb128 0x7
	.long	.LASF248
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0x8a6
	.uleb128 0x8
	.long	.LASF249
	.byte	0x8
	.byte	0x35
	.long	0xb28
	.byte	0
	.uleb128 0x8
	.long	.LASF250
	.byte	0x8
	.byte	0x36
	.long	0xb28
	.byte	0x8
	.uleb128 0x8
	.long	.LASF251
	.byte	0x8
	.byte	0x37
	.long	0x3b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x875
	.uleb128 0x11
	.long	.LASF252
	.byte	0x4
	.byte	0x7
	.value	0x297
	.long	0x95b
	.uleb128 0xf
	.long	.LASF253
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF254
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF255
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF256
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF257
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF258
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF259
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF260
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF261
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF262
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF263
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF264
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF265
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF266
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF267
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF268
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF269
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF270
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF271
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF272
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF273
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF274
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF275
	.sleb128 -78
	.byte	0
	.uleb128 0x11
	.long	.LASF276
	.byte	0x4
	.byte	0x7
	.value	0x630
	.long	0x9b1
	.uleb128 0xf
	.long	.LASF277
	.sleb128 0
	.uleb128 0xf
	.long	.LASF278
	.sleb128 1
	.uleb128 0xf
	.long	.LASF279
	.sleb128 2
	.uleb128 0xf
	.long	.LASF280
	.sleb128 3
	.uleb128 0xf
	.long	.LASF281
	.sleb128 4
	.uleb128 0xf
	.long	.LASF282
	.sleb128 5
	.uleb128 0xf
	.long	.LASF283
	.sleb128 6
	.uleb128 0xf
	.long	.LASF284
	.sleb128 7
	.uleb128 0xf
	.long	.LASF285
	.sleb128 8
	.uleb128 0xf
	.long	.LASF286
	.sleb128 9
	.uleb128 0xf
	.long	.LASF287
	.sleb128 10
	.uleb128 0xf
	.long	.LASF288
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF289
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x9e2
	.uleb128 0x8
	.long	.LASF290
	.byte	0x9
	.byte	0xa3
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF291
	.byte	0x9
	.byte	0xa4
	.long	0x9e2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF292
	.byte	0x9
	.byte	0xa5
	.long	0x228
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9b1
	.uleb128 0x7
	.long	.LASF293
	.byte	0x58
	.byte	0x9
	.byte	0xa8
	.long	0xa9a
	.uleb128 0x8
	.long	.LASF294
	.byte	0x9
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0x8
	.long	.LASF295
	.byte	0x9
	.byte	0xab
	.long	0x9e2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF296
	.byte	0x9
	.byte	0xac
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF297
	.byte	0x9
	.byte	0xad
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF298
	.byte	0x9
	.byte	0xae
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF299
	.byte	0x9
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF300
	.byte	0x9
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF301
	.byte	0x9
	.byte	0xb5
	.long	0xaae
	.byte	0x38
	.uleb128 0x8
	.long	.LASF302
	.byte	0x9
	.byte	0xb6
	.long	0xac4
	.byte	0x40
	.uleb128 0x8
	.long	.LASF303
	.byte	0x9
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0x12
	.long	.LASF304
	.byte	0x9
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x12
	.long	.LASF305
	.byte	0x9
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x12
	.long	.LASF306
	.byte	0x9
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.long	0x9e2
	.long	0xaae
	.uleb128 0x14
	.long	0x42
	.uleb128 0x14
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa9a
	.uleb128 0x15
	.long	0xac4
	.uleb128 0x14
	.long	0x42
	.uleb128 0x14
	.long	0x9e2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab4
	.uleb128 0x7
	.long	.LASF307
	.byte	0x28
	.byte	0x8
	.byte	0x2b
	.long	0xb07
	.uleb128 0x8
	.long	.LASF308
	.byte	0x8
	.byte	0x2d
	.long	0xb07
	.byte	0
	.uleb128 0x8
	.long	.LASF291
	.byte	0x8
	.byte	0x2e
	.long	0xb07
	.byte	0x8
	.uleb128 0x8
	.long	.LASF251
	.byte	0x8
	.byte	0x2f
	.long	0x3b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF309
	.byte	0x8
	.byte	0x30
	.long	0xb0d
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaca
	.uleb128 0xa
	.long	0x56
	.long	0xb1d
	.uleb128 0xb
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF310
	.byte	0x8
	.byte	0x31
	.long	0xaca
	.uleb128 0x6
	.byte	0x8
	.long	0xb1d
	.uleb128 0x5
	.long	.LASF311
	.byte	0x8
	.byte	0x39
	.long	0x875
	.uleb128 0x5
	.long	.LASF312
	.byte	0x8
	.byte	0x39
	.long	0x8a6
	.uleb128 0xe
	.long	.LASF313
	.byte	0x4
	.byte	0x8
	.byte	0x3c
	.long	0xb6f
	.uleb128 0xf
	.long	.LASF314
	.sleb128 0
	.uleb128 0xf
	.long	.LASF315
	.sleb128 1
	.uleb128 0xf
	.long	.LASF316
	.sleb128 2
	.uleb128 0xf
	.long	.LASF317
	.sleb128 3
	.uleb128 0xf
	.long	.LASF318
	.sleb128 4
	.byte	0
	.uleb128 0x16
	.long	.LASF327
	.byte	0x1
	.byte	0x3c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc5
	.uleb128 0x17
	.long	.LASF319
	.byte	0x1
	.byte	0x3d
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"elt"
	.byte	0x1
	.byte	0x3e
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF308
	.byte	0x1
	.byte	0x40
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF291
	.byte	0x1
	.byte	0x41
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x1
	.byte	0x5c
	.long	0xb28
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xc75
	.uleb128 0x19
	.long	.LASF320
	.byte	0x1
	.byte	0x5e
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.string	"__h"
	.byte	0x1
	.byte	0x84
	.long	0xc75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xc45
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0x84
	.long	0xc75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF321
	.byte	0x1
	.byte	0x84
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x19
	.long	.LASF322
	.byte	0x1
	.byte	0x84
	.long	0xc75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF323
	.byte	0x1
	.byte	0x84
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9e8
	.uleb128 0x1e
	.long	.LASF329
	.byte	0x1
	.byte	0x90
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc7
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0x96
	.long	0xc75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF324
	.byte	0x1
	.byte	0x96
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF326
	.byte	0x1
	.byte	0x9d
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf7
	.uleb128 0x17
	.long	.LASF320
	.byte	0x1
	.byte	0x9e
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF328
	.byte	0x1
	.byte	0xb0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xd4d
	.uleb128 0x17
	.long	.LASF319
	.byte	0x1
	.byte	0xb1
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF320
	.byte	0x1
	.byte	0xb2
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF251
	.byte	0x1
	.byte	0xb4
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"ptr"
	.byte	0x1
	.byte	0xb5
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF330
	.byte	0x1
	.byte	0xe9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xd95
	.uleb128 0x17
	.long	.LASF319
	.byte	0x1
	.byte	0xea
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF320
	.byte	0x1
	.byte	0xec
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF308
	.byte	0x1
	.byte	0xec
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF331
	.byte	0x1
	.byte	0xfb
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0b
	.uleb128 0x18
	.string	"to"
	.byte	0x1
	.byte	0xfc
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF332
	.byte	0x1
	.byte	0xfd
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF333
	.byte	0x1
	.byte	0xff
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF334
	.byte	0x1
	.byte	0xff
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x21
	.long	.LASF335
	.byte	0x1
	.value	0x109
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF336
	.byte	0x1
	.value	0x12e
	.long	0xb28
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6a
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x12f
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"bit"
	.byte	0x1
	.value	0x130
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LASF320
	.byte	0x1
	.value	0x132
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF251
	.byte	0x1
	.value	0x133
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF337
	.byte	0x1
	.value	0x152
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xee6
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x153
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"bit"
	.byte	0x1
	.value	0x154
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x156
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x21
	.long	.LASF338
	.byte	0x1
	.value	0x15a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x15b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF340
	.byte	0x1
	.value	0x168
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xf5f
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x169
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"bit"
	.byte	0x1
	.value	0x16a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x16c
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x16d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF338
	.byte	0x1
	.value	0x16f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF341
	.byte	0x1
	.value	0x170
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF342
	.byte	0x1
	.value	0x180
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xfcd
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x181
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"bit"
	.byte	0x1
	.value	0x182
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x184
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF338
	.byte	0x1
	.value	0x185
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x186
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.long	.LASF343
	.byte	0x1
	.value	0x197
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1039
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x198
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x19a
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF344
	.byte	0x1
	.value	0x19b
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x19c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF338
	.byte	0x1
	.value	0x19c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF345
	.byte	0x1
	.value	0x1cc
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a5
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x1cd
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x1cf
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF344
	.byte	0x1
	.value	0x1d0
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x1d1
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF338
	.byte	0x1
	.value	0x1d1
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF346
	.byte	0x1
	.value	0x201
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f4
	.uleb128 0x24
	.string	"to"
	.byte	0x1
	.value	0x202
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x23
	.long	.LASF347
	.byte	0x1
	.value	0x203
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x23
	.long	.LASF348
	.byte	0x1
	.value	0x204
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x23
	.long	.LASF349
	.byte	0x1
	.value	0x205
	.long	0xb44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x21
	.long	.LASF350
	.byte	0x1
	.value	0x209
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x21
	.long	.LASF351
	.byte	0x1
	.value	0x20a
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x21
	.long	.LASF352
	.byte	0x1
	.value	0x20b
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x21
	.long	.LASF353
	.byte	0x1
	.value	0x20c
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x21
	.long	.LASF334
	.byte	0x1
	.value	0x20d
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.long	.LASF354
	.byte	0x1
	.value	0x20e
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x21
	.long	.LASF355
	.byte	0x1
	.value	0x20f
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.long	.LASF356
	.byte	0x1
	.value	0x210
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x21
	.long	.LASF251
	.byte	0x1
	.value	0x211
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x21
	.long	.LASF357
	.byte	0x1
	.value	0x212
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x29
	.long	.LASF384
	.long	0x1404
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.8973
	.uleb128 0x1d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x122d
	.uleb128 0x26
	.string	"t0"
	.byte	0x1
	.value	0x26e
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.string	"t1"
	.byte	0x1
	.value	0x26e
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.string	"f10"
	.byte	0x1
	.value	0x26e
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.string	"f11"
	.byte	0x1
	.value	0x26e
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.string	"f20"
	.byte	0x1
	.value	0x26e
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.string	"f21"
	.byte	0x1
	.value	0x26e
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x1d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x12a1
	.uleb128 0x26
	.string	"t0"
	.byte	0x1
	.value	0x272
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.string	"t1"
	.byte	0x1
	.value	0x272
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.string	"f10"
	.byte	0x1
	.value	0x272
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.string	"f11"
	.byte	0x1
	.value	0x272
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.string	"f20"
	.byte	0x1
	.value	0x272
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.string	"f21"
	.byte	0x1
	.value	0x272
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x1d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1315
	.uleb128 0x26
	.string	"t0"
	.byte	0x1
	.value	0x276
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.string	"t1"
	.byte	0x1
	.value	0x276
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.string	"f10"
	.byte	0x1
	.value	0x276
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.string	"f11"
	.byte	0x1
	.value	0x276
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.string	"f20"
	.byte	0x1
	.value	0x276
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.string	"f21"
	.byte	0x1
	.value	0x276
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x1d
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1389
	.uleb128 0x26
	.string	"t0"
	.byte	0x1
	.value	0x279
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"t1"
	.byte	0x1
	.value	0x279
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"f10"
	.byte	0x1
	.value	0x279
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.string	"f11"
	.byte	0x1
	.value	0x279
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"f20"
	.byte	0x1
	.value	0x279
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.string	"f21"
	.byte	0x1
	.value	0x279
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x26
	.string	"t0"
	.byte	0x1
	.value	0x27c
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"t1"
	.byte	0x1
	.value	0x27c
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"f10"
	.byte	0x1
	.value	0x27c
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"f11"
	.byte	0x1
	.value	0x27c
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"f20"
	.byte	0x1
	.value	0x27c
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"f21"
	.byte	0x1
	.value	0x27c
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x95
	.long	0x1404
	.uleb128 0xb
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x13f4
	.uleb128 0x27
	.long	.LASF358
	.byte	0x1
	.value	0x29e
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1464
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x29f
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x2a0
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x2a2
	.long	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x2a3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.long	.LASF359
	.byte	0x1
	.value	0x2b0
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x14bf
	.uleb128 0x24
	.string	"to"
	.byte	0x1
	.value	0x2b1
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF347
	.byte	0x1
	.value	0x2b2
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF348
	.byte	0x1
	.value	0x2b3
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.value	0x2b5
	.long	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.long	.LASF360
	.byte	0x1
	.value	0x2bf
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x153a
	.uleb128 0x24
	.string	"dst"
	.byte	0x1
	.value	0x2c0
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x2c1
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x2c2
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.value	0x2c3
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.value	0x2c5
	.long	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF357
	.byte	0x1
	.value	0x2c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x28
	.long	.LASF361
	.byte	0x1
	.value	0x2d4
	.long	0xb39
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x156c
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x2d5
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF362
	.byte	0x1
	.value	0x2df
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f3
	.uleb128 0x23
	.long	.LASF363
	.byte	0x1
	.value	0x2e0
	.long	0x15f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x2e1
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x2e3
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x2ed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x2ed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"col"
	.byte	0x1
	.value	0x2ed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x25
	.long	.LASF364
	.byte	0x1
	.value	0x30e
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1627
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x30f
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF365
	.byte	0x1
	.value	0x318
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1732
	.uleb128 0x23
	.long	.LASF363
	.byte	0x1
	.value	0x319
	.long	0x15f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF319
	.byte	0x1
	.value	0x31a
	.long	0xb39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF366
	.byte	0x1
	.value	0x31b
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF367
	.byte	0x1
	.value	0x31c
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF368
	.byte	0x1
	.value	0x31e
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x31f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x21
	.long	.LASF369
	.byte	0x1
	.value	0x322
	.long	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF370
	.byte	0x1
	.value	0x322
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF371
	.byte	0x1
	.value	0x322
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF372
	.byte	0x1
	.value	0x322
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x21
	.long	.LASF373
	.byte	0x1
	.value	0x322
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x21
	.long	.LASF374
	.byte	0x1
	.value	0x322
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF375
	.byte	0x1
	.byte	0x1d
	.long	0x9e8
	.uleb128 0x9
	.byte	0x3
	.quad	bitmap_obstack
	.uleb128 0x19
	.long	.LASF376
	.byte	0x1
	.byte	0x1e
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	bitmap_obstack_init
	.uleb128 0x19
	.long	.LASF377
	.byte	0x1
	.byte	0x30
	.long	0xb28
	.uleb128 0x9
	.byte	0x3
	.quad	bitmap_free
	.uleb128 0x2a
	.long	.LASF378
	.byte	0x4
	.byte	0xa9
	.long	0x276
	.uleb128 0x2b
	.long	.LASF379
	.byte	0x1
	.byte	0x2f
	.long	0xb1d
	.uleb128 0x9
	.byte	0x3
	.quad	bitmap_zero_bits
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2117
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x2a
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
.LASF338:
	.string	"bit_num"
.LASF268:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF370:
	.string	"indx_"
.LASF295:
	.string	"chunk"
.LASF8:
	.string	"size_t"
.LASF68:
	.string	"QCmode"
.LASF0:
	.string	"sizetype"
.LASF357:
	.string	"changed"
.LASF132:
	.string	"MATCH_PAR_DUP"
.LASF352:
	.string	"indx1"
.LASF198:
	.string	"LSHIFTRT"
.LASF174:
	.string	"CONST_DOUBLE"
.LASF113:
	.string	"MODE_FLOAT"
.LASF62:
	.string	"HFmode"
.LASF145:
	.string	"SEQUENCE"
.LASF280:
	.string	"GR_FRAME_POINTER"
.LASF226:
	.string	"SQRT"
.LASF24:
	.string	"_IO_save_end"
.LASF211:
	.string	"ORDERED"
.LASF208:
	.string	"PRE_MODIFY"
.LASF82:
	.string	"V2SImode"
.LASF125:
	.string	"INSN_LIST"
.LASF274:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF235:
	.string	"CONSTANT_P_RTX"
.LASF212:
	.string	"UNEQ"
.LASF100:
	.string	"BLKmode"
.LASF330:
	.string	"bitmap_clear"
.LASF289:
	.string	"_obstack_chunk"
.LASF191:
	.string	"MINUS"
.LASF264:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF176:
	.string	"CONST_STRING"
.LASF17:
	.string	"_IO_write_base"
.LASF137:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF33:
	.string	"_lock"
.LASF213:
	.string	"UNGE"
.LASF283:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF303:
	.string	"extra_arg"
.LASF51:
	.string	"QImode"
.LASF222:
	.string	"FLOAT_TRUNCATE"
.LASF214:
	.string	"UNGT"
.LASF286:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF22:
	.string	"_IO_save_base"
.LASF101:
	.string	"CCmode"
.LASF106:
	.string	"CCFPmode"
.LASF227:
	.string	"SIGN_EXTRACT"
.LASF64:
	.string	"SFmode"
.LASF244:
	.string	"US_MINUS"
.LASF26:
	.string	"_chain"
.LASF88:
	.string	"V8QImode"
.LASF30:
	.string	"_cur_column"
.LASF327:
	.string	"bitmap_element_free"
.LASF285:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF301:
	.string	"chunkfun"
.LASF247:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF218:
	.string	"SIGN_EXTEND"
.LASF193:
	.string	"UDIV"
.LASF194:
	.string	"UMOD"
.LASF292:
	.string	"contents"
.LASF86:
	.string	"V4SImode"
.LASF2:
	.string	"long int"
.LASF228:
	.string	"ZERO_EXTRACT"
.LASF172:
	.string	"RESX"
.LASF271:
	.string	"NOTE_INSN_RANGE_END"
.LASF139:
	.string	"DEFINE_COMBINE"
.LASF116:
	.string	"MODE_COMPLEX_INT"
.LASF43:
	.string	"_IO_marker"
.LASF170:
	.string	"RETURN"
.LASF158:
	.string	"NOTE"
.LASF317:
	.string	"BITMAP_XOR"
.LASF157:
	.string	"CODE_LABEL"
.LASF180:
	.string	"SUBREG"
.LASF300:
	.string	"alignment_mask"
.LASF319:
	.string	"head"
.LASF73:
	.string	"TCmode"
.LASF287:
	.string	"GR_VIRTUAL_CFA"
.LASF83:
	.string	"V2DImode"
.LASF127:
	.string	"MATCH_SCRATCH"
.LASF371:
	.string	"bit_num_"
.LASF267:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF6:
	.string	"signed char"
.LASF223:
	.string	"FLOAT"
.LASF42:
	.string	"_IO_FILE"
.LASF313:
	.string	"bitmap_bits"
.LASF178:
	.string	"VALUE"
.LASF254:
	.string	"NOTE_INSN_DELETED"
.LASF245:
	.string	"SS_TRUNCATE"
.LASF123:
	.string	"INCLUDE"
.LASF134:
	.string	"DEFINE_INSN"
.LASF239:
	.string	"VEC_CONCAT"
.LASF110:
	.string	"mode_class"
.LASF360:
	.string	"bitmap_union_of_diff"
.LASF253:
	.string	"NOTE_INSN_BIAS"
.LASF4:
	.string	"unsigned char"
.LASF138:
	.string	"DEFINE_PEEPHOLE2"
.LASF152:
	.string	"ATTR_FLAG"
.LASF175:
	.string	"CONST_VECTOR"
.LASF325:
	.string	"bitmap_element_allocate"
.LASF215:
	.string	"UNLE"
.LASF384:
	.string	"__FUNCTION__"
.LASF187:
	.string	"IF_THEN_ELSE"
.LASF65:
	.string	"DFmode"
.LASF72:
	.string	"XCmode"
.LASF216:
	.string	"UNLT"
.LASF55:
	.string	"TImode"
.LASF332:
	.string	"from"
.LASF199:
	.string	"ROTATERT"
.LASF270:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF382:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF375:
	.string	"bitmap_obstack"
.LASF323:
	.string	"value"
.LASF265:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF105:
	.string	"CCZmode"
.LASF11:
	.string	"char"
.LASF329:
	.string	"bitmap_release_memory"
.LASF340:
	.string	"bitmap_set_bit"
.LASF256:
	.string	"NOTE_INSN_BLOCK_END"
.LASF164:
	.string	"UNSPEC_VOLATILE"
.LASF58:
	.string	"PHImode"
.LASF161:
	.string	"ASM_INPUT"
.LASF221:
	.string	"FLOAT_EXTEND"
.LASF383:
	.string	"_IO_lock_t"
.LASF315:
	.string	"BITMAP_AND_COMPL"
.LASF354:
	.string	"from1_tmp"
.LASF87:
	.string	"V4DImode"
.LASF231:
	.string	"RANGE_INFO"
.LASF294:
	.string	"chunk_size"
.LASF166:
	.string	"ADDR_DIFF_VEC"
.LASF365:
	.string	"bitmap_print"
.LASF14:
	.string	"_IO_read_ptr"
.LASF46:
	.string	"_pos"
.LASF183:
	.string	"LABEL_REF"
.LASF347:
	.string	"from1"
.LASF348:
	.string	"from2"
.LASF115:
	.string	"MODE_CC"
.LASF122:
	.string	"UNKNOWN"
.LASF378:
	.string	"stdout"
.LASF25:
	.string	"_markers"
.LASF299:
	.string	"temp"
.LASF363:
	.string	"file"
.LASF59:
	.string	"PSImode"
.LASF290:
	.string	"limit"
.LASF90:
	.string	"V8SImode"
.LASF284:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF148:
	.string	"ATTR"
.LASF366:
	.string	"prefix"
.LASF76:
	.string	"CSImode"
.LASF255:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF34:
	.string	"_offset"
.LASF381:
	.string	"bitmap.c"
.LASF171:
	.string	"TRAP_IF"
.LASF135:
	.string	"DEFINE_PEEPHOLE"
.LASF111:
	.string	"MODE_RANDOM"
.LASF181:
	.string	"STRICT_LOW_PART"
.LASF112:
	.string	"MODE_INT"
.LASF361:
	.string	"bitmap_initialize"
.LASF258:
	.string	"NOTE_INSN_LOOP_END"
.LASF279:
	.string	"GR_STACK_POINTER"
.LASF248:
	.string	"bitmap_head_def"
.LASF316:
	.string	"BITMAP_IOR"
.LASF149:
	.string	"SET_ATTR"
.LASF374:
	.string	"mask_"
.LASF3:
	.string	"long unsigned int"
.LASF153:
	.string	"INSN"
.LASF120:
	.string	"MAX_MODE_CLASS"
.LASF188:
	.string	"COND"
.LASF147:
	.string	"DEFINE_ATTR"
.LASF305:
	.string	"maybe_empty_object"
.LASF28:
	.string	"_flags2"
.LASF107:
	.string	"CCFPUmode"
.LASF126:
	.string	"MATCH_OPERAND"
.LASF16:
	.string	"_IO_read_base"
.LASF260:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF337:
	.string	"bitmap_clear_bit"
.LASF296:
	.string	"object_base"
.LASF189:
	.string	"COMPARE"
.LASF276:
	.string	"global_rtl_index"
.LASF41:
	.string	"_unused2"
.LASF220:
	.string	"TRUNCATE"
.LASF131:
	.string	"MATCH_OP_DUP"
.LASF63:
	.string	"TQFmode"
.LASF108:
	.string	"MAX_MACHINE_MODE"
.LASF302:
	.string	"freefun"
.LASF49:
	.string	"VOIDmode"
.LASF29:
	.string	"_old_offset"
.LASF358:
	.string	"bitmap_equal_p"
.LASF136:
	.string	"DEFINE_SPLIT"
.LASF288:
	.string	"GR_MAX"
.LASF118:
	.string	"MODE_VECTOR_INT"
.LASF306:
	.string	"alloc_failed"
.LASF335:
	.string	"to_elt"
.LASF60:
	.string	"PDImode"
.LASF80:
	.string	"V2QImode"
.LASF91:
	.string	"V8DImode"
.LASF314:
	.string	"BITMAP_AND"
.LASF48:
	.string	"long long int"
.LASF69:
	.string	"HCmode"
.LASF346:
	.string	"bitmap_operation"
.LASF121:
	.string	"rtx_code"
.LASF246:
	.string	"US_TRUNCATE"
.LASF66:
	.string	"XFmode"
.LASF229:
	.string	"HIGH"
.LASF278:
	.string	"GR_CC0"
.LASF93:
	.string	"V2SFmode"
.LASF307:
	.string	"bitmap_element_def"
.LASF162:
	.string	"ASM_OPERANDS"
.LASF77:
	.string	"CDImode"
.LASF372:
	.string	"word_num_"
.LASF146:
	.string	"ADDRESS"
.LASF206:
	.string	"POST_DEC"
.LASF19:
	.string	"_IO_write_end"
.LASF230:
	.string	"LO_SUM"
.LASF169:
	.string	"CALL"
.LASF85:
	.string	"V4HImode"
.LASF345:
	.string	"bitmap_last_set_bit"
.LASF343:
	.string	"bitmap_first_set_bit"
.LASF326:
	.string	"bitmap_element_zerop"
.LASF143:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF128:
	.string	"MATCH_DUP"
.LASF356:
	.string	"to_tmp"
.LASF377:
	.string	"bitmap_free"
.LASF61:
	.string	"QFmode"
.LASF182:
	.string	"CONCAT"
.LASF50:
	.string	"BImode"
.LASF20:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF282:
	.string	"GR_ARG_POINTER"
.LASF351:
	.string	"from2_ptr"
.LASF293:
	.string	"obstack"
.LASF70:
	.string	"SCmode"
.LASF233:
	.string	"RANGE_VAR"
.LASF52:
	.string	"HImode"
.LASF204:
	.string	"PRE_DEC"
.LASF156:
	.string	"BARRIER"
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
.LASF367:
	.string	"suffix"
.LASF197:
	.string	"ASHIFTRT"
.LASF45:
	.string	"_sbuf"
.LASF373:
	.string	"word_"
.LASF79:
	.string	"COImode"
.LASF309:
	.string	"bits"
.LASF84:
	.string	"V4QImode"
.LASF355:
	.string	"from2_tmp"
.LASF262:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF333:
	.string	"from_ptr"
.LASF140:
	.string	"DEFINE_EXPAND"
.LASF250:
	.string	"current"
.LASF13:
	.string	"_flags"
.LASF89:
	.string	"V8HImode"
.LASF251:
	.string	"indx"
.LASF297:
	.string	"next_free"
.LASF249:
	.string	"first"
.LASF40:
	.string	"_mode"
.LASF95:
	.string	"V4SFmode"
.LASF190:
	.string	"PLUS"
.LASF380:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF114:
	.string	"MODE_PARTIAL_INT"
.LASF192:
	.string	"MULT"
.LASF151:
	.string	"EQ_ATTR"
.LASF75:
	.string	"CHImode"
.LASF328:
	.string	"bitmap_element_link"
.LASF53:
	.string	"SImode"
.LASF376:
	.string	"bitmap_obstack_init"
.LASF196:
	.string	"ROTATE"
.LASF103:
	.string	"CCGOCmode"
.LASF342:
	.string	"bitmap_bit_p"
.LASF344:
	.string	"word"
.LASF12:
	.string	"FILE"
.LASF94:
	.string	"V2DFmode"
.LASF219:
	.string	"ZERO_EXTEND"
.LASF168:
	.string	"CLOBBER"
.LASF184:
	.string	"SYMBOL_REF"
.LASF320:
	.string	"element"
.LASF201:
	.string	"SMAX"
.LASF281:
	.string	"GR_HARD_FRAME_POINTER"
.LASF203:
	.string	"UMAX"
.LASF47:
	.string	"long long unsigned int"
.LASF310:
	.string	"bitmap_element"
.LASF266:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF238:
	.string	"VEC_SELECT"
.LASF9:
	.string	"__off_t"
.LASF185:
	.string	"ADDRESSOF"
.LASF155:
	.string	"CALL_INSN"
.LASF71:
	.string	"DCmode"
.LASF318:
	.string	"BITMAP_IOR_COMPL"
.LASF67:
	.string	"TFmode"
.LASF195:
	.string	"ASHIFT"
.LASF350:
	.string	"from1_ptr"
.LASF102:
	.string	"CCGCmode"
.LASF225:
	.string	"UNSIGNED_FIX"
.LASF186:
	.string	"QUEUED"
.LASF217:
	.string	"LTGT"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF261:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF96:
	.string	"V4DFmode"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF269:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF234:
	.string	"RANGE_LIVE"
.LASF304:
	.string	"use_extra_arg"
.LASF54:
	.string	"DImode"
.LASF339:
	.string	"word_num"
.LASF368:
	.string	"comma"
.LASF57:
	.string	"PQImode"
.LASF154:
	.string	"JUMP_INSN"
.LASF21:
	.string	"_IO_buf_end"
.LASF277:
	.string	"GR_PC"
.LASF379:
	.string	"bitmap_zero_bits"
.LASF259:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF331:
	.string	"bitmap_copy"
.LASF236:
	.string	"CALL_PLACEHOLDER"
.LASF117:
	.string	"MODE_COMPLEX_FLOAT"
.LASF369:
	.string	"ptr_"
.LASF311:
	.string	"bitmap_head"
.LASF119:
	.string	"MODE_VECTOR_FLOAT"
.LASF124:
	.string	"EXPR_LIST"
.LASF97:
	.string	"V8SFmode"
.LASF7:
	.string	"short int"
.LASF160:
	.string	"PARALLEL"
.LASF207:
	.string	"POST_INC"
.LASF237:
	.string	"VEC_MERGE"
.LASF104:
	.string	"CCNOmode"
.LASF312:
	.string	"bitmap"
.LASF324:
	.string	"__obj"
.LASF243:
	.string	"SS_MINUS"
.LASF74:
	.string	"CQImode"
.LASF31:
	.string	"_vtable_offset"
.LASF129:
	.string	"MATCH_OPERATOR"
.LASF109:
	.string	"machine_mode"
.LASF56:
	.string	"OImode"
.LASF179:
	.string	"SCRATCH"
.LASF322:
	.string	"__o1"
.LASF165:
	.string	"ADDR_VEC"
.LASF336:
	.string	"bitmap_find_bit"
.LASF205:
	.string	"PRE_INC"
.LASF241:
	.string	"SS_PLUS"
.LASF224:
	.string	"UNSIGNED_FLOAT"
.LASF92:
	.string	"V16QImode"
.LASF15:
	.string	"_IO_read_end"
.LASF232:
	.string	"RANGE_REG"
.LASF252:
	.string	"insn_note"
.LASF99:
	.string	"V16SFmode"
.LASF359:
	.string	"bitmap_ior_and_compl"
.LASF133:
	.string	"MATCH_INSN"
.LASF27:
	.string	"_fileno"
.LASF362:
	.string	"debug_bitmap_file"
.LASF210:
	.string	"UNORDERED"
.LASF5:
	.string	"short unsigned int"
.LASF298:
	.string	"chunk_limit"
.LASF349:
	.string	"operation"
.LASF209:
	.string	"POST_MODIFY"
.LASF200:
	.string	"SMIN"
.LASF144:
	.string	"DEFINE_COND_EXEC"
.LASF18:
	.string	"_IO_write_ptr"
.LASF364:
	.string	"debug_bitmap"
.LASF202:
	.string	"UMIN"
.LASF263:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF177:
	.string	"CONST"
.LASF167:
	.string	"PREFETCH"
.LASF150:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF341:
	.string	"bit_val"
.LASF130:
	.string	"MATCH_PARALLEL"
.LASF98:
	.string	"V8DFmode"
.LASF272:
	.string	"NOTE_INSN_LIVE"
.LASF334:
	.string	"to_ptr"
.LASF257:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF240:
	.string	"VEC_DUPLICATE"
.LASF173:
	.string	"CONST_INT"
.LASF321:
	.string	"__len"
.LASF308:
	.string	"next"
.LASF242:
	.string	"US_PLUS"
.LASF275:
	.string	"NOTE_INSN_MAX"
.LASF141:
	.string	"DEFINE_DELAY"
.LASF81:
	.string	"V2HImode"
.LASF353:
	.string	"indx2"
.LASF291:
	.string	"prev"
.LASF273:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF78:
	.string	"CTImode"
.LASF142:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF163:
	.string	"UNSPEC"
.LASF159:
	.string	"COND_EXEC"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
