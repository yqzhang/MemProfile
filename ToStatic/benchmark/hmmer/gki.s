	.file	"gki.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 gki.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 16
	.type	gki_primes, @object
	.size	gki_primes, 16
gki_primes:
	.long	101
	.long	1009
	.long	10007
	.long	100003
	.text
	.globl	GKIInit
	.type	GKIInit, @function
GKIInit:
.LFB2:
	.file 1 "gki.c"
	.loc 1 118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 120 0
	movl	$0, %edi	#,
	call	gki_alloc	#
	movq	%rax, -8(%rbp)	# tmp61, hash
	.loc 1 121 0
	movq	-8(%rbp), %rax	# hash, D.5837
	.loc 1 122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	GKIInit, .-GKIInit
	.globl	GKIFree
	.type	GKIFree, @function
GKIFree:
.LFB3:
	.loc 1 136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hash, hash
	.loc 1 140 0
	cmpq	$0, -24(%rbp)	#, hash
	jne	.L4	#,
	.loc 1 140 0 is_stmt 0 discriminator 1
	jmp	.L3	#
.L4:
	.loc 1 142 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L6	#
.L10:
	.loc 1 143 0
	jmp	.L7	#
.L9:
	.loc 1 145 0
	movq	-24(%rbp), %rax	# hash, tmp92
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movl	-12(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.5840
	salq	$3, %rdx	#, D.5840
	addq	%rdx, %rax	# D.5840, D.5839
	movq	(%rax), %rax	# *_13, D.5841
	movq	16(%rax), %rax	# _14->nxt, tmp94
	movq	%rax, -8(%rbp)	# tmp94, ptr
	.loc 1 147 0
	movq	-24(%rbp), %rax	# hash, tmp95
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movl	-12(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, D.5840
	salq	$3, %rdx	#, D.5840
	addq	%rdx, %rax	# D.5840, D.5839
	movq	(%rax), %rax	# *_19, D.5841
	movq	(%rax), %rax	# _20->key, D.5842
	testq	%rax, %rax	# D.5842
	je	.L8	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hash, tmp97
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movl	-12(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, D.5840
	salq	$3, %rdx	#, D.5840
	addq	%rdx, %rax	# D.5840, D.5839
	movq	(%rax), %rax	# *_25, D.5841
	movq	(%rax), %rax	# _26->key, D.5842
	movq	%rax, %rdi	# D.5842,
	call	free	#
.L8:
	.loc 1 148 0 is_stmt 1
	movq	-24(%rbp), %rax	# hash, tmp99
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movl	-12(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, D.5840
	salq	$3, %rdx	#, D.5840
	addq	%rdx, %rax	# D.5840, D.5839
	movq	(%rax), %rax	# *_31, D.5841
	movq	%rax, %rdi	# D.5841,
	call	free	#
	.loc 1 149 0
	movq	-24(%rbp), %rax	# hash, tmp101
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movl	-12(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, D.5840
	salq	$3, %rdx	#, D.5840
	addq	%rax, %rdx	# D.5839, D.5839
	movq	-8(%rbp), %rax	# ptr, tmp103
	movq	%rax, (%rdx)	# tmp103, *_36
.L7:
	.loc 1 143 0 discriminator 1
	movq	-24(%rbp), %rax	# hash, tmp104
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movl	-12(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, D.5840
	salq	$3, %rdx	#, D.5840
	addq	%rdx, %rax	# D.5840, D.5839
	movq	(%rax), %rax	# *_8, D.5841
	testq	%rax, %rax	# D.5841
	jne	.L9	#,
	.loc 1 142 0
	addl	$1, -12(%rbp)	#, i
.L6:
	.loc 1 142 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hash, tmp106
	movl	12(%rax), %eax	# hash_2(D)->nhash, D.5838
	cmpl	-12(%rbp), %eax	# i, D.5838
	jg	.L10	#,
	.loc 1 151 0 is_stmt 1
	movq	-24(%rbp), %rax	# hash, tmp107
	movq	(%rax), %rax	# hash_2(D)->table, D.5839
	movq	%rax, %rdi	# D.5839,
	call	free	#
	.loc 1 152 0
	movq	-24(%rbp), %rax	# hash, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free	#
.L3:
	.loc 1 153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	GKIFree, .-GKIFree
	.section	.rodata
.LC0:
	.string	"gki.c"
	.text
	.globl	GKIStoreKey
	.type	GKIStoreKey, @function
GKIStoreKey:
.LFB4:
	.loc 1 182 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# hash, hash
	movq	%rsi, -48(%rbp)	# key, key
	.loc 1 186 0
	movq	-48(%rbp), %rdx	# key, tmp102
	movq	-40(%rbp), %rax	# hash, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	gki_hashvalue	#
	movl	%eax, -28(%rbp)	# tmp104, val
	.loc 1 188 0
	movq	-40(%rbp), %rax	# hash, tmp105
	movq	(%rax), %rax	# hash_1(D)->table, D.5843
	movl	-28(%rbp), %edx	# val, tmp106
	movslq	%edx, %rdx	# tmp106, D.5844
	salq	$3, %rdx	#, D.5844
	addq	%rdx, %rax	# D.5844, D.5843
	movq	(%rax), %rax	# *_7, tmp107
	movq	%rax, -24(%rbp)	# tmp107, ptr
	.loc 1 189 0
	movq	-40(%rbp), %rax	# hash, tmp108
	movq	(%rax), %rax	# hash_1(D)->table, D.5843
	movl	-28(%rbp), %edx	# val, tmp109
	movslq	%edx, %rdx	# tmp109, D.5844
	salq	$3, %rdx	#, D.5844
	leaq	(%rax,%rdx), %rbx	#, D.5843
	movl	$24, %edx	#,
	movl	$189, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.5845, *_12
	.loc 1 190 0
	movq	-40(%rbp), %rax	# hash, tmp110
	movq	(%rax), %rax	# hash_1(D)->table, D.5843
	movl	-28(%rbp), %edx	# val, tmp111
	movslq	%edx, %rdx	# tmp111, D.5844
	salq	$3, %rdx	#, D.5844
	addq	%rdx, %rax	# D.5844, D.5843
	movq	(%rax), %rbx	# *_17, D.5846
	movq	-48(%rbp), %rax	# key, tmp112
	movq	%rax, %rdi	# tmp112,
	call	strlen	#
	addq	$1, %rax	#, D.5844
	movq	%rax, %rdx	# D.5844,
	movl	$190, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.5845, _18->key
	.loc 1 191 0
	movq	-40(%rbp), %rax	# hash, tmp113
	movq	(%rax), %rax	# hash_1(D)->table, D.5843
	movl	-28(%rbp), %edx	# val, tmp114
	movslq	%edx, %rdx	# tmp114, D.5844
	salq	$3, %rdx	#, D.5844
	addq	%rdx, %rax	# D.5844, D.5843
	movq	(%rax), %rax	# *_25, D.5846
	movq	(%rax), %rax	# _26->key, D.5847
	movq	-48(%rbp), %rdx	# key, tmp115
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# D.5847,
	call	strcpy	#
	.loc 1 193 0
	movq	-40(%rbp), %rax	# hash, tmp116
	movq	(%rax), %rax	# hash_1(D)->table, D.5843
	movl	-28(%rbp), %edx	# val, tmp117
	movslq	%edx, %rdx	# tmp117, D.5844
	salq	$3, %rdx	#, D.5844
	addq	%rdx, %rax	# D.5844, D.5843
	movq	(%rax), %rax	# *_31, D.5846
	movq	-40(%rbp), %rdx	# hash, tmp118
	movl	16(%rdx), %edx	# hash_1(D)->nkeys, D.5848
	movl	%edx, 8(%rax)	# D.5848, _32->idx
	.loc 1 194 0
	movq	-40(%rbp), %rax	# hash, tmp119
	movq	(%rax), %rax	# hash_1(D)->table, D.5843
	movl	-28(%rbp), %edx	# val, tmp120
	movslq	%edx, %rdx	# tmp120, D.5844
	salq	$3, %rdx	#, D.5844
	addq	%rdx, %rax	# D.5844, D.5843
	movq	(%rax), %rax	# *_37, D.5846
	movq	-24(%rbp), %rdx	# ptr, tmp121
	movq	%rdx, 16(%rax)	# tmp121, _38->nxt
	.loc 1 196 0
	movq	-40(%rbp), %rax	# hash, tmp122
	movl	16(%rax), %eax	# hash_1(D)->nkeys, D.5848
	leal	1(%rax), %edx	#, D.5848
	movq	-40(%rbp), %rax	# hash, tmp123
	movl	%edx, 16(%rax)	# D.5848, hash_1(D)->nkeys
	.loc 1 198 0
	movq	-40(%rbp), %rax	# hash, tmp124
	movl	16(%rax), %ecx	# hash_1(D)->nkeys, D.5848
	movq	-40(%rbp), %rax	# hash, tmp125
	movl	12(%rax), %edx	# hash_1(D)->nhash, D.5848
	movl	%edx, %eax	# D.5848, tmp126
	addl	%eax, %eax	# tmp126
	addl	%edx, %eax	# D.5848, D.5848
	cmpl	%eax, %ecx	# D.5848, D.5848
	jle	.L12	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hash, tmp127
	movl	8(%rax), %eax	# hash_1(D)->primelevel, D.5848
	cmpl	$2, %eax	#, D.5848
	jg	.L12	#,
	.loc 1 199 0 is_stmt 1
	movq	-40(%rbp), %rax	# hash, tmp128
	movq	%rax, %rdi	# tmp128,
	call	gki_upsize	#
.L12:
	.loc 1 201 0
	movq	-40(%rbp), %rax	# hash, tmp129
	movl	16(%rax), %eax	# hash_1(D)->nkeys, D.5848
	subl	$1, %eax	#, D.5848
	.loc 1 202 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	GKIStoreKey, .-GKIStoreKey
	.globl	GKIKeyIndex
	.type	GKIKeyIndex, @function
GKIKeyIndex:
.LFB5:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hash, hash
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 224 0
	movq	-32(%rbp), %rdx	# key, tmp67
	movq	-24(%rbp), %rax	# hash, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	gki_hashvalue	#
	movl	%eax, -12(%rbp)	# tmp69, val
	.loc 1 225 0
	movq	-24(%rbp), %rax	# hash, tmp70
	movq	(%rax), %rax	# hash_3(D)->table, D.5851
	movl	-12(%rbp), %edx	# val, tmp71
	movslq	%edx, %rdx	# tmp71, D.5852
	salq	$3, %rdx	#, D.5852
	addq	%rdx, %rax	# D.5852, D.5851
	movq	(%rax), %rax	# *_9, tmp72
	movq	%rax, -8(%rbp)	# tmp72, ptr
	jmp	.L15	#
.L18:
	.loc 1 226 0
	movq	-8(%rbp), %rax	# ptr, tmp73
	movq	(%rax), %rdx	# ptr_1->key, D.5853
	movq	-32(%rbp), %rax	# key, tmp74
	movq	%rdx, %rsi	# D.5853,
	movq	%rax, %rdi	# tmp74,
	call	strcmp	#
	testl	%eax, %eax	# D.5850
	jne	.L16	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp75
	movl	8(%rax), %eax	# ptr_1->idx, D.5850
	jmp	.L17	#
.L16:
	.loc 1 225 0 is_stmt 1
	movq	-8(%rbp), %rax	# ptr, tmp76
	movq	16(%rax), %rax	# ptr_1->nxt, tmp77
	movq	%rax, -8(%rbp)	# tmp77, ptr
.L15:
	.loc 1 225 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L18	#,
	.loc 1 227 0 is_stmt 1
	movl	$-1, %eax	#, D.5850
.L17:
	.loc 1 228 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	GKIKeyIndex, .-GKIKeyIndex
	.section	.rodata
.LC1:
	.string	"Total keys:        %d\n"
.LC2:
	.string	"Hash table size:   %d\n"
.LC3:
	.string	"Average occupancy: %.1f\n"
.LC4:
	.string	"Unoccupied slots:  %d\n"
.LC5:
	.string	"Most in one slot:  %d\n"
.LC6:
	.string	"Least in one slot: %d\n"
	.text
	.globl	GKIStatus
	.type	GKIStatus, @function
GKIStatus:
.LFB6:
	.loc 1 244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# hash, hash
	.loc 1 248 0
	movl	$0, -20(%rbp)	#, nempty
	.loc 1 249 0
	movl	$-1, -16(%rbp)	#, maxkeys
	.loc 1 250 0
	movl	$2147483647, -12(%rbp)	#, minkeys
	.loc 1 252 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L20	#
.L26:
	.loc 1 254 0
	movl	$0, -24(%rbp)	#, nkeys
	.loc 1 255 0
	movq	-40(%rbp), %rax	# hash, tmp72
	movq	(%rax), %rax	# hash_14(D)->table, D.5855
	movl	-28(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.5856
	salq	$3, %rdx	#, D.5856
	addq	%rdx, %rax	# D.5856, D.5855
	movq	(%rax), %rax	# *_20, tmp74
	movq	%rax, -8(%rbp)	# tmp74, ptr
	jmp	.L21	#
.L22:
	.loc 1 256 0 discriminator 2
	addl	$1, -24(%rbp)	#, nkeys
	.loc 1 255 0 discriminator 2
	movq	-8(%rbp), %rax	# ptr, tmp75
	movq	16(%rax), %rax	# ptr_1->nxt, tmp76
	movq	%rax, -8(%rbp)	# tmp76, ptr
.L21:
	.loc 1 255 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L22	#,
	.loc 1 258 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, nkeys
	jne	.L23	#,
	.loc 1 258 0 is_stmt 0 discriminator 1
	addl	$1, -20(%rbp)	#, nempty
.L23:
	.loc 1 259 0 is_stmt 1
	movl	-24(%rbp), %eax	# nkeys, tmp77
	cmpl	-16(%rbp), %eax	# maxkeys, tmp77
	jle	.L24	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# nkeys, tmp78
	movl	%eax, -16(%rbp)	# tmp78, maxkeys
.L24:
	.loc 1 260 0 is_stmt 1
	movl	-24(%rbp), %eax	# nkeys, tmp79
	cmpl	-12(%rbp), %eax	# minkeys, tmp79
	jge	.L25	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# nkeys, tmp80
	movl	%eax, -12(%rbp)	# tmp80, minkeys
.L25:
	.loc 1 252 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L20:
	.loc 1 252 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hash, tmp81
	movl	12(%rax), %eax	# hash_14(D)->nhash, D.5854
	cmpl	-28(%rbp), %eax	# i, D.5854
	jg	.L26	#,
	.loc 1 263 0 is_stmt 1
	movq	-40(%rbp), %rax	# hash, tmp82
	movl	16(%rax), %eax	# hash_14(D)->nkeys, D.5854
	movl	%eax, %esi	# D.5854,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 264 0
	movq	-40(%rbp), %rax	# hash, tmp83
	movl	12(%rax), %eax	# hash_14(D)->nhash, D.5854
	movl	%eax, %esi	# D.5854,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 265 0
	movq	-40(%rbp), %rax	# hash, tmp84
	movl	16(%rax), %eax	# hash_14(D)->nkeys, D.5854
	cvtsi2ss	%eax, %xmm0	# D.5854, D.5857
	movq	-40(%rbp), %rax	# hash, tmp85
	movl	12(%rax), %eax	# hash_14(D)->nhash, D.5854
	cvtsi2ss	%eax, %xmm1	# D.5854, D.5857
	divss	%xmm1, %xmm0	# D.5857, D.5857
	unpcklps	%xmm0, %xmm0	# D.5857, D.5857
	cvtps2pd	%xmm0, %xmm0	# D.5857, D.5858
	movl	$.LC3, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 266 0
	movl	-20(%rbp), %eax	# nempty, tmp86
	movl	%eax, %esi	# tmp86,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 267 0
	movl	-16(%rbp), %eax	# maxkeys, tmp87
	movl	%eax, %esi	# tmp87,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 268 0
	movl	-12(%rbp), %eax	# minkeys, tmp88
	movl	%eax, %esi	# tmp88,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 270 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	GKIStatus, .-GKIStatus
	.section	.rodata
.LC7:
	.string	"bad primelevel in gki_alloc()"
	.text
	.type	gki_alloc, @function
gki_alloc:
.LFB7:
	.loc 1 288 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# primelevel, primelevel
	.loc 1 292 0
	cmpl	$0, -20(%rbp)	#, primelevel
	js	.L28	#,
	.loc 1 292 0 is_stmt 0 discriminator 1
	cmpl	$3, -20(%rbp)	#, primelevel
	jle	.L29	#,
.L28:
	.loc 1 293 0 is_stmt 1
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L29:
	.loc 1 294 0
	movl	$24, %edx	#,
	movl	$294, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp72, hash
	.loc 1 296 0
	movq	-8(%rbp), %rax	# hash, tmp73
	movl	-20(%rbp), %edx	# primelevel, tmp74
	movl	%edx, 8(%rax)	# tmp74, hash_3->primelevel
	.loc 1 297 0
	movq	-8(%rbp), %rax	# hash, tmp75
	movl	8(%rax), %eax	# hash_3->primelevel, D.5865
	cltq
	movl	gki_primes(,%rax,4), %edx	# gki_primes, D.5865
	movq	-8(%rbp), %rax	# hash, tmp77
	movl	%edx, 12(%rax)	# D.5865, hash_3->nhash
	.loc 1 298 0
	movq	-8(%rbp), %rax	# hash, tmp78
	movl	12(%rax), %eax	# hash_3->nhash, D.5865
	movslq	%eax, %rdx	# D.5865, D.5866
	movq	%rdx, %rax	# D.5866, tmp79
	addq	%rax, %rax	# tmp79
	addq	%rdx, %rax	# D.5866, tmp79
	salq	$3, %rax	#, tmp80
	movq	%rax, %rdx	# D.5866,
	movl	$298, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hash, tmp81
	movq	%rax, (%rdx)	# D.5867, hash_3->table
	.loc 1 299 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L30	#
.L31:
	.loc 1 300 0 discriminator 2
	movq	-8(%rbp), %rax	# hash, tmp82
	movq	(%rax), %rax	# hash_3->table, D.5868
	movl	-12(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.5866
	salq	$3, %rdx	#, D.5866
	addq	%rdx, %rax	# D.5866, D.5868
	movq	$0, (%rax)	#, *_15
	.loc 1 299 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L30:
	.loc 1 299 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hash, tmp84
	movl	12(%rax), %eax	# hash_3->nhash, D.5865
	cmpl	-12(%rbp), %eax	# i, D.5865
	jg	.L31	#,
	.loc 1 301 0 is_stmt 1
	movq	-8(%rbp), %rax	# hash, tmp85
	movl	$0, 16(%rax)	#, hash_3->nkeys
	.loc 1 302 0
	movq	-8(%rbp), %rax	# hash, D.5869
	.loc 1 303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	gki_alloc, .-gki_alloc
	.type	gki_hashvalue, @function
gki_hashvalue:
.LFB8:
	.loc 1 326 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# hash, hash
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 327 0
	movl	$0, -4(%rbp)	#, val
	.loc 1 329 0
	jmp	.L34	#
.L37:
	.loc 1 331 0
	movl	-4(%rbp), %eax	# val, tmp72
	sall	$7, %eax	#, D.5872
	movl	%eax, %edx	# D.5872, D.5872
	movq	-32(%rbp), %rax	# key, tmp73
	movzbl	(%rax), %eax	# *key_1, D.5871
	movsbl	%al, %eax	# D.5871, D.5872
	addl	%edx, %eax	# D.5872, tmp74
	movl	%eax, -4(%rbp)	# tmp74, val
	.loc 1 332 0
	addq	$1, -32(%rbp)	#, key
	movq	-32(%rbp), %rax	# key, tmp75
	movzbl	(%rax), %eax	# *key_11, D.5871
	testb	%al, %al	# D.5871
	jne	.L35	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hash, tmp76
	movl	12(%rax), %ecx	# hash_13(D)->nhash, D.5872
	movl	-4(%rbp), %eax	# val, tmp78
	cltd
	idivl	%ecx	# D.5872
	movl	%edx, -4(%rbp)	# tmp79, val
	jmp	.L36	#
.L35:
	.loc 1 333 0 is_stmt 1
	movl	-4(%rbp), %eax	# val, tmp81
	sall	$7, %eax	#, D.5872
	movl	%eax, %edx	# D.5872, D.5872
	movq	-32(%rbp), %rax	# key, tmp82
	movzbl	(%rax), %eax	# *key_11, D.5871
	movsbl	%al, %eax	# D.5871, D.5872
	addl	%eax, %edx	# D.5872, D.5872
	movq	-24(%rbp), %rax	# hash, tmp83
	movl	12(%rax), %ecx	# hash_13(D)->nhash, D.5872
	movl	%edx, %eax	# D.5872, tmp85
	cltd
	idivl	%ecx	# D.5872
	movl	%edx, -4(%rbp)	# tmp84, val
	.loc 1 329 0
	addq	$1, -32(%rbp)	#, key
.L34:
	.loc 1 329 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# key, tmp86
	movzbl	(%rax), %eax	# *key_1, D.5871
	testb	%al, %al	# D.5871
	jne	.L37	#,
.L36:
	.loc 1 335 0 is_stmt 1
	movl	-4(%rbp), %eax	# val, D.5872
	.loc 1 336 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	gki_hashvalue, .-gki_hashvalue
	.type	gki_upsize, @function
gki_upsize:
.LFB9:
	.loc 1 351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# old, old
	.loc 1 358 0
	movq	-40(%rbp), %rax	# old, tmp87
	movl	8(%rax), %eax	# old_4(D)->primelevel, D.5873
	cmpl	$2, %eax	#, D.5873
	jle	.L40	#,
	.loc 1 358 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5873
	jmp	.L41	#
.L40:
	.loc 1 359 0 is_stmt 1
	movq	-40(%rbp), %rax	# old, tmp88
	movl	8(%rax), %eax	# old_4(D)->primelevel, D.5873
	addl	$1, %eax	#, D.5873
	movl	%eax, %edi	# D.5873,
	call	gki_alloc	#
	movq	%rax, -16(%rbp)	# tmp89, new
	.loc 1 366 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L42	#
.L45:
	.loc 1 368 0
	movq	-40(%rbp), %rax	# old, tmp90
	movq	(%rax), %rax	# old_4(D)->table, D.5874
	movl	-32(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.5875
	salq	$3, %rdx	#, D.5875
	addq	%rdx, %rax	# D.5875, D.5874
	movq	(%rax), %rax	# *_15, tmp92
	movq	%rax, -24(%rbp)	# tmp92, optr
	.loc 1 369 0
	jmp	.L43	#
.L44:
	.loc 1 371 0
	movq	-24(%rbp), %rax	# optr, tmp93
	movq	(%rax), %rdx	# optr_2->key, D.5876
	movq	-16(%rbp), %rax	# new, tmp94
	movq	%rdx, %rsi	# D.5876,
	movq	%rax, %rdi	# tmp94,
	call	gki_hashvalue	#
	movl	%eax, -28(%rbp)	# tmp95, val
	.loc 1 373 0
	movq	-16(%rbp), %rax	# new, tmp96
	movq	(%rax), %rax	# new_9->table, D.5874
	movl	-28(%rbp), %edx	# val, tmp97
	movslq	%edx, %rdx	# tmp97, D.5875
	salq	$3, %rdx	#, D.5875
	addq	%rdx, %rax	# D.5875, D.5874
	movq	(%rax), %rax	# *_22, tmp98
	movq	%rax, -8(%rbp)	# tmp98, nptr
	.loc 1 374 0
	movq	-16(%rbp), %rax	# new, tmp99
	movq	(%rax), %rax	# new_9->table, D.5874
	movl	-28(%rbp), %edx	# val, tmp100
	movslq	%edx, %rdx	# tmp100, D.5875
	salq	$3, %rdx	#, D.5875
	addq	%rax, %rdx	# D.5874, D.5874
	movq	-24(%rbp), %rax	# optr, tmp101
	movq	%rax, (%rdx)	# tmp101, *_27
	.loc 1 375 0
	movq	-24(%rbp), %rax	# optr, tmp102
	movq	16(%rax), %rax	# optr_2->nxt, tmp103
	movq	%rax, -24(%rbp)	# tmp103, optr
	.loc 1 376 0
	movq	-16(%rbp), %rax	# new, tmp104
	movq	(%rax), %rax	# new_9->table, D.5874
	movl	-28(%rbp), %edx	# val, tmp105
	movslq	%edx, %rdx	# tmp105, D.5875
	salq	$3, %rdx	#, D.5875
	addq	%rdx, %rax	# D.5875, D.5874
	movq	(%rax), %rax	# *_32, D.5877
	movq	-8(%rbp), %rdx	# nptr, tmp106
	movq	%rdx, 16(%rax)	# tmp106, _33->nxt
.L43:
	.loc 1 369 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, optr
	jne	.L44	#,
	.loc 1 366 0
	addl	$1, -32(%rbp)	#, i
.L42:
	.loc 1 366 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# old, tmp107
	movl	12(%rax), %eax	# old_4(D)->nhash, D.5873
	cmpl	-32(%rbp), %eax	# i, D.5873
	jg	.L45	#,
	.loc 1 379 0 is_stmt 1
	movq	-40(%rbp), %rax	# old, tmp108
	movq	(%rax), %rax	# old_4(D)->table, D.5874
	movq	%rax, %rdi	# D.5874,
	call	free	#
	.loc 1 385 0
	movq	-16(%rbp), %rax	# new, tmp109
	movl	8(%rax), %edx	# new_9->primelevel, D.5873
	movq	-40(%rbp), %rax	# old, tmp110
	movl	%edx, 8(%rax)	# D.5873, old_4(D)->primelevel
	.loc 1 386 0
	movq	-16(%rbp), %rax	# new, tmp111
	movl	12(%rax), %edx	# new_9->nhash, D.5873
	movq	-40(%rbp), %rax	# old, tmp112
	movl	%edx, 12(%rax)	# D.5873, old_4(D)->nhash
	.loc 1 387 0
	movq	-16(%rbp), %rax	# new, tmp113
	movq	(%rax), %rdx	# new_9->table, D.5874
	movq	-40(%rbp), %rax	# old, tmp114
	movq	%rdx, (%rax)	# D.5874, old_4(D)->table
	.loc 1 388 0
	movq	-16(%rbp), %rax	# new, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free	#
	.loc 1 389 0
	movl	$1, %eax	#, D.5873
.L41:
	.loc 1 390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	gki_upsize, .-gki_upsize
.Letext0:
	.file 2 "gki.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ff
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.long	.LASF33
	.long	.LASF34
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
	.long	0x72
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF35
	.byte	0x18
	.byte	0x2
	.byte	0x1a
	.long	0xc6
	.uleb128 0x6
	.string	"key"
	.byte	0x2
	.byte	0x1b
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.string	"idx"
	.byte	0x2
	.byte	0x1c
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.string	"nxt"
	.byte	0x2
	.byte	0x1d
	.long	0xc6
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x95
	.uleb128 0x7
	.byte	0x18
	.byte	0x2
	.byte	0x24
	.long	0x105
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x25
	.long	0x105
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0x27
	.long	0x57
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2
	.byte	0x28
	.long	0x57
	.byte	0xc
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.byte	0x29
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc6
	.uleb128 0x9
	.string	"GKI"
	.byte	0x2
	.byte	0x2a
	.long	0xcc
	.uleb128 0x4
	.byte	0x8
	.long	0x10b
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x75
	.long	0x116
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x77
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.byte	0x87
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x192
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x87
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0x89
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xb5
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0xb5
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.byte	0xb5
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0xb7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0xb8
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0xdb
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x246
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0xdb
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.byte	0xdb
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0xdd
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0xde
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.byte	0xf3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c4
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0xf3
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0xf5
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xf6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0xf7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0xf8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0xf9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0xfa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.value	0x11f
	.long	0x116
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x312
	.uleb128 0x11
	.long	.LASF14
	.byte	0x1
	.value	0x11f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF17
	.byte	0x1
	.value	0x121
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x122
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.value	0x145
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x362
	.uleb128 0x11
	.long	.LASF17
	.byte	0x1
	.value	0x145
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"key"
	.byte	0x1
	.value	0x145
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x147
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.value	0x15e
	.long	0x57
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd
	.uleb128 0x15
	.string	"old"
	.byte	0x1
	.value	0x15e
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"new"
	.byte	0x1
	.value	0x160
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x161
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.value	0x162
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF30
	.byte	0x1
	.value	0x163
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.value	0x164
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.long	0x57
	.long	0x3ed
	.uleb128 0x17
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x60
	.long	0x3dd
	.uleb128 0x9
	.byte	0x3
	.quad	gki_primes
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF32:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF26:
	.string	"gki_alloc"
.LASF2:
	.string	"short unsigned int"
.LASF20:
	.string	"GKIKeyIndex"
.LASF33:
	.string	"gki.c"
.LASF16:
	.string	"nkeys"
.LASF24:
	.string	"maxkeys"
.LASF25:
	.string	"minkeys"
.LASF11:
	.string	"float"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"primelevel"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"gki_upsize"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"table"
.LASF12:
	.string	"double"
.LASF21:
	.string	"GKIFree"
.LASF5:
	.string	"short int"
.LASF27:
	.string	"gki_hashvalue"
.LASF34:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF19:
	.string	"GKIStoreKey"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"nempty"
.LASF8:
	.string	"char"
.LASF22:
	.string	"GKIStatus"
.LASF17:
	.string	"hash"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF30:
	.string	"nptr"
.LASF31:
	.string	"gki_primes"
.LASF15:
	.string	"nhash"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF35:
	.string	"gki_elem"
.LASF29:
	.string	"optr"
.LASF18:
	.string	"GKIInit"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
