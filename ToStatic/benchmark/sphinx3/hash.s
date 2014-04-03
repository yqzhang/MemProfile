	.file	"hash.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# hash.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
	.data
	.align 32
	.type	prime, @object
	.size	prime, 184
prime:
	.long	101
	.long	211
	.long	307
	.long	401
	.long	503
	.long	601
	.long	701
	.long	809
	.long	907
	.long	1009
	.long	1201
	.long	1601
	.long	2003
	.long	2411
	.long	3001
	.long	4001
	.long	5003
	.long	6007
	.long	7001
	.long	8009
	.long	9001
	.long	10007
	.long	12007
	.long	16001
	.long	20011
	.long	24001
	.long	30011
	.long	40009
	.long	50021
	.long	60013
	.long	70001
	.long	80021
	.long	90001
	.long	100003
	.long	120011
	.long	160001
	.long	200003
	.long	240007
	.long	300007
	.long	400009
	.long	500009
	.long	600011
	.long	700001
	.long	800011
	.long	900001
	.long	-1
	.section	.rodata
.LC0:
	.string	"WARNING"
.LC1:
	.string	"hash.c"
	.align 8
.LC2:
	.string	"Very large hash table requested (%d entries)\n"
	.text
	.type	prime_size, @function
prime_size:
.LFB2:
	.file 1 "hash.c"
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# size, size
	.loc 1 113 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L4:
	.loc 1 113 0 is_stmt 0 discriminator 1
	addl	$1, -4(%rbp)	#, i
.L2:
	movl	-4(%rbp), %eax	# i, tmp65
	cltq
	movl	prime(,%rax,4), %eax	# prime, D.3357
	testl	%eax, %eax	# D.3357
	jle	.L3	#,
	.loc 1 113 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	movl	prime(,%rax,4), %eax	# prime, D.3357
	cmpl	-20(%rbp), %eax	# size, D.3357
	jl	.L4	#,
.L3:
	.loc 1 114 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp69
	cltq
	movl	prime(,%rax,4), %eax	# prime, D.3357
	testl	%eax, %eax	# D.3357
	jg	.L5	#,
	.loc 1 115 0
	movl	$.LC0, %edx	#,
	movl	$115, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-20(%rbp), %eax	# size, tmp70
	movl	%eax, %esi	# tmp70,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 116 0
	subl	$1, -4(%rbp)	#, i
.L5:
	.loc 1 118 0
	movl	-4(%rbp), %eax	# i, tmp72
	cltq
	movl	prime(,%rax,4), %eax	# prime, D.3358
	.loc 1 119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	prime_size, .-prime_size
	.globl	hash_new
	.type	hash_new, @function
hash_new:
.LFB3:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# size, size
	movl	%esi, -24(%rbp)	# casearg, casearg
	.loc 1 126 0
	movl	$126, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$16, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp69, h
	.loc 1 127 0
	movl	-20(%rbp), %eax	# size, tmp70
	sarl	%eax	# D.3362
	movl	%eax, %edx	# D.3362, D.3362
	movl	-20(%rbp), %eax	# size, tmp71
	addl	%edx, %eax	# D.3362, D.3362
	movl	%eax, %edi	# D.3362,
	call	prime_size	#
	movq	-8(%rbp), %rdx	# h, tmp72
	movl	%eax, 8(%rdx)	# D.3362, h_1->size
	.loc 1 128 0
	cmpl	$1, -24(%rbp)	#, casearg
	sete	%al	#, D.3363
	movl	%eax, %edx	# D.3363, D.3364
	movq	-8(%rbp), %rax	# h, tmp73
	movb	%dl, 12(%rax)	# D.3364, h_1->nocase
	.loc 1 129 0
	movq	-8(%rbp), %rax	# h, tmp74
	movl	8(%rax), %eax	# h_1->size, D.3362
	cltq
	movl	$129, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$24, %esi	#,
	movq	%rax, %rdi	# D.3365,
	call	__ckd_calloc__	#
	movq	-8(%rbp), %rdx	# h, tmp75
	movq	%rax, (%rdx)	# D.3366, h_1->table
	.loc 1 132 0
	movq	-8(%rbp), %rax	# h, D.3367
	.loc 1 133 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	hash_new, .-hash_new
	.type	key2hash, @function
key2hash:
.LFB4:
	.loc 1 141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)	# h, h
	movq	%rsi, -48(%rbp)	# key, key
	.loc 1 147 0
	movl	$0, %r14d	#, hash
	.loc 1 148 0
	movl	$0, %ebx	#, s
	.loc 1 150 0
	movq	-40(%rbp), %rax	# h, tmp80
	movzbl	12(%rax), %eax	# h_13(D)->nocase, D.3368
	testb	%al, %al	# D.3368
	je	.L10	#,
	.loc 1 151 0
	movq	-48(%rbp), %r12	# key, cp
	jmp	.L11	#
.L15:
	.loc 1 152 0
	movzbl	(%r12), %r13d	# *cp_1, c
	.loc 1 153 0
	cmpb	$96, %r13b	#, c
	jle	.L12	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	cmpb	$122, %r13b	#, c
	jg	.L12	#,
	movl	%r13d, %eax	# c, c.1
	subl	$32, %eax	#, D.3370
	jmp	.L13	#
.L12:
	.loc 1 153 0 discriminator 2
	movl	%r13d, %eax	# c, iftmp.0
.L13:
	.loc 1 153 0 discriminator 3
	movl	%eax, %r13d	# iftmp.0, c
	.loc 1 154 0 is_stmt 1 discriminator 3
	movsbl	%r13b, %eax	# c, D.3371
	movl	%ebx, %ecx	# s, tmp85
	sall	%cl, %eax	# tmp85, D.3371
	addl	%eax, %r14d	# D.3372, hash
	.loc 1 155 0 discriminator 3
	addl	$5, %ebx	#, s
	.loc 1 156 0 discriminator 3
	cmpl	$24, %ebx	#, s
	jle	.L14	#,
	.loc 1 157 0
	subl	$24, %ebx	#, s
.L14:
	.loc 1 151 0
	addq	$1, %r12	#, cp
.L11:
	.loc 1 151 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *cp_1, D.3369
	testb	%al, %al	# D.3369
	jne	.L15	#,
	jmp	.L16	#
.L10:
	.loc 1 160 0 is_stmt 1
	movq	-48(%rbp), %r12	# key, cp
	jmp	.L17	#
.L19:
	.loc 1 161 0
	movzbl	(%r12), %eax	# *cp_2, D.3369
	movsbl	%al, %eax	# D.3369, D.3371
	movl	%ebx, %ecx	# s, tmp86
	sall	%cl, %eax	# tmp86, D.3371
	addl	%eax, %r14d	# D.3372, hash
	.loc 1 162 0
	addl	$5, %ebx	#, s
	.loc 1 163 0
	cmpl	$24, %ebx	#, s
	jle	.L18	#,
	.loc 1 164 0
	subl	$24, %ebx	#, s
.L18:
	.loc 1 160 0
	addq	$1, %r12	#, cp
.L17:
	.loc 1 160 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *cp_2, D.3369
	testb	%al, %al	# D.3369
	jne	.L19	#,
.L16:
	.loc 1 168 0 is_stmt 1
	movq	-40(%rbp), %rax	# h, tmp81
	movl	8(%rax), %eax	# h_13(D)->size, D.3371
	movl	%eax, %ecx	# D.3371, D.3372
	movl	%r14d, %eax	# hash, tmp83
	movl	$0, %edx	#, tmp82
	divl	%ecx	# D.3372
	movl	%edx, %eax	# tmp82, D.3373
	.loc 1 169 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	key2hash, .-key2hash
	.type	makekey, @function
makekey:
.LFB5:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# data, data
	movl	%esi, -28(%rbp)	# len, len
	movq	%rdx, -40(%rbp)	# key, key
	.loc 1 176 0
	cmpq	$0, -40(%rbp)	#, key
	jne	.L22	#,
	.loc 1 177 0
	movl	-28(%rbp), %eax	# len, tmp83
	addl	%eax, %eax	# D.3374
	addl	$1, %eax	#, D.3374
	cltq
	movl	$177, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.3375,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp84, key
.L22:
	.loc 1 179 0
	movl	$0, -8(%rbp)	#, i
	movl	$0, -4(%rbp)	#, j
	jmp	.L23	#
.L24:
	.loc 1 180 0 discriminator 2
	movl	-4(%rbp), %eax	# j, tmp85
	movslq	%eax, %rdx	# tmp85, D.3376
	movq	-40(%rbp), %rax	# key, tmp86
	addq	%rax, %rdx	# tmp86, D.3377
	movl	-8(%rbp), %eax	# i, tmp87
	movslq	%eax, %rcx	# tmp87, D.3376
	movq	-24(%rbp), %rax	# data, tmp88
	addq	%rcx, %rax	# D.3376, D.3378
	movzbl	(%rax), %eax	# *_16, D.3379
	andl	$15, %eax	#, D.3380
	addl	$65, %eax	#, D.3380
	movb	%al, (%rdx)	# D.3381, *_13
	.loc 1 181 0 discriminator 2
	movl	-4(%rbp), %eax	# j, tmp89
	cltq
	leaq	1(%rax), %rdx	#, D.3376
	movq	-40(%rbp), %rax	# key, tmp90
	addq	%rax, %rdx	# tmp90, D.3377
	movl	-8(%rbp), %eax	# i, tmp91
	movslq	%eax, %rcx	# tmp91, D.3376
	movq	-24(%rbp), %rax	# data, tmp92
	addq	%rcx, %rax	# D.3376, D.3378
	movzbl	(%rax), %eax	# *_25, D.3379
	shrb	$4, %al	#, D.3379
	addl	$74, %eax	#, D.3380
	movb	%al, (%rdx)	# D.3381, *_23
	.loc 1 179 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
	addl	$2, -4(%rbp)	#, j
.L23:
	.loc 1 179 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp93
	cmpl	-28(%rbp), %eax	# len, tmp93
	jl	.L24	#,
	.loc 1 183 0 is_stmt 1
	movl	-4(%rbp), %eax	# j, tmp94
	movslq	%eax, %rdx	# tmp94, D.3376
	movq	-40(%rbp), %rax	# key, tmp95
	addq	%rdx, %rax	# D.3376, D.3377
	movb	$0, (%rax)	#, *_33
	.loc 1 185 0
	movq	-40(%rbp), %rax	# key, D.3377
	.loc 1 186 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	makekey, .-makekey
	.type	keycmp_nocase, @function
keycmp_nocase:
.LFB6:
	.loc 1 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# entry, entry
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 195 0
	movq	-24(%rbp), %rax	# entry, tmp72
	movq	(%rax), %rax	# entry_7(D)->key, tmp73
	movq	%rax, -8(%rbp)	# tmp73, str
	.loc 1 196 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L27	#
.L34:
	.loc 1 197 0
	movq	-8(%rbp), %rax	# str, str.2
	leaq	1(%rax), %rdx	#, tmp74
	movq	%rdx, -8(%rbp)	# tmp74, str
	movzbl	(%rax), %eax	# *str.2_12, tmp75
	movb	%al, -14(%rbp)	# tmp75, c1
	.loc 1 198 0
	cmpb	$96, -14(%rbp)	#, c1
	jle	.L28	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	cmpb	$122, -14(%rbp)	#, c1
	jg	.L28	#,
	movzbl	-14(%rbp), %eax	# c1, c1.4
	subl	$32, %eax	#, D.3384
	jmp	.L29	#
.L28:
	.loc 1 198 0 discriminator 2
	movzbl	-14(%rbp), %eax	# c1, iftmp.3
.L29:
	.loc 1 198 0 discriminator 3
	movb	%al, -14(%rbp)	# iftmp.3, c1
	.loc 1 199 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# key, key.5
	leaq	1(%rax), %rdx	#, tmp76
	movq	%rdx, -32(%rbp)	# tmp76, key
	movzbl	(%rax), %eax	# *key.5_20, tmp77
	movb	%al, -13(%rbp)	# tmp77, c2
	.loc 1 200 0 discriminator 3
	cmpb	$96, -13(%rbp)	#, c2
	jle	.L30	#,
	.loc 1 200 0 is_stmt 0 discriminator 1
	cmpb	$122, -13(%rbp)	#, c2
	jg	.L30	#,
	movzbl	-13(%rbp), %eax	# c2, c2.7
	subl	$32, %eax	#, D.3384
	jmp	.L31	#
.L30:
	.loc 1 200 0 discriminator 2
	movzbl	-13(%rbp), %eax	# c2, iftmp.6
.L31:
	.loc 1 200 0 discriminator 3
	movb	%al, -13(%rbp)	# iftmp.6, c2
	.loc 1 201 0 is_stmt 1 discriminator 3
	movzbl	-14(%rbp), %eax	# c1, tmp78
	cmpb	-13(%rbp), %al	# c2, tmp78
	je	.L32	#,
	.loc 1 202 0
	movsbl	-14(%rbp), %edx	# c1, D.3383
	movsbl	-13(%rbp), %eax	# c2, D.3383
	subl	%eax, %edx	# D.3383, D.3382
	movl	%edx, %eax	# D.3382, D.3382
	jmp	.L33	#
.L32:
	.loc 1 196 0
	addl	$1, -12(%rbp)	#, i
.L27:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# entry, tmp79
	movl	8(%rax), %eax	# entry_7(D)->len, D.3383
	cmpl	-12(%rbp), %eax	# i, D.3383
	jg	.L34	#,
	.loc 1 205 0 is_stmt 1
	movl	$0, %eax	#, D.3382
.L33:
	.loc 1 206 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	keycmp_nocase, .-keycmp_nocase
	.type	keycmp_case, @function
keycmp_case:
.LFB7:
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# entry, entry
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 215 0
	movq	-24(%rbp), %rax	# entry, tmp66
	movq	(%rax), %rax	# entry_5(D)->key, tmp67
	movq	%rax, -8(%rbp)	# tmp67, str
	.loc 1 216 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L36	#
.L39:
	.loc 1 217 0
	movq	-8(%rbp), %rax	# str, str.8
	leaq	1(%rax), %rdx	#, tmp68
	movq	%rdx, -8(%rbp)	# tmp68, str
	movzbl	(%rax), %eax	# *str.8_10, tmp69
	movb	%al, -14(%rbp)	# tmp69, c1
	.loc 1 218 0
	movq	-32(%rbp), %rax	# key, key.9
	leaq	1(%rax), %rdx	#, tmp70
	movq	%rdx, -32(%rbp)	# tmp70, key
	movzbl	(%rax), %eax	# *key.9_13, tmp71
	movb	%al, -13(%rbp)	# tmp71, c2
	.loc 1 219 0
	movzbl	-14(%rbp), %eax	# c1, tmp72
	cmpb	-13(%rbp), %al	# c2, tmp72
	je	.L37	#,
	.loc 1 220 0
	movsbl	-14(%rbp), %edx	# c1, D.3386
	movsbl	-13(%rbp), %eax	# c2, D.3386
	subl	%eax, %edx	# D.3386, D.3385
	movl	%edx, %eax	# D.3385, D.3385
	jmp	.L38	#
.L37:
	.loc 1 216 0
	addl	$1, -12(%rbp)	#, i
.L36:
	.loc 1 216 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# entry, tmp73
	movl	8(%rax), %eax	# entry_5(D)->len, D.3386
	cmpl	-12(%rbp), %eax	# i, D.3386
	jg	.L39	#,
	.loc 1 223 0 is_stmt 1
	movl	$0, %eax	#, D.3385
.L38:
	.loc 1 224 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	keycmp_case, .-keycmp_case
	.type	lookup, @function
lookup:
.LFB8:
	.loc 1 233 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	movl	%esi, -28(%rbp)	# hash, hash
	movq	%rdx, -40(%rbp)	# key, key
	movl	%ecx, -32(%rbp)	# len, len
	movq	%r8, -48(%rbp)	# val, val
	.loc 1 236 0
	movq	-24(%rbp), %rax	# h, tmp71
	movq	(%rax), %rcx	# h_5(D)->table, D.3388
	movl	-28(%rbp), %edx	# hash, D.3389
	movq	%rdx, %rax	# D.3389, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# D.3389, tmp72
	salq	$3, %rax	#, tmp73
	addq	%rcx, %rax	# D.3388, tmp74
	movq	%rax, -8(%rbp)	# tmp74, entry
	.loc 1 237 0
	movq	-8(%rbp), %rax	# entry, tmp75
	movq	(%rax), %rax	# entry_10->key, D.3390
	testq	%rax, %rax	# D.3390
	jne	.L41	#,
	.loc 1 238 0
	movl	$-1, %eax	#, D.3387
	jmp	.L42	#
.L41:
	.loc 1 240 0
	movq	-24(%rbp), %rax	# h, tmp76
	movzbl	12(%rax), %eax	# h_5(D)->nocase, D.3391
	testb	%al, %al	# D.3391
	je	.L43	#,
	.loc 1 241 0
	jmp	.L44	#
.L46:
	.loc 1 242 0
	movq	-8(%rbp), %rax	# entry, tmp77
	movq	16(%rax), %rax	# entry_1->next, tmp78
	movq	%rax, -8(%rbp)	# tmp78, entry
.L44:
	.loc 1 241 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, entry
	je	.L45	#,
	.loc 1 241 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# entry, tmp79
	movl	8(%rax), %eax	# entry_1->len, D.3392
	cmpl	-32(%rbp), %eax	# len, D.3392
	jne	.L46	#,
	.loc 1 241 0 discriminator 1
	movq	-40(%rbp), %rdx	# key, tmp80
	movq	-8(%rbp), %rax	# entry, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	keycmp_nocase	#
	testl	%eax, %eax	# D.3392
	jne	.L46	#,
	jmp	.L45	#
.L43:
	.loc 1 244 0 is_stmt 1
	jmp	.L47	#
.L48:
	.loc 1 245 0
	movq	-8(%rbp), %rax	# entry, tmp82
	movq	16(%rax), %rax	# entry_2->next, tmp83
	movq	%rax, -8(%rbp)	# tmp83, entry
.L47:
	.loc 1 244 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, entry
	je	.L45	#,
	.loc 1 244 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# entry, tmp84
	movl	8(%rax), %eax	# entry_2->len, D.3392
	cmpl	-32(%rbp), %eax	# len, D.3392
	jne	.L48	#,
	.loc 1 244 0 discriminator 1
	movq	-40(%rbp), %rdx	# key, tmp85
	movq	-8(%rbp), %rax	# entry, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	keycmp_case	#
	testl	%eax, %eax	# D.3392
	jne	.L48	#,
.L45:
	.loc 1 248 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, entry
	je	.L49	#,
	.loc 1 249 0
	movq	-8(%rbp), %rax	# entry, tmp87
	movl	12(%rax), %edx	# entry_3->val, D.3392
	movq	-48(%rbp), %rax	# val, tmp88
	movl	%edx, (%rax)	# D.3392, *val_23(D)
	.loc 1 250 0
	movl	$0, %eax	#, D.3387
	jmp	.L42	#
.L49:
	.loc 1 252 0
	movl	$-1, %eax	#, D.3387
.L42:
	.loc 1 253 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lookup, .-lookup
	.globl	hash_lookup
	.type	hash_lookup, @function
hash_lookup:
.LFB9:
	.loc 1 257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	movq	%rsi, -32(%rbp)	# key, key
	movq	%rdx, -40(%rbp)	# val, val
	.loc 1 261 0
	movq	-32(%rbp), %rdx	# key, tmp62
	movq	-24(%rbp), %rax	# h, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	key2hash	#
	movl	%eax, -8(%rbp)	# tmp64, hash
	.loc 1 262 0
	movq	-32(%rbp), %rax	# key, tmp65
	movq	%rax, %rdi	# tmp65,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.3393, len
	.loc 1 264 0
	movq	-40(%rbp), %rdi	# val, tmp66
	movl	-4(%rbp), %ecx	# len, tmp67
	movq	-32(%rbp), %rdx	# key, tmp68
	movl	-8(%rbp), %esi	# hash, tmp69
	movq	-24(%rbp), %rax	# h, tmp70
	movq	%rdi, %r8	# tmp66,
	movq	%rax, %rdi	# tmp70,
	call	lookup	#
	.loc 1 265 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	hash_lookup, .-hash_lookup
	.globl	hash_lookup_bkey
	.type	hash_lookup_bkey, @function
hash_lookup_bkey:
.LFB10:
	.loc 1 269 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# len, len
	movq	%rcx, -48(%rbp)	# val, val
	.loc 1 273 0
	movl	-36(%rbp), %ecx	# len, tmp61
	movq	-32(%rbp), %rax	# key, tmp62
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	makekey	#
	movq	%rax, -8(%rbp)	# tmp63, str
	.loc 1 274 0
	movq	-8(%rbp), %rdx	# str, tmp64
	movq	-24(%rbp), %rax	# h, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	key2hash	#
	movl	%eax, -12(%rbp)	# tmp66, hash
	.loc 1 275 0
	movq	-8(%rbp), %rax	# str, tmp67
	movq	%rax, %rdi	# tmp67,
	call	ckd_free	#
	.loc 1 277 0
	movq	-48(%rbp), %rdi	# val, tmp68
	movl	-36(%rbp), %ecx	# len, tmp69
	movq	-32(%rbp), %rdx	# key, tmp70
	movl	-12(%rbp), %esi	# hash, tmp71
	movq	-24(%rbp), %rax	# h, tmp72
	movq	%rdi, %r8	# tmp68,
	movq	%rax, %rdi	# tmp72,
	call	lookup	#
	.loc 1 278 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	hash_lookup_bkey, .-hash_lookup_bkey
	.type	enter, @function
enter:
.LFB11:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# h, h
	movl	%esi, -44(%rbp)	# hash, hash
	movq	%rdx, -56(%rbp)	# key, key
	movl	%ecx, -48(%rbp)	# len, len
	movl	%r8d, -60(%rbp)	# val, val
	.loc 1 286 0
	leaq	-20(%rbp), %rdi	#, tmp67
	movl	-48(%rbp), %ecx	# len, tmp68
	movq	-56(%rbp), %rdx	# key, tmp69
	movl	-44(%rbp), %esi	# hash, tmp70
	movq	-40(%rbp), %rax	# h, tmp71
	movq	%rdi, %r8	# tmp67,
	movq	%rax, %rdi	# tmp71,
	call	lookup	#
	testl	%eax, %eax	# D.3397
	jne	.L55	#,
	.loc 1 288 0
	movl	-20(%rbp), %eax	# old, D.3396
	jmp	.L59	#
.L55:
	.loc 1 291 0
	movq	-40(%rbp), %rax	# h, tmp72
	movq	(%rax), %rcx	# h_2(D)->table, D.3398
	movl	-44(%rbp), %edx	# hash, D.3399
	movq	%rdx, %rax	# D.3399, tmp73
	addq	%rax, %rax	# tmp73
	addq	%rdx, %rax	# D.3399, tmp73
	salq	$3, %rax	#, tmp74
	addq	%rcx, %rax	# D.3398, tmp75
	movq	%rax, -16(%rbp)	# tmp75, cur
	.loc 1 292 0
	movq	-16(%rbp), %rax	# cur, tmp76
	movq	(%rax), %rax	# cur_11->key, D.3400
	testq	%rax, %rax	# D.3400
	jne	.L57	#,
	.loc 1 294 0
	movq	-16(%rbp), %rax	# cur, tmp77
	movq	-56(%rbp), %rdx	# key, tmp78
	movq	%rdx, (%rax)	# tmp78, cur_11->key
	.loc 1 295 0
	movq	-16(%rbp), %rax	# cur, tmp79
	movl	-48(%rbp), %edx	# len, tmp80
	movl	%edx, 8(%rax)	# tmp80, cur_11->len
	.loc 1 296 0
	movq	-16(%rbp), %rax	# cur, tmp81
	movl	-60(%rbp), %edx	# val, tmp82
	movl	%edx, 12(%rax)	# tmp82, cur_11->val
	jmp	.L58	#
.L57:
	.loc 1 299 0
	movl	$299, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp83, new
	.loc 1 300 0
	movq	-8(%rbp), %rax	# new, tmp84
	movq	-56(%rbp), %rdx	# key, tmp85
	movq	%rdx, (%rax)	# tmp85, new_14->key
	.loc 1 301 0
	movq	-8(%rbp), %rax	# new, tmp86
	movl	-48(%rbp), %edx	# len, tmp87
	movl	%edx, 8(%rax)	# tmp87, new_14->len
	.loc 1 302 0
	movq	-8(%rbp), %rax	# new, tmp88
	movl	-60(%rbp), %edx	# val, tmp89
	movl	%edx, 12(%rax)	# tmp89, new_14->val
	.loc 1 303 0
	movq	-16(%rbp), %rax	# cur, tmp90
	movq	16(%rax), %rdx	# cur_11->next, D.3401
	movq	-8(%rbp), %rax	# new, tmp91
	movq	%rdx, 16(%rax)	# D.3401, new_14->next
	.loc 1 304 0
	movq	-16(%rbp), %rax	# cur, tmp92
	movq	-8(%rbp), %rdx	# new, tmp93
	movq	%rdx, 16(%rax)	# tmp93, cur_11->next
.L58:
	.loc 1 307 0
	movl	-60(%rbp), %eax	# val, D.3396
.L59:
	.loc 1 308 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	enter, .-enter
	.globl	hash_enter
	.type	hash_enter, @function
hash_enter:
.LFB12:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# val, val
	.loc 1 316 0
	movq	-32(%rbp), %rdx	# key, tmp62
	movq	-24(%rbp), %rax	# h, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	key2hash	#
	movl	%eax, -8(%rbp)	# tmp64, hash
	.loc 1 317 0
	movq	-32(%rbp), %rax	# key, tmp65
	movq	%rax, %rdi	# tmp65,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.3402, len
	.loc 1 318 0
	movl	-36(%rbp), %edi	# val, tmp66
	movl	-4(%rbp), %ecx	# len, tmp67
	movq	-32(%rbp), %rdx	# key, tmp68
	movl	-8(%rbp), %esi	# hash, tmp69
	movq	-24(%rbp), %rax	# h, tmp70
	movl	%edi, %r8d	# tmp66,
	movq	%rax, %rdi	# tmp70,
	call	enter	#
	.loc 1 319 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	hash_enter, .-hash_enter
	.globl	hash_enter_bkey
	.type	hash_enter_bkey, @function
hash_enter_bkey:
.LFB13:
	.loc 1 323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# len, len
	movl	%ecx, -40(%rbp)	# val, val
	.loc 1 327 0
	movl	-36(%rbp), %ecx	# len, tmp61
	movq	-32(%rbp), %rax	# key, tmp62
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	makekey	#
	movq	%rax, -8(%rbp)	# tmp63, str
	.loc 1 328 0
	movq	-8(%rbp), %rdx	# str, tmp64
	movq	-24(%rbp), %rax	# h, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	key2hash	#
	movl	%eax, -12(%rbp)	# tmp66, hash
	.loc 1 329 0
	movq	-8(%rbp), %rax	# str, tmp67
	movq	%rax, %rdi	# tmp67,
	call	ckd_free	#
	.loc 1 331 0
	movl	-40(%rbp), %edi	# val, tmp68
	movl	-36(%rbp), %ecx	# len, tmp69
	movq	-32(%rbp), %rdx	# key, tmp70
	movl	-12(%rbp), %esi	# hash, tmp71
	movq	-24(%rbp), %rax	# h, tmp72
	movl	%edi, %r8d	# tmp68,
	movq	%rax, %rdi	# tmp72,
	call	enter	#
	.loc 1 332 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	hash_enter_bkey, .-hash_enter_bkey
	.globl	hash_tolist
	.type	hash_tolist, @function
hash_tolist:
.LFB14:
	.loc 1 336 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# h, h
	movq	%rsi, -48(%rbp)	# count, count
	.loc 1 341 0
	movq	$0, -16(%rbp)	#, g
	.loc 1 343 0
	movl	$0, -20(%rbp)	#, j
	.loc 1 344 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L65	#
.L69:
	.loc 1 345 0
	movq	-40(%rbp), %rax	# h, tmp66
	movq	(%rax), %rcx	# h_12(D)->table, D.3406
	movl	-24(%rbp), %eax	# i, tmp67
	movslq	%eax, %rdx	# tmp67, D.3407
	movq	%rdx, %rax	# D.3407, tmp68
	addq	%rax, %rax	# tmp68
	addq	%rdx, %rax	# D.3407, tmp68
	salq	$3, %rax	#, tmp69
	addq	%rcx, %rax	# D.3406, tmp70
	movq	%rax, -8(%rbp)	# tmp70, e
	.loc 1 347 0
	movq	-8(%rbp), %rax	# e, tmp71
	movq	(%rax), %rax	# e_17->key, D.3408
	testq	%rax, %rax	# D.3408
	je	.L66	#,
	.loc 1 348 0
	movq	-8(%rbp), %rdx	# e, tmp72
	movq	-16(%rbp), %rax	# g, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	glist_add_ptr	#
	movq	%rax, -16(%rbp)	# tmp74, g
	.loc 1 349 0
	addl	$1, -20(%rbp)	#, j
	.loc 1 351 0
	movq	-8(%rbp), %rax	# e, tmp75
	movq	16(%rax), %rax	# e_17->next, tmp76
	movq	%rax, -8(%rbp)	# tmp76, e
	jmp	.L67	#
.L68:
	.loc 1 352 0 discriminator 2
	movq	-8(%rbp), %rdx	# e, tmp77
	movq	-16(%rbp), %rax	# g, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	glist_add_ptr	#
	movq	%rax, -16(%rbp)	# tmp79, g
	.loc 1 353 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
	.loc 1 351 0 discriminator 2
	movq	-8(%rbp), %rax	# e, tmp80
	movq	16(%rax), %rax	# e_4->next, tmp81
	movq	%rax, -8(%rbp)	# tmp81, e
.L67:
	.loc 1 351 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, e
	jne	.L68	#,
.L66:
	.loc 1 344 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
.L65:
	.loc 1 344 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# h, tmp82
	movl	8(%rax), %eax	# h_12(D)->size, D.3405
	cmpl	-24(%rbp), %eax	# i, D.3405
	jg	.L69	#,
	.loc 1 358 0 is_stmt 1
	movq	-48(%rbp), %rax	# count, tmp83
	movl	-20(%rbp), %edx	# j, tmp84
	movl	%edx, (%rax)	# tmp84, *count_26(D)
	.loc 1 360 0
	movq	-16(%rbp), %rax	# g, D.3409
	.loc 1 361 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	hash_tolist, .-hash_tolist
	.globl	hash_free
	.type	hash_free, @function
hash_free:
.LFB15:
	.loc 1 365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# h, h
	.loc 1 370 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L72	#
.L75:
	.loc 1 371 0
	movq	-40(%rbp), %rax	# h, tmp65
	movq	(%rax), %rcx	# h_4(D)->table, D.3411
	movl	-20(%rbp), %eax	# i, tmp66
	movslq	%eax, %rdx	# tmp66, D.3412
	movq	%rdx, %rax	# D.3412, tmp67
	addq	%rax, %rax	# tmp67
	addq	%rdx, %rax	# D.3412, tmp67
	salq	$3, %rax	#, tmp68
	addq	%rcx, %rax	# D.3411, D.3411
	movq	16(%rax), %rax	# _9->next, tmp69
	movq	%rax, -16(%rbp)	# tmp69, e
	jmp	.L73	#
.L74:
	.loc 1 372 0 discriminator 2
	movq	-16(%rbp), %rax	# e, tmp70
	movq	16(%rax), %rax	# e_1->next, tmp71
	movq	%rax, -8(%rbp)	# tmp71, e2
	.loc 1 373 0 discriminator 2
	movq	-16(%rbp), %rax	# e, tmp72
	movq	%rax, %rdi	# tmp72,
	call	ckd_free	#
	.loc 1 371 0 discriminator 2
	movq	-8(%rbp), %rax	# e2, tmp73
	movq	%rax, -16(%rbp)	# tmp73, e
.L73:
	.loc 1 371 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L74	#,
	.loc 1 370 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L72:
	.loc 1 370 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# h, tmp74
	movl	8(%rax), %eax	# h_4(D)->size, D.3410
	cmpl	-20(%rbp), %eax	# i, D.3410
	jg	.L75	#,
	.loc 1 377 0 is_stmt 1
	movq	-40(%rbp), %rax	# h, tmp75
	movq	(%rax), %rax	# h_4(D)->table, D.3411
	movq	%rax, %rdi	# D.3411,
	call	ckd_free	#
	.loc 1 378 0
	movq	-40(%rbp), %rax	# h, tmp76
	movq	%rax, %rdi	# tmp76,
	call	ckd_free	#
	.loc 1 379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	hash_free, .-hash_free
.Letext0:
	.file 2 "libutil/prim_type.h"
	.file 3 "libutil/glist.h"
	.file 4 "libutil/hash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x80c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.long	.LASF49
	.long	.LASF50
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
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.long	0x81
	.uleb128 0x6
	.long	0x74
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0x42
	.long	0x42
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x44
	.long	0x34
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0xc0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x46
	.long	0xd2
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF17
	.uleb128 0x8
	.long	.LASF51
	.byte	0x8
	.byte	0x2
	.byte	0x48
	.long	0x11d
	.uleb128 0x9
	.string	"ptr"
	.byte	0x2
	.byte	0x49
	.long	0x6c
	.uleb128 0xa
	.long	.LASF11
	.byte	0x2
	.byte	0x4a
	.long	0x94
	.uleb128 0xa
	.long	.LASF12
	.byte	0x2
	.byte	0x4b
	.long	0x9f
	.uleb128 0xa
	.long	.LASF14
	.byte	0x2
	.byte	0x4c
	.long	0xb5
	.uleb128 0xa
	.long	.LASF16
	.byte	0x2
	.byte	0x4d
	.long	0xc7
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.byte	0x4e
	.long	0xd9
	.uleb128 0xb
	.long	.LASF23
	.byte	0x10
	.byte	0x3
	.byte	0x4c
	.long	0x14d
	.uleb128 0xc
	.long	.LASF19
	.byte	0x3
	.byte	0x4d
	.long	0x11d
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x3
	.byte	0x4e
	.long	0x14d
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x128
	.uleb128 0x7
	.long	.LASF21
	.byte	0x3
	.byte	0x4f
	.long	0x128
	.uleb128 0x7
	.long	.LASF22
	.byte	0x3
	.byte	0x50
	.long	0x169
	.uleb128 0x5
	.byte	0x8
	.long	0x153
	.uleb128 0xb
	.long	.LASF24
	.byte	0x18
	.byte	0x4
	.byte	0x58
	.long	0x1ac
	.uleb128 0xd
	.string	"key"
	.byte	0x4
	.byte	0x59
	.long	0x7b
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x4
	.byte	0x5c
	.long	0x94
	.byte	0x8
	.uleb128 0xd
	.string	"val"
	.byte	0x4
	.byte	0x5e
	.long	0x94
	.byte	0xc
	.uleb128 0xc
	.long	.LASF20
	.byte	0x4
	.byte	0x5f
	.long	0x1ac
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x16f
	.uleb128 0x7
	.long	.LASF25
	.byte	0x4
	.byte	0x60
	.long	0x16f
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.byte	0x62
	.long	0x1ea
	.uleb128 0xc
	.long	.LASF26
	.byte	0x4
	.byte	0x63
	.long	0x1ea
	.byte	0
	.uleb128 0xc
	.long	.LASF27
	.byte	0x4
	.byte	0x64
	.long	0x94
	.byte	0x8
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.byte	0x67
	.long	0xaa
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1b2
	.uleb128 0x7
	.long	.LASF29
	.byte	0x4
	.byte	0x68
	.long	0x1bd
	.uleb128 0xf
	.long	.LASF31
	.byte	0x1
	.byte	0x6d
	.long	0x94
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x237
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x6d
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.byte	0x7a
	.long	0x281
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x281
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x7a
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x7a
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"h"
	.byte	0x1
	.byte	0x7c
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1f0
	.uleb128 0x13
	.long	.LASF32
	.byte	0x1
	.byte	0x8c
	.long	0x9f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f2
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x8c
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x8c
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"cp"
	.byte	0x1
	.byte	0x8e
	.long	0x7b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x8f
	.long	0x74
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x90
	.long	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.long	.LASF33
	.byte	0x1
	.byte	0x91
	.long	0x9f
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.byte	0xac
	.long	0x6e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x356
	.uleb128 0x10
	.long	.LASF19
	.byte	0x1
	.byte	0xac
	.long	0x356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xac
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xac
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xae
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0xae
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xaa
	.uleb128 0x13
	.long	.LASF35
	.byte	0x1
	.byte	0xbd
	.long	0x94
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ce
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0xbd
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xbd
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"c1"
	.byte	0x1
	.byte	0xbf
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x11
	.string	"c2"
	.byte	0x1
	.byte	0xbf
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"str"
	.byte	0x1
	.byte	0xc1
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF37
	.byte	0x1
	.byte	0xd1
	.long	0x94
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x440
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0xd1
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xd1
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"c1"
	.byte	0x1
	.byte	0xd3
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x11
	.string	"c2"
	.byte	0x1
	.byte	0xd3
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xd4
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"str"
	.byte	0x1
	.byte	0xd5
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.byte	0xe8
	.long	0x94
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b4
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0xe8
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0xe8
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xe8
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xe8
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0xe8
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF36
	.byte	0x1
	.byte	0xea
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x94
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x100
	.long	0x94
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x526
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x100
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x100
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x100
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.value	0x102
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x103
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.value	0x10c
	.long	0x94
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a1
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x10c
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x10c
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.value	0x10c
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x10c
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.value	0x10e
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"str"
	.byte	0x1
	.value	0x10f
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF42
	.byte	0x1
	.value	0x119
	.long	0x94
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x63c
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x119
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x1
	.value	0x119
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x119
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.value	0x119
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x119
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.string	"old"
	.byte	0x1
	.value	0x11b
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"cur"
	.byte	0x1
	.value	0x11c
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"new"
	.byte	0x1
	.value	0x11c
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x137
	.long	0x94
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a8
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x137
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x137
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x137
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.value	0x139
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x13a
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF44
	.byte	0x1
	.value	0x142
	.long	0x94
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x723
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x142
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x142
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.value	0x142
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.value	0x142
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.value	0x144
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"str"
	.byte	0x1
	.value	0x145
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF45
	.byte	0x1
	.value	0x14f
	.long	0x15e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x796
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x14f
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF46
	.byte	0x1
	.value	0x14f
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.value	0x151
	.long	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"e"
	.byte	0x1
	.value	0x152
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x153
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.value	0x153
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x1
	.value	0x16c
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ea
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.value	0x16c
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"e"
	.byte	0x1
	.value	0x16e
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"e2"
	.byte	0x1
	.value	0x16e
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x16f
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	0x94
	.long	0x7fa
	.uleb128 0x1e
	.long	0x65
	.byte	0x2d
	.byte	0
	.uleb128 0x15
	.long	.LASF47
	.byte	0x1
	.byte	0x64
	.long	0x7ea
	.uleb128 0x9
	.byte	0x3
	.quad	prime
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
.LASF52:
	.string	"hash_free"
.LASF36:
	.string	"entry"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"next"
.LASF45:
	.string	"hash_tolist"
.LASF32:
	.string	"key2hash"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF11:
	.string	"int32"
.LASF22:
	.string	"glist_t"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"uint8"
.LASF17:
	.string	"double"
.LASF34:
	.string	"makekey"
.LASF51:
	.string	"anytype_s"
.LASF18:
	.string	"anytype_t"
.LASF12:
	.string	"uint32"
.LASF46:
	.string	"count"
.LASF3:
	.string	"unsigned int"
.LASF50:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF14:
	.string	"float32"
.LASF0:
	.string	"long unsigned int"
.LASF38:
	.string	"lookup"
.LASF42:
	.string	"enter"
.LASF19:
	.string	"data"
.LASF27:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF39:
	.string	"hash_new"
.LASF35:
	.string	"keycmp_nocase"
.LASF49:
	.string	"hash.c"
.LASF7:
	.string	"sizetype"
.LASF44:
	.string	"hash_enter_bkey"
.LASF15:
	.string	"float"
.LASF31:
	.string	"prime_size"
.LASF30:
	.string	"casearg"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"hash_entry_s"
.LASF25:
	.string	"hash_entry_t"
.LASF37:
	.string	"keycmp_case"
.LASF5:
	.string	"short int"
.LASF26:
	.string	"table"
.LASF28:
	.string	"nocase"
.LASF8:
	.string	"char"
.LASF40:
	.string	"hash_lookup"
.LASF41:
	.string	"hash_lookup_bkey"
.LASF33:
	.string	"hash"
.LASF29:
	.string	"hash_table_t"
.LASF47:
	.string	"prime"
.LASF23:
	.string	"gnode_s"
.LASF21:
	.string	"gnode_t"
.LASF16:
	.string	"float64"
.LASF48:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF43:
	.string	"hash_enter"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
