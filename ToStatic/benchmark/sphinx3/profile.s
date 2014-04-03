	.file	"profile.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# profile.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	pctr_reset
	.type	pctr_reset, @function
pctr_reset:
.LFB2:
	.file 1 "profile.c"
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ctr, ctr
	.loc 1 80 0
	movq	-8(%rbp), %rax	# ctr, tmp59
	movl	$0, 8(%rax)	#, ctr_1(D)->count
	.loc 1 81 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pctr_reset, .-pctr_reset
	.globl	pctr_reset_all
	.type	pctr_reset_all, @function
pctr_reset_all:
.LFB3:
	.loc 1 85 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# ctr, ctr
	.loc 1 86 0
	jmp	.L3	#
.L4:
	.loc 1 87 0 discriminator 2
	movq	-8(%rbp), %rax	# ctr, tmp60
	movq	%rax, %rdi	# tmp60,
	call	pctr_reset	#
	.loc 1 86 0 discriminator 2
	addq	$16, -8(%rbp)	#, ctr
.L3:
	.loc 1 86 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctr, tmp61
	movq	(%rax), %rax	# ctr_1->name, D.3777
	testq	%rax, %rax	# D.3777
	jne	.L4	#,
	.loc 1 88 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	pctr_reset_all, .-pctr_reset_all
	.section	.rodata
.LC0:
	.string	"CTR:"
.LC1:
	.string	"  %d %s"
	.text
	.globl	pctr_print_all
	.type	pctr_print_all, @function
pctr_print_all:
.LFB4:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# ctr, ctr
	.loc 1 93 0
	movq	-16(%rbp), %rax	# ctr, tmp63
	movq	(%rax), %rax	# ctr_2(D)->name, D.3778
	testq	%rax, %rax	# D.3778
	jne	.L6	#,
	.loc 1 94 0
	jmp	.L5	#
.L6:
	.loc 1 96 0
	movq	-8(%rbp), %rax	# fp, tmp64
	movq	%rax, %rcx	# tmp64,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 97 0
	jmp	.L8	#
.L9:
	.loc 1 98 0 discriminator 2
	movq	-16(%rbp), %rax	# ctr, tmp65
	movq	(%rax), %rcx	# ctr_1->name, D.3778
	movq	-16(%rbp), %rax	# ctr, tmp66
	movl	8(%rax), %edx	# ctr_1->count, D.3779
	movq	-8(%rbp), %rax	# fp, tmp67
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp67,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 97 0 discriminator 2
	addq	$16, -16(%rbp)	#, ctr
.L8:
	.loc 1 97 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctr, tmp68
	movq	(%rax), %rax	# ctr_1->name, D.3778
	testq	%rax, %rax	# D.3778
	jne	.L9	#,
	.loc 1 99 0 is_stmt 1
	movq	-8(%rbp), %rax	# fp, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$10, %edi	#,
	call	fputc	#
.L5:
	.loc 1 100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	pctr_print_all, .-pctr_print_all
	.globl	host_pclk
	.type	host_pclk, @function
host_pclk:
.LFB5:
	.loc 1 104 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# dummy, dummy
	.loc 1 105 0
	movl	$0, -4(%rbp)	#, mhz
	.loc 1 147 0
	movl	-4(%rbp), %eax	# mhz, D.3782
	.loc 1 148 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	host_pclk, .-host_pclk
	.type	make_sec, @function
make_sec:
.LFB6:
	.loc 1 169 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 170 0
	movq	-8(%rbp), %rax	# s, tmp66
	movq	(%rax), %rax	# s_1(D)->tv_sec, D.3783
	cvtsi2sdq	%rax, %xmm1	# D.3783, D.3784
	movq	-8(%rbp), %rax	# s, tmp67
	movq	8(%rax), %rax	# s_1(D)->tv_usec, D.3783
	cvtsi2sdq	%rax, %xmm0	# D.3783, D.3784
	movsd	.LC2(%rip), %xmm2	#, tmp68
	mulsd	%xmm2, %xmm0	# tmp68, D.3784
	addsd	%xmm1, %xmm0	# D.3784, D.3785
	movsd	%xmm0, -16(%rbp)	# D.3785, %sfp
	movq	-16(%rbp), %rax	# %sfp, <retval>
	.loc 1 171 0
	movq	%rax, -16(%rbp)	# <retval>, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	make_sec, .-make_sec
	.globl	ptmr_start
	.type	ptmr_start, @function
ptmr_start:
.LFB7:
	.loc 1 177 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tm, tm
	.loc 1 204 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ptmr_start, .-ptmr_start
	.globl	ptmr_stop
	.type	ptmr_stop, @function
ptmr_stop:
.LFB8:
	.loc 1 208 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tm, tm
	.loc 1 244 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ptmr_stop, .-ptmr_stop
	.globl	ptmr_reset
	.type	ptmr_reset, @function
ptmr_reset:
.LFB9:
	.loc 1 248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tm, tm
	.loc 1 249 0
	movq	-8(%rbp), %rdx	# tm, tmp59
	movl	$0, %eax	#, tmp60
	movq	%rax, 8(%rdx)	# tmp60, tm_1(D)->t_cpu
	.loc 1 250 0
	movq	-8(%rbp), %rdx	# tm, tmp61
	movl	$0, %eax	#, tmp62
	movq	%rax, 16(%rdx)	# tmp62, tm_1(D)->t_elapsed
	.loc 1 251 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ptmr_reset, .-ptmr_reset
	.globl	ptmr_init
	.type	ptmr_init, @function
ptmr_init:
.LFB10:
	.loc 1 255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tm, tm
	.loc 1 256 0
	movq	-8(%rbp), %rdx	# tm, tmp59
	movl	$0, %eax	#, tmp60
	movq	%rax, 8(%rdx)	# tmp60, tm_1(D)->t_cpu
	.loc 1 257 0
	movq	-8(%rbp), %rdx	# tm, tmp61
	movl	$0, %eax	#, tmp62
	movq	%rax, 16(%rdx)	# tmp62, tm_1(D)->t_elapsed
	.loc 1 258 0
	movq	-8(%rbp), %rdx	# tm, tmp63
	movl	$0, %eax	#, tmp64
	movq	%rax, 24(%rdx)	# tmp64, tm_1(D)->t_tot_cpu
	.loc 1 259 0
	movq	-8(%rbp), %rdx	# tm, tmp65
	movl	$0, %eax	#, tmp66
	movq	%rax, 32(%rdx)	# tmp66, tm_1(D)->t_tot_elapsed
	.loc 1 260 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ptmr_init, .-ptmr_init
	.globl	ptmr_reset_all
	.type	ptmr_reset_all, @function
ptmr_reset_all:
.LFB11:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# tm, tm
	.loc 1 265 0
	jmp	.L19	#
.L20:
	.loc 1 266 0 discriminator 2
	movq	-8(%rbp), %rax	# tm, tmp60
	movq	%rax, %rdi	# tmp60,
	call	ptmr_reset	#
	.loc 1 265 0 discriminator 2
	addq	$56, -8(%rbp)	#, tm
.L19:
	.loc 1 265 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tm, tmp61
	movq	(%rax), %rax	# tm_1->name, D.3787
	testq	%rax, %rax	# D.3787
	jne	.L20	#,
	.loc 1 267 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ptmr_reset_all, .-ptmr_reset_all
	.section	.rodata
.LC5:
	.string	"  %6.2fx %s"
	.text
	.globl	ptmr_print_all
	.type	ptmr_print_all, @function
ptmr_print_all:
.LFB12:
	.loc 1 271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# tm, tm
	movsd	%xmm0, -24(%rbp)	# norm, norm
	.loc 1 272 0
	xorpd	%xmm0, %xmm0	# tmp63
	ucomisd	-24(%rbp), %xmm0	# norm, tmp63
	jp	.L26	#,
	xorpd	%xmm0, %xmm0	# tmp64
	ucomisd	-24(%rbp), %xmm0	# norm, tmp64
	je	.L21	#,
.L26:
	.loc 1 273 0
	movsd	.LC4(%rip), %xmm0	#, tmp66
	divsd	-24(%rbp), %xmm0	# norm, tmp65
	movsd	%xmm0, -24(%rbp)	# tmp65, norm
	.loc 1 274 0
	jmp	.L24	#
.L25:
	.loc 1 275 0 discriminator 2
	movq	-16(%rbp), %rax	# tm, tmp67
	movq	(%rax), %rdx	# tm_1->name, D.3788
	movq	-16(%rbp), %rax	# tm, tmp68
	movsd	8(%rax), %xmm0	# tm_1->t_cpu, D.3789
	mulsd	-24(%rbp), %xmm0	# norm, D.3789
	movq	-8(%rbp), %rax	# fp, tmp69
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 274 0 discriminator 2
	addq	$56, -16(%rbp)	#, tm
.L24:
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tm, tmp70
	movq	(%rax), %rax	# tm_1->name, D.3788
	testq	%rax, %rax	# D.3788
	jne	.L25	#,
.L21:
	.loc 1 277 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ptmr_print_all, .-ptmr_print_all
	.section	.rodata
.LC6:
	.string	"/tmp/__EnDiAn_TeSt__"
.LC7:
	.string	"wb"
.LC8:
	.string	"ERROR"
.LC9:
	.string	"profile.c"
.LC10:
	.string	"fopen(%s,wb) failed\n"
.LC11:
	.string	"fwrite(%s) failed\n"
.LC12:
	.string	"rb"
.LC13:
	.string	"fopen(%s,rb) failed\n"
.LC14:
	.string	"fread(%s) failed\n"
	.text
	.globl	host_endian
	.type	host_endian, @function
host_endian:
.LFB13:
	.loc 1 281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 281 0
	movq	%fs:40, %rax	#, tmp91
	movq	%rax, -24(%rbp)	# tmp91, D.3796
	xorl	%eax, %eax	# tmp91
	.loc 1 288 0
	movq	$.LC6, -48(%rbp)	#, file
	.loc 1 290 0
	movq	-48(%rbp), %rax	# file, tmp67
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	fopen	#
	movq	%rax, -40(%rbp)	# tmp68, fp
	cmpq	$0, -40(%rbp)	#, fp
	jne	.L28	#,
	.loc 1 291 0
	movl	$.LC8, %edx	#,
	movl	$291, %esi	#,
	movl	$.LC9, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# file, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 292 0
	movl	$-1, %eax	#, D.3791
	jmp	.L33	#
.L28:
	.loc 1 295 0
	movl	$287454020, -56(%rbp)	#, BYTE_ORDER_MAGIC
	.loc 1 297 0
	movl	-56(%rbp), %eax	# BYTE_ORDER_MAGIC, tmp70
	movl	%eax, -60(%rbp)	# tmp70, k
	.loc 1 298 0
	movq	-40(%rbp), %rdx	# fp, tmp71
	leaq	-60(%rbp), %rax	#, tmp72
	movq	%rdx, %rcx	# tmp71,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	fwrite	#
	cmpq	$1, %rax	#, D.3792
	je	.L30	#,
	.loc 1 299 0
	movl	$.LC8, %edx	#,
	movl	$299, %esi	#,
	movl	$.LC9, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# file, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 300 0
	movq	-40(%rbp), %rax	# fp, tmp74
	movq	%rax, %rdi	# tmp74,
	call	fclose	#
	.loc 1 301 0
	movq	-48(%rbp), %rax	# file, tmp75
	movq	%rax, %rdi	# tmp75,
	call	unlink	#
	.loc 1 302 0
	movl	$-1, %eax	#, D.3791
	jmp	.L33	#
.L30:
	.loc 1 305 0
	movq	-40(%rbp), %rax	# fp, tmp76
	movq	%rax, %rdi	# tmp76,
	call	fclose	#
	.loc 1 306 0
	movq	-48(%rbp), %rax	# file, tmp77
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	fopen	#
	movq	%rax, -40(%rbp)	# tmp78, fp
	cmpq	$0, -40(%rbp)	#, fp
	jne	.L31	#,
	.loc 1 307 0
	movl	$.LC8, %edx	#,
	movl	$307, %esi	#,
	movl	$.LC9, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# file, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 308 0
	movq	-48(%rbp), %rax	# file, tmp80
	movq	%rax, %rdi	# tmp80,
	call	unlink	#
	.loc 1 309 0
	movl	$-1, %eax	#, D.3791
	jmp	.L33	#
.L31:
	.loc 1 311 0
	movq	-40(%rbp), %rdx	# fp, tmp81
	leaq	-32(%rbp), %rax	#, tmp82
	movq	%rdx, %rcx	# tmp81,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	fread	#
	cmpq	$4, %rax	#, D.3792
	je	.L32	#,
	.loc 1 312 0
	movl	$.LC8, %edx	#,
	movl	$312, %esi	#,
	movl	$.LC9, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# file, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 313 0
	movq	-40(%rbp), %rax	# fp, tmp84
	movq	%rax, %rdi	# tmp84,
	call	fclose	#
	.loc 1 314 0
	movq	-48(%rbp), %rax	# file, tmp85
	movq	%rax, %rdi	# tmp85,
	call	unlink	#
	.loc 1 315 0
	movl	$-1, %eax	#, D.3791
	jmp	.L33	#
.L32:
	.loc 1 317 0
	movq	-40(%rbp), %rax	# fp, tmp86
	movq	%rax, %rdi	# tmp86,
	call	fclose	#
	.loc 1 318 0
	movq	-48(%rbp), %rax	# file, tmp87
	movq	%rax, %rdi	# tmp87,
	call	unlink	#
	.loc 1 321 0
	movzbl	-32(%rbp), %eax	# buf, D.3793
	movsbl	%al, %edx	# D.3793, D.3794
	movl	-56(%rbp), %eax	# BYTE_ORDER_MAGIC, tmp88
	movzbl	%al, %eax	# tmp88, D.3794
	cmpl	%eax, %edx	# D.3794, D.3794
	sete	%al	#, D.3795
	movzbl	%al, %eax	# D.3795, tmp89
	movl	%eax, -52(%rbp)	# tmp89, endian
	.loc 1 323 0
	movl	-52(%rbp), %eax	# endian, D.3791
.L33:
	.loc 1 324 0
	movq	-24(%rbp), %rbx	# D.3796, tmp92
	xorq	%fs:40, %rbx	#, tmp92
	je	.L34	#,
	call	__stack_chk_fail	#
.L34:
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	host_endian, .-host_endian
	.section	.rodata
	.align 8
.LC2:
	.long	2696277389
	.long	1051772663
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 7 "libutil/prim_type.h"
	.file 8 "libutil/profile.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x65c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF83
	.byte	0x1
	.long	.LASF84
	.long	.LASF85
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
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
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x96
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xbd
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x23e
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0xa5
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0xa5
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0xa5
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0xa5
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0xa5
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0xa5
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0xa5
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0xa5
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x109
	.long	0x276
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10b
	.long	0x27c
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x119
	.long	0x282
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x11d
	.long	0x292
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0xa3
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0xa3
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0xa3
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0xa3
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x137
	.long	0x298
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x276
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa3
	.long	0x27c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x245
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0xb
	.long	0xab
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23e
	.uleb128 0xb
	.long	0xab
	.long	0x2a8
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0xd
	.long	0xab
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x7
	.long	.LASF50
	.byte	0x10
	.byte	0x6
	.byte	0x1e
	.long	0x2df
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x20
	.long	0x8d
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x21
	.long	0x98
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF53
	.uleb128 0xb
	.long	0xab
	.long	0x2f6
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x3f
	.long	0x62
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x46
	.long	0x313
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF57
	.uleb128 0xe
	.byte	0x10
	.byte	0x8
	.byte	0x43
	.long	0x33b
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x44
	.long	0x2a8
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x46
	.long	0x2f6
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x47
	.long	0x31a
	.uleb128 0xe
	.byte	0x38
	.byte	0x8
	.byte	0x53
	.long	0x3a3
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x54
	.long	0x2a8
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x56
	.long	0x308
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x57
	.long	0x308
	.byte	0x10
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x58
	.long	0x308
	.byte	0x18
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x59
	.long	0x308
	.byte	0x20
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x5a
	.long	0x308
	.byte	0x28
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x5b
	.long	0x308
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x5c
	.long	0x346
	.uleb128 0xf
	.long	.LASF68
	.byte	0x1
	.byte	0x4e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da
	.uleb128 0x10
	.string	"ctr"
	.byte	0x1
	.byte	0x4e
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x33b
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x54
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x10
	.string	"ctr"
	.byte	0x1
	.byte	0x54
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF70
	.byte	0x1
	.byte	0x5b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x445
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0x5b
	.long	0x445
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"ctr"
	.byte	0x1
	.byte	0x5b
	.long	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0x12
	.long	.LASF87
	.byte	0x1
	.byte	0x67
	.long	0x2f6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x489
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x67
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"mhz"
	.byte	0x1
	.byte	0x69
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0xa8
	.long	0x308
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0xa8
	.long	0x4b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ba
	.uleb128 0xf
	.long	.LASF72
	.byte	0x1
	.byte	0xb0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e8
	.uleb128 0x10
	.string	"tm"
	.byte	0x1
	.byte	0xb0
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a3
	.uleb128 0xf
	.long	.LASF73
	.byte	0x1
	.byte	0xcf
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x519
	.uleb128 0x10
	.string	"tm"
	.byte	0x1
	.byte	0xcf
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x1
	.byte	0xf7
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x544
	.uleb128 0x10
	.string	"tm"
	.byte	0x1
	.byte	0xf7
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF75
	.byte	0x1
	.byte	0xfe
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x56f
	.uleb128 0x10
	.string	"tm"
	.byte	0x1
	.byte	0xfe
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.value	0x107
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x59c
	.uleb128 0x17
	.string	"tm"
	.byte	0x1
	.value	0x107
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.value	0x10e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e6
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x10e
	.long	0x445
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"tm"
	.byte	0x1
	.value	0x10e
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.value	0x10e
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.long	.LASF79
	.byte	0x1
	.value	0x118
	.long	0x2f6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x11a
	.long	0x445
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x11b
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF81
	.byte	0x1
	.value	0x11c
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x11d
	.long	0x2e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"k"
	.byte	0x1
	.value	0x11e
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.value	0x11e
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
.LASF75:
	.string	"ptmr_init"
.LASF57:
	.string	"double"
.LASF44:
	.string	"_IO_FILE"
.LASF70:
	.string	"pctr_print_all"
.LASF51:
	.string	"tv_sec"
.LASF26:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF67:
	.string	"ptmr_t"
.LASF10:
	.string	"sizetype"
.LASF36:
	.string	"_offset"
.LASF84:
	.string	"profile.c"
.LASF20:
	.string	"_IO_write_ptr"
.LASF15:
	.string	"_flags"
.LASF80:
	.string	"BYTE_ORDER_MAGIC"
.LASF65:
	.string	"start_cpu"
.LASF22:
	.string	"_IO_buf_base"
.LASF81:
	.string	"file"
.LASF78:
	.string	"norm"
.LASF27:
	.string	"_markers"
.LASF17:
	.string	"_IO_read_end"
.LASF66:
	.string	"start_elapsed"
.LASF87:
	.string	"host_pclk"
.LASF63:
	.string	"t_tot_cpu"
.LASF82:
	.string	"endian"
.LASF32:
	.string	"_cur_column"
.LASF55:
	.string	"float"
.LASF14:
	.string	"FILE"
.LASF49:
	.string	"long long int"
.LASF35:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF71:
	.string	"dummy"
.LASF48:
	.string	"_pos"
.LASF76:
	.string	"ptmr_reset_all"
.LASF58:
	.string	"name"
.LASF47:
	.string	"_sbuf"
.LASF31:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF83:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF53:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF73:
	.string	"ptmr_stop"
.LASF9:
	.string	"__off64_t"
.LASF19:
	.string	"_IO_write_base"
.LASF16:
	.string	"_IO_read_ptr"
.LASF72:
	.string	"ptmr_start"
.LASF68:
	.string	"pctr_reset"
.LASF23:
	.string	"_IO_buf_end"
.LASF88:
	.string	"make_sec"
.LASF13:
	.string	"char"
.LASF69:
	.string	"pctr_reset_all"
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
.LASF79:
	.string	"host_endian"
.LASF85:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"short unsigned int"
.LASF62:
	.string	"t_elapsed"
.LASF0:
	.string	"long unsigned int"
.LASF61:
	.string	"t_cpu"
.LASF54:
	.string	"int32"
.LASF21:
	.string	"_IO_write_end"
.LASF11:
	.string	"__time_t"
.LASF28:
	.string	"_chain"
.LASF50:
	.string	"timeval"
.LASF8:
	.string	"__off_t"
.LASF59:
	.string	"count"
.LASF74:
	.string	"ptmr_reset"
.LASF52:
	.string	"tv_usec"
.LASF25:
	.string	"_IO_backup_base"
.LASF30:
	.string	"_flags2"
.LASF77:
	.string	"ptmr_print_all"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF56:
	.string	"float64"
.LASF33:
	.string	"_vtable_offset"
.LASF43:
	.string	"_unused2"
.LASF24:
	.string	"_IO_save_base"
.LASF64:
	.string	"t_tot_elapsed"
.LASF29:
	.string	"_fileno"
.LASF12:
	.string	"__suseconds_t"
.LASF60:
	.string	"pctr_t"
.LASF86:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
