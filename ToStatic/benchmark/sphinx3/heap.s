	.file	"heap.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# heap.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
.LC0:
	.string	"heap.c"
	.text
	.globl	heap_new
	.type	heap_new, @function
heap_new:
.LFB2:
	.file 1 "heap.c"
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 97 0
	movl	$97, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$8, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp61, h
	.loc 1 98 0
	movq	-8(%rbp), %rax	# h, tmp62
	movq	$0, (%rax)	#, *h_1
	.loc 1 100 0
	movq	-8(%rbp), %rax	# h, D.3056
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	heap_new, .-heap_new
	.type	subheap_insert, @function
subheap_insert:
.LFB3:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# root, root
	movq	%rsi, -48(%rbp)	# data, data
	movl	%edx, -52(%rbp)	# val, val
	.loc 1 110 0
	cmpq	$0, -40(%rbp)	#, root
	jne	.L4	#,
	.loc 1 111 0
	movl	$111, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$40, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -16(%rbp)	# tmp74, h
	.loc 1 112 0
	movq	-16(%rbp), %rax	# h, tmp75
	movq	-48(%rbp), %rdx	# data, tmp76
	movq	%rdx, (%rax)	# tmp76, h_5->data
	.loc 1 113 0
	movq	-16(%rbp), %rax	# h, tmp77
	movl	-52(%rbp), %edx	# val, tmp78
	movl	%edx, 8(%rax)	# tmp78, h_5->val
	.loc 1 114 0
	movq	-16(%rbp), %rax	# h, tmp79
	movq	$0, 32(%rax)	#, h_5->r
	movq	-16(%rbp), %rax	# h, tmp80
	movq	32(%rax), %rdx	# h_5->r, D.3059
	movq	-16(%rbp), %rax	# h, tmp81
	movq	%rdx, 24(%rax)	# D.3059, h_5->l
	.loc 1 115 0
	movq	-16(%rbp), %rax	# h, tmp82
	movl	$0, 16(%rax)	#, h_5->nr
	movq	-16(%rbp), %rax	# h, tmp83
	movl	16(%rax), %edx	# h_5->nr, D.3060
	movq	-16(%rbp), %rax	# h, tmp84
	movl	%edx, 12(%rax)	# D.3060, h_5->nl
	.loc 1 116 0
	movq	-16(%rbp), %rax	# h, D.3058
	jmp	.L5	#
.L4:
	.loc 1 120 0
	movq	-40(%rbp), %rax	# root, tmp85
	movl	8(%rax), %eax	# root_4(D)->val, D.3060
	cmpl	-52(%rbp), %eax	# val, D.3060
	jle	.L6	#,
	.loc 1 121 0
	movq	-40(%rbp), %rax	# root, tmp86
	movq	(%rax), %rax	# root_4(D)->data, tmp87
	movq	%rax, -8(%rbp)	# tmp87, tmpdata
	.loc 1 122 0
	movq	-40(%rbp), %rax	# root, tmp88
	movl	8(%rax), %eax	# root_4(D)->val, tmp89
	movl	%eax, -20(%rbp)	# tmp89, tmpval
	.loc 1 123 0
	movq	-40(%rbp), %rax	# root, tmp90
	movq	-48(%rbp), %rdx	# data, tmp91
	movq	%rdx, (%rax)	# tmp91, root_4(D)->data
	.loc 1 124 0
	movq	-40(%rbp), %rax	# root, tmp92
	movl	-52(%rbp), %edx	# val, tmp93
	movl	%edx, 8(%rax)	# tmp93, root_4(D)->val
	.loc 1 125 0
	movq	-8(%rbp), %rax	# tmpdata, tmp94
	movq	%rax, -48(%rbp)	# tmp94, data
	.loc 1 126 0
	movl	-20(%rbp), %eax	# tmpval, tmp95
	movl	%eax, -52(%rbp)	# tmp95, val
.L6:
	.loc 1 130 0
	movq	-40(%rbp), %rax	# root, tmp96
	movl	12(%rax), %edx	# root_4(D)->nl, D.3060
	movq	-40(%rbp), %rax	# root, tmp97
	movl	16(%rax), %eax	# root_4(D)->nr, D.3060
	cmpl	%eax, %edx	# D.3060, D.3060
	jle	.L7	#,
	.loc 1 131 0
	movq	-40(%rbp), %rax	# root, tmp98
	movq	32(%rax), %rax	# root_4(D)->r, D.3059
	movl	-52(%rbp), %edx	# val, tmp99
	movq	-48(%rbp), %rcx	# data, tmp100
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.3059,
	call	subheap_insert	#
	movq	-40(%rbp), %rdx	# root, tmp101
	movq	%rax, 32(%rdx)	# D.3058, root_4(D)->r
	.loc 1 132 0
	movq	-40(%rbp), %rax	# root, tmp102
	movl	16(%rax), %eax	# root_4(D)->nr, D.3060
	leal	1(%rax), %edx	#, D.3060
	movq	-40(%rbp), %rax	# root, tmp103
	movl	%edx, 16(%rax)	# D.3060, root_4(D)->nr
	jmp	.L8	#
.L7:
	.loc 1 134 0
	movq	-40(%rbp), %rax	# root, tmp104
	movq	24(%rax), %rax	# root_4(D)->l, D.3059
	movl	-52(%rbp), %edx	# val, tmp105
	movq	-48(%rbp), %rcx	# data, tmp106
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# D.3059,
	call	subheap_insert	#
	movq	-40(%rbp), %rdx	# root, tmp107
	movq	%rax, 24(%rdx)	# D.3058, root_4(D)->l
	.loc 1 135 0
	movq	-40(%rbp), %rax	# root, tmp108
	movl	12(%rax), %eax	# root_4(D)->nl, D.3060
	leal	1(%rax), %edx	#, D.3060
	movq	-40(%rbp), %rax	# root, tmp109
	movl	%edx, 12(%rax)	# D.3060, root_4(D)->nl
.L8:
	.loc 1 138 0
	movq	-40(%rbp), %rax	# root, D.3058
.L5:
	.loc 1 139 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	subheap_insert, .-subheap_insert
	.globl	heap_insert
	.type	heap_insert, @function
heap_insert:
.LFB4:
	.loc 1 143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# data, data
	movl	%edx, -36(%rbp)	# val, val
	.loc 1 146 0
	movq	-24(%rbp), %rax	# heap, tmp63
	movq	%rax, -8(%rbp)	# tmp63, hp
	.loc 1 148 0
	movq	-8(%rbp), %rax	# hp, tmp64
	movq	(%rax), %rax	# *hp_2, D.3061
	movl	-36(%rbp), %edx	# val, tmp65
	movq	-32(%rbp), %rcx	# data, tmp66
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# D.3061,
	call	subheap_insert	#
	movq	-8(%rbp), %rdx	# hp, tmp67
	movq	%rax, (%rdx)	# D.3061, *hp_2
	.loc 1 150 0
	movl	$0, %eax	#, D.3062
	.loc 1 151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	heap_insert, .-heap_insert
	.type	subheap_pop, @function
subheap_pop:
.LFB5:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# root, root
	.loc 1 159 0
	movq	-24(%rbp), %rax	# root, tmp78
	movq	24(%rax), %rax	# root_2(D)->l, tmp79
	movq	%rax, -16(%rbp)	# tmp79, l
	.loc 1 160 0
	movq	-24(%rbp), %rax	# root, tmp80
	movq	32(%rax), %rax	# root_2(D)->r, tmp81
	movq	%rax, -8(%rbp)	# tmp81, r
	.loc 1 162 0
	cmpq	$0, -16(%rbp)	#, l
	jne	.L12	#,
	.loc 1 163 0
	cmpq	$0, -8(%rbp)	#, r
	jne	.L13	#,
	.loc 1 164 0
	movq	-24(%rbp), %rax	# root, tmp82
	movl	$164, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$40, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	__myfree__	#
	.loc 1 165 0
	movl	$0, %eax	#, D.3063
	jmp	.L14	#
.L13:
	.loc 1 167 0
	movq	-8(%rbp), %rax	# r, tmp83
	movq	(%rax), %rdx	# r_4->data, D.3064
	movq	-24(%rbp), %rax	# root, tmp84
	movq	%rdx, (%rax)	# D.3064, root_2(D)->data
	.loc 1 168 0
	movq	-8(%rbp), %rax	# r, tmp85
	movl	8(%rax), %edx	# r_4->val, D.3065
	movq	-24(%rbp), %rax	# root, tmp86
	movl	%edx, 8(%rax)	# D.3065, root_2(D)->val
	.loc 1 169 0
	movq	-8(%rbp), %rax	# r, tmp87
	movq	%rax, %rdi	# tmp87,
	call	subheap_pop	#
	movq	-24(%rbp), %rdx	# root, tmp88
	movq	%rax, 32(%rdx)	# D.3063, root_2(D)->r
	.loc 1 170 0
	movq	-24(%rbp), %rax	# root, tmp89
	movl	16(%rax), %eax	# root_2(D)->nr, D.3065
	leal	-1(%rax), %edx	#, D.3065
	movq	-24(%rbp), %rax	# root, tmp90
	movl	%edx, 16(%rax)	# D.3065, root_2(D)->nr
	jmp	.L15	#
.L12:
	.loc 1 173 0
	cmpq	$0, -8(%rbp)	#, r
	je	.L16	#,
	.loc 1 173 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# l, tmp91
	movl	8(%rax), %edx	# l_3->val, D.3065
	movq	-8(%rbp), %rax	# r, tmp92
	movl	8(%rax), %eax	# r_4->val, D.3065
	cmpl	%eax, %edx	# D.3065, D.3065
	jge	.L17	#,
.L16:
	.loc 1 174 0 is_stmt 1
	movq	-16(%rbp), %rax	# l, tmp93
	movq	(%rax), %rdx	# l_3->data, D.3064
	movq	-24(%rbp), %rax	# root, tmp94
	movq	%rdx, (%rax)	# D.3064, root_2(D)->data
	.loc 1 175 0
	movq	-16(%rbp), %rax	# l, tmp95
	movl	8(%rax), %edx	# l_3->val, D.3065
	movq	-24(%rbp), %rax	# root, tmp96
	movl	%edx, 8(%rax)	# D.3065, root_2(D)->val
	.loc 1 176 0
	movq	-16(%rbp), %rax	# l, tmp97
	movq	%rax, %rdi	# tmp97,
	call	subheap_pop	#
	movq	-24(%rbp), %rdx	# root, tmp98
	movq	%rax, 24(%rdx)	# D.3063, root_2(D)->l
	.loc 1 177 0
	movq	-24(%rbp), %rax	# root, tmp99
	movl	12(%rax), %eax	# root_2(D)->nl, D.3065
	leal	-1(%rax), %edx	#, D.3065
	movq	-24(%rbp), %rax	# root, tmp100
	movl	%edx, 12(%rax)	# D.3065, root_2(D)->nl
	jmp	.L15	#
.L17:
	.loc 1 179 0
	movq	-8(%rbp), %rax	# r, tmp101
	movq	(%rax), %rdx	# r_4->data, D.3064
	movq	-24(%rbp), %rax	# root, tmp102
	movq	%rdx, (%rax)	# D.3064, root_2(D)->data
	.loc 1 180 0
	movq	-8(%rbp), %rax	# r, tmp103
	movl	8(%rax), %edx	# r_4->val, D.3065
	movq	-24(%rbp), %rax	# root, tmp104
	movl	%edx, 8(%rax)	# D.3065, root_2(D)->val
	.loc 1 181 0
	movq	-8(%rbp), %rax	# r, tmp105
	movq	%rax, %rdi	# tmp105,
	call	subheap_pop	#
	movq	-24(%rbp), %rdx	# root, tmp106
	movq	%rax, 32(%rdx)	# D.3063, root_2(D)->r
	.loc 1 182 0
	movq	-24(%rbp), %rax	# root, tmp107
	movl	16(%rax), %eax	# root_2(D)->nr, D.3065
	leal	-1(%rax), %edx	#, D.3065
	movq	-24(%rbp), %rax	# root, tmp108
	movl	%edx, 16(%rax)	# D.3065, root_2(D)->nr
.L15:
	.loc 1 186 0
	movq	-24(%rbp), %rax	# root, D.3063
.L14:
	.loc 1 187 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	subheap_pop, .-subheap_pop
	.globl	heap_pop
	.type	heap_pop, @function
heap_pop:
.LFB6:
	.loc 1 191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# data, data
	movq	%rdx, -40(%rbp)	# val, val
	.loc 1 194 0
	movq	-24(%rbp), %rax	# heap, tmp64
	movq	%rax, -16(%rbp)	# tmp64, hp
	.loc 1 195 0
	movq	-16(%rbp), %rax	# hp, tmp65
	movq	(%rax), %rax	# *hp_3, tmp66
	movq	%rax, -8(%rbp)	# tmp66, h
	.loc 1 197 0
	cmpq	$0, -8(%rbp)	#, h
	jne	.L19	#,
	.loc 1 198 0
	movl	$0, %eax	#, D.3066
	jmp	.L20	#
.L19:
	.loc 1 200 0
	movq	-8(%rbp), %rax	# h, tmp67
	movq	(%rax), %rdx	# h_4->data, D.3067
	movq	-32(%rbp), %rax	# data, tmp68
	movq	%rdx, (%rax)	# D.3067, *data_7(D)
	.loc 1 201 0
	movq	-8(%rbp), %rax	# h, tmp69
	movl	8(%rax), %edx	# h_4->val, D.3068
	movq	-40(%rbp), %rax	# val, tmp70
	movl	%edx, (%rax)	# D.3068, *val_9(D)
	.loc 1 203 0
	movq	-8(%rbp), %rax	# h, tmp71
	movq	%rax, %rdi	# tmp71,
	call	subheap_pop	#
	movq	-16(%rbp), %rdx	# hp, tmp72
	movq	%rax, (%rdx)	# D.3069, *hp_3
	.loc 1 205 0
	movl	$1, %eax	#, D.3066
.L20:
	.loc 1 206 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	heap_pop, .-heap_pop
	.globl	heap_top
	.type	heap_top, @function
heap_top:
.LFB7:
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# data, data
	movq	%rdx, -40(%rbp)	# val, val
	.loc 1 213 0
	movq	-24(%rbp), %rax	# heap, tmp63
	movq	%rax, -16(%rbp)	# tmp63, hp
	.loc 1 214 0
	movq	-16(%rbp), %rax	# hp, tmp64
	movq	(%rax), %rax	# *hp_3, tmp65
	movq	%rax, -8(%rbp)	# tmp65, h
	.loc 1 216 0
	cmpq	$0, -8(%rbp)	#, h
	jne	.L22	#,
	.loc 1 217 0
	movl	$0, %eax	#, D.3070
	jmp	.L23	#
.L22:
	.loc 1 219 0
	movq	-8(%rbp), %rax	# h, tmp66
	movq	(%rax), %rdx	# h_4->data, D.3071
	movq	-32(%rbp), %rax	# data, tmp67
	movq	%rdx, (%rax)	# D.3071, *data_7(D)
	.loc 1 220 0
	movq	-8(%rbp), %rax	# h, tmp68
	movl	8(%rax), %edx	# h_4->val, D.3072
	movq	-40(%rbp), %rax	# val, tmp69
	movl	%edx, (%rax)	# D.3072, *val_9(D)
	.loc 1 222 0
	movl	$1, %eax	#, D.3070
.L23:
	.loc 1 223 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	heap_top, .-heap_top
	.globl	heap_destroy
	.type	heap_destroy, @function
heap_destroy:
.LFB8:
	.loc 1 227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	.loc 1 232 0
	nop
.L25:
	.loc 1 232 0 is_stmt 0 discriminator 1
	leaq	-12(%rbp), %rdx	#, tmp62
	leaq	-8(%rbp), %rcx	#, tmp63
	movq	-24(%rbp), %rax	# heap, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	heap_pop	#
	testl	%eax, %eax	# D.3073
	jg	.L25	#,
	.loc 1 233 0 is_stmt 1
	movq	-24(%rbp), %rax	# heap, tmp65
	movq	%rax, %rdi	# tmp65,
	call	ckd_free	#
	.loc 1 235 0
	movl	$0, %eax	#, D.3074
	.loc 1 236 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	heap_destroy, .-heap_destroy
.Letext0:
	.file 2 "libutil/prim_type.h"
	.file 3 "libutil/heap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x372
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF27
	.byte	0x1
	.long	.LASF28
	.long	.LASF29
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0x3d
	.long	0x6c
	.uleb128 0x6
	.long	.LASF30
	.byte	0x28
	.byte	0x1
	.byte	0x42
	.long	0xf6
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x43
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.string	"val"
	.byte	0x1
	.byte	0x44
	.long	0x83
	.byte	0x8
	.uleb128 0x8
	.string	"nl"
	.byte	0x1
	.byte	0x46
	.long	0x83
	.byte	0xc
	.uleb128 0x8
	.string	"nr"
	.byte	0x1
	.byte	0x46
	.long	0x83
	.byte	0x10
	.uleb128 0x8
	.string	"l"
	.byte	0x1
	.byte	0x47
	.long	0xf6
	.byte	0x18
	.uleb128 0x8
	.string	"r"
	.byte	0x1
	.byte	0x48
	.long	0xf6
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xa7
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x49
	.long	0xa7
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0x5d
	.long	0x9c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x135
	.uleb128 0xb
	.string	"h"
	.byte	0x1
	.byte	0x5f
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x13b
	.uleb128 0x9
	.byte	0x8
	.long	0xfc
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x68
	.long	0x13b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x68
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0x68
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0x68
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.string	"h"
	.byte	0x1
	.byte	0x6a
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF18
	.byte	0x1
	.byte	0x6b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF19
	.byte	0x1
	.byte	0x6c
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x8e
	.long	0x83
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0x8e
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0x8e
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0x8e
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"hp"
	.byte	0x1
	.byte	0x90
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0x9a
	.long	0x13b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x257
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x9a
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"l"
	.byte	0x1
	.byte	0x9c
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.byte	0x9c
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0xbe
	.long	0x83
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xbe
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0xbe
	.long	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0xbe
	.long	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"hp"
	.byte	0x1
	.byte	0xc0
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"h"
	.byte	0x1
	.byte	0xc0
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x6c
	.uleb128 0x9
	.byte	0x8
	.long	0x83
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0xd1
	.long	0x83
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xd1
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0xd1
	.long	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0xd1
	.long	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"hp"
	.byte	0x1
	.byte	0xd3
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"h"
	.byte	0x1
	.byte	0xd3
	.long	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.byte	0xe2
	.long	0x83
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xe2
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF15
	.byte	0x1
	.byte	0xe4
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.byte	0xe5
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
.LASF18:
	.string	"tmpdata"
.LASF30:
	.string	"heap_s"
.LASF14:
	.string	"heap_t"
.LASF28:
	.string	"heap.c"
.LASF19:
	.string	"tmpval"
.LASF2:
	.string	"short unsigned int"
.LASF25:
	.string	"heap_pop"
.LASF24:
	.string	"subheap_pop"
.LASF20:
	.string	"heap_new"
.LASF11:
	.string	"float"
.LASF15:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"int32"
.LASF29:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"double"
.LASF17:
	.string	"root"
.LASF21:
	.string	"heap_insert"
.LASF26:
	.string	"heap_top"
.LASF3:
	.string	"unsigned int"
.LASF31:
	.string	"heap_destroy"
.LASF10:
	.string	"long long unsigned int"
.LASF22:
	.string	"heap"
.LASF23:
	.string	"subheap_insert"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF27:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF16:
	.string	"heapnode_t"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
