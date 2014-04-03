	.file	"hashtab.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hashtab.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	htab_hash_pointer
	.data
	.align 8
	.type	htab_hash_pointer, @object
	.size	htab_hash_pointer, 8
htab_hash_pointer:
	.quad	hash_pointer
	.globl	htab_eq_pointer
	.align 8
	.type	htab_eq_pointer, @object
	.size	htab_eq_pointer, 8
htab_eq_pointer:
	.quad	eq_pointer
	.section	.rodata
	.align 8
.LC0:
	.string	"Cannot find prime bigger than %lu\n"
	.text
	.type	higher_prime_number, @function
higher_prime_number:
.LFB2:
	.file 1 "hashtab.c"
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# n, n
	.loc 1 115 0
	movq	$primes.5533, -24(%rbp)	#, low
	.loc 1 116 0
	movq	$primes.5533+240, -16(%rbp)	#, high
	.loc 1 118 0
	jmp	.L2	#
.L4:
.LBB2:
	.loc 1 120 0
	movq	-16(%rbp), %rdx	# high, high.0
	movq	-24(%rbp), %rax	# low, low.1
	subq	%rax, %rdx	# low.1, D.6011
	movq	%rdx, %rax	# D.6011, D.6011
	sarq	$3, %rax	#, tmp71
	movq	%rax, %rdx	# D.6011, tmp72
	shrq	$63, %rdx	#, tmp72
	addq	%rdx, %rax	# tmp72, tmp73
	sarq	%rax	# tmp74
	leaq	0(,%rax,8), %rdx	#, D.6012
	movq	-24(%rbp), %rax	# low, tmp78
	addq	%rdx, %rax	# D.6012, tmp77
	movq	%rax, -8(%rbp)	# tmp77, mid
	.loc 1 121 0
	movq	-8(%rbp), %rax	# mid, tmp79
	movq	(%rax), %rax	# *mid_12, D.6012
	cmpq	-40(%rbp), %rax	# n, D.6012
	jae	.L3	#,
	.loc 1 122 0
	movq	-8(%rbp), %rax	# mid, tmp83
	addq	$8, %rax	#, tmp82
	movq	%rax, -24(%rbp)	# tmp82, low
	jmp	.L2	#
.L3:
	.loc 1 124 0
	movq	-8(%rbp), %rax	# mid, tmp84
	movq	%rax, -16(%rbp)	# tmp84, high
.L2:
.LBE2:
	.loc 1 118 0 discriminator 1
	movq	-24(%rbp), %rax	# low, tmp85
	cmpq	-16(%rbp), %rax	# high, tmp85
	jne	.L4	#,
	.loc 1 128 0
	movq	-24(%rbp), %rax	# low, tmp86
	movq	(%rax), %rax	# *low_1, D.6012
	cmpq	-40(%rbp), %rax	# n, D.6012
	jae	.L5	#,
	.loc 1 130 0
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movq	-40(%rbp), %rdx	# n, tmp87
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.2,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 131 0
	call	abort	#
.L5:
	.loc 1 134 0
	movq	-24(%rbp), %rax	# low, tmp88
	movq	(%rax), %rax	# *low_1, D.6012
	.loc 1 135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	higher_prime_number, .-higher_prime_number
	.type	hash_pointer, @function
hash_pointer:
.LFB3:
	.loc 1 142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 143 0
	movq	-8(%rbp), %rax	# p, p.3
	sarq	$3, %rax	#, D.6014
	.loc 1 144 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	hash_pointer, .-hash_pointer
	.type	eq_pointer, @function
eq_pointer:
.LFB4:
	.loc 1 152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# p1, p1
	movq	%rsi, -16(%rbp)	# p2, p2
	.loc 1 153 0
	movq	-8(%rbp), %rax	# p1, tmp62
	cmpq	-16(%rbp), %rax	# p2, tmp62
	sete	%al	#, D.6016
	movzbl	%al, %eax	# D.6016, D.6017
	.loc 1 154 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	eq_pointer, .-eq_pointer
	.globl	htab_create
	.type	htab_create, @function
htab_create:
.LFB5:
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# size, size
	movq	%rsi, -32(%rbp)	# hash_f, hash_f
	movq	%rdx, -40(%rbp)	# eq_f, eq_f
	movq	%rcx, -48(%rbp)	# del_f, del_f
	.loc 1 170 0
	movq	-24(%rbp), %rax	# size, tmp62
	movq	%rax, %rdi	# tmp62,
	call	higher_prime_number	#
	movq	%rax, -24(%rbp)	# tmp63, size
	.loc 1 171 0
	movl	$72, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp64, result
	.loc 1 172 0
	movq	-24(%rbp), %rax	# size, tmp65
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp66, D.6018
	movq	-8(%rbp), %rax	# result, tmp67
	movq	%rdx, 24(%rax)	# D.6018, result_3->entries
	.loc 1 173 0
	movq	-8(%rbp), %rax	# result, tmp68
	movq	-24(%rbp), %rdx	# size, tmp69
	movq	%rdx, 32(%rax)	# tmp69, result_3->size
	.loc 1 174 0
	movq	-8(%rbp), %rax	# result, tmp70
	movq	-32(%rbp), %rdx	# hash_f, tmp71
	movq	%rdx, (%rax)	# tmp71, result_3->hash_f
	.loc 1 175 0
	movq	-8(%rbp), %rax	# result, tmp72
	movq	-40(%rbp), %rdx	# eq_f, tmp73
	movq	%rdx, 8(%rax)	# tmp73, result_3->eq_f
	.loc 1 176 0
	movq	-8(%rbp), %rax	# result, tmp74
	movq	-48(%rbp), %rdx	# del_f, tmp75
	movq	%rdx, 16(%rax)	# tmp75, result_3->del_f
	.loc 1 177 0
	movq	-8(%rbp), %rax	# result, tmp76
	movl	$0, 64(%rax)	#, result_3->return_allocation_failure
	.loc 1 178 0
	movq	-8(%rbp), %rax	# result, D.6019
	.loc 1 179 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	htab_create, .-htab_create
	.globl	htab_try_create
	.type	htab_try_create, @function
htab_try_create:
.LFB6:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# size, size
	movq	%rsi, -32(%rbp)	# hash_f, hash_f
	movq	%rdx, -40(%rbp)	# eq_f, eq_f
	movq	%rcx, -48(%rbp)	# del_f, del_f
	.loc 1 195 0
	movq	-24(%rbp), %rax	# size, tmp63
	movq	%rax, %rdi	# tmp63,
	call	higher_prime_number	#
	movq	%rax, -24(%rbp)	# tmp64, size
	.loc 1 196 0
	movl	$72, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp65, result
	.loc 1 197 0
	cmpq	$0, -8(%rbp)	#, result
	jne	.L14	#,
	.loc 1 198 0
	movl	$0, %eax	#, D.6020
	jmp	.L15	#
.L14:
	.loc 1 200 0
	movq	-24(%rbp), %rax	# size, tmp66
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	calloc	#
	movq	%rax, %rdx	# tmp67, D.6021
	movq	-8(%rbp), %rax	# result, tmp68
	movq	%rdx, 24(%rax)	# D.6021, result_4->entries
	.loc 1 201 0
	movq	-8(%rbp), %rax	# result, tmp69
	movq	24(%rax), %rax	# result_4->entries, D.6022
	testq	%rax, %rax	# D.6022
	jne	.L16	#,
	.loc 1 203 0
	movq	-8(%rbp), %rax	# result, tmp70
	movq	%rax, %rdi	# tmp70,
	call	free	#
	.loc 1 204 0
	movl	$0, %eax	#, D.6020
	jmp	.L15	#
.L16:
	.loc 1 207 0
	movq	-8(%rbp), %rax	# result, tmp71
	movq	-24(%rbp), %rdx	# size, tmp72
	movq	%rdx, 32(%rax)	# tmp72, result_4->size
	.loc 1 208 0
	movq	-8(%rbp), %rax	# result, tmp73
	movq	-32(%rbp), %rdx	# hash_f, tmp74
	movq	%rdx, (%rax)	# tmp74, result_4->hash_f
	.loc 1 209 0
	movq	-8(%rbp), %rax	# result, tmp75
	movq	-40(%rbp), %rdx	# eq_f, tmp76
	movq	%rdx, 8(%rax)	# tmp76, result_4->eq_f
	.loc 1 210 0
	movq	-8(%rbp), %rax	# result, tmp77
	movq	-48(%rbp), %rdx	# del_f, tmp78
	movq	%rdx, 16(%rax)	# tmp78, result_4->del_f
	.loc 1 211 0
	movq	-8(%rbp), %rax	# result, tmp79
	movl	$1, 64(%rax)	#, result_4->return_allocation_failure
	.loc 1 212 0
	movq	-8(%rbp), %rax	# result, D.6020
.L15:
	.loc 1 213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	htab_try_create, .-htab_try_create
	.globl	htab_delete
	.type	htab_delete, @function
htab_delete:
.LFB7:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# htab, htab
	.loc 1 224 0
	movq	-24(%rbp), %rax	# htab, tmp80
	movq	16(%rax), %rax	# htab_2(D)->del_f, D.6023
	testq	%rax, %rax	# D.6023
	je	.L18	#,
	.loc 1 225 0
	movq	-24(%rbp), %rax	# htab, tmp81
	movq	32(%rax), %rax	# htab_2(D)->size, D.6024
	subl	$1, %eax	#, D.6025
	movl	%eax, -4(%rbp)	# D.6025, i
	jmp	.L19	#
.L21:
	.loc 1 226 0
	movq	-24(%rbp), %rax	# htab, tmp82
	movq	24(%rax), %rax	# htab_2(D)->entries, D.6026
	movl	-4(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.6024
	salq	$3, %rdx	#, D.6024
	addq	%rdx, %rax	# D.6024, D.6026
	movq	(%rax), %rax	# *_11, D.6027
	testq	%rax, %rax	# D.6027
	je	.L20	#,
	.loc 1 227 0
	movq	-24(%rbp), %rax	# htab, tmp84
	movq	24(%rax), %rax	# htab_2(D)->entries, D.6026
	movl	-4(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.6024
	salq	$3, %rdx	#, D.6024
	addq	%rdx, %rax	# D.6024, D.6026
	movq	(%rax), %rax	# *_16, D.6027
	cmpq	$1, %rax	#, D.6027
	je	.L20	#,
	.loc 1 228 0
	movq	-24(%rbp), %rax	# htab, tmp86
	movq	16(%rax), %rax	# htab_2(D)->del_f, D.6023
	movq	-24(%rbp), %rdx	# htab, tmp87
	movq	24(%rdx), %rdx	# htab_2(D)->entries, D.6026
	movl	-4(%rbp), %ecx	# i, tmp88
	movslq	%ecx, %rcx	# tmp88, D.6024
	salq	$3, %rcx	#, D.6024
	addq	%rcx, %rdx	# D.6024, D.6026
	movq	(%rdx), %rdx	# *_22, D.6027
	movq	%rdx, %rdi	# D.6027,
	call	*%rax	# D.6023
.L20:
	.loc 1 225 0
	subl	$1, -4(%rbp)	#, i
.L19:
	.loc 1 225 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L21	#,
.L18:
	.loc 1 230 0 is_stmt 1
	movq	-24(%rbp), %rax	# htab, tmp89
	movq	24(%rax), %rax	# htab_2(D)->entries, D.6026
	movq	%rax, %rdi	# D.6026,
	call	free	#
	.loc 1 231 0
	movq	-24(%rbp), %rax	# htab, tmp90
	movq	%rax, %rdi	# tmp90,
	call	free	#
	.loc 1 232 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	htab_delete, .-htab_delete
	.globl	htab_empty
	.type	htab_empty, @function
htab_empty:
.LFB8:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# htab, htab
	.loc 1 242 0
	movq	-24(%rbp), %rax	# htab, tmp82
	movq	16(%rax), %rax	# htab_2(D)->del_f, D.6028
	testq	%rax, %rax	# D.6028
	je	.L23	#,
	.loc 1 243 0
	movq	-24(%rbp), %rax	# htab, tmp83
	movq	32(%rax), %rax	# htab_2(D)->size, D.6029
	subl	$1, %eax	#, D.6030
	movl	%eax, -4(%rbp)	# D.6030, i
	jmp	.L24	#
.L26:
	.loc 1 244 0
	movq	-24(%rbp), %rax	# htab, tmp84
	movq	24(%rax), %rax	# htab_2(D)->entries, D.6031
	movl	-4(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.6029
	salq	$3, %rdx	#, D.6029
	addq	%rdx, %rax	# D.6029, D.6031
	movq	(%rax), %rax	# *_11, D.6032
	testq	%rax, %rax	# D.6032
	je	.L25	#,
	.loc 1 245 0
	movq	-24(%rbp), %rax	# htab, tmp86
	movq	24(%rax), %rax	# htab_2(D)->entries, D.6031
	movl	-4(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, D.6029
	salq	$3, %rdx	#, D.6029
	addq	%rdx, %rax	# D.6029, D.6031
	movq	(%rax), %rax	# *_16, D.6032
	cmpq	$1, %rax	#, D.6032
	je	.L25	#,
	.loc 1 246 0
	movq	-24(%rbp), %rax	# htab, tmp88
	movq	16(%rax), %rax	# htab_2(D)->del_f, D.6028
	movq	-24(%rbp), %rdx	# htab, tmp89
	movq	24(%rdx), %rdx	# htab_2(D)->entries, D.6031
	movl	-4(%rbp), %ecx	# i, tmp90
	movslq	%ecx, %rcx	# tmp90, D.6029
	salq	$3, %rcx	#, D.6029
	addq	%rcx, %rdx	# D.6029, D.6031
	movq	(%rdx), %rdx	# *_22, D.6032
	movq	%rdx, %rdi	# D.6032,
	call	*%rax	# D.6028
.L25:
	.loc 1 243 0
	subl	$1, -4(%rbp)	#, i
.L24:
	.loc 1 243 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L26	#,
.L23:
	.loc 1 248 0 is_stmt 1
	movq	-24(%rbp), %rax	# htab, tmp91
	movq	32(%rax), %rax	# htab_2(D)->size, D.6029
	leaq	0(,%rax,8), %rdx	#, D.6029
	movq	-24(%rbp), %rax	# htab, tmp92
	movq	24(%rax), %rax	# htab_2(D)->entries, D.6031
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6031,
	call	memset	#
	.loc 1 249 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	htab_empty, .-htab_empty
	.type	find_empty_slot_for_expand, @function
find_empty_slot_for_expand:
.LFB9:
	.loc 1 262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# htab, htab
	movl	%esi, -44(%rbp)	# hash, hash
	.loc 1 263 0
	movq	-40(%rbp), %rax	# htab, tmp79
	movq	32(%rax), %rax	# htab_4(D)->size, tmp80
	movq	%rax, -16(%rbp)	# tmp80, size
	.loc 1 264 0
	movl	-44(%rbp), %eax	# hash, D.6034
	movl	$0, %edx	#, tmp81
	divq	-16(%rbp)	# size
	movq	%rdx, %rax	# tmp81, D.6034
	movl	%eax, -24(%rbp)	# D.6034, index
	.loc 1 265 0
	movq	-40(%rbp), %rax	# htab, tmp83
	movq	24(%rax), %rax	# htab_4(D)->entries, D.6033
	movl	-24(%rbp), %edx	# index, D.6034
	salq	$3, %rdx	#, D.6034
	addq	%rdx, %rax	# D.6034, tmp84
	movq	%rax, -8(%rbp)	# tmp84, slot
	.loc 1 268 0
	movq	-8(%rbp), %rax	# slot, tmp85
	movq	(%rax), %rax	# *slot_13, D.6035
	testq	%rax, %rax	# D.6035
	jne	.L28	#,
	.loc 1 269 0
	movq	-8(%rbp), %rax	# slot, D.6033
	jmp	.L29	#
.L28:
	.loc 1 270 0
	movq	-8(%rbp), %rax	# slot, tmp86
	movq	(%rax), %rax	# *slot_13, D.6035
	cmpq	$1, %rax	#, D.6035
	jne	.L30	#,
	.loc 1 271 0
	call	abort	#
.L30:
	.loc 1 273 0
	movl	-44(%rbp), %eax	# hash, D.6034
	movq	-16(%rbp), %rdx	# size, tmp87
	leaq	-2(%rdx), %rcx	#, D.6034
	movl	$0, %edx	#, tmp88
	divq	%rcx	# D.6034
	movq	%rdx, %rax	# tmp88, D.6034
	addl	$1, %eax	#, tmp90
	movl	%eax, -20(%rbp)	# tmp90, hash2
.L34:
	.loc 1 276 0
	movl	-20(%rbp), %eax	# hash2, tmp91
	addl	%eax, -24(%rbp)	# tmp91, index
	.loc 1 277 0
	movl	-24(%rbp), %eax	# index, D.6034
	cmpq	-16(%rbp), %rax	# size, D.6034
	jb	.L31	#,
	.loc 1 278 0
	movq	-16(%rbp), %rax	# size, tmp92
	subl	%eax, -24(%rbp)	# D.6036, index
.L31:
	.loc 1 280 0
	movq	-40(%rbp), %rax	# htab, tmp93
	movq	24(%rax), %rax	# htab_4(D)->entries, D.6033
	movl	-24(%rbp), %edx	# index, D.6034
	salq	$3, %rdx	#, D.6034
	addq	%rdx, %rax	# D.6034, tmp94
	movq	%rax, -8(%rbp)	# tmp94, slot
	.loc 1 281 0
	movq	-8(%rbp), %rax	# slot, tmp95
	movq	(%rax), %rax	# *slot_29, D.6035
	testq	%rax, %rax	# D.6035
	jne	.L32	#,
	.loc 1 282 0
	movq	-8(%rbp), %rax	# slot, D.6033
	jmp	.L29	#
.L32:
	.loc 1 283 0
	movq	-8(%rbp), %rax	# slot, tmp96
	movq	(%rax), %rax	# *slot_29, D.6035
	cmpq	$1, %rax	#, D.6035
	jne	.L33	#,
	.loc 1 284 0
	call	abort	#
.L33:
	.loc 1 285 0
	jmp	.L34	#
.L29:
	.loc 1 286 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	find_empty_slot_for_expand, .-find_empty_slot_for_expand
	.type	htab_expand, @function
htab_expand:
.LFB10:
	.loc 1 299 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# htab, htab
	.loc 1 304 0
	movq	-56(%rbp), %rax	# htab, tmp75
	movq	24(%rax), %rax	# htab_3(D)->entries, tmp76
	movq	%rax, -40(%rbp)	# tmp76, oentries
	.loc 1 305 0
	movq	-56(%rbp), %rax	# htab, tmp77
	movq	32(%rax), %rax	# htab_3(D)->size, D.6039
	leaq	0(,%rax,8), %rdx	#, D.6039
	movq	-40(%rbp), %rax	# oentries, tmp81
	addq	%rdx, %rax	# D.6039, tmp80
	movq	%rax, -32(%rbp)	# tmp80, olimit
	.loc 1 307 0
	movq	-56(%rbp), %rax	# htab, tmp82
	movq	32(%rax), %rax	# htab_3(D)->size, D.6039
	addq	%rax, %rax	# D.6039
	movq	%rax, %rdi	# D.6039,
	call	higher_prime_number	#
	movq	-56(%rbp), %rdx	# htab, tmp83
	movq	%rax, 32(%rdx)	# D.6039, htab_3(D)->size
	.loc 1 309 0
	movq	-56(%rbp), %rax	# htab, tmp84
	movl	64(%rax), %eax	# htab_3(D)->return_allocation_failure, D.6038
	testl	%eax, %eax	# D.6038
	je	.L36	#,
.LBB3:
	.loc 1 311 0
	movq	-56(%rbp), %rax	# htab, tmp85
	movq	32(%rax), %rax	# htab_3(D)->size, D.6039
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6039,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp86, nentries
	.loc 1 312 0
	cmpq	$0, -24(%rbp)	#, nentries
	jne	.L37	#,
	.loc 1 313 0
	movl	$0, %eax	#, D.6038
	jmp	.L38	#
.L37:
	.loc 1 314 0
	movq	-56(%rbp), %rax	# htab, tmp87
	movq	-24(%rbp), %rdx	# nentries, tmp88
	movq	%rdx, 24(%rax)	# tmp88, htab_3(D)->entries
.LBE3:
	jmp	.L39	#
.L36:
	.loc 1 317 0
	movq	-56(%rbp), %rax	# htab, tmp89
	movq	32(%rax), %rax	# htab_3(D)->size, D.6039
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6039,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp90, D.6040
	movq	-56(%rbp), %rax	# htab, tmp91
	movq	%rdx, 24(%rax)	# D.6040, htab_3(D)->entries
.L39:
	.loc 1 319 0
	movq	-56(%rbp), %rax	# htab, tmp92
	movq	40(%rax), %rdx	# htab_3(D)->n_elements, D.6039
	movq	-56(%rbp), %rax	# htab, tmp93
	movq	48(%rax), %rax	# htab_3(D)->n_deleted, D.6039
	subq	%rax, %rdx	# D.6039, D.6039
	movq	-56(%rbp), %rax	# htab, tmp94
	movq	%rdx, 40(%rax)	# D.6039, htab_3(D)->n_elements
	.loc 1 320 0
	movq	-56(%rbp), %rax	# htab, tmp95
	movq	$0, 48(%rax)	#, htab_3(D)->n_deleted
	.loc 1 322 0
	movq	-40(%rbp), %rax	# oentries, tmp96
	movq	%rax, -48(%rbp)	# tmp96, p
.L41:
.LBB4:
	.loc 1 325 0
	movq	-48(%rbp), %rax	# p, tmp97
	movq	(%rax), %rax	# *p_1, tmp98
	movq	%rax, -16(%rbp)	# tmp98, x
	.loc 1 327 0
	cmpq	$0, -16(%rbp)	#, x
	je	.L40	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	cmpq	$1, -16(%rbp)	#, x
	je	.L40	#,
.LBB5:
	.loc 1 329 0 is_stmt 1
	movq	-56(%rbp), %rax	# htab, tmp99
	movq	(%rax), %rax	# htab_3(D)->hash_f, D.6041
	movq	-16(%rbp), %rdx	# x, tmp100
	movq	%rdx, %rdi	# tmp100,
	call	*%rax	# D.6041
	movl	%eax, %edx	#, D.6042
	movq	-56(%rbp), %rax	# htab, tmp101
	movl	%edx, %esi	# D.6042,
	movq	%rax, %rdi	# tmp101,
	call	find_empty_slot_for_expand	#
	movq	%rax, -8(%rbp)	# tmp102, q
	.loc 1 331 0
	movq	-8(%rbp), %rax	# q, tmp103
	movq	-16(%rbp), %rdx	# x, tmp104
	movq	%rdx, (%rax)	# tmp104, *q_24
.L40:
.LBE5:
	.loc 1 334 0
	addq	$8, -48(%rbp)	#, p
.LBE4:
	.loc 1 336 0
	movq	-48(%rbp), %rax	# p, tmp105
	cmpq	-32(%rbp), %rax	# olimit, tmp105
	jb	.L41	#,
	.loc 1 338 0
	movq	-40(%rbp), %rax	# oentries, tmp106
	movq	%rax, %rdi	# tmp106,
	call	free	#
	.loc 1 339 0
	movl	$1, %eax	#, D.6038
.L38:
	.loc 1 340 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	htab_expand, .-htab_expand
	.globl	htab_find_with_hash
	.type	htab_find_with_hash, @function
htab_find_with_hash:
.LFB11:
	.loc 1 350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# htab, htab
	movq	%rsi, -48(%rbp)	# element, element
	movl	%edx, -52(%rbp)	# hash, hash
	.loc 1 356 0
	movq	-40(%rbp), %rax	# htab, tmp85
	movl	56(%rax), %eax	# htab_4(D)->searches, D.6044
	leal	1(%rax), %edx	#, D.6044
	movq	-40(%rbp), %rax	# htab, tmp86
	movl	%edx, 56(%rax)	# D.6044, htab_4(D)->searches
	.loc 1 357 0
	movq	-40(%rbp), %rax	# htab, tmp87
	movq	32(%rax), %rax	# htab_4(D)->size, tmp88
	movq	%rax, -16(%rbp)	# tmp88, size
	.loc 1 358 0
	movl	-52(%rbp), %eax	# hash, D.6045
	movl	$0, %edx	#, tmp89
	divq	-16(%rbp)	# size
	movq	%rdx, %rax	# tmp89, D.6045
	movl	%eax, -24(%rbp)	# D.6045, index
	.loc 1 360 0
	movq	-40(%rbp), %rax	# htab, tmp91
	movq	24(%rax), %rax	# htab_4(D)->entries, D.6046
	movl	-24(%rbp), %edx	# index, D.6045
	salq	$3, %rdx	#, D.6045
	addq	%rdx, %rax	# D.6045, D.6046
	movq	(%rax), %rax	# *_15, tmp92
	movq	%rax, -8(%rbp)	# tmp92, entry
	.loc 1 361 0
	cmpq	$0, -8(%rbp)	#, entry
	je	.L43	#,
	.loc 1 362 0
	cmpq	$1, -8(%rbp)	#, entry
	je	.L44	#,
	.loc 1 362 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# htab, tmp93
	movq	8(%rax), %rax	# htab_4(D)->eq_f, D.6047
	movq	-48(%rbp), %rcx	# element, tmp94
	movq	-8(%rbp), %rdx	# entry, tmp95
	movq	%rcx, %rsi	# tmp94,
	movq	%rdx, %rdi	# tmp95,
	call	*%rax	# D.6047
	testl	%eax, %eax	# D.6048
	je	.L44	#,
.L43:
	.loc 1 363 0 is_stmt 1
	movq	-8(%rbp), %rax	# entry, D.6043
	jmp	.L45	#
.L44:
	.loc 1 365 0
	movl	-52(%rbp), %eax	# hash, D.6045
	movq	-16(%rbp), %rdx	# size, tmp96
	leaq	-2(%rdx), %rcx	#, D.6045
	movl	$0, %edx	#, tmp97
	divq	%rcx	# D.6045
	movq	%rdx, %rax	# tmp97, D.6045
	addl	$1, %eax	#, tmp99
	movl	%eax, -20(%rbp)	# tmp99, hash2
.L49:
	.loc 1 369 0
	movq	-40(%rbp), %rax	# htab, tmp100
	movl	60(%rax), %eax	# htab_4(D)->collisions, D.6044
	leal	1(%rax), %edx	#, D.6044
	movq	-40(%rbp), %rax	# htab, tmp101
	movl	%edx, 60(%rax)	# D.6044, htab_4(D)->collisions
	.loc 1 370 0
	movl	-20(%rbp), %eax	# hash2, tmp102
	addl	%eax, -24(%rbp)	# tmp102, index
	.loc 1 371 0
	movl	-24(%rbp), %eax	# index, D.6045
	cmpq	-16(%rbp), %rax	# size, D.6045
	jb	.L46	#,
	.loc 1 372 0
	movq	-16(%rbp), %rax	# size, tmp103
	subl	%eax, -24(%rbp)	# D.6044, index
.L46:
	.loc 1 374 0
	movq	-40(%rbp), %rax	# htab, tmp104
	movq	24(%rax), %rax	# htab_4(D)->entries, D.6046
	movl	-24(%rbp), %edx	# index, D.6045
	salq	$3, %rdx	#, D.6045
	addq	%rdx, %rax	# D.6045, D.6046
	movq	(%rax), %rax	# *_34, tmp105
	movq	%rax, -8(%rbp)	# tmp105, entry
	.loc 1 375 0
	cmpq	$0, -8(%rbp)	#, entry
	je	.L47	#,
	.loc 1 376 0
	cmpq	$1, -8(%rbp)	#, entry
	je	.L48	#,
	.loc 1 376 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# htab, tmp106
	movq	8(%rax), %rax	# htab_4(D)->eq_f, D.6047
	movq	-48(%rbp), %rcx	# element, tmp107
	movq	-8(%rbp), %rdx	# entry, tmp108
	movq	%rcx, %rsi	# tmp107,
	movq	%rdx, %rdi	# tmp108,
	call	*%rax	# D.6047
	testl	%eax, %eax	# D.6048
	je	.L48	#,
.L47:
	.loc 1 377 0 is_stmt 1
	movq	-8(%rbp), %rax	# entry, D.6043
	jmp	.L45	#
.L48:
	.loc 1 378 0
	jmp	.L49	#
.L45:
	.loc 1 379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	htab_find_with_hash, .-htab_find_with_hash
	.globl	htab_find
	.type	htab_find, @function
htab_find:
.LFB12:
	.loc 1 388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# htab, htab
	movq	%rsi, -16(%rbp)	# element, element
	.loc 1 389 0
	movq	-8(%rbp), %rax	# htab, tmp63
	movq	(%rax), %rax	# htab_1(D)->hash_f, D.6049
	movq	-16(%rbp), %rdx	# element, tmp64
	movq	%rdx, %rdi	# tmp64,
	call	*%rax	# D.6049
	movl	%eax, %edx	#, D.6050
	movq	-16(%rbp), %rcx	# element, tmp65
	movq	-8(%rbp), %rax	# htab, tmp66
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	htab_find_with_hash	#
	.loc 1 390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	htab_find, .-htab_find
	.globl	htab_find_slot_with_hash
	.type	htab_find_slot_with_hash, @function
htab_find_slot_with_hash:
.LFB13:
	.loc 1 406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# htab, htab
	movq	%rsi, -48(%rbp)	# element, element
	movl	%edx, -52(%rbp)	# hash, hash
	movl	%ecx, -56(%rbp)	# insert, insert
	.loc 1 413 0
	cmpl	$1, -56(%rbp)	#, insert
	jne	.L53	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# htab, tmp107
	movq	32(%rax), %rdx	# htab_11(D)->size, D.6053
	movq	%rdx, %rax	# D.6053, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rax, %rdx	# tmp108, D.6053
	movq	-40(%rbp), %rax	# htab, tmp109
	movq	40(%rax), %rax	# htab_11(D)->n_elements, D.6053
	salq	$2, %rax	#, D.6053
	cmpq	%rax, %rdx	# D.6053, D.6053
	ja	.L53	#,
	.loc 1 414 0 is_stmt 1
	movq	-40(%rbp), %rax	# htab, tmp110
	movq	%rax, %rdi	# tmp110,
	call	htab_expand	#
	testl	%eax, %eax	# D.6054
	jne	.L53	#,
	.loc 1 415 0
	movl	$0, %eax	#, D.6052
	jmp	.L54	#
.L53:
	.loc 1 417 0
	movq	-40(%rbp), %rax	# htab, tmp111
	movq	32(%rax), %rax	# htab_11(D)->size, tmp112
	movq	%rax, -16(%rbp)	# tmp112, size
	.loc 1 418 0
	movl	-52(%rbp), %eax	# hash, D.6053
	movl	$0, %edx	#, tmp113
	divq	-16(%rbp)	# size
	movq	%rdx, %rax	# tmp113, D.6053
	movl	%eax, -32(%rbp)	# D.6053, index
	.loc 1 420 0
	movq	-40(%rbp), %rax	# htab, tmp115
	movl	56(%rax), %eax	# htab_11(D)->searches, D.6055
	leal	1(%rax), %edx	#, D.6055
	movq	-40(%rbp), %rax	# htab, tmp116
	movl	%edx, 56(%rax)	# D.6055, htab_11(D)->searches
	.loc 1 421 0
	movq	$0, -24(%rbp)	#, first_deleted_slot
	.loc 1 423 0
	movq	-40(%rbp), %rax	# htab, tmp117
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, D.6052
	movq	(%rax), %rax	# *_29, tmp118
	movq	%rax, -8(%rbp)	# tmp118, entry
	.loc 1 424 0
	cmpq	$0, -8(%rbp)	#, entry
	jne	.L55	#,
	.loc 1 425 0
	jmp	.L56	#
.L55:
	.loc 1 426 0
	cmpq	$1, -8(%rbp)	#, entry
	jne	.L57	#,
	.loc 1 427 0
	movq	-40(%rbp), %rax	# htab, tmp119
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, tmp120
	movq	%rax, -24(%rbp)	# tmp120, first_deleted_slot
	jmp	.L58	#
.L57:
	.loc 1 428 0
	movq	-40(%rbp), %rax	# htab, tmp121
	movq	8(%rax), %rax	# htab_11(D)->eq_f, D.6056
	movq	-48(%rbp), %rcx	# element, tmp122
	movq	-8(%rbp), %rdx	# entry, tmp123
	movq	%rcx, %rsi	# tmp122,
	movq	%rdx, %rdi	# tmp123,
	call	*%rax	# D.6056
	testl	%eax, %eax	# D.6054
	je	.L58	#,
	.loc 1 429 0
	movq	-40(%rbp), %rax	# htab, tmp124
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, D.6052
	jmp	.L54	#
.L58:
	.loc 1 431 0
	movl	-52(%rbp), %eax	# hash, D.6053
	movq	-16(%rbp), %rdx	# size, tmp125
	leaq	-2(%rdx), %rcx	#, D.6053
	movl	$0, %edx	#, tmp126
	divq	%rcx	# D.6053
	movq	%rdx, %rax	# tmp126, D.6053
	addl	$1, %eax	#, tmp128
	movl	%eax, -28(%rbp)	# tmp128, hash2
.L64:
	.loc 1 434 0
	movq	-40(%rbp), %rax	# htab, tmp129
	movl	60(%rax), %eax	# htab_11(D)->collisions, D.6055
	leal	1(%rax), %edx	#, D.6055
	movq	-40(%rbp), %rax	# htab, tmp130
	movl	%edx, 60(%rax)	# D.6055, htab_11(D)->collisions
	.loc 1 435 0
	movl	-28(%rbp), %eax	# hash2, tmp131
	addl	%eax, -32(%rbp)	# tmp131, index
	.loc 1 436 0
	movl	-32(%rbp), %eax	# index, D.6053
	cmpq	-16(%rbp), %rax	# size, D.6053
	jb	.L59	#,
	.loc 1 437 0
	movq	-16(%rbp), %rax	# size, tmp132
	subl	%eax, -32(%rbp)	# D.6055, index
.L59:
	.loc 1 439 0
	movq	-40(%rbp), %rax	# htab, tmp133
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, D.6052
	movq	(%rax), %rax	# *_56, tmp134
	movq	%rax, -8(%rbp)	# tmp134, entry
	.loc 1 440 0
	cmpq	$0, -8(%rbp)	#, entry
	jne	.L60	#,
	.loc 1 441 0
	jmp	.L56	#
.L60:
	.loc 1 442 0
	cmpq	$1, -8(%rbp)	#, entry
	jne	.L61	#,
	.loc 1 444 0
	cmpq	$0, -24(%rbp)	#, first_deleted_slot
	jne	.L63	#,
	.loc 1 445 0
	movq	-40(%rbp), %rax	# htab, tmp135
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, tmp136
	movq	%rax, -24(%rbp)	# tmp136, first_deleted_slot
	.loc 1 449 0
	jmp	.L64	#
.L61:
	.loc 1 447 0
	movq	-40(%rbp), %rax	# htab, tmp137
	movq	8(%rax), %rax	# htab_11(D)->eq_f, D.6056
	movq	-48(%rbp), %rcx	# element, tmp138
	movq	-8(%rbp), %rdx	# entry, tmp139
	movq	%rcx, %rsi	# tmp138,
	movq	%rdx, %rdi	# tmp139,
	call	*%rax	# D.6056
	testl	%eax, %eax	# D.6054
	je	.L63	#,
	.loc 1 448 0
	movq	-40(%rbp), %rax	# htab, tmp140
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, D.6052
	jmp	.L54	#
.L63:
	.loc 1 449 0
	jmp	.L64	#
.L56:
	.loc 1 452 0
	cmpl	$0, -56(%rbp)	#, insert
	jne	.L65	#,
	.loc 1 453 0
	movl	$0, %eax	#, D.6052
	jmp	.L54	#
.L65:
	.loc 1 455 0
	movq	-40(%rbp), %rax	# htab, tmp141
	movq	40(%rax), %rax	# htab_11(D)->n_elements, D.6053
	leaq	1(%rax), %rdx	#, D.6053
	movq	-40(%rbp), %rax	# htab, tmp142
	movq	%rdx, 40(%rax)	# D.6053, htab_11(D)->n_elements
	.loc 1 457 0
	cmpq	$0, -24(%rbp)	#, first_deleted_slot
	je	.L66	#,
	.loc 1 459 0
	movq	-24(%rbp), %rax	# first_deleted_slot, tmp143
	movq	$0, (%rax)	#, *first_deleted_slot_5
	.loc 1 460 0
	movq	-24(%rbp), %rax	# first_deleted_slot, D.6052
	jmp	.L54	#
.L66:
	.loc 1 463 0
	movq	-40(%rbp), %rax	# htab, tmp144
	movq	24(%rax), %rax	# htab_11(D)->entries, D.6052
	movl	-32(%rbp), %edx	# index, D.6053
	salq	$3, %rdx	#, D.6053
	addq	%rdx, %rax	# D.6053, D.6052
.L54:
	.loc 1 464 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	htab_find_slot_with_hash, .-htab_find_slot_with_hash
	.globl	htab_find_slot
	.type	htab_find_slot, @function
htab_find_slot:
.LFB14:
	.loc 1 474 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# htab, htab
	movq	%rsi, -16(%rbp)	# element, element
	movl	%edx, -20(%rbp)	# insert, insert
	.loc 1 475 0
	movq	-8(%rbp), %rax	# htab, tmp63
	movq	(%rax), %rax	# htab_1(D)->hash_f, D.6057
	movq	-16(%rbp), %rdx	# element, tmp64
	movq	%rdx, %rdi	# tmp64,
	call	*%rax	# D.6057
	movl	%eax, %edx	#, D.6058
	movl	-20(%rbp), %ecx	# insert, tmp65
	movq	-16(%rbp), %rsi	# element, tmp66
	movq	-8(%rbp), %rax	# htab, tmp67
	movq	%rax, %rdi	# tmp67,
	call	htab_find_slot_with_hash	#
	.loc 1 477 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	htab_find_slot, .-htab_find_slot
	.globl	htab_remove_elt
	.type	htab_remove_elt, @function
htab_remove_elt:
.LFB15:
	.loc 1 487 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# htab, htab
	movq	%rsi, -32(%rbp)	# element, element
	.loc 1 490 0
	movq	-32(%rbp), %rcx	# element, tmp65
	movq	-24(%rbp), %rax	# htab, tmp66
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	htab_find_slot	#
	movq	%rax, -8(%rbp)	# tmp67, slot
	.loc 1 491 0
	movq	-8(%rbp), %rax	# slot, tmp68
	movq	(%rax), %rax	# *slot_3, D.6060
	testq	%rax, %rax	# D.6060
	jne	.L70	#,
	.loc 1 492 0
	jmp	.L69	#
.L70:
	.loc 1 494 0
	movq	-24(%rbp), %rax	# htab, tmp69
	movq	16(%rax), %rax	# htab_1(D)->del_f, D.6061
	testq	%rax, %rax	# D.6061
	je	.L72	#,
	.loc 1 495 0
	movq	-24(%rbp), %rax	# htab, tmp70
	movq	16(%rax), %rax	# htab_1(D)->del_f, D.6061
	movq	-8(%rbp), %rdx	# slot, tmp71
	movq	(%rdx), %rdx	# *slot_3, D.6060
	movq	%rdx, %rdi	# D.6060,
	call	*%rax	# D.6061
.L72:
	.loc 1 497 0
	movq	-8(%rbp), %rax	# slot, tmp72
	movq	$1, (%rax)	#, *slot_3
	.loc 1 498 0
	movq	-24(%rbp), %rax	# htab, tmp73
	movq	48(%rax), %rax	# htab_1(D)->n_deleted, D.6062
	leaq	1(%rax), %rdx	#, D.6062
	movq	-24(%rbp), %rax	# htab, tmp74
	movq	%rdx, 48(%rax)	# D.6062, htab_1(D)->n_deleted
.L69:
	.loc 1 499 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	htab_remove_elt, .-htab_remove_elt
	.globl	htab_clear_slot
	.type	htab_clear_slot, @function
htab_clear_slot:
.LFB16:
	.loc 1 509 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# htab, htab
	movq	%rsi, -16(%rbp)	# slot, slot
	.loc 1 510 0
	movq	-8(%rbp), %rax	# htab, tmp71
	movq	24(%rax), %rax	# htab_1(D)->entries, D.6063
	cmpq	-16(%rbp), %rax	# slot, D.6063
	ja	.L74	#,
	.loc 1 510 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# htab, tmp72
	movq	24(%rax), %rdx	# htab_1(D)->entries, D.6063
	movq	-8(%rbp), %rax	# htab, tmp73
	movq	32(%rax), %rax	# htab_1(D)->size, D.6064
	salq	$3, %rax	#, D.6064
	addq	%rdx, %rax	# D.6063, D.6063
	cmpq	-16(%rbp), %rax	# slot, D.6063
	jbe	.L74	#,
	.loc 1 511 0 is_stmt 1
	movq	-16(%rbp), %rax	# slot, tmp74
	movq	(%rax), %rax	# *slot_3(D), D.6065
	testq	%rax, %rax	# D.6065
	je	.L74	#,
	.loc 1 511 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# slot, tmp75
	movq	(%rax), %rax	# *slot_3(D), D.6065
	cmpq	$1, %rax	#, D.6065
	jne	.L75	#,
.L74:
	.loc 1 512 0 is_stmt 1
	call	abort	#
.L75:
	.loc 1 514 0
	movq	-8(%rbp), %rax	# htab, tmp76
	movq	16(%rax), %rax	# htab_1(D)->del_f, D.6066
	testq	%rax, %rax	# D.6066
	je	.L76	#,
	.loc 1 515 0
	movq	-8(%rbp), %rax	# htab, tmp77
	movq	16(%rax), %rax	# htab_1(D)->del_f, D.6066
	movq	-16(%rbp), %rdx	# slot, tmp78
	movq	(%rdx), %rdx	# *slot_3(D), D.6065
	movq	%rdx, %rdi	# D.6065,
	call	*%rax	# D.6066
.L76:
	.loc 1 517 0
	movq	-16(%rbp), %rax	# slot, tmp79
	movq	$1, (%rax)	#, *slot_3(D)
	.loc 1 518 0
	movq	-8(%rbp), %rax	# htab, tmp80
	movq	48(%rax), %rax	# htab_1(D)->n_deleted, D.6064
	leaq	1(%rax), %rdx	#, D.6064
	movq	-8(%rbp), %rax	# htab, tmp81
	movq	%rdx, 48(%rax)	# D.6064, htab_1(D)->n_deleted
	.loc 1 519 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	htab_clear_slot, .-htab_clear_slot
	.globl	htab_traverse
	.type	htab_traverse, @function
htab_traverse:
.LFB17:
	.loc 1 531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# htab, htab
	movq	%rsi, -48(%rbp)	# callback, callback
	movq	%rdx, -56(%rbp)	# info, info
	.loc 1 532 0
	movq	-40(%rbp), %rax	# htab, tmp62
	movq	24(%rax), %rax	# htab_2(D)->entries, tmp63
	movq	%rax, -24(%rbp)	# tmp63, slot
	.loc 1 533 0
	movq	-40(%rbp), %rax	# htab, tmp64
	movq	32(%rax), %rax	# htab_2(D)->size, D.6067
	leaq	0(,%rax,8), %rdx	#, D.6067
	movq	-24(%rbp), %rax	# slot, tmp68
	addq	%rdx, %rax	# D.6067, tmp67
	movq	%rax, -16(%rbp)	# tmp67, limit
.L80:
.LBB6:
	.loc 1 537 0
	movq	-24(%rbp), %rax	# slot, tmp69
	movq	(%rax), %rax	# *slot_1, tmp70
	movq	%rax, -8(%rbp)	# tmp70, x
	.loc 1 539 0
	cmpq	$0, -8(%rbp)	#, x
	je	.L78	#,
	.loc 1 539 0 is_stmt 0 discriminator 1
	cmpq	$1, -8(%rbp)	#, x
	je	.L78	#,
	.loc 1 540 0 is_stmt 1
	movq	-56(%rbp), %rcx	# info, tmp71
	movq	-24(%rbp), %rdx	# slot, tmp72
	movq	-48(%rbp), %rax	# callback, tmp73
	movq	%rcx, %rsi	# tmp71,
	movq	%rdx, %rdi	# tmp72,
	call	*%rax	# tmp73
	testl	%eax, %eax	# D.6068
	jne	.L78	#,
	.loc 1 541 0
	jmp	.L77	#
.L78:
.LBE6:
	.loc 1 543 0
	addq	$8, -24(%rbp)	#, slot
	movq	-24(%rbp), %rax	# slot, tmp74
	cmpq	-16(%rbp), %rax	# limit, tmp74
	jb	.L80	#,
.L77:
	.loc 1 544 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	htab_traverse, .-htab_traverse
	.globl	htab_size
	.type	htab_size, @function
htab_size:
.LFB18:
	.loc 1 551 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# htab, htab
	.loc 1 552 0
	movq	-8(%rbp), %rax	# htab, tmp61
	movq	32(%rax), %rax	# htab_1(D)->size, D.6069
	.loc 1 553 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	htab_size, .-htab_size
	.globl	htab_elements
	.type	htab_elements, @function
htab_elements:
.LFB19:
	.loc 1 560 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# htab, htab
	.loc 1 561 0
	movq	-8(%rbp), %rax	# htab, tmp63
	movq	40(%rax), %rdx	# htab_1(D)->n_elements, D.6070
	movq	-8(%rbp), %rax	# htab, tmp64
	movq	48(%rax), %rax	# htab_1(D)->n_deleted, D.6070
	subq	%rax, %rdx	# D.6070, D.6071
	movq	%rdx, %rax	# D.6071, D.6071
	.loc 1 562 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	htab_elements, .-htab_elements
	.globl	htab_collisions
	.type	htab_collisions, @function
htab_collisions:
.LFB20:
	.loc 1 570 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# htab, htab
	.loc 1 571 0
	movq	-8(%rbp), %rax	# htab, tmp66
	movl	56(%rax), %eax	# htab_2(D)->searches, D.6073
	testl	%eax, %eax	# D.6073
	jne	.L86	#,
	.loc 1 572 0
	movl	$0, %eax	#, D.6072
	jmp	.L87	#
.L86:
	.loc 1 574 0
	movq	-8(%rbp), %rax	# htab, tmp67
	movl	60(%rax), %eax	# htab_2(D)->collisions, D.6073
	movl	%eax, %eax	# D.6073, tmp68
	testq	%rax, %rax	# tmp68
	js	.L88	#,
	cvtsi2sdq	%rax, %xmm0	# tmp68, D.6072
	jmp	.L89	#
.L88:
	movq	%rax, %rdx	# tmp68, tmp70
	shrq	%rdx	# tmp70
	andl	$1, %eax	#, tmp71
	orq	%rax, %rdx	# tmp71, tmp70
	cvtsi2sdq	%rdx, %xmm0	# tmp70, tmp69
	addsd	%xmm0, %xmm0	# tmp69, D.6072
.L89:
	movq	-8(%rbp), %rax	# htab, tmp72
	movl	56(%rax), %eax	# htab_2(D)->searches, D.6073
	movl	%eax, %eax	# D.6073, tmp73
	testq	%rax, %rax	# tmp73
	js	.L90	#,
	cvtsi2sdq	%rax, %xmm1	# tmp73, D.6072
	jmp	.L91	#
.L90:
	movq	%rax, %rdx	# tmp73, tmp75
	shrq	%rdx	# tmp75
	andl	$1, %eax	#, tmp76
	orq	%rax, %rdx	# tmp76, tmp75
	cvtsi2sdq	%rdx, %xmm1	# tmp75, tmp74
	addsd	%xmm1, %xmm1	# tmp74, D.6072
.L91:
	divsd	%xmm1, %xmm0	# D.6072, D.6072
	movsd	%xmm0, -16(%rbp)	# D.6072, %sfp
	movq	-16(%rbp), %rax	# %sfp, D.6072
.L87:
	.loc 1 575 0
	movq	%rax, -16(%rbp)	# <retval>, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	htab_collisions, .-htab_collisions
	.globl	htab_hash_string
	.type	htab_hash_string, @function
htab_hash_string:
.LFB21:
	.loc 1 605 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 606 0
	movq	-24(%rbp), %rax	# p, tmp65
	movq	%rax, -8(%rbp)	# tmp65, str
	.loc 1 607 0
	movl	$0, -12(%rbp)	#, r
	.loc 1 610 0
	jmp	.L93	#
.L94:
	.loc 1 611 0
	movl	-12(%rbp), %eax	# r, tmp66
	imull	$67, %eax, %edx	#, tmp66, D.6075
	movzbl	-13(%rbp), %eax	# c, D.6075
	addl	%edx, %eax	# D.6075, D.6075
	subl	$113, %eax	#, tmp67
	movl	%eax, -12(%rbp)	# tmp67, r
.L93:
	.loc 1 610 0 discriminator 1
	movq	-8(%rbp), %rax	# str, str.4
	leaq	1(%rax), %rdx	#, tmp68
	movq	%rdx, -8(%rbp)	# tmp68, str
	movzbl	(%rax), %eax	# *str.4_6, tmp69
	movb	%al, -13(%rbp)	# tmp69, c
	cmpb	$0, -13(%rbp)	#, c
	jne	.L94	#,
	.loc 1 613 0
	movl	-12(%rbp), %eax	# r, D.6076
	.loc 1 614 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	htab_hash_string, .-htab_hash_string
	.section	.rodata
	.align 32
	.type	primes.5533, @object
	.size	primes.5533, 240
primes.5533:
	.quad	7
	.quad	13
	.quad	31
	.quad	61
	.quad	127
	.quad	251
	.quad	509
	.quad	1021
	.quad	2039
	.quad	4093
	.quad	8191
	.quad	16381
	.quad	32749
	.quad	65521
	.quad	131071
	.quad	262139
	.quad	524287
	.quad	1048573
	.quad	2097143
	.quad	4194301
	.quad	8388593
	.quad	16777213
	.quad	33554393
	.quad	67108859
	.quad	134217689
	.quad	268435399
	.quad	536870909
	.quad	1073741789
	.quad	2147483647
	.quad	4294967291
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "hashtab.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb89
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF108
	.byte	0x1
	.long	.LASF109
	.long	.LASF110
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
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x8
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
	.long	.LASF8
	.byte	0x2
	.byte	0x8c
	.long	0x65
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x8d
	.long	0x65
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0xd4
	.long	0x50
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x2d
	.long	0xc4
	.uleb128 0x8
	.long	0xc4
	.uleb128 0x8
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xca
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x24c
	.uleb128 0xb
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x84
	.byte	0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0x84
	.byte	0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0x84
	.byte	0x18
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0x84
	.byte	0x20
	.uleb128 0xc
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0x84
	.byte	0x28
	.uleb128 0xc
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0x84
	.byte	0x30
	.uleb128 0xc
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0x84
	.byte	0x38
	.uleb128 0xc
	.long	.LASF22
	.byte	0x4
	.value	0x103
	.long	0x84
	.byte	0x40
	.uleb128 0xc
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0x84
	.byte	0x48
	.uleb128 0xc
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0x84
	.byte	0x50
	.uleb128 0xc
	.long	.LASF25
	.byte	0x4
	.value	0x107
	.long	0x84
	.byte	0x58
	.uleb128 0xc
	.long	.LASF26
	.byte	0x4
	.value	0x109
	.long	0x284
	.byte	0x60
	.uleb128 0xc
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x28a
	.byte	0x68
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0xc
	.long	.LASF29
	.byte	0x4
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0xc
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x6c
	.byte	0x78
	.uleb128 0xc
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x42
	.byte	0x80
	.uleb128 0xc
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x57
	.byte	0x82
	.uleb128 0xc
	.long	.LASF33
	.byte	0x4
	.value	0x119
	.long	0x290
	.byte	0x83
	.uleb128 0xc
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x2a0
	.byte	0x88
	.uleb128 0xc
	.long	.LASF35
	.byte	0x4
	.value	0x126
	.long	0x77
	.byte	0x90
	.uleb128 0xc
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x82
	.byte	0x98
	.uleb128 0xc
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x82
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x82
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x82
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x91
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x4
	.value	0x137
	.long	0x2a6
	.byte	0xc4
	.byte	0
	.uleb128 0xd
	.long	.LASF111
	.byte	0x4
	.byte	0x9b
	.uleb128 0xa
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x284
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x284
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x28a
	.byte	0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x4
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x253
	.uleb128 0x6
	.byte	0x8
	.long	0xcb
	.uleb128 0xe
	.long	0x8a
	.long	0x2a0
	.uleb128 0xf
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24c
	.uleb128 0xe
	.long	0x8a
	.long	0x2b6
	.uleb128 0xf
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x5
	.byte	0x2a
	.long	0x49
	.uleb128 0x4
	.long	.LASF49
	.byte	0x5
	.byte	0x2f
	.long	0x2cc
	.uleb128 0x6
	.byte	0x8
	.long	0x2d2
	.uleb128 0x7
	.long	0x2b6
	.long	0x2e1
	.uleb128 0x8
	.long	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x5
	.byte	0x36
	.long	0xaa
	.uleb128 0x4
	.long	.LASF51
	.byte	0x5
	.byte	0x3a
	.long	0x2f7
	.uleb128 0x6
	.byte	0x8
	.long	0x2fd
	.uleb128 0x10
	.long	0x308
	.uleb128 0x8
	.long	0x82
	.byte	0
	.uleb128 0x4
	.long	.LASF52
	.byte	0x5
	.byte	0x40
	.long	0x313
	.uleb128 0x6
	.byte	0x8
	.long	0x319
	.uleb128 0x7
	.long	0x2d
	.long	0x32d
	.uleb128 0x8
	.long	0x32d
	.uleb128 0x8
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x82
	.uleb128 0xa
	.long	.LASF53
	.byte	0x48
	.byte	0x5
	.byte	0x47
	.long	0x3b8
	.uleb128 0xb
	.long	.LASF54
	.byte	0x5
	.byte	0x4a
	.long	0x2c1
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x5
	.byte	0x4d
	.long	0x2e1
	.byte	0x8
	.uleb128 0xb
	.long	.LASF56
	.byte	0x5
	.byte	0x50
	.long	0x2ec
	.byte	0x10
	.uleb128 0xb
	.long	.LASF57
	.byte	0x5
	.byte	0x53
	.long	0x32d
	.byte	0x18
	.uleb128 0xb
	.long	.LASF58
	.byte	0x5
	.byte	0x56
	.long	0x91
	.byte	0x20
	.uleb128 0xb
	.long	.LASF59
	.byte	0x5
	.byte	0x59
	.long	0x91
	.byte	0x28
	.uleb128 0xb
	.long	.LASF60
	.byte	0x5
	.byte	0x5c
	.long	0x91
	.byte	0x30
	.uleb128 0xb
	.long	.LASF61
	.byte	0x5
	.byte	0x60
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF62
	.byte	0x5
	.byte	0x64
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF63
	.byte	0x5
	.byte	0x68
	.long	0x2d
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	.LASF64
	.byte	0x5
	.byte	0x6b
	.long	0x3c3
	.uleb128 0x6
	.byte	0x8
	.long	0x333
	.uleb128 0x11
	.long	.LASF112
	.byte	0x4
	.byte	0x5
	.byte	0x6e
	.long	0x3e2
	.uleb128 0x12
	.long	.LASF65
	.sleb128 0
	.uleb128 0x12
	.long	.LASF66
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0x4c
	.long	0x50
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x461
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x4d
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x51
	.long	0x471
	.uleb128 0x9
	.byte	0x3
	.quad	primes.5533
	.uleb128 0x16
	.string	"low"
	.byte	0x1
	.byte	0x73
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x74
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x16
	.string	"mid"
	.byte	0x1
	.byte	0x78
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x50
	.long	0x471
	.uleb128 0xf
	.long	0x34
	.byte	0x1d
	.byte	0
	.uleb128 0x18
	.long	0x461
	.uleb128 0x6
	.byte	0x8
	.long	0x47c
	.uleb128 0x18
	.long	0x50
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0x8c
	.long	0x2b6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4af
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x8d
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0x95
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eb
	.uleb128 0x14
	.string	"p1"
	.byte	0x1
	.byte	0x96
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"p2"
	.byte	0x1
	.byte	0x97
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0xa2
	.long	0x3b8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x553
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x1
	.byte	0xa3
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF54
	.byte	0x1
	.byte	0xa4
	.long	0x2c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.byte	0xa5
	.long	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x1
	.byte	0xa6
	.long	0x2ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0xa8
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.byte	0xbb
	.long	0x3b8
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bb
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x1
	.byte	0xbc
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF54
	.byte	0x1
	.byte	0xbd
	.long	0x2c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.byte	0xbe
	.long	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x1
	.byte	0xbf
	.long	0x2ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0xc1
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF75
	.byte	0x1
	.byte	0xdb
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f3
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0xdc
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xde
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x1
	.byte	0xed
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x62b
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0xee
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xf0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF77
	.byte	0x1
	.value	0x103
	.long	0x32d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a8
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x104
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x1
	.value	0x105
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.value	0x107
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF79
	.byte	0x1
	.value	0x108
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x109
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF81
	.byte	0x1
	.value	0x10a
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF82
	.byte	0x1
	.value	0x129
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x769
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x12a
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF83
	.byte	0x1
	.value	0x12c
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF84
	.byte	0x1
	.value	0x12d
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x12e
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x72a
	.uleb128 0x1f
	.long	.LASF85
	.byte	0x1
	.value	0x137
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x17
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x145
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.string	"q"
	.byte	0x1
	.value	0x149
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF86
	.byte	0x1
	.value	0x15a
	.long	0x82
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f6
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x15b
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x15c
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x1
	.value	0x15d
	.long	0x2b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.long	.LASF79
	.byte	0x1
	.value	0x15f
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF81
	.byte	0x1
	.value	0x160
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.value	0x161
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF88
	.byte	0x1
	.value	0x162
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF89
	.byte	0x1
	.value	0x181
	.long	0x82
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x837
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x182
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x183
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF90
	.byte	0x1
	.value	0x191
	.long	0x32d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f3
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x192
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x193
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x1
	.value	0x194
	.long	0x2b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x195
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x1
	.value	0x197
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF79
	.byte	0x1
	.value	0x198
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF81
	.byte	0x1
	.value	0x199
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.value	0x19a
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF88
	.byte	0x1
	.value	0x19b
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF113
	.byte	0x1
	.value	0x1c3
	.quad	.L56
	.byte	0
	.uleb128 0x22
	.long	.LASF93
	.byte	0x1
	.value	0x1d6
	.long	0x32d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x943
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x1d7
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x1d8
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x1d9
	.long	0x3c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF94
	.byte	0x1
	.value	0x1e4
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x98f
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x1e5
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x1e6
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x1e8
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF95
	.byte	0x1
	.value	0x1fa
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cc
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x1fb
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF80
	.byte	0x1
	.value	0x1fc
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF96
	.byte	0x1
	.value	0x20f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa56
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x210
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF97
	.byte	0x1
	.value	0x211
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.value	0x212
	.long	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x214
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF99
	.byte	0x1
	.value	0x215
	.long	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x219
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF100
	.byte	0x1
	.value	0x225
	.long	0x91
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xa88
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x226
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF101
	.byte	0x1
	.value	0x22e
	.long	0x91
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xaba
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x22f
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF102
	.byte	0x1
	.value	0x238
	.long	0xaec
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xaec
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x239
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF103
	.uleb128 0x25
	.long	.LASF104
	.byte	0x1
	.value	0x25b
	.long	0x2b6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4c
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x25c
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"str"
	.byte	0x1
	.value	0x25e
	.long	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.value	0x25f
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x260
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb52
	.uleb128 0x18
	.long	0x3b
	.uleb128 0x27
	.long	.LASF105
	.byte	0x6
	.byte	0xaa
	.long	0x28a
	.uleb128 0x28
	.long	.LASF106
	.byte	0x1
	.byte	0x45
	.long	0x2c1
	.uleb128 0x9
	.byte	0x3
	.quad	htab_hash_pointer
	.uleb128 0x28
	.long	.LASF107
	.byte	0x1
	.byte	0x46
	.long	0x2e1
	.uleb128 0x9
	.byte	0x3
	.quad	htab_eq_pointer
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
.LASF53:
	.string	"htab"
.LASF106:
	.string	"htab_hash_pointer"
.LASF86:
	.string	"htab_find_with_hash"
.LASF11:
	.string	"size_t"
.LASF69:
	.string	"higher_prime_number"
.LASF63:
	.string	"return_allocation_failure"
.LASF33:
	.string	"_shortbuf"
.LASF5:
	.string	"signed char"
.LASF15:
	.string	"_IO_read_ptr"
.LASF101:
	.string	"htab_elements"
.LASF97:
	.string	"callback"
.LASF21:
	.string	"_IO_buf_base"
.LASF88:
	.string	"entry"
.LASF12:
	.string	"long long unsigned int"
.LASF74:
	.string	"htab_try_create"
.LASF85:
	.string	"nentries"
.LASF99:
	.string	"limit"
.LASF112:
	.string	"insert_option"
.LASF81:
	.string	"hash2"
.LASF13:
	.string	"long long int"
.LASF113:
	.string	"empty_entry"
.LASF95:
	.string	"htab_clear_slot"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF7:
	.string	"long int"
.LASF96:
	.string	"htab_traverse"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF67:
	.string	"primes"
.LASF103:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF43:
	.string	"_IO_FILE"
.LASF92:
	.string	"first_deleted_slot"
.LASF66:
	.string	"INSERT"
.LASF44:
	.string	"_IO_marker"
.LASF91:
	.string	"insert"
.LASF83:
	.string	"oentries"
.LASF3:
	.string	"unsigned int"
.LASF93:
	.string	"htab_find_slot"
.LASF4:
	.string	"long unsigned int"
.LASF56:
	.string	"del_f"
.LASF82:
	.string	"htab_expand"
.LASF48:
	.string	"hashval_t"
.LASF19:
	.string	"_IO_write_ptr"
.LASF46:
	.string	"_sbuf"
.LASF58:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF49:
	.string	"htab_hash"
.LASF76:
	.string	"htab_empty"
.LASF23:
	.string	"_IO_save_base"
.LASF75:
	.string	"htab_delete"
.LASF80:
	.string	"slot"
.LASF109:
	.string	"hashtab.c"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF57:
	.string	"entries"
.LASF0:
	.string	"sizetype"
.LASF87:
	.string	"element"
.LASF20:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF111:
	.string	"_IO_lock_t"
.LASF71:
	.string	"eq_pointer"
.LASF8:
	.string	"__off_t"
.LASF65:
	.string	"NO_INSERT"
.LASF47:
	.string	"_pos"
.LASF104:
	.string	"htab_hash_string"
.LASF26:
	.string	"_markers"
.LASF77:
	.string	"find_empty_slot_for_expand"
.LASF55:
	.string	"eq_f"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"short int"
.LASF98:
	.string	"info"
.LASF27:
	.string	"_chain"
.LASF61:
	.string	"searches"
.LASF32:
	.string	"_vtable_offset"
.LASF102:
	.string	"htab_collisions"
.LASF60:
	.string	"n_deleted"
.LASF10:
	.string	"char"
.LASF73:
	.string	"htab_create"
.LASF79:
	.string	"index"
.LASF89:
	.string	"htab_find"
.LASF68:
	.string	"high"
.LASF45:
	.string	"_next"
.LASF62:
	.string	"collisions"
.LASF51:
	.string	"htab_del"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF78:
	.string	"hash"
.LASF59:
	.string	"n_elements"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF105:
	.string	"stderr"
.LASF84:
	.string	"olimit"
.LASF107:
	.string	"htab_eq_pointer"
.LASF94:
	.string	"htab_remove_elt"
.LASF108:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF24:
	.string	"_IO_backup_base"
.LASF100:
	.string	"htab_size"
.LASF52:
	.string	"htab_trav"
.LASF54:
	.string	"hash_f"
.LASF70:
	.string	"hash_pointer"
.LASF90:
	.string	"htab_find_slot_with_hash"
.LASF18:
	.string	"_IO_write_base"
.LASF72:
	.string	"result"
.LASF110:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF64:
	.string	"htab_t"
.LASF50:
	.string	"htab_eq"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
