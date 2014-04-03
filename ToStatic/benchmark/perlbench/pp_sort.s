	.file	"pp_sort.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 pp_sort.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
	.type	dynprep, @function
dynprep:
.LFB2:
	.file 1 "pp_sort.c"
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)	# list1, list1
	movq	%rsi, -96(%rbp)	# list2, list2
	movq	%rdx, -104(%rbp)	# nmemb, nmemb
	movq	%rcx, -112(%rbp)	# cmp, cmp
	.loc 1 202 0
	movq	$0, -56(%rbp)	#, runs
	.loc 1 204 0
	movq	-88(%rbp), %r13	# list1, b
	.loc 1 205 0
	movq	-104(%rbp), %rax	# nmemb, tmp116
	salq	$3, %rax	#, D.12476
	addq	%r13, %rax	# b, last
	movq	%rax, -128(%rbp)	# last, %sfp
	.loc 1 206 0
	leaq	8(%r13), %rax	#, D.12477
	movq	(%rax), %rcx	# *_40, D.12478
	movq	0(%r13), %rdx	# *b_36, D.12478
	movq	-112(%rbp), %rax	# cmp, tmp117
	movq	%rcx, %rsi	# D.12478,
	movq	%rdx, %rdi	# D.12478,
	call	*%rax	# tmp117
	testl	%eax, %eax	# D.12479
	setg	%al	#, D.12480
	movzbl	%al, %eax	# D.12480, tmp118
	movl	%eax, -68(%rbp)	# tmp118, sense
	.loc 1 207 0
	movq	-96(%rbp), %r14	# list2, p2
	jmp	.L2	#
.L24:
	.loc 1 211 0
	leaq	16(%r13), %rbx	#, p
	movq	%rbx, %r15	# p, t
	jmp	.L3	#
.L6:
	.loc 1 212 0
	movq	(%rbx), %rcx	# *p_51, D.12478
	movq	(%r15), %rdx	# *t_20, D.12478
	movq	-112(%rbp), %rax	# cmp, tmp119
	movq	%rcx, %rsi	# D.12478,
	movq	%rdx, %rdi	# D.12478,
	call	*%rax	# tmp119
	testl	%eax, %eax	# D.12479
	setg	%al	#, D.12480
	movzbl	%al, %eax	# D.12480, D.12479
	cmpl	-68(%rbp), %eax	# sense, D.12479
	je	.L4	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	jmp	.L5	#
.L4:
	.loc 1 211 0 is_stmt 1
	addq	$8, %rbx	#, p
	movq	%rbx, %r15	# p, t
.L3:
	.loc 1 211 0 is_stmt 0 discriminator 1
	addq	$8, %rbx	#, p
	cmpq	-128(%rbp), %rbx	# %sfp, p
	jb	.L6	#,
.L5:
	.loc 1 214 0 is_stmt 1
	movq	%r13, %r12	# b, q
.L23:
	.loc 1 217 0
	leaq	128(%r13), %rax	#, r
	movq	%rax, -120(%rbp)	# r, %sfp
	movq	%rax, %rbx	# r, p
	.loc 1 218 0
	cmpq	%r15, %rax	# t, r
	jb	.L7	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	movq	%r15, %rbx	# t, r
	movq	%rbx, -120(%rbp)	# r, %sfp
	jmp	.L8	#
.L7:
	.loc 1 220 0 is_stmt 1
	nop
.L10:
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rcx	# *p_7, D.12478
	leaq	-8(%rbx), %rax	#, D.12477
	movq	(%rax), %rdx	# *_65, D.12478
	movq	-112(%rbp), %rax	# cmp, tmp120
	movq	%rcx, %rsi	# D.12478,
	movq	%rdx, %rdi	# D.12478,
	call	*%rax	# tmp120
	testl	%eax, %eax	# D.12479
	setg	%al	#, D.12480
	movzbl	%al, %eax	# D.12480, D.12479
	cmpl	-68(%rbp), %eax	# sense, D.12479
	jne	.L9	#,
	.loc 1 221 0 is_stmt 1 discriminator 2
	subq	$16, %rbx	#, p
	.loc 1 220 0 discriminator 2
	cmpq	%r12, %rbx	# q, p
	ja	.L10	#,
.L9:
	.loc 1 222 0
	cmpq	%r12, %rbx	# q, p
	ja	.L8	#,
	.loc 1 226 0
	movq	-120(%rbp), %r12	# %sfp, q
	movq	%r12, %rbx	# q, p
	.loc 1 227 0
	jmp	.L11	#
.L13:
	.loc 1 228 0
	movq	%rbx, %r12	# p, q
.L11:
	.loc 1 227 0 discriminator 1
	addq	$16, %rbx	#, p
	cmpq	%r15, %rbx	# t, p
	jae	.L12	#,
	.loc 1 228 0 discriminator 2
	movq	(%rbx), %rcx	# *p_73, D.12478
	leaq	-8(%rbx), %rax	#, D.12477
	movq	(%rax), %rdx	# *_75, D.12478
	movq	-112(%rbp), %rax	# cmp, tmp121
	movq	%rcx, %rsi	# D.12478,
	movq	%rdx, %rdi	# D.12478,
	call	*%rax	# tmp121
	testl	%eax, %eax	# D.12479
	setg	%al	#, D.12480
	movzbl	%al, %eax	# D.12480, D.12479
	.loc 1 227 0 discriminator 2
	cmpl	-68(%rbp), %eax	# sense, D.12479
	je	.L13	#,
.L12:
	.loc 1 229 0
	leaq	16(%r12), %rbx	#, p
	movq	%rbx, -120(%rbp)	# p, %sfp
.L8:
	.loc 1 232 0
	cmpq	%r13, %r12	# b, q
	jbe	.L14	#,
	.loc 1 233 0
	movq	%rbx, -64(%rbp)	# p, savep
	.loc 1 234 0
	addq	$16, %r12	#, q
	movq	%r12, %rbx	# q, p
	.loc 1 236 0
	cmpq	%r15, %rbx	# t, p
	jne	.L15	#,
	.loc 1 237 0 discriminator 1
	leaq	8(%r15), %rax	#, D.12477
	.loc 1 236 0 discriminator 1
	cmpq	-128(%rbp), %rax	# %sfp, D.12477
	jne	.L15	#,
	.loc 1 238 0
	movq	(%rbx), %rcx	# *p_85, D.12478
	leaq	-8(%rbx), %rax	#, D.12477
	movq	(%rax), %rdx	# *_88, D.12478
	movq	-112(%rbp), %rax	# cmp, tmp122
	movq	%rcx, %rsi	# D.12478,
	movq	%rdx, %rdi	# D.12478,
	call	*%rax	# tmp122
	testl	%eax, %eax	# D.12479
	setg	%al	#, D.12480
	movzbl	%al, %eax	# D.12480, D.12479
	.loc 1 237 0
	cmpl	-68(%rbp), %eax	# sense, D.12479
	jne	.L15	#,
	.loc 1 239 0
	movq	-128(%rbp), %r12	# %sfp, q
	movq	%r12, %rbx	# q, p
	movq	%rbx, %rax	# p, r
	movq	%rax, -120(%rbp)	# r, %sfp
	movq	%rax, -64(%rbp)	# r, savep
.L15:
	.loc 1 240 0
	movq	%rbx, %rdx	# p, p.0
	movq	%r13, %rax	# b, b.1
	subq	%rax, %rdx	# b.1, D.12481
	movq	%rdx, %rax	# D.12481, D.12481
	sarq	$3, %rax	#, tmp123
	salq	$3, %rax	#, D.12476
	addq	%r14, %rax	# p2, D.12477
	movq	%rax, (%r14)	# D.12477, MEM[(struct SV * * *)p2_21]
	movq	(%r14), %r14	# MEM[(struct SV * * *)p2_21], p2
	addq	$1, -56(%rbp)	#, runs
	.loc 1 241 0
	cmpl	$0, -68(%rbp)	#, sense
	je	.L16	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	jmp	.L17	#
.L18:
	.loc 1 242 0 is_stmt 1
	movq	0(%r13), %rax	# *b_3, c
	movq	%rax, %rsi	# c, c
	.loc 1 243 0
	movq	%r13, %rax	# b, b.2
	leaq	8(%rax), %r13	#, b
	movq	(%rbx), %rdx	# *p_106, D.12478
	movq	%rdx, (%rax)	# D.12478, *b.2_108
	.loc 1 244 0
	movq	%rsi, %rax	# c, c
	movq	%rax, (%rbx)	# c, *p_106
.L17:
	.loc 1 241 0 discriminator 1
	subq	$8, %rbx	#, p
	cmpq	%r13, %rbx	# b, p
	ja	.L18	#,
.L16:
	.loc 1 246 0
	movq	-64(%rbp), %rbx	# savep, p
	.loc 1 248 0
	jmp	.L19	#
.L14:
	jmp	.L19	#
.L21:
	.loc 1 249 0
	leaq	16(%r14), %rax	#, D.12477
	movq	%rax, (%r14)	# D.12477, MEM[(struct SV * * *)p2_23]
	movq	(%r14), %r14	# MEM[(struct SV * * *)p2_23], p2
	addq	$1, -56(%rbp)	#, runs
	.loc 1 250 0
	cmpl	$0, -68(%rbp)	#, sense
	je	.L20	#,
	.loc 1 251 0
	movq	%r12, %rax	# q, q.3
	leaq	8(%rax), %r12	#, q
	movq	(%rax), %rax	# *q.3_115, c
	movq	%rax, %rdi	# c, c
	.loc 1 252 0
	leaq	-8(%r12), %rax	#, D.12477
	movq	(%r12), %rdx	# *q_116, D.12478
	movq	%rdx, (%rax)	# D.12478, *_118
	.loc 1 253 0
	movq	%r12, %rax	# q, q.4
	leaq	8(%rax), %r12	#, q
	movq	%rdi, (%rax)	# c, *q.4_120
	jmp	.L19	#
.L20:
	.loc 1 254 0
	addq	$16, %r12	#, q
.L19:
	.loc 1 248 0 discriminator 1
	cmpq	%rbx, %r12	# p, q
	jb	.L21	#,
	.loc 1 256 0
	movq	%rbx, %r13	# p, b
	cmpq	%r15, %r13	# t, b
	jne	.L22	#,
	.loc 1 256 0 is_stmt 0 discriminator 1
	leaq	8(%r15), %rax	#, D.12477
	cmpq	-128(%rbp), %rax	# %sfp, D.12477
	jne	.L22	#,
	.loc 1 257 0 is_stmt 1
	leaq	8(%r14), %rax	#, D.12477
	movq	%rax, (%r14)	# D.12477, MEM[(struct SV * * *)p2_23]
	addq	$1, -56(%rbp)	#, runs
	.loc 1 258 0
	addq	$8, %r13	#, b
.L22:
	.loc 1 260 0
	movq	-120(%rbp), %r12	# %sfp, q
	.loc 1 261 0
	cmpq	%r15, %r13	# t, b
	jb	.L23	#,
	.loc 1 262 0
	cmpl	$0, -68(%rbp)	#, sense
	sete	%al	#, D.12480
	movzbl	%al, %eax	# D.12480, tmp124
	movl	%eax, -68(%rbp)	# tmp124, sense
.L2:
	.loc 1 207 0 discriminator 1
	cmpq	-128(%rbp), %r13	# %sfp, b
	jb	.L24	#,
	.loc 1 264 0
	movq	-56(%rbp), %rax	# runs, D.12482
	.loc 1 265 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	dynprep, .-dynprep
	.type	cmp_desc, @function
cmp_desc:
.LFB3:
	.loc 1 356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
	.loc 1 357 0
	movq	PL_sort_RealCmp(%rip), %rax	# PL_sort_RealCmp, PL_sort_RealCmp.5
	movq	-16(%rbp), %rcx	# b, tmp63
	movq	-8(%rbp), %rdx	# a, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rdx, %rdi	# tmp64,
	call	*%rax	# PL_sort_RealCmp.5
	negl	%eax	# D.12485
	.loc 1 358 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cmp_desc, .-cmp_desc
	.type	S_mergesortsv, @function
S_mergesortsv:
.LFB4:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$2760, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -2744(%rbp)	# base, base
	movq	%rsi, -2752(%rbp)	# nmemb, nmemb
	movq	%rdx, -2760(%rbp)	# cmp, cmp
	movl	%ecx, -2764(%rbp)	# flags, flags
	.loc 1 372 0
	movq	$0, -2656(%rbp)	#, savecmp
	.loc 1 374 0
	cmpq	$1, -2752(%rbp)	#, nmemb
	ja	.L29	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	jmp	.L28	#
.L29:
	.loc 1 376 0 is_stmt 1
	cmpl	$0, -2764(%rbp)	#, flags
	je	.L31	#,
	.loc 1 377 0
	movq	PL_sort_RealCmp(%rip), %rax	# PL_sort_RealCmp, tmp163
	movq	%rax, -2656(%rbp)	# tmp163, savecmp
	.loc 1 378 0
	movq	-2760(%rbp), %rax	# cmp, tmp164
	movq	%rax, PL_sort_RealCmp(%rip)	# tmp164, PL_sort_RealCmp
	.loc 1 379 0
	movq	$cmp_desc, -2760(%rbp)	#, cmp
.L31:
	.loc 1 382 0
	cmpq	$200, -2752(%rbp)	#, nmemb
	ja	.L32	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	leaq	-1648(%rbp), %rax	#, tmp165
	movq	%rax, -2688(%rbp)	# tmp165, aux
	jmp	.L33	#
.L32:
	.loc 1 383 0 is_stmt 1
	movq	-2752(%rbp), %rax	# nmemb, tmp166
	salq	$3, %rax	#, D.12486
	movq	%rax, %rdi	# D.12486,
	call	Perl_safesysmalloc	#
	movq	%rax, -2688(%rbp)	# tmp167, aux
.L33:
	.loc 1 384 0
	movl	$0, -2728(%rbp)	#, level
	.loc 1 385 0
	leaq	-2608(%rbp), %rax	#, tmp168
	movq	%rax, -2664(%rbp)	# tmp168, stackp
	.loc 1 386 0
	movq	-2760(%rbp), %rcx	# cmp, tmp169
	movq	-2752(%rbp), %rdx	# nmemb, tmp170
	movq	-2688(%rbp), %rsi	# aux, tmp171
	movq	-2744(%rbp), %rax	# base, tmp172
	movq	%rax, %rdi	# tmp172,
	call	dynprep	#
	movq	-2664(%rbp), %rdx	# stackp, tmp173
	movq	%rax, 8(%rdx)	# D.12487, stackp_61->runs
	.loc 1 387 0
	movq	$0, -2696(%rbp)	#, offset
	movq	-2664(%rbp), %rax	# stackp, tmp174
	movq	-2696(%rbp), %rdx	# offset, tmp175
	movq	%rdx, (%rax)	# tmp175, stackp_61->offset
	.loc 1 388 0
	movq	-2744(%rbp), %rax	# base, tmp176
	movq	%rax, -2624(%rbp)	# tmp176, which
	movq	-2624(%rbp), %rax	# which, D.12488
	movq	%rax, -2640(%rbp)	# D.12488, which
	.loc 1 389 0
	movq	-2688(%rbp), %rax	# aux, tmp177
	movq	%rax, -2632(%rbp)	# tmp177, which
.L65:
	.loc 1 396 0
	movq	-2664(%rbp), %rax	# stackp, tmp178
	movq	8(%rax), %rax	# stackp_45->runs, tmp179
	movq	%rax, -2704(%rbp)	# tmp179, runs
	cmpq	$0, -2704(%rbp)	#, runs
	jne	.L34	#,
	.loc 1 397 0
	movl	-2728(%rbp), %eax	# level, tmp183
	andl	$1, %eax	#, tmp182
	movl	%eax, -2724(%rbp)	# tmp182, iwhich
	.loc 1 398 0
	movl	-2724(%rbp), %eax	# iwhich, tmp185
	cltq
	movq	-2640(%rbp,%rax,8), %rax	# which, tmp186
	movq	%rax, -2680(%rbp)	# tmp186, list1
	.loc 1 399 0
	addl	$1, -2724(%rbp)	#, iwhich
	movl	-2724(%rbp), %eax	# iwhich, tmp188
	cltq
	movq	-2640(%rbp,%rax,8), %rax	# which, tmp189
	movq	%rax, -2672(%rbp)	# tmp189, list2
.L57:
	.loc 1 401 0
	movq	-2664(%rbp), %rax	# stackp, tmp190
	movq	(%rax), %rax	# stackp_46->offset, tmp191
	movq	%rax, -2696(%rbp)	# tmp191, offset
	.loc 1 402 0
	movq	-2696(%rbp), %rax	# offset, offset.6
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2680(%rbp), %rax	# list1, tmp195
	addq	%rdx, %rax	# D.12486, tmp194
	movq	%rax, -2648(%rbp)	# tmp194, p1
	movq	-2648(%rbp), %r12	# p1, f1
	.loc 1 403 0
	movq	-2696(%rbp), %rax	# offset, offset.7
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2672(%rbp), %rax	# list2, tmp196
	addq	%rdx, %rax	# D.12486, tp2
	movq	%rax, -2776(%rbp)	# tp2, %sfp
	movq	%rax, %r14	# tp2, p
	.loc 1 404 0
	movq	(%r14), %rbx	# MEM[(struct SV * * *)p_79], t
	.loc 1 405 0
	movq	%rbx, %rdx	# t, t.8
	movq	-2672(%rbp), %rax	# list2, list2.9
	subq	%rax, %rdx	# list2.9, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	movq	%rax, %rdx	# D.12487, D.12489
	movq	-2680(%rbp), %rax	# list1, tmp197
	addq	%rdx, %rax	# D.12489, l1
	movq	%rax, -2792(%rbp)	# l1, %sfp
	movq	%rax, %r13	# l1, f2
	.loc 1 406 0
	movq	(%rbx), %rbx	# MEM[(struct SV * * *)t_80], t
	.loc 1 407 0
	movq	%rbx, %rdx	# t, t.10
	movq	-2672(%rbp), %rax	# list2, list2.11
	subq	%rax, %rdx	# list2.11, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	movq	%rax, %rdx	# D.12487, D.12489
	movq	-2680(%rbp), %rax	# list1, tmp198
	addq	%rdx, %rax	# D.12489, l2
	movq	%rax, -2800(%rbp)	# l2, %sfp
	.loc 1 408 0
	movq	%rbx, %rdx	# t, t.12
	movq	-2672(%rbp), %rax	# list2, list2.13
	subq	%rax, %rdx	# list2.13, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	sarq	$3, %rax	#, tmp199
	movq	%rax, -2696(%rbp)	# tmp199, offset
	.loc 1 409 0
	jmp	.L35	#
.L51:
	.loc 1 431 0
	movq	0(%r13), %rcx	# *f2_22, D.12490
	movq	(%r12), %rdx	# *f1_17, D.12490
	movq	-2760(%rbp), %rax	# cmp, tmp200
	movq	%rcx, %rsi	# D.12490,
	movq	%rdx, %rdi	# D.12490,
	call	*%rax	# tmp200
	testl	%eax, %eax	# D.12491
	jg	.L36	#,
	.loc 1 432 0
	movq	%r13, -2784(%rbp)	# f2, %sfp
	movq	%r12, %r15	# f1, b
	movq	-2792(%rbp), %rbx	# %sfp, t
	.loc 1 433 0
	movl	$-1, -2732(%rbp)	#, sense
	jmp	.L37	#
.L36:
	.loc 1 435 0
	movq	%r12, -2784(%rbp)	# f1, %sfp
	movq	%r13, %r15	# f2, b
	movq	-2800(%rbp), %rbx	# %sfp, t
	.loc 1 436 0
	movl	$0, -2732(%rbp)	#, sense
.L37:
	.loc 1 446 0
	movq	$1, -2720(%rbp)	#, i
	movq	$0, -2712(%rbp)	#, run
.L44:
	.loc 1 447 0
	movq	-2720(%rbp), %rax	# i, i.14
	salq	$3, %rax	#, D.12486
	leaq	(%r15,%rax), %r14	#, p
	cmpq	%rbx, %r14	# t, p
	jb	.L38	#,
	.loc 1 449 0
	leaq	-8(%rbx), %r14	#, p
	cmpq	%r15, %r14	# b, p
	jbe	.L39	#,
	.loc 1 450 0 discriminator 1
	movq	(%r14), %rcx	# *p_113, D.12490
	movq	-2784(%rbp), %rax	# %sfp, q
	movq	(%rax), %rdx	# *q_41, D.12490
	movq	-2760(%rbp), %rax	# cmp, tmp201
	movq	%rcx, %rsi	# D.12490,
	movq	%rdx, %rdi	# D.12490,
	call	*%rax	# tmp201
	.loc 1 449 0 discriminator 1
	cmpl	-2732(%rbp), %eax	# sense, D.12491
	jg	.L39	#,
	.loc 1 451 0
	movq	%r14, %rbx	# p, t
	.loc 1 453 0
	jmp	.L41	#
.L39:
	.loc 1 452 0
	movq	%r14, %r15	# p, b
	.loc 1 453 0
	jmp	.L41	#
.L38:
	.loc 1 454 0
	movq	(%r14), %rcx	# *p_112, D.12490
	movq	-2784(%rbp), %rax	# %sfp, q
	movq	(%rax), %rdx	# *q_41, D.12490
	movq	-2760(%rbp), %rax	# cmp, tmp202
	movq	%rcx, %rsi	# D.12490,
	movq	%rdx, %rdi	# D.12490,
	call	*%rax	# tmp202
	cmpl	-2732(%rbp), %eax	# sense, D.12491
	jg	.L42	#,
	.loc 1 455 0
	movq	%r14, %rbx	# p, t
	.loc 1 456 0
	jmp	.L41	#
.L42:
	.loc 1 457 0
	movq	%r14, %r15	# p, b
	.loc 1 458 0
	addq	$1, -2712(%rbp)	#, run
	cmpq	$5, -2712(%rbp)	#, run
	jle	.L43	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	-2720(%rbp), %rax	# i, tmp206
	addq	%rax, %rax	# tmp206, tmp205
	movq	%rax, -2720(%rbp)	# tmp205, i
	.loc 1 459 0 is_stmt 1 discriminator 1
	jmp	.L44	#
.L43:
	.loc 1 459 0 is_stmt 0
	jmp	.L44	#
.L41:
	.loc 1 468 0 is_stmt 1
	addq	$8, %r15	#, b
	.loc 1 469 0
	jmp	.L45	#
.L47:
	.loc 1 470 0
	movq	%rbx, %rdx	# t, t.15
	movq	%r15, %rax	# b, b.16
	subq	%rax, %rdx	# b.16, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	sarq	$3, %rax	#, tmp207
	subq	$1, %rax	#, D.12487
	movq	%rax, %rdx	# D.12487, tmp208
	shrq	$63, %rdx	#, tmp208
	addq	%rdx, %rax	# tmp208, tmp209
	sarq	%rax	# tmp210
	salq	$3, %rax	#, D.12486
	leaq	(%r15,%rax), %r14	#, p
	.loc 1 471 0
	movq	(%r14), %rcx	# *p_135, D.12490
	movq	-2784(%rbp), %rax	# %sfp, q
	movq	(%rax), %rdx	# *q_41, D.12490
	movq	-2760(%rbp), %rax	# cmp, tmp211
	movq	%rcx, %rsi	# D.12490,
	movq	%rdx, %rdi	# D.12490,
	call	*%rax	# tmp211
	cmpl	-2732(%rbp), %eax	# sense, D.12491
	jg	.L46	#,
	.loc 1 472 0
	movq	%r14, %rbx	# p, t
	jmp	.L45	#
.L46:
	.loc 1 473 0
	leaq	8(%r14), %r15	#, b
.L45:
	.loc 1 469 0 discriminator 1
	cmpq	%rbx, %r15	# t, b
	jb	.L47	#,
	.loc 1 479 0
	cmpq	%r12, -2784(%rbp)	# f1, %sfp
	jne	.L48	#,
.L49:
	.loc 1 480 0 discriminator 1
	movq	-2776(%rbp), %rax	# %sfp, tp2.17
	leaq	8(%rax), %rsi	#, tp2
	movq	%rsi, -2776(%rbp)	# tp2, %sfp
	movq	%r13, %rdx	# f2, f2.18
	leaq	8(%rdx), %r13	#, f2
	movq	(%rdx), %rdx	# *f2.18_143, D.12490
	movq	%rdx, (%rax)	# D.12490, *tp2.17_141
	cmpq	%rbx, %r13	# t, f2
	jb	.L49	#,
	.loc 1 481 0
	movq	-2776(%rbp), %rax	# %sfp, tp2.19
	leaq	8(%rax), %rdi	#, tp2
	movq	%rdi, -2776(%rbp)	# tp2, %sfp
	movq	%r12, %rdx	# f1, f1.20
	leaq	8(%rdx), %r12	#, f1
	movq	(%rdx), %rdx	# *f1.20_148, D.12490
	movq	%rdx, (%rax)	# D.12490, *tp2.19_146
	jmp	.L35	#
.L48:
	.loc 1 483 0 discriminator 1
	movq	-2776(%rbp), %rax	# %sfp, tp2.21
	leaq	8(%rax), %rsi	#, tp2
	movq	%rsi, -2776(%rbp)	# tp2, %sfp
	movq	%r12, %rdx	# f1, f1.22
	leaq	8(%rdx), %r12	#, f1
	movq	(%rdx), %rdx	# *f1.22_153, D.12490
	movq	%rdx, (%rax)	# D.12490, *tp2.21_151
	cmpq	%rbx, %r12	# t, f1
	jb	.L48	#,
	.loc 1 484 0
	movq	-2776(%rbp), %rax	# %sfp, tp2.23
	leaq	8(%rax), %rdi	#, tp2
	movq	%rdi, -2776(%rbp)	# tp2, %sfp
	movq	%r13, %rdx	# f2, f2.24
	leaq	8(%rdx), %r13	#, f2
	movq	(%rdx), %rdx	# *f2.24_158, D.12490
	movq	%rdx, (%rax)	# D.12490, *tp2.23_156
.L35:
	.loc 1 409 0 discriminator 1
	cmpq	-2792(%rbp), %r12	# %sfp, f1
	jae	.L50	#,
	.loc 1 409 0 is_stmt 0 discriminator 2
	cmpq	-2800(%rbp), %r13	# %sfp, f2
	jb	.L51	#,
.L50:
	.loc 1 490 0 is_stmt 1
	cmpq	-2792(%rbp), %r12	# %sfp, f1
	jne	.L52	#,
	.loc 1 491 0
	cmpq	-2800(%rbp), %r13	# %sfp, f2
	jae	.L53	#,
.L54:
	.loc 1 491 0 is_stmt 0 discriminator 1
	movq	-2776(%rbp), %rax	# %sfp, tp2.25
	leaq	8(%rax), %rcx	#, tp2
	movq	%rcx, -2776(%rbp)	# tp2, %sfp
	movq	%r13, %rdx	# f2, f2.26
	leaq	8(%rdx), %r13	#, f2
	movq	(%rdx), %rdx	# *f2.26_163, D.12490
	movq	%rdx, (%rax)	# D.12490, *tp2.25_161
	cmpq	-2800(%rbp), %r13	# %sfp, f2
	jb	.L54	#,
	jmp	.L53	#
.L52:
	.loc 1 492 0 is_stmt 1 discriminator 1
	movq	-2776(%rbp), %rax	# %sfp, tp2.27
	leaq	8(%rax), %rsi	#, tp2
	movq	%rsi, -2776(%rbp)	# tp2, %sfp
	movq	%r12, %rdx	# f1, f1.28
	leaq	8(%rdx), %r12	#, f1
	movq	(%rdx), %rdx	# *f1.28_168, D.12490
	movq	%rdx, (%rax)	# D.12490, *tp2.27_166
	cmpq	-2792(%rbp), %r12	# %sfp, f1
	jb	.L52	#,
.L53:
	.loc 1 493 0
	movq	-2776(%rbp), %rdx	# %sfp, tp2.29
	movq	-2672(%rbp), %rax	# list2, list2.30
	subq	%rax, %rdx	# list2.30, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	movq	%rax, %rdx	# D.12487, D.12489
	movq	-2680(%rbp), %rax	# list1, tmp212
	addq	%rax, %rdx	# tmp212, D.12488
	movq	-2648(%rbp), %rax	# p1, tmp213
	movq	%rdx, (%rax)	# D.12488, MEM[(struct SV * * *)p1_74]
	movq	-2648(%rbp), %rax	# p1, tmp214
	movq	(%rax), %rax	# MEM[(struct SV * * *)p1_74], tmp215
	movq	%rax, -2648(%rbp)	# tmp215, p1
	.loc 1 495 0
	subl	$1, -2728(%rbp)	#, level
	cmpl	$0, -2728(%rbp)	#, level
	jne	.L55	#,
	.loc 1 495 0 is_stmt 0 discriminator 1
	jmp	.L56	#
.L55:
	.loc 1 496 0 is_stmt 1
	subq	$16, -2664(%rbp)	#, stackp
	.loc 1 497 0
	movq	-2680(%rbp), %rbx	# list1, t
	movq	-2672(%rbp), %rax	# list2, tmp216
	movq	%rax, -2680(%rbp)	# tmp216, list1
	movq	%rbx, -2672(%rbp)	# t, list2
	.loc 1 498 0
	movq	-2664(%rbp), %rax	# stackp, tmp217
	movq	8(%rax), %rax	# stackp_178->runs, tmp218
	movq	%rax, -2704(%rbp)	# tmp218, runs
	cmpq	$0, -2704(%rbp)	#, runs
	je	.L57	#,
.L34:
	.loc 1 502 0
	movq	-2664(%rbp), %rax	# stackp, tmp219
	movq	$0, 8(%rax)	#, stackp_47->runs
	.loc 1 509 0
	jmp	.L58	#
.L59:
	.loc 1 510 0
	addl	$1, -2728(%rbp)	#, level
	.loc 1 511 0
	addq	$16, -2664(%rbp)	#, stackp
	.loc 1 512 0
	movq	-2664(%rbp), %rax	# stackp, tmp220
	movq	-2696(%rbp), %rdx	# offset, tmp221
	movq	%rdx, (%rax)	# tmp221, stackp_184->offset
	.loc 1 513 0
	movq	-2704(%rbp), %rax	# runs, tmp222
	movq	%rax, %rdx	# tmp222, tmp223
	shrq	$63, %rdx	#, tmp223
	addq	%rdx, %rax	# tmp223, tmp224
	sarq	%rax	# tmp225
	movq	%rax, %rdx	# tmp225, D.12487
	movq	-2664(%rbp), %rax	# stackp, tmp226
	movq	%rdx, 8(%rax)	# D.12487, stackp_184->runs
	movq	-2664(%rbp), %rax	# stackp, tmp227
	movq	8(%rax), %rax	# stackp_184->runs, D.12487
	subq	%rax, -2704(%rbp)	# D.12487, runs
.L58:
	.loc 1 509 0 discriminator 1
	cmpq	$2, -2704(%rbp)	#, runs
	jg	.L59	#,
	.loc 1 519 0
	movl	-2728(%rbp), %eax	# level, tmp231
	andl	$1, %eax	#, tmp230
	movl	%eax, -2724(%rbp)	# tmp230, iwhich
	.loc 1 520 0
	cmpq	$1, -2704(%rbp)	#, runs
	jne	.L60	#,
	.loc 1 529 0
	cmpl	$0, -2724(%rbp)	#, iwhich
	je	.L61	#,
	.loc 1 530 0
	movq	-2696(%rbp), %rax	# offset, offset.31
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2744(%rbp), %rax	# base, tmp232
	leaq	(%rdx,%rax), %r15	#, b
	movq	%r15, %r12	# b, f1
	.loc 1 531 0
	movq	-2696(%rbp), %rax	# offset, offset.32
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2688(%rbp), %rax	# aux, tmp233
	leaq	(%rdx,%rax), %r13	#, f2
	.loc 1 532 0
	movq	0(%r13), %rbx	# MEM[(struct SV * * *)f2_195], t
	.loc 1 533 0
	movq	%rbx, %rdx	# t, t.33
	movq	-2688(%rbp), %rax	# aux, aux.34
	subq	%rax, %rdx	# aux.34, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	sarq	$3, %rax	#, tmp234
	movq	%rax, -2696(%rbp)	# tmp234, offset
	.loc 1 534 0
	movq	-2696(%rbp), %rax	# offset, offset.35
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2744(%rbp), %rax	# base, tmp235
	leaq	(%rdx,%rax), %rbx	#, t
.L62:
	.loc 1 535 0 discriminator 1
	movq	%r13, %rax	# f2, f2.36
	leaq	8(%rax), %r13	#, f2
	movq	%r12, %rdx	# f1, f1.37
	leaq	8(%rdx), %r12	#, f1
	movq	(%rdx), %rdx	# *f1.37_206, D.12490
	movq	%rdx, (%rax)	# D.12490, *f2.36_204
	cmpq	%rbx, %r12	# t, f1
	jb	.L62	#,
	.loc 1 536 0
	movq	%rbx, (%r15)	# t, MEM[(struct SV * * *)b_191]
	jmp	.L63	#
.L61:
	.loc 1 537 0
	cmpl	$0, -2728(%rbp)	#, level
	jne	.L63	#,
	.loc 1 537 0 is_stmt 0 discriminator 1
	jmp	.L56	#
.L60:
	.loc 1 544 0 is_stmt 1
	addl	$1, -2728(%rbp)	#, level
	.loc 1 545 0
	addq	$16, -2664(%rbp)	#, stackp
	.loc 1 546 0
	movq	-2664(%rbp), %rax	# stackp, tmp236
	movq	-2696(%rbp), %rdx	# offset, tmp237
	movq	%rdx, (%rax)	# tmp237, stackp_210->offset
	.loc 1 547 0
	movq	-2664(%rbp), %rax	# stackp, tmp238
	movq	$0, 8(%rax)	#, stackp_210->runs
	.loc 1 548 0
	cmpl	$0, -2724(%rbp)	#, iwhich
	jne	.L63	#,
	.loc 1 549 0
	movq	-2696(%rbp), %rax	# offset, offset.38
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2744(%rbp), %rax	# base, tmp239
	leaq	(%rdx,%rax), %r15	#, b
	movq	%r15, %r12	# b, f1
	.loc 1 550 0
	movq	-2696(%rbp), %rax	# offset, offset.39
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2688(%rbp), %rax	# aux, tmp240
	leaq	(%rdx,%rax), %r13	#, f2
	.loc 1 551 0
	movq	0(%r13), %rbx	# MEM[(struct SV * * *)f2_217], t
	.loc 1 552 0
	movq	%rbx, %rdx	# t, t.40
	movq	-2688(%rbp), %rax	# aux, aux.41
	subq	%rax, %rdx	# aux.41, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	sarq	$3, %rax	#, tmp241
	movq	%rax, -2696(%rbp)	# tmp241, offset
	.loc 1 553 0
	movq	-2696(%rbp), %rax	# offset, offset.42
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2744(%rbp), %rax	# base, tmp242
	leaq	(%rdx,%rax), %r14	#, p
	.loc 1 554 0
	movq	(%rbx), %rbx	# MEM[(struct SV * * *)t_218], t
	.loc 1 555 0
	movq	%rbx, %rdx	# t, t.43
	movq	-2688(%rbp), %rax	# aux, aux.44
	subq	%rax, %rdx	# aux.44, D.12487
	movq	%rdx, %rax	# D.12487, D.12487
	sarq	$3, %rax	#, tmp243
	leaq	0(,%rax,8), %rdx	#, D.12486
	movq	-2744(%rbp), %rax	# base, tmp244
	leaq	(%rdx,%rax), %rbx	#, t
.L64:
	.loc 1 556 0 discriminator 1
	movq	%r13, %rax	# f2, f2.45
	leaq	8(%rax), %r13	#, f2
	movq	%r12, %rdx	# f1, f1.46
	leaq	8(%rdx), %r12	#, f1
	movq	(%rdx), %rdx	# *f1.46_236, D.12490
	movq	%rdx, (%rax)	# D.12490, *f2.45_234
	cmpq	%rbx, %r12	# t, f1
	jb	.L64	#,
	.loc 1 557 0
	movq	%r14, (%r15)	# p, MEM[(struct SV * * *)b_213]
	.loc 1 558 0
	movq	%rbx, (%r14)	# t, MEM[(struct SV * * *)p_225]
	.loc 1 561 0
	jmp	.L65	#
.L63:
	jmp	.L65	#
.L56:
	.loc 1 563 0
	leaq	-1648(%rbp), %rax	#, tmp245
	cmpq	%rax, -2688(%rbp)	# tmp245, aux
	je	.L66	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	-2688(%rbp), %rax	# aux, tmp246
	movq	%rax, %rdi	# tmp246,
	call	Perl_safesysfree	#
.L66:
	.loc 1 564 0 is_stmt 1
	cmpl	$0, -2764(%rbp)	#, flags
	je	.L67	#,
	.loc 1 565 0
	movq	-2656(%rbp), %rax	# savecmp, tmp247
	movq	%rax, PL_sort_RealCmp(%rip)	# tmp247, PL_sort_RealCmp
.L67:
	.loc 1 567 0
	nop
.L28:
	.loc 1 568 0
	addq	$2760, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	S_mergesortsv, .-S_mergesortsv
	.type	S_qsortsvu, @function
S_qsortsvu:
.LFB5:
	.loc 1 770 0
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
	subq	$480, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -488(%rbp)	# array, array
	movq	%rsi, -496(%rbp)	# num_elts, num_elts
	movq	%rdx, -504(%rbp)	# compare, compare
	.loc 1 774 0
	movl	$0, -476(%rbp)	#, next_stack_entry
	.loc 1 785 0
	cmpq	$1, -496(%rbp)	#, num_elts
	jbe	.L69	#,
	.loc 1 790 0
	cmpq	$255, -496(%rbp)	#, num_elts
	jbe	.L72	#,
.LBB2:
	.loc 1 793 0
	movq	-496(%rbp), %r12	# num_elts, n
	movq	-488(%rbp), %r14	# array, q
	jmp	.L73	#
.L78:
	.loc 1 794 0
	movq	%r12, %rax	# n, n.47
	leaq	-1(%rax), %r12	#, n
	testq	%rax, %rax	# n.47
	js	.L74	#,
	cvtsi2sdq	%rax, %xmm3	# n.47, D.12492
	movsd	%xmm3, -512(%rbp)	# D.12492, %sfp
	jmp	.L75	#
.L74:
	movq	%rax, %rdx	# n.47, tmp426
	shrq	%rdx	# tmp426
	andl	$1, %eax	#, tmp427
	orq	%rax, %rdx	# tmp427, tmp426
	cvtsi2sdq	%rdx, %xmm0	# tmp426, tmp425
	movapd	%xmm0, %xmm2	# tmp425, D.12492
	addsd	%xmm0, %xmm2	# tmp425, D.12492
	movsd	%xmm2, -512(%rbp)	# D.12492, %sfp
.L75:
	call	spec_rand	#
	mulsd	-512(%rbp), %xmm0	# %sfp, D.12492
	ucomisd	.LC0(%rip), %xmm0	#, D.12492
	jae	.L76	#,
	cvttsd2siq	%xmm0, %r13	# D.12492, j
	jmp	.L77	#
.L76:
	movsd	.LC0(%rip), %xmm1	#, tmp429
	subsd	%xmm1, %xmm0	# tmp429, tmp428
	cvttsd2siq	%xmm0, %r13	# tmp428, j
	movabsq	$-9223372036854775808, %rax	#, tmp430
	xorq	%rax, %r13	# tmp430, j
.L77:
	.loc 1 795 0
	leaq	0(,%r13,8), %rax	#, D.12493
	addq	%r14, %rax	# q, D.12494
	movq	(%rax), %rbx	# *_71, temp
	.loc 1 796 0
	leaq	0(,%r13,8), %rax	#, D.12493
	leaq	(%r14,%rax), %rdx	#, D.12494
	leaq	0(,%r12,8), %rax	#, D.12493
	addq	%r14, %rax	# q, D.12494
	movq	(%rax), %rax	# *_76, D.12495
	movq	%rax, (%rdx)	# D.12495, *_74
	.loc 1 797 0
	leaq	0(,%r12,8), %rax	#, D.12493
	addq	%r14, %rax	# q, D.12494
	movq	%rbx, (%rax)	# temp, *_79
.L73:
	.loc 1 793 0 discriminator 1
	cmpq	$1, %r12	#, n
	ja	.L78	#,
.L72:
.LBE2:
	.loc 1 803 0
	movl	$0, -472(%rbp)	#, part_left
	.loc 1 804 0
	movq	-496(%rbp), %rax	# num_elts, tmp431
	subl	$1, %eax	#, D.12496
	movl	%eax, -468(%rbp)	# D.12496, part_right
	.loc 1 806 0
	movl	$6, -464(%rbp)	#, qsort_break_even
.L140:
	.loc 1 811 0
	movl	-472(%rbp), %eax	# part_left, tmp432
	movl	-468(%rbp), %edx	# part_right, tmp433
	subl	%eax, %edx	# tmp432, D.12497
	movl	%edx, %eax	# D.12497, D.12497
	cmpl	-464(%rbp), %eax	# qsort_break_even, D.12497
	jl	.L79	#,
.LBB3:
	.loc 1 874 0
	movl	-468(%rbp), %eax	# part_right, tmp434
	movl	-472(%rbp), %edx	# part_left, tmp435
	addl	%edx, %eax	# tmp435, D.12497
	movl	%eax, %edx	# D.12497, tmp436
	shrl	$31, %edx	#, tmp436
	addl	%edx, %eax	# tmp436, tmp437
	sarl	%eax	# tmp438
	movl	%eax, -456(%rbp)	# tmp438, pc_left
	.loc 1 875 0
	movl	-456(%rbp), %eax	# pc_left, tmp439
	movl	%eax, -452(%rbp)	# tmp439, pc_right
	.loc 1 876 0
	movl	-456(%rbp), %eax	# pc_left, tmp443
	subl	$1, %eax	#, tmp442
	movl	%eax, -448(%rbp)	# tmp442, u_right
	.loc 1 877 0
	movl	-452(%rbp), %eax	# pc_right, tmp447
	addl	$1, %eax	#, tmp446
	movl	%eax, -444(%rbp)	# tmp446, u_left
	.loc 1 905 0
	movl	$0, -460(%rbp)	#, swapped
	.loc 1 907 0
	movl	-456(%rbp), %eax	# pc_left, tmp448
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp449
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_94, D.12495
	movl	-448(%rbp), %eax	# u_right, tmp450
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp451
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_98, D.12495
	movq	-504(%rbp), %rax	# compare, tmp452
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp452
	movl	%eax, -428(%rbp)	# tmp453, s
	.loc 1 908 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L80	#,
	.loc 1 910 0
	movl	-444(%rbp), %eax	# u_left, tmp454
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp455
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_104, D.12495
	movl	-456(%rbp), %eax	# pc_left, tmp456
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp457
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_108, D.12495
	movq	-504(%rbp), %rax	# compare, tmp458
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp458
	movl	%eax, -428(%rbp)	# tmp459, s
	.loc 1 912 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L81	#,
	.loc 1 914 0
	addl	$1, -452(%rbp)	#, pc_right
	jmp	.L85	#
.L81:
	.loc 1 916 0
	cmpl	$0, -428(%rbp)	#, s
	jle	.L85	#,
	.loc 1 918 0
	movl	-444(%rbp), %eax	# u_left, tmp460
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp461
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_114, D.12495
	movl	-448(%rbp), %eax	# u_right, tmp462
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp463
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_118, D.12495
	movq	-504(%rbp), %rax	# compare, tmp464
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp464
	movl	%eax, -428(%rbp)	# tmp465, s
	.loc 1 919 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L83	#,
.LBB4:
	.loc 1 921 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-456(%rbp), %eax	# pc_left, tmp466
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp467
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_124, temp
	movl	-456(%rbp), %eax	# pc_left, tmp468
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp469
	addq	%rax, %rdx	# tmp469, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp470
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp471
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_131, D.12495
	movq	%rax, (%rdx)	# D.12495, *_128
	movl	-444(%rbp), %eax	# u_left, tmp472
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp473
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_135
.LBE4:
	jmp	.L85	#
.L83:
	.loc 1 923 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L84	#,
.LBB5:
	.loc 1 925 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-456(%rbp), %eax	# pc_left, tmp474
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp475
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_140, temp
	movl	-456(%rbp), %eax	# pc_left, tmp476
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp477
	addq	%rax, %rdx	# tmp477, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp478
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp479
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_147, D.12495
	movq	%rax, (%rdx)	# D.12495, *_144
	movl	-444(%rbp), %eax	# u_left, tmp480
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp481
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_151
.LBE5:
	.loc 1 926 0
	subl	$1, -456(%rbp)	#, pc_left
	jmp	.L85	#
.L84:
.LBB6:
	.loc 1 930 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-456(%rbp), %eax	# pc_left, tmp482
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp483
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_157, temp
	movl	-456(%rbp), %eax	# pc_left, tmp484
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp485
	addq	%rax, %rdx	# tmp485, D.12494
	movl	-448(%rbp), %eax	# u_right, tmp486
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp487
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_164, D.12495
	movq	%rax, (%rdx)	# D.12495, *_161
	movl	-448(%rbp), %eax	# u_right, tmp488
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp489
	addq	%rax, %rdx	# tmp489, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp490
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp491
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_171, D.12495
	movq	%rax, (%rdx)	# D.12495, *_168
	movl	-444(%rbp), %eax	# u_left, tmp492
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp493
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_175
	jmp	.L85	#
.L80:
.LBE6:
	.loc 1 934 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L86	#,
	.loc 1 936 0
	movl	-444(%rbp), %eax	# u_left, tmp494
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp495
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_179, D.12495
	movl	-456(%rbp), %eax	# pc_left, tmp496
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp497
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_183, D.12495
	movq	-504(%rbp), %rax	# compare, tmp498
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp498
	movl	%eax, -428(%rbp)	# tmp499, s
	.loc 1 937 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L87	#,
	.loc 1 939 0
	subl	$1, -456(%rbp)	#, pc_left
	jmp	.L85	#
.L87:
	.loc 1 941 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L89	#,
	.loc 1 943 0
	subl	$1, -456(%rbp)	#, pc_left
	.loc 1 944 0
	addl	$1, -452(%rbp)	#, pc_right
	jmp	.L85	#
.L89:
.LBB7:
	.loc 1 948 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp500
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp501
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_192, temp
	movl	-448(%rbp), %eax	# u_right, tmp502
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp503
	addq	%rax, %rdx	# tmp503, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp504
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp505
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_199, D.12495
	movq	%rax, (%rdx)	# D.12495, *_196
	movl	-444(%rbp), %eax	# u_left, tmp506
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp507
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_203
.LBE7:
	.loc 1 949 0
	addl	$1, -452(%rbp)	#, pc_right
	jmp	.L85	#
.L86:
	.loc 1 954 0
	movl	-444(%rbp), %eax	# u_left, tmp508
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp509
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_208, D.12495
	movl	-456(%rbp), %eax	# pc_left, tmp510
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp511
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_212, D.12495
	movq	-504(%rbp), %rax	# compare, tmp512
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp512
	movl	%eax, -428(%rbp)	# tmp513, s
	.loc 1 955 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L90	#,
	.loc 1 957 0
	movl	-444(%rbp), %eax	# u_left, tmp514
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp515
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_217, D.12495
	movl	-448(%rbp), %eax	# u_right, tmp516
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp517
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_221, D.12495
	movq	-504(%rbp), %rax	# compare, tmp518
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp518
	movl	%eax, -428(%rbp)	# tmp519, s
	.loc 1 958 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L91	#,
.LBB8:
	.loc 1 960 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp520
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp521
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_227, temp
	movl	-448(%rbp), %eax	# u_right, tmp522
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp523
	addq	%rax, %rdx	# tmp523, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp524
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp525
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_234, D.12495
	movq	%rax, (%rdx)	# D.12495, *_231
	movl	-456(%rbp), %eax	# pc_left, tmp526
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp527
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_238
.LBE8:
	jmp	.L85	#
.L91:
	.loc 1 962 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L93	#,
.LBB9:
	.loc 1 964 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp528
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp529
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_243, temp
	movl	-448(%rbp), %eax	# u_right, tmp530
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp531
	addq	%rax, %rdx	# tmp531, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp532
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp533
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_250, D.12495
	movq	%rax, (%rdx)	# D.12495, *_247
	movl	-456(%rbp), %eax	# pc_left, tmp534
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp535
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_254
.LBE9:
	.loc 1 965 0
	addl	$1, -452(%rbp)	#, pc_right
	jmp	.L85	#
.L93:
.LBB10:
	.loc 1 969 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp536
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp537
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_260, temp
	movl	-448(%rbp), %eax	# u_right, tmp538
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp539
	addq	%rax, %rdx	# tmp539, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp540
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp541
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_267, D.12495
	movq	%rax, (%rdx)	# D.12495, *_264
	movl	-456(%rbp), %eax	# pc_left, tmp542
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp543
	addq	%rax, %rdx	# tmp543, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp544
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp545
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_274, D.12495
	movq	%rax, (%rdx)	# D.12495, *_271
	movl	-444(%rbp), %eax	# u_left, tmp546
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp547
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_278
	jmp	.L85	#
.L90:
.LBE10:
	.loc 1 972 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L94	#,
.LBB11:
	.loc 1 974 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp548
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp549
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_283, temp
	movl	-448(%rbp), %eax	# u_right, tmp550
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp551
	addq	%rax, %rdx	# tmp551, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp552
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp553
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_290, D.12495
	movq	%rax, (%rdx)	# D.12495, *_287
	movl	-444(%rbp), %eax	# u_left, tmp554
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp555
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_294
.LBE11:
	.loc 1 975 0
	subl	$1, -456(%rbp)	#, pc_left
	jmp	.L85	#
.L94:
.LBB12:
	.loc 1 979 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp556
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp557
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_300, temp
	movl	-448(%rbp), %eax	# u_right, tmp558
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp559
	addq	%rax, %rdx	# tmp559, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp560
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp561
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_307, D.12495
	movq	%rax, (%rdx)	# D.12495, *_304
	movl	-444(%rbp), %eax	# u_left, tmp562
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp563
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_311
.L85:
.LBE12:
	.loc 1 987 0
	subl	$1, -448(%rbp)	#, u_right
	.loc 1 988 0
	addl	$1, -444(%rbp)	#, u_left
.LBB13:
	.loc 1 1009 0
	jmp	.L95	#
.L117:
	jmp	.L95	#
.L100:
	.loc 1 1010 0
	movl	-456(%rbp), %eax	# pc_left, tmp564
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp565
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_319, D.12495
	movl	-448(%rbp), %eax	# u_right, tmp566
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp567
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_323, D.12495
	movq	-504(%rbp), %rax	# compare, tmp568
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp568
	movl	%eax, -428(%rbp)	# tmp569, s
	.loc 1 1011 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L96	#,
	.loc 1 1012 0
	subl	$1, -448(%rbp)	#, u_right
	jmp	.L95	#
.L96:
	.loc 1 1013 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L97	#,
	.loc 1 1014 0
	subl	$1, -456(%rbp)	#, pc_left
	.loc 1 1015 0
	movl	-456(%rbp), %eax	# pc_left, tmp570
	cmpl	-448(%rbp), %eax	# u_right, tmp570
	je	.L98	#,
.LBB14:
	.loc 1 1016 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp571
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp572
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_331, temp
	movl	-448(%rbp), %eax	# u_right, tmp573
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp574
	addq	%rax, %rdx	# tmp574, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp575
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp576
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_338, D.12495
	movq	%rax, (%rdx)	# D.12495, *_335
	movl	-456(%rbp), %eax	# pc_left, tmp577
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp578
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_342
.L98:
.LBE14:
	.loc 1 1018 0
	subl	$1, -448(%rbp)	#, u_right
	jmp	.L95	#
.L97:
	.loc 1 1020 0
	jmp	.L99	#
.L95:
	.loc 1 1009 0 discriminator 1
	movl	-448(%rbp), %eax	# u_right, tmp579
	cmpl	-472(%rbp), %eax	# part_left, tmp579
	setge	%al	#, D.12498
	movzbl	%al, %eax	# D.12498, tmp580
	movl	%eax, -424(%rbp)	# tmp580, still_work_on_left
	cmpl	$0, -424(%rbp)	#, still_work_on_left
	jne	.L100	#,
.L99:
	.loc 1 1030 0
	jmp	.L101	#
.L106:
	.loc 1 1031 0
	movl	-444(%rbp), %eax	# u_left, tmp581
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp582
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_349, D.12495
	movl	-452(%rbp), %eax	# pc_right, tmp583
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp584
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_353, D.12495
	movq	-504(%rbp), %rax	# compare, tmp585
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp585
	movl	%eax, -428(%rbp)	# tmp586, s
	.loc 1 1032 0
	cmpl	$0, -428(%rbp)	#, s
	jns	.L102	#,
	.loc 1 1033 0
	addl	$1, -444(%rbp)	#, u_left
	jmp	.L101	#
.L102:
	.loc 1 1034 0
	cmpl	$0, -428(%rbp)	#, s
	jne	.L103	#,
	.loc 1 1035 0
	addl	$1, -452(%rbp)	#, pc_right
	.loc 1 1036 0
	movl	-452(%rbp), %eax	# pc_right, tmp587
	cmpl	-444(%rbp), %eax	# u_left, tmp587
	je	.L104	#,
.LBB15:
	.loc 1 1037 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-452(%rbp), %eax	# pc_right, tmp588
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp589
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_361, temp
	movl	-452(%rbp), %eax	# pc_right, tmp590
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp591
	addq	%rax, %rdx	# tmp591, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp592
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp593
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_368, D.12495
	movq	%rax, (%rdx)	# D.12495, *_365
	movl	-444(%rbp), %eax	# u_left, tmp594
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp595
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_372
.L104:
.LBE15:
	.loc 1 1039 0
	addl	$1, -444(%rbp)	#, u_left
	jmp	.L101	#
.L103:
	.loc 1 1041 0
	jmp	.L105	#
.L101:
	.loc 1 1030 0 discriminator 1
	movl	-444(%rbp), %eax	# u_left, tmp596
	cmpl	-468(%rbp), %eax	# part_right, tmp596
	setle	%al	#, D.12498
	movzbl	%al, %eax	# D.12498, tmp597
	movl	%eax, -420(%rbp)	# tmp597, still_work_on_right
	cmpl	$0, -420(%rbp)	#, still_work_on_right
	jne	.L106	#,
.L105:
	.loc 1 1049 0
	cmpl	$0, -424(%rbp)	#, still_work_on_left
	je	.L107	#,
	.loc 1 1054 0
	cmpl	$0, -420(%rbp)	#, still_work_on_right
	je	.L108	#,
.LBB16:
	.loc 1 1061 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp598
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp599
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_378, temp
	movl	-448(%rbp), %eax	# u_right, tmp600
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp601
	addq	%rax, %rdx	# tmp601, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp602
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp603
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_385, D.12495
	movq	%rax, (%rdx)	# D.12495, *_382
	movl	-444(%rbp), %eax	# u_left, tmp604
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp605
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_389
.LBE16:
	.loc 1 1062 0
	subl	$1, -448(%rbp)	#, u_right
	.loc 1 1063 0
	addl	$1, -444(%rbp)	#, u_left
	jmp	.L112	#
.L108:
	.loc 1 1077 0
	subl	$1, -456(%rbp)	#, pc_left
	.loc 1 1078 0
	movl	-456(%rbp), %eax	# pc_left, tmp606
	cmpl	-448(%rbp), %eax	# u_right, tmp606
	jne	.L110	#,
.LBB17:
	.loc 1 1079 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp607
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp608
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_397, temp
	movl	-448(%rbp), %eax	# u_right, tmp609
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp610
	addq	%rax, %rdx	# tmp610, D.12494
	movl	-452(%rbp), %eax	# pc_right, tmp611
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp612
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_404, D.12495
	movq	%rax, (%rdx)	# D.12495, *_401
	movl	-452(%rbp), %eax	# pc_right, tmp613
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp614
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_408
.LBE17:
	jmp	.L111	#
.L110:
.LBB18:
	.loc 1 1082 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-448(%rbp), %eax	# u_right, tmp615
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp616
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_413, temp
	movl	-448(%rbp), %eax	# u_right, tmp617
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp618
	addq	%rax, %rdx	# tmp618, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp619
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp620
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_420, D.12495
	movq	%rax, (%rdx)	# D.12495, *_417
	movl	-456(%rbp), %eax	# pc_left, tmp621
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp622
	addq	%rax, %rdx	# tmp622, D.12494
	movl	-452(%rbp), %eax	# pc_right, tmp623
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp624
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_427, D.12495
	movq	%rax, (%rdx)	# D.12495, *_424
	movl	-452(%rbp), %eax	# pc_right, tmp625
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp626
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_431
.L111:
.LBE18:
	.loc 1 1085 0
	subl	$1, -452(%rbp)	#, pc_right
	.loc 1 1086 0
	subl	$1, -448(%rbp)	#, u_right
.LBE13:
	.loc 1 1110 0
	jmp	.L117	#
.L107:
.LBB21:
	.loc 1 1088 0
	cmpl	$0, -420(%rbp)	#, still_work_on_right
	je	.L113	#,
	.loc 1 1094 0
	addl	$1, -452(%rbp)	#, pc_right
	.loc 1 1095 0
	movl	-452(%rbp), %eax	# pc_right, tmp627
	cmpl	-444(%rbp), %eax	# u_left, tmp627
	jne	.L114	#,
.LBB19:
	.loc 1 1096 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-444(%rbp), %eax	# u_left, tmp628
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp629
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_439, temp
	movl	-444(%rbp), %eax	# u_left, tmp630
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp631
	addq	%rax, %rdx	# tmp631, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp632
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp633
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_446, D.12495
	movq	%rax, (%rdx)	# D.12495, *_443
	movl	-456(%rbp), %eax	# pc_left, tmp634
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp635
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_450
.LBE19:
	jmp	.L115	#
.L114:
.LBB20:
	.loc 1 1099 0
	addl	$1, -460(%rbp)	#, swapped
	movl	-452(%rbp), %eax	# pc_right, tmp636
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp637
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_455, temp
	movl	-452(%rbp), %eax	# pc_right, tmp638
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp639
	addq	%rax, %rdx	# tmp639, D.12494
	movl	-456(%rbp), %eax	# pc_left, tmp640
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp641
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_462, D.12495
	movq	%rax, (%rdx)	# D.12495, *_459
	movl	-456(%rbp), %eax	# pc_left, tmp642
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp643
	addq	%rax, %rdx	# tmp643, D.12494
	movl	-444(%rbp), %eax	# u_left, tmp644
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp645
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_469, D.12495
	movq	%rax, (%rdx)	# D.12495, *_466
	movl	-444(%rbp), %eax	# u_left, tmp646
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp647
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_473
.L115:
.LBE20:
	.loc 1 1102 0 discriminator 2
	addl	$1, -456(%rbp)	#, pc_left
	.loc 1 1103 0 discriminator 2
	addl	$1, -444(%rbp)	#, u_left
	jmp	.L112	#
.L113:
	.loc 1 1108 0
	nop
.LBE21:
	.loc 1 1142 0
	cmpl	$2, -460(%rbp)	#, swapped
	jg	.L118	#,
	jmp	.L141	#
.L112:
	.loc 1 1110 0
	jmp	.L117	#
.L141:
	.loc 1 1147 0
	sall	-464(%rbp)	# qsort_break_even
	jmp	.L119	#
.L118:
	.loc 1 1157 0
	movl	$6, -464(%rbp)	#, qsort_break_even
.L119:
	.loc 1 1161 0
	movl	-472(%rbp), %eax	# part_left, tmp648
	cmpl	-456(%rbp), %eax	# pc_left, tmp648
	jge	.L120	#,
	.loc 1 1165 0
	movl	-452(%rbp), %eax	# pc_right, tmp649
	cmpl	-468(%rbp), %eax	# part_right, tmp649
	jge	.L121	#,
	.loc 1 1173 0
	movl	-452(%rbp), %eax	# pc_right, tmp650
	movl	-468(%rbp), %edx	# part_right, tmp651
	movl	%edx, %ecx	# tmp651, D.12497
	subl	%eax, %ecx	# tmp650, D.12497
	movl	-472(%rbp), %eax	# part_left, tmp652
	movl	-456(%rbp), %edx	# pc_left, tmp653
	subl	%eax, %edx	# tmp652, D.12497
	movl	%edx, %eax	# D.12497, D.12497
	cmpl	%eax, %ecx	# D.12497, D.12497
	jle	.L122	#,
	.loc 1 1175 0
	movl	-452(%rbp), %eax	# pc_right, tmp654
	leal	1(%rax), %ecx	#, D.12497
	movl	-476(%rbp), %eax	# next_stack_entry, tmp656
	movslq	%eax, %rdx	# tmp656, tmp655
	movq	%rdx, %rax	# tmp655, tmp657
	addq	%rax, %rax	# tmp657
	addq	%rdx, %rax	# tmp655, tmp657
	salq	$2, %rax	#, tmp658
	leaq	-32(%rbp), %rsi	#, tmp791
	addq	%rsi, %rax	# tmp791, tmp659
	subq	$384, %rax	#, tmp660
	movl	%ecx, (%rax)	# D.12497, partition_stack[next_stack_entry_1].left
	.loc 1 1176 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp662
	movslq	%eax, %rdx	# tmp662, tmp661
	movq	%rdx, %rax	# tmp661, tmp663
	addq	%rax, %rax	# tmp663
	addq	%rdx, %rax	# tmp661, tmp663
	salq	$2, %rax	#, tmp664
	leaq	-32(%rbp), %rdi	#, tmp792
	addq	%rdi, %rax	# tmp792, tmp665
	leaq	-384(%rax), %rdx	#, tmp666
	movl	-468(%rbp), %eax	# part_right, tmp667
	movl	%eax, 4(%rdx)	# tmp667, partition_stack[next_stack_entry_1].right
	.loc 1 1178 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp669
	movslq	%eax, %rdx	# tmp669, tmp668
	movq	%rdx, %rax	# tmp668, tmp670
	addq	%rax, %rax	# tmp670
	addq	%rdx, %rax	# tmp668, tmp670
	salq	$2, %rax	#, tmp671
	leaq	-32(%rbp), %rsi	#, tmp793
	addq	%rsi, %rax	# tmp793, tmp672
	leaq	-384(%rax), %rdx	#, tmp673
	movl	-464(%rbp), %eax	# qsort_break_even, tmp674
	movl	%eax, 8(%rdx)	# tmp674, partition_stack[next_stack_entry_1].qsort_break_even
	.loc 1 1180 0
	movl	-456(%rbp), %eax	# pc_left, tmp678
	subl	$1, %eax	#, tmp677
	movl	%eax, -468(%rbp)	# tmp677, part_right
	jmp	.L123	#
.L122:
	.loc 1 1183 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp680
	movslq	%eax, %rdx	# tmp680, tmp679
	movq	%rdx, %rax	# tmp679, tmp681
	addq	%rax, %rax	# tmp681
	addq	%rdx, %rax	# tmp679, tmp681
	salq	$2, %rax	#, tmp682
	leaq	-32(%rbp), %rdi	#, tmp794
	addq	%rdi, %rax	# tmp794, tmp683
	leaq	-384(%rax), %rdx	#, tmp684
	movl	-472(%rbp), %eax	# part_left, tmp685
	movl	%eax, (%rdx)	# tmp685, partition_stack[next_stack_entry_1].left
	.loc 1 1184 0
	movl	-456(%rbp), %eax	# pc_left, tmp686
	leal	-1(%rax), %ecx	#, D.12497
	movl	-476(%rbp), %eax	# next_stack_entry, tmp688
	movslq	%eax, %rdx	# tmp688, tmp687
	movq	%rdx, %rax	# tmp687, tmp689
	addq	%rax, %rax	# tmp689
	addq	%rdx, %rax	# tmp687, tmp689
	salq	$2, %rax	#, tmp690
	leaq	-32(%rbp), %rsi	#, tmp795
	addq	%rsi, %rax	# tmp795, tmp691
	subq	$384, %rax	#, tmp692
	movl	%ecx, 4(%rax)	# D.12497, partition_stack[next_stack_entry_1].right
	.loc 1 1186 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp694
	movslq	%eax, %rdx	# tmp694, tmp693
	movq	%rdx, %rax	# tmp693, tmp695
	addq	%rax, %rax	# tmp695
	addq	%rdx, %rax	# tmp693, tmp695
	salq	$2, %rax	#, tmp696
	leaq	-32(%rbp), %rdi	#, tmp796
	addq	%rdi, %rax	# tmp796, tmp697
	leaq	-384(%rax), %rdx	#, tmp698
	movl	-464(%rbp), %eax	# qsort_break_even, tmp699
	movl	%eax, 8(%rdx)	# tmp699, partition_stack[next_stack_entry_1].qsort_break_even
	.loc 1 1188 0
	movl	-452(%rbp), %eax	# pc_right, tmp703
	addl	$1, %eax	#, tmp702
	movl	%eax, -472(%rbp)	# tmp702, part_left
.L123:
	.loc 1 1191 0 discriminator 4
	addl	$1, -476(%rbp)	#, next_stack_entry
	jmp	.L125	#
.L121:
	.loc 1 1197 0
	movl	-456(%rbp), %eax	# pc_left, tmp707
	subl	$1, %eax	#, tmp706
	movl	%eax, -468(%rbp)	# tmp706, part_right
.LBE3:
	jmp	.L129	#
.L120:
.LBB22:
	.loc 1 1199 0
	movl	-452(%rbp), %eax	# pc_right, tmp708
	cmpl	-468(%rbp), %eax	# part_right, tmp708
	jge	.L126	#,
	.loc 1 1203 0
	movl	-452(%rbp), %eax	# pc_right, tmp712
	addl	$1, %eax	#, tmp711
	movl	%eax, -472(%rbp)	# tmp711, part_left
	jmp	.L125	#
.L126:
	.loc 1 1208 0
	cmpl	$0, -476(%rbp)	#, next_stack_entry
	jne	.L127	#,
	.loc 1 1210 0
	jmp	.L128	#
.L127:
	.loc 1 1212 0
	subl	$1, -476(%rbp)	#, next_stack_entry
	.loc 1 1213 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp714
	movslq	%eax, %rdx	# tmp714, tmp713
	movq	%rdx, %rax	# tmp713, tmp715
	addq	%rax, %rax	# tmp715
	addq	%rdx, %rax	# tmp713, tmp715
	salq	$2, %rax	#, tmp716
	leaq	-32(%rbp), %rsi	#, tmp797
	addq	%rsi, %rax	# tmp797, tmp717
	subq	$384, %rax	#, tmp718
	movl	(%rax), %eax	# partition_stack[next_stack_entry_488].left, tmp719
	movl	%eax, -472(%rbp)	# tmp719, part_left
	.loc 1 1214 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp721
	movslq	%eax, %rdx	# tmp721, tmp720
	movq	%rdx, %rax	# tmp720, tmp722
	addq	%rax, %rax	# tmp722
	addq	%rdx, %rax	# tmp720, tmp722
	salq	$2, %rax	#, tmp723
	leaq	-32(%rbp), %rdi	#, tmp798
	addq	%rdi, %rax	# tmp798, tmp724
	subq	$384, %rax	#, tmp725
	movl	4(%rax), %eax	# partition_stack[next_stack_entry_488].right, tmp726
	movl	%eax, -468(%rbp)	# tmp726, part_right
	.loc 1 1216 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp728
	movslq	%eax, %rdx	# tmp728, tmp727
	movq	%rdx, %rax	# tmp727, tmp729
	addq	%rax, %rax	# tmp729
	addq	%rdx, %rax	# tmp727, tmp729
	salq	$2, %rax	#, tmp730
	leaq	-32(%rbp), %rsi	#, tmp799
	addq	%rsi, %rax	# tmp799, tmp731
	subq	$384, %rax	#, tmp732
	movl	8(%rax), %eax	# partition_stack[next_stack_entry_488].qsort_break_even, tmp733
	movl	%eax, -464(%rbp)	# tmp733, qsort_break_even
.LBE22:
	jmp	.L129	#
.L125:
	jmp	.L129	#
.L79:
.LBB23:
	.loc 1 1227 0
	movl	-472(%rbp), %eax	# part_left, tmp737
	addl	$1, %eax	#, tmp736
	movl	%eax, -440(%rbp)	# tmp736, i
	jmp	.L130	#
.L138:
.LBB24:
	.loc 1 1233 0
	movl	-440(%rbp), %eax	# i, tmp741
	subl	$1, %eax	#, tmp740
	movl	%eax, -436(%rbp)	# tmp740, j
	jmp	.L131	#
.L134:
	.loc 1 1234 0
	movl	-436(%rbp), %eax	# j, tmp742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp743
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rcx	# *_496, D.12495
	movl	-440(%rbp), %eax	# i, tmp744
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp745
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rdx	# *_500, D.12495
	movq	-504(%rbp), %rax	# compare, tmp746
	movq	%rcx, %rsi	# D.12495,
	movq	%rdx, %rdi	# D.12495,
	call	*%rax	# tmp746
	testl	%eax, %eax	# D.12497
	js	.L132	#,
	.loc 1 1237 0
	jmp	.L133	#
.L132:
	.loc 1 1233 0
	subl	$1, -436(%rbp)	#, j
.L131:
	.loc 1 1233 0 is_stmt 0 discriminator 1
	movl	-436(%rbp), %eax	# j, tmp747
	cmpl	-472(%rbp), %eax	# part_left, tmp747
	jge	.L134	#,
.L133:
	.loc 1 1240 0 is_stmt 1
	addl	$1, -436(%rbp)	#, j
	.loc 1 1241 0
	movl	-436(%rbp), %eax	# j, tmp748
	cmpl	-440(%rbp), %eax	# i, tmp748
	je	.L135	#,
.LBB25:
	.loc 1 1245 0
	movl	-440(%rbp), %eax	# i, tmp749
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp750
	addq	%rdx, %rax	# D.12493, D.12494
	movq	(%rax), %rbx	# *_507, temp
	.loc 1 1246 0
	movl	-440(%rbp), %eax	# i, tmp754
	subl	$1, %eax	#, tmp753
	movl	%eax, -432(%rbp)	# tmp753, k
	jmp	.L136	#
.L137:
	.loc 1 1247 0 discriminator 2
	movl	-432(%rbp), %eax	# k, tmp755
	cltq
	addq	$1, %rax	#, D.12499
	leaq	0(,%rax,8), %rdx	#, D.12499
	movq	-488(%rbp), %rax	# array, tmp756
	addq	%rax, %rdx	# tmp756, D.12494
	movl	-432(%rbp), %eax	# k, tmp757
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp758
	addq	%rcx, %rax	# D.12493, D.12494
	movq	(%rax), %rax	# *_516, D.12495
	movq	%rax, (%rdx)	# D.12495, *_513
	.loc 1 1246 0 discriminator 2
	subl	$1, -432(%rbp)	#, k
.L136:
	.loc 1 1246 0 is_stmt 0 discriminator 1
	movl	-432(%rbp), %eax	# k, tmp759
	cmpl	-436(%rbp), %eax	# j, tmp759
	jge	.L137	#,
	.loc 1 1248 0 is_stmt 1
	movl	-436(%rbp), %eax	# j, tmp760
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12493
	movq	-488(%rbp), %rax	# array, tmp761
	addq	%rdx, %rax	# D.12493, D.12494
	movq	%rbx, (%rax)	# temp, *_521
.L135:
.LBE25:
.LBE24:
	.loc 1 1227 0
	addl	$1, -440(%rbp)	#, i
.L130:
	.loc 1 1227 0 is_stmt 0 discriminator 1
	movl	-440(%rbp), %eax	# i, tmp762
	cmpl	-468(%rbp), %eax	# part_right, tmp762
	jle	.L138	#,
	.loc 1 1256 0 is_stmt 1
	cmpl	$0, -476(%rbp)	#, next_stack_entry
	jne	.L139	#,
	.loc 1 1258 0
	jmp	.L128	#
.L139:
	.loc 1 1260 0
	subl	$1, -476(%rbp)	#, next_stack_entry
	.loc 1 1261 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp764
	movslq	%eax, %rdx	# tmp764, tmp763
	movq	%rdx, %rax	# tmp763, tmp765
	addq	%rax, %rax	# tmp765
	addq	%rdx, %rax	# tmp763, tmp765
	salq	$2, %rax	#, tmp766
	leaq	-32(%rbp), %rdi	#, tmp800
	addq	%rdi, %rax	# tmp800, tmp767
	subq	$384, %rax	#, tmp768
	movl	(%rax), %eax	# partition_stack[next_stack_entry_523].left, tmp769
	movl	%eax, -472(%rbp)	# tmp769, part_left
	.loc 1 1262 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp771
	movslq	%eax, %rdx	# tmp771, tmp770
	movq	%rdx, %rax	# tmp770, tmp772
	addq	%rax, %rax	# tmp772
	addq	%rdx, %rax	# tmp770, tmp772
	salq	$2, %rax	#, tmp773
	leaq	-32(%rbp), %rsi	#, tmp801
	addq	%rsi, %rax	# tmp801, tmp774
	subq	$384, %rax	#, tmp775
	movl	4(%rax), %eax	# partition_stack[next_stack_entry_523].right, tmp776
	movl	%eax, -468(%rbp)	# tmp776, part_right
	.loc 1 1264 0
	movl	-476(%rbp), %eax	# next_stack_entry, tmp778
	movslq	%eax, %rdx	# tmp778, tmp777
	movq	%rdx, %rax	# tmp777, tmp779
	addq	%rax, %rax	# tmp779
	addq	%rdx, %rax	# tmp777, tmp779
	salq	$2, %rax	#, tmp780
	leaq	-32(%rbp), %rdi	#, tmp802
	addq	%rdi, %rax	# tmp802, tmp781
	subq	$384, %rax	#, tmp782
	movl	8(%rax), %eax	# partition_stack[next_stack_entry_523].qsort_break_even, tmp783
	movl	%eax, -464(%rbp)	# tmp783, qsort_break_even
.LBE23:
	.loc 1 1267 0
	jmp	.L140	#
.L129:
	jmp	.L140	#
.L128:
.L69:
	.loc 1 1270 0
	addq	$480, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	S_qsortsvu, .-S_qsortsvu
	.type	cmpindir, @function
cmpindir:
.LFB6:
	.loc 1 1326 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
	.loc 1 1328 0
	movq	-40(%rbp), %rax	# a, tmp66
	movq	%rax, -16(%rbp)	# tmp66, ap
	.loc 1 1329 0
	movq	-48(%rbp), %rax	# b, tmp67
	movq	%rax, -8(%rbp)	# tmp67, bp
	.loc 1 1331 0
	movq	PL_sort_RealCmp(%rip), %rax	# PL_sort_RealCmp, PL_sort_RealCmp.48
	movq	-8(%rbp), %rdx	# bp, tmp68
	movq	(%rdx), %rcx	# *bp_7, D.12500
	movq	-16(%rbp), %rdx	# ap, tmp69
	movq	(%rdx), %rdx	# *ap_5, D.12500
	movq	%rcx, %rsi	# D.12500,
	movq	%rdx, %rdi	# D.12500,
	call	*%rax	# PL_sort_RealCmp.48
	movl	%eax, -20(%rbp)	# tmp70, sense
	cmpl	$0, -20(%rbp)	#, sense
	jne	.L143	#,
	.loc 1 1332 0
	movq	-16(%rbp), %rax	# ap, tmp71
	cmpq	-8(%rbp), %rax	# bp, tmp71
	ja	.L144	#,
	.loc 1 1332 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ap, tmp72
	cmpq	-8(%rbp), %rax	# bp, tmp72
	jae	.L145	#,
	movl	$-1, %eax	#, iftmp.50
	jmp	.L147	#
.L145:
	.loc 1 1332 0 discriminator 2
	movl	$0, %eax	#, iftmp.50
	jmp	.L147	#
.L144:
	movl	$1, %eax	#, iftmp.49
.L147:
	.loc 1 1332 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.49, sense
.L143:
	.loc 1 1333 0 is_stmt 1
	movl	-20(%rbp), %eax	# sense, D.12501
	.loc 1 1334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cmpindir, .-cmpindir
	.type	cmpindir_desc, @function
cmpindir_desc:
.LFB7:
	.loc 1 1338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
	.loc 1 1340 0
	movq	-40(%rbp), %rax	# a, tmp66
	movq	%rax, -16(%rbp)	# tmp66, ap
	.loc 1 1341 0
	movq	-48(%rbp), %rax	# b, tmp67
	movq	%rax, -8(%rbp)	# tmp67, bp
	.loc 1 1344 0
	movq	PL_sort_RealCmp(%rip), %rax	# PL_sort_RealCmp, PL_sort_RealCmp.51
	movq	-8(%rbp), %rdx	# bp, tmp68
	movq	(%rdx), %rcx	# *bp_7, D.12503
	movq	-16(%rbp), %rdx	# ap, tmp69
	movq	(%rdx), %rdx	# *ap_5, D.12503
	movq	%rcx, %rsi	# D.12503,
	movq	%rdx, %rdi	# D.12503,
	call	*%rax	# PL_sort_RealCmp.51
	movl	%eax, -20(%rbp)	# tmp70, sense
	cmpl	$0, -20(%rbp)	#, sense
	je	.L150	#,
	.loc 1 1345 0
	movl	-20(%rbp), %eax	# sense, tmp71
	negl	%eax	# D.12502
	jmp	.L151	#
.L150:
	.loc 1 1347 0
	movq	-16(%rbp), %rax	# ap, tmp72
	cmpq	-8(%rbp), %rax	# bp, tmp72
	ja	.L152	#,
	.loc 1 1347 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ap, tmp73
	cmpq	-8(%rbp), %rax	# bp, tmp73
	jae	.L153	#,
	.loc 1 1347 0 discriminator 3
	movl	$-1, %eax	#, iftmp.53
	jmp	.L155	#
.L153:
	.loc 1 1347 0 discriminator 4
	movl	$0, %eax	#, iftmp.53
	jmp	.L151	#
.L152:
	.loc 1 1347 0 discriminator 2
	movl	$1, %eax	#, iftmp.52
.L155:
.L151:
	.loc 1 1349 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	cmpindir_desc, .-cmpindir_desc
	.section	.rodata
.LC1:
	.string	"sort::hints"
	.text
	.type	S_qsortsv, @function
S_qsortsv:
.LFB8:
	.loc 1 1353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$1688, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -1704(%rbp)	# list1, list1
	movq	%rsi, -1712(%rbp)	# nmemb, nmemb
	movq	%rdx, -1720(%rbp)	# cmp, cmp
	movl	%ecx, -1724(%rbp)	# flags, flags
	.loc 1 1356 0
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _10->sv_any, D.12505
	movq	56(%rax), %rax	# _11->xgv_gp, D.12506
	movq	(%rax), %rax	# _12->gp_sv, tmp114
	movq	%rax, -1680(%rbp)	# tmp114, hintsv
	movq	-1680(%rbp), %rax	# hintsv, tmp115
	movl	12(%rax), %eax	# hintsv_13->sv_flags, D.12507
	andl	$65536, %eax	#, D.12507
	testl	%eax, %eax	# D.12507
	je	.L157	#,
	.loc 1 1356 0 is_stmt 0 discriminator 1
	movq	-1680(%rbp), %rax	# hintsv, tmp116
	movl	12(%rax), %eax	# hintsv_13->sv_flags, D.12507
	andl	$65536, %eax	#, D.12507
	testl	%eax, %eax	# D.12507
	je	.L158	#,
	.loc 1 1356 0 discriminator 3
	movq	-1680(%rbp), %rax	# hintsv, tmp117
	movq	(%rax), %rax	# hintsv_13->sv_any, D.12508
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_18].xiv_iv, D.12509
	andl	$256, %eax	#, D.12510
	testl	%eax, %eax	# D.12510
	setne	%al	#, iftmp.55
	jmp	.L160	#
.L158:
	.loc 1 1356 0 discriminator 4
	movq	-1680(%rbp), %rax	# hintsv, tmp118
	movq	%rax, %rdi	# tmp118,
	call	Perl_sv_2iv	#
	andl	$256, %eax	#, D.12510
	testl	%eax, %eax	# D.12510
	setne	%al	#, iftmp.55
	jmp	.L160	#
.L157:
	.loc 1 1356 0 discriminator 2
	movl	$0, %eax	#, iftmp.54
.L160:
	.loc 1 1356 0 discriminator 5
	testb	%al, %al	# iftmp.54
	je	.L161	#,
.LBB26:
	.loc 1 1361 0 is_stmt 1
	cmpq	$1, -1712(%rbp)	#, nmemb
	jbe	.L156	#,
	.loc 1 1364 0
	cmpq	$200, -1712(%rbp)	#, nmemb
	ja	.L164	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	leaq	-1648(%rbp), %rax	#, tmp119
	movq	%rax, -1688(%rbp)	# tmp119, indir
	jmp	.L165	#
.L164:
	.loc 1 1365 0 is_stmt 1
	movq	-1712(%rbp), %rax	# nmemb, tmp120
	salq	$3, %rax	#, D.12511
	movq	%rax, %rdi	# D.12511,
	call	Perl_safesysmalloc	#
	movq	%rax, -1688(%rbp)	# tmp121, indir
.L165:
	.loc 1 1368 0
	movq	-1712(%rbp), %r12	# nmemb, n
	movq	-1688(%rbp), %r14	# indir, pp
	movq	-1704(%rbp), %r13	# list1, q
	jmp	.L166	#
.L167:
	.loc 1 1368 0 is_stmt 0 discriminator 2
	movq	%r14, %rax	# pp, pp.56
	leaq	8(%rax), %r14	#, pp
	movq	%r13, %rdx	# q, q.57
	leaq	8(%rdx), %r13	#, q
	movq	%rdx, (%rax)	# q.57, *pp.56_39
.L166:
	.loc 1 1368 0 discriminator 1
	movq	%r12, %rax	# n, n.58
	leaq	-1(%rax), %r12	#, n
	testq	%rax, %rax	# n.58
	jne	.L167	#,
	.loc 1 1370 0 is_stmt 1
	movq	PL_sort_RealCmp(%rip), %rax	# PL_sort_RealCmp, tmp122
	movq	%rax, -1672(%rbp)	# tmp122, savecmp
	.loc 1 1371 0
	movq	-1720(%rbp), %rax	# cmp, tmp123
	movq	%rax, PL_sort_RealCmp(%rip)	# tmp123, PL_sort_RealCmp
	.loc 1 1374 0
	cmpl	$0, -1724(%rbp)	#, flags
	je	.L168	#,
	.loc 1 1374 0 is_stmt 0 discriminator 1
	movl	$cmpindir_desc, %eax	#, iftmp.59
	jmp	.L169	#
.L168:
	.loc 1 1374 0 discriminator 2
	movl	$cmpindir, %eax	#, iftmp.59
.L169:
	.loc 1 1374 0 discriminator 3
	movq	-1712(%rbp), %rsi	# nmemb, tmp124
	movq	-1688(%rbp), %rcx	# indir, tmp125
	movq	%rax, %rdx	# iftmp.59,
	movq	%rcx, %rdi	# tmp125,
	call	S_qsortsvu	#
	.loc 1 1377 0 is_stmt 1 discriminator 3
	movq	-1688(%rbp), %r14	# indir, pp
	.loc 1 1378 0 discriminator 3
	movq	-1704(%rbp), %r13	# list1, q
	.loc 1 1379 0 discriminator 3
	movq	-1712(%rbp), %r12	# nmemb, n
	jmp	.L170	#
.L172:
	.loc 1 1387 0
	leaq	0(,%r12,8), %rax	#, D.12511
	addq	%r14, %rax	# pp, D.12512
	movq	(%rax), %rax	# *_54, D.12513
	movq	%rax, %rdx	# D.12513, D.12509
	movq	%r13, %rax	# q, q.60
	subq	%rax, %rdx	# q.60, D.12509
	movq	%rdx, %rax	# D.12509, D.12509
	sarq	$3, %rax	#, tmp126
	movq	%rax, %rbx	# D.12509, j
	.loc 1 1391 0
	cmpq	%rbx, %r12	# j, n
	je	.L170	#,
	.loc 1 1392 0
	leaq	0(,%rbx,8), %rax	#, D.12511
	addq	%r13, %rax	# q, D.12513
	movq	(%rax), %rax	# *_62, tmp127
	movq	%rax, -1664(%rbp)	# tmp127, tmp
.L171:
	.loc 1 1394 0 discriminator 1
	leaq	0(,%rbx,8), %rax	#, D.12511
	leaq	0(%r13,%rax), %rdx	#, D.12513
	leaq	0(,%rbx,8), %rax	#, D.12511
	addq	%r14, %rax	# pp, D.12512
	movq	(%rax), %rax	# *_67, D.12513
	movq	(%rax), %rax	# *_68, D.12514
	movq	%rax, (%rdx)	# D.12514, *_65
	.loc 1 1395 0 discriminator 1
	leaq	0(,%rbx,8), %rax	#, D.12511
	addq	%r14, %rax	# pp, D.12512
	movq	(%rax), %rax	# *_71, D.12513
	movq	%rax, %rdx	# D.12513, D.12509
	movq	%r13, %rax	# q, q.61
	subq	%rax, %rdx	# q.61, D.12509
	movq	%rdx, %rax	# D.12509, D.12509
	sarq	$3, %rax	#, tmp128
	movq	%rax, %r15	# D.12509, i
	.loc 1 1397 0 discriminator 1
	leaq	0(,%rbx,8), %rax	#, D.12511
	addq	%r14, %rax	# pp, D.12512
	leaq	0(,%rbx,8), %rdx	#, D.12511
	addq	%r13, %rdx	# q, D.12513
	movq	%rdx, (%rax)	# D.12513, *_79
	.loc 1 1398 0 discriminator 1
	movq	%r15, %rbx	# i, j
	cmpq	%r12, %rbx	# n, j
	jne	.L171	#,
	.loc 1 1409 0
	leaq	0(,%r12,8), %rax	#, D.12511
	leaq	0(%r13,%rax), %rdx	#, D.12513
	movq	-1664(%rbp), %rax	# tmp, tmp129
	movq	%rax, (%rdx)	# tmp129, *_84
.L170:
	.loc 1 1379 0 discriminator 1
	movq	%r12, %rax	# n, n.62
	leaq	-1(%rax), %r12	#, n
	testq	%rax, %rax	# n.62
	jne	.L172	#,
	.loc 1 1415 0
	leaq	-1648(%rbp), %rax	#, tmp130
	cmpq	%rax, -1688(%rbp)	# tmp130, indir
	je	.L173	#,
	.loc 1 1415 0 is_stmt 0 discriminator 1
	movq	-1688(%rbp), %rax	# indir, tmp131
	movq	%rax, %rdi	# tmp131,
	call	Perl_safesysfree	#
.L173:
	.loc 1 1417 0 is_stmt 1
	movq	-1672(%rbp), %rax	# savecmp, tmp132
	movq	%rax, PL_sort_RealCmp(%rip)	# tmp132, PL_sort_RealCmp
.LBE26:
	jmp	.L156	#
.L161:
	.loc 1 1418 0
	cmpl	$0, -1724(%rbp)	#, flags
	je	.L174	#,
.LBB27:
	.loc 1 1419 0
	movq	PL_sort_RealCmp(%rip), %rax	# PL_sort_RealCmp, tmp133
	movq	%rax, -1656(%rbp)	# tmp133, savecmp
	.loc 1 1420 0
	movq	-1720(%rbp), %rax	# cmp, tmp134
	movq	%rax, PL_sort_RealCmp(%rip)	# tmp134, PL_sort_RealCmp
	.loc 1 1421 0
	movq	$cmp_desc, -1720(%rbp)	#, cmp
	.loc 1 1422 0
	movq	-1720(%rbp), %rdx	# cmp, tmp135
	movq	-1712(%rbp), %rcx	# nmemb, tmp136
	movq	-1704(%rbp), %rax	# list1, tmp137
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	S_qsortsvu	#
	.loc 1 1424 0
	movq	-1656(%rbp), %rax	# savecmp, tmp138
	movq	%rax, PL_sort_RealCmp(%rip)	# tmp138, PL_sort_RealCmp
.LBE27:
	jmp	.L156	#
.L174:
	.loc 1 1426 0
	movq	-1720(%rbp), %rdx	# cmp, tmp139
	movq	-1712(%rbp), %rcx	# nmemb, tmp140
	movq	-1704(%rbp), %rax	# list1, tmp141
	movq	%rcx, %rsi	# tmp140,
	movq	%rax, %rdi	# tmp141,
	call	S_qsortsvu	#
.L156:
	.loc 1 1428 0
	addq	$1688, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	S_qsortsv, .-S_qsortsv
	.globl	Perl_sortsv
	.type	Perl_sortsv, @function
Perl_sortsv:
.LFB9:
	.loc 1 1446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# array, array
	movq	%rsi, -48(%rbp)	# nmemb, nmemb
	movq	%rdx, -56(%rbp)	# cmp, cmp
	.loc 1 1447 0
	movq	$S_mergesortsv, -16(%rbp)	#, sortsvp
	.loc 1 1457 0
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _5->sv_any, D.12517
	movq	56(%rax), %rax	# _6->xgv_gp, D.12518
	movq	(%rax), %rax	# _7->gp_sv, tmp72
	movq	%rax, -8(%rbp)	# tmp72, hintsv
	movq	-8(%rbp), %rax	# hintsv, tmp73
	movl	12(%rax), %eax	# hintsv_8->sv_flags, D.12519
	andl	$65536, %eax	#, D.12519
	testl	%eax, %eax	# D.12519
	je	.L176	#,
	.loc 1 1457 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hintsv, tmp74
	movl	12(%rax), %eax	# hintsv_8->sv_flags, D.12519
	andl	$65536, %eax	#, D.12519
	testl	%eax, %eax	# D.12519
	je	.L177	#,
	movq	-8(%rbp), %rax	# hintsv, tmp75
	movq	(%rax), %rax	# hintsv_8->sv_any, D.12520
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_13].xiv_iv, D.12521
	jmp	.L179	#
.L177:
	.loc 1 1457 0 discriminator 2
	movq	-8(%rbp), %rax	# hintsv, tmp76
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_2iv	#
	jmp	.L179	#
.L176:
	movl	$0, %eax	#, iftmp.63
.L179:
	.loc 1 1457 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.63, hints
	.loc 1 1458 0 is_stmt 1 discriminator 3
	movl	-20(%rbp), %eax	# hints, tmp77
	andl	$1, %eax	#, D.12522
	testl	%eax, %eax	# D.12522
	je	.L180	#,
	.loc 1 1459 0
	movq	$S_qsortsv, -16(%rbp)	#, sortsvp
	jmp	.L181	#
.L180:
	.loc 1 1463 0
	movq	$S_mergesortsv, -16(%rbp)	#, sortsvp
.L181:
	.loc 1 1466 0
	movq	-56(%rbp), %rdx	# cmp, tmp78
	movq	-48(%rbp), %rsi	# nmemb, tmp79
	movq	-40(%rbp), %rdi	# array, tmp80
	movq	-16(%rbp), %rax	# sortsvp, tmp81
	movl	$0, %ecx	#,
	call	*%rax	# tmp81
	.loc 1 1467 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_sortsv, .-Perl_sortsv
	.globl	S_sortsv_desc
	.type	S_sortsv_desc, @function
S_sortsv_desc:
.LFB10:
	.loc 1 1472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# array, array
	movq	%rsi, -48(%rbp)	# nmemb, nmemb
	movq	%rdx, -56(%rbp)	# cmp, cmp
	.loc 1 1473 0
	movq	$S_mergesortsv, -16(%rbp)	#, sortsvp
	.loc 1 1483 0
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	(%rax), %rax	# _5->sv_any, D.12524
	movq	56(%rax), %rax	# _6->xgv_gp, D.12525
	movq	(%rax), %rax	# _7->gp_sv, tmp72
	movq	%rax, -8(%rbp)	# tmp72, hintsv
	movq	-8(%rbp), %rax	# hintsv, tmp73
	movl	12(%rax), %eax	# hintsv_8->sv_flags, D.12526
	andl	$65536, %eax	#, D.12526
	testl	%eax, %eax	# D.12526
	je	.L183	#,
	.loc 1 1483 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hintsv, tmp74
	movl	12(%rax), %eax	# hintsv_8->sv_flags, D.12526
	andl	$65536, %eax	#, D.12526
	testl	%eax, %eax	# D.12526
	je	.L184	#,
	movq	-8(%rbp), %rax	# hintsv, tmp75
	movq	(%rax), %rax	# hintsv_8->sv_any, D.12527
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_13].xiv_iv, D.12528
	jmp	.L186	#
.L184:
	.loc 1 1483 0 discriminator 2
	movq	-8(%rbp), %rax	# hintsv, tmp76
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_2iv	#
	jmp	.L186	#
.L183:
	movl	$0, %eax	#, iftmp.65
.L186:
	.loc 1 1483 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.65, hints
	.loc 1 1484 0 is_stmt 1 discriminator 3
	movl	-20(%rbp), %eax	# hints, tmp77
	andl	$1, %eax	#, D.12529
	testl	%eax, %eax	# D.12529
	je	.L187	#,
	.loc 1 1485 0
	movq	$S_qsortsv, -16(%rbp)	#, sortsvp
	jmp	.L188	#
.L187:
	.loc 1 1489 0
	movq	$S_mergesortsv, -16(%rbp)	#, sortsvp
.L188:
	.loc 1 1492 0
	movq	-56(%rbp), %rdx	# cmp, tmp78
	movq	-48(%rbp), %rsi	# nmemb, tmp79
	movq	-40(%rbp), %rdi	# array, tmp80
	movq	-16(%rbp), %rax	# sortsvp, tmp81
	movl	$1, %ecx	#,
	call	*%rax	# tmp81
	.loc 1 1493 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	S_sortsv_desc, .-S_sortsv_desc
	.section	.rodata
.LC2:
	.string	"$$"
	.align 8
.LC3:
	.string	"Undefined sort subroutine \"%_\" called"
.LC4:
	.string	"Undefined subroutine in sort"
.LC5:
	.string	"a"
.LC6:
	.string	"b"
.LC7:
	.string	"panic: POPSTACK\n"
	.text
	.globl	Perl_pp_sort
	.type	Perl_pp_sort, @function
Perl_pp_sort:
.LFB11:
	.loc 1 1496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 1497 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.67
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.68
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.70
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.70, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.69_63, D.12531
	cltq
	salq	$3, %rax	#, D.12532
	leaq	(%rcx,%rax), %r15	#, mark
	movq	%r15, %rdx	# mark, mark.71
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.72
	subq	%rax, %rdx	# PL_stack_base.73, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	sarq	$3, %rax	#, tmp472
	movl	%eax, -240(%rbp)	# D.12533, origmark
	.loc 1 1498 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.74
	movl	-240(%rbp), %edx	# origmark, tmp473
	movslq	%edx, %rdx	# tmp473, D.12534
	addq	$1, %rdx	#, D.12534
	salq	$3, %rdx	#, D.12534
	leaq	(%rax,%rdx), %r14	#, p1
	.loc 1 1500 0
	movq	$0, -200(%rbp)	#, av
	.loc 1 1503 0
	movq	$0, -192(%rbp)	#, cv
	.loc 1 1504 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.76
	movzbl	36(%rax), %eax	# PL_op.76_82->op_flags, D.12535
	movzbl	%al, %eax	# D.12535, D.12531
	andl	$3, %eax	#, D.12531
	testl	%eax, %eax	# D.12531
	je	.L190	#,
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.77
	movzbl	36(%rax), %eax	# PL_op.77_86->op_flags, D.12535
	movzbl	%al, %eax	# D.12535, D.12531
	andl	$3, %eax	#, D.12531
	cmpl	$3, %eax	#, D.12531
	sete	%al	#, D.12536
	movzbl	%al, %eax	# D.12536, iftmp.75
	jmp	.L191	#
.L190:
	.loc 1 1504 0 discriminator 2
	call	Perl_dowantarray	#
.L191:
	.loc 1 1504 0 discriminator 3
	movl	%eax, -236(%rbp)	# iftmp.75, gimme
	.loc 1 1505 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.78
	movq	(%rax), %rax	# PL_op.78_94->op_next, tmp474
	movq	%rax, -152(%rbp)	# tmp474, nextop
	.loc 1 1506 0 discriminator 3
	movl	$0, -252(%rbp)	#, overloading
	.loc 1 1507 0 discriminator 3
	movb	$0, -256(%rbp)	#, hasargs
	.loc 1 1508 0 discriminator 3
	movl	$0, -248(%rbp)	#, is_xsub
	.loc 1 1509 0 discriminator 3
	movl	$0, -244(%rbp)	#, sorting_av
	.loc 1 1510 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.79
	movzbl	37(%rax), %eax	# PL_op.79_100->op_private, tmp475
	movb	%al, -255(%rbp)	# tmp475, priv
	.loc 1 1511 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.80
	movzbl	36(%rax), %eax	# PL_op.80_102->op_flags, tmp476
	movb	%al, -254(%rbp)	# tmp476, flags
	.loc 1 1512 0 discriminator 3
	movq	$Perl_sortsv, -184(%rbp)	#, sortsvp
	.loc 1 1515 0 discriminator 3
	cmpl	$1, -236(%rbp)	#, gimme
	je	.L192	#,
	.loc 1 1516 0
	movq	%r15, %rbx	# mark, sp
	.loc 1 1517 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_106
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.81
	movq	(%rax), %rax	# PL_op.81_107->op_next, D.12530
	jmp	.L277	#
.L192:
	.loc 1 1520 0
	call	Perl_push_scope	#
	.loc 1 1521 0
	movl	$PL_sortcop, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 1522 0
	movzbl	-254(%rbp), %eax	# flags, D.12531
	andl	$64, %eax	#, D.12531
	testl	%eax, %eax	# D.12531
	je	.L194	#,
	.loc 1 1523 0
	movzbl	-254(%rbp), %eax	# flags, flags.82
	testb	%al, %al	# flags.82
	jns	.L195	#,
.LBB28:
	.loc 1 1524 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.83
	movq	40(%rax), %rax	# MEM[(struct LISTOP *)PL_op.83_112].op_first, D.12530
	movq	8(%rax), %rax	# _113->op_sibling, tmp477
	movq	%rax, -144(%rbp)	# tmp477, kid
	.loc 1 1525 0
	movq	-144(%rbp), %rax	# kid, tmp478
	movq	40(%rax), %rax	# MEM[(struct UNOP *)kid_114].op_first, tmp479
	movq	%rax, -144(%rbp)	# tmp479, kid
	.loc 1 1526 0
	movq	-144(%rbp), %rax	# kid, tmp480
	movq	40(%rax), %rax	# MEM[(struct UNOP *)kid_115].op_first, tmp481
	movq	%rax, -144(%rbp)	# tmp481, kid
	.loc 1 1527 0
	movq	-144(%rbp), %rax	# kid, tmp482
	movq	(%rax), %rax	# kid_116->op_next, PL_sortcop.84
	movq	%rax, PL_sortcop(%rip)	# PL_sortcop.84, PL_sortcop
	.loc 1 1528 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.85
	movq	48(%rax), %rax	# PL_curcop.85_118->cop_stash, stash.86
	movq	%rax, -224(%rbp)	# stash.86, stash
.LBE28:
	jmp	.L207	#
.L195:
	.loc 1 1531 0
	addq	$8, %r15	#, mark
	movq	(%r15), %rax	# *mark_120, D.12537
	leaq	-216(%rbp), %rdx	#, tmp483
	leaq	-224(%rbp), %rsi	#, tmp484
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.12537,
	call	Perl_sv_2cv	#
	movq	%rax, -192(%rbp)	# tmp485, cv
	.loc 1 1532 0
	cmpq	$0, -192(%rbp)	#, cv
	je	.L197	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# cv, tmp486
	movl	12(%rax), %eax	# cv_122->sv_flags, D.12538
	andl	$262144, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	je	.L197	#,
.LBB29:
	.loc 1 1534 0 is_stmt 1
	movq	-192(%rbp), %rax	# cv, tmp487
	movl	12(%rax), %eax	# MEM[(struct SV *)cv_122].sv_flags, D.12538
	andl	$262144, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	je	.L198	#,
	.loc 1 1534 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# cv, tmp488
	movq	(%rax), %rax	# MEM[(struct SV *)cv_122].sv_any, D.12539
	movq	8(%rax), %rax	# MEM[(struct XPV *)_127].xpv_cur, n_a.88
	movq	%rax, -208(%rbp)	# n_a.88, n_a
	movq	-192(%rbp), %rax	# cv, tmp489
	movq	(%rax), %rax	# MEM[(struct SV *)cv_122].sv_any, D.12539
	movq	(%rax), %rax	# MEM[(struct XPV *)_129].xpv_pv, iftmp.87
	jmp	.L199	#
.L198:
	.loc 1 1534 0 discriminator 2
	leaq	-208(%rbp), %rcx	#, tmp490
	movq	-192(%rbp), %rax	# cv, tmp491
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp490,
	movq	%rax, %rdi	# tmp491,
	call	Perl_sv_2pv_flags	#
.L199:
	.loc 1 1534 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.87, proto
	.loc 1 1535 0 is_stmt 1 discriminator 3
	cmpq	$0, -136(%rbp)	#, proto
	je	.L197	#,
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# proto, tmp492
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp492,
	call	strcmp	#
	testl	%eax, %eax	# D.12531
	jne	.L197	#,
	.loc 1 1536 0 is_stmt 1
	movb	$1, -256(%rbp)	#, hasargs
.L197:
.LBE29:
	.loc 1 1539 0
	cmpq	$0, -192(%rbp)	#, cv
	je	.L201	#,
	.loc 1 1539 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# cv, tmp493
	movq	(%rax), %rax	# cv_122->sv_any, D.12540
	movq	72(%rax), %rax	# _135->xcv_root, D.12530
	testq	%rax, %rax	# D.12530
	jne	.L202	#,
.L201:
	.loc 1 1540 0 is_stmt 1
	cmpq	$0, -192(%rbp)	#, cv
	je	.L203	#,
	.loc 1 1540 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# cv, tmp494
	movq	(%rax), %rax	# cv_122->sv_any, D.12540
	movq	80(%rax), %rax	# _137->xcv_xsub, D.12541
	testq	%rax, %rax	# D.12541
	je	.L203	#,
	.loc 1 1541 0 is_stmt 1
	movl	$1, -248(%rbp)	#, is_xsub
	jmp	.L202	#
.L203:
	.loc 1 1543 0
	movq	-216(%rbp), %rax	# gv, gv.89
	testq	%rax, %rax	# gv.89
	je	.L204	#,
.LBB30:
	.loc 1 1544 0
	call	Perl_sv_newmortal	#
	movq	%rax, -128(%rbp)	# tmp495, tmpstr
	.loc 1 1545 0
	movq	-216(%rbp), %rsi	# gv, gv.90
	movq	-128(%rbp), %rax	# tmpstr, tmp496
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp496,
	call	Perl_gv_efullname4	#
	.loc 1 1546 0
	movq	-128(%rbp), %rax	# tmpstr, tmp497
	movq	%rax, %rsi	# tmp497,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L277	#
.L204:
.LBE30:
	.loc 1 1550 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L277	#
.L202:
	.loc 1 1554 0
	cmpl	$0, -248(%rbp)	#, is_xsub
	je	.L205	#,
	.loc 1 1555 0
	movq	-192(%rbp), %rax	# cv, tmp498
	movq	%rax, PL_sortcop(%rip)	# tmp498, PL_sortcop
	jmp	.L207	#
.L205:
	.loc 1 1557 0
	movq	-192(%rbp), %rax	# cv, tmp499
	movq	(%rax), %rax	# cv_122->sv_any, D.12540
	movq	64(%rax), %rax	# _145->xcv_start, PL_sortcop.91
	movq	%rax, PL_sortcop(%rip)	# PL_sortcop.91, PL_sortcop
	.loc 1 1558 0
	movq	-192(%rbp), %rax	# cv, tmp500
	movq	(%rax), %rax	# cv_122->sv_any, D.12540
	movq	72(%rax), %rax	# _147->xcv_root, D.12530
	addq	$16, %rax	#, D.12542
	movq	%rax, %rdi	# D.12542,
	call	Perl_save_vptr	#
	.loc 1 1559 0
	movq	-192(%rbp), %rax	# cv, tmp501
	movq	(%rax), %rax	# cv_122->sv_any, D.12540
	movq	72(%rax), %rax	# _150->xcv_root, D.12530
	movq	PL_ppaddr(%rip), %rdx	# PL_ppaddr, D.12543
	movq	%rdx, 16(%rax)	# D.12543, _151->op_ppaddr
.LBB31:
	.loc 1 1561 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.92
	leal	2(%rax), %edx	#, D.12531
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.93
	cmpl	%eax, %edx	# PL_savestack_max.93, D.12531
	jle	.L206	#,
	.loc 1 1561 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L206:
	.loc 1 1561 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.94
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.95
	leal	1(%rax), %edx	#, PL_savestack_ix.97
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.97, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.12532
	leaq	(%rcx,%rax), %rdx	#, D.12544
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.98
	movq	%rax, (%rdx)	# PL_comppad.98, _162->any_ptr
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.99
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.100
	leal	1(%rax), %edx	#, PL_savestack_ix.102
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.102, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.12532
	addq	%rcx, %rax	# PL_savestack.99, D.12544
	movl	$33, (%rax)	#, _170->any_i32
.LBE31:
	movq	-192(%rbp), %rax	# cv, tmp502
	movq	(%rax), %rax	# cv_122->sv_any, D.12540
	movq	120(%rax), %rax	# _172->xcv_padlist, D.12546
	movq	(%rax), %rax	# _173->sv_any, D.12547
	movq	(%rax), %rax	# _174->xav_array, D.12548
	movq	8(%rax), %rax	# MEM[(struct SV * *)_175 + 8B], PL_comppad.103
	movq	%rax, PL_comppad(%rip)	# PL_comppad.103, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.104
	movq	(%rax), %rax	# PL_comppad.104_177->sv_any, D.12547
	movq	(%rax), %rax	# _178->xav_array, PL_curpad.105
	movq	%rax, PL_curpad(%rip)	# PL_curpad.105, PL_curpad
	jmp	.L207	#
.L194:
	.loc 1 1566 0 is_stmt 1
	movq	$0, PL_sortcop(%rip)	#, PL_sortcop
	.loc 1 1567 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.106
	movq	48(%rax), %rax	# PL_curcop.106_180->cop_stash, stash.107
	movq	%rax, -224(%rbp)	# stash.107, stash
.L207:
	.loc 1 1573 0
	movzbl	-255(%rbp), %eax	# priv, D.12531
	andl	$8, %eax	#, D.12531
	testl	%eax, %eax	# D.12531
	je	.L208	#,
	.loc 1 1575 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.108
	subq	$4, %rax	#, PL_markstack_ptr.110
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.110, PL_markstack_ptr
	.loc 1 1576 0
	movq	(%rbx), %rax	# *sp_60, tmp503
	movq	%rax, -200(%rbp)	# tmp503, av
	.loc 1 1577 0
	movq	-200(%rbp), %rax	# av, tmp504
	movl	12(%rax), %eax	# MEM[(struct SV *)av_187].sv_flags, D.12538
	andl	$32768, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	je	.L209	#,
	.loc 1 1577 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# av, tmp505
	movq	%rax, %rdi	# tmp505,
	call	Perl_mg_size	#
	addl	$1, %eax	#, D.12549
	jmp	.L210	#
.L209:
	.loc 1 1577 0 discriminator 2
	movq	-200(%rbp), %rax	# av, tmp506
	movq	(%rax), %rax	# av_187->sv_any, D.12547
	movq	8(%rax), %rax	# _194->xav_fill, D.12533
	addl	$1, %eax	#, D.12549
.L210:
	.loc 1 1577 0 discriminator 3
	movl	%eax, %r13d	# iftmp.111, max
	.loc 1 1578 0 is_stmt 1 discriminator 3
	movq	-200(%rbp), %rax	# av, tmp507
	movl	12(%rax), %eax	# av_187->sv_flags, D.12538
	andl	$57344, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	je	.L211	#,
	.loc 1 1579 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.112
	movq	%rax, %rdx	# PL_stack_max.112, PL_stack_max.113
	movq	%rbx, %rax	# sp, sp.114
	subq	%rax, %rdx	# sp.114, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	sarq	$3, %rax	#, tmp508
	movq	%rax, %rdx	# tmp508, D.12533
	movslq	%r13d, %rax	# max, D.12533
	cmpq	%rax, %rdx	# D.12533, D.12533
	jge	.L212	#,
.LBB32:
	.loc 1 1579 0 is_stmt 0 discriminator 1
	movq	%r15, %rdx	# mark, mark.115
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.116
	subq	%rax, %rdx	# PL_stack_base.117, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	sarq	$3, %rax	#, tmp509
	movl	%eax, -232(%rbp)	# D.12533, markoff
	movl	%r13d, %edx	# max,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.118
	movl	-232(%rbp), %edx	# markoff, tmp510
	movslq	%edx, %rdx	# tmp510, D.12532
	salq	$3, %rdx	#, D.12532
	leaq	(%rax,%rdx), %r15	#, mark
.L212:
.LBE32:
	.loc 1 1580 0 is_stmt 1
	movq	%rbx, -264(%rbp)	# sp, %sfp
	.loc 1 1581 0
	movl	$0, %r12d	#, i
	jmp	.L213	#
.L216:
.LBB33:
	.loc 1 1582 0
	movq	-200(%rbp), %rax	# av, tmp511
	movl	$0, %edx	#,
	movl	%r12d, %esi	# i,
	movq	%rax, %rdi	# tmp511,
	call	Perl_av_fetch	#
	movq	%rax, -120(%rbp)	# tmp512, svp
	.loc 1 1583 0
	movq	%rbx, %rax	# sp, sp.119
	leaq	8(%rax), %rbx	#, sp
	cmpq	$0, -120(%rbp)	#, svp
	je	.L214	#,
	.loc 1 1583 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rdx	# svp, tmp513
	movq	(%rdx), %rdx	# *svp_221, iftmp.120
	jmp	.L215	#
.L214:
	.loc 1 1583 0 discriminator 2
	movl	$0, %edx	#, iftmp.120
.L215:
	.loc 1 1583 0 discriminator 3
	movq	%rdx, (%rax)	# iftmp.120, *sp.119_222
.LBE33:
	.loc 1 1581 0 is_stmt 1 discriminator 3
	addl	$1, %r12d	#, i
.L213:
	.loc 1 1581 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %r12d	# max, i
	jl	.L216	#,
	jmp	.L218	#
.L211:
	.loc 1 1587 0 is_stmt 1
	movq	-200(%rbp), %rax	# av, tmp514
	movq	(%rax), %rax	# av_187->sv_any, D.12547
	movq	(%rax), %rax	# _227->xav_array, p2
	movq	%rax, -264(%rbp)	# p2, %sfp
	movq	%rax, %r14	# p2, p1
	.loc 1 1588 0
	movl	$1, -244(%rbp)	#, sorting_av
	jmp	.L218	#
.L208:
	.loc 1 1592 0
	leaq	8(%r15), %rax	#, p2
	movq	%rax, -264(%rbp)	# p2, %sfp
	.loc 1 1593 0
	movq	%rbx, %rdx	# sp, sp.121
	movq	%r15, %rax	# mark, mark.122
	subq	%rax, %rdx	# mark.122, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	sarq	$3, %rax	#, tmp515
	movl	%eax, %r13d	# D.12533, max
.L218:
	.loc 1 1596 0
	movzbl	-255(%rbp), %eax	# priv, D.12531
	andl	$16, %eax	#, D.12531
	testl	%eax, %eax	# D.12531
	je	.L219	#,
	.loc 1 1597 0
	movq	$S_sortsv_desc, -184(%rbp)	#, sortsvp
.L219:
	.loc 1 1602 0
	movl	%r13d, %r12d	# max, i
	jmp	.L220	#
.L226:
	.loc 1 1603 0
	movq	-264(%rbp), %rax	# %sfp, p2.123
	leaq	8(%rax), %rsi	#, p2
	movq	%rsi, -264(%rbp)	# p2, %sfp
	movq	(%rax), %rax	# *p2.123_241, D.12537
	movq	%rax, (%r14)	# D.12537, *p1_13
	movq	(%r14), %rax	# *p1_13, D.12537
	testq	%rax, %rax	# D.12537
	je	.L221	#,
	.loc 1 1604 0
	movq	(%r14), %rax	# *p1_13, D.12537
	movq	(%r14), %rdx	# *p1_13, D.12537
	movl	12(%rdx), %edx	# _246->sv_flags, D.12538
	andb	$247, %dh	#, D.12538
	movl	%edx, 12(%rax)	# D.12538, _245->sv_flags
	.loc 1 1605 0
	movq	PL_sortcop(%rip), %rax	# PL_sortcop, PL_sortcop.124
	testq	%rax, %rax	# PL_sortcop.124
	jne	.L222	#,
	.loc 1 1605 0 is_stmt 0 discriminator 1
	movq	(%r14), %rax	# *p1_13, D.12537
	movl	12(%rax), %eax	# _250->sv_flags, D.12538
	andl	$262144, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	jne	.L222	#,
.LBB34:
	.loc 1 1607 0 is_stmt 1
	movq	(%r14), %rax	# *p1_13, D.12537
	movl	12(%rax), %eax	# _253->sv_flags, D.12538
	andl	$268435456, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	je	.L223	#,
	.loc 1 1608 0
	movl	$1, -252(%rbp)	#, overloading
	jmp	.L222	#
.L223:
	.loc 1 1610 0
	movq	(%r14), %rax	# *p1_13, D.12537
	leaq	-208(%rbp), %rcx	#, tmp516
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp516,
	movq	%rax, %rdi	# D.12537,
	call	Perl_sv_2pv_flags	#
.L222:
.LBE34:
	.loc 1 1612 0 discriminator 2
	addq	$8, %r14	#, p1
	jmp	.L225	#
.L221:
	.loc 1 1615 0
	subl	$1, %r13d	#, max
.L225:
	.loc 1 1602 0
	subl	$1, %r12d	#, i
.L220:
	.loc 1 1602 0 is_stmt 0 discriminator 1
	testl	%r12d, %r12d	# i
	jg	.L226	#,
	.loc 1 1617 0 is_stmt 1
	cmpl	$0, -244(%rbp)	#, sorting_av
	je	.L227	#,
	.loc 1 1618 0
	movq	-200(%rbp), %rax	# av, tmp517
	movq	(%rax), %rax	# av_24->sv_any, D.12547
	leal	-1(%r13), %edx	#, D.12531
	movslq	%edx, %rdx	# D.12531, D.12533
	movq	%rdx, 8(%rax)	# D.12533, _261->xav_fill
.L227:
	.loc 1 1620 0
	cmpl	$1, %r13d	#, max
	jle	.L228	#,
.LBB35:
	.loc 1 1622 0
	movq	PL_sortcop(%rip), %rax	# PL_sortcop, PL_sortcop.125
	testq	%rax, %rax	# PL_sortcop.125
	je	.L229	#,
.LBB36:
	.loc 1 1625 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.126
	movzbl	212(%rax), %eax	# PL_top_env.126_265->je_mustcatch, tmp518
	movb	%al, -253(%rbp)	# tmp518, oldcatch
	.loc 1 1627 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.127
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.127, PL_tmps_floor
	.loc 1 1628 0
	call	Perl_save_op	#
	.loc 1 1630 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.128
	movb	$1, 212(%rax)	#, PL_top_env.128_268->je_mustcatch
.LBB37:
	.loc 1 1631 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.129
	movq	40(%rax), %rax	# PL_curstackinfo.129_269->si_next, tmp519
	movq	%rax, -168(%rbp)	# tmp519, next
	cmpq	$0, -168(%rbp)	#, next
	jne	.L230	#,
	.loc 1 1631 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -168(%rbp)	# tmp520, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.130
	movq	-168(%rbp), %rax	# next, tmp521
	movq	%rdx, 32(%rax)	# PL_curstackinfo.130, next_271->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.131
	movq	-168(%rbp), %rdx	# next, tmp522
	movq	%rdx, 40(%rax)	# tmp522, PL_curstackinfo.131_273->si_next
.L230:
	.loc 1 1631 0 discriminator 2
	movq	-168(%rbp), %rax	# next, tmp523
	movl	$3, 24(%rax)	#, next_43->si_type
	movq	-168(%rbp), %rax	# next, tmp524
	movl	$-1, 16(%rax)	#, next_43->si_cxix
	movq	-168(%rbp), %rax	# next, tmp525
	movq	(%rax), %rax	# next_43->si_stack, D.12550
	movq	(%rax), %rax	# _274->sv_any, D.12547
	movq	$0, 8(%rax)	#, _275->xav_fill
.LBB38:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.132
	movq	(%rax), %rax	# PL_curstack.132_276->sv_any, D.12547
	movq	%rbx, %rcx	# sp, sp.133
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.134
	subq	%rdx, %rcx	# PL_stack_base.135, D.12533
	movq	%rcx, %rdx	# D.12533, D.12533
	sarq	$3, %rdx	#, tmp526
	movq	%rdx, 8(%rax)	# D.12533, _277->xav_fill
	movq	-168(%rbp), %rax	# next, tmp527
	movq	(%rax), %rax	# next_43->si_stack, D.12550
	movq	(%rax), %rax	# _283->sv_any, D.12547
	movq	(%rax), %rax	# _284->xav_array, PL_stack_base.136
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.136, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.137
	movq	-168(%rbp), %rax	# next, tmp528
	movq	(%rax), %rax	# next_43->si_stack, D.12550
	movq	(%rax), %rax	# _287->sv_any, D.12547
	movq	16(%rax), %rax	# _288->xav_max, D.12533
	salq	$3, %rax	#, D.12532
	addq	%rdx, %rax	# PL_stack_base.137, PL_stack_max.138
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.138, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.139
	movq	-168(%rbp), %rax	# next, tmp529
	movq	(%rax), %rax	# next_43->si_stack, D.12550
	movq	(%rax), %rax	# _294->sv_any, D.12547
	movq	8(%rax), %rax	# _295->xav_fill, D.12533
	salq	$3, %rax	#, D.12532
	addq	%rdx, %rax	# PL_stack_base.139, PL_stack_sp.140
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.140, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-168(%rbp), %rax	# next, tmp530
	movq	(%rax), %rax	# next_43->si_stack, PL_curstack.141
	movq	%rax, PL_curstack(%rip)	# PL_curstack.141, PL_curstack
.LBE38:
	movq	-168(%rbp), %rax	# next, tmp531
	movq	%rax, PL_curstackinfo(%rip)	# tmp531, PL_curstackinfo
.LBE37:
	.loc 1 1632 0 is_stmt 1 discriminator 2
	cmpb	$0, -256(%rbp)	#, hasargs
	jne	.L231	#,
	.loc 1 1632 0 is_stmt 0 discriminator 1
	cmpl	$0, -248(%rbp)	#, is_xsub
	jne	.L231	#,
	.loc 1 1633 0 is_stmt 1
	movq	PL_sortstash(%rip), %rdx	# PL_sortstash, PL_sortstash.142
	movq	-224(%rbp), %rax	# stash, stash.143
	cmpq	%rax, %rdx	# stash.143, PL_sortstash.142
	jne	.L232	#,
	.loc 1 1633 0 is_stmt 0 discriminator 1
	movq	PL_firstgv(%rip), %rax	# PL_firstgv, PL_firstgv.144
	testq	%rax, %rax	# PL_firstgv.144
	je	.L232	#,
	movq	PL_secondgv(%rip), %rax	# PL_secondgv, PL_secondgv.145
	testq	%rax, %rax	# PL_secondgv.145
	jne	.L233	#,
.L232:
	.loc 1 1634 0 is_stmt 1
	movl	$PL_firstgv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 1635 0
	movl	$PL_secondgv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 1636 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_firstgv(%rip)	# PL_firstgv.146, PL_firstgv
	.loc 1 1637 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, PL_secondgv(%rip)	# PL_secondgv.147, PL_secondgv
	.loc 1 1638 0
	movq	-224(%rbp), %rax	# stash, stash.148
	movq	%rax, PL_sortstash(%rip)	# stash.148, PL_sortstash
.L233:
	.loc 1 1644 0
	movq	PL_firstgv(%rip), %rax	# PL_firstgv, PL_firstgv.149
	movq	(%rax), %rax	# PL_firstgv.149_310->sv_any, D.12551
	movq	56(%rax), %rax	# _311->xgv_gp, D.12552
	movq	%rax, %rdi	# D.12553,
	call	Perl_save_sptr	#
	.loc 1 1645 0
	movq	PL_secondgv(%rip), %rax	# PL_secondgv, PL_secondgv.150
	movq	(%rax), %rax	# PL_secondgv.150_314->sv_any, D.12551
	movq	56(%rax), %rax	# _315->xgv_gp, D.12552
	movq	%rax, %rdi	# D.12553,
	call	Perl_save_sptr	#
.L231:
	.loc 1 1648 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.152
	movl	16(%rax), %edx	# PL_curstackinfo.152_318->si_cxix, D.12531
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.153
	movl	20(%rax), %eax	# PL_curstackinfo.153_320->si_cxmax, D.12531
	cmpl	%eax, %edx	# D.12531, D.12531
	jge	.L234	#,
	.loc 1 1648 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.154
	movl	16(%rax), %edx	# PL_curstackinfo.154_322->si_cxix, D.12531
	addl	$1, %edx	#, D.12531
	movl	%edx, 16(%rax)	# D.12531, PL_curstackinfo.154_322->si_cxix
	jmp	.L235	#
.L234:
	.loc 1 1648 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.155
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.12531, PL_curstackinfo.155_326->si_cxix
.L235:
	.loc 1 1648 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.156
	movq	8(%rax), %rcx	# PL_curstackinfo.156_329->si_cxstack, D.12554
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.157
	movl	16(%rax), %eax	# PL_curstackinfo.157_331->si_cxix, D.12531
	movslq	%eax, %rdx	# D.12531, D.12532
	movq	%rdx, %rax	# D.12532, tmp532
	salq	$3, %rax	#, tmp532
	addq	%rdx, %rax	# D.12532, tmp532
	salq	$4, %rax	#, tmp533
	addq	%rcx, %rax	# D.12554, tmp534
	movq	%rax, -112(%rbp)	# tmp534, cx
	movq	-112(%rbp), %rax	# cx, tmp535
	movl	$0, (%rax)	#, cx_335->cx_type
	movq	-112(%rbp), %rax	# cx, tmp536
	movl	$0, 8(%rax)	#, cx_335->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.158
	movq	-112(%rbp), %rax	# cx, tmp537
	movq	%rdx, 16(%rax)	# PL_curcop.158, cx_335->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.159
	movq	%rax, %rdx	# PL_markstack_ptr.159, PL_markstack_ptr.160
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.161
	subq	%rax, %rdx	# PL_markstack.162, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	sarq	$2, %rax	#, tmp538
	movl	%eax, %edx	# D.12533, D.12531
	movq	-112(%rbp), %rax	# cx, tmp539
	movl	%edx, 28(%rax)	# D.12531, cx_335->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.163
	movq	-112(%rbp), %rax	# cx, tmp540
	movl	%edx, 32(%rax)	# PL_scopestack_ix.163, cx_335->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %edx	# PL_retstack_ix, PL_retstack_ix.164
	movq	-112(%rbp), %rax	# cx, tmp541
	movl	%edx, 24(%rax)	# PL_retstack_ix.164, cx_335->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rdx	# PL_curpm, PL_curpm.165
	movq	-112(%rbp), %rax	# cx, tmp542
	movq	%rdx, 40(%rax)	# PL_curpm.165, cx_335->cx_u.cx_blk.blku_oldpm
	movl	-236(%rbp), %eax	# gimme, tmp543
	movl	%eax, %edx	# tmp543, D.12535
	movq	-112(%rbp), %rax	# cx, tmp544
	movb	%dl, 48(%rax)	# D.12535, cx_335->cx_u.cx_blk.blku_gimme
	.loc 1 1649 0 is_stmt 1 discriminator 3
	movzbl	-254(%rbp), %eax	# flags, flags.166
	testb	%al, %al	# flags.166
	js	.L236	#,
	.loc 1 1650 0
	movq	-112(%rbp), %rax	# cx, tmp545
	movl	$1, (%rax)	#, cx_335->cx_type
	.loc 1 1651 0
	movq	-112(%rbp), %rax	# cx, tmp546
	movb	$0, 48(%rax)	#, cx_335->cx_u.cx_blk.blku_gimme
	.loc 1 1652 0
	movq	-112(%rbp), %rax	# cx, tmp547
	movq	-192(%rbp), %rdx	# cv, tmp548
	movq	%rdx, 56(%rax)	# tmp548, cx_335->cx_u.cx_blk.blk_u.blku_sub.cv
	movq	-192(%rbp), %rax	# cv, tmp549
	movq	(%rax), %rax	# cv_26->sv_any, D.12540
	movq	112(%rax), %rdx	# _349->xcv_depth, D.12533
	movq	-112(%rbp), %rax	# cx, tmp550
	movq	%rdx, 96(%rax)	# D.12533, cx_335->cx_u.cx_blk.blk_u.blku_sub.olddepth
	movzbl	-256(%rbp), %edx	# hasargs, hasargs.167
	movq	-112(%rbp), %rax	# cx, tmp551
	movb	%dl, 104(%rax)	# hasargs.167, cx_335->cx_u.cx_blk.blk_u.blku_sub.hasargs
	movq	-192(%rbp), %rax	# cv, tmp552
	movq	(%rax), %rax	# cv_26->sv_any, D.12540
	movq	112(%rax), %rax	# _352->xcv_depth, D.12533
	testq	%rax, %rax	# D.12533
	jne	.L237	#,
	.loc 1 1652 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# cv, tmp553
	movq	%rax, PL_Sv(%rip)	# tmp553, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.169
	testq	%rax, %rax	# PL_Sv.169
	je	.L239	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.170
	movl	8(%rax), %edx	# PL_Sv.170_355->sv_refcnt, D.12538
	addl	$1, %edx	#, D.12538
	movl	%edx, 8(%rax)	# D.12538, PL_Sv.170_355->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.170_355->sv_refcnt, D.12538
	testl	%eax, %eax	# D.12538
	je	.L239	#,
	.loc 1 1652 0
	nop
.L239:
	.loc 1 1652 0 discriminator 4
	movq	-192(%rbp), %rax	# cv, tmp554
	movq	%rax, PL_Sv(%rip)	# tmp554, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.172
	testq	%rax, %rax	# PL_Sv.172
	je	.L241	#,
	.loc 1 1652 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.173
	movl	8(%rax), %edx	# PL_Sv.173_362->sv_refcnt, D.12538
	addl	$1, %edx	#, D.12538
	movl	%edx, 8(%rax)	# D.12538, PL_Sv.173_362->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.173_362->sv_refcnt, D.12538
	testl	%eax, %eax	# D.12538
	je	.L241	#,
	.loc 1 1652 0
	nop
.L241:
	.loc 1 1652 0 discriminator 4
	movq	-192(%rbp), %rax	# cv, tmp555
	movq	%rax, %rdi	# tmp555,
	call	Perl_save_freesv	#
.L237:
	.loc 1 1652 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.174
	movzbl	37(%rax), %eax	# PL_op.174_368->op_private, D.12535
	andl	$-124, %eax	#, D.12535
	movl	%eax, %edx	# D.12535, D.12535
	movq	-112(%rbp), %rax	# cx, tmp556
	movb	%dl, 105(%rax)	# D.12535, cx_335->cx_u.cx_blk.blk_u.blku_sub.lval
.L236:
	.loc 1 1654 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.175
	movl	16(%rax), %eax	# PL_curstackinfo.175_371->si_cxix, PL_sortcxix.176
	movl	%eax, PL_sortcxix(%rip)	# PL_sortcxix.176, PL_sortcxix
	.loc 1 1656 0
	cmpb	$0, -256(%rbp)	#, hasargs
	je	.L242	#,
	.loc 1 1656 0 is_stmt 0 discriminator 1
	cmpl	$0, -248(%rbp)	#, is_xsub
	jne	.L242	#,
.LBB39:
	.loc 1 1658 0 is_stmt 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.177
	movq	(%rax), %rax	# *PL_curpad.177_373, tmp557
	movq	%rax, -104(%rbp)	# tmp557, av
	.loc 1 1661 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.178
	movq	(%rax), %rax	# PL_defgv.178_375->sv_any, D.12551
	movq	56(%rax), %rax	# _376->xgv_gp, D.12552
	movq	32(%rax), %rdx	# _377->gp_av, D.12550
	movq	-112(%rbp), %rax	# cx, tmp558
	movq	%rdx, 80(%rax)	# D.12550, cx_335->cx_u.cx_blk.blk_u.blku_sub.savearray
	.loc 1 1662 0
	movq	-104(%rbp), %rax	# av, tmp559
	movq	%rax, PL_Sv(%rip)	# tmp559, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.180
	testq	%rax, %rax	# PL_Sv.180
	je	.L244	#,
	.loc 1 1662 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.181
	movl	8(%rax), %edx	# PL_Sv.181_380->sv_refcnt, D.12538
	addl	$1, %edx	#, D.12538
	movl	%edx, 8(%rax)	# D.12538, PL_Sv.181_380->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.181_380->sv_refcnt, D.12538
	testl	%eax, %eax	# D.12538
	je	.L244	#,
	.loc 1 1662 0
	nop
.L244:
	.loc 1 1662 0 discriminator 4
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.182
	movq	(%rax), %rax	# PL_defgv.182_386->sv_any, D.12551
	movq	56(%rax), %rax	# _387->xgv_gp, D.12552
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.183
	movq	%rdx, 32(%rax)	# PL_Sv.183, _388->gp_av
	.loc 1 1664 0 is_stmt 1 discriminator 4
	movq	PL_comppad(%rip), %rdx	# PL_comppad, PL_comppad.184
	movq	-112(%rbp), %rax	# cx, tmp560
	movq	%rdx, 112(%rax)	# PL_comppad.184, cx_335->cx_u.cx_blk.blk_u.blku_sub.oldcomppad
	.loc 1 1665 0 discriminator 4
	movq	-112(%rbp), %rax	# cx, tmp561
	movq	-104(%rbp), %rdx	# av, tmp562
	movq	%rdx, 88(%rax)	# tmp562, cx_335->cx_u.cx_blk.blk_u.blku_sub.argarray
.L242:
.LBE39:
	.loc 1 1668 0
	movslq	%r13d, %rax	# max, D.12532
	salq	$3, %rax	#, D.12532
	negq	%rax	# D.12534
	addq	%r14, %rax	# p1, tmp563
	movq	%rax, -176(%rbp)	# tmp563, start
	.loc 1 1669 0
	cmpl	$0, -248(%rbp)	#, is_xsub
	jne	.L245	#,
	.loc 1 1670 0
	cmpb	$0, -256(%rbp)	#, hasargs
	je	.L246	#,
	.loc 1 1670 0 is_stmt 0 discriminator 1
	movl	$sortcv_stacked, %eax	#, iftmp.186
	jmp	.L248	#
.L246:
	.loc 1 1670 0 discriminator 2
	movl	$sortcv, %eax	#, iftmp.186
	jmp	.L248	#
.L245:
	.loc 1 1669 0 is_stmt 1 discriminator 1
	movl	$sortcv_xsub, %eax	#, iftmp.185
.L248:
	.loc 1 1669 0 is_stmt 0 discriminator 2
	movslq	%r13d, %rsi	# max, D.12532
	movq	-176(%rbp), %rdi	# start, tmp564
	movq	-184(%rbp), %rcx	# sortsvp, tmp565
	movq	%rax, %rdx	# iftmp.185,
	call	*%rcx	# tmp565
	.loc 1 1672 0 is_stmt 1 discriminator 2
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.187
	movq	8(%rax), %rsi	# PL_curstackinfo.187_400->si_cxstack, D.12554
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.188
	movl	16(%rax), %edx	# PL_curstackinfo.188_402->si_cxix, D.12531
	leal	-1(%rdx), %ecx	#, D.12531
	movl	%ecx, 16(%rax)	# D.12531, PL_curstackinfo.188_402->si_cxix
	movslq	%edx, %rdx	# D.12531, D.12532
	movq	%rdx, %rax	# D.12532, tmp566
	salq	$3, %rax	#, tmp566
	addq	%rdx, %rax	# D.12532, tmp566
	salq	$4, %rax	#, tmp567
	addq	%rsi, %rax	# D.12554, tmp568
	movq	%rax, -112(%rbp)	# tmp568, cx
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.189
	movq	-112(%rbp), %rax	# cx, tmp569
	movl	8(%rax), %eax	# cx_408->cx_u.cx_blk.blku_oldsp, D.12531
	cltq
	salq	$3, %rax	#, D.12532
	addq	%rdx, %rax	# PL_stack_base.189, tmp570
	movq	%rax, -96(%rbp)	# tmp570, newsp
	movq	-112(%rbp), %rax	# cx, tmp571
	movq	16(%rax), %rax	# cx_408->cx_u.cx_blk.blku_oldcop, PL_curcop.190
	movq	%rax, PL_curcop(%rip)	# PL_curcop.190, PL_curcop
	movq	PL_markstack(%rip), %rdx	# PL_markstack, PL_markstack.191
	movq	-112(%rbp), %rax	# cx, tmp572
	movl	28(%rax), %eax	# cx_408->cx_u.cx_blk.blku_oldmarksp, D.12531
	cltq
	salq	$2, %rax	#, D.12532
	addq	%rdx, %rax	# PL_markstack.191, PL_markstack_ptr.192
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.192, PL_markstack_ptr
	movq	-112(%rbp), %rax	# cx, tmp573
	movl	32(%rax), %eax	# cx_408->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.193
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.193, PL_scopestack_ix
	movq	-112(%rbp), %rax	# cx, tmp574
	movl	24(%rax), %eax	# cx_408->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.194
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.194, PL_retstack_ix
	movq	-112(%rbp), %rax	# cx, tmp575
	movq	40(%rax), %rax	# cx_408->cx_u.cx_blk.blku_oldpm, PL_curpm.195
	movq	%rax, PL_curpm(%rip)	# PL_curpm.195, PL_curpm
	movq	-112(%rbp), %rax	# cx, tmp576
	movzbl	48(%rax), %eax	# cx_408->cx_u.cx_blk.blku_gimme, D.12535
	movzbl	%al, %eax	# D.12535, tmp577
	movl	%eax, -236(%rbp)	# tmp577, gimme
	.loc 1 1673 0 discriminator 2
	movq	-96(%rbp), %rax	# newsp, tmp578
	movq	%rax, PL_stack_sp(%rip)	# tmp578, PL_stack_sp
.LBB40:
	.loc 1 1674 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.196
	movq	32(%rax), %rax	# PL_curstackinfo.196_426->si_prev, tmp579
	movq	%rax, -88(%rbp)	# tmp579, prev
	cmpq	$0, -88(%rbp)	#, prev
	jne	.L249	#,
	.loc 1 1674 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.198
	testq	%rax, %rax	# PL_stderrgv.198
	je	.L250	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.199
	movl	12(%rax), %eax	# PL_stderrgv.199_429->sv_flags, D.12538
	movzbl	%al, %eax	# D.12538, D.12538
	cmpl	$13, %eax	#, D.12538
	jne	.L250	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.200
	movq	(%rax), %rax	# PL_stderrgv.200_432->sv_any, D.12551
	movq	56(%rax), %rax	# _433->xgv_gp, D.12552
	movq	16(%rax), %rax	# _434->gp_io, D.12555
	testq	%rax, %rax	# D.12555
	je	.L250	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.201
	movq	(%rax), %rax	# PL_stderrgv.201_436->sv_any, D.12551
	movq	56(%rax), %rax	# _437->xgv_gp, D.12552
	movq	16(%rax), %rax	# _438->gp_io, D.12555
	movq	(%rax), %rax	# _439->sv_any, D.12556
	movq	64(%rax), %rax	# _440->xio_ofp, D.12557
	testq	%rax, %rax	# D.12557
	je	.L250	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.202
	movq	(%rax), %rax	# PL_stderrgv.202_442->sv_any, D.12551
	movq	56(%rax), %rax	# _443->xgv_gp, D.12552
	movq	16(%rax), %rax	# _444->gp_io, D.12555
	movq	(%rax), %rax	# _445->sv_any, D.12556
	movq	64(%rax), %rax	# _446->xio_ofp, iftmp.197
	jmp	.L251	#
.L250:
	.loc 1 1674 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L251:
	.loc 1 1674 0 discriminator 3
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# iftmp.197,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L249:
.LBB41:
	.loc 1 1674 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.203
	movq	(%rax), %rax	# PL_curstack.203_449->sv_any, D.12547
	movq	%rbx, %rcx	# sp, sp.204
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.205
	subq	%rdx, %rcx	# PL_stack_base.206, D.12533
	movq	%rcx, %rdx	# D.12533, D.12533
	sarq	$3, %rdx	#, tmp580
	movq	%rdx, 8(%rax)	# D.12533, _450->xav_fill
	movq	-88(%rbp), %rax	# prev, tmp581
	movq	(%rax), %rax	# prev_427->si_stack, D.12550
	movq	(%rax), %rax	# _456->sv_any, D.12547
	movq	(%rax), %rax	# _457->xav_array, PL_stack_base.207
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.207, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.208
	movq	-88(%rbp), %rax	# prev, tmp582
	movq	(%rax), %rax	# prev_427->si_stack, D.12550
	movq	(%rax), %rax	# _460->sv_any, D.12547
	movq	16(%rax), %rax	# _461->xav_max, D.12533
	salq	$3, %rax	#, D.12532
	addq	%rdx, %rax	# PL_stack_base.208, PL_stack_max.209
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.209, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.210
	movq	-88(%rbp), %rax	# prev, tmp583
	movq	(%rax), %rax	# prev_427->si_stack, D.12550
	movq	(%rax), %rax	# _467->sv_any, D.12547
	movq	8(%rax), %rax	# _468->xav_fill, D.12533
	salq	$3, %rax	#, D.12532
	addq	%rdx, %rax	# PL_stack_base.210, PL_stack_sp.211
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.211, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-88(%rbp), %rax	# prev, tmp584
	movq	(%rax), %rax	# prev_427->si_stack, PL_curstack.212
	movq	%rax, PL_curstack(%rip)	# PL_curstack.212, PL_curstack
.LBE41:
	movq	-88(%rbp), %rax	# prev, tmp585
	movq	%rax, PL_curstackinfo(%rip)	# tmp585, PL_curstackinfo
.LBE40:
	.loc 1 1675 0 is_stmt 1 discriminator 2
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.213
	movzbl	-253(%rbp), %edx	# oldcatch, tmp586
	movb	%dl, 212(%rax)	# tmp586, PL_top_env.213_477->je_mustcatch
.LBE36:
	jmp	.L252	#
.L229:
	.loc 1 1678 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.214
	movq	%rax, %rdx	# PL_stack_max.214, PL_stack_max.215
	movq	%rbx, %rax	# sp, sp.216
	subq	%rax, %rdx	# sp.216, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	cmpq	$159, %rax	#, D.12533
	jg	.L253	#,
.LBB42:
	.loc 1 1678 0 is_stmt 0 discriminator 1
	movq	%r15, %rdx	# mark, mark.217
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.218
	subq	%rax, %rdx	# PL_stack_base.219, D.12533
	movq	%rdx, %rax	# D.12533, D.12533
	sarq	$3, %rax	#, tmp587
	movl	%eax, -228(%rbp)	# D.12533, markoff
	movl	$20, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.220
	movl	-228(%rbp), %edx	# markoff, tmp588
	movslq	%edx, %rdx	# tmp588, D.12532
	salq	$3, %rdx	#, D.12532
	leaq	(%rax,%rdx), %r15	#, mark
.L253:
.LBE42:
	.loc 1 1679 0 is_stmt 1
	cmpl	$0, -244(%rbp)	#, sorting_av
	je	.L254	#,
	.loc 1 1679 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# av, tmp589
	movq	(%rax), %rax	# av_24->sv_any, D.12547
	movq	(%rax), %rax	# _493->xav_array, iftmp.221
	jmp	.L255	#
.L254:
	.loc 1 1679 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.222
	movl	-240(%rbp), %edx	# origmark, tmp590
	movslq	%edx, %rdx	# tmp590, D.12534
	addq	$1, %rdx	#, D.12534
	salq	$3, %rdx	#, D.12534
	addq	%rdx, %rax	# D.12534, iftmp.221
.L255:
	.loc 1 1679 0 discriminator 3
	movq	%rax, -176(%rbp)	# iftmp.221, start
	.loc 1 1681 0 is_stmt 1 discriminator 3
	movzbl	-255(%rbp), %eax	# priv, D.12531
	andl	$1, %eax	#, D.12531
	.loc 1 1680 0 discriminator 3
	testl	%eax, %eax	# D.12531
	je	.L256	#,
	.loc 1 1682 0
	movzbl	-255(%rbp), %eax	# priv, D.12531
	andl	$2, %eax	#, D.12531
	.loc 1 1684 0
	testl	%eax, %eax	# D.12531
	je	.L257	#,
	.loc 1 1683 0
	cmpl	$0, -252(%rbp)	#, overloading
	je	.L258	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	movl	$amagic_i_ncmp, %eax	#, iftmp.225
	jmp	.L263	#
.L258:
	.loc 1 1683 0 discriminator 2
	movl	$sv_i_ncmp, %eax	#, iftmp.225
	jmp	.L263	#
.L257:
	.loc 1 1684 0 is_stmt 1 discriminator 1
	cmpl	$0, -252(%rbp)	#, overloading
	je	.L261	#,
	movl	$amagic_ncmp, %eax	#, iftmp.226
	jmp	.L263	#
.L261:
	.loc 1 1684 0 is_stmt 0 discriminator 2
	movl	$sv_ncmp, %eax	#, iftmp.226
	jmp	.L263	#
.L256:
	.loc 1 1689 0 is_stmt 1
	cmpl	$0, -252(%rbp)	#, overloading
	je	.L264	#,
	.loc 1 1689 0 is_stmt 0 discriminator 1
	movl	$amagic_cmp, %eax	#, iftmp.227
	jmp	.L263	#
.L264:
	.loc 1 1689 0 discriminator 2
	movl	$Perl_sv_cmp, %eax	#, iftmp.227
.L263:
	.loc 1 1680 0 is_stmt 1 discriminator 1
	movslq	%r13d, %rsi	# max, D.12532
	movq	-176(%rbp), %rdi	# start, tmp591
	movq	-184(%rbp), %rcx	# sortsvp, tmp592
	movq	%rax, %rdx	# iftmp.223,
	call	*%rcx	# tmp592
.L252:
	.loc 1 1691 0
	movzbl	-255(%rbp), %eax	# priv, D.12531
	andl	$4, %eax	#, D.12531
	testl	%eax, %eax	# D.12531
	je	.L228	#,
.LBB43:
	.loc 1 1692 0
	movslq	%r13d, %rax	# max, D.12532
	salq	$3, %rax	#, D.12532
	leaq	-8(%rax), %rdx	#, D.12534
	movq	-176(%rbp), %rax	# start, tmp596
	addq	%rdx, %rax	# D.12534, tmp595
	movq	%rax, -160(%rbp)	# tmp595, q
	.loc 1 1693 0
	jmp	.L266	#
.L267:
.LBB44:
	.loc 1 1694 0
	movq	-176(%rbp), %rax	# start, tmp597
	movq	(%rax), %rax	# *start_42, tmp598
	movq	%rax, -80(%rbp)	# tmp598, tmp
	.loc 1 1695 0
	movq	-176(%rbp), %rax	# start, start.228
	leaq	8(%rax), %rdx	#, tmp599
	movq	%rdx, -176(%rbp)	# tmp599, start
	movq	-160(%rbp), %rdx	# q, tmp600
	movq	(%rdx), %rdx	# *q_44, D.12537
	movq	%rdx, (%rax)	# D.12537, *start.228_523
	.loc 1 1696 0
	movq	-160(%rbp), %rax	# q, q.229
	leaq	-8(%rax), %rdx	#, tmp601
	movq	%rdx, -160(%rbp)	# tmp601, q
	movq	-80(%rbp), %rdx	# tmp, tmp602
	movq	%rdx, (%rax)	# tmp602, *q.229_526
.L266:
.LBE44:
	.loc 1 1693 0 discriminator 1
	movq	-176(%rbp), %rax	# start, tmp603
	cmpq	-160(%rbp), %rax	# q, tmp603
	jb	.L267	#,
.L228:
.LBE43:
.LBE35:
	.loc 1 1700 0
	cmpq	$0, -200(%rbp)	#, av
	je	.L268	#,
	.loc 1 1700 0 is_stmt 0 discriminator 1
	cmpl	$0, -244(%rbp)	#, sorting_av
	jne	.L268	#,
.LBB45:
	.loc 1 1704 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.230
	movl	-240(%rbp), %edx	# origmark, tmp604
	movslq	%edx, %rdx	# tmp604, D.12534
	addq	$1, %rdx	#, D.12534
	salq	$3, %rdx	#, D.12534
	addq	%rdx, %rax	# D.12534, tmp605
	movq	%rax, -72(%rbp)	# tmp605, base
	movl	$0, %r12d	#, i
	jmp	.L269	#
.L270:
	.loc 1 1705 0 discriminator 2
	movslq	%r12d, %rax	# i, D.12532
	leaq	0(,%rax,8), %rdx	#, D.12532
	movq	-72(%rbp), %rax	# base, tmp606
	addq	%rdx, %rax	# D.12532, D.12553
	movq	(%rax), %rax	# *_536, D.12537
	movq	%rax, %rdi	# D.12537,
	call	Perl_newSVsv	#
	movq	%rax, -64(%rbp)	# tmp607, sv
	.loc 1 1706 0 discriminator 2
	movslq	%r12d, %rax	# i, D.12532
	leaq	0(,%rax,8), %rdx	#, D.12532
	movq	-72(%rbp), %rax	# base, tmp608
	addq	%rax, %rdx	# tmp608, D.12553
	movq	-64(%rbp), %rax	# sv, tmp609
	movq	%rax, (%rdx)	# tmp609, *_541
	.loc 1 1704 0 discriminator 2
	addl	$1, %r12d	#, i
.L269:
	.loc 1 1704 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %r12d	# max, i
	jl	.L270	#,
	.loc 1 1708 0 is_stmt 1
	movq	-200(%rbp), %rax	# av, tmp610
	movq	%rax, %rdi	# tmp610,
	call	Perl_av_clear	#
	.loc 1 1709 0
	movq	-200(%rbp), %rax	# av, tmp611
	movl	%r13d, %esi	# max,
	movq	%rax, %rdi	# tmp611,
	call	Perl_av_extend	#
	.loc 1 1710 0
	movl	$0, %r12d	#, i
	jmp	.L271	#
.L274:
	.loc 1 1711 0
	movslq	%r12d, %rax	# i, D.12532
	leaq	0(,%rax,8), %rdx	#, D.12532
	movq	-72(%rbp), %rax	# base, tmp612
	addq	%rdx, %rax	# D.12532, D.12553
	movq	(%rax), %rax	# *_546, tmp613
	movq	%rax, -64(%rbp)	# tmp613, sv
	.loc 1 1712 0
	movq	-64(%rbp), %rdx	# sv, tmp614
	movq	-200(%rbp), %rax	# av, tmp615
	movl	%r12d, %esi	# i,
	movq	%rax, %rdi	# tmp615,
	call	Perl_av_store	#
	movq	%rax, -56(%rbp)	# tmp616, didstore
	.loc 1 1713 0
	movq	-64(%rbp), %rax	# sv, tmp617
	movl	12(%rax), %eax	# sv_547->sv_flags, D.12538
	andl	$16384, %eax	#, D.12538
	testl	%eax, %eax	# D.12538
	je	.L272	#,
	.loc 1 1714 0
	movq	-64(%rbp), %rax	# sv, tmp618
	movq	%rax, %rdi	# tmp618,
	call	Perl_mg_set	#
.L272:
	.loc 1 1715 0
	cmpq	$0, -56(%rbp)	#, didstore
	jne	.L273	#,
	.loc 1 1716 0
	movq	-64(%rbp), %rax	# sv, tmp619
	movq	%rax, %rdi	# tmp619,
	call	Perl_sv_2mortal	#
.L273:
	.loc 1 1710 0
	addl	$1, %r12d	#, i
.L271:
	.loc 1 1710 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %r12d	# max, i
	jl	.L274	#,
.L268:
.LBE45:
	.loc 1 1719 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1720 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.231
	movl	-240(%rbp), %eax	# origmark, tmp620
	movslq	%eax, %rcx	# tmp620, D.12534
	cmpl	$0, -244(%rbp)	#, sorting_av
	jne	.L275	#,
	.loc 1 1720 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# max, iftmp.232
	jmp	.L276	#
.L275:
	.loc 1 1720 0 discriminator 2
	movl	$0, %eax	#, iftmp.232
.L276:
	.loc 1 1720 0 discriminator 3
	addq	%rcx, %rax	# D.12534, D.12534
	salq	$3, %rax	#, D.12534
	addq	%rdx, %rax	# PL_stack_base.231, PL_stack_sp.233
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.233, PL_stack_sp
	.loc 1 1721 0 is_stmt 1 discriminator 3
	movq	-152(%rbp), %rax	# nextop, D.12530
.L277:
	.loc 1 1722 0
	addq	$232, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_pp_sort, .-Perl_pp_sort
	.section	.rodata
	.align 8
.LC8:
	.string	"Sort subroutine didn't return single value"
	.align 8
.LC9:
	.string	"Sort subroutine didn't return a numeric value"
	.text
	.type	sortcv, @function
sortcv:
.LFB12:
	.loc 1 1726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1727 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp90
	movl	%eax, -12(%rbp)	# tmp90, oldsaveix
	.loc 1 1728 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp91
	movl	%eax, -8(%rbp)	# tmp91, oldscopeix
	.loc 1 1730 0
	movq	PL_firstgv(%rip), %rax	# PL_firstgv, PL_firstgv.234
	movq	(%rax), %rax	# PL_firstgv.234_4->sv_any, D.12566
	movq	56(%rax), %rax	# _5->xgv_gp, D.12567
	movq	-24(%rbp), %rdx	# a, tmp92
	movq	%rdx, (%rax)	# tmp92, _6->gp_sv
	.loc 1 1731 0
	movq	PL_secondgv(%rip), %rax	# PL_secondgv, PL_secondgv.235
	movq	(%rax), %rax	# PL_secondgv.235_8->sv_any, D.12566
	movq	56(%rax), %rax	# _9->xgv_gp, D.12567
	movq	-32(%rbp), %rdx	# b, tmp93
	movq	%rdx, (%rax)	# tmp93, _10->gp_sv
	.loc 1 1732 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.236
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_base.236, PL_stack_sp
	.loc 1 1733 0
	movq	PL_sortcop(%rip), %rax	# PL_sortcop, PL_sortcop.237
	movq	%rax, PL_op(%rip)	# PL_sortcop.237, PL_op
	.loc 1 1734 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.238
	call	*%rax	# PL_runops.238
	.loc 1 1735 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.239
	leaq	8(%rax), %rdx	#, D.12568
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.240
	cmpq	%rax, %rdx	# PL_stack_sp.240, D.12568
	je	.L279	#,
	.loc 1 1736 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L279:
	.loc 1 1737 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.241
	movq	(%rax), %rax	# *PL_stack_sp.241_18, D.12569
	movl	12(%rax), %eax	# _19->sv_flags, D.12570
	andl	$50331648, %eax	#, D.12570
	testl	%eax, %eax	# D.12570
	jne	.L280	#,
	.loc 1 1738 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L280:
	.loc 1 1739 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.243
	movq	(%rax), %rax	# *PL_stack_sp.243_22, D.12569
	movl	12(%rax), %eax	# _23->sv_flags, D.12570
	andl	$65536, %eax	#, D.12570
	testl	%eax, %eax	# D.12570
	je	.L281	#,
	.loc 1 1739 0 is_stmt 0 discriminator 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.244
	movq	(%rax), %rax	# *PL_stack_sp.244_26, D.12569
	movq	(%rax), %rax	# _27->sv_any, D.12571
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_28].xiv_iv, D.12572
	jmp	.L282	#
.L281:
	.loc 1 1739 0 discriminator 2
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.245
	movq	(%rax), %rax	# *PL_stack_sp.245_31, D.12569
	movq	%rax, %rdi	# D.12569,
	call	Perl_sv_2iv	#
.L282:
	.loc 1 1739 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.242, result
	.loc 1 1740 0 is_stmt 1 discriminator 3
	jmp	.L283	#
.L284:
	.loc 1 1741 0
	call	Perl_pop_scope	#
.L283:
	.loc 1 1740 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.246
	cmpl	-8(%rbp), %eax	# oldscopeix, PL_scopestack_ix.246
	jg	.L284	#,
	.loc 1 1743 0
	movl	-12(%rbp), %eax	# oldsaveix, tmp94
	movl	%eax, %edi	# tmp94,
	call	Perl_leave_scope	#
	.loc 1 1744 0
	movl	-4(%rbp), %eax	# result, D.12573
	.loc 1 1745 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sortcv, .-sortcv
	.type	sortcv_stacked, @function
sortcv_stacked:
.LFB13:
	.loc 1 1749 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
	.loc 1 1750 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp115
	movl	%eax, -28(%rbp)	# tmp115, oldsaveix
	.loc 1 1751 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp116
	movl	%eax, -24(%rbp)	# tmp116, oldscopeix
	.loc 1 1758 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.247
	movq	(%rax), %rax	# PL_defgv.247_4->sv_any, D.12576
	movq	56(%rax), %rax	# _5->xgv_gp, D.12577
	movq	32(%rax), %rax	# _6->gp_av, tmp117
	movq	%rax, -16(%rbp)	# tmp117, av
	.loc 1 1761 0
	movq	-16(%rbp), %rax	# av, tmp118
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	16(%rax), %rax	# _8->xav_max, D.12579
	testq	%rax, %rax	# D.12579
	jg	.L287	#,
.LBB46:
	.loc 1 1762 0
	movq	-16(%rbp), %rax	# av, tmp119
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	56(%rax), %rax	# _10->xav_alloc, tmp120
	movq	%rax, -8(%rbp)	# tmp120, ary
	.loc 1 1763 0
	movq	-16(%rbp), %rax	# av, tmp121
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	(%rax), %rax	# _12->xav_array, D.12580
	cmpq	-8(%rbp), %rax	# ary, D.12580
	je	.L288	#,
	.loc 1 1764 0
	movq	-16(%rbp), %rax	# av, tmp122
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	-16(%rbp), %rdx	# av, tmp123
	movq	(%rdx), %rdx	# av_7->sv_any, D.12578
	movq	16(%rdx), %rcx	# _15->xav_max, D.12579
	movq	-16(%rbp), %rdx	# av, tmp124
	movq	(%rdx), %rdx	# av_7->sv_any, D.12578
	movq	(%rdx), %rdx	# _17->xav_array, D.12580
	movq	%rdx, %rsi	# D.12580, D.12579
	movq	-16(%rbp), %rdx	# av, tmp125
	movq	(%rdx), %rdx	# av_7->sv_any, D.12578
	movq	56(%rdx), %rdx	# _20->xav_alloc, D.12581
	subq	%rdx, %rsi	# D.12579, D.12579
	movq	%rsi, %rdx	# D.12579, D.12579
	sarq	$3, %rdx	#, tmp126
	addq	%rcx, %rdx	# D.12579, D.12579
	movq	%rdx, 16(%rax)	# D.12579, _14->xav_max
	.loc 1 1765 0
	movq	-16(%rbp), %rax	# av, tmp127
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	-8(%rbp), %rdx	# ary, tmp128
	movq	%rdx, (%rax)	# tmp128, MEM[(struct XPV *)_26].xpv_pv
.L288:
	.loc 1 1767 0
	movq	-16(%rbp), %rax	# av, tmp129
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	16(%rax), %rax	# _27->xav_max, D.12579
	testq	%rax, %rax	# D.12579
	jg	.L287	#,
	.loc 1 1768 0
	movq	-16(%rbp), %rax	# av, tmp130
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	$1, 16(%rax)	#, _29->xav_max
	.loc 1 1769 0
	movq	-8(%rbp), %rax	# ary, tmp131
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	Perl_safesysrealloc	#
	movq	%rax, -8(%rbp)	# tmp132, ary
	.loc 1 1770 0
	movq	-16(%rbp), %rax	# av, tmp133
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	-8(%rbp), %rdx	# ary, tmp134
	movq	%rdx, (%rax)	# tmp134, MEM[(struct XPV *)_31].xpv_pv
.L287:
.LBE46:
	.loc 1 1773 0
	movq	-16(%rbp), %rax	# av, tmp135
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	$1, 8(%rax)	#, _32->xav_fill
	.loc 1 1775 0
	movq	-16(%rbp), %rax	# av, tmp136
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	(%rax), %rax	# _33->xav_array, D.12580
	movq	-40(%rbp), %rdx	# a, tmp137
	movq	%rdx, (%rax)	# tmp137, MEM[(struct SV * *)_34]
	.loc 1 1776 0
	movq	-16(%rbp), %rax	# av, tmp138
	movq	(%rax), %rax	# av_7->sv_any, D.12578
	movq	(%rax), %rax	# _36->xav_array, D.12580
	leaq	8(%rax), %rdx	#, D.12581
	movq	-48(%rbp), %rax	# b, tmp139
	movq	%rax, (%rdx)	# tmp139, *_38
	.loc 1 1777 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.248
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_base.248, PL_stack_sp
	.loc 1 1778 0
	movq	PL_sortcop(%rip), %rax	# PL_sortcop, PL_sortcop.249
	movq	%rax, PL_op(%rip)	# PL_sortcop.249, PL_op
	.loc 1 1779 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.250
	call	*%rax	# PL_runops.250
	.loc 1 1780 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.251
	leaq	8(%rax), %rdx	#, D.12581
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.252
	cmpq	%rax, %rdx	# PL_stack_sp.252, D.12581
	je	.L289	#,
	.loc 1 1781 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L289:
	.loc 1 1782 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.253
	movq	(%rax), %rax	# *PL_stack_sp.253_46, D.12582
	movl	12(%rax), %eax	# _47->sv_flags, D.12583
	andl	$50331648, %eax	#, D.12583
	testl	%eax, %eax	# D.12583
	jne	.L290	#,
	.loc 1 1783 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L290:
	.loc 1 1784 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.255
	movq	(%rax), %rax	# *PL_stack_sp.255_50, D.12582
	movl	12(%rax), %eax	# _51->sv_flags, D.12583
	andl	$65536, %eax	#, D.12583
	testl	%eax, %eax	# D.12583
	je	.L291	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.256
	movq	(%rax), %rax	# *PL_stack_sp.256_54, D.12582
	movq	(%rax), %rax	# _55->sv_any, D.12584
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_56].xiv_iv, D.12579
	jmp	.L292	#
.L291:
	.loc 1 1784 0 discriminator 2
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.257
	movq	(%rax), %rax	# *PL_stack_sp.257_59, D.12582
	movq	%rax, %rdi	# D.12582,
	call	Perl_sv_2iv	#
.L292:
	.loc 1 1784 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.254, result
	.loc 1 1785 0 is_stmt 1 discriminator 3
	jmp	.L293	#
.L294:
	.loc 1 1786 0
	call	Perl_pop_scope	#
.L293:
	.loc 1 1785 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.258
	cmpl	-24(%rbp), %eax	# oldscopeix, PL_scopestack_ix.258
	jg	.L294	#,
	.loc 1 1788 0
	movl	-28(%rbp), %eax	# oldsaveix, tmp140
	movl	%eax, %edi	# tmp140,
	call	Perl_leave_scope	#
	.loc 1 1789 0
	movl	-20(%rbp), %eax	# result, D.12585
	.loc 1 1790 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sortcv_stacked, .-sortcv_stacked
	.type	sortcv_xsub, @function
sortcv_xsub:
.LFB14:
	.loc 1 1794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# a, a
	movq	%rsi, -64(%rbp)	# b, b
	.loc 1 1795 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1796 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp100
	movl	%eax, -36(%rbp)	# tmp100, oldsaveix
	.loc 1 1797 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp101
	movl	%eax, -32(%rbp)	# tmp101, oldscopeix
	.loc 1 1799 0
	movq	PL_sortcop(%rip), %rax	# PL_sortcop, tmp102
	movq	%rax, -24(%rbp)	# tmp102, cv
	.loc 1 1801 0
	movq	PL_stack_base(%rip), %rbx	# PL_stack_base, sp
.LBB47:
	.loc 1 1802 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.259
	addq	$4, %rax	#, PL_markstack_ptr.260
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.260, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.261
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.262
	cmpq	%rax, %rdx	# PL_markstack_max.262, PL_markstack_ptr.261
	jne	.L297	#,
	.loc 1 1802 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L297:
	.loc 1 1802 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.263
	movq	%rbx, %rcx	# sp, sp.264
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.265
	subq	%rdx, %rcx	# PL_stack_base.266, D.12586
	movq	%rcx, %rdx	# D.12586, D.12586
	sarq	$3, %rdx	#, tmp103
	movl	%edx, (%rax)	# D.12587, *PL_markstack_ptr.263_12
.LBE47:
	.loc 1 1803 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.267
	movq	%rax, %rdx	# PL_stack_max.267, PL_stack_max.268
	movq	%rbx, %rax	# sp, sp.269
	subq	%rax, %rdx	# sp.269, D.12586
	movq	%rdx, %rax	# D.12586, D.12586
	cmpq	$15, %rax	#, D.12586
	jg	.L298	#,
	.loc 1 1803 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L298:
	.loc 1 1804 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# a, tmp104
	movq	%rax, (%rbx)	# tmp104, *sp_25
	.loc 1 1805 0
	addq	$8, %rbx	#, sp
	movq	-64(%rbp), %rax	# b, tmp105
	movq	%rax, (%rbx)	# tmp105, *sp_27
	.loc 1 1806 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1807 0
	movq	-24(%rbp), %rax	# cv, tmp106
	movq	(%rax), %rax	# cv_6->sv_any, D.12589
	movq	80(%rax), %rax	# _29->xcv_xsub, D.12590
	movq	-24(%rbp), %rdx	# cv, tmp107
	movq	%rdx, %rdi	# tmp107,
	call	*%rax	# D.12590
	.loc 1 1808 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.270
	leaq	8(%rax), %rdx	#, D.12591
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.271
	cmpq	%rax, %rdx	# PL_stack_sp.271, D.12591
	je	.L299	#,
	.loc 1 1809 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L299:
	.loc 1 1810 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.272
	movq	(%rax), %rax	# *PL_stack_sp.272_34, D.12592
	movl	12(%rax), %eax	# _35->sv_flags, D.12593
	andl	$50331648, %eax	#, D.12593
	testl	%eax, %eax	# D.12593
	jne	.L300	#,
	.loc 1 1811 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L300:
	.loc 1 1812 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.274
	movq	(%rax), %rax	# *PL_stack_sp.274_38, D.12592
	movl	12(%rax), %eax	# _39->sv_flags, D.12593
	andl	$65536, %eax	#, D.12593
	testl	%eax, %eax	# D.12593
	je	.L301	#,
	.loc 1 1812 0 is_stmt 0 discriminator 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.275
	movq	(%rax), %rax	# *PL_stack_sp.275_42, D.12592
	movq	(%rax), %rax	# _43->sv_any, D.12594
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_44].xiv_iv, D.12586
	jmp	.L302	#
.L301:
	.loc 1 1812 0 discriminator 2
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.276
	movq	(%rax), %rax	# *PL_stack_sp.276_47, D.12592
	movq	%rax, %rdi	# D.12592,
	call	Perl_sv_2iv	#
.L302:
	.loc 1 1812 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.273, result
	.loc 1 1813 0 is_stmt 1 discriminator 3
	jmp	.L303	#
.L304:
	.loc 1 1814 0
	call	Perl_pop_scope	#
.L303:
	.loc 1 1813 0 discriminator 1
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.277
	cmpl	-32(%rbp), %eax	# oldscopeix, PL_scopestack_ix.277
	jg	.L304	#,
	.loc 1 1816 0
	movl	-36(%rbp), %eax	# oldsaveix, tmp108
	movl	%eax, %edi	# tmp108,
	call	Perl_leave_scope	#
	.loc 1 1817 0
	movl	-28(%rbp), %eax	# result, D.12588
	.loc 1 1818 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sortcv_xsub, .-sortcv_xsub
	.type	sv_ncmp, @function
sv_ncmp:
.LFB15:
	.loc 1 1823 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1824 0
	movq	-24(%rbp), %rax	# a, tmp71
	movl	12(%rax), %eax	# a_4(D)->sv_flags, D.12595
	andl	$131072, %eax	#, D.12595
	testl	%eax, %eax	# D.12595
	je	.L307	#,
	.loc 1 1824 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# a, tmp72
	movq	(%rax), %rax	# a_4(D)->sv_any, D.12596
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_7].xnv_nv, iftmp.278
	jmp	.L308	#
.L307:
	.loc 1 1824 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp73
	movq	%rax, %rdi	# tmp73,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, iftmp.278
.L308:
	.loc 1 1824 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.278, nv1
	.loc 1 1825 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# b, tmp74
	movl	12(%rax), %eax	# b_11(D)->sv_flags, D.12595
	andl	$131072, %eax	#, D.12595
	testl	%eax, %eax	# D.12595
	je	.L309	#,
	.loc 1 1825 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# b, tmp75
	movq	(%rax), %rax	# b_11(D)->sv_any, D.12596
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_14].xnv_nv, iftmp.279
	jmp	.L310	#
.L309:
	.loc 1 1825 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp76
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, iftmp.279
.L310:
	.loc 1 1825 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.279, nv2
	.loc 1 1826 0 is_stmt 1 discriminator 3
	movsd	-8(%rbp), %xmm0	# nv2, tmp77
	ucomisd	-16(%rbp), %xmm0	# nv1, tmp77
	jbe	.L316	#,
	.loc 1 1826 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.280
	jmp	.L313	#
.L316:
	.loc 1 1826 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# nv1, tmp78
	ucomisd	-8(%rbp), %xmm0	# nv2, tmp78
	seta	%al	#, D.12597
	movzbl	%al, %eax	# D.12597, iftmp.280
.L313:
	.loc 1 1827 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sv_ncmp, .-sv_ncmp
	.type	sv_i_ncmp, @function
sv_i_ncmp:
.LFB16:
	.loc 1 1831 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1832 0
	movq	-24(%rbp), %rax	# a, tmp71
	movl	12(%rax), %eax	# a_4(D)->sv_flags, D.12599
	andl	$65536, %eax	#, D.12599
	testl	%eax, %eax	# D.12599
	je	.L318	#,
	.loc 1 1832 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# a, tmp72
	movq	(%rax), %rax	# a_4(D)->sv_any, D.12600
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_7].xiv_iv, iftmp.281
	jmp	.L319	#
.L318:
	.loc 1 1832 0 discriminator 2
	movq	-24(%rbp), %rax	# a, tmp73
	movq	%rax, %rdi	# tmp73,
	call	Perl_sv_2iv	#
.L319:
	.loc 1 1832 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.281, iv1
	.loc 1 1833 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# b, tmp74
	movl	12(%rax), %eax	# b_11(D)->sv_flags, D.12599
	andl	$65536, %eax	#, D.12599
	testl	%eax, %eax	# D.12599
	je	.L320	#,
	.loc 1 1833 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# b, tmp75
	movq	(%rax), %rax	# b_11(D)->sv_any, D.12600
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_14].xiv_iv, iftmp.282
	jmp	.L321	#
.L320:
	.loc 1 1833 0 discriminator 2
	movq	-32(%rbp), %rax	# b, tmp76
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_2iv	#
.L321:
	.loc 1 1833 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.282, iv2
	.loc 1 1834 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# iv1, tmp77
	cmpq	-8(%rbp), %rax	# iv2, tmp77
	jl	.L322	#,
	.loc 1 1834 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# iv1, tmp78
	cmpq	-8(%rbp), %rax	# iv2, tmp78
	setg	%al	#, D.12601
	movzbl	%al, %eax	# D.12601, iftmp.283
	jmp	.L323	#
.L322:
	.loc 1 1834 0 discriminator 2
	movl	$-1, %eax	#, iftmp.283
.L323:
	.loc 1 1835 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sv_i_ncmp, .-sv_i_ncmp
	.type	amagic_ncmp, @function
amagic_ncmp:
.LFB17:
	.loc 1 1849 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# a, a
	movq	%rsi, %r12	# b, b
.LBB48:
	.loc 1 1851 0
	movq	$0, -32(%rbp)	#, tmpsv
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.284
	testq	%rax, %rax	# PL_amagic_generation.284
	je	.L326	#,
	.loc 1 1851 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# a_6(D)->sv_flags, D.12604
	andl	$268435456, %eax	#, D.12604
	testl	%eax, %eax	# D.12604
	jne	.L327	#,
	.loc 1 1851 0 discriminator 2
	movl	12(%r12), %eax	# b_9(D)->sv_flags, D.12604
	andl	$268435456, %eax	#, D.12604
	testl	%eax, %eax	# D.12604
	je	.L326	#,
.L327:
	.loc 1 1851 0 discriminator 1
	movl	$0, %ecx	#,
	movl	$34, %edx	#,
	movq	%r12, %rsi	# b,
	movq	%rbx, %rdi	# a,
	call	Perl_amagic_call	#
	movq	%rax, -32(%rbp)	# tmpsv.285, tmpsv
.L326:
.LBE48:
	.loc 1 1852 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.286
	testq	%rax, %rax	# tmpsv.286
	je	.L328	#,
.LBB49:
	.loc 1 1855 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.287
	movl	12(%rax), %eax	# tmpsv.287_14->sv_flags, D.12604
	andl	$65536, %eax	#, D.12604
	testl	%eax, %eax	# D.12604
	je	.L329	#,
.LBB50:
	.loc 1 1856 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.288
	movq	(%rax), %rax	# tmpsv.288_17->sv_any, D.12605
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_18].xiv_iv, D.12606
	movl	%eax, -36(%rbp)	# D.12606, i
	.loc 1 1857 0
	cmpl	$0, -36(%rbp)	#, i
	jle	.L330	#,
	.loc 1 1858 0
	movl	$1, %eax	#, D.12603
	jmp	.L341	#
.L330:
	.loc 1 1859 0
	cmpl	$0, -36(%rbp)	#, i
	je	.L332	#,
	.loc 1 1859 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.289
	jmp	.L333	#
.L332:
	.loc 1 1859 0 discriminator 2
	movl	$0, %eax	#, iftmp.289
.L333:
	.loc 1 1859 0 discriminator 3
	jmp	.L341	#
.L329:
.LBE50:
	.loc 1 1861 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.291
	movl	12(%rax), %eax	# tmpsv.291_25->sv_flags, D.12604
	andl	$131072, %eax	#, D.12604
	testl	%eax, %eax	# D.12604
	je	.L334	#,
	.loc 1 1861 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.292
	movq	(%rax), %rax	# tmpsv.292_28->sv_any, D.12605
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_29].xnv_nv, iftmp.290
	jmp	.L335	#
.L334:
	.loc 1 1861 0 discriminator 2
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.293
	movq	%rax, %rdi	# tmpsv.293,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, iftmp.290
.L335:
	.loc 1 1861 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.290, d
	.loc 1 1862 0 is_stmt 1 discriminator 3
	movsd	-24(%rbp), %xmm0	# d, tmp85
	xorpd	%xmm1, %xmm1	# tmp86
	ucomisd	%xmm1, %xmm0	# tmp86, tmp85
	jbe	.L344	#,
	.loc 1 1863 0
	movl	$1, %eax	#, D.12603
	jmp	.L341	#
.L344:
	.loc 1 1864 0
	xorpd	%xmm0, %xmm0	# tmp87
	ucomisd	-24(%rbp), %xmm0	# d, tmp87
	jp	.L343	#,
	xorpd	%xmm0, %xmm0	# tmp88
	ucomisd	-24(%rbp), %xmm0	# d, tmp88
	je	.L345	#,
.L343:
	.loc 1 1864 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.294
	jmp	.L340	#
.L345:
	.loc 1 1864 0 discriminator 2
	movl	$0, %eax	#, iftmp.294
.L340:
	.loc 1 1864 0 discriminator 3
	jmp	.L341	#
.L328:
.LBE49:
	.loc 1 1866 0 is_stmt 1
	movq	%r12, %rsi	# b,
	movq	%rbx, %rdi	# a,
	call	sv_ncmp	#
.L341:
	.loc 1 1867 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	amagic_ncmp, .-amagic_ncmp
	.type	amagic_i_ncmp, @function
amagic_i_ncmp:
.LFB18:
	.loc 1 1871 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# a, a
	movq	%rsi, %r12	# b, b
.LBB51:
	.loc 1 1873 0
	movq	$0, -32(%rbp)	#, tmpsv
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.295
	testq	%rax, %rax	# PL_amagic_generation.295
	je	.L347	#,
	.loc 1 1873 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# a_6(D)->sv_flags, D.12608
	andl	$268435456, %eax	#, D.12608
	testl	%eax, %eax	# D.12608
	jne	.L348	#,
	.loc 1 1873 0 discriminator 2
	movl	12(%r12), %eax	# b_9(D)->sv_flags, D.12608
	andl	$268435456, %eax	#, D.12608
	testl	%eax, %eax	# D.12608
	je	.L347	#,
.L348:
	.loc 1 1873 0 discriminator 1
	movl	$0, %ecx	#,
	movl	$34, %edx	#,
	movq	%r12, %rsi	# b,
	movq	%rbx, %rdi	# a,
	call	Perl_amagic_call	#
	movq	%rax, -32(%rbp)	# tmpsv.296, tmpsv
.L347:
.LBE51:
	.loc 1 1874 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.297
	testq	%rax, %rax	# tmpsv.297
	je	.L349	#,
.LBB52:
	.loc 1 1877 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.298
	movl	12(%rax), %eax	# tmpsv.298_14->sv_flags, D.12608
	andl	$65536, %eax	#, D.12608
	testl	%eax, %eax	# D.12608
	je	.L350	#,
.LBB53:
	.loc 1 1878 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.299
	movq	(%rax), %rax	# tmpsv.299_17->sv_any, D.12609
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_18].xiv_iv, D.12610
	movl	%eax, -36(%rbp)	# D.12610, i
	.loc 1 1879 0
	cmpl	$0, -36(%rbp)	#, i
	jle	.L351	#,
	.loc 1 1880 0
	movl	$1, %eax	#, D.12607
	jmp	.L362	#
.L351:
	.loc 1 1881 0
	cmpl	$0, -36(%rbp)	#, i
	je	.L353	#,
	.loc 1 1881 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.300
	jmp	.L354	#
.L353:
	.loc 1 1881 0 discriminator 2
	movl	$0, %eax	#, iftmp.300
.L354:
	.loc 1 1881 0 discriminator 3
	jmp	.L362	#
.L350:
.LBE53:
	.loc 1 1883 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.302
	movl	12(%rax), %eax	# tmpsv.302_25->sv_flags, D.12608
	andl	$131072, %eax	#, D.12608
	testl	%eax, %eax	# D.12608
	je	.L355	#,
	.loc 1 1883 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.303
	movq	(%rax), %rax	# tmpsv.303_28->sv_any, D.12609
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_29].xnv_nv, iftmp.301
	jmp	.L356	#
.L355:
	.loc 1 1883 0 discriminator 2
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.304
	movq	%rax, %rdi	# tmpsv.304,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, iftmp.301
.L356:
	.loc 1 1883 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.301, d
	.loc 1 1884 0 is_stmt 1 discriminator 3
	movsd	-24(%rbp), %xmm0	# d, tmp85
	xorpd	%xmm1, %xmm1	# tmp86
	ucomisd	%xmm1, %xmm0	# tmp86, tmp85
	jbe	.L365	#,
	.loc 1 1885 0
	movl	$1, %eax	#, D.12607
	jmp	.L362	#
.L365:
	.loc 1 1886 0
	xorpd	%xmm0, %xmm0	# tmp87
	ucomisd	-24(%rbp), %xmm0	# d, tmp87
	jp	.L364	#,
	xorpd	%xmm0, %xmm0	# tmp88
	ucomisd	-24(%rbp), %xmm0	# d, tmp88
	je	.L366	#,
.L364:
	.loc 1 1886 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.305
	jmp	.L361	#
.L366:
	.loc 1 1886 0 discriminator 2
	movl	$0, %eax	#, iftmp.305
.L361:
	.loc 1 1886 0 discriminator 3
	jmp	.L362	#
.L349:
.LBE52:
	.loc 1 1888 0 is_stmt 1
	movq	%r12, %rsi	# b,
	movq	%rbx, %rdi	# a,
	call	sv_i_ncmp	#
.L362:
	.loc 1 1889 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	amagic_i_ncmp, .-amagic_i_ncmp
	.type	amagic_cmp, @function
amagic_cmp:
.LFB19:
	.loc 1 1893 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# str1, str1
	movq	%rsi, %r12	# str2, str2
.LBB54:
	.loc 1 1895 0
	movq	$0, -32(%rbp)	#, tmpsv
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.306
	testq	%rax, %rax	# PL_amagic_generation.306
	je	.L368	#,
	.loc 1 1895 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# str1_6(D)->sv_flags, D.12612
	andl	$268435456, %eax	#, D.12612
	testl	%eax, %eax	# D.12612
	jne	.L369	#,
	.loc 1 1895 0 discriminator 2
	movl	12(%r12), %eax	# str2_9(D)->sv_flags, D.12612
	andl	$268435456, %eax	#, D.12612
	testl	%eax, %eax	# D.12612
	je	.L368	#,
.L369:
	.loc 1 1895 0 discriminator 1
	movl	$0, %ecx	#,
	movl	$35, %edx	#,
	movq	%r12, %rsi	# str2,
	movq	%rbx, %rdi	# str1,
	call	Perl_amagic_call	#
	movq	%rax, -32(%rbp)	# tmpsv.307, tmpsv
.L368:
.LBE54:
	.loc 1 1896 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.308
	testq	%rax, %rax	# tmpsv.308
	je	.L370	#,
.LBB55:
	.loc 1 1899 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.309
	movl	12(%rax), %eax	# tmpsv.309_14->sv_flags, D.12612
	andl	$65536, %eax	#, D.12612
	testl	%eax, %eax	# D.12612
	je	.L371	#,
.LBB56:
	.loc 1 1900 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.310
	movq	(%rax), %rax	# tmpsv.310_17->sv_any, D.12613
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_18].xiv_iv, D.12614
	movl	%eax, -36(%rbp)	# D.12614, i
	.loc 1 1901 0
	cmpl	$0, -36(%rbp)	#, i
	jle	.L372	#,
	.loc 1 1902 0
	movl	$1, %eax	#, D.12611
	jmp	.L383	#
.L372:
	.loc 1 1903 0
	cmpl	$0, -36(%rbp)	#, i
	je	.L374	#,
	.loc 1 1903 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.311
	jmp	.L375	#
.L374:
	.loc 1 1903 0 discriminator 2
	movl	$0, %eax	#, iftmp.311
.L375:
	.loc 1 1903 0 discriminator 3
	jmp	.L383	#
.L371:
.LBE56:
	.loc 1 1905 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.313
	movl	12(%rax), %eax	# tmpsv.313_25->sv_flags, D.12612
	andl	$131072, %eax	#, D.12612
	testl	%eax, %eax	# D.12612
	je	.L376	#,
	.loc 1 1905 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.314
	movq	(%rax), %rax	# tmpsv.314_28->sv_any, D.12613
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_29].xnv_nv, iftmp.312
	jmp	.L377	#
.L376:
	.loc 1 1905 0 discriminator 2
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.315
	movq	%rax, %rdi	# tmpsv.315,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, iftmp.312
.L377:
	.loc 1 1905 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.312, d
	.loc 1 1906 0 is_stmt 1 discriminator 3
	movsd	-24(%rbp), %xmm0	# d, tmp85
	xorpd	%xmm1, %xmm1	# tmp86
	ucomisd	%xmm1, %xmm0	# tmp86, tmp85
	jbe	.L386	#,
	.loc 1 1907 0
	movl	$1, %eax	#, D.12611
	jmp	.L383	#
.L386:
	.loc 1 1908 0
	xorpd	%xmm0, %xmm0	# tmp87
	ucomisd	-24(%rbp), %xmm0	# d, tmp87
	jp	.L385	#,
	xorpd	%xmm0, %xmm0	# tmp88
	ucomisd	-24(%rbp), %xmm0	# d, tmp88
	je	.L387	#,
.L385:
	.loc 1 1908 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.316
	jmp	.L382	#
.L387:
	.loc 1 1908 0 discriminator 2
	movl	$0, %eax	#, iftmp.316
.L382:
	.loc 1 1908 0 discriminator 3
	jmp	.L383	#
.L370:
.LBE55:
	.loc 1 1910 0 is_stmt 1
	movq	%r12, %rsi	# str2,
	movq	%rbx, %rdi	# str1,
	call	Perl_sv_cmp	#
.L383:
	.loc 1 1911 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	amagic_cmp, .-amagic_cmp
	.type	amagic_cmp_locale, @function
amagic_cmp_locale:
.LFB20:
	.loc 1 1915 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# str1, str1
	movq	%rsi, %r12	# str2, str2
.LBB57:
	.loc 1 1917 0
	movq	$0, -32(%rbp)	#, tmpsv
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.317
	testq	%rax, %rax	# PL_amagic_generation.317
	je	.L389	#,
	.loc 1 1917 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# str1_6(D)->sv_flags, D.12616
	andl	$268435456, %eax	#, D.12616
	testl	%eax, %eax	# D.12616
	jne	.L390	#,
	.loc 1 1917 0 discriminator 2
	movl	12(%r12), %eax	# str2_9(D)->sv_flags, D.12616
	andl	$268435456, %eax	#, D.12616
	testl	%eax, %eax	# D.12616
	je	.L389	#,
.L390:
	.loc 1 1917 0 discriminator 1
	movl	$0, %ecx	#,
	movl	$35, %edx	#,
	movq	%r12, %rsi	# str2,
	movq	%rbx, %rdi	# str1,
	call	Perl_amagic_call	#
	movq	%rax, -32(%rbp)	# tmpsv.318, tmpsv
.L389:
.LBE57:
	.loc 1 1918 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.319
	testq	%rax, %rax	# tmpsv.319
	je	.L391	#,
.LBB58:
	.loc 1 1921 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.320
	movl	12(%rax), %eax	# tmpsv.320_14->sv_flags, D.12616
	andl	$65536, %eax	#, D.12616
	testl	%eax, %eax	# D.12616
	je	.L392	#,
.LBB59:
	.loc 1 1922 0
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.321
	movq	(%rax), %rax	# tmpsv.321_17->sv_any, D.12617
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_18].xiv_iv, D.12618
	movl	%eax, -36(%rbp)	# D.12618, i
	.loc 1 1923 0
	cmpl	$0, -36(%rbp)	#, i
	jle	.L393	#,
	.loc 1 1924 0
	movl	$1, %eax	#, D.12615
	jmp	.L404	#
.L393:
	.loc 1 1925 0
	cmpl	$0, -36(%rbp)	#, i
	je	.L395	#,
	.loc 1 1925 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.322
	jmp	.L396	#
.L395:
	.loc 1 1925 0 discriminator 2
	movl	$0, %eax	#, iftmp.322
.L396:
	.loc 1 1925 0 discriminator 3
	jmp	.L404	#
.L392:
.LBE59:
	.loc 1 1927 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.324
	movl	12(%rax), %eax	# tmpsv.324_25->sv_flags, D.12616
	andl	$131072, %eax	#, D.12616
	testl	%eax, %eax	# D.12616
	je	.L397	#,
	.loc 1 1927 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.325
	movq	(%rax), %rax	# tmpsv.325_28->sv_any, D.12617
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_29].xnv_nv, iftmp.323
	jmp	.L398	#
.L397:
	.loc 1 1927 0 discriminator 2
	movq	-32(%rbp), %rax	# tmpsv, tmpsv.326
	movq	%rax, %rdi	# tmpsv.326,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, iftmp.323
.L398:
	.loc 1 1927 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.323, d
	.loc 1 1928 0 is_stmt 1 discriminator 3
	movsd	-24(%rbp), %xmm0	# d, tmp85
	xorpd	%xmm1, %xmm1	# tmp86
	ucomisd	%xmm1, %xmm0	# tmp86, tmp85
	jbe	.L407	#,
	.loc 1 1929 0
	movl	$1, %eax	#, D.12615
	jmp	.L404	#
.L407:
	.loc 1 1930 0
	xorpd	%xmm0, %xmm0	# tmp87
	ucomisd	-24(%rbp), %xmm0	# d, tmp87
	jp	.L406	#,
	xorpd	%xmm0, %xmm0	# tmp88
	ucomisd	-24(%rbp), %xmm0	# d, tmp88
	je	.L408	#,
.L406:
	.loc 1 1930 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.327
	jmp	.L403	#
.L408:
	.loc 1 1930 0 discriminator 2
	movl	$0, %eax	#, iftmp.327
.L403:
	.loc 1 1930 0 discriminator 3
	jmp	.L404	#
.L391:
.LBE58:
	.loc 1 1932 0 is_stmt 1
	movq	%r12, %rsi	# str2,
	movq	%rbx, %rdi	# str1,
	call	Perl_sv_cmp_locale	#
.L404:
	.loc 1 1933 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	amagic_cmp_locale, .-amagic_cmp_locale
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1138753536
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 7 "/usr/include/setjmp.h"
	.file 8 "/usr/include/dirent.h"
	.file 9 "perl.h"
	.file 10 "op.h"
	.file 11 "cop.h"
	.file 12 "sv.h"
	.file 13 "regexp.h"
	.file 14 "gv.h"
	.file 15 "mg.h"
	.file 16 "av.h"
	.file 17 "hv.h"
	.file 18 "cv.h"
	.file 19 "handy.h"
	.file 20 "perlio.h"
	.file 21 "pad.h"
	.file 22 "scope.h"
	.file 23 "opcode.h"
	.file 24 "intrpvar.h"
	.file 25 "thrdvar.h"
	.file 26 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x33d4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF846
	.byte	0x1
	.long	.LASF847
	.long	.LASF848
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.byte	0x80
	.byte	0x5
	.byte	0x1c
	.long	0xb1
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0x1e
	.long	0xb1
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x42
	.long	0xc1
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0x1f
	.long	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x6
	.byte	0x8
	.long	0xe0
	.uleb128 0xb
	.long	0x7f
	.uleb128 0x5
	.long	.LASF15
	.byte	0x6
	.byte	0x1f
	.long	0xf0
	.uleb128 0x9
	.long	0x5e
	.long	0x100
	.uleb128 0xa
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0xc8
	.byte	0x7
	.byte	0x22
	.long	0x131
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.byte	0x28
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.byte	0x29
	.long	0x57
	.byte	0x40
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.byte	0x2a
	.long	0xc1
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.long	0x100
	.long	0x141
	.uleb128 0xa
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x7
	.byte	0x63
	.long	0x131
	.uleb128 0xd
	.string	"DIR"
	.byte	0x8
	.byte	0x80
	.long	0x157
	.uleb128 0xe
	.long	.LASF208
	.uleb128 0xf
	.string	"IV"
	.byte	0x9
	.value	0x52b
	.long	0x5e
	.uleb128 0xf
	.string	"UV"
	.byte	0x9
	.value	0x52c
	.long	0x42
	.uleb128 0xf
	.string	"NV"
	.byte	0x9
	.value	0x5f3
	.long	0x17d
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF21
	.uleb128 0x10
	.long	.LASF22
	.byte	0x9
	.value	0x7d3
	.long	0x91
	.uleb128 0xf
	.string	"OP"
	.byte	0x9
	.value	0x7d5
	.long	0x19b
	.uleb128 0x11
	.string	"op"
	.byte	0x28
	.byte	0xa
	.byte	0xe2
	.long	0x207
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xe3
	.long	0x10dc
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xe3
	.long	0x10dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xe3
	.long	0x1adf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xe3
	.long	0x1155
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xe3
	.long	0xf4e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xe3
	.long	0xf4e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xe3
	.long	0xf44
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xe3
	.long	0xf44
	.byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"COP"
	.byte	0x9
	.value	0x7d6
	.long	0x213
	.uleb128 0x11
	.string	"cop"
	.byte	0x60
	.byte	0xb
	.byte	0x10
	.long	0x2e0
	.uleb128 0x8
	.long	.LASF24
	.byte	0xb
	.byte	0x11
	.long	0x10dc
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xb
	.byte	0x11
	.long	0x10dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xb
	.byte	0x11
	.long	0x1adf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xb
	.byte	0x11
	.long	0x1155
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xb
	.byte	0x11
	.long	0xf4e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xb
	.byte	0x11
	.long	0xf4e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xb
	.byte	0x11
	.long	0xf44
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xb
	.byte	0x11
	.long	0xf44
	.byte	0x25
	.uleb128 0x8
	.long	.LASF32
	.byte	0xb
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0x8
	.long	.LASF33
	.byte	0xb
	.byte	0x17
	.long	0x10c4
	.byte	0x30
	.uleb128 0x8
	.long	.LASF34
	.byte	0xb
	.byte	0x18
	.long	0x10f9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF35
	.byte	0xb
	.byte	0x1a
	.long	0xf64
	.byte	0x40
	.uleb128 0x8
	.long	.LASF36
	.byte	0xb
	.byte	0x1b
	.long	0xf59
	.byte	0x44
	.uleb128 0x8
	.long	.LASF37
	.byte	0xb
	.byte	0x1c
	.long	0xf6f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF38
	.byte	0xb
	.byte	0x1d
	.long	0xf8c
	.byte	0x50
	.uleb128 0x8
	.long	.LASF39
	.byte	0xb
	.byte	0x1e
	.long	0xf8c
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.byte	0x9
	.value	0x7d7
	.long	0x2ec
	.uleb128 0xc
	.long	.LASF41
	.byte	0x30
	.byte	0xa
	.byte	0xe6
	.long	0x365
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xe7
	.long	0x10dc
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xe7
	.long	0x10dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xe7
	.long	0x1adf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xe7
	.long	0x1155
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xe7
	.long	0xf4e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xe7
	.long	0xf4e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xe7
	.long	0xf44
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xe7
	.long	0xf44
	.byte	0x25
	.uleb128 0x8
	.long	.LASF42
	.byte	0xa
	.byte	0xe8
	.long	0x10dc
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF43
	.byte	0x9
	.value	0x7d9
	.long	0x371
	.uleb128 0xc
	.long	.LASF44
	.byte	0x38
	.byte	0xa
	.byte	0xf7
	.long	0x3f6
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xf8
	.long	0x10dc
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xf8
	.long	0x10dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xf8
	.long	0x1adf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xf8
	.long	0x1155
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xf8
	.long	0xf4e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xf8
	.long	0xf4e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xf8
	.long	0xf44
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xf8
	.long	0xf44
	.byte	0x25
	.uleb128 0x8
	.long	.LASF42
	.byte	0xa
	.byte	0xf9
	.long	0x10dc
	.byte	0x28
	.uleb128 0x8
	.long	.LASF45
	.byte	0xa
	.byte	0xfa
	.long	0x10dc
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF46
	.byte	0x9
	.value	0x7db
	.long	0x402
	.uleb128 0xc
	.long	.LASF47
	.byte	0x70
	.byte	0xa
	.byte	0xfd
	.long	0x4f0
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.byte	0xfe
	.long	0x10dc
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.byte	0xfe
	.long	0x10dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.byte	0xfe
	.long	0x1adf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.byte	0xfe
	.long	0x1155
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.byte	0xfe
	.long	0xf4e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.byte	0xfe
	.long	0xf4e
	.byte	0x22
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.byte	0xfe
	.long	0xf44
	.byte	0x24
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.byte	0xfe
	.long	0xf44
	.byte	0x25
	.uleb128 0x8
	.long	.LASF42
	.byte	0xa
	.byte	0xff
	.long	0x10dc
	.byte	0x28
	.uleb128 0x12
	.long	.LASF45
	.byte	0xa
	.value	0x100
	.long	0x10dc
	.byte	0x30
	.uleb128 0x12
	.long	.LASF48
	.byte	0xa
	.value	0x101
	.long	0x10dc
	.byte	0x38
	.uleb128 0x12
	.long	.LASF49
	.byte	0xa
	.value	0x102
	.long	0x10dc
	.byte	0x40
	.uleb128 0x12
	.long	.LASF50
	.byte	0xa
	.value	0x103
	.long	0x1ae5
	.byte	0x48
	.uleb128 0x12
	.long	.LASF51
	.byte	0xa
	.value	0x107
	.long	0x1aeb
	.byte	0x50
	.uleb128 0x12
	.long	.LASF52
	.byte	0xa
	.value	0x109
	.long	0xf64
	.byte	0x58
	.uleb128 0x12
	.long	.LASF53
	.byte	0xa
	.value	0x10a
	.long	0xf64
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF54
	.byte	0xa
	.value	0x10b
	.long	0xf44
	.byte	0x60
	.uleb128 0x12
	.long	.LASF55
	.byte	0xa
	.value	0x10f
	.long	0x10c4
	.byte	0x68
	.byte	0
	.uleb128 0x10
	.long	.LASF56
	.byte	0x9
	.value	0x7e1
	.long	0x4fc
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x9
	.value	0xea7
	.long	0x517
	.uleb128 0x12
	.long	.LASF58
	.byte	0x9
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"SV"
	.byte	0x9
	.value	0x7ea
	.long	0x522
	.uleb128 0x11
	.string	"sv"
	.byte	0x10
	.byte	0xc
	.byte	0x43
	.long	0x552
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x45
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x46
	.long	0xf64
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"AV"
	.byte	0x9
	.value	0x7eb
	.long	0x55d
	.uleb128 0x11
	.string	"av"
	.byte	0x10
	.byte	0xc
	.byte	0x55
	.long	0x58d
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x56
	.long	0x10ac
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x57
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x58
	.long	0xf64
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"HV"
	.byte	0x9
	.value	0x7ec
	.long	0x598
	.uleb128 0x11
	.string	"hv"
	.byte	0x10
	.byte	0xc
	.byte	0x5b
	.long	0x5c8
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x5c
	.long	0x10b2
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x5d
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x5e
	.long	0xf64
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"CV"
	.byte	0x9
	.value	0x7ed
	.long	0x5d3
	.uleb128 0x11
	.string	"cv"
	.byte	0x10
	.byte	0xc
	.byte	0x4f
	.long	0x603
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x50
	.long	0x10a6
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x51
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x52
	.long	0xf64
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x9
	.value	0x7ee
	.long	0x60f
	.uleb128 0xc
	.long	.LASF63
	.byte	0x68
	.byte	0xd
	.byte	0x1f
	.long	0x6e8
	.uleb128 0x8
	.long	.LASF64
	.byte	0xd
	.byte	0x20
	.long	0xfff
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0xd
	.byte	0x21
	.long	0xfff
	.byte	0x8
	.uleb128 0x8
	.long	.LASF66
	.byte	0xd
	.byte	0x22
	.long	0x1005
	.byte	0x10
	.uleb128 0x8
	.long	.LASF67
	.byte	0xd
	.byte	0x23
	.long	0x1010
	.byte	0x18
	.uleb128 0x8
	.long	.LASF68
	.byte	0xd
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0x8
	.long	.LASF69
	.byte	0xd
	.byte	0x25
	.long	0x101b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF70
	.byte	0xd
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0x8
	.long	.LASF71
	.byte	0xd
	.byte	0x28
	.long	0x1021
	.byte	0x38
	.uleb128 0x8
	.long	.LASF72
	.byte	0xd
	.byte	0x29
	.long	0xf59
	.byte	0x40
	.uleb128 0x8
	.long	.LASF73
	.byte	0xd
	.byte	0x2a
	.long	0xf59
	.byte	0x44
	.uleb128 0x8
	.long	.LASF74
	.byte	0xd
	.byte	0x2b
	.long	0xf59
	.byte	0x48
	.uleb128 0x8
	.long	.LASF75
	.byte	0xd
	.byte	0x2c
	.long	0xf59
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF76
	.byte	0xd
	.byte	0x2d
	.long	0xf64
	.byte	0x50
	.uleb128 0x8
	.long	.LASF77
	.byte	0xd
	.byte	0x2e
	.long	0xf64
	.byte	0x54
	.uleb128 0x8
	.long	.LASF78
	.byte	0xd
	.byte	0x2f
	.long	0xf64
	.byte	0x58
	.uleb128 0x8
	.long	.LASF79
	.byte	0xd
	.byte	0x30
	.long	0xf64
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF80
	.byte	0xd
	.byte	0x32
	.long	0x1027
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.string	"GP"
	.byte	0x9
	.value	0x7ef
	.long	0x6f3
	.uleb128 0x11
	.string	"gp"
	.byte	0x58
	.byte	0xe
	.byte	0xb
	.long	0x78f
	.uleb128 0x8
	.long	.LASF81
	.byte	0xe
	.byte	0xc
	.long	0xf8c
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0xe
	.byte	0xd
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF83
	.byte	0xe
	.byte	0xe
	.long	0x1139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF84
	.byte	0xe
	.byte	0xf
	.long	0x10ed
	.byte	0x18
	.uleb128 0x8
	.long	.LASF85
	.byte	0xe
	.byte	0x10
	.long	0x10ff
	.byte	0x20
	.uleb128 0x8
	.long	.LASF86
	.byte	0xe
	.byte	0x11
	.long	0x10c4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF87
	.byte	0xe
	.byte	0x12
	.long	0x10f9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF88
	.byte	0xe
	.byte	0x13
	.long	0x10ed
	.byte	0x38
	.uleb128 0x8
	.long	.LASF89
	.byte	0xe
	.byte	0x14
	.long	0xf64
	.byte	0x40
	.uleb128 0x8
	.long	.LASF90
	.byte	0xe
	.byte	0x15
	.long	0xf64
	.byte	0x44
	.uleb128 0x8
	.long	.LASF91
	.byte	0xe
	.byte	0x16
	.long	0xf6f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF92
	.byte	0xe
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.string	"GV"
	.byte	0x9
	.value	0x7f0
	.long	0x79a
	.uleb128 0x11
	.string	"gv"
	.byte	0x10
	.byte	0xc
	.byte	0x49
	.long	0x7ca
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x4a
	.long	0x10a0
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x4b
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x4c
	.long	0xf64
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"io"
	.byte	0x10
	.byte	0xc
	.byte	0x61
	.long	0x7fa
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0x62
	.long	0x10b8
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0x63
	.long	0xf64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0x64
	.long	0xf64
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x9
	.value	0x7f2
	.long	0x806
	.uleb128 0x13
	.long	.LASF94
	.byte	0x90
	.byte	0xb
	.value	0x1a2
	.long	0x82e
	.uleb128 0x12
	.long	.LASF95
	.byte	0xb
	.value	0x1a3
	.long	0xf64
	.byte	0
	.uleb128 0x12
	.long	.LASF96
	.byte	0xb
	.value	0x1a7
	.long	0x1d52
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF97
	.byte	0x88
	.byte	0xb
	.value	0x130
	.long	0x8a4
	.uleb128 0x12
	.long	.LASF98
	.byte	0xb
	.value	0x131
	.long	0xf59
	.byte	0
	.uleb128 0x12
	.long	.LASF99
	.byte	0xb
	.value	0x132
	.long	0x1c88
	.byte	0x8
	.uleb128 0x12
	.long	.LASF100
	.byte	0xb
	.value	0x133
	.long	0xf59
	.byte	0x10
	.uleb128 0x12
	.long	.LASF101
	.byte	0xb
	.value	0x134
	.long	0xf59
	.byte	0x14
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x135
	.long	0xf59
	.byte	0x18
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x136
	.long	0x1ae5
	.byte	0x20
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0x137
	.long	0xf44
	.byte	0x28
	.uleb128 0x12
	.long	.LASF105
	.byte	0xb
	.value	0x13d
	.long	0x1c5a
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF106
	.byte	0x9
	.value	0x7f5
	.long	0x8b0
	.uleb128 0xc
	.long	.LASF107
	.byte	0x30
	.byte	0xf
	.byte	0x1a
	.long	0x91d
	.uleb128 0x8
	.long	.LASF108
	.byte	0xf
	.byte	0x1b
	.long	0x10be
	.byte	0
	.uleb128 0x8
	.long	.LASF109
	.byte	0xf
	.byte	0x1c
	.long	0x1f01
	.byte	0x8
	.uleb128 0x8
	.long	.LASF110
	.byte	0xf
	.byte	0x1d
	.long	0xf4e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF111
	.byte	0xf
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0x8
	.long	.LASF112
	.byte	0xf
	.byte	0x1f
	.long	0xf44
	.byte	0x13
	.uleb128 0x8
	.long	.LASF113
	.byte	0xf
	.byte	0x20
	.long	0xf8c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF114
	.byte	0xf
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0x8
	.long	.LASF115
	.byte	0xf
	.byte	0x22
	.long	0xf59
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.string	"XPV"
	.byte	0x9
	.value	0x7f7
	.long	0x929
	.uleb128 0x11
	.string	"xpv"
	.byte	0x18
	.byte	0xc
	.byte	0xf9
	.long	0x95a
	.uleb128 0x8
	.long	.LASF116
	.byte	0xc
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF117
	.byte	0xc
	.byte	0xfb
	.long	0x184
	.byte	0x8
	.uleb128 0x8
	.long	.LASF118
	.byte	0xc
	.byte	0xfc
	.long	0x184
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF119
	.byte	0x9
	.value	0x7f8
	.long	0x966
	.uleb128 0xc
	.long	.LASF120
	.byte	0x20
	.byte	0xc
	.byte	0xff
	.long	0x9a7
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x101
	.long	0x184
	.byte	0x8
	.uleb128 0x12
	.long	.LASF118
	.byte	0xc
	.value	0x102
	.long	0x184
	.byte	0x10
	.uleb128 0x12
	.long	.LASF121
	.byte	0xc
	.value	0x103
	.long	0x15c
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF122
	.byte	0x9
	.value	0x7fa
	.long	0x9b3
	.uleb128 0x13
	.long	.LASF123
	.byte	0x28
	.byte	0xc
	.value	0x10d
	.long	0xa02
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x10f
	.long	0x184
	.byte	0x8
	.uleb128 0x12
	.long	.LASF118
	.byte	0xc
	.value	0x110
	.long	0x184
	.byte	0x10
	.uleb128 0x12
	.long	.LASF121
	.byte	0xc
	.value	0x111
	.long	0x15c
	.byte	0x18
	.uleb128 0x12
	.long	.LASF124
	.byte	0xc
	.value	0x112
	.long	0x172
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF125
	.byte	0x9
	.value	0x7fd
	.long	0xa0e
	.uleb128 0xc
	.long	.LASF126
	.byte	0x50
	.byte	0x10
	.byte	0xb
	.long	0xa93
	.uleb128 0x8
	.long	.LASF127
	.byte	0x10
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF128
	.byte	0x10
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF129
	.byte	0x10
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0x8
	.long	.LASF130
	.byte	0x10
	.byte	0xf
	.long	0x15c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF124
	.byte	0x10
	.byte	0x10
	.long	0x172
	.byte	0x20
	.uleb128 0x8
	.long	.LASF131
	.byte	0x10
	.byte	0x11
	.long	0x10be
	.byte	0x28
	.uleb128 0x8
	.long	.LASF132
	.byte	0x10
	.byte	0x12
	.long	0x10c4
	.byte	0x30
	.uleb128 0x8
	.long	.LASF133
	.byte	0x10
	.byte	0x14
	.long	0x1c54
	.byte	0x38
	.uleb128 0x8
	.long	.LASF134
	.byte	0x10
	.byte	0x15
	.long	0xf8c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF135
	.byte	0x10
	.byte	0x16
	.long	0xf44
	.byte	0x48
	.byte	0
	.uleb128 0x10
	.long	.LASF136
	.byte	0x9
	.value	0x7fe
	.long	0xa9f
	.uleb128 0xc
	.long	.LASF137
	.byte	0x58
	.byte	0x11
	.byte	0x22
	.long	0xb30
	.uleb128 0x8
	.long	.LASF138
	.byte	0x11
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0x11
	.byte	0x24
	.long	0x184
	.byte	0x8
	.uleb128 0x8
	.long	.LASF140
	.byte	0x11
	.byte	0x25
	.long	0x184
	.byte	0x10
	.uleb128 0x8
	.long	.LASF141
	.byte	0x11
	.byte	0x26
	.long	0x15c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF124
	.byte	0x11
	.byte	0x27
	.long	0x172
	.byte	0x20
	.uleb128 0x8
	.long	.LASF131
	.byte	0x11
	.byte	0x29
	.long	0x10be
	.byte	0x28
	.uleb128 0x8
	.long	.LASF132
	.byte	0x11
	.byte	0x2a
	.long	0x10c4
	.byte	0x30
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x2c
	.long	0xf59
	.byte	0x38
	.uleb128 0x8
	.long	.LASF143
	.byte	0x11
	.byte	0x2d
	.long	0x1e78
	.byte	0x40
	.uleb128 0x8
	.long	.LASF144
	.byte	0x11
	.byte	0x2e
	.long	0x1ae5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF145
	.byte	0x11
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LASF146
	.byte	0x9
	.value	0x7ff
	.long	0xb3c
	.uleb128 0x13
	.long	.LASF147
	.byte	0x60
	.byte	0xc
	.value	0x130
	.long	0xbe6
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x132
	.long	0x184
	.byte	0x8
	.uleb128 0x12
	.long	.LASF118
	.byte	0xc
	.value	0x133
	.long	0x184
	.byte	0x10
	.uleb128 0x12
	.long	.LASF121
	.byte	0xc
	.value	0x134
	.long	0x15c
	.byte	0x18
	.uleb128 0x12
	.long	.LASF124
	.byte	0xc
	.value	0x135
	.long	0x172
	.byte	0x20
	.uleb128 0x12
	.long	.LASF131
	.byte	0xc
	.value	0x136
	.long	0x10be
	.byte	0x28
	.uleb128 0x12
	.long	.LASF132
	.byte	0xc
	.value	0x137
	.long	0x10c4
	.byte	0x30
	.uleb128 0x12
	.long	.LASF148
	.byte	0xc
	.value	0x139
	.long	0x10ca
	.byte	0x38
	.uleb128 0x12
	.long	.LASF149
	.byte	0xc
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x12
	.long	.LASF150
	.byte	0xc
	.value	0x13b
	.long	0x184
	.byte	0x48
	.uleb128 0x12
	.long	.LASF151
	.byte	0xc
	.value	0x13c
	.long	0x10c4
	.byte	0x50
	.uleb128 0x12
	.long	.LASF152
	.byte	0xc
	.value	0x13d
	.long	0xf44
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF153
	.byte	0x9
	.value	0x800
	.long	0xbf2
	.uleb128 0xc
	.long	.LASF154
	.byte	0x90
	.byte	0x12
	.byte	0xe
	.long	0xce3
	.uleb128 0x8
	.long	.LASF116
	.byte	0x12
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF117
	.byte	0x12
	.byte	0x10
	.long	0x184
	.byte	0x8
	.uleb128 0x8
	.long	.LASF118
	.byte	0x12
	.byte	0x11
	.long	0x184
	.byte	0x10
	.uleb128 0x8
	.long	.LASF130
	.byte	0x12
	.byte	0x12
	.long	0x15c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF124
	.byte	0x12
	.byte	0x13
	.long	0x172
	.byte	0x20
	.uleb128 0x8
	.long	.LASF131
	.byte	0x12
	.byte	0x14
	.long	0x10be
	.byte	0x28
	.uleb128 0x8
	.long	.LASF132
	.byte	0x12
	.byte	0x15
	.long	0x10c4
	.byte	0x30
	.uleb128 0x8
	.long	.LASF155
	.byte	0x12
	.byte	0x17
	.long	0x10c4
	.byte	0x38
	.uleb128 0x8
	.long	.LASF156
	.byte	0x12
	.byte	0x18
	.long	0x10dc
	.byte	0x40
	.uleb128 0x8
	.long	.LASF157
	.byte	0x12
	.byte	0x19
	.long	0x10dc
	.byte	0x48
	.uleb128 0x8
	.long	.LASF158
	.byte	0x12
	.byte	0x1a
	.long	0x10f3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF159
	.byte	0x12
	.byte	0x1b
	.long	0xe95
	.byte	0x58
	.uleb128 0x8
	.long	.LASF160
	.byte	0x12
	.byte	0x1c
	.long	0x10f9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF161
	.byte	0x12
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0x8
	.long	.LASF162
	.byte	0x12
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF163
	.byte	0x12
	.byte	0x1f
	.long	0x1160
	.byte	0x78
	.uleb128 0x8
	.long	.LASF164
	.byte	0x12
	.byte	0x20
	.long	0x10ed
	.byte	0x80
	.uleb128 0x8
	.long	.LASF165
	.byte	0x12
	.byte	0x25
	.long	0x10d0
	.byte	0x88
	.uleb128 0x8
	.long	.LASF166
	.byte	0x12
	.byte	0x26
	.long	0xf64
	.byte	0x8c
	.byte	0
	.uleb128 0x10
	.long	.LASF167
	.byte	0x9
	.value	0x803
	.long	0xcef
	.uleb128 0x13
	.long	.LASF168
	.byte	0xa8
	.byte	0xc
	.value	0x170
	.long	0xe28
	.uleb128 0x12
	.long	.LASF116
	.byte	0xc
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x12
	.long	.LASF117
	.byte	0xc
	.value	0x172
	.long	0x184
	.byte	0x8
	.uleb128 0x12
	.long	.LASF118
	.byte	0xc
	.value	0x173
	.long	0x184
	.byte	0x10
	.uleb128 0x12
	.long	.LASF121
	.byte	0xc
	.value	0x174
	.long	0x15c
	.byte	0x18
	.uleb128 0x12
	.long	.LASF124
	.byte	0xc
	.value	0x175
	.long	0x172
	.byte	0x20
	.uleb128 0x12
	.long	.LASF131
	.byte	0xc
	.value	0x176
	.long	0x10be
	.byte	0x28
	.uleb128 0x12
	.long	.LASF132
	.byte	0xc
	.value	0x177
	.long	0x10c4
	.byte	0x30
	.uleb128 0x12
	.long	.LASF169
	.byte	0xc
	.value	0x179
	.long	0x112d
	.byte	0x38
	.uleb128 0x12
	.long	.LASF170
	.byte	0xc
	.value	0x17a
	.long	0x112d
	.byte	0x40
	.uleb128 0x12
	.long	.LASF171
	.byte	0xc
	.value	0x187
	.long	0x1105
	.byte	0x48
	.uleb128 0x12
	.long	.LASF172
	.byte	0xc
	.value	0x188
	.long	0x15c
	.byte	0x50
	.uleb128 0x12
	.long	.LASF173
	.byte	0xc
	.value	0x189
	.long	0x15c
	.byte	0x58
	.uleb128 0x12
	.long	.LASF174
	.byte	0xc
	.value	0x18a
	.long	0x15c
	.byte	0x60
	.uleb128 0x12
	.long	.LASF175
	.byte	0xc
	.value	0x18b
	.long	0x15c
	.byte	0x68
	.uleb128 0x12
	.long	.LASF176
	.byte	0xc
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x12
	.long	.LASF177
	.byte	0xc
	.value	0x18d
	.long	0x10f9
	.byte	0x78
	.uleb128 0x12
	.long	.LASF178
	.byte	0xc
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x12
	.long	.LASF179
	.byte	0xc
	.value	0x18f
	.long	0x10f9
	.byte	0x88
	.uleb128 0x12
	.long	.LASF180
	.byte	0xc
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x12
	.long	.LASF181
	.byte	0xc
	.value	0x191
	.long	0x10f9
	.byte	0x98
	.uleb128 0x12
	.long	.LASF182
	.byte	0xc
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF183
	.byte	0xc
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x12
	.long	.LASF184
	.byte	0xc
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0x10
	.long	.LASF185
	.byte	0x9
	.value	0x804
	.long	0xe34
	.uleb128 0xc
	.long	.LASF186
	.byte	0x38
	.byte	0xf
	.byte	0xe
	.long	0xe95
	.uleb128 0x8
	.long	.LASF187
	.byte	0xf
	.byte	0xf
	.long	0x1e98
	.byte	0
	.uleb128 0x8
	.long	.LASF188
	.byte	0xf
	.byte	0x10
	.long	0x1e98
	.byte	0x8
	.uleb128 0x8
	.long	.LASF189
	.byte	0xf
	.byte	0x11
	.long	0x1eb2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF190
	.byte	0xf
	.byte	0x12
	.long	0x1e98
	.byte	0x18
	.uleb128 0x8
	.long	.LASF191
	.byte	0xf
	.byte	0x13
	.long	0x1e98
	.byte	0x20
	.uleb128 0x8
	.long	.LASF192
	.byte	0xf
	.byte	0x14
	.long	0x1edb
	.byte	0x28
	.uleb128 0x8
	.long	.LASF193
	.byte	0xf
	.byte	0x16
	.long	0x1efb
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.string	"ANY"
	.byte	0x9
	.value	0x805
	.long	0xea1
	.uleb128 0x14
	.string	"any"
	.byte	0x8
	.byte	0x9
	.value	0x9f1
	.long	0xf03
	.uleb128 0x15
	.long	.LASF194
	.byte	0x9
	.value	0x9f2
	.long	0x6c
	.uleb128 0x15
	.long	.LASF195
	.byte	0x9
	.value	0x9f3
	.long	0xf59
	.uleb128 0x15
	.long	.LASF196
	.byte	0x9
	.value	0x9f4
	.long	0x15c
	.uleb128 0x15
	.long	.LASF197
	.byte	0x9
	.value	0x9f5
	.long	0x5e
	.uleb128 0x15
	.long	.LASF198
	.byte	0x9
	.value	0x9f6
	.long	0x7f
	.uleb128 0x15
	.long	.LASF199
	.byte	0x9
	.value	0x9f7
	.long	0xf86
	.uleb128 0x15
	.long	.LASF200
	.byte	0x9
	.value	0x9f8
	.long	0xf86
	.byte	0
	.uleb128 0x10
	.long	.LASF201
	.byte	0x9
	.value	0x808
	.long	0xf0f
	.uleb128 0x13
	.long	.LASF202
	.byte	0x18
	.byte	0xc
	.value	0x4ed
	.long	0xf44
	.uleb128 0x12
	.long	.LASF203
	.byte	0xc
	.value	0x4ee
	.long	0x10ff
	.byte	0
	.uleb128 0x12
	.long	.LASF204
	.byte	0xc
	.value	0x4ef
	.long	0x167
	.byte	0x8
	.uleb128 0x12
	.long	.LASF205
	.byte	0xc
	.value	0x4f0
	.long	0x1133
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"U8"
	.byte	0x13
	.byte	0x85
	.long	0x2d
	.uleb128 0xd
	.string	"U16"
	.byte	0x13
	.byte	0x87
	.long	0x34
	.uleb128 0xd
	.string	"I32"
	.byte	0x13
	.byte	0x88
	.long	0x57
	.uleb128 0xd
	.string	"U32"
	.byte	0x13
	.byte	0x89
	.long	0x3b
	.uleb128 0x10
	.long	.LASF206
	.byte	0x13
	.value	0x209
	.long	0xf64
	.uleb128 0x16
	.long	0xf86
	.uleb128 0x17
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf7b
	.uleb128 0x6
	.byte	0x8
	.long	0x517
	.uleb128 0x9
	.long	0x7f
	.long	0xfa2
	.uleb128 0xa
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF207
	.byte	0x14
	.byte	0x63
	.long	0xfad
	.uleb128 0xe
	.long	.LASF209
	.uleb128 0x5
	.long	.LASF210
	.byte	0x14
	.byte	0x65
	.long	0xfbd
	.uleb128 0x6
	.byte	0x8
	.long	0xfa2
	.uleb128 0xc
	.long	.LASF211
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.long	0xff4
	.uleb128 0x8
	.long	.LASF204
	.byte	0xd
	.byte	0x14
	.long	0xf44
	.byte	0
	.uleb128 0x8
	.long	.LASF212
	.byte	0xd
	.byte	0x15
	.long	0xf44
	.byte	0x1
	.uleb128 0x8
	.long	.LASF213
	.byte	0xd
	.byte	0x16
	.long	0xf4e
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF211
	.byte	0xd
	.byte	0x19
	.long	0xfc3
	.uleb128 0x6
	.byte	0x8
	.long	0xf59
	.uleb128 0x6
	.byte	0x8
	.long	0xff4
	.uleb128 0xe
	.long	.LASF214
	.uleb128 0x6
	.byte	0x8
	.long	0x100b
	.uleb128 0xe
	.long	.LASF215
	.uleb128 0x6
	.byte	0x8
	.long	0x1016
	.uleb128 0x6
	.byte	0x8
	.long	0xf64
	.uleb128 0x9
	.long	0xff4
	.long	0x1037
	.uleb128 0xa
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.long	0x10a0
	.uleb128 0x19
	.long	.LASF216
	.sleb128 0
	.uleb128 0x19
	.long	.LASF217
	.sleb128 1
	.uleb128 0x19
	.long	.LASF218
	.sleb128 2
	.uleb128 0x19
	.long	.LASF219
	.sleb128 3
	.uleb128 0x19
	.long	.LASF220
	.sleb128 4
	.uleb128 0x19
	.long	.LASF221
	.sleb128 5
	.uleb128 0x19
	.long	.LASF222
	.sleb128 6
	.uleb128 0x19
	.long	.LASF223
	.sleb128 7
	.uleb128 0x19
	.long	.LASF224
	.sleb128 8
	.uleb128 0x19
	.long	.LASF225
	.sleb128 9
	.uleb128 0x19
	.long	.LASF226
	.sleb128 10
	.uleb128 0x19
	.long	.LASF227
	.sleb128 11
	.uleb128 0x19
	.long	.LASF228
	.sleb128 12
	.uleb128 0x19
	.long	.LASF229
	.sleb128 13
	.uleb128 0x19
	.long	.LASF230
	.sleb128 14
	.uleb128 0x19
	.long	.LASF231
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb30
	.uleb128 0x6
	.byte	0x8
	.long	0xbe6
	.uleb128 0x6
	.byte	0x8
	.long	0xa02
	.uleb128 0x6
	.byte	0x8
	.long	0xa93
	.uleb128 0x6
	.byte	0x8
	.long	0xce3
	.uleb128 0x6
	.byte	0x8
	.long	0x8a4
	.uleb128 0x6
	.byte	0x8
	.long	0x58d
	.uleb128 0x6
	.byte	0x8
	.long	0x6e8
	.uleb128 0x10
	.long	.LASF232
	.byte	0xc
	.value	0x150
	.long	0xf4e
	.uleb128 0x6
	.byte	0x8
	.long	0x190
	.uleb128 0x16
	.long	0x10ed
	.uleb128 0x17
	.long	0x10ed
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c8
	.uleb128 0x6
	.byte	0x8
	.long	0x10e2
	.uleb128 0x6
	.byte	0x8
	.long	0x78f
	.uleb128 0x6
	.byte	0x8
	.long	0x552
	.uleb128 0x1a
	.byte	0x8
	.byte	0xc
	.value	0x184
	.long	0x1127
	.uleb128 0x15
	.long	.LASF233
	.byte	0xc
	.value	0x185
	.long	0x1127
	.uleb128 0x15
	.long	.LASF234
	.byte	0xc
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14c
	.uleb128 0x6
	.byte	0x8
	.long	0xfb2
	.uleb128 0x6
	.byte	0x8
	.long	0x4f0
	.uleb128 0x6
	.byte	0x8
	.long	0x7ca
	.uleb128 0x5
	.long	.LASF235
	.byte	0x15
	.byte	0x13
	.long	0x552
	.uleb128 0xd
	.string	"PAD"
	.byte	0x15
	.byte	0x14
	.long	0x552
	.uleb128 0x5
	.long	.LASF236
	.byte	0x15
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x113f
	.uleb128 0x1b
	.long	.LASF849
	.byte	0x4
	.byte	0x1a
	.byte	0xf
	.long	0x1ada
	.uleb128 0x19
	.long	.LASF237
	.sleb128 0
	.uleb128 0x19
	.long	.LASF238
	.sleb128 1
	.uleb128 0x19
	.long	.LASF239
	.sleb128 2
	.uleb128 0x19
	.long	.LASF240
	.sleb128 3
	.uleb128 0x19
	.long	.LASF241
	.sleb128 4
	.uleb128 0x19
	.long	.LASF242
	.sleb128 5
	.uleb128 0x19
	.long	.LASF243
	.sleb128 6
	.uleb128 0x19
	.long	.LASF244
	.sleb128 7
	.uleb128 0x19
	.long	.LASF245
	.sleb128 8
	.uleb128 0x19
	.long	.LASF246
	.sleb128 9
	.uleb128 0x19
	.long	.LASF247
	.sleb128 10
	.uleb128 0x19
	.long	.LASF248
	.sleb128 11
	.uleb128 0x19
	.long	.LASF249
	.sleb128 12
	.uleb128 0x19
	.long	.LASF250
	.sleb128 13
	.uleb128 0x19
	.long	.LASF251
	.sleb128 14
	.uleb128 0x19
	.long	.LASF252
	.sleb128 15
	.uleb128 0x19
	.long	.LASF253
	.sleb128 16
	.uleb128 0x19
	.long	.LASF254
	.sleb128 17
	.uleb128 0x19
	.long	.LASF255
	.sleb128 18
	.uleb128 0x19
	.long	.LASF256
	.sleb128 19
	.uleb128 0x19
	.long	.LASF257
	.sleb128 20
	.uleb128 0x19
	.long	.LASF258
	.sleb128 21
	.uleb128 0x19
	.long	.LASF259
	.sleb128 22
	.uleb128 0x19
	.long	.LASF260
	.sleb128 23
	.uleb128 0x19
	.long	.LASF261
	.sleb128 24
	.uleb128 0x19
	.long	.LASF262
	.sleb128 25
	.uleb128 0x19
	.long	.LASF263
	.sleb128 26
	.uleb128 0x19
	.long	.LASF264
	.sleb128 27
	.uleb128 0x19
	.long	.LASF265
	.sleb128 28
	.uleb128 0x19
	.long	.LASF266
	.sleb128 29
	.uleb128 0x19
	.long	.LASF267
	.sleb128 30
	.uleb128 0x19
	.long	.LASF268
	.sleb128 31
	.uleb128 0x19
	.long	.LASF269
	.sleb128 32
	.uleb128 0x19
	.long	.LASF270
	.sleb128 33
	.uleb128 0x19
	.long	.LASF271
	.sleb128 34
	.uleb128 0x19
	.long	.LASF272
	.sleb128 35
	.uleb128 0x19
	.long	.LASF273
	.sleb128 36
	.uleb128 0x19
	.long	.LASF274
	.sleb128 37
	.uleb128 0x19
	.long	.LASF275
	.sleb128 38
	.uleb128 0x19
	.long	.LASF276
	.sleb128 39
	.uleb128 0x19
	.long	.LASF277
	.sleb128 40
	.uleb128 0x19
	.long	.LASF278
	.sleb128 41
	.uleb128 0x19
	.long	.LASF279
	.sleb128 42
	.uleb128 0x19
	.long	.LASF280
	.sleb128 43
	.uleb128 0x19
	.long	.LASF281
	.sleb128 44
	.uleb128 0x19
	.long	.LASF282
	.sleb128 45
	.uleb128 0x19
	.long	.LASF283
	.sleb128 46
	.uleb128 0x19
	.long	.LASF284
	.sleb128 47
	.uleb128 0x19
	.long	.LASF285
	.sleb128 48
	.uleb128 0x19
	.long	.LASF286
	.sleb128 49
	.uleb128 0x19
	.long	.LASF287
	.sleb128 50
	.uleb128 0x19
	.long	.LASF288
	.sleb128 51
	.uleb128 0x19
	.long	.LASF289
	.sleb128 52
	.uleb128 0x19
	.long	.LASF290
	.sleb128 53
	.uleb128 0x19
	.long	.LASF291
	.sleb128 54
	.uleb128 0x19
	.long	.LASF292
	.sleb128 55
	.uleb128 0x19
	.long	.LASF293
	.sleb128 56
	.uleb128 0x19
	.long	.LASF294
	.sleb128 57
	.uleb128 0x19
	.long	.LASF295
	.sleb128 58
	.uleb128 0x19
	.long	.LASF296
	.sleb128 59
	.uleb128 0x19
	.long	.LASF297
	.sleb128 60
	.uleb128 0x19
	.long	.LASF298
	.sleb128 61
	.uleb128 0x19
	.long	.LASF299
	.sleb128 62
	.uleb128 0x19
	.long	.LASF300
	.sleb128 63
	.uleb128 0x19
	.long	.LASF301
	.sleb128 64
	.uleb128 0x19
	.long	.LASF302
	.sleb128 65
	.uleb128 0x19
	.long	.LASF303
	.sleb128 66
	.uleb128 0x19
	.long	.LASF304
	.sleb128 67
	.uleb128 0x19
	.long	.LASF305
	.sleb128 68
	.uleb128 0x19
	.long	.LASF306
	.sleb128 69
	.uleb128 0x19
	.long	.LASF307
	.sleb128 70
	.uleb128 0x19
	.long	.LASF308
	.sleb128 71
	.uleb128 0x19
	.long	.LASF309
	.sleb128 72
	.uleb128 0x19
	.long	.LASF310
	.sleb128 73
	.uleb128 0x19
	.long	.LASF311
	.sleb128 74
	.uleb128 0x19
	.long	.LASF312
	.sleb128 75
	.uleb128 0x19
	.long	.LASF313
	.sleb128 76
	.uleb128 0x19
	.long	.LASF314
	.sleb128 77
	.uleb128 0x19
	.long	.LASF315
	.sleb128 78
	.uleb128 0x19
	.long	.LASF316
	.sleb128 79
	.uleb128 0x19
	.long	.LASF317
	.sleb128 80
	.uleb128 0x19
	.long	.LASF318
	.sleb128 81
	.uleb128 0x19
	.long	.LASF319
	.sleb128 82
	.uleb128 0x19
	.long	.LASF320
	.sleb128 83
	.uleb128 0x19
	.long	.LASF321
	.sleb128 84
	.uleb128 0x19
	.long	.LASF322
	.sleb128 85
	.uleb128 0x19
	.long	.LASF323
	.sleb128 86
	.uleb128 0x19
	.long	.LASF324
	.sleb128 87
	.uleb128 0x19
	.long	.LASF325
	.sleb128 88
	.uleb128 0x19
	.long	.LASF326
	.sleb128 89
	.uleb128 0x19
	.long	.LASF327
	.sleb128 90
	.uleb128 0x19
	.long	.LASF328
	.sleb128 91
	.uleb128 0x19
	.long	.LASF329
	.sleb128 92
	.uleb128 0x19
	.long	.LASF330
	.sleb128 93
	.uleb128 0x19
	.long	.LASF331
	.sleb128 94
	.uleb128 0x19
	.long	.LASF332
	.sleb128 95
	.uleb128 0x19
	.long	.LASF333
	.sleb128 96
	.uleb128 0x19
	.long	.LASF334
	.sleb128 97
	.uleb128 0x19
	.long	.LASF335
	.sleb128 98
	.uleb128 0x19
	.long	.LASF336
	.sleb128 99
	.uleb128 0x19
	.long	.LASF337
	.sleb128 100
	.uleb128 0x19
	.long	.LASF338
	.sleb128 101
	.uleb128 0x19
	.long	.LASF339
	.sleb128 102
	.uleb128 0x19
	.long	.LASF340
	.sleb128 103
	.uleb128 0x19
	.long	.LASF341
	.sleb128 104
	.uleb128 0x19
	.long	.LASF342
	.sleb128 105
	.uleb128 0x19
	.long	.LASF343
	.sleb128 106
	.uleb128 0x19
	.long	.LASF344
	.sleb128 107
	.uleb128 0x19
	.long	.LASF345
	.sleb128 108
	.uleb128 0x19
	.long	.LASF346
	.sleb128 109
	.uleb128 0x19
	.long	.LASF347
	.sleb128 110
	.uleb128 0x19
	.long	.LASF348
	.sleb128 111
	.uleb128 0x19
	.long	.LASF349
	.sleb128 112
	.uleb128 0x19
	.long	.LASF350
	.sleb128 113
	.uleb128 0x19
	.long	.LASF351
	.sleb128 114
	.uleb128 0x19
	.long	.LASF352
	.sleb128 115
	.uleb128 0x19
	.long	.LASF353
	.sleb128 116
	.uleb128 0x19
	.long	.LASF354
	.sleb128 117
	.uleb128 0x19
	.long	.LASF355
	.sleb128 118
	.uleb128 0x19
	.long	.LASF356
	.sleb128 119
	.uleb128 0x19
	.long	.LASF357
	.sleb128 120
	.uleb128 0x19
	.long	.LASF358
	.sleb128 121
	.uleb128 0x19
	.long	.LASF359
	.sleb128 122
	.uleb128 0x19
	.long	.LASF360
	.sleb128 123
	.uleb128 0x19
	.long	.LASF361
	.sleb128 124
	.uleb128 0x19
	.long	.LASF362
	.sleb128 125
	.uleb128 0x19
	.long	.LASF363
	.sleb128 126
	.uleb128 0x19
	.long	.LASF364
	.sleb128 127
	.uleb128 0x19
	.long	.LASF365
	.sleb128 128
	.uleb128 0x19
	.long	.LASF366
	.sleb128 129
	.uleb128 0x19
	.long	.LASF367
	.sleb128 130
	.uleb128 0x19
	.long	.LASF368
	.sleb128 131
	.uleb128 0x19
	.long	.LASF369
	.sleb128 132
	.uleb128 0x19
	.long	.LASF370
	.sleb128 133
	.uleb128 0x19
	.long	.LASF371
	.sleb128 134
	.uleb128 0x19
	.long	.LASF372
	.sleb128 135
	.uleb128 0x19
	.long	.LASF373
	.sleb128 136
	.uleb128 0x19
	.long	.LASF374
	.sleb128 137
	.uleb128 0x19
	.long	.LASF375
	.sleb128 138
	.uleb128 0x19
	.long	.LASF376
	.sleb128 139
	.uleb128 0x19
	.long	.LASF377
	.sleb128 140
	.uleb128 0x19
	.long	.LASF378
	.sleb128 141
	.uleb128 0x19
	.long	.LASF379
	.sleb128 142
	.uleb128 0x19
	.long	.LASF380
	.sleb128 143
	.uleb128 0x19
	.long	.LASF381
	.sleb128 144
	.uleb128 0x19
	.long	.LASF382
	.sleb128 145
	.uleb128 0x19
	.long	.LASF383
	.sleb128 146
	.uleb128 0x19
	.long	.LASF384
	.sleb128 147
	.uleb128 0x19
	.long	.LASF385
	.sleb128 148
	.uleb128 0x19
	.long	.LASF386
	.sleb128 149
	.uleb128 0x19
	.long	.LASF387
	.sleb128 150
	.uleb128 0x19
	.long	.LASF388
	.sleb128 151
	.uleb128 0x19
	.long	.LASF389
	.sleb128 152
	.uleb128 0x19
	.long	.LASF390
	.sleb128 153
	.uleb128 0x19
	.long	.LASF391
	.sleb128 154
	.uleb128 0x19
	.long	.LASF392
	.sleb128 155
	.uleb128 0x19
	.long	.LASF393
	.sleb128 156
	.uleb128 0x19
	.long	.LASF394
	.sleb128 157
	.uleb128 0x19
	.long	.LASF395
	.sleb128 158
	.uleb128 0x19
	.long	.LASF396
	.sleb128 159
	.uleb128 0x19
	.long	.LASF397
	.sleb128 160
	.uleb128 0x19
	.long	.LASF398
	.sleb128 161
	.uleb128 0x19
	.long	.LASF399
	.sleb128 162
	.uleb128 0x19
	.long	.LASF400
	.sleb128 163
	.uleb128 0x19
	.long	.LASF401
	.sleb128 164
	.uleb128 0x19
	.long	.LASF402
	.sleb128 165
	.uleb128 0x19
	.long	.LASF403
	.sleb128 166
	.uleb128 0x19
	.long	.LASF404
	.sleb128 167
	.uleb128 0x19
	.long	.LASF405
	.sleb128 168
	.uleb128 0x19
	.long	.LASF406
	.sleb128 169
	.uleb128 0x19
	.long	.LASF407
	.sleb128 170
	.uleb128 0x19
	.long	.LASF408
	.sleb128 171
	.uleb128 0x19
	.long	.LASF409
	.sleb128 172
	.uleb128 0x19
	.long	.LASF410
	.sleb128 173
	.uleb128 0x19
	.long	.LASF411
	.sleb128 174
	.uleb128 0x19
	.long	.LASF412
	.sleb128 175
	.uleb128 0x19
	.long	.LASF413
	.sleb128 176
	.uleb128 0x19
	.long	.LASF414
	.sleb128 177
	.uleb128 0x19
	.long	.LASF415
	.sleb128 178
	.uleb128 0x19
	.long	.LASF416
	.sleb128 179
	.uleb128 0x19
	.long	.LASF417
	.sleb128 180
	.uleb128 0x19
	.long	.LASF418
	.sleb128 181
	.uleb128 0x19
	.long	.LASF419
	.sleb128 182
	.uleb128 0x19
	.long	.LASF420
	.sleb128 183
	.uleb128 0x19
	.long	.LASF421
	.sleb128 184
	.uleb128 0x19
	.long	.LASF422
	.sleb128 185
	.uleb128 0x19
	.long	.LASF423
	.sleb128 186
	.uleb128 0x19
	.long	.LASF424
	.sleb128 187
	.uleb128 0x19
	.long	.LASF425
	.sleb128 188
	.uleb128 0x19
	.long	.LASF426
	.sleb128 189
	.uleb128 0x19
	.long	.LASF427
	.sleb128 190
	.uleb128 0x19
	.long	.LASF428
	.sleb128 191
	.uleb128 0x19
	.long	.LASF429
	.sleb128 192
	.uleb128 0x19
	.long	.LASF430
	.sleb128 193
	.uleb128 0x19
	.long	.LASF431
	.sleb128 194
	.uleb128 0x19
	.long	.LASF432
	.sleb128 195
	.uleb128 0x19
	.long	.LASF433
	.sleb128 196
	.uleb128 0x19
	.long	.LASF434
	.sleb128 197
	.uleb128 0x19
	.long	.LASF435
	.sleb128 198
	.uleb128 0x19
	.long	.LASF436
	.sleb128 199
	.uleb128 0x19
	.long	.LASF437
	.sleb128 200
	.uleb128 0x19
	.long	.LASF438
	.sleb128 201
	.uleb128 0x19
	.long	.LASF439
	.sleb128 202
	.uleb128 0x19
	.long	.LASF440
	.sleb128 203
	.uleb128 0x19
	.long	.LASF441
	.sleb128 204
	.uleb128 0x19
	.long	.LASF442
	.sleb128 205
	.uleb128 0x19
	.long	.LASF443
	.sleb128 206
	.uleb128 0x19
	.long	.LASF444
	.sleb128 207
	.uleb128 0x19
	.long	.LASF445
	.sleb128 208
	.uleb128 0x19
	.long	.LASF446
	.sleb128 209
	.uleb128 0x19
	.long	.LASF447
	.sleb128 210
	.uleb128 0x19
	.long	.LASF448
	.sleb128 211
	.uleb128 0x19
	.long	.LASF449
	.sleb128 212
	.uleb128 0x19
	.long	.LASF450
	.sleb128 213
	.uleb128 0x19
	.long	.LASF451
	.sleb128 214
	.uleb128 0x19
	.long	.LASF452
	.sleb128 215
	.uleb128 0x19
	.long	.LASF453
	.sleb128 216
	.uleb128 0x19
	.long	.LASF454
	.sleb128 217
	.uleb128 0x19
	.long	.LASF455
	.sleb128 218
	.uleb128 0x19
	.long	.LASF456
	.sleb128 219
	.uleb128 0x19
	.long	.LASF457
	.sleb128 220
	.uleb128 0x19
	.long	.LASF458
	.sleb128 221
	.uleb128 0x19
	.long	.LASF459
	.sleb128 222
	.uleb128 0x19
	.long	.LASF460
	.sleb128 223
	.uleb128 0x19
	.long	.LASF461
	.sleb128 224
	.uleb128 0x19
	.long	.LASF462
	.sleb128 225
	.uleb128 0x19
	.long	.LASF463
	.sleb128 226
	.uleb128 0x19
	.long	.LASF464
	.sleb128 227
	.uleb128 0x19
	.long	.LASF465
	.sleb128 228
	.uleb128 0x19
	.long	.LASF466
	.sleb128 229
	.uleb128 0x19
	.long	.LASF467
	.sleb128 230
	.uleb128 0x19
	.long	.LASF468
	.sleb128 231
	.uleb128 0x19
	.long	.LASF469
	.sleb128 232
	.uleb128 0x19
	.long	.LASF470
	.sleb128 233
	.uleb128 0x19
	.long	.LASF471
	.sleb128 234
	.uleb128 0x19
	.long	.LASF472
	.sleb128 235
	.uleb128 0x19
	.long	.LASF473
	.sleb128 236
	.uleb128 0x19
	.long	.LASF474
	.sleb128 237
	.uleb128 0x19
	.long	.LASF475
	.sleb128 238
	.uleb128 0x19
	.long	.LASF476
	.sleb128 239
	.uleb128 0x19
	.long	.LASF477
	.sleb128 240
	.uleb128 0x19
	.long	.LASF478
	.sleb128 241
	.uleb128 0x19
	.long	.LASF479
	.sleb128 242
	.uleb128 0x19
	.long	.LASF480
	.sleb128 243
	.uleb128 0x19
	.long	.LASF481
	.sleb128 244
	.uleb128 0x19
	.long	.LASF482
	.sleb128 245
	.uleb128 0x19
	.long	.LASF483
	.sleb128 246
	.uleb128 0x19
	.long	.LASF484
	.sleb128 247
	.uleb128 0x19
	.long	.LASF485
	.sleb128 248
	.uleb128 0x19
	.long	.LASF486
	.sleb128 249
	.uleb128 0x19
	.long	.LASF487
	.sleb128 250
	.uleb128 0x19
	.long	.LASF488
	.sleb128 251
	.uleb128 0x19
	.long	.LASF489
	.sleb128 252
	.uleb128 0x19
	.long	.LASF490
	.sleb128 253
	.uleb128 0x19
	.long	.LASF491
	.sleb128 254
	.uleb128 0x19
	.long	.LASF492
	.sleb128 255
	.uleb128 0x19
	.long	.LASF493
	.sleb128 256
	.uleb128 0x19
	.long	.LASF494
	.sleb128 257
	.uleb128 0x19
	.long	.LASF495
	.sleb128 258
	.uleb128 0x19
	.long	.LASF496
	.sleb128 259
	.uleb128 0x19
	.long	.LASF497
	.sleb128 260
	.uleb128 0x19
	.long	.LASF498
	.sleb128 261
	.uleb128 0x19
	.long	.LASF499
	.sleb128 262
	.uleb128 0x19
	.long	.LASF500
	.sleb128 263
	.uleb128 0x19
	.long	.LASF501
	.sleb128 264
	.uleb128 0x19
	.long	.LASF502
	.sleb128 265
	.uleb128 0x19
	.long	.LASF503
	.sleb128 266
	.uleb128 0x19
	.long	.LASF504
	.sleb128 267
	.uleb128 0x19
	.long	.LASF505
	.sleb128 268
	.uleb128 0x19
	.long	.LASF506
	.sleb128 269
	.uleb128 0x19
	.long	.LASF507
	.sleb128 270
	.uleb128 0x19
	.long	.LASF508
	.sleb128 271
	.uleb128 0x19
	.long	.LASF509
	.sleb128 272
	.uleb128 0x19
	.long	.LASF510
	.sleb128 273
	.uleb128 0x19
	.long	.LASF511
	.sleb128 274
	.uleb128 0x19
	.long	.LASF512
	.sleb128 275
	.uleb128 0x19
	.long	.LASF513
	.sleb128 276
	.uleb128 0x19
	.long	.LASF514
	.sleb128 277
	.uleb128 0x19
	.long	.LASF515
	.sleb128 278
	.uleb128 0x19
	.long	.LASF516
	.sleb128 279
	.uleb128 0x19
	.long	.LASF517
	.sleb128 280
	.uleb128 0x19
	.long	.LASF518
	.sleb128 281
	.uleb128 0x19
	.long	.LASF519
	.sleb128 282
	.uleb128 0x19
	.long	.LASF520
	.sleb128 283
	.uleb128 0x19
	.long	.LASF521
	.sleb128 284
	.uleb128 0x19
	.long	.LASF522
	.sleb128 285
	.uleb128 0x19
	.long	.LASF523
	.sleb128 286
	.uleb128 0x19
	.long	.LASF524
	.sleb128 287
	.uleb128 0x19
	.long	.LASF525
	.sleb128 288
	.uleb128 0x19
	.long	.LASF526
	.sleb128 289
	.uleb128 0x19
	.long	.LASF527
	.sleb128 290
	.uleb128 0x19
	.long	.LASF528
	.sleb128 291
	.uleb128 0x19
	.long	.LASF529
	.sleb128 292
	.uleb128 0x19
	.long	.LASF530
	.sleb128 293
	.uleb128 0x19
	.long	.LASF531
	.sleb128 294
	.uleb128 0x19
	.long	.LASF532
	.sleb128 295
	.uleb128 0x19
	.long	.LASF533
	.sleb128 296
	.uleb128 0x19
	.long	.LASF534
	.sleb128 297
	.uleb128 0x19
	.long	.LASF535
	.sleb128 298
	.uleb128 0x19
	.long	.LASF536
	.sleb128 299
	.uleb128 0x19
	.long	.LASF537
	.sleb128 300
	.uleb128 0x19
	.long	.LASF538
	.sleb128 301
	.uleb128 0x19
	.long	.LASF539
	.sleb128 302
	.uleb128 0x19
	.long	.LASF540
	.sleb128 303
	.uleb128 0x19
	.long	.LASF541
	.sleb128 304
	.uleb128 0x19
	.long	.LASF542
	.sleb128 305
	.uleb128 0x19
	.long	.LASF543
	.sleb128 306
	.uleb128 0x19
	.long	.LASF544
	.sleb128 307
	.uleb128 0x19
	.long	.LASF545
	.sleb128 308
	.uleb128 0x19
	.long	.LASF546
	.sleb128 309
	.uleb128 0x19
	.long	.LASF547
	.sleb128 310
	.uleb128 0x19
	.long	.LASF548
	.sleb128 311
	.uleb128 0x19
	.long	.LASF549
	.sleb128 312
	.uleb128 0x19
	.long	.LASF550
	.sleb128 313
	.uleb128 0x19
	.long	.LASF551
	.sleb128 314
	.uleb128 0x19
	.long	.LASF552
	.sleb128 315
	.uleb128 0x19
	.long	.LASF553
	.sleb128 316
	.uleb128 0x19
	.long	.LASF554
	.sleb128 317
	.uleb128 0x19
	.long	.LASF555
	.sleb128 318
	.uleb128 0x19
	.long	.LASF556
	.sleb128 319
	.uleb128 0x19
	.long	.LASF557
	.sleb128 320
	.uleb128 0x19
	.long	.LASF558
	.sleb128 321
	.uleb128 0x19
	.long	.LASF559
	.sleb128 322
	.uleb128 0x19
	.long	.LASF560
	.sleb128 323
	.uleb128 0x19
	.long	.LASF561
	.sleb128 324
	.uleb128 0x19
	.long	.LASF562
	.sleb128 325
	.uleb128 0x19
	.long	.LASF563
	.sleb128 326
	.uleb128 0x19
	.long	.LASF564
	.sleb128 327
	.uleb128 0x19
	.long	.LASF565
	.sleb128 328
	.uleb128 0x19
	.long	.LASF566
	.sleb128 329
	.uleb128 0x19
	.long	.LASF567
	.sleb128 330
	.uleb128 0x19
	.long	.LASF568
	.sleb128 331
	.uleb128 0x19
	.long	.LASF569
	.sleb128 332
	.uleb128 0x19
	.long	.LASF570
	.sleb128 333
	.uleb128 0x19
	.long	.LASF571
	.sleb128 334
	.uleb128 0x19
	.long	.LASF572
	.sleb128 335
	.uleb128 0x19
	.long	.LASF573
	.sleb128 336
	.uleb128 0x19
	.long	.LASF574
	.sleb128 337
	.uleb128 0x19
	.long	.LASF575
	.sleb128 338
	.uleb128 0x19
	.long	.LASF576
	.sleb128 339
	.uleb128 0x19
	.long	.LASF577
	.sleb128 340
	.uleb128 0x19
	.long	.LASF578
	.sleb128 341
	.uleb128 0x19
	.long	.LASF579
	.sleb128 342
	.uleb128 0x19
	.long	.LASF580
	.sleb128 343
	.uleb128 0x19
	.long	.LASF581
	.sleb128 344
	.uleb128 0x19
	.long	.LASF582
	.sleb128 345
	.uleb128 0x19
	.long	.LASF583
	.sleb128 346
	.uleb128 0x19
	.long	.LASF584
	.sleb128 347
	.uleb128 0x19
	.long	.LASF585
	.sleb128 348
	.uleb128 0x19
	.long	.LASF586
	.sleb128 349
	.uleb128 0x19
	.long	.LASF587
	.sleb128 350
	.uleb128 0x19
	.long	.LASF588
	.sleb128 351
	.uleb128 0x19
	.long	.LASF589
	.sleb128 352
	.byte	0
	.uleb128 0x1c
	.long	0x10dc
	.uleb128 0x6
	.byte	0x8
	.long	0x1ada
	.uleb128 0x6
	.byte	0x8
	.long	0x3f6
	.uleb128 0x6
	.byte	0x8
	.long	0x603
	.uleb128 0xc
	.long	.LASF590
	.byte	0x40
	.byte	0xb
	.byte	0x70
	.long	0x1b68
	.uleb128 0x1d
	.string	"cv"
	.byte	0xb
	.byte	0x71
	.long	0x10ed
	.byte	0
	.uleb128 0x1d
	.string	"gv"
	.byte	0xb
	.byte	0x72
	.long	0x10f9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF591
	.byte	0xb
	.byte	0x73
	.long	0x10f9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF592
	.byte	0xb
	.byte	0x75
	.long	0x10ff
	.byte	0x18
	.uleb128 0x8
	.long	.LASF593
	.byte	0xb
	.byte	0x77
	.long	0x10ff
	.byte	0x20
	.uleb128 0x8
	.long	.LASF594
	.byte	0xb
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF595
	.byte	0xb
	.byte	0x79
	.long	0xf44
	.byte	0x30
	.uleb128 0x8
	.long	.LASF596
	.byte	0xb
	.byte	0x7a
	.long	0xf44
	.byte	0x31
	.uleb128 0x8
	.long	.LASF597
	.byte	0xb
	.byte	0x7b
	.long	0x1b68
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x114a
	.uleb128 0xc
	.long	.LASF598
	.byte	0x28
	.byte	0xb
	.byte	0xd3
	.long	0x1bc2
	.uleb128 0x8
	.long	.LASF599
	.byte	0xb
	.byte	0xd4
	.long	0xf59
	.byte	0
	.uleb128 0x8
	.long	.LASF600
	.byte	0xb
	.byte	0xd5
	.long	0xf59
	.byte	0x4
	.uleb128 0x8
	.long	.LASF601
	.byte	0xb
	.byte	0xd6
	.long	0xf8c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF602
	.byte	0xb
	.byte	0xd7
	.long	0x10dc
	.byte	0x10
	.uleb128 0x8
	.long	.LASF603
	.byte	0xb
	.byte	0xd8
	.long	0xf8c
	.byte	0x18
	.uleb128 0x1d
	.string	"cv"
	.byte	0xb
	.byte	0xd9
	.long	0x10ed
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	.LASF604
	.byte	0x58
	.byte	0xb
	.byte	0xf0
	.long	0x1c54
	.uleb128 0x8
	.long	.LASF605
	.byte	0xb
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF606
	.byte	0xb
	.byte	0xf2
	.long	0xf59
	.byte	0x8
	.uleb128 0x8
	.long	.LASF607
	.byte	0xb
	.byte	0xf3
	.long	0x10dc
	.byte	0x10
	.uleb128 0x8
	.long	.LASF608
	.byte	0xb
	.byte	0xf4
	.long	0x10dc
	.byte	0x18
	.uleb128 0x8
	.long	.LASF609
	.byte	0xb
	.byte	0xf5
	.long	0x10dc
	.byte	0x20
	.uleb128 0x8
	.long	.LASF610
	.byte	0xb
	.byte	0xfa
	.long	0x1c54
	.byte	0x28
	.uleb128 0x8
	.long	.LASF611
	.byte	0xb
	.byte	0xfc
	.long	0xf8c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF612
	.byte	0xb
	.byte	0xfd
	.long	0xf8c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF613
	.byte	0xb
	.byte	0xfe
	.long	0x10ff
	.byte	0x40
	.uleb128 0x8
	.long	.LASF614
	.byte	0xb
	.byte	0xff
	.long	0x15c
	.byte	0x48
	.uleb128 0x12
	.long	.LASF615
	.byte	0xb
	.value	0x100
	.long	0x15c
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf8c
	.uleb128 0x1a
	.byte	0x58
	.byte	0xb
	.value	0x139
	.long	0x1c88
	.uleb128 0x15
	.long	.LASF616
	.byte	0xb
	.value	0x13a
	.long	0x1af1
	.uleb128 0x15
	.long	.LASF617
	.byte	0xb
	.value	0x13b
	.long	0x1b6e
	.uleb128 0x15
	.long	.LASF618
	.byte	0xb
	.value	0x13c
	.long	0x1bc2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x207
	.uleb128 0x13
	.long	.LASF619
	.byte	0x58
	.byte	0xb
	.value	0x16e
	.long	0x1d52
	.uleb128 0x12
	.long	.LASF620
	.byte	0xb
	.value	0x16f
	.long	0xf59
	.byte	0
	.uleb128 0x12
	.long	.LASF621
	.byte	0xb
	.value	0x170
	.long	0xf59
	.byte	0x4
	.uleb128 0x12
	.long	.LASF622
	.byte	0xb
	.value	0x171
	.long	0xf59
	.byte	0x8
	.uleb128 0x12
	.long	.LASF623
	.byte	0xb
	.value	0x172
	.long	0xf59
	.byte	0xc
	.uleb128 0x12
	.long	.LASF624
	.byte	0xb
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF625
	.byte	0xb
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0x12
	.long	.LASF626
	.byte	0xb
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0x12
	.long	.LASF627
	.byte	0xb
	.value	0x176
	.long	0xf8c
	.byte	0x20
	.uleb128 0x12
	.long	.LASF628
	.byte	0xb
	.value	0x177
	.long	0xf8c
	.byte	0x28
	.uleb128 0x12
	.long	.LASF629
	.byte	0xb
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0x12
	.long	.LASF630
	.byte	0xb
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0x12
	.long	.LASF631
	.byte	0xb
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0x12
	.long	.LASF632
	.byte	0xb
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0x12
	.long	.LASF633
	.byte	0xb
	.value	0x17c
	.long	0x1aeb
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.byte	0x88
	.byte	0xb
	.value	0x1a4
	.long	0x1d74
	.uleb128 0x15
	.long	.LASF634
	.byte	0xb
	.value	0x1a5
	.long	0x82e
	.uleb128 0x15
	.long	.LASF635
	.byte	0xb
	.value	0x1a6
	.long	0x1c8e
	.byte	0
	.uleb128 0x13
	.long	.LASF636
	.byte	0x38
	.byte	0xb
	.value	0x20c
	.long	0x1dea
	.uleb128 0x12
	.long	.LASF637
	.byte	0xb
	.value	0x20d
	.long	0x10ff
	.byte	0
	.uleb128 0x12
	.long	.LASF638
	.byte	0xb
	.value	0x20e
	.long	0x1dea
	.byte	0x8
	.uleb128 0x12
	.long	.LASF639
	.byte	0xb
	.value	0x20f
	.long	0xf59
	.byte	0x10
	.uleb128 0x12
	.long	.LASF640
	.byte	0xb
	.value	0x210
	.long	0xf59
	.byte	0x14
	.uleb128 0x12
	.long	.LASF641
	.byte	0xb
	.value	0x211
	.long	0xf59
	.byte	0x18
	.uleb128 0x12
	.long	.LASF642
	.byte	0xb
	.value	0x212
	.long	0x1df0
	.byte	0x20
	.uleb128 0x12
	.long	.LASF643
	.byte	0xb
	.value	0x213
	.long	0x1df0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF644
	.byte	0xb
	.value	0x214
	.long	0xf59
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7fa
	.uleb128 0x6
	.byte	0x8
	.long	0x1d74
	.uleb128 0x10
	.long	.LASF645
	.byte	0xb
	.value	0x219
	.long	0x1d74
	.uleb128 0xd
	.string	"HE"
	.byte	0x11
	.byte	0xc
	.long	0x1e0c
	.uleb128 0x11
	.string	"he"
	.byte	0x18
	.byte	0x11
	.byte	0x10
	.long	0x1e3c
	.uleb128 0x8
	.long	.LASF646
	.byte	0x11
	.byte	0x11
	.long	0x1e78
	.byte	0
	.uleb128 0x8
	.long	.LASF647
	.byte	0x11
	.byte	0x12
	.long	0x1e7e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF648
	.byte	0x11
	.byte	0x13
	.long	0xf8c
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"HEK"
	.byte	0x11
	.byte	0xd
	.long	0x1e47
	.uleb128 0x11
	.string	"hek"
	.byte	0xc
	.byte	0x11
	.byte	0x17
	.long	0x1e78
	.uleb128 0x8
	.long	.LASF649
	.byte	0x11
	.byte	0x18
	.long	0xf64
	.byte	0
	.uleb128 0x8
	.long	.LASF650
	.byte	0x11
	.byte	0x19
	.long	0xf59
	.byte	0x4
	.uleb128 0x8
	.long	.LASF651
	.byte	0x11
	.byte	0x1a
	.long	0xf92
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1e02
	.uleb128 0x6
	.byte	0x8
	.long	0x1e3c
	.uleb128 0x1e
	.long	0x57
	.long	0x1e98
	.uleb128 0x17
	.long	0xf8c
	.uleb128 0x17
	.long	0x10be
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1e84
	.uleb128 0x1e
	.long	0xf64
	.long	0x1eb2
	.uleb128 0x17
	.long	0xf8c
	.uleb128 0x17
	.long	0x10be
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1e9e
	.uleb128 0x1e
	.long	0x57
	.long	0x1edb
	.uleb128 0x17
	.long	0xf8c
	.uleb128 0x17
	.long	0x10be
	.uleb128 0x17
	.long	0xf8c
	.uleb128 0x17
	.long	0xda
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1eb8
	.uleb128 0x1e
	.long	0x57
	.long	0x1ef5
	.uleb128 0x17
	.long	0x10be
	.uleb128 0x17
	.long	0x1ef5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf03
	.uleb128 0x6
	.byte	0x8
	.long	0x1ee1
	.uleb128 0x6
	.byte	0x8
	.long	0xe28
	.uleb128 0xc
	.long	.LASF652
	.byte	0xd8
	.byte	0x16
	.byte	0xe6
	.long	0x1f45
	.uleb128 0x8
	.long	.LASF653
	.byte	0x16
	.byte	0xf9
	.long	0x141
	.byte	0
	.uleb128 0x8
	.long	.LASF654
	.byte	0x16
	.byte	0xfa
	.long	0x1f45
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF655
	.byte	0x16
	.byte	0xff
	.long	0x57
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF656
	.byte	0x16
	.value	0x100
	.long	0x7f
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f07
	.uleb128 0x10
	.long	.LASF657
	.byte	0x16
	.value	0x107
	.long	0x1f07
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF658
	.uleb128 0x10
	.long	.LASF659
	.byte	0x9
	.value	0xcc1
	.long	0x1f6a
	.uleb128 0x6
	.byte	0x8
	.long	0x1f70
	.uleb128 0x1c
	.long	0x57
	.uleb128 0x9
	.long	0x1adf
	.long	0x1f80
	.uleb128 0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF660
	.byte	0x9
	.value	0xe70
	.long	0x1f8c
	.uleb128 0x6
	.byte	0x8
	.long	0x1f92
	.uleb128 0x1e
	.long	0xf59
	.long	0x1fa6
	.uleb128 0x17
	.long	0xf8c
	.uleb128 0x17
	.long	0xf8c
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.byte	0x9
	.value	0xfb1
	.long	0x2145
	.uleb128 0x19
	.long	.LASF661
	.sleb128 0
	.uleb128 0x19
	.long	.LASF662
	.sleb128 1
	.uleb128 0x19
	.long	.LASF663
	.sleb128 2
	.uleb128 0x19
	.long	.LASF664
	.sleb128 3
	.uleb128 0x19
	.long	.LASF665
	.sleb128 4
	.uleb128 0x19
	.long	.LASF666
	.sleb128 5
	.uleb128 0x19
	.long	.LASF667
	.sleb128 6
	.uleb128 0x19
	.long	.LASF668
	.sleb128 7
	.uleb128 0x19
	.long	.LASF669
	.sleb128 8
	.uleb128 0x19
	.long	.LASF670
	.sleb128 9
	.uleb128 0x19
	.long	.LASF671
	.sleb128 10
	.uleb128 0x19
	.long	.LASF672
	.sleb128 11
	.uleb128 0x19
	.long	.LASF673
	.sleb128 12
	.uleb128 0x19
	.long	.LASF674
	.sleb128 13
	.uleb128 0x19
	.long	.LASF675
	.sleb128 14
	.uleb128 0x19
	.long	.LASF676
	.sleb128 15
	.uleb128 0x19
	.long	.LASF677
	.sleb128 16
	.uleb128 0x19
	.long	.LASF678
	.sleb128 17
	.uleb128 0x19
	.long	.LASF679
	.sleb128 18
	.uleb128 0x19
	.long	.LASF680
	.sleb128 19
	.uleb128 0x19
	.long	.LASF681
	.sleb128 20
	.uleb128 0x19
	.long	.LASF682
	.sleb128 21
	.uleb128 0x19
	.long	.LASF683
	.sleb128 22
	.uleb128 0x19
	.long	.LASF684
	.sleb128 23
	.uleb128 0x19
	.long	.LASF685
	.sleb128 24
	.uleb128 0x19
	.long	.LASF686
	.sleb128 25
	.uleb128 0x19
	.long	.LASF687
	.sleb128 26
	.uleb128 0x19
	.long	.LASF688
	.sleb128 27
	.uleb128 0x19
	.long	.LASF689
	.sleb128 28
	.uleb128 0x19
	.long	.LASF690
	.sleb128 29
	.uleb128 0x19
	.long	.LASF691
	.sleb128 30
	.uleb128 0x19
	.long	.LASF692
	.sleb128 31
	.uleb128 0x19
	.long	.LASF693
	.sleb128 32
	.uleb128 0x19
	.long	.LASF694
	.sleb128 33
	.uleb128 0x19
	.long	.LASF695
	.sleb128 34
	.uleb128 0x19
	.long	.LASF696
	.sleb128 35
	.uleb128 0x19
	.long	.LASF697
	.sleb128 36
	.uleb128 0x19
	.long	.LASF698
	.sleb128 37
	.uleb128 0x19
	.long	.LASF699
	.sleb128 38
	.uleb128 0x19
	.long	.LASF700
	.sleb128 39
	.uleb128 0x19
	.long	.LASF701
	.sleb128 40
	.uleb128 0x19
	.long	.LASF702
	.sleb128 41
	.uleb128 0x19
	.long	.LASF703
	.sleb128 42
	.uleb128 0x19
	.long	.LASF704
	.sleb128 43
	.uleb128 0x19
	.long	.LASF705
	.sleb128 44
	.uleb128 0x19
	.long	.LASF706
	.sleb128 45
	.uleb128 0x19
	.long	.LASF707
	.sleb128 46
	.uleb128 0x19
	.long	.LASF708
	.sleb128 47
	.uleb128 0x19
	.long	.LASF709
	.sleb128 48
	.uleb128 0x19
	.long	.LASF710
	.sleb128 49
	.uleb128 0x19
	.long	.LASF711
	.sleb128 50
	.uleb128 0x19
	.long	.LASF712
	.sleb128 51
	.uleb128 0x19
	.long	.LASF713
	.sleb128 52
	.uleb128 0x19
	.long	.LASF714
	.sleb128 53
	.uleb128 0x19
	.long	.LASF715
	.sleb128 54
	.uleb128 0x19
	.long	.LASF716
	.sleb128 55
	.uleb128 0x19
	.long	.LASF717
	.sleb128 56
	.uleb128 0x19
	.long	.LASF718
	.sleb128 57
	.uleb128 0x19
	.long	.LASF719
	.sleb128 58
	.uleb128 0x19
	.long	.LASF720
	.sleb128 59
	.uleb128 0x19
	.long	.LASF721
	.sleb128 60
	.uleb128 0x19
	.long	.LASF722
	.sleb128 61
	.uleb128 0x19
	.long	.LASF723
	.sleb128 62
	.uleb128 0x19
	.long	.LASF724
	.sleb128 63
	.uleb128 0x19
	.long	.LASF725
	.sleb128 64
	.uleb128 0x19
	.long	.LASF726
	.sleb128 65
	.uleb128 0x19
	.long	.LASF727
	.sleb128 66
	.byte	0
	.uleb128 0x5
	.long	.LASF728
	.byte	0x1
	.byte	0x4c
	.long	0x79
	.uleb128 0x5
	.long	.LASF729
	.byte	0x1
	.byte	0x4d
	.long	0xf8c
	.uleb128 0x21
	.byte	0x10
	.byte	0x1
	.value	0x15c
	.long	0x217f
	.uleb128 0x12
	.long	.LASF730
	.byte	0x1
	.value	0x15d
	.long	0x15c
	.byte	0
	.uleb128 0x12
	.long	.LASF731
	.byte	0x1
	.value	0x15e
	.long	0x15c
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF732
	.byte	0x1
	.value	0x15f
	.long	0x215b
	.uleb128 0x13
	.long	.LASF733
	.byte	0xc
	.byte	0x1
	.value	0x298
	.long	0x21c0
	.uleb128 0x12
	.long	.LASF734
	.byte	0x1
	.value	0x299
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF735
	.byte	0x1
	.value	0x29a
	.long	0x57
	.byte	0x4
	.uleb128 0x12
	.long	.LASF736
	.byte	0x1
	.value	0x29c
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.long	.LASF743
	.byte	0x1
	.byte	0xc4
	.long	0x15c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a0
	.uleb128 0x23
	.long	.LASF737
	.byte	0x1
	.byte	0xc4
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF738
	.byte	0x1
	.byte	0xc4
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF739
	.byte	0x1
	.byte	0xc4
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"cmp"
	.byte	0x1
	.byte	0xc4
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF740
	.byte	0x1
	.byte	0xc6
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.byte	0xc7
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xc7
	.long	0x22a0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"q"
	.byte	0x1
	.byte	0xc7
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.byte	0xc7
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x26
	.string	"p2"
	.byte	0x1
	.byte	0xc7
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.byte	0xc8
	.long	0x2150
	.uleb128 0x28
	.long	.LASF741
	.byte	0x1
	.byte	0xc8
	.long	0x22a0
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xc8
	.long	0x22a0
	.uleb128 0x25
	.long	.LASF742
	.byte	0x1
	.byte	0xc9
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF731
	.byte	0x1
	.byte	0xca
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2150
	.uleb128 0x29
	.long	.LASF744
	.byte	0x1
	.value	0x163
	.long	0xf59
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e3
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x163
	.long	0x2150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x163
	.long	0x2150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF753
	.byte	0x1
	.value	0x169
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x24b9
	.uleb128 0x2c
	.long	.LASF745
	.byte	0x1
	.value	0x169
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2760
	.uleb128 0x2c
	.long	.LASF739
	.byte	0x1
	.value	0x169
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2768
	.uleb128 0x2a
	.string	"cmp"
	.byte	0x1
	.value	0x169
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2776
	.uleb128 0x2c
	.long	.LASF204
	.byte	0x1
	.value	0x169
	.long	0xf64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2780
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x16b
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2736
	.uleb128 0x2d
	.string	"run"
	.byte	0x1
	.value	0x16b
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2728
	.uleb128 0x2e
	.long	.LASF731
	.byte	0x1
	.value	0x16b
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2720
	.uleb128 0x2e
	.long	.LASF730
	.byte	0x1
	.value	0x16b
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2712
	.uleb128 0x2e
	.long	.LASF740
	.byte	0x1
	.value	0x16c
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2748
	.uleb128 0x2e
	.long	.LASF746
	.byte	0x1
	.value	0x16c
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2744
	.uleb128 0x2e
	.long	.LASF747
	.byte	0x1
	.value	0x16d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2740
	.uleb128 0x2d
	.string	"f1"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"f2"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.string	"tp2"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x2f
	.string	"l1"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x2f
	.string	"l2"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x2f
	.string	"q"
	.byte	0x1
	.value	0x16e
	.long	0x22a0
	.uleb128 0x2d
	.string	"aux"
	.byte	0x1
	.value	0x16f
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2704
	.uleb128 0x2e
	.long	.LASF737
	.byte	0x1
	.value	0x16f
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2696
	.uleb128 0x2e
	.long	.LASF738
	.byte	0x1
	.value	0x16f
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2688
	.uleb128 0x2d
	.string	"p1"
	.byte	0x1
	.value	0x170
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2664
	.uleb128 0x2e
	.long	.LASF748
	.byte	0x1
	.value	0x171
	.long	0x24b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1664
	.uleb128 0x2e
	.long	.LASF749
	.byte	0x1
	.value	0x172
	.long	0x24c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2656
	.uleb128 0x2e
	.long	.LASF750
	.byte	0x1
	.value	0x173
	.long	0x24d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2624
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x1
	.value	0x173
	.long	0x24e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2680
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x174
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2672
	.uleb128 0x30
	.long	.LASF850
	.byte	0x1
	.value	0x232
	.quad	.L56
	.byte	0
	.uleb128 0x9
	.long	0x2150
	.long	0x24c9
	.uleb128 0xa
	.long	0x65
	.byte	0xc7
	.byte	0
	.uleb128 0x9
	.long	0x22a0
	.long	0x24d9
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x217f
	.long	0x24e9
	.uleb128 0xa
	.long	0x65
	.byte	0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x217f
	.uleb128 0x2b
	.long	.LASF754
	.byte	0x1
	.value	0x301
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x26c4
	.uleb128 0x2c
	.long	.LASF755
	.byte	0x1
	.value	0x301
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2c
	.long	.LASF756
	.byte	0x1
	.value	0x301
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2c
	.long	.LASF757
	.byte	0x1
	.value	0x301
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2e
	.long	.LASF758
	.byte	0x1
	.value	0x303
	.long	0xf8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF759
	.byte	0x1
	.value	0x305
	.long	0x26c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2e
	.long	.LASF760
	.byte	0x1
	.value	0x306
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x2e
	.long	.LASF761
	.byte	0x1
	.value	0x308
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2e
	.long	.LASF762
	.byte	0x1
	.value	0x309
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x2e
	.long	.LASF736
	.byte	0x1
	.value	0x30b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2e
	.long	.LASF763
	.byte	0x1
	.value	0x30c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x31
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x25e5
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x317
	.long	0x91
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x317
	.long	0x91
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x318
	.long	0x1c54
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x32
	.long	.Ldebug_ranges0+0
	.long	0x2663
	.uleb128 0x2e
	.long	.LASF764
	.byte	0x1
	.value	0x365
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2e
	.long	.LASF765
	.byte	0x1
	.value	0x365
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x2e
	.long	.LASF766
	.byte	0x1
	.value	0x366
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2e
	.long	.LASF767
	.byte	0x1
	.value	0x366
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x368
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2e
	.long	.LASF768
	.byte	0x1
	.value	0x3e7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2e
	.long	.LASF769
	.byte	0x1
	.value	0x3e8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x4c7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x34
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x4cc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x34
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.value	0x4dc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x218b
	.long	0x26d4
	.uleb128 0xa
	.long	0x65
	.byte	0x1f
	.byte	0
	.uleb128 0x29
	.long	.LASF770
	.byte	0x1
	.value	0x52d
	.long	0xf59
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x273c
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x52d
	.long	0x2150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x52d
	.long	0x2150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF740
	.byte	0x1
	.value	0x52f
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x530
	.long	0x22a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"bp"
	.byte	0x1
	.value	0x531
	.long	0x22a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF771
	.byte	0x1
	.value	0x539
	.long	0xf59
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a4
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x539
	.long	0x2150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x539
	.long	0x2150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF740
	.byte	0x1
	.value	0x53b
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x53c
	.long	0x22a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"bp"
	.byte	0x1
	.value	0x53d
	.long	0x22a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF772
	.byte	0x1
	.value	0x548
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x28c8
	.uleb128 0x2c
	.long	.LASF737
	.byte	0x1
	.value	0x548
	.long	0x22a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1720
	.uleb128 0x2c
	.long	.LASF739
	.byte	0x1
	.value	0x548
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1728
	.uleb128 0x2a
	.string	"cmp"
	.byte	0x1
	.value	0x548
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1736
	.uleb128 0x2c
	.long	.LASF204
	.byte	0x1
	.value	0x548
	.long	0xf64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1740
	.uleb128 0x2e
	.long	.LASF773
	.byte	0x1
	.value	0x54a
	.long	0xf8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1696
	.uleb128 0x31
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x28a5
	.uleb128 0x2d
	.string	"pp"
	.byte	0x1
	.value	0x54d
	.long	0x28c8
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x54d
	.long	0x22a0
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x54e
	.long	0x91
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x54e
	.long	0x91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x54e
	.long	0x91
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2e
	.long	.LASF748
	.byte	0x1
	.value	0x54f
	.long	0x28ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1664
	.uleb128 0x2e
	.long	.LASF774
	.byte	0x1
	.value	0x54f
	.long	0x28c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1704
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x54f
	.long	0x2150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1680
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x550
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1688
	.byte	0
	.uleb128 0x34
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2e
	.long	.LASF752
	.byte	0x1
	.value	0x58b
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1672
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a0
	.uleb128 0x9
	.long	0x22a0
	.long	0x28de
	.uleb128 0xa
	.long	0x65
	.byte	0xc7
	.byte	0
	.uleb128 0x35
	.long	.LASF777
	.byte	0x1
	.value	0x5a5
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2958
	.uleb128 0x2c
	.long	.LASF755
	.byte	0x1
	.value	0x5a5
	.long	0x1c54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF739
	.byte	0x1
	.value	0x5a5
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"cmp"
	.byte	0x1
	.value	0x5a5
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF775
	.byte	0x1
	.value	0x5a7
	.long	0x2972
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF773
	.byte	0x1
	.value	0x5a9
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF776
	.byte	0x1
	.value	0x5aa
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x16
	.long	0x2972
	.uleb128 0x17
	.long	0x1c54
	.uleb128 0x17
	.long	0x91
	.uleb128 0x17
	.long	0x1f80
	.uleb128 0x17
	.long	0xf64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2958
	.uleb128 0x35
	.long	.LASF778
	.byte	0x1
	.value	0x5bf
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f2
	.uleb128 0x2c
	.long	.LASF755
	.byte	0x1
	.value	0x5bf
	.long	0x1c54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF739
	.byte	0x1
	.value	0x5bf
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"cmp"
	.byte	0x1
	.value	0x5bf
	.long	0x1f80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF775
	.byte	0x1
	.value	0x5c1
	.long	0x2972
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF773
	.byte	0x1
	.value	0x5c3
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF776
	.byte	0x1
	.value	0x5c4
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x36
	.long	.LASF851
	.byte	0x1
	.value	0x5d7
	.long	0x10dc
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dc1
	.uleb128 0x2d
	.string	"sp"
	.byte	0x1
	.value	0x5d9
	.long	0x1c54
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF779
	.byte	0x1
	.value	0x5d9
	.long	0x1c54
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2e
	.long	.LASF780
	.byte	0x1
	.value	0x5d9
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2d
	.string	"p1"
	.byte	0x1
	.value	0x5da
	.long	0x1c54
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.string	"p2"
	.byte	0x1
	.value	0x5da
	.long	0x1c54
	.uleb128 0x2d
	.string	"max"
	.byte	0x1
	.value	0x5db
	.long	0xf59
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x5db
	.long	0xf59
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"av"
	.byte	0x1
	.value	0x5dc
	.long	0x10ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF781
	.byte	0x1
	.value	0x5dd
	.long	0x10c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.string	"gv"
	.byte	0x1
	.value	0x5de
	.long	0x10f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2d
	.string	"cv"
	.byte	0x1
	.value	0x5df
	.long	0x10ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2e
	.long	.LASF782
	.byte	0x1
	.value	0x5e0
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2e
	.long	.LASF783
	.byte	0x1
	.value	0x5e1
	.long	0x10dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2e
	.long	.LASF784
	.byte	0x1
	.value	0x5e2
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2e
	.long	.LASF595
	.byte	0x1
	.value	0x5e3
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2e
	.long	.LASF785
	.byte	0x1
	.value	0x5e4
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2e
	.long	.LASF786
	.byte	0x1
	.value	0x5e5
	.long	0xf59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2e
	.long	.LASF787
	.byte	0x1
	.value	0x5e6
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -271
	.uleb128 0x2e
	.long	.LASF204
	.byte	0x1
	.value	0x5e7
	.long	0xf44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -270
	.uleb128 0x2e
	.long	.LASF775
	.byte	0x1
	.value	0x5e8
	.long	0x2dd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x2b64
	.uleb128 0x2d
	.string	"kid"
	.byte	0x1
	.value	0x5f4
	.long	0x10dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x2b9a
	.uleb128 0x2d
	.string	"n_a"
	.byte	0x1
	.value	0x5fd
	.long	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2e
	.long	.LASF788
	.byte	0x1
	.value	0x5fe
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x31
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x2bc0
	.uleb128 0x2e
	.long	.LASF789
	.byte	0x1
	.value	0x608
	.long	0xf8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x31
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x2be6
	.uleb128 0x2e
	.long	.LASF790
	.byte	0x1
	.value	0x62b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x31
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x2c0c
	.uleb128 0x2d
	.string	"svp"
	.byte	0x1
	.value	0x62e
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x31
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2c32
	.uleb128 0x2d
	.string	"n_a"
	.byte	0x1
	.value	0x646
	.long	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x31
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x2d7f
	.uleb128 0x2e
	.long	.LASF791
	.byte	0x1
	.value	0x655
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x2d16
	.uleb128 0x2d
	.string	"cx"
	.byte	0x1
	.value	0x657
	.long	0x1dea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF792
	.byte	0x1
	.value	0x658
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF793
	.byte	0x1
	.value	0x659
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -269
	.uleb128 0x31
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x2cc1
	.uleb128 0x2e
	.long	.LASF794
	.byte	0x1
	.value	0x65f
	.long	0x2ddc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x31
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x2ce6
	.uleb128 0x2d
	.string	"av"
	.byte	0x1
	.value	0x67a
	.long	0x10ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x34
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2d
	.string	"sp"
	.byte	0x1
	.value	0x68a
	.long	0x1c54
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF795
	.byte	0x1
	.value	0x68a
	.long	0x2ddc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x2d3c
	.uleb128 0x2e
	.long	.LASF790
	.byte	0x1
	.value	0x68e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x34
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x69c
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x69e
	.long	0xf8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2d
	.string	"sv"
	.byte	0x1
	.value	0x6a6
	.long	0xf8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF745
	.byte	0x1
	.value	0x6a7
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF796
	.byte	0x1
	.value	0x6a7
	.long	0x1c54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x2dd6
	.uleb128 0x17
	.long	0x1c54
	.uleb128 0x17
	.long	0x91
	.uleb128 0x17
	.long	0x1f80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2dc1
	.uleb128 0x6
	.byte	0x8
	.long	0x1df6
	.uleb128 0x29
	.long	.LASF797
	.byte	0x1
	.value	0x6bd
	.long	0xf59
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e4c
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x6bd
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x6bd
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF798
	.byte	0x1
	.value	0x6bf
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF799
	.byte	0x1
	.value	0x6c0
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF800
	.byte	0x1
	.value	0x6c1
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF801
	.byte	0x1
	.value	0x6d4
	.long	0xf59
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee5
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x6d4
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x6d4
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF798
	.byte	0x1
	.value	0x6d6
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF799
	.byte	0x1
	.value	0x6d7
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF800
	.byte	0x1
	.value	0x6d8
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"av"
	.byte	0x1
	.value	0x6d9
	.long	0x10ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2d
	.string	"ary"
	.byte	0x1
	.value	0x6e2
	.long	0x1c54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF802
	.byte	0x1
	.value	0x701
	.long	0xf59
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f6c
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x701
	.long	0xf8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x701
	.long	0xf8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"sp"
	.byte	0x1
	.value	0x703
	.long	0x1c54
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF798
	.byte	0x1
	.value	0x704
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF799
	.byte	0x1
	.value	0x705
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF800
	.byte	0x1
	.value	0x706
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"cv"
	.byte	0x1
	.value	0x707
	.long	0x10ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF803
	.byte	0x1
	.value	0x71e
	.long	0xf59
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fc7
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x71e
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x71e
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"nv1"
	.byte	0x1
	.value	0x720
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"nv2"
	.byte	0x1
	.value	0x721
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF804
	.byte	0x1
	.value	0x726
	.long	0xf59
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3022
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x726
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x726
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"iv1"
	.byte	0x1
	.value	0x728
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"iv2"
	.byte	0x1
	.value	0x729
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF805
	.byte	0x1
	.value	0x738
	.long	0xf59
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x30aa
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x738
	.long	0xf8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x738
	.long	0xf8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF806
	.byte	0x1
	.value	0x73a
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x73d
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x740
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF807
	.byte	0x1
	.value	0x74e
	.long	0xf59
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3132
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x74e
	.long	0xf8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x74e
	.long	0xf8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF806
	.byte	0x1
	.value	0x750
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x753
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x756
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF808
	.byte	0x1
	.value	0x764
	.long	0xf59
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x31be
	.uleb128 0x2c
	.long	.LASF809
	.byte	0x1
	.value	0x764
	.long	0xf8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF810
	.byte	0x1
	.value	0x764
	.long	0xf8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF806
	.byte	0x1
	.value	0x766
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x769
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x76c
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF811
	.byte	0x1
	.value	0x77a
	.long	0xf59
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x324a
	.uleb128 0x2c
	.long	.LASF809
	.byte	0x1
	.value	0x77a
	.long	0xf8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF810
	.byte	0x1
	.value	0x77a
	.long	0xf8c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF806
	.byte	0x1
	.value	0x77c
	.long	0xf8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x77f
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x782
	.long	0xf59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF812
	.byte	0x17
	.value	0x2f1
	.long	0x1f75
	.uleb128 0x38
	.long	.LASF813
	.byte	0x18
	.byte	0x51
	.long	0x10f9
	.uleb128 0x38
	.long	.LASF814
	.byte	0x18
	.byte	0x52
	.long	0x10f9
	.uleb128 0x37
	.long	.LASF815
	.byte	0x18
	.value	0x112
	.long	0x1f5e
	.uleb128 0x37
	.long	.LASF816
	.byte	0x18
	.value	0x125
	.long	0x517
	.uleb128 0x37
	.long	.LASF817
	.byte	0x18
	.value	0x166
	.long	0x5e
	.uleb128 0x37
	.long	.LASF818
	.byte	0x18
	.value	0x210
	.long	0x1f80
	.uleb128 0x38
	.long	.LASF819
	.byte	0x19
	.byte	0x22
	.long	0x1c54
	.uleb128 0x38
	.long	.LASF820
	.byte	0x19
	.byte	0x26
	.long	0x10dc
	.uleb128 0x38
	.long	.LASF821
	.byte	0x19
	.byte	0x28
	.long	0x1c54
	.uleb128 0x38
	.long	.LASF822
	.byte	0x19
	.byte	0x2a
	.long	0x1c54
	.uleb128 0x38
	.long	.LASF823
	.byte	0x19
	.byte	0x2b
	.long	0x1c54
	.uleb128 0x38
	.long	.LASF824
	.byte	0x19
	.byte	0x2e
	.long	0xf59
	.uleb128 0x38
	.long	.LASF825
	.byte	0x19
	.byte	0x31
	.long	0x32e9
	.uleb128 0x6
	.byte	0x8
	.long	0xe95
	.uleb128 0x38
	.long	.LASF826
	.byte	0x19
	.byte	0x33
	.long	0xf59
	.uleb128 0x38
	.long	.LASF827
	.byte	0x19
	.byte	0x34
	.long	0xf59
	.uleb128 0x38
	.long	.LASF828
	.byte	0x19
	.byte	0x37
	.long	0xf59
	.uleb128 0x38
	.long	.LASF829
	.byte	0x19
	.byte	0x38
	.long	0xf59
	.uleb128 0x38
	.long	.LASF830
	.byte	0x19
	.byte	0x3b
	.long	0xfff
	.uleb128 0x38
	.long	.LASF831
	.byte	0x19
	.byte	0x3c
	.long	0xfff
	.uleb128 0x38
	.long	.LASF832
	.byte	0x19
	.byte	0x3d
	.long	0xfff
	.uleb128 0x38
	.long	.LASF833
	.byte	0x19
	.byte	0x40
	.long	0xf59
	.uleb128 0x38
	.long	.LASF834
	.byte	0x19
	.byte	0x43
	.long	0xf8c
	.uleb128 0x38
	.long	.LASF835
	.byte	0x19
	.byte	0x60
	.long	0x1ae5
	.uleb128 0x38
	.long	.LASF836
	.byte	0x19
	.byte	0x81
	.long	0x3368
	.uleb128 0x39
	.long	0x1c88
	.uleb128 0x38
	.long	.LASF837
	.byte	0x19
	.byte	0x87
	.long	0x10ff
	.uleb128 0x38
	.long	.LASF838
	.byte	0x19
	.byte	0x88
	.long	0x2ddc
	.uleb128 0x38
	.long	.LASF839
	.byte	0x19
	.byte	0x8b
	.long	0x338e
	.uleb128 0x6
	.byte	0x8
	.long	0x1f4b
	.uleb128 0x38
	.long	.LASF840
	.byte	0x19
	.byte	0x9d
	.long	0x10dc
	.uleb128 0x38
	.long	.LASF841
	.byte	0x19
	.byte	0x9e
	.long	0x10c4
	.uleb128 0x38
	.long	.LASF842
	.byte	0x19
	.byte	0x9f
	.long	0x10f9
	.uleb128 0x38
	.long	.LASF843
	.byte	0x19
	.byte	0xa0
	.long	0x10f9
	.uleb128 0x38
	.long	.LASF844
	.byte	0x19
	.byte	0xa1
	.long	0xf59
	.uleb128 0x37
	.long	.LASF845
	.byte	0x19
	.value	0x115
	.long	0x10ff
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF571:
	.string	"OP_ESERVENT"
.LASF496:
	.string	"OP_FTSVTX"
.LASF68:
	.string	"precomp"
.LASF449:
	.string	"OP_SYSREAD"
.LASF100:
	.string	"blku_oldretsp"
.LASF466:
	.string	"OP_SHUTDOWN"
.LASF714:
	.string	"repeat_ass_amg"
.LASF682:
	.string	"rshift_ass_amg"
.LASF542:
	.string	"OP_MSGRCV"
.LASF642:
	.string	"si_prev"
.LASF830:
	.string	"PL_markstack"
.LASF835:
	.string	"PL_curpm"
.LASF584:
	.string	"OP_LOCK"
.LASF589:
	.string	"OP_max"
.LASF839:
	.string	"PL_top_env"
.LASF19:
	.string	"__saved_mask"
.LASF24:
	.string	"op_next"
.LASF234:
	.string	"xiou_any"
.LASF500:
	.string	"OP_CHDIR"
.LASF414:
	.string	"OP_ENTER"
.LASF265:
	.string	"OP_REGCMAYBE"
.LASF97:
	.string	"block"
.LASF395:
	.string	"OP_FLOP"
.LASF433:
	.string	"OP_BINMODE"
.LASF743:
	.string	"dynprep"
.LASF147:
	.string	"xpvgv"
.LASF169:
	.string	"xio_ifp"
.LASF325:
	.string	"OP_SEQ"
.LASF39:
	.string	"cop_io"
.LASF636:
	.string	"stackinfo"
.LASF684:
	.string	"band_ass_amg"
.LASF691:
	.string	"gt_amg"
.LASF487:
	.string	"OP_FTSOCK"
.LASF141:
	.string	"xhv_keys"
.LASF184:
	.string	"xio_flags"
.LASF563:
	.string	"OP_GSERVENT"
.LASF188:
	.string	"svt_set"
.LASF850:
	.string	"done"
.LASF137:
	.string	"xpvhv"
.LASF716:
	.string	"concat_ass_amg"
.LASF775:
	.string	"sortsvp"
.LASF848:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF454:
	.string	"OP_TELL"
.LASF786:
	.string	"sorting_av"
.LASF526:
	.string	"OP_SETPGRP"
.LASF833:
	.string	"PL_retstack_ix"
.LASF481:
	.string	"OP_FTROWNED"
.LASF86:
	.string	"gp_hv"
.LASF787:
	.string	"priv"
.LASF168:
	.string	"xpvio"
.LASF470:
	.string	"OP_GETPEERNAME"
.LASF324:
	.string	"OP_SGE"
.LASF120:
	.string	"xpviv"
.LASF708:
	.string	"cos_amg"
.LASF845:
	.string	"PL_comppad"
.LASF748:
	.string	"small"
.LASF628:
	.string	"sbu_targ"
.LASF406:
	.string	"OP_CALLER"
.LASF464:
	.string	"OP_LISTEN"
.LASF796:
	.string	"didstore"
.LASF322:
	.string	"OP_SGT"
.LASF536:
	.string	"OP_SHMCTL"
.LASF794:
	.string	"next"
.LASF294:
	.string	"OP_DIVIDE"
.LASF156:
	.string	"xcv_start"
.LASF83:
	.string	"gp_io"
.LASF87:
	.string	"gp_egv"
.LASF784:
	.string	"overloading"
.LASF620:
	.string	"sbu_iters"
.LASF339:
	.string	"OP_SRAND"
.LASF649:
	.string	"hek_hash"
.LASF695:
	.string	"ncmp_amg"
.LASF37:
	.string	"cop_line"
.LASF155:
	.string	"xcv_stash"
.LASF305:
	.string	"OP_LEFT_SHIFT"
.LASF825:
	.string	"PL_savestack"
.LASF572:
	.string	"OP_GPWNAM"
.LASF711:
	.string	"log_amg"
.LASF160:
	.string	"xcv_gv"
.LASF435:
	.string	"OP_UNTIE"
.LASF336:
	.string	"OP_SIN"
.LASF643:
	.string	"si_next"
.LASF523:
	.string	"OP_KILL"
.LASF779:
	.string	"mark"
.LASF117:
	.string	"xpv_cur"
.LASF263:
	.string	"OP_READLINE"
.LASF276:
	.string	"OP_SCHOP"
.LASF111:
	.string	"mg_type"
.LASF509:
	.string	"OP_READLINK"
.LASF40:
	.string	"UNOP"
.LASF400:
	.string	"OP_ANDASSIGN"
.LASF756:
	.string	"num_elts"
.LASF694:
	.string	"ne_amg"
.LASF116:
	.string	"xpv_pv"
.LASF17:
	.string	"__jmpbuf"
.LASF782:
	.string	"gimme"
.LASF849:
	.string	"opcode"
.LASF402:
	.string	"OP_METHOD"
.LASF279:
	.string	"OP_DEFINED"
.LASF627:
	.string	"sbu_dstr"
.LASF693:
	.string	"eq_amg"
.LASF805:
	.string	"amagic_ncmp"
.LASF517:
	.string	"OP_CLOSEDIR"
.LASF544:
	.string	"OP_SEMCTL"
.LASF420:
	.string	"OP_LEAVELOOP"
.LASF511:
	.string	"OP_RMDIR"
.LASF778:
	.string	"S_sortsv_desc"
.LASF450:
	.string	"OP_SYSWRITE"
.LASF232:
	.string	"cv_flags_t"
.LASF91:
	.string	"gp_line"
.LASF581:
	.string	"OP_EGRENT"
.LASF812:
	.string	"PL_ppaddr"
.LASF619:
	.string	"subst"
.LASF174:
	.string	"xio_page_len"
.LASF278:
	.string	"OP_SCHOMP"
.LASF690:
	.string	"le_amg"
.LASF818:
	.string	"PL_sort_RealCmp"
.LASF444:
	.string	"OP_LEAVEWRITE"
.LASF804:
	.string	"sv_i_ncmp"
.LASF323:
	.string	"OP_SLE"
.LASF123:
	.string	"xpvnv"
.LASF148:
	.string	"xgv_gp"
.LASF18:
	.string	"__mask_was_saved"
.LASF321:
	.string	"OP_SLT"
.LASF377:
	.string	"OP_JOIN"
.LASF110:
	.string	"mg_private"
.LASF834:
	.string	"PL_Sv"
.LASF277:
	.string	"OP_CHOMP"
.LASF720:
	.string	"to_av_amg"
.LASF626:
	.string	"sbu_orig"
.LASF370:
	.string	"OP_EXISTS"
.LASF12:
	.string	"__sigset_t"
.LASF134:
	.string	"xav_arylen"
.LASF80:
	.string	"program"
.LASF157:
	.string	"xcv_root"
.LASF599:
	.string	"old_in_eval"
.LASF647:
	.string	"hent_hek"
.LASF109:
	.string	"mg_virtual"
.LASF419:
	.string	"OP_ENTERLOOP"
.LASF238:
	.string	"OP_STUB"
.LASF710:
	.string	"exp_amg"
.LASF717:
	.string	"copy_amg"
.LASF35:
	.string	"cop_seq"
.LASF429:
	.string	"OP_CLOSE"
.LASF326:
	.string	"OP_SNE"
.LASF61:
	.string	"sv_flags"
.LASF683:
	.string	"band_amg"
.LASF533:
	.string	"OP_ALARM"
.LASF314:
	.string	"OP_I_GE"
.LASF665:
	.string	"string_amg"
.LASF310:
	.string	"OP_I_GT"
.LASF58:
	.string	"broiled"
.LASF179:
	.string	"xio_fmt_gv"
.LASF773:
	.string	"hintsv"
.LASF434:
	.string	"OP_TIE"
.LASF267:
	.string	"OP_REGCOMP"
.LASF90:
	.string	"gp_flags"
.LASF96:
	.string	"cx_u"
.LASF770:
	.string	"cmpindir"
.LASF275:
	.string	"OP_CHOP"
.LASF742:
	.string	"savep"
.LASF82:
	.string	"gp_refcnt"
.LASF610:
	.string	"itervar"
.LASF76:
	.string	"nparens"
.LASF549:
	.string	"OP_LEAVEEVAL"
.LASF212:
	.string	"type"
.LASF438:
	.string	"OP_DBMCLOSE"
.LASF815:
	.string	"PL_runops"
.LASF292:
	.string	"OP_MULTIPLY"
.LASF401:
	.string	"OP_ORASSIGN"
.LASF92:
	.string	"gp_file"
.LASF467:
	.string	"OP_GSOCKOPT"
.LASF173:
	.string	"xio_page"
.LASF565:
	.string	"OP_SNETENT"
.LASF407:
	.string	"OP_WARN"
.LASF535:
	.string	"OP_SHMGET"
.LASF343:
	.string	"OP_INT"
.LASF557:
	.string	"OP_GNETENT"
.LASF524:
	.string	"OP_GETPPID"
.LASF774:
	.string	"indir"
.LASF841:
	.string	"PL_sortstash"
.LASF347:
	.string	"OP_LENGTH"
.LASF268:
	.string	"OP_MATCH"
.LASF163:
	.string	"xcv_padlist"
.LASF492:
	.string	"OP_FTPIPE"
.LASF421:
	.string	"OP_RETURN"
.LASF23:
	.string	"__jmp_buf_tag"
.LASF618:
	.string	"blku_loop"
.LASF664:
	.string	"nomethod_amg"
.LASF331:
	.string	"OP_NEGATE"
.LASF81:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF388:
	.string	"OP_REVERSE"
.LASF570:
	.string	"OP_EPROTOENT"
.LASF346:
	.string	"OP_ABS"
.LASF210:
	.string	"PerlIO"
.LASF629:
	.string	"sbu_s"
.LASF560:
	.string	"OP_GPROTOENT"
.LASF655:
	.string	"je_ret"
.LASF658:
	.string	"float"
.LASF611:
	.string	"itersave"
.LASF810:
	.string	"str2"
.LASF785:
	.string	"is_xsub"
.LASF59:
	.string	"sv_any"
.LASF381:
	.string	"OP_ANONHASH"
.LASF312:
	.string	"OP_I_LE"
.LASF580:
	.string	"OP_SGRENT"
.LASF598:
	.string	"block_eval"
.LASF308:
	.string	"OP_I_LT"
.LASF697:
	.string	"slt_amg"
.LASF399:
	.string	"OP_COND_EXPR"
.LASF493:
	.string	"OP_FTLINK"
.LASF79:
	.string	"reganch"
.LASF203:
	.string	"stashes"
.LASF427:
	.string	"OP_EXIT"
.LASF65:
	.string	"endp"
.LASF299:
	.string	"OP_ADD"
.LASF543:
	.string	"OP_SEMGET"
.LASF270:
	.string	"OP_SUBST"
.LASF393:
	.string	"OP_RANGE"
.LASF239:
	.string	"OP_SCALAR"
.LASF654:
	.string	"je_prev"
.LASF566:
	.string	"OP_SPROTOENT"
.LASF541:
	.string	"OP_MSGSND"
.LASF366:
	.string	"OP_EACH"
.LASF538:
	.string	"OP_SHMWRITE"
.LASF367:
	.string	"OP_VALUES"
.LASF389:
	.string	"OP_GREPSTART"
.LASF11:
	.string	"size_t"
.LASF256:
	.string	"OP_PROTOTYPE"
.LASF750:
	.string	"stack"
.LASF318:
	.string	"OP_I_NE"
.LASF826:
	.string	"PL_savestack_ix"
.LASF261:
	.string	"OP_BACKTICK"
.LASF771:
	.string	"cmpindir_desc"
.LASF814:
	.string	"PL_defgv"
.LASF807:
	.string	"amagic_i_ncmp"
.LASF229:
	.string	"SVt_PVGV"
.LASF617:
	.string	"blku_eval"
.LASF759:
	.string	"partition_stack"
.LASF72:
	.string	"sublen"
.LASF736:
	.string	"qsort_break_even"
.LASF415:
	.string	"OP_LEAVE"
.LASF128:
	.string	"xav_fill"
.LASF501:
	.string	"OP_CHOWN"
.LASF663:
	.string	"bool__amg"
.LASF608:
	.string	"next_op"
.LASF475:
	.string	"OP_FTREXEC"
.LASF108:
	.string	"mg_moremagic"
.LASF506:
	.string	"OP_RENAME"
.LASF631:
	.string	"sbu_strend"
.LASF36:
	.string	"cop_arybase"
.LASF831:
	.string	"PL_markstack_ptr"
.LASF349:
	.string	"OP_VEC"
.LASF640:
	.string	"si_cxmax"
.LASF442:
	.string	"OP_READ"
.LASF410:
	.string	"OP_LINESEQ"
.LASF114:
	.string	"mg_ptr"
.LASF436:
	.string	"OP_TIED"
.LASF287:
	.string	"OP_POSTINC"
.LASF615:
	.string	"itermax"
.LASF374:
	.string	"OP_UNPACK"
.LASF531:
	.string	"OP_LOCALTIME"
.LASF182:
	.string	"xio_subprocess"
.LASF747:
	.string	"iwhich"
.LASF490:
	.string	"OP_FTFILE"
.LASF70:
	.string	"subbeg"
.LASF64:
	.string	"startp"
.LASF735:
	.string	"right"
.LASF721:
	.string	"to_hv_amg"
.LASF577:
	.string	"OP_GGRNAM"
.LASF846:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF301:
	.string	"OP_SUBTRACT"
.LASF477:
	.string	"OP_FTEWRITE"
.LASF722:
	.string	"to_gv_amg"
.LASF503:
	.string	"OP_UNLINK"
.LASF63:
	.string	"regexp"
.LASF586:
	.string	"OP_SETSTATE"
.LASF423:
	.string	"OP_NEXT"
.LASF458:
	.string	"OP_IOCTL"
.LASF62:
	.string	"REGEXP"
.LASF60:
	.string	"sv_refcnt"
.LASF737:
	.string	"list1"
.LASF418:
	.string	"OP_ITER"
.LASF495:
	.string	"OP_FTSGID"
.LASF250:
	.string	"OP_PUSHRE"
.LASF248:
	.string	"OP_PADHV"
.LASF518:
	.string	"OP_FORK"
.LASF189:
	.string	"svt_len"
.LASF727:
	.string	"max_amg_code"
.LASF213:
	.string	"next_off"
.LASF412:
	.string	"OP_DBSTATE"
.LASF30:
	.string	"op_flags"
.LASF38:
	.string	"cop_warnings"
.LASF645:
	.string	"PERL_SI"
.LASF780:
	.string	"origmark"
.LASF67:
	.string	"substrs"
.LASF840:
	.string	"PL_sortcop"
.LASF573:
	.string	"OP_GPWUID"
.LASF281:
	.string	"OP_STUDY"
.LASF348:
	.string	"OP_SUBSTR"
.LASF102:
	.string	"blku_oldscopesp"
.LASF226:
	.string	"SVt_PVAV"
.LASF554:
	.string	"OP_GHOSTENT"
.LASF639:
	.string	"si_cxix"
.LASF138:
	.string	"xhv_array"
.LASF556:
	.string	"OP_GNBYADDR"
.LASF678:
	.string	"pow_ass_amg"
.LASF71:
	.string	"offsets"
.LASF701:
	.string	"seq_amg"
.LASF382:
	.string	"OP_SPLICE"
.LASF819:
	.string	"PL_stack_sp"
.LASF327:
	.string	"OP_SCMP"
.LASF514:
	.string	"OP_TELLDIR"
.LASF180:
	.string	"xio_bottom_name"
.LASF328:
	.string	"OP_BIT_AND"
.LASF224:
	.string	"SVt_PVBM"
.LASF661:
	.string	"fallback_amg"
.LASF816:
	.string	"PL_sv_undef"
.LASF106:
	.string	"MAGIC"
.LASF32:
	.string	"cop_label"
.LASF112:
	.string	"mg_flags"
.LASF769:
	.string	"still_work_on_right"
.LASF603:
	.string	"cur_text"
.LASF125:
	.string	"XPVAV"
.LASF764:
	.string	"pc_left"
.LASF762:
	.string	"part_right"
.LASF228:
	.string	"SVt_PVCV"
.LASF842:
	.string	"PL_firstgv"
.LASF284:
	.string	"OP_I_PREINC"
.LASF75:
	.string	"prelen"
.LASF836:
	.string	"PL_curcop"
.LASF390:
	.string	"OP_GREPWHILE"
.LASF424:
	.string	"OP_REDO"
.LASF27:
	.string	"op_targ"
.LASF283:
	.string	"OP_PREINC"
.LASF181:
	.string	"xio_bottom_gv"
.LASF813:
	.string	"PL_stderrgv"
.LASF280:
	.string	"OP_UNDEF"
.LASF333:
	.string	"OP_NOT"
.LASF431:
	.string	"OP_FILENO"
.LASF101:
	.string	"blku_oldmarksp"
.LASF396:
	.string	"OP_AND"
.LASF548:
	.string	"OP_ENTEREVAL"
.LASF77:
	.string	"lastparen"
.LASF686:
	.string	"bor_ass_amg"
.LASF153:
	.string	"XPVCV"
.LASF772:
	.string	"S_qsortsv"
.LASF613:
	.string	"iterary"
.LASF827:
	.string	"PL_savestack_max"
.LASF330:
	.string	"OP_BIT_OR"
.LASF465:
	.string	"OP_ACCEPT"
.LASF792:
	.string	"newsp"
.LASF821:
	.string	"PL_curpad"
.LASF437:
	.string	"OP_DBMOPEN"
.LASF582:
	.string	"OP_GETLOGIN"
.LASF9:
	.string	"__ssize_t"
.LASF215:
	.string	"reg_data"
.LASF178:
	.string	"xio_fmt_name"
.LASF648:
	.string	"hent_val"
.LASF413:
	.string	"OP_UNSTACK"
.LASF656:
	.string	"je_mustcatch"
.LASF124:
	.string	"xnv_nv"
.LASF646:
	.string	"hent_next"
.LASF455:
	.string	"OP_SEEK"
.LASF681:
	.string	"rshift_amg"
.LASF191:
	.string	"svt_free"
.LASF738:
	.string	"list2"
.LASF54:
	.string	"op_pmdynflags"
.LASF724:
	.string	"iter_amg"
.LASF739:
	.string	"nmemb"
.LASF16:
	.string	"__val"
.LASF525:
	.string	"OP_GETPGRP"
.LASF230:
	.string	"SVt_PVFM"
.LASF385:
	.string	"OP_SHIFT"
.LASF411:
	.string	"OP_NEXTSTATE"
.LASF202:
	.string	"clone_params"
.LASF579:
	.string	"OP_GGRENT"
.LASF688:
	.string	"bxor_ass_amg"
.LASF320:
	.string	"OP_I_NCMP"
.LASF298:
	.string	"OP_REPEAT"
.LASF358:
	.string	"OP_LCFIRST"
.LASF497:
	.string	"OP_FTTTY"
.LASF303:
	.string	"OP_CONCAT"
.LASF783:
	.string	"nextop"
.LASF446:
	.string	"OP_PRINT"
.LASF630:
	.string	"sbu_m"
.LASF164:
	.string	"xcv_outside"
.LASF235:
	.string	"PADLIST"
.LASF200:
	.string	"any_dxptr"
.LASF829:
	.string	"PL_tmps_floor"
.LASF386:
	.string	"OP_UNSHIFT"
.LASF152:
	.string	"xgv_flags"
.LASF107:
	.string	"magic"
.LASF529:
	.string	"OP_TIME"
.LASF478:
	.string	"OP_FTEEXEC"
.LASF575:
	.string	"OP_SPWENT"
.LASF744:
	.string	"cmp_desc"
.LASF800:
	.string	"result"
.LASF480:
	.string	"OP_FTEOWNED"
.LASF808:
	.string	"amagic_cmp"
.LASF295:
	.string	"OP_I_DIVIDE"
.LASF316:
	.string	"OP_I_EQ"
.LASF227:
	.string	"SVt_PVHV"
.LASF216:
	.string	"SVt_NULL"
.LASF546:
	.string	"OP_REQUIRE"
.LASF186:
	.string	"mgvtbl"
.LASF262:
	.string	"OP_GLOB"
.LASF515:
	.string	"OP_SEEKDIR"
.LASF146:
	.string	"XPVGV"
.LASF445:
	.string	"OP_PRTF"
.LASF633:
	.string	"sbu_rx"
.LASF185:
	.string	"MGVTBL"
.LASF555:
	.string	"OP_GNBYNAME"
.LASF635:
	.string	"cx_subst"
.LASF634:
	.string	"cx_blk"
.LASF231:
	.string	"SVt_PVIO"
.LASF221:
	.string	"SVt_PVIV"
.LASF341:
	.string	"OP_LOG"
.LASF73:
	.string	"refcnt"
.LASF288:
	.string	"OP_I_POSTINC"
.LASF723:
	.string	"to_cv_amg"
.LASF625:
	.string	"sbu_rxtainted"
.LASF507:
	.string	"OP_LINK"
.LASF803:
	.string	"sv_ncmp"
.LASF391:
	.string	"OP_MAPSTART"
.LASF692:
	.string	"ge_amg"
.LASF136:
	.string	"XPVHV"
.LASF733:
	.string	"partition_stack_entry"
.LASF7:
	.string	"sizetype"
.LASF315:
	.string	"OP_EQ"
.LASF242:
	.string	"OP_CONST"
.LASF746:
	.string	"level"
.LASF50:
	.string	"op_pmnext"
.LASF527:
	.string	"OP_GETPRIORITY"
.LASF463:
	.string	"OP_CONNECT"
.LASF158:
	.string	"xcv_xsub"
.LASF749:
	.string	"which"
.LASF530:
	.string	"OP_TMS"
.LASF595:
	.string	"hasargs"
.LASF405:
	.string	"OP_LEAVESUBLV"
.LASF469:
	.string	"OP_GETSOCKNAME"
.LASF31:
	.string	"op_private"
.LASF245:
	.string	"OP_GELEM"
.LASF355:
	.string	"OP_CHR"
.LASF706:
	.string	"dec_amg"
.LASF194:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF822:
	.string	"PL_stack_base"
.LASF304:
	.string	"OP_STRINGIFY"
.LASF522:
	.string	"OP_EXEC"
.LASF302:
	.string	"OP_I_SUBTRACT"
.LASF167:
	.string	"XPVIO"
.LASF791:
	.string	"start"
.LASF119:
	.string	"XPVIV"
.LASF133:
	.string	"xav_alloc"
.LASF243:
	.string	"OP_GVSV"
.LASF623:
	.string	"sbu_oldsave"
.LASF140:
	.string	"xhv_max"
.LASF20:
	.string	"sigjmp_buf"
.LASF74:
	.string	"minlen"
.LASF274:
	.string	"OP_AASSIGN"
.LASF448:
	.string	"OP_SYSSEEK"
.LASF132:
	.string	"xmg_stash"
.LASF545:
	.string	"OP_SEMOP"
.LASF622:
	.string	"sbu_rflags"
.LASF781:
	.string	"stash"
.LASF66:
	.string	"regstclass"
.LASF313:
	.string	"OP_GE"
.LASF143:
	.string	"xhv_eiter"
.LASF379:
	.string	"OP_LSLICE"
.LASF443:
	.string	"OP_ENTERWRITE"
.LASF309:
	.string	"OP_GT"
.LASF244:
	.string	"OP_GV"
.LASF471:
	.string	"OP_LSTAT"
.LASF440:
	.string	"OP_SELECT"
.LASF534:
	.string	"OP_SLEEP"
.LASF225:
	.string	"SVt_PVLV"
.LASF214:
	.string	"reg_substr_data"
.LASF698:
	.string	"sle_amg"
.LASF596:
	.string	"lval"
.LASF592:
	.string	"savearray"
.LASF612:
	.string	"iterlval"
.LASF667:
	.string	"add_amg"
.LASF241:
	.string	"OP_WANTARRAY"
.LASF823:
	.string	"PL_stack_max"
.LASF306:
	.string	"OP_RIGHT_SHIFT"
.LASF740:
	.string	"sense"
.LASF561:
	.string	"OP_GSBYNAME"
.LASF105:
	.string	"blk_u"
.LASF223:
	.string	"SVt_PVMG"
.LASF130:
	.string	"xof_off"
.LASF528:
	.string	"OP_SETPRIORITY"
.LASF832:
	.string	"PL_markstack_max"
.LASF670:
	.string	"subtr_ass_amg"
.LASF578:
	.string	"OP_GGRGID"
.LASF809:
	.string	"str1"
.LASF150:
	.string	"xgv_namelen"
.LASF753:
	.string	"S_mergesortsv"
.LASF788:
	.string	"proto"
.LASF45:
	.string	"op_last"
.LASF247:
	.string	"OP_PADAV"
.LASF208:
	.string	"__dirstream"
.LASF375:
	.string	"OP_PACK"
.LASF197:
	.string	"any_long"
.LASF428:
	.string	"OP_OPEN"
.LASF828:
	.string	"PL_tmps_ix"
.LASF29:
	.string	"op_seq"
.LASF703:
	.string	"not_amg"
.LASF837:
	.string	"PL_curstack"
.LASF559:
	.string	"OP_GPBYNUMBER"
.LASF222:
	.string	"SVt_PVNV"
.LASF46:
	.string	"PMOP"
.LASF362:
	.string	"OP_RV2AV"
.LASF510:
	.string	"OP_MKDIR"
.LASF451:
	.string	"OP_SEND"
.LASF489:
	.string	"OP_FTBLK"
.LASF78:
	.string	"lastcloseparen"
.LASF662:
	.string	"abs_amg"
.LASF41:
	.string	"unop"
.LASF502:
	.string	"OP_CHROOT"
.LASF820:
	.string	"PL_op"
.LASF183:
	.string	"xio_type"
.LASF801:
	.string	"sortcv_stacked"
.LASF476:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF190:
	.string	"svt_clear"
.LASF170:
	.string	"xio_ofp"
.LASF151:
	.string	"xgv_stash"
.LASF345:
	.string	"OP_OCT"
.LASF600:
	.string	"old_op_type"
.LASF300:
	.string	"OP_I_ADD"
.LASF48:
	.string	"op_pmreplroot"
.LASF162:
	.string	"xcv_depth"
.LASF89:
	.string	"gp_cvgen"
.LASF122:
	.string	"XPVNV"
.LASF142:
	.string	"xhv_riter"
.LASF104:
	.string	"blku_gimme"
.LASF605:
	.string	"label"
.LASF254:
	.string	"OP_RV2CV"
.LASF94:
	.string	"context"
.LASF591:
	.string	"dfoutgv"
.LASF696:
	.string	"scmp_amg"
.LASF488:
	.string	"OP_FTCHR"
.LASF741:
	.string	"last"
.LASF387:
	.string	"OP_SORT"
.LASF360:
	.string	"OP_LC"
.LASF311:
	.string	"OP_LE"
.LASF789:
	.string	"tmpstr"
.LASF811:
	.string	"amagic_cmp_locale"
.LASF562:
	.string	"OP_GSBYPORT"
.LASF49:
	.string	"op_pmreplstart"
.LASF588:
	.string	"OP_CUSTOM"
.LASF307:
	.string	"OP_LT"
.LASF329:
	.string	"OP_BIT_XOR"
.LASF776:
	.string	"hints"
.LASF408:
	.string	"OP_DIE"
.LASF271:
	.string	"OP_SUBSTCONT"
.LASF824:
	.string	"PL_scopestack_ix"
.LASF217:
	.string	"SVt_IV"
.LASF293:
	.string	"OP_I_MULTIPLY"
.LASF211:
	.string	"regnode"
.LASF671:
	.string	"mult_amg"
.LASF337:
	.string	"OP_COS"
.LASF25:
	.string	"op_sibling"
.LASF171:
	.string	"xio_dirpu"
.LASF196:
	.string	"any_iv"
.LASF364:
	.string	"OP_AELEM"
.LASF765:
	.string	"pc_right"
.LASF144:
	.string	"xhv_pmroot"
.LASF680:
	.string	"lshift_ass_amg"
.LASF334:
	.string	"OP_COMPLEMENT"
.LASF409:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF47:
	.string	"pmop"
.LASF777:
	.string	"Perl_sortsv"
.LASF486:
	.string	"OP_FTCTIME"
.LASF392:
	.string	"OP_MAPWHILE"
.LASF843:
	.string	"PL_secondgv"
.LASF484:
	.string	"OP_FTMTIME"
.LASF760:
	.string	"next_stack_entry"
.LASF376:
	.string	"OP_SPLIT"
.LASF624:
	.string	"sbu_once"
.LASF332:
	.string	"OP_I_NEGATE"
.LASF513:
	.string	"OP_READDIR"
.LASF725:
	.string	"int_amg"
.LASF56:
	.string	"PerlInterpreter"
.LASF666:
	.string	"numer_amg"
.LASF675:
	.string	"modulo_amg"
.LASF317:
	.string	"OP_NE"
.LASF712:
	.string	"sqrt_amg"
.LASF715:
	.string	"concat_amg"
.LASF553:
	.string	"OP_GHBYADDR"
.LASF668:
	.string	"add_ass_amg"
.LASF8:
	.string	"char"
.LASF398:
	.string	"OP_XOR"
.LASF473:
	.string	"OP_FTRREAD"
.LASF593:
	.string	"argarray"
.LASF687:
	.string	"bxor_amg"
.LASF176:
	.string	"xio_top_name"
.LASF521:
	.string	"OP_SYSTEM"
.LASF115:
	.string	"mg_len"
.LASF447:
	.string	"OP_SYSOPEN"
.LASF233:
	.string	"xiou_dirp"
.LASF149:
	.string	"xgv_name"
.LASF264:
	.string	"OP_RCATLINE"
.LASF397:
	.string	"OP_OR"
.LASF729:
	.string	"gptr"
.LASF289:
	.string	"OP_POSTDEC"
.LASF674:
	.string	"div_ass_amg"
.LASF590:
	.string	"block_sub"
.LASF457:
	.string	"OP_FCNTL"
.LASF482:
	.string	"OP_FTZERO"
.LASF251:
	.string	"OP_RV2GV"
.LASF378:
	.string	"OP_LIST"
.LASF172:
	.string	"xio_lines"
.LASF479:
	.string	"OP_FTIS"
.LASF638:
	.string	"si_cxstack"
.LASF237:
	.string	"OP_NULL"
.LASF118:
	.string	"xpv_len"
.LASF28:
	.string	"op_type"
.LASF371:
	.string	"OP_RV2HV"
.LASF22:
	.string	"STRLEN"
.LASF847:
	.string	"pp_sort.c"
.LASF494:
	.string	"OP_FTSUID"
.LASF269:
	.string	"OP_QR"
.LASF353:
	.string	"OP_FORMLINE"
.LASF601:
	.string	"old_namesv"
.LASF520:
	.string	"OP_WAITPID"
.LASF218:
	.string	"SVt_NV"
.LASF350:
	.string	"OP_INDEX"
.LASF338:
	.string	"OP_RAND"
.LASF351:
	.string	"OP_RINDEX"
.LASF651:
	.string	"hek_key"
.LASF568:
	.string	"OP_EHOSTENT"
.LASF297:
	.string	"OP_I_MODULO"
.LASF726:
	.string	"DESTROY_amg"
.LASF161:
	.string	"xcv_file"
.LASF751:
	.string	"stackp"
.LASF205:
	.string	"proto_perl"
.LASF602:
	.string	"old_eval_root"
.LASF373:
	.string	"OP_HSLICE"
.LASF296:
	.string	"OP_MODULO"
.LASF537:
	.string	"OP_SHMREAD"
.LASF491:
	.string	"OP_FTDIR"
.LASF567:
	.string	"OP_SSERVENT"
.LASF707:
	.string	"atan2_amg"
.LASF798:
	.string	"oldsaveix"
.LASF236:
	.string	"PADOFFSET"
.LASF52:
	.string	"op_pmflags"
.LASF676:
	.string	"modulo_ass_amg"
.LASF616:
	.string	"blku_sub"
.LASF57:
	.string	"interpreter"
.LASF103:
	.string	"blku_oldpm"
.LASF700:
	.string	"sge_amg"
.LASF732:
	.string	"off_runs"
.LASF42:
	.string	"op_first"
.LASF21:
	.string	"double"
.LASF53:
	.string	"op_pmpermflags"
.LASF129:
	.string	"xav_max"
.LASF10:
	.string	"ssize_t"
.LASF26:
	.string	"op_ppaddr"
.LASF585:
	.string	"OP_THREADSV"
.LASF660:
	.string	"SVCOMPARE_t"
.LASF704:
	.string	"compl_amg"
.LASF195:
	.string	"any_i32"
.LASF705:
	.string	"inc_amg"
.LASF718:
	.string	"neg_amg"
.LASF220:
	.string	"SVt_PV"
.LASF34:
	.string	"cop_filegv"
.LASF198:
	.string	"any_bool"
.LASF383:
	.string	"OP_PUSH"
.LASF359:
	.string	"OP_UC"
.LASF166:
	.string	"xcv_outside_seq"
.LASF768:
	.string	"still_work_on_left"
.LASF286:
	.string	"OP_I_PREDEC"
.LASF69:
	.string	"data"
.LASF462:
	.string	"OP_BIND"
.LASF569:
	.string	"OP_ENETENT"
.LASF516:
	.string	"OP_REWINDDIR"
.LASF641:
	.string	"si_type"
.LASF127:
	.string	"xav_array"
.LASF219:
	.string	"SVt_RV"
.LASF201:
	.string	"CLONE_PARAMS"
.LASF416:
	.string	"OP_SCOPE"
.LASF552:
	.string	"OP_GHBYNAME"
.LASF285:
	.string	"OP_PREDEC"
.LASF728:
	.string	"aptr"
.LASF790:
	.string	"markoff"
.LASF606:
	.string	"resetsp"
.LASF93:
	.string	"PERL_CONTEXT"
.LASF139:
	.string	"xhv_fill"
.LASF121:
	.string	"xiv_iv"
.LASF745:
	.string	"base"
.LASF734:
	.string	"left"
.LASF659:
	.string	"runops_proc_t"
.LASF98:
	.string	"blku_oldsp"
.LASF679:
	.string	"lshift_amg"
.LASF519:
	.string	"OP_WAIT"
.LASF425:
	.string	"OP_DUMP"
.LASF713:
	.string	"repeat_amg"
.LASF731:
	.string	"runs"
.LASF273:
	.string	"OP_SASSIGN"
.LASF672:
	.string	"mult_ass_amg"
.LASF607:
	.string	"redo_op"
.LASF363:
	.string	"OP_AELEMFAST"
.LASF650:
	.string	"hek_len"
.LASF752:
	.string	"savecmp"
.LASF766:
	.string	"u_right"
.LASF357:
	.string	"OP_UCFIRST"
.LASF508:
	.string	"OP_SYMLINK"
.LASF342:
	.string	"OP_SQRT"
.LASF540:
	.string	"OP_MSGCTL"
.LASF483:
	.string	"OP_FTSIZE"
.LASF13:
	.string	"long long unsigned int"
.LASF730:
	.string	"offset"
.LASF689:
	.string	"lt_amg"
.LASF453:
	.string	"OP_EOF"
.LASF609:
	.string	"last_op"
.LASF499:
	.string	"OP_FTBINARY"
.LASF472:
	.string	"OP_STAT"
.LASF652:
	.string	"jmpenv"
.LASF851:
	.string	"Perl_pp_sort"
.LASF372:
	.string	"OP_HELEM"
.LASF793:
	.string	"oldcatch"
.LASF657:
	.string	"JMPENV"
.LASF249:
	.string	"OP_PADANY"
.LASF253:
	.string	"OP_AV2ARYLEN"
.LASF459:
	.string	"OP_FLOCK"
.LASF354:
	.string	"OP_ORD"
.LASF193:
	.string	"svt_dup"
.LASF644:
	.string	"si_markoff"
.LASF240:
	.string	"OP_PUSHMARK"
.LASF758:
	.string	"temp"
.LASF547:
	.string	"OP_DOFILE"
.LASF177:
	.string	"xio_top_gv"
.LASF673:
	.string	"div_amg"
.LASF817:
	.string	"PL_amagic_generation"
.LASF369:
	.string	"OP_DELETE"
.LASF755:
	.string	"array"
.LASF669:
	.string	"subtr_amg"
.LASF632:
	.string	"sbu_rxres"
.LASF838:
	.string	"PL_curstackinfo"
.LASF404:
	.string	"OP_LEAVESUB"
.LASF246:
	.string	"OP_PADSV"
.LASF258:
	.string	"OP_SREFGEN"
.LASF426:
	.string	"OP_GOTO"
.LASF55:
	.string	"op_pmstash"
.LASF187:
	.string	"svt_get"
.LASF84:
	.string	"gp_form"
.LASF797:
	.string	"sortcv"
.LASF290:
	.string	"OP_I_POSTDEC"
.LASF252:
	.string	"OP_RV2SV"
.LASF99:
	.string	"blku_oldcop"
.LASF33:
	.string	"cop_stash"
.LASF260:
	.string	"OP_BLESS"
.LASF532:
	.string	"OP_GMTIME"
.LASF757:
	.string	"compare"
.LASF14:
	.string	"long long int"
.LASF206:
	.string	"line_t"
.LASF145:
	.string	"xhv_name"
.LASF498:
	.string	"OP_FTTEXT"
.LASF637:
	.string	"si_stack"
.LASF485:
	.string	"OP_FTATIME"
.LASF192:
	.string	"svt_copy"
.LASF384:
	.string	"OP_POP"
.LASF282:
	.string	"OP_POS"
.LASF291:
	.string	"OP_POW"
.LASF417:
	.string	"OP_ENTERITER"
.LASF257:
	.string	"OP_REFGEN"
.LASF441:
	.string	"OP_GETC"
.LASF44:
	.string	"listop"
.LASF754:
	.string	"S_qsortsvu"
.LASF474:
	.string	"OP_FTRWRITE"
.LASF468:
	.string	"OP_SSOCKOPT"
.LASF95:
	.string	"cx_type"
.LASF135:
	.string	"xav_flags"
.LASF574:
	.string	"OP_GPWENT"
.LASF43:
	.string	"LISTOP"
.LASF614:
	.string	"iterix"
.LASF564:
	.string	"OP_SHOSTENT"
.LASF422:
	.string	"OP_LAST"
.LASF131:
	.string	"xmg_magic"
.LASF368:
	.string	"OP_KEYS"
.LASF113:
	.string	"mg_obj"
.LASF795:
	.string	"prev"
.LASF551:
	.string	"OP_LEAVETRY"
.LASF199:
	.string	"any_dptr"
.LASF394:
	.string	"OP_FLIP"
.LASF719:
	.string	"to_sv_amg"
.LASF512:
	.string	"OP_OPEN_DIR"
.LASF126:
	.string	"xpvav"
.LASF51:
	.string	"op_pmregexp"
.LASF259:
	.string	"OP_REF"
.LASF461:
	.string	"OP_SOCKPAIR"
.LASF558:
	.string	"OP_GPBYNAME"
.LASF159:
	.string	"xcv_xsubany"
.LASF799:
	.string	"oldscopeix"
.LASF432:
	.string	"OP_UMASK"
.LASF175:
	.string	"xio_lines_left"
.LASF452:
	.string	"OP_RECV"
.LASF85:
	.string	"gp_av"
.LASF456:
	.string	"OP_TRUNCATE"
.LASF430:
	.string	"OP_PIPE_OP"
.LASF576:
	.string	"OP_EPWENT"
.LASF604:
	.string	"block_loop"
.LASF255:
	.string	"OP_ANONCODE"
.LASF699:
	.string	"sgt_amg"
.LASF677:
	.string	"pow_amg"
.LASF272:
	.string	"OP_TRANS"
.LASF653:
	.string	"je_buf"
.LASF583:
	.string	"OP_SYSCALL"
.LASF165:
	.string	"xcv_flags"
.LASF587:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF621:
	.string	"sbu_maxiters"
.LASF154:
	.string	"xpvcv"
.LASF335:
	.string	"OP_ATAN2"
.LASF380:
	.string	"OP_ANONLIST"
.LASF802:
	.string	"sortcv_xsub"
.LASF460:
	.string	"OP_SOCKET"
.LASF365:
	.string	"OP_ASLICE"
.LASF344:
	.string	"OP_HEX"
.LASF597:
	.string	"oldcomppad"
.LASF209:
	.string	"_PerlIO"
.LASF439:
	.string	"OP_SSELECT"
.LASF685:
	.string	"bor_amg"
.LASF702:
	.string	"sne_amg"
.LASF539:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF88:
	.string	"gp_cv"
.LASF761:
	.string	"part_left"
.LASF361:
	.string	"OP_QUOTEMETA"
.LASF15:
	.string	"__jmp_buf"
.LASF594:
	.string	"olddepth"
.LASF319:
	.string	"OP_NCMP"
.LASF550:
	.string	"OP_ENTERTRY"
.LASF763:
	.string	"swapped"
.LASF504:
	.string	"OP_CHMOD"
.LASF767:
	.string	"u_left"
.LASF340:
	.string	"OP_EXP"
.LASF356:
	.string	"OP_CRYPT"
.LASF844:
	.string	"PL_sortcxix"
.LASF505:
	.string	"OP_UTIME"
.LASF709:
	.string	"sin_amg"
.LASF207:
	.string	"PerlIOl"
.LASF403:
	.string	"OP_ENTERSUB"
.LASF204:
	.string	"flags"
.LASF352:
	.string	"OP_SPRINTF"
.LASF266:
	.string	"OP_REGCRESET"
.LASF806:
	.string	"tmpsv"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
