	.file	"fibheap.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 fibheap.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	fibheap_new
	.type	fibheap_new, @function
fibheap_new:
.LFB2:
	.file 1 "fibheap.c"
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 58 0
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	.loc 1 59 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fibheap_new, .-fibheap_new
	.type	fibnode_new, @function
fibnode_new:
.LFB3:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 67 0
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp61, node
	.loc 1 68 0
	movq	-8(%rbp), %rax	# node, tmp62
	movq	-8(%rbp), %rdx	# node, tmp63
	movq	%rdx, 16(%rax)	# tmp63, node_1->left
	.loc 1 69 0
	movq	-8(%rbp), %rax	# node, tmp64
	movq	-8(%rbp), %rdx	# node, tmp65
	movq	%rdx, 24(%rax)	# tmp65, node_1->right
	.loc 1 71 0
	movq	-8(%rbp), %rax	# node, D.5423
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fibnode_new, .-fibnode_new
	.type	fibheap_compare, @function
fibheap_compare:
.LFB4:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# heap, heap
	movq	%rsi, -16(%rbp)	# a, a
	movq	%rdx, -24(%rbp)	# b, b
	.loc 1 80 0
	movq	-16(%rbp), %rax	# a, tmp65
	movq	32(%rax), %rdx	# a_2(D)->key, D.5425
	movq	-24(%rbp), %rax	# b, tmp66
	movq	32(%rax), %rax	# b_4(D)->key, D.5425
	cmpq	%rax, %rdx	# D.5425, D.5425
	jge	.L6	#,
	.loc 1 81 0
	movl	$-1, %eax	#, D.5424
	jmp	.L7	#
.L6:
	.loc 1 82 0
	movq	-16(%rbp), %rax	# a, tmp67
	movq	32(%rax), %rdx	# a_2(D)->key, D.5425
	movq	-24(%rbp), %rax	# b, tmp68
	movq	32(%rax), %rax	# b_4(D)->key, D.5425
	cmpq	%rax, %rdx	# D.5425, D.5425
	jle	.L8	#,
	.loc 1 83 0
	movl	$1, %eax	#, D.5424
	jmp	.L7	#
.L8:
	.loc 1 84 0
	movl	$0, %eax	#, D.5424
.L7:
	.loc 1 85 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fibheap_compare, .-fibheap_compare
	.type	fibheap_comp_data, @function
fibheap_comp_data:
.LFB5:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# heap, heap
	movq	%rsi, -80(%rbp)	# key, key
	movq	%rdx, -88(%rbp)	# data, data
	movq	%rcx, -96(%rbp)	# b, b
	.loc 1 96 0
	movq	-80(%rbp), %rax	# key, tmp61
	movq	%rax, -32(%rbp)	# tmp61, a.key
	.loc 1 97 0
	movq	-88(%rbp), %rax	# data, tmp62
	movq	%rax, -24(%rbp)	# tmp62, a.data
	.loc 1 99 0
	movq	-96(%rbp), %rdx	# b, tmp63
	leaq	-64(%rbp), %rcx	#, tmp64
	movq	-72(%rbp), %rax	# heap, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	fibheap_compare	#
	.loc 1 100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fibheap_comp_data, .-fibheap_comp_data
	.globl	fibheap_insert
	.type	fibheap_insert, @function
fibheap_insert:
.LFB6:
	.loc 1 108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# key, key
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 112 0
	call	fibnode_new	#
	movq	%rax, -8(%rbp)	# tmp67, node
	.loc 1 115 0
	movq	-8(%rbp), %rax	# node, tmp68
	movq	-40(%rbp), %rdx	# data, tmp69
	movq	%rdx, 40(%rax)	# tmp69, node_1->data
	.loc 1 116 0
	movq	-8(%rbp), %rax	# node, tmp70
	movq	-32(%rbp), %rdx	# key, tmp71
	movq	%rdx, 32(%rax)	# tmp71, node_1->key
	.loc 1 119 0
	movq	-8(%rbp), %rdx	# node, tmp72
	movq	-24(%rbp), %rax	# heap, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	fibheap_ins_root	#
	.loc 1 123 0
	movq	-24(%rbp), %rax	# heap, tmp74
	movq	8(%rax), %rax	# heap_4(D)->min, D.5427
	testq	%rax, %rax	# D.5427
	je	.L12	#,
	.loc 1 123 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# node, tmp75
	movq	32(%rax), %rdx	# node_1->key, D.5428
	movq	-24(%rbp), %rax	# heap, tmp76
	movq	8(%rax), %rax	# heap_4(D)->min, D.5427
	movq	32(%rax), %rax	# _7->key, D.5428
	cmpq	%rax, %rdx	# D.5428, D.5428
	jge	.L13	#,
.L12:
	.loc 1 124 0 is_stmt 1
	movq	-24(%rbp), %rax	# heap, tmp77
	movq	-8(%rbp), %rdx	# node, tmp78
	movq	%rdx, 8(%rax)	# tmp78, heap_4(D)->min
.L13:
	.loc 1 126 0
	movq	-24(%rbp), %rax	# heap, tmp79
	movq	(%rax), %rax	# heap_4(D)->nodes, D.5429
	leaq	1(%rax), %rdx	#, D.5429
	movq	-24(%rbp), %rax	# heap, tmp80
	movq	%rdx, (%rax)	# D.5429, heap_4(D)->nodes
	.loc 1 128 0
	movq	-8(%rbp), %rax	# node, D.5430
	.loc 1 129 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fibheap_insert, .-fibheap_insert
	.globl	fibheap_min
	.type	fibheap_min, @function
fibheap_min:
.LFB7:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# heap, heap
	.loc 1 137 0
	movq	-8(%rbp), %rax	# heap, tmp63
	movq	8(%rax), %rax	# heap_2(D)->min, D.5432
	testq	%rax, %rax	# D.5432
	jne	.L16	#,
	.loc 1 138 0
	movl	$0, %eax	#, D.5431
	jmp	.L17	#
.L16:
	.loc 1 139 0
	movq	-8(%rbp), %rax	# heap, tmp64
	movq	8(%rax), %rax	# heap_2(D)->min, D.5432
	movq	40(%rax), %rax	# _5->data, D.5431
.L17:
	.loc 1 140 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fibheap_min, .-fibheap_min
	.globl	fibheap_min_key
	.type	fibheap_min_key, @function
fibheap_min_key:
.LFB8:
	.loc 1 146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# heap, heap
	.loc 1 148 0
	movq	-8(%rbp), %rax	# heap, tmp63
	movq	8(%rax), %rax	# heap_2(D)->min, D.5434
	testq	%rax, %rax	# D.5434
	jne	.L19	#,
	.loc 1 149 0
	movl	$0, %eax	#, D.5433
	jmp	.L20	#
.L19:
	.loc 1 150 0
	movq	-8(%rbp), %rax	# heap, tmp64
	movq	8(%rax), %rax	# heap_2(D)->min, D.5434
	movq	32(%rax), %rax	# _5->key, D.5433
.L20:
	.loc 1 151 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fibheap_min_key, .-fibheap_min_key
	.globl	fibheap_union
	.type	fibheap_union, @function
fibheap_union:
.LFB9:
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# heapa, heapa
	movq	%rsi, -48(%rbp)	# heapb, heapb
	.loc 1 162 0
	movq	-40(%rbp), %rax	# heapa, tmp71
	movq	16(%rax), %rax	# heapa_2(D)->root, tmp72
	movq	%rax, -24(%rbp)	# tmp72, a_root
	cmpq	$0, -24(%rbp)	#, a_root
	jne	.L22	#,
	.loc 1 164 0
	movq	-40(%rbp), %rax	# heapa, tmp73
	movq	%rax, %rdi	# tmp73,
	call	free	#
	.loc 1 165 0
	movq	-48(%rbp), %rax	# heapb, D.5435
	jmp	.L23	#
.L22:
	.loc 1 167 0
	movq	-48(%rbp), %rax	# heapb, tmp74
	movq	16(%rax), %rax	# heapb_4(D)->root, tmp75
	movq	%rax, -16(%rbp)	# tmp75, b_root
	cmpq	$0, -16(%rbp)	#, b_root
	jne	.L24	#,
	.loc 1 169 0
	movq	-48(%rbp), %rax	# heapb, tmp76
	movq	%rax, %rdi	# tmp76,
	call	free	#
	.loc 1 170 0
	movq	-40(%rbp), %rax	# heapa, D.5435
	jmp	.L23	#
.L24:
	.loc 1 174 0
	movq	-24(%rbp), %rax	# a_root, tmp77
	movq	16(%rax), %rax	# a_root_3->left, D.5436
	movq	-16(%rbp), %rdx	# b_root, tmp78
	movq	%rdx, 24(%rax)	# tmp78, _8->right
	.loc 1 175 0
	movq	-16(%rbp), %rax	# b_root, tmp79
	movq	16(%rax), %rax	# b_root_6->left, D.5436
	movq	-24(%rbp), %rdx	# a_root, tmp80
	movq	%rdx, 24(%rax)	# tmp80, _9->right
	.loc 1 176 0
	movq	-24(%rbp), %rax	# a_root, tmp81
	movq	16(%rax), %rax	# a_root_3->left, tmp82
	movq	%rax, -8(%rbp)	# tmp82, temp
	.loc 1 177 0
	movq	-16(%rbp), %rax	# b_root, tmp83
	movq	16(%rax), %rdx	# b_root_6->left, D.5436
	movq	-24(%rbp), %rax	# a_root, tmp84
	movq	%rdx, 16(%rax)	# D.5436, a_root_3->left
	.loc 1 178 0
	movq	-16(%rbp), %rax	# b_root, tmp85
	movq	-8(%rbp), %rdx	# temp, tmp86
	movq	%rdx, 16(%rax)	# tmp86, b_root_6->left
	.loc 1 179 0
	movq	-40(%rbp), %rax	# heapa, tmp87
	movq	(%rax), %rdx	# heapa_2(D)->nodes, D.5437
	movq	-48(%rbp), %rax	# heapb, tmp88
	movq	(%rax), %rax	# heapb_4(D)->nodes, D.5437
	addq	%rax, %rdx	# D.5437, D.5437
	movq	-40(%rbp), %rax	# heapa, tmp89
	movq	%rdx, (%rax)	# D.5437, heapa_2(D)->nodes
	.loc 1 182 0
	movq	-40(%rbp), %rax	# heapa, tmp90
	movq	8(%rax), %rdx	# heapa_2(D)->min, D.5436
	movq	-48(%rbp), %rax	# heapb, tmp91
	movq	8(%rax), %rcx	# heapb_4(D)->min, D.5436
	movq	-40(%rbp), %rax	# heapa, tmp92
	movq	%rcx, %rsi	# D.5436,
	movq	%rax, %rdi	# tmp92,
	call	fibheap_compare	#
	testl	%eax, %eax	# D.5438
	jns	.L25	#,
	.loc 1 183 0
	movq	-48(%rbp), %rax	# heapb, tmp93
	movq	8(%rax), %rdx	# heapb_4(D)->min, D.5436
	movq	-40(%rbp), %rax	# heapa, tmp94
	movq	%rdx, 8(%rax)	# D.5436, heapa_2(D)->min
.L25:
	.loc 1 185 0
	movq	-48(%rbp), %rax	# heapb, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free	#
	.loc 1 186 0
	movq	-40(%rbp), %rax	# heapa, D.5435
.L23:
	.loc 1 187 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fibheap_union, .-fibheap_union
	.globl	fibheap_extract_min
	.type	fibheap_extract_min, @function
fibheap_extract_min:
.LFB10:
	.loc 1 193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	.loc 1 195 0
	movq	$0, -16(%rbp)	#, ret
	.loc 1 198 0
	movq	-24(%rbp), %rax	# heap, tmp62
	movq	8(%rax), %rax	# heap_3(D)->min, D.5439
	testq	%rax, %rax	# D.5439
	je	.L27	#,
	.loc 1 202 0
	movq	-24(%rbp), %rax	# heap, tmp63
	movq	%rax, %rdi	# tmp63,
	call	fibheap_extr_min_node	#
	movq	%rax, -8(%rbp)	# tmp64, z
	.loc 1 203 0
	movq	-8(%rbp), %rax	# z, tmp65
	movq	40(%rax), %rax	# z_5->data, tmp66
	movq	%rax, -16(%rbp)	# tmp66, ret
	.loc 1 204 0
	movq	-8(%rbp), %rax	# z, tmp67
	movq	%rax, %rdi	# tmp67,
	call	free	#
.L27:
	.loc 1 207 0
	movq	-16(%rbp), %rax	# ret, D.5440
	.loc 1 208 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fibheap_extract_min, .-fibheap_extract_min
	.globl	fibheap_replace_key_data
	.type	fibheap_replace_key_data, @function
fibheap_replace_key_data:
.LFB11:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# heap, heap
	movq	%rsi, -48(%rbp)	# node, node
	movq	%rdx, -56(%rbp)	# key, key
	movq	%rcx, -64(%rbp)	# data, data
	.loc 1 225 0
	movq	-48(%rbp), %rcx	# node, tmp67
	movq	-64(%rbp), %rdx	# data, tmp68
	movq	-56(%rbp), %rsi	# key, tmp69
	movq	-40(%rbp), %rax	# heap, tmp70
	movq	%rax, %rdi	# tmp70,
	call	fibheap_comp_data	#
	testl	%eax, %eax	# D.5442
	jle	.L30	#,
	.loc 1 226 0
	movl	$0, %eax	#, D.5441
	jmp	.L31	#
.L30:
	.loc 1 228 0
	movq	-48(%rbp), %rax	# node, tmp71
	movq	40(%rax), %rax	# node_5(D)->data, tmp72
	movq	%rax, -16(%rbp)	# tmp72, odata
	.loc 1 229 0
	movq	-48(%rbp), %rax	# node, tmp73
	movq	32(%rax), %rax	# node_5(D)->key, D.5443
	movl	%eax, -20(%rbp)	# D.5443, okey
	.loc 1 230 0
	movq	-48(%rbp), %rax	# node, tmp74
	movq	-64(%rbp), %rdx	# data, tmp75
	movq	%rdx, 40(%rax)	# tmp75, node_5(D)->data
	.loc 1 231 0
	movq	-48(%rbp), %rax	# node, tmp76
	movq	-56(%rbp), %rdx	# key, tmp77
	movq	%rdx, 32(%rax)	# tmp77, node_5(D)->key
	.loc 1 232 0
	movq	-48(%rbp), %rax	# node, tmp78
	movq	(%rax), %rax	# node_5(D)->parent, tmp79
	movq	%rax, -8(%rbp)	# tmp79, y
	.loc 1 234 0
	movl	-20(%rbp), %eax	# okey, tmp80
	cltq
	cmpq	-56(%rbp), %rax	# key, D.5443
	jne	.L32	#,
	.loc 1 235 0
	movq	-16(%rbp), %rax	# odata, D.5441
	jmp	.L31	#
.L32:
	.loc 1 240 0
	cmpq	$0, -8(%rbp)	#, y
	je	.L33	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx	# y, tmp81
	movq	-48(%rbp), %rcx	# node, tmp82
	movq	-40(%rbp), %rax	# heap, tmp83
	movq	%rcx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	fibheap_compare	#
	testl	%eax, %eax	# D.5442
	jg	.L33	#,
	.loc 1 242 0 is_stmt 1
	movq	-8(%rbp), %rdx	# y, tmp84
	movq	-48(%rbp), %rcx	# node, tmp85
	movq	-40(%rbp), %rax	# heap, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	fibheap_cut	#
	.loc 1 243 0
	movq	-8(%rbp), %rdx	# y, tmp87
	movq	-40(%rbp), %rax	# heap, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	fibheap_cascading_cut	#
.L33:
	.loc 1 246 0
	movq	-40(%rbp), %rax	# heap, tmp89
	movq	8(%rax), %rdx	# heap_2(D)->min, D.5444
	movq	-48(%rbp), %rcx	# node, tmp90
	movq	-40(%rbp), %rax	# heap, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	fibheap_compare	#
	testl	%eax, %eax	# D.5442
	jg	.L34	#,
	.loc 1 247 0
	movq	-40(%rbp), %rax	# heap, tmp92
	movq	-48(%rbp), %rdx	# node, tmp93
	movq	%rdx, 8(%rax)	# tmp93, heap_2(D)->min
.L34:
	.loc 1 249 0
	movq	-16(%rbp), %rax	# odata, D.5441
.L31:
	.loc 1 250 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fibheap_replace_key_data, .-fibheap_replace_key_data
	.globl	fibheap_replace_data
	.type	fibheap_replace_data, @function
fibheap_replace_data:
.LFB12:
	.loc 1 258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# heap, heap
	movq	%rsi, -16(%rbp)	# node, node
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 259 0
	movq	-16(%rbp), %rax	# node, tmp62
	movq	32(%rax), %rdx	# node_1(D)->key, D.5445
	movq	-24(%rbp), %rcx	# data, tmp63
	movq	-16(%rbp), %rsi	# node, tmp64
	movq	-8(%rbp), %rax	# heap, tmp65
	movq	%rax, %rdi	# tmp65,
	call	fibheap_replace_key_data	#
	.loc 1 260 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	fibheap_replace_data, .-fibheap_replace_data
	.globl	fibheap_replace_key
	.type	fibheap_replace_key, @function
fibheap_replace_key:
.LFB13:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# node, node
	movq	%rdx, -40(%rbp)	# key, key
	.loc 1 269 0
	movq	-32(%rbp), %rax	# node, tmp63
	movq	32(%rax), %rax	# node_1(D)->key, D.5447
	movl	%eax, -4(%rbp)	# D.5447, okey
	.loc 1 270 0
	movq	-32(%rbp), %rax	# node, tmp64
	movq	40(%rax), %rcx	# node_1(D)->data, D.5448
	movq	-40(%rbp), %rdx	# key, tmp65
	movq	-32(%rbp), %rsi	# node, tmp66
	movq	-24(%rbp), %rax	# heap, tmp67
	movq	%rax, %rdi	# tmp67,
	call	fibheap_replace_key_data	#
	.loc 1 271 0
	movl	-4(%rbp), %eax	# okey, tmp68
	cltq
	.loc 1 272 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fibheap_replace_key, .-fibheap_replace_key
	.globl	fibheap_delete_node
	.type	fibheap_delete_node, @function
fibheap_delete_node:
.LFB14:
	.loc 1 279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# node, node
	.loc 1 280 0
	movq	-32(%rbp), %rax	# node, tmp61
	movq	40(%rax), %rax	# node_1(D)->data, tmp62
	movq	%rax, -8(%rbp)	# tmp62, ret
	.loc 1 283 0
	movq	-32(%rbp), %rcx	# node, tmp63
	movq	-24(%rbp), %rax	# heap, tmp64
	movabsq	$-9223372036854775808, %rdx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	fibheap_replace_key	#
	.loc 1 284 0
	movq	-24(%rbp), %rax	# heap, tmp65
	movq	%rax, %rdi	# tmp65,
	call	fibheap_extract_min	#
	.loc 1 286 0
	movq	-8(%rbp), %rax	# ret, D.5450
	.loc 1 287 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	fibheap_delete_node, .-fibheap_delete_node
	.globl	fibheap_delete
	.type	fibheap_delete, @function
fibheap_delete:
.LFB15:
	.loc 1 293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# heap, heap
	.loc 1 294 0
	jmp	.L42	#
.L43:
	.loc 1 295 0
	movq	-8(%rbp), %rax	# heap, tmp61
	movq	%rax, %rdi	# tmp61,
	call	fibheap_extr_min_node	#
	movq	%rax, %rdi	# D.5451,
	call	free	#
.L42:
	.loc 1 294 0 discriminator 1
	movq	-8(%rbp), %rax	# heap, tmp62
	movq	8(%rax), %rax	# heap_1(D)->min, D.5451
	testq	%rax, %rax	# D.5451
	jne	.L43	#,
	.loc 1 297 0
	movq	-8(%rbp), %rax	# heap, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	.loc 1 298 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	fibheap_delete, .-fibheap_delete
	.globl	fibheap_empty
	.type	fibheap_empty, @function
fibheap_empty:
.LFB16:
	.loc 1 304 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# heap, heap
	.loc 1 305 0
	movq	-8(%rbp), %rax	# heap, tmp63
	movq	(%rax), %rax	# heap_1(D)->nodes, D.5452
	testq	%rax, %rax	# D.5452
	sete	%al	#, D.5453
	movzbl	%al, %eax	# D.5453, D.5454
	.loc 1 306 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fibheap_empty, .-fibheap_empty
	.type	fibheap_extr_min_node, @function
fibheap_extr_min_node:
.LFB17:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# heap, heap
	.loc 1 313 0
	movq	-40(%rbp), %rax	# heap, tmp65
	movq	8(%rax), %rax	# heap_4(D)->min, tmp66
	movq	%rax, -16(%rbp)	# tmp66, ret
	.loc 1 318 0
	movq	-16(%rbp), %rax	# ret, tmp67
	movq	8(%rax), %rax	# ret_5->child, tmp68
	movq	%rax, -32(%rbp)	# tmp68, x
	movq	$0, -24(%rbp)	#, orig
	jmp	.L47	#
.L50:
	.loc 1 320 0
	cmpq	$0, -24(%rbp)	#, orig
	jne	.L48	#,
	.loc 1 321 0
	movq	-32(%rbp), %rax	# x, tmp69
	movq	%rax, -24(%rbp)	# tmp69, orig
.L48:
	.loc 1 322 0
	movq	-32(%rbp), %rax	# x, tmp70
	movq	24(%rax), %rax	# x_1->right, tmp71
	movq	%rax, -8(%rbp)	# tmp71, y
	.loc 1 323 0
	movq	-32(%rbp), %rax	# x, tmp72
	movq	$0, (%rax)	#, x_1->parent
	.loc 1 324 0
	movq	-32(%rbp), %rdx	# x, tmp73
	movq	-40(%rbp), %rax	# heap, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	fibheap_ins_root	#
	.loc 1 318 0
	movq	-8(%rbp), %rax	# y, tmp75
	movq	%rax, -32(%rbp)	# tmp75, x
.L47:
	.loc 1 318 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# x, tmp76
	cmpq	-24(%rbp), %rax	# orig, tmp76
	je	.L49	#,
	.loc 1 318 0 discriminator 2
	cmpq	$0, -32(%rbp)	#, x
	jne	.L50	#,
.L49:
	.loc 1 328 0 is_stmt 1
	movq	-16(%rbp), %rdx	# ret, tmp77
	movq	-40(%rbp), %rax	# heap, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	fibheap_rem_root	#
	.loc 1 329 0
	movq	-40(%rbp), %rax	# heap, tmp79
	movq	(%rax), %rax	# heap_4(D)->nodes, D.5455
	leaq	-1(%rax), %rdx	#, D.5455
	movq	-40(%rbp), %rax	# heap, tmp80
	movq	%rdx, (%rax)	# D.5455, heap_4(D)->nodes
	.loc 1 332 0
	movq	-40(%rbp), %rax	# heap, tmp81
	movq	(%rax), %rax	# heap_4(D)->nodes, D.5455
	testq	%rax, %rax	# D.5455
	jne	.L51	#,
	.loc 1 333 0
	movq	-40(%rbp), %rax	# heap, tmp82
	movq	$0, 8(%rax)	#, heap_4(D)->min
	jmp	.L52	#
.L51:
	.loc 1 338 0
	movq	-16(%rbp), %rax	# ret, tmp83
	movq	24(%rax), %rdx	# ret_5->right, D.5456
	movq	-40(%rbp), %rax	# heap, tmp84
	movq	%rdx, 8(%rax)	# D.5456, heap_4(D)->min
	.loc 1 339 0
	movq	-40(%rbp), %rax	# heap, tmp85
	movq	%rax, %rdi	# tmp85,
	call	fibheap_consolidate	#
.L52:
	.loc 1 342 0
	movq	-16(%rbp), %rax	# ret, D.5457
	.loc 1 343 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	fibheap_extr_min_node, .-fibheap_extr_min_node
	.type	fibheap_ins_root, @function
fibheap_ins_root:
.LFB18:
	.loc 1 350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# heap, heap
	movq	%rsi, -16(%rbp)	# node, node
	.loc 1 353 0
	movq	-8(%rbp), %rax	# heap, tmp61
	movq	16(%rax), %rax	# heap_1(D)->root, D.5458
	testq	%rax, %rax	# D.5458
	jne	.L55	#,
	.loc 1 355 0
	movq	-8(%rbp), %rax	# heap, tmp62
	movq	-16(%rbp), %rdx	# node, tmp63
	movq	%rdx, 16(%rax)	# tmp63, heap_1(D)->root
	.loc 1 356 0
	movq	-16(%rbp), %rax	# node, tmp64
	movq	-16(%rbp), %rdx	# node, tmp65
	movq	%rdx, 16(%rax)	# tmp65, node_3(D)->left
	.loc 1 357 0
	movq	-16(%rbp), %rax	# node, tmp66
	movq	-16(%rbp), %rdx	# node, tmp67
	movq	%rdx, 24(%rax)	# tmp67, node_3(D)->right
	.loc 1 358 0
	jmp	.L54	#
.L55:
	.loc 1 363 0
	movq	-8(%rbp), %rax	# heap, tmp68
	movq	16(%rax), %rax	# heap_1(D)->root, D.5458
	movq	-16(%rbp), %rdx	# node, tmp69
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# D.5458,
	call	fibnode_insert_after	#
.L54:
	.loc 1 364 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	fibheap_ins_root, .-fibheap_ins_root
	.type	fibheap_rem_root, @function
fibheap_rem_root:
.LFB19:
	.loc 1 371 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# heap, heap
	movq	%rsi, -16(%rbp)	# node, node
	.loc 1 372 0
	movq	-16(%rbp), %rax	# node, tmp61
	movq	16(%rax), %rax	# node_1(D)->left, D.5459
	cmpq	-16(%rbp), %rax	# node, D.5459
	jne	.L58	#,
	.loc 1 373 0
	movq	-8(%rbp), %rax	# heap, tmp62
	movq	$0, 16(%rax)	#, heap_3(D)->root
	jmp	.L57	#
.L58:
	.loc 1 375 0
	movq	-16(%rbp), %rax	# node, tmp63
	movq	%rax, %rdi	# tmp63,
	call	fibnode_remove	#
	movq	-8(%rbp), %rdx	# heap, tmp64
	movq	%rax, 16(%rdx)	# D.5459, heap_3(D)->root
.L57:
	.loc 1 376 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	fibheap_rem_root, .-fibheap_rem_root
	.type	fibheap_consolidate, @function
fibheap_consolidate:
.LFB20:
	.loc 1 382 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$592, %rsp	#,
	movq	%rdi, -584(%rbp)	# heap, heap
	.loc 1 391 0
	movl	$65, -564(%rbp)	#, D
	.loc 1 393 0
	movl	-564(%rbp), %eax	# D, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5460
	leaq	-528(%rbp), %rax	#, tmp72
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	memset	#
	.loc 1 395 0
	jmp	.L61	#
.L65:
	.loc 1 397 0
	movq	-544(%rbp), %rax	# w, tmp73
	movq	%rax, -552(%rbp)	# tmp73, x
	.loc 1 398 0
	movq	-544(%rbp), %rdx	# w, tmp74
	movq	-584(%rbp), %rax	# heap, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	fibheap_rem_root	#
	.loc 1 399 0
	movq	-552(%rbp), %rax	# x, tmp76
	movl	48(%rax), %eax	# *x_11, tmp79
	andl	$2147483647, %eax	#, D.5461
	movl	%eax, -568(%rbp)	# D.5461, d
	.loc 1 400 0
	jmp	.L62	#
.L64:
	.loc 1 402 0
	movl	-568(%rbp), %eax	# d, tmp81
	cltq
	movq	-528(%rbp,%rax,8), %rax	# a, tmp82
	movq	%rax, -560(%rbp)	# tmp82, y
	.loc 1 403 0
	movq	-560(%rbp), %rdx	# y, tmp83
	movq	-552(%rbp), %rcx	# x, tmp84
	movq	-584(%rbp), %rax	# heap, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	fibheap_compare	#
	testl	%eax, %eax	# D.5463
	jle	.L63	#,
.LBB2:
	.loc 1 406 0
	movq	-552(%rbp), %rax	# x, tmp86
	movq	%rax, -536(%rbp)	# tmp86, temp
	.loc 1 407 0
	movq	-560(%rbp), %rax	# y, tmp87
	movq	%rax, -552(%rbp)	# tmp87, x
	.loc 1 408 0
	movq	-536(%rbp), %rax	# temp, tmp88
	movq	%rax, -560(%rbp)	# tmp88, y
.L63:
.LBE2:
	.loc 1 410 0
	movq	-552(%rbp), %rdx	# x, tmp89
	movq	-560(%rbp), %rcx	# y, tmp90
	movq	-584(%rbp), %rax	# heap, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	fibheap_link	#
	.loc 1 411 0
	movl	-568(%rbp), %eax	# d, tmp93
	cltq
	movq	$0, -528(%rbp,%rax,8)	#, a
	.loc 1 412 0
	addl	$1, -568(%rbp)	#, d
.L62:
	.loc 1 400 0 discriminator 1
	movl	-568(%rbp), %eax	# d, tmp95
	cltq
	movq	-528(%rbp,%rax,8), %rax	# a, D.5462
	testq	%rax, %rax	# D.5462
	jne	.L64	#,
	.loc 1 414 0
	movl	-568(%rbp), %eax	# d, tmp97
	cltq
	movq	-552(%rbp), %rdx	# x, tmp98
	movq	%rdx, -528(%rbp,%rax,8)	# tmp98, a
.L61:
	.loc 1 395 0 discriminator 1
	movq	-584(%rbp), %rax	# heap, tmp99
	movq	16(%rax), %rax	# heap_9(D)->root, tmp100
	movq	%rax, -544(%rbp)	# tmp100, w
	cmpq	$0, -544(%rbp)	#, w
	jne	.L65	#,
	.loc 1 416 0
	movq	-584(%rbp), %rax	# heap, tmp101
	movq	$0, 8(%rax)	#, heap_9(D)->min
	.loc 1 417 0
	movl	$0, -572(%rbp)	#, i
	jmp	.L66	#
.L69:
	.loc 1 418 0
	movl	-572(%rbp), %eax	# i, tmp103
	cltq
	movq	-528(%rbp,%rax,8), %rax	# a, D.5462
	testq	%rax, %rax	# D.5462
	je	.L67	#,
	.loc 1 420 0
	movl	-572(%rbp), %eax	# i, tmp105
	cltq
	movq	-528(%rbp,%rax,8), %rdx	# a, D.5462
	movq	-584(%rbp), %rax	# heap, tmp106
	movq	%rdx, %rsi	# D.5462,
	movq	%rax, %rdi	# tmp106,
	call	fibheap_ins_root	#
	.loc 1 421 0
	movq	-584(%rbp), %rax	# heap, tmp107
	movq	8(%rax), %rax	# heap_9(D)->min, D.5462
	testq	%rax, %rax	# D.5462
	je	.L68	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movq	-584(%rbp), %rax	# heap, tmp108
	movq	8(%rax), %rdx	# heap_9(D)->min, D.5462
	movl	-572(%rbp), %eax	# i, tmp110
	cltq
	movq	-528(%rbp,%rax,8), %rcx	# a, D.5462
	movq	-584(%rbp), %rax	# heap, tmp111
	movq	%rcx, %rsi	# D.5462,
	movq	%rax, %rdi	# tmp111,
	call	fibheap_compare	#
	testl	%eax, %eax	# D.5463
	jns	.L67	#,
.L68:
	.loc 1 422 0 is_stmt 1
	movl	-572(%rbp), %eax	# i, tmp113
	cltq
	movq	-528(%rbp,%rax,8), %rdx	# a, D.5462
	movq	-584(%rbp), %rax	# heap, tmp114
	movq	%rdx, 8(%rax)	# D.5462, heap_9(D)->min
.L67:
	.loc 1 417 0
	addl	$1, -572(%rbp)	#, i
.L66:
	.loc 1 417 0 is_stmt 0 discriminator 1
	movl	-572(%rbp), %eax	# i, tmp115
	cmpl	-564(%rbp), %eax	# D, tmp115
	jl	.L69	#,
	.loc 1 424 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	fibheap_consolidate, .-fibheap_consolidate
	.type	fibheap_link, @function
fibheap_link:
.LFB21:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# heap, heap
	movq	%rsi, -16(%rbp)	# node, node
	movq	%rdx, -24(%rbp)	# parent, parent
	.loc 1 433 0
	movq	-24(%rbp), %rax	# parent, tmp64
	movq	8(%rax), %rax	# parent_1(D)->child, D.5464
	testq	%rax, %rax	# D.5464
	jne	.L71	#,
	.loc 1 434 0
	movq	-24(%rbp), %rax	# parent, tmp65
	movq	-16(%rbp), %rdx	# node, tmp66
	movq	%rdx, 8(%rax)	# tmp66, parent_1(D)->child
	jmp	.L72	#
.L71:
	.loc 1 436 0
	movq	-24(%rbp), %rax	# parent, tmp67
	movq	8(%rax), %rax	# parent_1(D)->child, D.5464
	movq	16(%rax), %rax	# _4->left, D.5464
	movq	-16(%rbp), %rdx	# node, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.5464,
	call	fibnode_insert_after	#
.L72:
	.loc 1 437 0
	movq	-16(%rbp), %rax	# node, tmp69
	movq	-24(%rbp), %rdx	# parent, tmp70
	movq	%rdx, (%rax)	# tmp70, node_3(D)->parent
	.loc 1 438 0
	movq	-24(%rbp), %rax	# parent, tmp71
	movl	48(%rax), %eax	# *parent_1(D), tmp74
	andl	$2147483647, %eax	#, D.5465
	addl	$1, %eax	#, D.5465
	andl	$2147483647, %eax	#, D.5465
	movq	-24(%rbp), %rdx	# parent, tmp75
	andl	$2147483647, %eax	#, tmp77
	movl	%eax, %ecx	# tmp77, tmp77
	movl	48(%rdx), %eax	# parent_1(D)->degree, tmp78
	andl	$-2147483648, %eax	#, tmp79
	orl	%ecx, %eax	# tmp77, tmp80
	movl	%eax, 48(%rdx)	# tmp80, parent_1(D)->degree
	.loc 1 439 0
	movq	-16(%rbp), %rax	# node, tmp81
	movzbl	51(%rax), %edx	#, tmp84
	andl	$127, %edx	#, tmp85
	movb	%dl, 51(%rax)	# tmp85,
	.loc 1 440 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	fibheap_link, .-fibheap_link
	.type	fibheap_cut, @function
fibheap_cut:
.LFB22:
	.loc 1 448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# heap, heap
	movq	%rsi, -16(%rbp)	# node, node
	movq	%rdx, -24(%rbp)	# parent, parent
	.loc 1 449 0
	movq	-16(%rbp), %rax	# node, tmp61
	movq	%rax, %rdi	# tmp61,
	call	fibnode_remove	#
	.loc 1 450 0
	movq	-24(%rbp), %rax	# parent, tmp62
	movl	48(%rax), %eax	# *parent_2(D), tmp65
	andl	$2147483647, %eax	#, D.5466
	addl	$2147483647, %eax	#, D.5466
	andl	$2147483647, %eax	#, D.5466
	movq	-24(%rbp), %rdx	# parent, tmp66
	andl	$2147483647, %eax	#, tmp68
	movl	%eax, %ecx	# tmp68, tmp68
	movl	48(%rdx), %eax	# parent_2(D)->degree, tmp69
	andl	$-2147483648, %eax	#, tmp70
	orl	%ecx, %eax	# tmp68, tmp71
	movl	%eax, 48(%rdx)	# tmp71, parent_2(D)->degree
	.loc 1 451 0
	movq	-16(%rbp), %rdx	# node, tmp72
	movq	-8(%rbp), %rax	# heap, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	fibheap_ins_root	#
	.loc 1 452 0
	movq	-16(%rbp), %rax	# node, tmp74
	movq	$0, (%rax)	#, node_1(D)->parent
	.loc 1 453 0
	movq	-16(%rbp), %rax	# node, tmp75
	movzbl	51(%rax), %edx	#, tmp78
	andl	$127, %edx	#, tmp79
	movb	%dl, 51(%rax)	# tmp79,
	.loc 1 454 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	fibheap_cut, .-fibheap_cut
	.type	fibheap_cascading_cut, @function
fibheap_cascading_cut:
.LFB23:
	.loc 1 460 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# heap, heap
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 463 0
	jmp	.L75	#
.L78:
	.loc 1 465 0
	movq	-32(%rbp), %rax	# y, tmp61
	movzbl	51(%rax), %eax	# *y_1, D.5467
	andl	$-128, %eax	#, D.5467
	testb	%al, %al	# D.5467
	jne	.L76	#,
	.loc 1 467 0
	movq	-32(%rbp), %rax	# y, tmp62
	movzbl	51(%rax), %edx	#, tmp65
	orl	$-128, %edx	#, tmp66
	movb	%dl, 51(%rax)	# tmp66,
	.loc 1 468 0
	jmp	.L74	#
.L76:
	.loc 1 472 0
	movq	-8(%rbp), %rdx	# z, tmp67
	movq	-32(%rbp), %rcx	# y, tmp68
	movq	-24(%rbp), %rax	# heap, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	fibheap_cut	#
	.loc 1 473 0
	movq	-8(%rbp), %rax	# z, tmp70
	movq	%rax, -32(%rbp)	# tmp70, y
.L75:
	.loc 1 463 0 discriminator 1
	movq	-32(%rbp), %rax	# y, tmp71
	movq	(%rax), %rax	# y_1->parent, tmp72
	movq	%rax, -8(%rbp)	# tmp72, z
	cmpq	$0, -8(%rbp)	#, z
	jne	.L78	#,
.L74:
	.loc 1 476 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	fibheap_cascading_cut, .-fibheap_cascading_cut
	.type	fibnode_insert_after, @function
fibnode_insert_after:
.LFB24:
	.loc 1 482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
	.loc 1 483 0
	movq	-8(%rbp), %rax	# a, tmp62
	movq	24(%rax), %rax	# a_1(D)->right, D.5468
	cmpq	-8(%rbp), %rax	# a, D.5468
	jne	.L80	#,
	.loc 1 485 0
	movq	-8(%rbp), %rax	# a, tmp63
	movq	-16(%rbp), %rdx	# b, tmp64
	movq	%rdx, 24(%rax)	# tmp64, a_1(D)->right
	.loc 1 486 0
	movq	-8(%rbp), %rax	# a, tmp65
	movq	-16(%rbp), %rdx	# b, tmp66
	movq	%rdx, 16(%rax)	# tmp66, a_1(D)->left
	.loc 1 487 0
	movq	-16(%rbp), %rax	# b, tmp67
	movq	-8(%rbp), %rdx	# a, tmp68
	movq	%rdx, 24(%rax)	# tmp68, b_3(D)->right
	.loc 1 488 0
	movq	-16(%rbp), %rax	# b, tmp69
	movq	-8(%rbp), %rdx	# a, tmp70
	movq	%rdx, 16(%rax)	# tmp70, b_3(D)->left
	jmp	.L79	#
.L80:
	.loc 1 492 0
	movq	-8(%rbp), %rax	# a, tmp71
	movq	24(%rax), %rdx	# a_1(D)->right, D.5468
	movq	-16(%rbp), %rax	# b, tmp72
	movq	%rdx, 24(%rax)	# D.5468, b_3(D)->right
	.loc 1 493 0
	movq	-8(%rbp), %rax	# a, tmp73
	movq	24(%rax), %rax	# a_1(D)->right, D.5468
	movq	-16(%rbp), %rdx	# b, tmp74
	movq	%rdx, 16(%rax)	# tmp74, _5->left
	.loc 1 494 0
	movq	-8(%rbp), %rax	# a, tmp75
	movq	-16(%rbp), %rdx	# b, tmp76
	movq	%rdx, 24(%rax)	# tmp76, a_1(D)->right
	.loc 1 495 0
	movq	-16(%rbp), %rax	# b, tmp77
	movq	-8(%rbp), %rdx	# a, tmp78
	movq	%rdx, 16(%rax)	# tmp78, b_3(D)->left
.L79:
	.loc 1 497 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	fibnode_insert_after, .-fibnode_insert_after
	.type	fibnode_remove, @function
fibnode_remove:
.LFB25:
	.loc 1 502 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# node, node
	.loc 1 505 0
	movq	-24(%rbp), %rax	# node, tmp70
	movq	16(%rax), %rax	# node_2(D)->left, D.5469
	cmpq	-24(%rbp), %rax	# node, D.5469
	jne	.L83	#,
	.loc 1 506 0
	movq	$0, -8(%rbp)	#, ret
	jmp	.L84	#
.L83:
	.loc 1 508 0
	movq	-24(%rbp), %rax	# node, tmp71
	movq	16(%rax), %rax	# node_2(D)->left, tmp72
	movq	%rax, -8(%rbp)	# tmp72, ret
.L84:
	.loc 1 510 0
	movq	-24(%rbp), %rax	# node, tmp73
	movq	(%rax), %rax	# node_2(D)->parent, D.5469
	testq	%rax, %rax	# D.5469
	je	.L85	#,
	.loc 1 510 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# node, tmp74
	movq	(%rax), %rax	# node_2(D)->parent, D.5469
	movq	8(%rax), %rax	# _7->child, D.5469
	cmpq	-24(%rbp), %rax	# node, D.5469
	jne	.L85	#,
	.loc 1 511 0 is_stmt 1
	movq	-24(%rbp), %rax	# node, tmp75
	movq	(%rax), %rax	# node_2(D)->parent, D.5469
	movq	-8(%rbp), %rdx	# ret, tmp76
	movq	%rdx, 8(%rax)	# tmp76, _9->child
.L85:
	.loc 1 513 0
	movq	-24(%rbp), %rax	# node, tmp77
	movq	24(%rax), %rax	# node_2(D)->right, D.5469
	movq	-24(%rbp), %rdx	# node, tmp78
	movq	16(%rdx), %rdx	# node_2(D)->left, D.5469
	movq	%rdx, 16(%rax)	# D.5469, _10->left
	.loc 1 514 0
	movq	-24(%rbp), %rax	# node, tmp79
	movq	16(%rax), %rax	# node_2(D)->left, D.5469
	movq	-24(%rbp), %rdx	# node, tmp80
	movq	24(%rdx), %rdx	# node_2(D)->right, D.5469
	movq	%rdx, 24(%rax)	# D.5469, _12->right
	.loc 1 516 0
	movq	-24(%rbp), %rax	# node, tmp81
	movq	$0, (%rax)	#, node_2(D)->parent
	.loc 1 517 0
	movq	-24(%rbp), %rax	# node, tmp82
	movq	-24(%rbp), %rdx	# node, tmp83
	movq	%rdx, 16(%rax)	# tmp83, node_2(D)->left
	.loc 1 518 0
	movq	-24(%rbp), %rax	# node, tmp84
	movq	-24(%rbp), %rdx	# node, tmp85
	movq	%rdx, 24(%rax)	# tmp85, node_2(D)->right
	.loc 1 520 0
	movq	-8(%rbp), %rax	# ret, D.5470
	.loc 1 521 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	fibnode_remove, .-fibnode_remove
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "fibheap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8a4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF58
	.byte	0x1
	.long	.LASF59
	.long	.LASF60
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
	.long	.LASF11
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x2d
	.long	0x70
	.uleb128 0x6
	.long	.LASF15
	.byte	0x18
	.byte	0x3
	.byte	0x2f
	.long	0xca
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.byte	0x31
	.long	0x3b
	.byte	0
	.uleb128 0x8
	.string	"min"
	.byte	0x3
	.byte	0x32
	.long	0x13d
	.byte	0x8
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0x33
	.long	0x13d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x38
	.byte	0x3
	.byte	0x36
	.long	0x13d
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0x38
	.long	0x13d
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x39
	.long	0x13d
	.byte	0x8
	.uleb128 0x7
	.long	.LASF19
	.byte	0x3
	.byte	0x3a
	.long	0x13d
	.byte	0x10
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.byte	0x3b
	.long	0x13d
	.byte	0x18
	.uleb128 0x8
	.string	"key"
	.byte	0x3
	.byte	0x3c
	.long	0x8e
	.byte	0x20
	.uleb128 0x7
	.long	.LASF21
	.byte	0x3
	.byte	0x3d
	.long	0x77
	.byte	0x28
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.byte	0x3e
	.long	0x5b
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.long	.LASF23
	.byte	0x3
	.byte	0x3f
	.long	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0xca
	.uleb128 0x4
	.long	.LASF24
	.byte	0x3
	.byte	0x34
	.long	0x14e
	.uleb128 0xa
	.byte	0x8
	.long	0x99
	.uleb128 0x4
	.long	.LASF25
	.byte	0x3
	.byte	0x40
	.long	0x13d
	.uleb128 0xb
	.long	.LASF61
	.byte	0x1
	.byte	0x38
	.long	0x143
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x3f
	.long	0x154
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x41
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x4c
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x4d
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x4e
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x59
	.long	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x5a
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0x5b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x5c
	.long	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.byte	0x5e
	.long	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0x68
	.long	0x154
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b7
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x69
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x6a
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0x6b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x6d
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF32
	.byte	0x1
	.byte	0x85
	.long	0x77
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e7
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x86
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x90
	.long	0x8e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x317
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x91
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x9b
	.long	0x143
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x37f
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.byte	0x9c
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF36
	.byte	0x1
	.byte	0x9d
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.byte	0x9f
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.byte	0x9f
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0x9f
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0xbf
	.long	0x77
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c9
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0xc0
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"z"
	.byte	0x1
	.byte	0xc2
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xc3
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0xd4
	.long	0x77
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x44d
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0xd5
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0xd6
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0xd7
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0xd8
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0xda
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0xdb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0xdc
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF44
	.byte	0x1
	.byte	0xfe
	.long	0x77
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x49b
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0xff
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x100
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF21
	.byte	0x1
	.value	0x101
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.value	0x108
	.long	0x8e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fa
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x109
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x10a
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"key"
	.byte	0x1
	.value	0x10b
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF43
	.byte	0x1
	.value	0x10d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF46
	.byte	0x1
	.value	0x114
	.long	0x77
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x54a
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x115
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x116
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.value	0x123
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x578
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x124
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.value	0x12e
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x5aa
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x12f
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF48
	.byte	0x1
	.value	0x136
	.long	0x154
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x614
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x137
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.value	0x139
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x13a
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.value	0x13a
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF49
	.byte	0x1
	.value	0x13a
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF50
	.byte	0x1
	.value	0x15b
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x651
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x15c
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x15d
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF51
	.byte	0x1
	.value	0x170
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x68e
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x171
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x172
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x1
	.value	0x17c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x741
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x17d
	.long	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.value	0x17f
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x180
	.long	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.value	0x181
	.long	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x182
	.long	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x183
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x184
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x18
	.string	"D"
	.byte	0x1
	.value	0x185
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.value	0x195
	.long	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x154
	.long	0x751
	.uleb128 0x1f
	.long	0x34
	.byte	0x40
	.byte	0
	.uleb128 0x1c
	.long	.LASF53
	.byte	0x1
	.value	0x1ac
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x79d
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x1ad
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x1ae
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF17
	.byte	0x1
	.value	0x1af
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF54
	.byte	0x1
	.value	0x1bc
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e9
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x1bd
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x1be
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF17
	.byte	0x1
	.value	0x1bf
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF55
	.byte	0x1
	.value	0x1c9
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x831
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.value	0x1ca
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.value	0x1cb
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"z"
	.byte	0x1
	.value	0x1cd
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF56
	.byte	0x1
	.value	0x1df
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x86a
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.value	0x1e0
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.value	0x1e1
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF57
	.byte	0x1
	.value	0x1f4
	.long	0x154
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x1f5
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.value	0x1f7
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF43:
	.string	"okey"
.LASF42:
	.string	"odata"
.LASF20:
	.string	"right"
.LASF62:
	.string	"fibheap_delete"
.LASF26:
	.string	"fibnode_new"
.LASF58:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF39:
	.string	"temp"
.LASF6:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF0:
	.string	"sizetype"
.LASF32:
	.string	"fibheap_min"
.LASF40:
	.string	"fibheap_extract_min"
.LASF48:
	.string	"fibheap_extr_min_node"
.LASF41:
	.string	"fibheap_replace_key_data"
.LASF13:
	.string	"nodes"
.LASF36:
	.string	"heapb"
.LASF53:
	.string	"fibheap_link"
.LASF33:
	.string	"fibheap_min_key"
.LASF25:
	.string	"fibnode_t"
.LASF28:
	.string	"heap"
.LASF34:
	.string	"fibheap_union"
.LASF54:
	.string	"fibheap_cut"
.LASF60:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF9:
	.string	"long long int"
.LASF57:
	.string	"fibnode_remove"
.LASF51:
	.string	"fibheap_rem_root"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"parent"
.LASF15:
	.string	"fibheap"
.LASF2:
	.string	"unsigned char"
.LASF44:
	.string	"fibheap_replace_data"
.LASF56:
	.string	"fibnode_insert_after"
.LASF45:
	.string	"fibheap_replace_key"
.LASF31:
	.string	"fibheap_insert"
.LASF5:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF23:
	.string	"mark"
.LASF4:
	.string	"unsigned int"
.LASF46:
	.string	"fibheap_delete_node"
.LASF14:
	.string	"root"
.LASF59:
	.string	"fibheap.c"
.LASF52:
	.string	"fibheap_consolidate"
.LASF8:
	.string	"char"
.LASF19:
	.string	"left"
.LASF3:
	.string	"short unsigned int"
.LASF49:
	.string	"orig"
.LASF21:
	.string	"data"
.LASF35:
	.string	"heapa"
.LASF24:
	.string	"fibheap_t"
.LASF1:
	.string	"long unsigned int"
.LASF37:
	.string	"a_root"
.LASF50:
	.string	"fibheap_ins_root"
.LASF18:
	.string	"child"
.LASF30:
	.string	"node"
.LASF12:
	.string	"fibheapkey_t"
.LASF55:
	.string	"fibheap_cascading_cut"
.LASF27:
	.string	"fibheap_compare"
.LASF22:
	.string	"degree"
.LASF16:
	.string	"fibnode"
.LASF29:
	.string	"fibheap_comp_data"
.LASF38:
	.string	"b_root"
.LASF61:
	.string	"fibheap_new"
.LASF47:
	.string	"fibheap_empty"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
