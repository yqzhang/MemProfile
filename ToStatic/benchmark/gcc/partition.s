	.file	"partition.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 partition.c -mtune=generic -march=x86-64 -g
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
	.globl	partition_new
	.type	partition_new, @function
partition_new:
.LFB2:
	.file 1 "partition.c"
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# num_elements, num_elements
	.loc 1 48 0
	movl	-20(%rbp), %eax	# num_elements, tmp66
	subl	$1, %eax	#, D.5614
	movslq	%eax, %rdx	# D.5614, D.5615
	movq	%rdx, %rax	# D.5615, tmp67
	addq	%rax, %rax	# tmp67
	addq	%rdx, %rax	# D.5615, tmp67
	salq	$3, %rax	#, tmp68
	.loc 1 47 0
	addq	$32, %rax	#, D.5615
	.loc 1 46 0
	movq	%rax, %rdi	# D.5615,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp69, part
	.loc 1 49 0
	movq	-8(%rbp), %rax	# part, tmp70
	movl	-20(%rbp), %edx	# num_elements, tmp71
	movl	%edx, (%rax)	# tmp71, part_7->num_elements
	.loc 1 50 0
	movl	$0, -12(%rbp)	#, e
	jmp	.L2	#
.L3:
	.loc 1 52 0 discriminator 2
	movq	-8(%rbp), %rcx	# part, tmp72
	movl	-12(%rbp), %eax	# e, tmp74
	movslq	%eax, %rdx	# tmp74, tmp73
	movq	%rdx, %rax	# tmp73, tmp75
	addq	%rax, %rax	# tmp75
	addq	%rdx, %rax	# tmp73, tmp75
	salq	$3, %rax	#, tmp76
	leaq	(%rcx,%rax), %rdx	#, tmp77
	movl	-12(%rbp), %eax	# e, tmp78
	movl	%eax, 8(%rdx)	# tmp78, part_7->elements[e_1].class_element
	.loc 1 53 0 discriminator 2
	movl	-12(%rbp), %eax	# e, tmp80
	movslq	%eax, %rdx	# tmp80, tmp79
	movq	%rdx, %rax	# tmp79, tmp81
	addq	%rax, %rax	# tmp81
	addq	%rdx, %rax	# tmp79, tmp81
	salq	$3, %rax	#, tmp82
	movq	-8(%rbp), %rdx	# part, tmp84
	addq	%rdx, %rax	# tmp84, tmp83
	leaq	8(%rax), %rcx	#, D.5616
	movq	-8(%rbp), %rsi	# part, tmp85
	movl	-12(%rbp), %eax	# e, tmp87
	movslq	%eax, %rdx	# tmp87, tmp86
	movq	%rdx, %rax	# tmp86, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# tmp86, tmp88
	salq	$3, %rax	#, tmp89
	addq	%rsi, %rax	# tmp85, tmp90
	addq	$16, %rax	#, tmp91
	movq	%rcx, (%rax)	# D.5616, part_7->elements[e_1].next
	.loc 1 54 0 discriminator 2
	movq	-8(%rbp), %rcx	# part, tmp92
	movl	-12(%rbp), %eax	# e, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	%rcx, %rax	# tmp92, tmp97
	addq	$16, %rax	#, tmp98
	movl	$1, 8(%rax)	#, part_7->elements[e_1].class_count
	.loc 1 50 0 discriminator 2
	addl	$1, -12(%rbp)	#, e
.L2:
	.loc 1 50 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# e, tmp99
	cmpl	-20(%rbp), %eax	# num_elements, tmp99
	jl	.L3	#,
	.loc 1 57 0 is_stmt 1
	movq	-8(%rbp), %rax	# part, D.5617
	.loc 1 58 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	partition_new, .-partition_new
	.globl	partition_delete
	.type	partition_delete, @function
partition_delete:
.LFB3:
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# part, part
	.loc 1 66 0
	movq	-8(%rbp), %rax	# part, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 67 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	partition_delete, .-partition_delete
	.globl	partition_union
	.type	partition_union, @function
partition_union:
.LFB4:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# part, part
	movl	%esi, -60(%rbp)	# elem1, elem1
	movl	%edx, -64(%rbp)	# elem2, elem2
	.loc 1 80 0
	movq	-56(%rbp), %rax	# part, tmp100
	addq	$8, %rax	#, tmp99
	movq	%rax, -32(%rbp)	# tmp99, elements
	.loc 1 86 0
	movl	-60(%rbp), %eax	# elem1, tmp101
	movslq	%eax, %rdx	# tmp101, D.5619
	movq	%rdx, %rax	# D.5619, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# D.5619, tmp102
	salq	$3, %rax	#, tmp103
	movq	%rax, %rdx	# tmp102, D.5619
	movq	-32(%rbp), %rax	# elements, tmp104
	addq	%rdx, %rax	# D.5619, D.5620
	movl	(%rax), %eax	# _11->class_element, tmp105
	movl	%eax, -48(%rbp)	# tmp105, class_element
	.loc 1 89 0
	movl	-64(%rbp), %eax	# elem2, tmp106
	movslq	%eax, %rdx	# tmp106, D.5619
	movq	%rdx, %rax	# D.5619, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# D.5619, tmp107
	salq	$3, %rax	#, tmp108
	movq	%rax, %rdx	# tmp107, D.5619
	movq	-32(%rbp), %rax	# elements, tmp109
	addq	%rdx, %rax	# D.5619, D.5620
	movl	(%rax), %eax	# _16->class_element, D.5618
	cmpl	-48(%rbp), %eax	# class_element, D.5618
	jne	.L7	#,
	.loc 1 90 0
	movl	-48(%rbp), %eax	# class_element, D.5618
	jmp	.L8	#
.L7:
	.loc 1 94 0
	movl	-60(%rbp), %eax	# elem1, tmp110
	movslq	%eax, %rdx	# tmp110, D.5619
	movq	%rdx, %rax	# D.5619, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# D.5619, tmp111
	salq	$3, %rax	#, tmp112
	movq	%rax, %rdx	# tmp111, D.5619
	movq	-32(%rbp), %rax	# elements, tmp113
	addq	%rdx, %rax	# D.5619, D.5620
	movl	16(%rax), %ecx	# _21->class_count, D.5621
	movl	-64(%rbp), %eax	# elem2, tmp114
	movslq	%eax, %rdx	# tmp114, D.5619
	movq	%rdx, %rax	# D.5619, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# D.5619, tmp115
	salq	$3, %rax	#, tmp116
	movq	%rax, %rdx	# tmp115, D.5619
	movq	-32(%rbp), %rax	# elements, tmp117
	addq	%rdx, %rax	# D.5619, D.5620
	movl	16(%rax), %eax	# _25->class_count, D.5621
	cmpl	%eax, %ecx	# D.5621, D.5621
	jae	.L9	#,
.LBB2:
	.loc 1 96 0
	movl	-60(%rbp), %eax	# elem1, tmp118
	movl	%eax, -44(%rbp)	# tmp118, temp
	.loc 1 97 0
	movl	-64(%rbp), %eax	# elem2, tmp119
	movl	%eax, -60(%rbp)	# tmp119, elem1
	.loc 1 98 0
	movl	-44(%rbp), %eax	# temp, tmp120
	movl	%eax, -64(%rbp)	# tmp120, elem2
	.loc 1 99 0
	movl	-60(%rbp), %eax	# elem1, tmp121
	movslq	%eax, %rdx	# tmp121, D.5619
	movq	%rdx, %rax	# D.5619, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# D.5619, tmp122
	salq	$3, %rax	#, tmp123
	movq	%rax, %rdx	# tmp122, D.5619
	movq	-32(%rbp), %rax	# elements, tmp124
	addq	%rdx, %rax	# D.5619, D.5620
	movl	(%rax), %eax	# _32->class_element, tmp125
	movl	%eax, -48(%rbp)	# tmp125, class_element
.L9:
.LBE2:
	.loc 1 102 0
	movl	-60(%rbp), %eax	# elem1, tmp126
	movslq	%eax, %rdx	# tmp126, D.5619
	movq	%rdx, %rax	# D.5619, tmp127
	addq	%rax, %rax	# tmp127
	addq	%rdx, %rax	# D.5619, tmp127
	salq	$3, %rax	#, tmp128
	movq	%rax, %rdx	# tmp127, D.5619
	movq	-32(%rbp), %rax	# elements, tmp132
	addq	%rdx, %rax	# D.5619, tmp131
	movq	%rax, -24(%rbp)	# tmp131, e1
	.loc 1 103 0
	movl	-64(%rbp), %eax	# elem2, tmp133
	movslq	%eax, %rdx	# tmp133, D.5619
	movq	%rdx, %rax	# D.5619, tmp134
	addq	%rax, %rax	# tmp134
	addq	%rdx, %rax	# D.5619, tmp134
	salq	$3, %rax	#, tmp135
	movq	%rax, %rdx	# tmp134, D.5619
	movq	-32(%rbp), %rax	# elements, tmp139
	addq	%rdx, %rax	# D.5619, tmp138
	movq	%rax, -16(%rbp)	# tmp138, e2
	.loc 1 107 0
	movl	-48(%rbp), %eax	# class_element, tmp140
	movslq	%eax, %rdx	# tmp140, D.5619
	movq	%rdx, %rax	# D.5619, tmp141
	addq	%rax, %rax	# tmp141
	addq	%rdx, %rax	# D.5619, tmp141
	salq	$3, %rax	#, tmp142
	movq	%rax, %rdx	# tmp141, D.5619
	movq	-32(%rbp), %rax	# elements, tmp143
	leaq	(%rdx,%rax), %rcx	#, D.5620
	movl	-48(%rbp), %eax	# class_element, tmp144
	movslq	%eax, %rdx	# tmp144, D.5619
	movq	%rdx, %rax	# D.5619, tmp145
	addq	%rax, %rax	# tmp145
	addq	%rdx, %rax	# D.5619, tmp145
	salq	$3, %rax	#, tmp146
	movq	%rax, %rdx	# tmp145, D.5619
	movq	-32(%rbp), %rax	# elements, tmp147
	addq	%rdx, %rax	# D.5619, D.5620
	movl	16(%rax), %esi	# _45->class_count, D.5621
	movq	-16(%rbp), %rax	# e2, tmp148
	movl	(%rax), %eax	# e2_39->class_element, D.5618
	movslq	%eax, %rdx	# D.5618, D.5619
	movq	%rdx, %rax	# D.5619, tmp149
	addq	%rax, %rax	# tmp149
	addq	%rdx, %rax	# D.5619, tmp149
	salq	$3, %rax	#, tmp150
	movq	%rax, %rdx	# tmp149, D.5619
	movq	-32(%rbp), %rax	# elements, tmp151
	addq	%rdx, %rax	# D.5619, D.5620
	movl	16(%rax), %eax	# _50->class_count, D.5621
	addl	%esi, %eax	# D.5621, D.5621
	movl	%eax, 16(%rcx)	# D.5621, _42->class_count
	.loc 1 110 0
	movq	-16(%rbp), %rax	# e2, tmp152
	movl	-48(%rbp), %edx	# class_element, tmp153
	movl	%edx, (%rax)	# tmp153, e2_39->class_element
	.loc 1 111 0
	movq	-16(%rbp), %rax	# e2, tmp154
	movq	8(%rax), %rax	# e2_39->next, tmp155
	movq	%rax, -40(%rbp)	# tmp155, p
	jmp	.L10	#
.L11:
	.loc 1 112 0 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp156
	movl	-48(%rbp), %edx	# class_element, tmp157
	movl	%edx, (%rax)	# tmp157, p_3->class_element
	.loc 1 111 0 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp158
	movq	8(%rax), %rax	# p_3->next, tmp159
	movq	%rax, -40(%rbp)	# tmp159, p
.L10:
	.loc 1 111 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp160
	cmpq	-16(%rbp), %rax	# e2, tmp160
	jne	.L11	#,
	.loc 1 116 0 is_stmt 1
	movq	-24(%rbp), %rax	# e1, tmp161
	movq	8(%rax), %rax	# e1_36->next, tmp162
	movq	%rax, -8(%rbp)	# tmp162, old_next
	.loc 1 117 0
	movq	-16(%rbp), %rax	# e2, tmp163
	movq	8(%rax), %rdx	# e2_39->next, D.5620
	movq	-24(%rbp), %rax	# e1, tmp164
	movq	%rdx, 8(%rax)	# D.5620, e1_36->next
	.loc 1 118 0
	movq	-16(%rbp), %rax	# e2, tmp165
	movq	-8(%rbp), %rdx	# old_next, tmp166
	movq	%rdx, 8(%rax)	# tmp166, e2_39->next
	.loc 1 120 0
	movl	-48(%rbp), %eax	# class_element, D.5618
.L8:
	.loc 1 121 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	partition_union, .-partition_union
	.type	elem_compare, @function
elem_compare:
.LFB5:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# elem1, elem1
	movq	%rsi, -32(%rbp)	# elem2, elem2
	.loc 1 131 0
	movq	-24(%rbp), %rax	# elem1, tmp61
	movl	(%rax), %eax	# MEM[(const int *)elem1_2(D)], tmp62
	movl	%eax, -8(%rbp)	# tmp62, e1
	.loc 1 132 0
	movq	-32(%rbp), %rax	# elem2, tmp63
	movl	(%rax), %eax	# MEM[(const int *)elem2_4(D)], tmp64
	movl	%eax, -4(%rbp)	# tmp64, e2
	.loc 1 133 0
	movl	-8(%rbp), %eax	# e1, tmp65
	cmpl	-4(%rbp), %eax	# e2, tmp65
	jge	.L13	#,
	.loc 1 134 0
	movl	$-1, %eax	#, D.5622
	jmp	.L14	#
.L13:
	.loc 1 135 0
	movl	-8(%rbp), %eax	# e1, tmp66
	cmpl	-4(%rbp), %eax	# e2, tmp66
	jle	.L15	#,
	.loc 1 136 0
	movl	$1, %eax	#, D.5622
	jmp	.L14	#
.L15:
	.loc 1 138 0
	movl	$0, %eax	#, D.5622
.L14:
	.loc 1 139 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	elem_compare, .-elem_compare
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	" %d"
	.text
	.globl	partition_print
	.type	partition_print, @function
partition_print:
.LFB6:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# part, part
	movq	%rsi, -64(%rbp)	# fp, fp
	.loc 1 150 0
	movq	-56(%rbp), %rax	# part, tmp92
	movl	(%rax), %eax	# part_6(D)->num_elements, tmp93
	movl	%eax, -32(%rbp)	# tmp93, num_elements
	.loc 1 151 0
	movq	-56(%rbp), %rax	# part, tmp97
	addq	$8, %rax	#, tmp96
	movq	%rax, -24(%rbp)	# tmp96, elements
	.loc 1 156 0
	movl	-32(%rbp), %eax	# num_elements, tmp98
	cltq
	movq	%rax, %rdi	# D.5623,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp99, done
	.loc 1 157 0
	movl	-32(%rbp), %eax	# num_elements, tmp100
	movslq	%eax, %rdx	# tmp100, D.5623
	movq	-16(%rbp), %rax	# done, tmp101
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	memset	#
	.loc 1 160 0
	movl	-32(%rbp), %eax	# num_elements, tmp102
	cltq
	salq	$2, %rax	#, D.5623
	movq	%rax, %rdi	# D.5623,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp103, class_elements
	.loc 1 162 0
	movq	-64(%rbp), %rax	# fp, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$91, %edi	#,
	call	fputc	#
	.loc 1 163 0
	movl	$0, -44(%rbp)	#, e
	jmp	.L17	#
.L25:
	.loc 1 165 0
	movl	-44(%rbp), %eax	# e, tmp105
	movslq	%eax, %rdx	# tmp105, D.5624
	movq	-16(%rbp), %rax	# done, tmp106
	addq	%rdx, %rax	# D.5624, D.5625
	movzbl	(%rax), %eax	# *_18, D.5626
	testb	%al, %al	# D.5626
	jne	.L18	#,
.LBB3:
	.loc 1 167 0
	movl	-44(%rbp), %eax	# e, tmp107
	movl	%eax, -40(%rbp)	# tmp107, c
	.loc 1 168 0
	movl	-44(%rbp), %eax	# e, tmp108
	movslq	%eax, %rdx	# tmp108, D.5623
	movq	%rdx, %rax	# D.5623, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# D.5623, tmp109
	salq	$3, %rax	#, tmp110
	movq	%rax, %rdx	# tmp109, D.5623
	movq	-24(%rbp), %rax	# elements, tmp111
	addq	%rdx, %rax	# D.5623, D.5627
	movl	(%rax), %eax	# _23->class_element, D.5628
	movslq	%eax, %rdx	# D.5628, D.5623
	movq	%rdx, %rax	# D.5623, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# D.5623, tmp112
	salq	$3, %rax	#, tmp113
	movq	%rax, %rdx	# tmp112, D.5623
	movq	-24(%rbp), %rax	# elements, tmp114
	addq	%rdx, %rax	# D.5623, D.5627
	movl	16(%rax), %eax	# _27->class_count, D.5629
	movl	%eax, -28(%rbp)	# D.5629, count
	.loc 1 172 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L19	#
.L20:
	.loc 1 173 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5623
	movq	-8(%rbp), %rax	# class_elements, tmp116
	addq	%rax, %rdx	# tmp116, D.5630
	movl	-40(%rbp), %eax	# c, tmp117
	movl	%eax, (%rdx)	# tmp117, *_33
	.loc 1 174 0 discriminator 2
	movl	-40(%rbp), %eax	# c, tmp118
	movslq	%eax, %rdx	# tmp118, D.5624
	movq	-16(%rbp), %rax	# done, tmp119
	addq	%rdx, %rax	# D.5624, D.5625
	movb	$1, (%rax)	#, *_35
	.loc 1 175 0 discriminator 2
	movl	-40(%rbp), %eax	# c, tmp120
	movslq	%eax, %rdx	# tmp120, D.5623
	movq	%rdx, %rax	# D.5623, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# D.5623, tmp121
	salq	$3, %rax	#, tmp122
	movq	%rax, %rdx	# tmp121, D.5623
	movq	-24(%rbp), %rax	# elements, tmp123
	addq	%rdx, %rax	# D.5623, D.5627
	movq	8(%rax), %rax	# _38->next, D.5627
	movq	%rax, %rdx	# D.5627, D.5631
	movq	-24(%rbp), %rax	# elements, elements.0
	subq	%rax, %rdx	# elements.0, D.5631
	movq	%rdx, %rax	# D.5631, D.5631
	sarq	$3, %rax	#, tmp124
	movq	%rax, %rdx	# tmp124, tmp124
	movabsq	$-6148914691236517205, %rax	#, tmp126
	imulq	%rdx, %rax	# tmp124, tmp125
	movl	%eax, -40(%rbp)	# D.5631, c
	.loc 1 172 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L19:
	.loc 1 172 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp127
	cmpl	-28(%rbp), %eax	# count, tmp127
	jl	.L20	#,
	.loc 1 178 0 is_stmt 1
	movl	-28(%rbp), %esi	# count, tmp128
	movq	-8(%rbp), %rax	# class_elements, tmp129
	movl	$elem_compare, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp129,
	call	specqsort	#
	.loc 1 181 0
	movq	-64(%rbp), %rax	# fp, tmp130
	movq	%rax, %rsi	# tmp130,
	movl	$40, %edi	#,
	call	fputc	#
	.loc 1 182 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L21	#
.L24:
	.loc 1 183 0
	movl	-36(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5623
	movq	-8(%rbp), %rax	# class_elements, tmp132
	addq	%rdx, %rax	# D.5623, D.5630
	movl	(%rax), %edx	# *_49, D.5628
	cmpl	$0, -36(%rbp)	#, i
	jne	.L22	#,
	.loc 1 183 0 is_stmt 0 discriminator 1
	movl	$.LC0, %eax	#, iftmp.1
	jmp	.L23	#
.L22:
	.loc 1 183 0 discriminator 2
	movl	$.LC1, %eax	#, iftmp.1
.L23:
	.loc 1 183 0 discriminator 3
	movq	-64(%rbp), %rcx	# fp, tmp133
	movq	%rax, %rsi	# iftmp.1,
	movq	%rcx, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 182 0 is_stmt 1 discriminator 3
	addl	$1, -36(%rbp)	#, i
.L21:
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp134
	cmpl	-28(%rbp), %eax	# count, tmp134
	jl	.L24	#,
	.loc 1 184 0 is_stmt 1
	movq	-64(%rbp), %rax	# fp, tmp135
	movq	%rax, %rsi	# tmp135,
	movl	$41, %edi	#,
	call	fputc	#
.L18:
.LBE3:
	.loc 1 163 0
	addl	$1, -44(%rbp)	#, e
.L17:
	.loc 1 163 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# e, tmp136
	cmpl	-32(%rbp), %eax	# num_elements, tmp136
	jl	.L25	#,
	.loc 1 186 0 is_stmt 1
	movq	-64(%rbp), %rax	# fp, tmp137
	movq	%rax, %rsi	# tmp137,
	movl	$93, %edi	#,
	call	fputc	#
	.loc 1 188 0
	movq	-16(%rbp), %rax	# done, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free	#
	.loc 1 189 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	partition_print, .-partition_print
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "partition.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x571
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x1
	.long	.LASF70
	.long	.LASF71
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x70
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x70
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x7
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xc2
	.uleb128 0x8
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x243
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x109
	.long	0x27b
	.byte	0x60
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x10b
	.long	0x281
	.byte	0x68
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x77
	.byte	0x78
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x54
	.byte	0x80
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x62
	.byte	0x82
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x119
	.long	0x287
	.byte	0x83
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x11d
	.long	0x297
	.byte	0x88
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x126
	.long	0x82
	.byte	0x90
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x3b
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.value	0x137
	.long	0x29d
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF72
	.byte	0x5
	.byte	0x9b
	.uleb128 0x8
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x27b
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x27b
	.byte	0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.byte	0xa3
	.long	0x281
	.byte	0x8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24a
	.uleb128 0x6
	.byte	0x8
	.long	0xc2
	.uleb128 0xc
	.long	0x95
	.long	0x297
	.uleb128 0xd
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x243
	.uleb128 0xc
	.long	0x95
	.long	0x2ad
	.uleb128 0xd
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x18
	.byte	0x6
	.byte	0x2e
	.long	0x2de
	.uleb128 0x9
	.long	.LASF50
	.byte	0x6
	.byte	0x32
	.long	0x2d
	.byte	0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x6
	.byte	0x35
	.long	0x2de
	.byte	0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x6
	.byte	0x38
	.long	0x5b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ad
	.uleb128 0x8
	.long	.LASF53
	.byte	0x20
	.byte	0x6
	.byte	0x3b
	.long	0x309
	.uleb128 0x9
	.long	.LASF54
	.byte	0x6
	.byte	0x3e
	.long	0x2d
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x6
	.byte	0x40
	.long	0x309
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x2ad
	.long	0x319
	.uleb128 0xd
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF56
	.byte	0x6
	.byte	0x41
	.long	0x324
	.uleb128 0x6
	.byte	0x8
	.long	0x2e4
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x29
	.long	0x319
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x374
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.byte	0x2a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"e"
	.byte	0x1
	.byte	0x2c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x2e
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.byte	0x3f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a0
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x40
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x45f
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x4c
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
	.long	.LASF61
	.byte	0x1
	.byte	0x4e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x50
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"e1"
	.byte	0x1
	.byte	0x51
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"e2"
	.byte	0x1
	.byte	0x52
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x53
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0x54
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.byte	0x56
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1
	.byte	0x60
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0x7f
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x80
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF61
	.byte	0x1
	.byte	0x81
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"e1"
	.byte	0x1
	.byte	0x83
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"e2"
	.byte	0x1
	.byte	0x84
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0x91
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x56e
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x92
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0x93
	.long	0x56e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x95
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.byte	0x96
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x97
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0x98
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"e"
	.byte	0x1
	.byte	0x99
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xa7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0xa8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb7
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
.LASF30:
	.string	"_flags2"
.LASF60:
	.string	"elem1"
.LASF61:
	.string	"elem2"
.LASF64:
	.string	"partition_delete"
.LASF26:
	.string	"_IO_save_end"
.LASF63:
	.string	"temp"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF0:
	.string	"sizetype"
.LASF36:
	.string	"_offset"
.LASF54:
	.string	"num_elements"
.LASF20:
	.string	"_IO_write_ptr"
.LASF15:
	.string	"_flags"
.LASF49:
	.string	"partition_elem"
.LASF58:
	.string	"partition_new"
.LASF22:
	.string	"_IO_buf_base"
.LASF27:
	.string	"_markers"
.LASF17:
	.string	"_IO_read_end"
.LASF53:
	.string	"partition_def"
.LASF71:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"long long int"
.LASF56:
	.string	"partition"
.LASF35:
	.string	"_lock"
.LASF57:
	.string	"part"
.LASF7:
	.string	"long int"
.LASF32:
	.string	"_cur_column"
.LASF48:
	.string	"_pos"
.LASF59:
	.string	"partition_union"
.LASF70:
	.string	"partition.c"
.LASF31:
	.string	"_old_offset"
.LASF2:
	.string	"unsigned char"
.LASF65:
	.string	"partition_print"
.LASF66:
	.string	"done"
.LASF67:
	.string	"class_elements"
.LASF5:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF19:
	.string	"_IO_write_base"
.LASF43:
	.string	"_unused2"
.LASF16:
	.string	"_IO_read_ptr"
.LASF23:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF44:
	.string	"_IO_FILE"
.LASF46:
	.string	"_next"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF50:
	.string	"class_element"
.LASF3:
	.string	"short unsigned int"
.LASF73:
	.string	"elem_compare"
.LASF1:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF29:
	.string	"_fileno"
.LASF28:
	.string	"_chain"
.LASF9:
	.string	"__off_t"
.LASF68:
	.string	"count"
.LASF25:
	.string	"_IO_backup_base"
.LASF52:
	.string	"class_count"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF62:
	.string	"old_next"
.LASF33:
	.string	"_vtable_offset"
.LASF55:
	.string	"elements"
.LASF24:
	.string	"_IO_save_base"
.LASF14:
	.string	"FILE"
.LASF47:
	.string	"_sbuf"
.LASF69:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF51:
	.string	"next"
.LASF72:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
