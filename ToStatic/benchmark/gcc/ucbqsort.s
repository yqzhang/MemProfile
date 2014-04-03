	.file	"ucbqsort.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ucbqsort.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	qcmp
	.comm	qcmp,8,8
	.local	qsz
	.comm	qsz,4,4
	.local	thresh
	.comm	thresh,4,4
	.local	mthresh
	.comm	mthresh,4,4
	.globl	specqsort
	.type	specqsort, @function
specqsort:
.LFB0:
	.file 1 "ucbqsort.c"
	.loc 1 36 0
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
	subq	$56, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)	# base, base
	movl	%esi, -76(%rbp)	# n, n
	movl	%edx, -80(%rbp)	# size, size
	movq	%rcx, -88(%rbp)	# compar, compar
	.loc 1 40 0
	cmpl	$1, -76(%rbp)	#, n
	jg	.L2	#,
	.loc 1 41 0
	jmp	.L1	#
.L2:
	.loc 1 42 0
	movl	-80(%rbp), %eax	# size, tmp97
	movl	%eax, qsz(%rip)	# tmp97, qsz
	.loc 1 43 0
	movq	-88(%rbp), %rax	# compar, tmp98
	movq	%rax, qcmp(%rip)	# tmp98, qcmp
	.loc 1 44 0
	movl	qsz(%rip), %eax	# qsz, qsz.0
	sall	$2, %eax	#, thresh.1
	movl	%eax, thresh(%rip)	# thresh.1, thresh
	.loc 1 45 0
	movl	qsz(%rip), %edx	# qsz, qsz.2
	movl	%edx, %eax	# qsz.2, tmp99
	addl	%eax, %eax	# tmp99
	addl	%edx, %eax	# qsz.2, tmp99
	addl	%eax, %eax	# tmp100
	movl	%eax, mthresh(%rip)	# mthresh.3, mthresh
	.loc 1 46 0
	movl	qsz(%rip), %eax	# qsz, qsz.4
	imull	-76(%rbp), %eax	# n, D.1919
	movslq	%eax, %rdx	# D.1919, D.1920
	movq	-72(%rbp), %rax	# base, tmp104
	addq	%rdx, %rax	# D.1920, tmp103
	movq	%rax, -56(%rbp)	# tmp103, max
	.loc 1 47 0
	cmpl	$3, -76(%rbp)	#, n
	jle	.L4	#,
	.loc 1 48 0
	movq	-56(%rbp), %rdx	# max, tmp105
	movq	-72(%rbp), %rax	# base, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	qst	#
	.loc 1 49 0
	movl	thresh(%rip), %eax	# thresh, thresh.5
	movslq	%eax, %rdx	# thresh.5, D.1920
	movq	-72(%rbp), %rax	# base, tmp107
	leaq	(%rdx,%rax), %r12	#, hi
	jmp	.L5	#
.L4:
	.loc 1 51 0
	movq	-56(%rbp), %r12	# max, hi
.L5:
	.loc 1 59 0
	movq	-72(%rbp), %r13	# base, lo
	movq	%r13, %rbx	# lo, j
	jmp	.L6	#
.L7:
	.loc 1 60 0
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.6
	movq	%r13, %rsi	# lo,
	movq	%rbx, %rdi	# j,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.6
	testl	%eax, %eax	# D.1919
	jle	.L6	#,
	.loc 1 61 0
	movq	%r13, %rbx	# lo, j
.L6:
	.loc 1 59 0 discriminator 1
	movl	qsz(%rip), %eax	# qsz, qsz.7
	cltq
	addq	%rax, %r13	# D.1920, lo
	cmpq	%r12, %r13	# hi, lo
	jb	.L7	#,
	.loc 1 62 0
	cmpq	-72(%rbp), %rbx	# base, j
	je	.L8	#,
	.loc 1 64 0
	movq	-72(%rbp), %r14	# base, i
	movl	qsz(%rip), %eax	# qsz, qsz.8
	movslq	%eax, %rdx	# qsz.8, D.1920
	movq	-72(%rbp), %rax	# base, tmp108
	leaq	(%rdx,%rax), %r12	#, hi
	jmp	.L9	#
.L10:
	.loc 1 65 0
	movzbl	(%rbx), %r15d	# *j_4, c
	.loc 1 66 0
	movq	%rbx, %rax	# j, j.9
	leaq	1(%rax), %rbx	#, j
	movzbl	(%r14), %edx	# *i_1, D.1921
	movb	%dl, (%rax)	# D.1921, *j.9_40
	.loc 1 67 0
	movq	%r14, %rax	# i, i.10
	leaq	1(%rax), %r14	#, i
	movb	%r15b, (%rax)	# c, *i.10_43
.L9:
	.loc 1 64 0 discriminator 1
	cmpq	%r12, %r14	# hi, i
	jb	.L10	#,
.L8:
	.loc 1 77 0
	movq	-72(%rbp), %rax	# base, tmp109
	movq	%rax, -64(%rbp)	# tmp109, min
	jmp	.L11	#
.L17:
	.loc 1 78 0
	nop
.L12:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.11
	movl	qsz(%rip), %eax	# qsz, qsz.12
	cltq
	negq	%rax	# D.1920
	addq	%rax, %r12	# D.1920, hi
	movq	-64(%rbp), %rax	# min, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%r12, %rdi	# hi,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.11
	testl	%eax, %eax	# D.1919
	jg	.L12	#,
	.loc 1 80 0 is_stmt 1
	movl	qsz(%rip), %eax	# qsz, qsz.13
	cltq
	addq	%rax, %r12	# D.1920, hi
	cmpq	-64(%rbp), %r12	# min, hi
	je	.L11	#,
	.loc 1 81 0
	movl	qsz(%rip), %eax	# qsz, qsz.14
	movslq	%eax, %rdx	# qsz.14, D.1920
	movq	-64(%rbp), %rax	# min, tmp111
	leaq	(%rdx,%rax), %r13	#, lo
	jmp	.L13	#
.L16:
	.loc 1 82 0
	movzbl	0(%r13), %r15d	# *lo_62, c
	.loc 1 83 0
	movq	%r13, %rbx	# lo, j
	movq	%rbx, %r14	# j, i
	jmp	.L14	#
.L15:
	.loc 1 84 0 discriminator 2
	movzbl	(%rbx), %eax	# *j_69, D.1921
	movb	%al, (%r14)	# D.1921, *i_2
	.loc 1 83 0 discriminator 2
	movq	%rbx, %r14	# j, i
.L14:
	.loc 1 83 0 is_stmt 0 discriminator 1
	movl	qsz(%rip), %eax	# qsz, qsz.15
	cltq
	negq	%rax	# D.1920
	addq	%rax, %rbx	# D.1920, j
	cmpq	%r12, %rbx	# hi, j
	jae	.L15	#,
	.loc 1 85 0 is_stmt 1
	movb	%r15b, (%r14)	# c, *i_2
.L13:
	.loc 1 81 0 discriminator 1
	subq	$1, %r13	#, lo
	cmpq	-64(%rbp), %r13	# min, lo
	jae	.L16	#,
.L11:
	.loc 1 77 0 discriminator 1
	movl	qsz(%rip), %eax	# qsz, qsz.16
	cltq
	addq	%rax, -64(%rbp)	# D.1920, min
	movq	-64(%rbp), %r12	# min, hi
	cmpq	-56(%rbp), %r12	# max, hi
	jb	.L17	#,
.L1:
	.loc 1 89 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	specqsort, .-specqsort
	.type	qst, @function
qst:
.LFB1:
	.loc 1 109 0
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
	subq	$56, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)	# base, base
	movq	%rsi, -96(%rbp)	# max, max
	.loc 1 124 0
	movq	-96(%rbp), %rdx	# max, max.17
	movq	-88(%rbp), %rax	# base, base.18
	subq	%rax, %rdx	# base.18, D.1922
	movq	%rdx, %rax	# D.1922, D.1922
	movl	%eax, -72(%rbp)	# D.1922, lo
.L43:
	.loc 1 126 0
	movl	qsz(%rip), %ecx	# qsz, qsz.19
	movl	-72(%rbp), %eax	# lo, tmp124
	cltd
	idivl	%ecx	# qsz.19
	sarl	%eax	# D.1923
	movl	%eax, %edx	# D.1923, D.1923
	movl	qsz(%rip), %eax	# qsz, qsz.20
	imull	%edx, %eax	# D.1923, D.1923
	movslq	%eax, %rdx	# D.1923, D.1924
	movq	-88(%rbp), %rax	# base, tmp125
	leaq	(%rdx,%rax), %rbx	#, i
	movq	%rbx, -64(%rbp)	# i, mid
	.loc 1 127 0
	movl	mthresh(%rip), %eax	# mthresh, mthresh.21
	cmpl	%eax, -72(%rbp)	# mthresh.21, lo
	jl	.L19	#,
	.loc 1 128 0
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.23
	movq	-88(%rbp), %r13	# base, jj
	movq	%rbx, %rsi	# i,
	movq	%r13, %rdi	# jj,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.23
	testl	%eax, %eax	# D.1923
	jle	.L20	#,
	.loc 1 128 0 is_stmt 0 discriminator 1
	movq	%r13, %rax	# jj, iftmp.22
	jmp	.L21	#
.L20:
	.loc 1 128 0 discriminator 2
	movq	%rbx, %rax	# i, iftmp.22
.L21:
	.loc 1 128 0 discriminator 3
	movq	%rax, %r12	# iftmp.22, j
	.loc 1 129 0 is_stmt 1 discriminator 3
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.24
	movl	qsz(%rip), %eax	# qsz, qsz.25
	cltq
	negq	%rax	# D.1924
	movq	%rax, %rcx	# D.1924, D.1924
	movq	-96(%rbp), %rax	# max, tmp129
	addq	%rcx, %rax	# D.1924, tmp128
	movq	%rax, -56(%rbp)	# tmp128, tmp
	movq	-56(%rbp), %rax	# tmp, tmp130
	movq	%rax, %rsi	# tmp130,
	movq	%r12, %rdi	# j,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.24
	testl	%eax, %eax	# D.1923
	jle	.L22	#,
	.loc 1 131 0
	cmpq	%r13, %r12	# jj, j
	jne	.L23	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# i, iftmp.26
	jmp	.L24	#
.L23:
	.loc 1 131 0 discriminator 2
	movq	%r13, %rax	# jj, iftmp.26
.L24:
	.loc 1 131 0 discriminator 3
	movq	%rax, %r12	# iftmp.26, j
	.loc 1 132 0 is_stmt 1 discriminator 3
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.27
	movq	-56(%rbp), %rax	# tmp, tmp131
	movq	%rax, %rsi	# tmp131,
	movq	%r12, %rdi	# j,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.27
	testl	%eax, %eax	# D.1923
	jns	.L22	#,
	.loc 1 133 0
	movq	-56(%rbp), %r12	# tmp, j
.L22:
	.loc 1 135 0
	cmpq	%rbx, %r12	# i, j
	je	.L19	#,
	.loc 1 136 0
	movl	qsz(%rip), %r14d	# qsz, ii
.L25:
	.loc 1 138 0 discriminator 1
	movzbl	(%rbx), %r15d	# *i_5, c
	.loc 1 139 0 discriminator 1
	movq	%rbx, %rax	# i, i.28
	leaq	1(%rax), %rbx	#, i
	movzbl	(%r12), %edx	# *j_10, D.1925
	movb	%dl, (%rax)	# D.1925, *i.28_63
	.loc 1 140 0 discriminator 1
	movq	%r12, %rax	# j, j.29
	leaq	1(%rax), %r12	#, j
	movb	%r15b, (%rax)	# c, *j.29_66
	.loc 1 141 0 discriminator 1
	subl	$1, %r14d	#, ii
	testl	%r14d, %r14d	# ii
	jne	.L25	#,
.L19:
	.loc 1 147 0
	movq	-88(%rbp), %rbx	# base, i
	movl	qsz(%rip), %eax	# qsz, qsz.30
	cltq
	negq	%rax	# D.1924
	movq	%rax, %rdx	# D.1924, D.1924
	movq	-96(%rbp), %rax	# max, tmp132
	leaq	(%rdx,%rax), %r12	#, j
	.loc 1 148 0
	jmp	.L26	#
.L28:
	.loc 1 149 0
	movl	qsz(%rip), %eax	# qsz, qsz.31
	cltq
	addq	%rax, %rbx	# D.1924, i
.L26:
	.loc 1 148 0 discriminator 1
	cmpq	-64(%rbp), %rbx	# mid, i
	jae	.L27	#,
	.loc 1 148 0 is_stmt 0 discriminator 2
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.32
	movq	-64(%rbp), %rax	# mid, tmp133
	movq	%rax, %rsi	# tmp133,
	movq	%rbx, %rdi	# i,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.32
	testl	%eax, %eax	# D.1923
	jle	.L28	#,
.L27:
	.loc 1 150 0 is_stmt 1
	jmp	.L29	#
.L34:
	.loc 1 151 0
	movq	qcmp(%rip), %rdx	# qcmp, qcmp.33
	movq	-64(%rbp), %rax	# mid, tmp134
	movq	%r12, %rsi	# j,
	movq	%rax, %rdi	# tmp134,
	movl	$0, %eax	#,
	call	*%rdx	# qcmp.33
	testl	%eax, %eax	# D.1923
	jg	.L30	#,
	.loc 1 152 0
	movl	qsz(%rip), %eax	# qsz, qsz.34
	cltq
	negq	%rax	# D.1924
	addq	%rax, %r12	# D.1924, j
	.loc 1 153 0
	jmp	.L29	#
.L30:
	.loc 1 155 0
	movl	qsz(%rip), %eax	# qsz, qsz.35
	cltq
	addq	%rbx, %rax	# i, tmp135
	movq	%rax, -56(%rbp)	# tmp135, tmp
	.loc 1 156 0
	cmpq	-64(%rbp), %rbx	# mid, i
	jne	.L31	#,
	.loc 1 158 0
	movq	%r12, %r13	# j, jj
	movq	%r13, -64(%rbp)	# jj, mid
	.loc 1 164 0
	jmp	.L33	#
.L31:
	.loc 1 161 0
	movq	%r12, %r13	# j, jj
	.loc 1 162 0
	movl	qsz(%rip), %eax	# qsz, qsz.36
	cltq
	negq	%rax	# D.1924
	addq	%rax, %r12	# D.1924, j
	.loc 1 164 0
	jmp	.L33	#
.L29:
	.loc 1 150 0 discriminator 1
	cmpq	-64(%rbp), %r12	# mid, j
	ja	.L34	#,
	.loc 1 166 0
	cmpq	-64(%rbp), %rbx	# mid, i
	jne	.L35	#,
	.loc 1 167 0
	nop
	.loc 1 191 0
	movq	-64(%rbp), %r12	# mid, j
	movl	qsz(%rip), %eax	# qsz, qsz.40
	cltq
	leaq	(%r12,%rax), %rbx	#, i
	.loc 1 192 0
	movq	%r12, %rdx	# j, j.41
	movq	-88(%rbp), %rax	# base, base.42
	subq	%rax, %rdx	# base.42, D.1922
	movq	%rdx, %rax	# D.1922, D.1922
	movl	%eax, -72(%rbp)	# D.1922, lo
	movq	-96(%rbp), %rdx	# max, max.43
	movq	%rbx, %rax	# i, i.44
	subq	%rax, %rdx	# i.44, D.1922
	movq	%rdx, %rax	# D.1922, D.1922
	movl	%eax, -68(%rbp)	# D.1922, hi
	movl	-72(%rbp), %eax	# lo, tmp137
	cmpl	-68(%rbp), %eax	# hi, tmp137
	jg	.L39	#,
	jmp	.L44	#
.L35:
	.loc 1 170 0
	movq	-64(%rbp), %r13	# mid, jj
	.loc 1 171 0
	movq	%rbx, -64(%rbp)	# i, mid
	movq	-64(%rbp), %rax	# mid, tmp136
	movq	%rax, -56(%rbp)	# tmp136, tmp
	.loc 1 172 0
	movl	qsz(%rip), %eax	# qsz, qsz.37
	cltq
	negq	%rax	# D.1924
	addq	%rax, %r12	# D.1924, j
.L33:
	.loc 1 175 0
	movl	qsz(%rip), %r14d	# qsz, ii
.L37:
	.loc 1 177 0 discriminator 1
	movzbl	(%rbx), %r15d	# *i_8, c
	.loc 1 178 0 discriminator 1
	movq	%rbx, %rax	# i, i.38
	leaq	1(%rax), %rbx	#, i
	movzbl	0(%r13), %edx	# *jj_17, D.1925
	movb	%dl, (%rax)	# D.1925, *i.38_122
	.loc 1 179 0 discriminator 1
	movq	%r13, %rax	# jj, jj.39
	leaq	1(%rax), %r13	#, jj
	movb	%r15b, (%rax)	# c, *jj.39_125
	.loc 1 180 0 discriminator 1
	subl	$1, %r14d	#, ii
	testl	%r14d, %r14d	# ii
	jne	.L37	#,
	.loc 1 181 0
	movq	-56(%rbp), %rbx	# tmp, i
	.loc 1 182 0
	nop
	.loc 1 148 0
	jmp	.L26	#
.L44:
	.loc 1 193 0
	movl	thresh(%rip), %eax	# thresh, thresh.45
	cmpl	%eax, -72(%rbp)	# thresh.45, lo
	jl	.L40	#,
	.loc 1 194 0
	movq	-88(%rbp), %rax	# base, tmp138
	movq	%r12, %rsi	# j,
	movq	%rax, %rdi	# tmp138,
	call	qst	#
.L40:
	.loc 1 195 0
	movq	%rbx, -88(%rbp)	# i, base
	.loc 1 196 0
	movl	-68(%rbp), %eax	# hi, tmp139
	movl	%eax, -72(%rbp)	# tmp139, lo
	jmp	.L41	#
.L39:
	.loc 1 198 0
	movl	thresh(%rip), %eax	# thresh, thresh.46
	cmpl	%eax, -68(%rbp)	# thresh.46, hi
	jl	.L42	#,
	.loc 1 199 0
	movq	-96(%rbp), %rax	# max, tmp140
	movq	%rax, %rsi	# tmp140,
	movq	%rbx, %rdi	# i,
	call	qst	#
.L42:
	.loc 1 200 0
	movq	%r12, -96(%rbp)	# j, max
.L41:
	.loc 1 202 0
	movl	thresh(%rip), %eax	# thresh, thresh.47
	cmpl	%eax, -72(%rbp)	# thresh.47, lo
	jge	.L43	#,
	.loc 1 203 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	qst, .-qst
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x210
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF7
	.byte	0x1
	.long	.LASF8
	.long	.LASF9
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF10
	.byte	0x1
	.byte	0x1f
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x20
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0x21
	.long	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x22
	.long	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x23
	.long	0xfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.string	"c"
	.byte	0x1
	.byte	0x25
	.long	0xe2
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x25
	.long	0xdc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.byte	0x25
	.long	0xdc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.string	"lo"
	.byte	0x1
	.byte	0x25
	.long	0xdc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.string	"hi"
	.byte	0x1
	.byte	0x25
	.long	0xdc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.string	"min"
	.byte	0x1
	.byte	0x26
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.string	"max"
	.byte	0x1
	.byte	0x26
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe2
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.long	0xe9
	.long	0xfb
	.uleb128 0xa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf0
	.uleb128 0xb
	.string	"qst"
	.byte	0x1
	.byte	0x6c
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x6c
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.string	"max"
	.byte	0x1
	.byte	0x6c
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x5
	.string	"c"
	.byte	0x1
	.byte	0x6e
	.long	0xe2
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.long	0xdc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.byte	0x6e
	.long	0xdc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.string	"jj"
	.byte	0x1
	.byte	0x6e
	.long	0xdc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.string	"ii"
	.byte	0x1
	.byte	0x6f
	.long	0xe9
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.string	"mid"
	.byte	0x1
	.byte	0x70
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.string	"tmp"
	.byte	0x1
	.byte	0x70
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"lo"
	.byte	0x1
	.byte	0x71
	.long	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.string	"hi"
	.byte	0x1
	.byte	0x71
	.long	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.long	.LASF11
	.byte	0x1
	.byte	0xae
	.quad	.L33
	.byte	0
	.uleb128 0xd
	.long	.LASF4
	.byte	0x1
	.byte	0x10
	.long	0xfb
	.uleb128 0x9
	.byte	0x3
	.quad	qcmp
	.uleb128 0x5
	.string	"qsz"
	.byte	0x1
	.byte	0x11
	.long	0xe9
	.uleb128 0x9
	.byte	0x3
	.quad	qsz
	.uleb128 0xd
	.long	.LASF5
	.byte	0x1
	.byte	0x12
	.long	0xe9
	.uleb128 0x9
	.byte	0x3
	.quad	thresh
	.uleb128 0xd
	.long	.LASF6
	.byte	0x1
	.byte	0x13
	.long	0xe9
	.uleb128 0x9
	.byte	0x3
	.quad	mthresh
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
.LASF11:
	.string	"swap"
.LASF1:
	.string	"size"
.LASF6:
	.string	"mthresh"
.LASF2:
	.string	"compar"
.LASF4:
	.string	"qcmp"
.LASF10:
	.string	"specqsort"
.LASF0:
	.string	"base"
.LASF3:
	.string	"char"
.LASF7:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF9:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF5:
	.string	"thresh"
.LASF8:
	.string	"ucbqsort.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
