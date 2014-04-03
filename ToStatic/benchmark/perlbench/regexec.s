	.file	"regexec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 regexec.c
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
	.section	.rodata
	.align 8
.LC0:
	.string	"panic: paren_elems_to_push < 0"
	.text
	.type	S_regcppush, @function
S_regcppush:
.LFB2:
	.file 1 "regexec.c"
	.loc 1 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# parenfloor, parenfloor
	.loc 1 177 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp162
	movl	%eax, -8(%rbp)	# tmp162, retval
	.loc 1 179 0
	movl	PL_regsize(%rip), %eax	# PL_regsize, PL_regsize.0
	subl	-20(%rbp), %eax	# parenfloor, D.19213
	sall	$2, %eax	#, tmp163
	movl	%eax, -4(%rbp)	# tmp163, paren_elems_to_push
	.loc 1 182 0
	cmpl	$0, -4(%rbp)	#, paren_elems_to_push
	jns	.L2	#,
	.loc 1 183 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L2:
	.loc 1 186 0
	movl	-4(%rbp), %eax	# paren_elems_to_push, tmp164
	leal	6(%rax), %edx	#, D.19213
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1
	addl	%eax, %edx	# PL_savestack_ix.1, D.19213
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.2
	cmpl	%eax, %edx	# PL_savestack_max.2, D.19213
	jle	.L3	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# paren_elems_to_push, tmp165
	addl	$6, %eax	#, D.19213
	movl	%eax, %edi	# D.19213,
	call	Perl_savestack_grow_cnt	#
.L3:
	.loc 1 187 0 is_stmt 1
	movl	PL_regsize(%rip), %eax	# PL_regsize, tmp166
	movl	%eax, -12(%rbp)	# tmp166, p
	jmp	.L4	#
.L5:
	.loc 1 189 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.3
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.4
	leal	1(%rax), %edx	#, PL_savestack_ix.6
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.6, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.7
	movl	-12(%rbp), %ecx	# p, tmp167
	movslq	%ecx, %rcx	# tmp167, D.19214
	salq	$2, %rcx	#, D.19214
	addq	%rcx, %rax	# D.19214, D.19216
	movl	(%rax), %eax	# *_23, D.19213
	movl	%eax, (%rdx)	# D.19213, _19->any_i32
	.loc 1 190 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.8
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.9
	leal	1(%rax), %edx	#, PL_savestack_ix.11
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.11, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.12
	movl	-12(%rbp), %ecx	# p, tmp168
	movslq	%ecx, %rcx	# tmp168, D.19214
	salq	$2, %rcx	#, D.19214
	addq	%rcx, %rax	# D.19214, D.19216
	movl	(%rax), %eax	# *_35, D.19213
	movl	%eax, (%rdx)	# D.19213, _31->any_i32
	.loc 1 191 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.13
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.14
	leal	1(%rax), %edx	#, PL_savestack_ix.16
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.16, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.17
	movl	-12(%rbp), %ecx	# p, tmp169
	movslq	%ecx, %rcx	# tmp169, D.19214
	salq	$3, %rcx	#, D.19214
	addq	%rcx, %rax	# D.19214, D.19217
	movq	(%rax), %rax	# *_47, D.19218
	movq	%rax, (%rdx)	# D.19218, _43->any_ptr
	.loc 1 192 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.18
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.19
	leal	1(%rax), %edx	#, PL_savestack_ix.21
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.21, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movl	-12(%rbp), %eax	# p, tmp170
	movl	%eax, (%rdx)	# tmp170, _55->any_i32
	.loc 1 187 0 discriminator 2
	subl	$1, -12(%rbp)	#, p
.L4:
	.loc 1 187 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# p, tmp171
	cmpl	-20(%rbp), %eax	# parenfloor, tmp171
	jg	.L5	#,
	.loc 1 195 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.22
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.23
	leal	1(%rax), %edx	#, PL_savestack_ix.25
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.25, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movl	PL_regsize(%rip), %eax	# PL_regsize, PL_regsize.26
	movl	%eax, (%rdx)	# PL_regsize.26, _63->any_i32
	.loc 1 196 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.27
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.28
	leal	1(%rax), %edx	#, PL_savestack_ix.30
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.30, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.31
	movl	(%rax), %eax	# *PL_reglastparen.31_72, D.19219
	movl	%eax, (%rdx)	# D.19213, _71->any_i32
	.loc 1 197 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.32
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.33
	leal	1(%rax), %edx	#, PL_savestack_ix.35
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.35, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movq	PL_reglastcloseparen(%rip), %rax	# PL_reglastcloseparen, PL_reglastcloseparen.36
	movl	(%rax), %eax	# *PL_reglastcloseparen.36_82, D.19219
	movl	%eax, (%rdx)	# D.19213, _81->any_i32
	.loc 1 198 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.37
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.38
	leal	1(%rax), %edx	#, PL_savestack_ix.40
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.40, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	leaq	(%rcx,%rax), %rdx	#, D.19215
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.41
	movq	%rax, (%rdx)	# PL_reginput.41, _91->any_ptr
	.loc 1 202 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.42
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.43
	leal	1(%rax), %edx	#, PL_savestack_ix.45
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.45, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	addq	%rcx, %rax	# PL_savestack.42, D.19215
	movl	-4(%rbp), %edx	# paren_elems_to_push, tmp172
	addl	$4, %edx	#, D.19213
	movl	%edx, (%rax)	# D.19213, _99->any_i32
	.loc 1 203 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.46
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.47
	leal	1(%rax), %edx	#, PL_savestack_ix.49
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.49, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19214
	addq	%rcx, %rax	# PL_savestack.46, D.19215
	movl	$21, (%rax)	#, _107->any_i32
	.loc 1 205 0
	movl	-8(%rbp), %eax	# retval, D.19220
	.loc 1 206 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_regcppush, .-S_regcppush
	.type	S_regcppop, @function
S_regcppop:
.LFB3:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 222 0
	movl	$0, -16(%rbp)	#, paren
	.loc 1 227 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.50
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.51
	subl	$1, %edx	#, PL_savestack_ix.52
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.52, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.53
	movslq	%edx, %rdx	# PL_savestack_ix.53, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19223
	movl	(%rax), %eax	# _10->any_i32, tmp169
	movl	%eax, -20(%rbp)	# tmp169, i
	.loc 1 229 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.54
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.55
	subl	$1, %edx	#, PL_savestack_ix.56
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.56, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.57
	movslq	%edx, %rdx	# PL_savestack_ix.57, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19223
	movl	(%rax), %eax	# _18->any_i32, tmp170
	movl	%eax, -20(%rbp)	# tmp170, i
	.loc 1 230 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.58
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.59
	subl	$1, %edx	#, PL_savestack_ix.60
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.60, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.61
	movslq	%edx, %rdx	# PL_savestack_ix.61, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19223
	movq	(%rax), %rax	# _26->any_ptr, tmp171
	movq	%rax, -8(%rbp)	# tmp171, input
	.loc 1 231 0
	movq	PL_reglastcloseparen(%rip), %rax	# PL_reglastcloseparen, PL_reglastcloseparen.62
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.63
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.64
	subl	$1, %ecx	#, PL_savestack_ix.65
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.65, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.66
	movslq	%ecx, %rcx	# PL_savestack_ix.66, D.19222
	salq	$3, %rcx	#, D.19222
	addq	%rcx, %rdx	# D.19222, D.19223
	movl	(%rdx), %edx	# _35->any_i32, D.19224
	movl	%edx, (%rax)	# D.19225, *PL_reglastcloseparen.62_28
	.loc 1 232 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.67
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.68
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.69
	subl	$1, %ecx	#, PL_savestack_ix.70
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.70, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.71
	movslq	%ecx, %rcx	# PL_savestack_ix.71, D.19222
	salq	$3, %rcx	#, D.19222
	addq	%rcx, %rdx	# D.19222, D.19223
	movl	(%rdx), %edx	# _45->any_i32, D.19224
	movl	%edx, (%rax)	# D.19225, *PL_reglastparen.67_38
	.loc 1 233 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.72
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.73
	subl	$1, %edx	#, PL_savestack_ix.74
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.74, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.75
	movslq	%edx, %rdx	# PL_savestack_ix.75, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19223
	movl	(%rax), %eax	# _54->any_i32, PL_regsize.76
	movl	%eax, PL_regsize(%rip)	# PL_regsize.76, PL_regsize
	.loc 1 236 0
	subl	$4, -20(%rbp)	#, i
	jmp	.L8	#
.L10:
	.loc 1 238 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.77
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.78
	subl	$1, %edx	#, PL_savestack_ix.79
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.79, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.80
	movslq	%edx, %rdx	# PL_savestack_ix.80, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19223
	movl	(%rax), %eax	# _63->any_i32, D.19224
	movl	%eax, -16(%rbp)	# D.19224, paren
	.loc 1 239 0
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.81
	movl	-16(%rbp), %edx	# paren, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rax, %rdx	# PL_reg_start_tmp.81, D.19226
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.82
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.83
	subl	$1, %ecx	#, PL_savestack_ix.84
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.84, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.85
	movslq	%ecx, %rcx	# PL_savestack_ix.85, D.19222
	salq	$3, %rcx	#, D.19222
	addq	%rcx, %rax	# D.19222, D.19223
	movq	(%rax), %rax	# _76->any_ptr, D.19227
	movq	%rax, (%rdx)	# D.19227, *_69
	.loc 1 240 0
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.86
	movl	-16(%rbp), %edx	# paren, D.19222
	salq	$2, %rdx	#, D.19222
	addq	%rax, %rdx	# PL_regstartp.86, D.19228
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.87
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.88
	subl	$1, %ecx	#, PL_savestack_ix.89
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.89, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.90
	movslq	%ecx, %rcx	# PL_savestack_ix.90, D.19222
	salq	$3, %rcx	#, D.19222
	addq	%rcx, %rax	# D.19222, D.19223
	movl	(%rax), %eax	# _88->any_i32, D.19224
	movl	%eax, (%rdx)	# D.19224, *_81
	.loc 1 241 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.91
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.92
	subl	$1, %edx	#, PL_savestack_ix.93
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.93, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.94
	movslq	%edx, %rdx	# PL_savestack_ix.94, D.19222
	salq	$3, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19223
	movl	(%rax), %eax	# _96->any_i32, tmp172
	movl	%eax, -12(%rbp)	# tmp172, tmps
	.loc 1 242 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.95
	movl	(%rax), %eax	# *PL_reglastparen.95_98, D.19225
	cmpl	-16(%rbp), %eax	# paren, D.19225
	jb	.L9	#,
	.loc 1 243 0
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.96
	movl	-16(%rbp), %edx	# paren, D.19222
	salq	$2, %rdx	#, D.19222
	addq	%rax, %rdx	# PL_regendp.96, D.19228
	movl	-12(%rbp), %eax	# tmps, tmp173
	movl	%eax, (%rdx)	# tmp173, *_103
.L9:
	.loc 1 237 0
	subl	$4, -20(%rbp)	#, i
.L8:
	.loc 1 236 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jg	.L10	#,
	.loc 1 271 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.97
	movl	(%rax), %eax	# *PL_reglastparen.97_105, D.19225
	addl	$1, %eax	#, tmp174
	movl	%eax, -16(%rbp)	# tmp174, paren
	jmp	.L11	#
.L13:
	.loc 1 272 0
	movl	-16(%rbp), %edx	# paren, paren.98
	movl	PL_regsize(%rip), %eax	# PL_regsize, PL_regsize.99
	cmpl	%eax, %edx	# PL_regsize.99, paren.98
	jle	.L12	#,
	.loc 1 273 0
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.100
	movl	-16(%rbp), %edx	# paren, D.19222
	salq	$2, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19228
	movl	$-1, (%rax)	#, *_115
.L12:
	.loc 1 274 0
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.101
	movl	-16(%rbp), %edx	# paren, D.19222
	salq	$2, %rdx	#, D.19222
	addq	%rdx, %rax	# D.19222, D.19228
	movl	$-1, (%rax)	#, *_119
	.loc 1 271 0
	addl	$1, -16(%rbp)	#, paren
.L11:
	.loc 1 271 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %edx	# paren, paren.102
	movl	PL_regnpar(%rip), %eax	# PL_regnpar, PL_regnpar.103
	cmpl	%eax, %edx	# PL_regnpar.103, paren.102
	jle	.L13	#,
	.loc 1 277 0 is_stmt 1
	movq	-8(%rbp), %rax	# input, D.19229
	.loc 1 278 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	S_regcppop, .-S_regcppop
	.type	S_regcp_set_to, @function
S_regcp_set_to:
.LFB4:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# ss, ss
	.loc 1 283 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp61
	movl	%eax, -4(%rbp)	# tmp61, tmp
	.loc 1 285 0
	movl	-20(%rbp), %eax	# ss, tmp62
	movl	%eax, PL_savestack_ix(%rip)	# tmp62, PL_savestack_ix
	.loc 1 286 0
	call	S_regcppop	#
	.loc 1 287 0
	movl	-4(%rbp), %eax	# tmp, tmp63
	movl	%eax, PL_savestack_ix(%rip)	# tmp63, PL_savestack_ix
	.loc 1 288 0
	movl	$0, %eax	#, D.19230
	.loc 1 289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	S_regcp_set_to, .-S_regcp_set_to
	.globl	Perl_pregexec
	.type	Perl_pregexec, @function
Perl_pregexec:
.LFB5:
	.loc 1 332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, %rax	# prog, prog
	movq	%rsi, -8(%rbp)	# stringarg, stringarg
	movq	%rcx, -16(%rbp)	# strbeg, strbeg
	movl	%r8d, -20(%rbp)	# minend, minend
	movq	%r9, -32(%rbp)	# screamer, screamer
	.loc 1 334 0
	cmpl	$0, 16(%rbp)	#, nosave
	sete	%cl	#, D.19231
	movzbl	%cl, %edi	# D.19231, D.19232
	.loc 1 333 0
	movq	-32(%rbp), %r9	# screamer, tmp65
	movl	-20(%rbp), %r8d	# minend, tmp66
	movq	-16(%rbp), %rcx	# strbeg, tmp67
	movq	-8(%rbp), %rsi	# stringarg, tmp68
	movl	%edi, 8(%rsp)	# D.19232,
	movq	$0, (%rsp)	#,
	movq	%rax, %rdi	# prog,
	call	Perl_regexec_flags	#
	.loc 1 336 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_pregexec, .-Perl_pregexec
	.type	S_cache_re, @function
S_cache_re:
.LFB6:
	.loc 1 340 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# prog, prog
	.loc 1 341 0
	movq	-8(%rbp), %rax	# prog, tmp63
	movq	32(%rax), %rax	# prog_1(D)->precomp, PL_regprecomp.104
	movq	%rax, PL_regprecomp(%rip)	# PL_regprecomp.104, PL_regprecomp
	.loc 1 345 0
	movq	-8(%rbp), %rax	# prog, tmp64
	movl	80(%rax), %eax	# prog_1(D)->nparens, D.19234
	movl	%eax, PL_regnpar(%rip)	# PL_regnpar.105, PL_regnpar
	.loc 1 346 0
	movq	-8(%rbp), %rax	# prog, tmp65
	movq	40(%rax), %rax	# prog_1(D)->data, PL_regdata.106
	movq	%rax, PL_regdata(%rip)	# PL_regdata.106, PL_regdata
	.loc 1 347 0
	movq	-8(%rbp), %rax	# prog, tmp66
	movq	%rax, PL_reg_re(%rip)	# tmp66, PL_reg_re
	.loc 1 348 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	S_cache_re, .-S_cache_re
	.globl	Perl_re_intuit_start
	.type	Perl_re_intuit_start, @function
Perl_re_intuit_start:
.LFB7:
	.loc 1 399 0
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
	movq	%rdi, -216(%rbp)	# prog, prog
	movq	%rsi, -224(%rbp)	# sv, sv
	movq	%rdx, -232(%rbp)	# strpos, strpos
	movq	%rcx, -240(%rbp)	# strend, strend
	movl	%r8d, -244(%rbp)	# flags, flags
	movq	%r9, -256(%rbp)	# data, data
	.loc 1 400 0
	movl	$0, %r13d	#, start_shift
	.loc 1 402 0
	movl	$0, %r15d	#, end_shift
	.loc 1 407 0
	cmpq	$0, -224(%rbp)	#, sv
	je	.L21	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# sv, tmp604
	movl	12(%rax), %eax	# sv_139(D)->sv_flags, D.19236
	andl	$536870912, %eax	#, iftmp.107
	jmp	.L22	#
.L21:
	.loc 1 407 0 discriminator 2
	movl	$0, %eax	#, iftmp.107
.L22:
	.loc 1 407 0 discriminator 3
	movl	%eax, -196(%rbp)	# iftmp.107, do_utf8
	.loc 1 409 0 is_stmt 1 discriminator 3
	movl	$0, %r14d	#, other_last
	.loc 1 410 0 discriminator 3
	movq	$0, -168(%rbp)	#, check_at
	.loc 1 415 0 discriminator 3
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L23	#,
	.loc 1 415 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp605
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	orl	$268435456, %eax	#, D.19236
	movl	%eax, %edx	# D.19236, D.19236
	movq	-216(%rbp), %rax	# prog, tmp606
	movl	%edx, 92(%rax)	# D.19236, prog_147(D)->reganch
	movb	$1, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
	jmp	.L24	#
.L23:
	.loc 1 415 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp607
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$-268435457, %eax	#, D.19236
	movl	%eax, %edx	# D.19236, D.19236
	movq	-216(%rbp), %rax	# prog, tmp608
	movl	%edx, 92(%rax)	# D.19236, prog_147(D)->reganch
	movb	$0, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
.L24:
	.loc 1 417 0 is_stmt 1
	movq	-216(%rbp), %rax	# prog, tmp609
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$65536, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L25	#,
	.loc 1 420 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.109
	orl	$8, %eax	#, PL_reg_flags.110
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.110, PL_reg_flags
.L25:
	.loc 1 448 0
	movq	-216(%rbp), %rax	# prog, tmp610
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	cltq
	movq	-240(%rbp), %rcx	# strend, strend.111
	movq	-232(%rbp), %rdx	# strpos, strpos.112
	subq	%rdx, %rcx	# strpos.112, D.19238
	movq	%rcx, %rdx	# D.19238, D.19238
	cmpq	%rdx, %rax	# D.19238, D.19238
	jle	.L26	#,
	.loc 1 451 0
	jmp	.L27	#
.L26:
	.loc 1 453 0
	cmpq	$0, -224(%rbp)	#, sv
	je	.L28	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# sv, tmp611
	movl	12(%rax), %eax	# sv_139(D)->sv_flags, D.19236
	andl	$262144, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L28	#,
	movq	-224(%rbp), %rax	# sv, tmp612
	movq	(%rax), %rax	# sv_139(D)->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_167].xpv_cur, D.19240
	negq	%rax	# D.19241
	movq	%rax, %rdx	# D.19241, D.19241
	movq	-240(%rbp), %rax	# strend, tmp613
	addq	%rdx, %rax	# D.19241, iftmp.113
	jmp	.L29	#
.L28:
	.loc 1 453 0 discriminator 2
	movq	-232(%rbp), %rax	# strpos, iftmp.113
.L29:
	.loc 1 453 0 discriminator 3
	movq	%rax, -144(%rbp)	# iftmp.113, strbeg
	.loc 1 454 0 is_stmt 1 discriminator 3
	movq	-240(%rbp), %rax	# strend, tmp614
	movq	%rax, PL_regeol(%rip)	# tmp614, PL_regeol
	.loc 1 455 0 discriminator 3
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L30	#,
	.loc 1 456 0
	movq	-216(%rbp), %rax	# prog, tmp615
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _173->data[2].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	jne	.L31	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp616
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _175->data[2].substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L31	#,
	.loc 1 457 0 is_stmt 1
	movq	-216(%rbp), %rax	# prog, tmp617
	movq	%rax, %rdi	# tmp617,
	call	S_to_utf8_substr	#
.L31:
	.loc 1 458 0
	movq	-216(%rbp), %rax	# prog, tmp618
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %r12	# _177->data[2].utf8_substr, check
	jmp	.L32	#
.L30:
	.loc 1 460 0
	movq	-216(%rbp), %rax	# prog, tmp619
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _179->data[2].substr, D.19243
	testq	%rax, %rax	# D.19243
	jne	.L33	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp620
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _181->data[2].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L33	#,
	.loc 1 461 0 is_stmt 1
	movq	-216(%rbp), %rax	# prog, tmp621
	movq	%rax, %rdi	# tmp621,
	call	S_to_byte_substr	#
.L33:
	.loc 1 462 0
	movq	-216(%rbp), %rax	# prog, tmp622
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %r12	# _183->data[2].substr, check
.L32:
	.loc 1 464 0
	cmpq	$PL_sv_undef, %r12	#, check
	jne	.L34	#,
	.loc 1 467 0
	jmp	.L27	#
.L34:
	.loc 1 469 0
	movq	-216(%rbp), %rax	# prog, tmp623
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$15, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L35	#,
	.loc 1 470 0
	movq	-216(%rbp), %rax	# prog, tmp624
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$12, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	jne	.L36	#,
	.loc 1 471 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp625
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$1, %eax	#, D.19236
	.loc 1 470 0 discriminator 1
	testl	%eax, %eax	# D.19236
	je	.L37	#,
	.loc 1 472 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.115
	testl	%eax, %eax	# PL_multiline.115
	je	.L36	#,
.L37:
	.loc 1 470 0 discriminator 3
	movl	$1, %eax	#, iftmp.114
	jmp	.L38	#
.L36:
	.loc 1 470 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.114
.L38:
	.loc 1 470 0 discriminator 4
	movl	%eax, -200(%rbp)	# iftmp.114, ml_anch
	.loc 1 474 0 is_stmt 1 discriminator 4
	cmpl	$0, -200(%rbp)	#, ml_anch
	jne	.L39	#,
	.loc 1 475 0
	movq	-216(%rbp), %rax	# prog, tmp626
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$40, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	jne	.L40	#,
	.loc 1 478 0
	cmpq	$0, -224(%rbp)	#, sv
	je	.L40	#,
	.loc 1 478 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# sv, tmp627
	movl	12(%rax), %eax	# sv_139(D)->sv_flags, D.19236
	andl	$524288, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	jne	.L40	#,
	.loc 1 479 0 is_stmt 1
	movq	-232(%rbp), %rax	# strpos, tmp628
	cmpq	-144(%rbp), %rax	# strbeg, tmp628
	je	.L40	#,
	.loc 1 481 0
	jmp	.L27	#
.L40:
	.loc 1 483 0
	movq	-216(%rbp), %rax	# prog, tmp629
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	48(%rax), %edx	# _199->data[2].min_offset, D.19237
	movq	-216(%rbp), %rax	# prog, tmp630
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _201->data[2].max_offset, D.19237
	cmpl	%eax, %edx	# D.19237, D.19237
	jne	.L39	#,
	.loc 1 484 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp631
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$2048, %eax	#, D.19236
	.loc 1 483 0 discriminator 1
	testl	%eax, %eax	# D.19236
	jne	.L39	#,
.LBB2:
	.loc 1 488 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.117
	testb	%al, %al	# PL_reg_match_utf8.117
	je	.L41	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp632
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	48(%rax), %ecx	# _206->data[2].min_offset, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp633
	movq	-232(%rbp), %rax	# strpos, tmp634
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp634,
	call	S_reghop3	#
	jmp	.L42	#
.L41:
	.loc 1 488 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp635
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	48(%rax), %eax	# _209->data[2].min_offset, D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-232(%rbp), %rax	# strpos, tmp636
	addq	%rdx, %rax	# D.19241, iftmp.116
.L42:
	.loc 1 488 0 discriminator 3
	movq	%rax, %rbx	# iftmp.116, s
	.loc 1 489 0 is_stmt 1 discriminator 3
	movl	12(%r12), %eax	# check_39->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L43	#,
	.loc 1 490 0
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_216].xpv_cur, D.19240
	movl	%eax, -192(%rbp)	# D.19240, slen
	.loc 1 492 0
	movq	-240(%rbp), %rdx	# strend, strend.118
	movq	%rbx, %rax	# s, s.119
	subq	%rax, %rdx	# s.119, D.19238
	movl	-192(%rbp), %eax	# slen, tmp637
	cltq
	cmpq	%rax, %rdx	# D.19238, D.19238
	jg	.L44	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rdx	# strend, strend.120
	movq	%rbx, %rax	# s, s.121
	subq	%rax, %rdx	# s.121, D.19238
	movl	-192(%rbp), %eax	# slen, tmp638
	subl	$1, %eax	#, D.19237
	cltq
	cmpq	%rax, %rdx	# D.19238, D.19238
	jl	.L44	#,
	.loc 1 493 0 is_stmt 1
	movq	-240(%rbp), %rdx	# strend, strend.122
	movq	%rbx, %rax	# s, s.123
	subq	%rax, %rdx	# s.123, D.19238
	movl	-192(%rbp), %eax	# slen, tmp639
	cltq
	cmpq	%rax, %rdx	# D.19238, D.19238
	jne	.L45	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# strend, tmp640
	subq	$1, %rax	#, D.19235
	movzbl	(%rax), %eax	# *_232, D.19244
	cmpb	$10, %al	#, D.19244
	jne	.L44	#,
.L45:
	.loc 1 498 0 is_stmt 1
	subl	$1, -192(%rbp)	#, slen
	.loc 1 499 0
	cmpl	$0, -192(%rbp)	#, slen
	je	.L46	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	(%rax), %rax	# MEM[(struct XPV *)_235].xpv_pv, D.19235
	movzbl	(%rax), %edx	# *_236, D.19244
	movzbl	(%rbx), %eax	# *s_213, D.19244
	cmpb	%al, %dl	# D.19244, D.19244
	jne	.L47	#,
	.loc 1 500 0 is_stmt 1
	cmpl	$1, -192(%rbp)	#, slen
	jle	.L46	#,
	.loc 1 501 0
	movl	-192(%rbp), %eax	# slen, tmp641
	movslq	%eax, %rdx	# tmp641, D.19240
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	(%rax), %rax	# MEM[(struct XPV *)_240].xpv_pv, D.19235
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# D.19235,
	call	memcmp	#
	testl	%eax, %eax	# D.19237
	je	.L46	#,
.L47:
	.loc 1 504 0
	jmp	.L44	#
.L43:
	.loc 1 507 0
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	(%rax), %rax	# MEM[(struct XPV *)_243].xpv_pv, D.19235
	movzbl	(%rax), %edx	# *_244, D.19244
	movzbl	(%rbx), %eax	# *s_213, D.19244
	cmpb	%al, %dl	# D.19244, D.19244
	jne	.L47	#,
	.loc 1 508 0
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_247].xpv_cur, D.19240
	movl	%eax, -192(%rbp)	# D.19240, slen
	cmpl	$1, -192(%rbp)	#, slen
	jle	.L46	#,
	.loc 1 509 0
	movl	-192(%rbp), %eax	# slen, tmp642
	movslq	%eax, %rdx	# tmp642, D.19240
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	(%rax), %rax	# MEM[(struct XPV *)_251].xpv_pv, D.19235
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# D.19235,
	call	memcmp	#
	testl	%eax, %eax	# D.19237
	jne	.L47	#,
.L46:
	.loc 1 511 0
	jmp	.L48	#
.L39:
.LBE2:
	.loc 1 515 0
	movq	-232(%rbp), %rbx	# strpos, s
	.loc 1 516 0
	movq	-216(%rbp), %rax	# prog, tmp643
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	48(%rax), %r13d	# _255->data[2].min_offset, start_shift
	.loc 1 517 0
	movq	-216(%rbp), %rax	# prog, tmp644
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	subl	%r13d, %eax	# start_shift, D.19237
	movl	%eax, %r15d	# D.19237, D.19245
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L49	#,
	.loc 1 518 0
	movq	%r12, %rdi	# check,
	call	Perl_sv_len_utf8	#
	jmp	.L50	#
.L49:
	.loc 1 518 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_262].xpv_cur, D.19240
.L50:
	.loc 1 517 0 is_stmt 1 discriminator 2
	movl	%r15d, %edx	# D.19245, D.19245
	subl	%eax, %edx	# iftmp.124, D.19245
	.loc 1 518 0 discriminator 2
	movl	12(%r12), %eax	# check_39->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19245
	.loc 1 517 0 discriminator 2
	addl	%edx, %eax	# D.19245, D.19245
	movl	%eax, %r15d	# D.19245, end_shift
	.loc 1 519 0 discriminator 2
	cmpl	$0, -200(%rbp)	#, ml_anch
	jne	.L51	#,
.LBB3:
	.loc 1 520 0
	movq	-216(%rbp), %rax	# prog, tmp645
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _272->data[2].max_offset, D.19237
	movl	%eax, -264(%rbp)	# D.19237, %sfp
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L52	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	%r12, %rdi	# check,
	call	Perl_sv_len_utf8	#
	jmp	.L53	#
.L52:
	.loc 1 520 0 discriminator 2
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_277].xpv_cur, D.19240
.L53:
	.loc 1 520 0 discriminator 3
	movl	-264(%rbp), %edx	# %sfp, D.19245
	addl	%eax, %edx	# iftmp.125, D.19245
	.loc 1 521 0 is_stmt 1 discriminator 3
	movl	12(%r12), %eax	# check_39->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19245
	.loc 1 520 0 discriminator 3
	subl	%eax, %edx	# D.19245, D.19245
	movl	%edx, %eax	# D.19245, D.19245
	movl	%eax, -188(%rbp)	# D.19245, end
	.loc 1 522 0 discriminator 3
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.127
	testb	%al, %al	# PL_reg_match_utf8.127
	je	.L54	#,
	.loc 1 522 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# strend, tmp646
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# tmp646,
	call	Perl_utf8_distance	#
	jmp	.L55	#
.L54:
	.loc 1 522 0 discriminator 2
	movq	-240(%rbp), %rdx	# strend, strend.128
	movq	%rbx, %rax	# s, s.129
	subq	%rax, %rdx	# s.129, D.19238
	movq	%rdx, %rax	# D.19238, D.19238
.L55:
	.loc 1 522 0 discriminator 3
	movl	-188(%rbp), %edx	# end, end.130
	subl	%edx, %eax	# end.130, D.19245
	movl	%eax, -184(%rbp)	# D.19245, eshift
	.loc 1 524 0 is_stmt 1 discriminator 3
	cmpl	-184(%rbp), %r15d	# eshift, end_shift
	jge	.L51	#,
	.loc 1 525 0
	movl	-184(%rbp), %r15d	# eshift, end_shift
.LBE3:
	jmp	.L56	#
.L51:
	jmp	.L56	#
.L35:
	.loc 1 529 0
	movl	$0, -200(%rbp)	#, ml_anch
	.loc 1 530 0
	movq	-232(%rbp), %rbx	# strpos, s
	.loc 1 531 0
	movq	-216(%rbp), %rax	# prog, tmp647
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	48(%rax), %r13d	# _300->data[2].min_offset, start_shift
	.loc 1 533 0
	movq	-216(%rbp), %rax	# prog, tmp648
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	subl	%r13d, %eax	# start_shift, D.19237
	movl	%eax, %r15d	# D.19237, D.19245
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L57	#,
	.loc 1 534 0
	movq	%r12, %rdi	# check,
	call	Perl_sv_len_utf8	#
	jmp	.L58	#
.L57:
	.loc 1 534 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# check_39->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_307].xpv_cur, D.19240
.L58:
	.loc 1 533 0 is_stmt 1 discriminator 2
	movl	%r15d, %edx	# D.19245, D.19245
	subl	%eax, %edx	# iftmp.131, D.19245
	.loc 1 534 0 discriminator 2
	movl	12(%r12), %eax	# check_39->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19245
	.loc 1 533 0 discriminator 2
	addl	%edx, %eax	# D.19245, D.19245
	movl	%eax, %r15d	# D.19245, end_shift
.L56:
	.loc 1 545 0
	movl	-244(%rbp), %eax	# flags, tmp649
	andl	$4, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L59	#,
.LBB4:
	.loc 1 546 0
	movl	$-1, -204(%rbp)	#, p
	.loc 1 547 0
	cmpq	$0, -256(%rbp)	#, data
	je	.L60	#,
	.loc 1 547 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# data, tmp650
	movq	8(%rax), %rax	# data_335(D)->scream_pos, iftmp.132
	jmp	.L61	#
.L60:
	.loc 1 547 0 discriminator 2
	leaq	-204(%rbp), %rax	#, iftmp.132
.L61:
	.loc 1 547 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.132, pp
	.loc 1 549 0 is_stmt 1 discriminator 3
	movq	PL_screamfirst(%rip), %rdx	# PL_screamfirst, PL_screamfirst.133
	movq	(%r12), %rax	# check_40->sv_any, D.19239
	movzbl	62(%rax), %eax	# MEM[(struct XPVBM *)_340].xbm_rare, D.19247
	movzbl	%al, %eax	# D.19247, D.19240
	salq	$2, %rax	#, D.19240
	addq	%rdx, %rax	# PL_screamfirst.133, D.19248
	movl	(%rax), %eax	# *_344, D.19237
	testl	%eax, %eax	# D.19237
	jns	.L62	#,
	.loc 1 550 0
	movq	(%r12), %rax	# check_40->sv_any, D.19239
	movzbl	62(%rax), %eax	# MEM[(struct XPVBM *)_346].xbm_rare, D.19247
	cmpb	$10, %al	#, D.19247
	jne	.L44	#,
	.loc 1 551 0
	movq	(%r12), %rax	# check_40->sv_any, D.19239
	movzwl	60(%rax), %eax	# MEM[(struct XPVBM *)_348].xbm_previous, D.19249
	movzwl	%ax, %edx	# D.19249, D.19240
	movq	(%r12), %rax	# check_40->sv_any, D.19239
	movq	8(%rax), %rax	# MEM[(struct XPV *)_351].xpv_cur, D.19240
	subq	$1, %rax	#, D.19240
	cmpq	%rax, %rdx	# D.19240, D.19240
	jne	.L44	#,
	.loc 1 552 0
	movl	12(%r12), %eax	# check_40->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L44	#,
.L62:
	.loc 1 554 0
	movq	%rbx, %rdx	# s, s.134
	movq	-144(%rbp), %rax	# strbeg, strbeg.135
	subq	%rax, %rdx	# strbeg.135, D.19238
	movq	%rdx, %rax	# D.19238, D.19238
	.loc 1 553 0
	movl	%eax, %edx	# D.19238, D.19245
	movl	%r13d, %eax	# start_shift, start_shift.136
	addl	%edx, %eax	# D.19245, D.19245
	movl	%eax, %edx	# D.19245, D.19237
	movq	-136(%rbp), %rcx	# pp, tmp651
	movq	-224(%rbp), %rax	# sv, tmp652
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp651,
	movl	%r15d, %ecx	# end_shift,
	movq	%r12, %rsi	# check,
	movq	%rax, %rdi	# tmp652,
	call	Perl_screaminstr	#
	movq	%rax, %rbx	#, s
	.loc 1 558 0
	testq	%rbx, %rbx	# s
	je	.L64	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp653
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$262144, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L64	#,
	.loc 1 559 0 is_stmt 1
	movq	%rbx, %rdx	# s, s.137
	movq	-224(%rbp), %rax	# sv, tmp654
	movq	(%rax), %rax	# sv_139(D)->sv_any, D.19239
	movq	(%rax), %rax	# MEM[(struct XPV *)_367].xpv_pv, D.19235
	subq	%rax, %rdx	# D.19238, D.19238
	movq	%rdx, %rax	# D.19238, D.19238
	movq	%rax, %rdx	# D.19238, D.19241
	movq	-144(%rbp), %rax	# strbeg, tmp655
	leaq	(%rdx,%rax), %rbx	#, s
.L64:
	.loc 1 560 0
	cmpq	$0, -256(%rbp)	#, data
	je	.L65	#,
	.loc 1 561 0
	movq	-256(%rbp), %rax	# data, tmp656
	movq	(%rax), %rax	# data_335(D)->scream_olds, D.19250
	movq	%rbx, (%rax)	# s, *_373
.LBE4:
	jmp	.L66	#
.L65:
	jmp	.L66	#
.L59:
	.loc 1 563 0
	movq	-216(%rbp), %rax	# prog, tmp657
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$2048, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L67	#,
	.loc 1 564 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.138
	testl	%eax, %eax	# PL_multiline.138
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19236
	.loc 1 565 0
	movslq	%r15d, %rdx	# end_shift, D.19241
	movq	%rdx, %rcx	# D.19241, D.19241
	negq	%rcx	# D.19241
	movq	-240(%rbp), %rdx	# strend, tmp658
	leaq	(%rcx,%rdx), %rsi	#, D.19235
	.loc 1 564 0
	movslq	%r13d, %rdx	# start_shift, D.19241
	leaq	(%rbx,%rdx), %rdi	#, D.19251
	movl	%eax, %ecx	# D.19236,
	movq	%r12, %rdx	# check,
	call	Perl_fbm_instr	#
	movq	%rax, %rbx	#, s
	jmp	.L66	#
.L67:
	.loc 1 568 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.139
	testl	%eax, %eax	# PL_multiline.139
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19236
	movl	%eax, -248(%rbp)	# D.19236, %sfp
	.loc 1 569 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.141
	.loc 1 568 0
	testb	%al, %al	# PL_reg_match_utf8.141
	je	.L68	#,
	.loc 1 569 0
	movl	%r15d, %ecx	# end_shift, D.19237
	negl	%ecx	# D.19237
	.loc 1 568 0
	movq	-144(%rbp), %rdx	# strbeg, tmp659
	movq	-240(%rbp), %rax	# strend, tmp660
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp660,
	call	S_reghop3	#
	movq	%rax, -264(%rbp)	#, %sfp
	jmp	.L69	#
.L68:
	.loc 1 569 0 discriminator 1
	movl	%r15d, %eax	# end_shift, D.19237
	negl	%eax	# D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	.loc 1 568 0 discriminator 1
	movq	-240(%rbp), %rax	# strend, tmp661
	addq	%rdx, %rax	# D.19241, iftmp.140
	movq	%rax, -264(%rbp)	# iftmp.140, %sfp
.L69:
	.loc 1 568 0 is_stmt 0 discriminator 2
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.143
	testb	%al, %al	# PL_reg_match_utf8.143
	je	.L70	#,
	.loc 1 568 0 discriminator 3
	movq	-240(%rbp), %rax	# strend, tmp662
	movq	%rax, %rdx	# tmp662,
	movl	%r13d, %esi	# start_shift,
	movq	%rbx, %rdi	# s,
	call	S_reghop3	#
	jmp	.L71	#
.L70:
	.loc 1 568 0 discriminator 4
	movslq	%r13d, %rax	# start_shift, D.19241
	addq	%rbx, %rax	# s, iftmp.142
.L71:
	.loc 1 568 0 discriminator 5
	movl	-248(%rbp), %ecx	# %sfp,
	movq	%r12, %rdx	# check,
	movq	-264(%rbp), %rsi	# %sfp,
	movq	%rax, %rdi	# iftmp.142,
	call	Perl_fbm_instr	#
	movq	%rax, %rbx	#, s
.L66:
	.loc 1 584 0 is_stmt 1
	testq	%rbx, %rbx	# s
	jne	.L72	#,
	.loc 1 585 0
	jmp	.L44	#
.L72:
	.loc 1 587 0
	movq	%rbx, -168(%rbp)	# s, check_at
	.loc 1 600 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L73	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp663
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	40(%rax), %rax	# _400->data[1].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L74	#,
	movq	-216(%rbp), %rax	# prog, tmp664
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	16(%rax), %rax	# _402->data[0].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L74	#,
	.loc 1 600 0 discriminator 3
	movl	$1, %eax	#, iftmp.145
	jmp	.L75	#
.L74:
	.loc 1 600 0 discriminator 2
	movl	$0, %eax	#, iftmp.145
.L75:
	.loc 1 600 0 discriminator 4
	andl	$1, %eax	#, iftmp.144
	jmp	.L76	#
.L73:
	.loc 1 600 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp665
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	32(%rax), %rax	# _407->data[1].substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L77	#,
	.loc 1 600 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp666
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	8(%rax), %rax	# _409->data[0].substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L77	#,
	.loc 1 600 0 discriminator 3
	movl	$1, %eax	#, iftmp.146
	jmp	.L78	#
.L77:
	.loc 1 600 0 discriminator 2
	movl	$0, %eax	#, iftmp.146
.L78:
	.loc 1 600 0 discriminator 4
	andl	$1, %eax	#, iftmp.144
.L76:
	.loc 1 600 0 discriminator 3
	testb	%al, %al	# iftmp.144
	je	.L79	#,
	.loc 1 603 0 is_stmt 1
	testq	%r14, %r14	# other_last
	jne	.L80	#,
	.loc 1 604 0
	movq	-232(%rbp), %r14	# strpos, other_last
.L80:
	.loc 1 605 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L81	#,
	.loc 1 605 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp667
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	40(%rax), %rax	# _415->data[1].utf8_substr, iftmp.147
	jmp	.L82	#
.L81:
	.loc 1 605 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp668
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	32(%rax), %rax	# _417->data[1].substr, iftmp.147
.L82:
	.loc 1 605 0 discriminator 3
	cmpq	%r12, %rax	# check, iftmp.147
	jne	.L83	#,
.L84:
.LBB5:
	.loc 1 608 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.149
	testb	%al, %al	# PL_reg_match_utf8.149
	je	.L85	#,
	.loc 1 608 0 is_stmt 0 discriminator 1
	movl	%r13d, %ecx	# start_shift, D.19237
	negl	%ecx	# D.19237
	movq	-144(%rbp), %rax	# strbeg, tmp669
	movq	%rax, %rdx	# tmp669,
	movl	%ecx, %esi	# D.19237,
	movq	%rbx, %rdi	# s,
	call	S_reghop3	#
	jmp	.L86	#
.L85:
	.loc 1 608 0 discriminator 2
	movl	%r13d, %eax	# start_shift, D.19237
	negl	%eax	# D.19237
	cltq
	addq	%rbx, %rax	# s, iftmp.148
.L86:
	.loc 1 608 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.148, last
	.loc 1 609 0 is_stmt 1 discriminator 3
	movq	%rbx, -96(%rbp)	# s, s1
	.loc 1 612 0 discriminator 3
	movq	-216(%rbp), %rax	# prog, tmp670
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _518->data[2].max_offset, D.19237
	cltq
	negq	%rax	# D.19241
	addq	%rbx, %rax	# s, tmp671
	movq	%rax, -176(%rbp)	# tmp671, t
	.loc 1 613 0 discriminator 3
	movq	%rbx, %rdx	# s, s.150
	movq	-232(%rbp), %rax	# strpos, strpos.151
	subq	%rax, %rdx	# strpos.151, D.19238
	movq	-216(%rbp), %rax	# prog, tmp672
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _526->data[2].max_offset, D.19237
	cltq
	cmpq	%rax, %rdx	# D.19238, D.19238
	jle	.L87	#,
	.loc 1 614 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L88	#,
	.loc 1 615 0
	movq	-216(%rbp), %rax	# prog, tmp673
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _529->data[2].max_offset, D.19237
	negl	%eax	# D.19237
	movl	%eax, %ecx	# D.19237, D.19237
	movq	-232(%rbp), %rax	# strpos, tmp674
	movq	%rax, %rdx	# tmp674,
	movl	%ecx, %esi	# D.19237,
	movq	%rbx, %rdi	# s,
	call	S_reghopmaybe3	#
	movq	%rax, -176(%rbp)	# tmp675, t
	cmpq	$0, -176(%rbp)	#, t
	je	.L87	#,
	.loc 1 616 0
	movq	-176(%rbp), %rax	# t, tmp676
	cmpq	-232(%rbp), %rax	# strpos, tmp676
	jbe	.L87	#,
.L88:
	.loc 1 613 0
	jmp	.L89	#
.L87:
	.loc 1 619 0
	movq	-232(%rbp), %rax	# strpos, tmp677
	movq	%rax, -176(%rbp)	# tmp677, t
.L89:
	.loc 1 620 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.153
	testb	%al, %al	# PL_reg_match_utf8.153
	je	.L90	#,
	.loc 1 620 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp678
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %ecx	# _535->data[0].min_offset, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp679
	movq	-176(%rbp), %rax	# t, tmp680
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp680,
	call	S_reghop3	#
	jmp	.L91	#
.L90:
	.loc 1 620 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp681
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _538->data[0].min_offset, D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-176(%rbp), %rax	# t, tmp682
	addq	%rdx, %rax	# D.19241, iftmp.152
.L91:
	.loc 1 620 0 discriminator 3
	movq	%rax, -176(%rbp)	# iftmp.152, t
	.loc 1 621 0 is_stmt 1 discriminator 3
	cmpq	%r14, -176(%rbp)	# other_last, t
	jae	.L92	#,
	.loc 1 622 0
	movq	%r14, -176(%rbp)	# other_last, t
.L92:
	.loc 1 623 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.155
	testb	%al, %al	# PL_reg_match_utf8.155
	je	.L93	#,
	.loc 1 623 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp683
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	negl	%eax	# D.19237
	movl	%eax, %ecx	# D.19237, D.19237
	movq	-144(%rbp), %rdx	# strbeg, tmp684
	movq	-240(%rbp), %rax	# strend, tmp685
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp685,
	call	S_reghop3	#
	jmp	.L94	#
.L93:
	.loc 1 623 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp686
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	negl	%eax	# D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-240(%rbp), %rax	# strend, tmp687
	addq	%rdx, %rax	# D.19241, iftmp.154
.L94:
	.loc 1 623 0 discriminator 3
	movq	%rax, -160(%rbp)	# iftmp.154, last1
	movq	-160(%rbp), %rax	# last1, tmp688
	movq	%rax, -88(%rbp)	# tmp688, last2
	.loc 1 624 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# last, tmp689
	cmpq	-160(%rbp), %rax	# last1, tmp689
	jae	.L95	#,
	.loc 1 625 0
	movq	-104(%rbp), %rax	# last, tmp690
	movq	%rax, -160(%rbp)	# tmp690, last1
.L95:
	.loc 1 628 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L96	#,
	.loc 1 628 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp691
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	16(%rax), %rax	# _555->data[0].utf8_substr, iftmp.156
	jmp	.L97	#
.L96:
	.loc 1 628 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp692
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	8(%rax), %rax	# _557->data[0].substr, iftmp.156
.L97:
	.loc 1 628 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.156, must
	.loc 1 629 0 is_stmt 1 discriminator 3
	cmpq	$PL_sv_undef, -80(%rbp)	#, must
	jne	.L98	#,
	.loc 1 630 0
	movl	$0, %ebx	#, s
	jmp	.L99	#
.L98:
	.loc 1 634 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.157
	testl	%eax, %eax	# PL_multiline.157
	setne	%al	#, D.19246
	movzbl	%al, %ebx	# D.19246, D.19236
	.loc 1 636 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.159
	.loc 1 634 0
	testb	%al, %al	# PL_reg_match_utf8.159
	je	.L100	#,
	.loc 1 636 0
	movq	-80(%rbp), %rax	# must, tmp693
	movl	12(%rax), %eax	# must_559->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19237
	negl	%eax	# D.19237
	movl	%eax, %r14d	# D.19237, D.19237
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.161
	testb	%al, %al	# PL_reg_match_utf8.161
	je	.L101	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp694
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %ecx	# _571->data[0].min_offset, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp695
	movq	-160(%rbp), %rax	# last1, tmp696
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp696,
	call	S_reghop3	#
	jmp	.L102	#
.L101:
	.loc 1 636 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp697
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _574->data[0].min_offset, D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-160(%rbp), %rax	# last1, tmp698
	addq	%rdx, %rax	# D.19241, iftmp.160
.L102:
	.loc 1 636 0 discriminator 1
	movq	-80(%rbp), %rdx	# must, tmp699
	movq	(%rdx), %rdx	# must_559->sv_any, D.19239
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_578].xpv_cur, D.19240
	leaq	(%rax,%rdx), %rcx	#, D.19252
	.loc 1 634 0 is_stmt 1 discriminator 1
	movq	-144(%rbp), %rax	# strbeg, tmp700
	movq	%rax, %rdx	# tmp700,
	movl	%r14d, %esi	# D.19237,
	movq	%rcx, %rdi	# D.19252,
	call	S_reghop3	#
	jmp	.L103	#
.L100:
	.loc 1 636 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.163
	testb	%al, %al	# PL_reg_match_utf8.163
	je	.L104	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp701
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %ecx	# _583->data[0].min_offset, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp702
	movq	-160(%rbp), %rax	# last1, tmp703
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp703,
	call	S_reghop3	#
	jmp	.L105	#
.L104:
	.loc 1 636 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp704
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _586->data[0].min_offset, D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-160(%rbp), %rax	# last1, tmp705
	addq	%rdx, %rax	# D.19241, iftmp.162
.L105:
	.loc 1 636 0 discriminator 3
	movq	-80(%rbp), %rdx	# must, tmp706
	movq	(%rdx), %rdx	# must_559->sv_any, D.19239
	movq	8(%rdx), %rcx	# MEM[(struct XPV *)_590].xpv_cur, D.19240
	movq	-80(%rbp), %rdx	# must, tmp707
	movl	12(%rdx), %edx	# must_559->sv_flags, D.19236
	andl	$1073741824, %edx	#, D.19236
	testl	%edx, %edx	# D.19236
	setne	%dl	#, D.19246
	movzbl	%dl, %edx	# D.19246, D.19237
	negl	%edx	# D.19237
	movslq	%edx, %rdx	# D.19237, D.19241
	addq	%rcx, %rdx	# D.19240, D.19241
	.loc 1 634 0 is_stmt 1 discriminator 3
	addq	%rdx, %rax	# D.19241, iftmp.158
.L103:
	.loc 1 634 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx	# must, tmp708
	movq	-176(%rbp), %rdi	# t, tmp709
	movl	%ebx, %ecx	# D.19236,
	movq	%rax, %rsi	# iftmp.158,
	call	Perl_fbm_instr	#
	movq	%rax, %rbx	#, s
.L99:
	.loc 1 649 0 is_stmt 1
	testq	%rbx, %rbx	# s
	jne	.L106	#,
	.loc 1 650 0
	movq	-160(%rbp), %rax	# last1, tmp710
	cmpq	-88(%rbp), %rax	# last2, tmp710
	jb	.L107	#,
	.loc 1 653 0
	jmp	.L44	#
.L107:
	.loc 1 658 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.165
	testb	%al, %al	# PL_reg_match_utf8.165
	je	.L108	#,
	.loc 1 658 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp711
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _602->data[0].min_offset, D.19237
	leal	1(%rax), %ecx	#, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp712
	movq	-160(%rbp), %rax	# last1, tmp713
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp713,
	call	S_reghop3	#
	jmp	.L109	#
.L108:
	.loc 1 658 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp714
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _606->data[0].min_offset, D.19237
	cltq
	leaq	1(%rax), %rdx	#, D.19241
	movq	-160(%rbp), %rax	# last1, tmp715
	addq	%rdx, %rax	# D.19241, iftmp.164
.L109:
	.loc 1 658 0 discriminator 3
	movq	%rax, %r14	# iftmp.164, other_last
	.loc 1 659 0 is_stmt 1 discriminator 3
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.167
	testb	%al, %al	# PL_reg_match_utf8.167
	je	.L110	#,
	.loc 1 659 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rdx	# strend, tmp716
	movq	-104(%rbp), %rax	# last, tmp717
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp717,
	call	S_reghop3	#
	jmp	.L111	#
.L110:
	.loc 1 659 0 discriminator 2
	movq	-104(%rbp), %rax	# last, tmp718
	addq	$1, %rax	#, iftmp.166
.L111:
	.loc 1 659 0 discriminator 3
	movq	%rax, %rbx	# iftmp.166, s
	.loc 1 660 0 is_stmt 1 discriminator 3
	jmp	.L56	#
.L106:
	.loc 1 665 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.169
	testb	%al, %al	# PL_reg_match_utf8.169
	je	.L112	#,
	.loc 1 665 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp719
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _617->data[0].min_offset, D.19237
	negl	%eax	# D.19237
	movl	%eax, %ecx	# D.19237, D.19237
	movq	-144(%rbp), %rax	# strbeg, tmp720
	movq	%rax, %rdx	# tmp720,
	movl	%ecx, %esi	# D.19237,
	movq	%rbx, %rdi	# s,
	call	S_reghop3	#
	jmp	.L113	#
.L112:
	.loc 1 665 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp721
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	(%rax), %eax	# _621->data[0].min_offset, D.19237
	negl	%eax	# D.19237
	cltq
	addq	%rbx, %rax	# s, iftmp.168
.L113:
	.loc 1 665 0 discriminator 3
	movq	%rax, -176(%rbp)	# iftmp.168, t
	.loc 1 666 0 is_stmt 1 discriminator 3
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.171
	testb	%al, %al	# PL_reg_match_utf8.171
	je	.L114	#,
	.loc 1 666 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# strend, tmp722
	movq	%rax, %rdx	# tmp722,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# s,
	call	S_reghop3	#
	jmp	.L115	#
.L114:
	.loc 1 666 0 discriminator 2
	leaq	1(%rbx), %rax	#, iftmp.170
.L115:
	.loc 1 666 0 discriminator 3
	movq	%rax, %r14	# iftmp.170, other_last
	.loc 1 667 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rbx	# s1, s
	.loc 1 668 0 discriminator 3
	movq	-176(%rbp), %rax	# t, tmp723
	cmpq	-232(%rbp), %rax	# strpos, tmp723
	jne	.L116	#,
	.loc 1 669 0
	jmp	.L117	#
.L116:
	.loc 1 670 0
	jmp	.L118	#
.L83:
.LBE5:
.LBB6:
	.loc 1 676 0
	movq	%rbx, -128(%rbp)	# s, s1
	.loc 1 679 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.173
	testb	%al, %al	# PL_reg_match_utf8.173
	je	.L119	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movl	%r13d, %ecx	# start_shift, D.19237
	negl	%ecx	# D.19237
	movq	-144(%rbp), %rax	# strbeg, tmp724
	movq	%rax, %rdx	# tmp724,
	movl	%ecx, %esi	# D.19237,
	movq	%rbx, %rdi	# s,
	call	S_reghop3	#
	jmp	.L120	#
.L119:
	.loc 1 679 0 discriminator 2
	movl	%r13d, %eax	# start_shift, D.19237
	negl	%eax	# D.19237
	cltq
	addq	%rbx, %rax	# s, iftmp.172
.L120:
	.loc 1 679 0 discriminator 3
	movq	%rax, -176(%rbp)	# iftmp.172, t
	.loc 1 681 0 is_stmt 1 discriminator 3
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.175
	testb	%al, %al	# PL_reg_match_utf8.175
	je	.L121	#,
	.loc 1 681 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp725
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	24(%rax), %edx	# _428->data[1].min_offset, D.19237
	movq	-216(%rbp), %rax	# prog, tmp726
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	movl	%edx, %ecx	# D.19237, D.19237
	subl	%eax, %ecx	# D.19237, D.19237
	movq	-144(%rbp), %rdx	# strbeg, tmp727
	movq	-240(%rbp), %rax	# strend, tmp728
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp728,
	call	S_reghop3	#
	jmp	.L122	#
.L121:
	.loc 1 681 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp729
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	negl	%eax	# D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-216(%rbp), %rax	# prog, tmp730
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	24(%rax), %eax	# _436->data[1].min_offset, D.19237
	cltq
	addq	%rax, %rdx	# D.19241, D.19241
	movq	-240(%rbp), %rax	# strend, tmp731
	addq	%rdx, %rax	# D.19241, iftmp.174
.L122:
	.loc 1 680 0 is_stmt 1
	movq	%rax, -152(%rbp)	# iftmp.174, last
	movq	-152(%rbp), %rax	# last, tmp732
	movq	%rax, -120(%rbp)	# tmp732, last1
	.loc 1 682 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.177
	testb	%al, %al	# PL_reg_match_utf8.177
	je	.L123	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rdx	# t, tmp733
	movq	-152(%rbp), %rax	# last, tmp734
	movq	%rdx, %rsi	# tmp733,
	movq	%rax, %rdi	# tmp734,
	call	Perl_utf8_distance	#
	jmp	.L124	#
.L123:
	.loc 1 682 0 discriminator 2
	movq	-152(%rbp), %rdx	# last, last.178
	movq	-176(%rbp), %rax	# t, t.179
	subq	%rax, %rdx	# t.179, iftmp.176
	movq	%rdx, %rax	# iftmp.176, iftmp.176
.L124:
	.loc 1 682 0 discriminator 3
	movq	-216(%rbp), %rdx	# prog, tmp735
	movq	24(%rdx), %rdx	# prog_147(D)->substrs, D.19242
	movl	28(%rdx), %edx	# _448->data[1].max_offset, D.19237
	movslq	%edx, %rdx	# D.19237, D.19238
	cmpq	%rdx, %rax	# D.19238, iftmp.176
	jle	.L125	#,
	.loc 1 683 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.181
	testb	%al, %al	# PL_reg_match_utf8.181
	je	.L126	#,
	.loc 1 683 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp736
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	28(%rax), %ecx	# _452->data[1].max_offset, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp737
	movq	-176(%rbp), %rax	# t, tmp738
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp738,
	call	S_reghop3	#
	jmp	.L127	#
.L126:
	.loc 1 683 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp739
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	28(%rax), %eax	# _455->data[1].max_offset, D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-176(%rbp), %rax	# t, tmp740
	addq	%rdx, %rax	# D.19241, iftmp.180
.L127:
	.loc 1 683 0 discriminator 3
	movq	%rax, -152(%rbp)	# iftmp.180, last
.L125:
	.loc 1 684 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.183
	testb	%al, %al	# PL_reg_match_utf8.183
	je	.L128	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp741
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	24(%rax), %ecx	# _461->data[1].min_offset, D.19237
	movq	-240(%rbp), %rdx	# strend, tmp742
	movq	-176(%rbp), %rax	# t, tmp743
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp743,
	call	S_reghop3	#
	jmp	.L129	#
.L128:
	.loc 1 684 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp744
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	24(%rax), %eax	# _464->data[1].min_offset, D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-176(%rbp), %rax	# t, tmp745
	addq	%rdx, %rax	# D.19241, iftmp.182
.L129:
	.loc 1 684 0 discriminator 3
	movq	%rax, %rbx	# iftmp.182, s
	.loc 1 685 0 is_stmt 1 discriminator 3
	cmpq	%r14, %rbx	# other_last, s
	jae	.L130	#,
	.loc 1 686 0
	movq	%r14, %rbx	# other_last, s
.L130:
	.loc 1 688 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L131	#,
	.loc 1 688 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp746
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	40(%rax), %rax	# _470->data[1].utf8_substr, iftmp.184
	jmp	.L132	#
.L131:
	.loc 1 688 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp747
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	32(%rax), %rax	# _472->data[1].substr, iftmp.184
.L132:
	.loc 1 688 0 discriminator 3
	movq	%rax, -112(%rbp)	# iftmp.184, must
	.loc 1 692 0 is_stmt 1 discriminator 3
	cmpq	$PL_sv_undef, -112(%rbp)	#, must
	jne	.L133	#,
	.loc 1 693 0
	movl	$0, %ebx	#, s
	jmp	.L134	#
.L133:
	.loc 1 697 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.185
	testl	%eax, %eax	# PL_multiline.185
	setne	%al	#, D.19246
	movzbl	%al, %edx	# D.19246, D.19236
	.loc 1 698 0
	movq	-112(%rbp), %rax	# must, tmp748
	movq	(%rax), %rax	# must_474->sv_any, D.19239
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_479].xpv_cur, D.19240
	.loc 1 699 0
	movq	-112(%rbp), %rax	# must, tmp749
	movl	12(%rax), %eax	# must_474->sv_flags, D.19236
	andl	$1073741824, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	setne	%al	#, D.19246
	movzbl	%al, %eax	# D.19246, D.19240
	subq	%rax, %rcx	# D.19240, D.19241
	.loc 1 697 0
	movq	-152(%rbp), %rax	# last, tmp750
	leaq	(%rcx,%rax), %rsi	#, D.19251
	movq	-112(%rbp), %rax	# must, tmp751
	movl	%edx, %ecx	# D.19236,
	movq	%rax, %rdx	# tmp751,
	movq	%rbx, %rdi	# s,
	call	Perl_fbm_instr	#
	movq	%rax, %rbx	#, s
.L134:
	.loc 1 707 0
	testq	%rbx, %rbx	# s
	jne	.L135	#,
	.loc 1 708 0
	movq	-120(%rbp), %rax	# last1, tmp752
	cmpq	-152(%rbp), %rax	# last, tmp752
	jne	.L136	#,
	.loc 1 711 0
	jmp	.L44	#
.L136:
	.loc 1 716 0
	movq	-152(%rbp), %r14	# last, other_last
	.loc 1 717 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.187
	testb	%al, %al	# PL_reg_match_utf8.187
	je	.L137	#,
	.loc 1 717 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rdx	# strend, tmp753
	movq	-176(%rbp), %rax	# t, tmp754
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp754,
	call	S_reghop3	#
	jmp	.L138	#
.L137:
	.loc 1 717 0 discriminator 2
	movq	-176(%rbp), %rax	# t, tmp755
	addq	$1, %rax	#, iftmp.186
.L138:
	.loc 1 717 0 discriminator 3
	movq	%rax, %rbx	# iftmp.186, s
	.loc 1 718 0 is_stmt 1 discriminator 3
	jmp	.L56	#
.L135:
	.loc 1 723 0
	movq	%rbx, %r14	# s, other_last
	.loc 1 724 0
	movq	-128(%rbp), %rbx	# s1, s
	.loc 1 725 0
	movq	-176(%rbp), %rax	# t, tmp756
	cmpq	-232(%rbp), %rax	# strpos, tmp756
	jne	.L139	#,
	.loc 1 726 0
	jmp	.L117	#
.L139:
	.loc 1 727 0
	jmp	.L118	#
.L79:
.LBE6:
	.loc 1 732 0
	movq	-216(%rbp), %rax	# prog, tmp757
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _495->data[2].max_offset, D.19237
	cltq
	negq	%rax	# D.19241
	addq	%rbx, %rax	# s, tmp758
	movq	%rax, -176(%rbp)	# tmp758, t
	.loc 1 733 0
	movq	%rbx, %rdx	# s, s.188
	movq	-232(%rbp), %rax	# strpos, strpos.189
	subq	%rax, %rdx	# strpos.189, D.19238
	movq	-216(%rbp), %rax	# prog, tmp759
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _503->data[2].max_offset, D.19237
	cltq
	cmpq	%rax, %rdx	# D.19238, D.19238
	jle	.L117	#,
	.loc 1 734 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L118	#,
	.loc 1 735 0
	movq	-216(%rbp), %rax	# prog, tmp760
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	52(%rax), %eax	# _506->data[2].max_offset, D.19237
	negl	%eax	# D.19237
	movl	%eax, %ecx	# D.19237, D.19237
	movq	-232(%rbp), %rax	# strpos, tmp761
	movq	%rax, %rdx	# tmp761,
	movl	%ecx, %esi	# D.19237,
	movq	%rbx, %rdi	# s,
	call	S_reghopmaybe3	#
	movq	%rax, -176(%rbp)	# tmp762, t
	cmpq	$0, -176(%rbp)	#, t
	je	.L117	#,
	.loc 1 736 0
	movq	-176(%rbp), %rax	# t, tmp763
	cmpq	-232(%rbp), %rax	# strpos, tmp763
	jbe	.L117	#,
.L118:
	.loc 1 740 0
	cmpl	$0, -200(%rbp)	#, ml_anch
	je	.L140	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# t, tmp764
	subq	$1, %rax	#, D.19235
	movzbl	(%rax), %eax	# *_696, D.19244
	cmpb	$10, %al	#, D.19244
	je	.L140	#,
.L141:
	.loc 1 748 0 is_stmt 1
	jmp	.L142	#
.L149:
	.loc 1 749 0
	movq	-176(%rbp), %rax	# t, tmp765
	movzbl	(%rax), %eax	# *t_53, D.19244
	cmpb	$10, %al	#, D.19244
	jne	.L143	#,
	.loc 1 750 0
	movq	-216(%rbp), %rax	# prog, tmp766
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movl	48(%rax), %eax	# _704->data[2].min_offset, D.19237
	cltq
	negq	%rax	# D.19241
	movq	%rax, %rdx	# D.19241, D.19241
	movq	-168(%rbp), %rax	# check_at, tmp767
	addq	%rdx, %rax	# D.19241, D.19235
	cmpq	-176(%rbp), %rax	# t, D.19235
	jbe	.L144	#,
	.loc 1 751 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L145	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp768
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	16(%rax), %rax	# _709->data[0].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	setne	%al	#, iftmp.190
	jmp	.L146	#
.L145:
	.loc 1 751 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp769
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	8(%rax), %rax	# _712->data[0].substr, D.19243
	testq	%rax, %rax	# D.19243
	setne	%al	#, iftmp.190
.L146:
	.loc 1 751 0 discriminator 3
	testb	%al, %al	# iftmp.190
	je	.L147	#,
	.loc 1 759 0 is_stmt 1
	movq	-176(%rbp), %rax	# t, tmp773
	addq	$1, %rax	#, tmp772
	movq	%rax, -232(%rbp)	# tmp772, strpos
	.loc 1 762 0
	jmp	.L84	#
.L147:
	.loc 1 766 0
	movq	-176(%rbp), %rax	# t, tmp774
	leaq	1(%rax), %rbx	#, s
	.loc 1 769 0
	jmp	.L148	#
.L144:
	.loc 1 776 0
	movq	-176(%rbp), %rax	# t, tmp775
	leaq	1(%rax), %rbx	#, s
	movq	%rbx, -232(%rbp)	# s, strpos
	movq	-232(%rbp), %r14	# strpos, other_last
	.loc 1 777 0
	jmp	.L56	#
.L143:
	.loc 1 779 0
	addq	$1, -176(%rbp)	#, t
.L142:
	.loc 1 748 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp776
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	cltq
	negq	%rax	# D.19241
	movq	%rax, %rdx	# D.19241, D.19241
	movq	-240(%rbp), %rax	# strend, tmp777
	addq	%rdx, %rax	# D.19241, D.19235
	cmpq	-176(%rbp), %rax	# t, D.19235
	ja	.L149	#,
	.loc 1 783 0
	jmp	.L44	#
.L140:
	.loc 1 789 0
	movq	-176(%rbp), %rbx	# t, s
.L148:
	.loc 1 791 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L150	#,
	.loc 1 791 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp778
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _721->data[2].utf8_substr, iftmp.191
	jmp	.L151	#
.L150:
	.loc 1 791 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp779
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _723->data[2].substr, iftmp.191
.L151:
	.loc 1 791 0 discriminator 3
	movq	(%rax), %rax	# iftmp.191_115->sv_any, D.19239
	movl	56(%rax), %edx	# MEM[(struct XPVBM *)_725].xbm_useful, D.19237
	addl	$1, %edx	#, D.19237
	movl	%edx, 56(%rax)	# D.19237, MEM[(struct XPVBM *)_725].xbm_useful
	jmp	.L152	#
.L117:
	.loc 1 801 0 is_stmt 1
	cmpl	$0, -200(%rbp)	#, ml_anch
	je	.L48	#,
	.loc 1 801 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, sv
	je	.L48	#,
	movq	-224(%rbp), %rax	# sv, tmp780
	movl	12(%rax), %eax	# sv_139(D)->sv_flags, D.19236
	andl	$524288, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	jne	.L48	#,
	.loc 1 802 0 is_stmt 1
	movq	-232(%rbp), %rax	# strpos, tmp781
	cmpq	-144(%rbp), %rax	# strbeg, tmp781
	je	.L48	#,
	.loc 1 802 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# strpos, tmp782
	subq	$1, %rax	#, D.19235
	movzbl	(%rax), %eax	# *_634, D.19244
	cmpb	$10, %al	#, D.19244
	je	.L48	#,
	.loc 1 804 0 is_stmt 1
	movq	-216(%rbp), %rax	# prog, tmp783
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$32, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	jne	.L48	#,
	.loc 1 806 0
	movq	-232(%rbp), %rax	# strpos, tmp784
	movq	%rax, -176(%rbp)	# tmp784, t
	.loc 1 807 0
	jmp	.L141	#
.L48:
	.loc 1 814 0
	movq	-216(%rbp), %rax	# prog, tmp785
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$131072, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	jne	.L153	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L154	#,
	.loc 1 816 0 is_stmt 1
	movq	-216(%rbp), %rax	# prog, tmp786
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _641->data[2].utf8_substr, D.19243
	.loc 1 818 0
	testq	%rax, %rax	# D.19243
	je	.L155	#,
	.loc 1 817 0
	movq	-216(%rbp), %rax	# prog, tmp787
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _643->data[2].utf8_substr, D.19243
	movq	(%rax), %rax	# _644->sv_any, D.19239
	movl	56(%rax), %edx	# MEM[(struct XPVBM *)_645].xbm_useful, D.19237
	subl	$1, %edx	#, D.19237
	movl	%edx, 56(%rax)	# D.19237, MEM[(struct XPVBM *)_645].xbm_useful
	movl	56(%rax), %eax	# MEM[(struct XPVBM *)_645].xbm_useful, D.19237
	testl	%eax, %eax	# D.19237
	jns	.L155	#,
	.loc 1 818 0
	movq	-216(%rbp), %rax	# prog, tmp788
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rdx	# _649->data[2].utf8_substr, D.19243
	movq	-216(%rbp), %rax	# prog, tmp789
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	40(%rax), %rax	# _651->data[1].utf8_substr, D.19243
	cmpq	%rax, %rdx	# D.19243, D.19243
	jne	.L155	#,
	.loc 1 818 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.192
	jmp	.L156	#
.L155:
	.loc 1 818 0 discriminator 1
	movl	$0, %eax	#, iftmp.192
.L156:
	.loc 1 815 0 is_stmt 1
	andl	$1, %eax	#, D.19246
	testb	%al, %al	# D.19246
	jne	.L157	#,
	jmp	.L153	#
.L154:
	.loc 1 820 0
	movq	-216(%rbp), %rax	# prog, tmp790
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _656->data[2].substr, D.19243
	.loc 1 822 0
	testq	%rax, %rax	# D.19243
	je	.L158	#,
	.loc 1 821 0
	movq	-216(%rbp), %rax	# prog, tmp791
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _658->data[2].substr, D.19243
	movq	(%rax), %rax	# _659->sv_any, D.19239
	movl	56(%rax), %edx	# MEM[(struct XPVBM *)_660].xbm_useful, D.19237
	subl	$1, %edx	#, D.19237
	movl	%edx, 56(%rax)	# D.19237, MEM[(struct XPVBM *)_660].xbm_useful
	movl	56(%rax), %eax	# MEM[(struct XPVBM *)_660].xbm_useful, D.19237
	testl	%eax, %eax	# D.19237
	jns	.L158	#,
	.loc 1 822 0
	movq	-216(%rbp), %rax	# prog, tmp792
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rdx	# _664->data[2].substr, D.19243
	movq	-216(%rbp), %rax	# prog, tmp793
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	32(%rax), %rax	# _666->data[1].substr, D.19243
	cmpq	%rax, %rdx	# D.19243, D.19243
	jne	.L158	#,
	.loc 1 822 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.193
	jmp	.L159	#
.L158:
	.loc 1 822 0 discriminator 1
	movl	$0, %eax	#, iftmp.193
.L159:
	.loc 1 815 0 is_stmt 1
	andl	$1, %eax	#, D.19246
	testb	%al, %al	# D.19246
	je	.L153	#,
.L157:
	.loc 1 827 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L160	#,
	.loc 1 827 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp794
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _671->data[2].utf8_substr, iftmp.194
	jmp	.L161	#
.L160:
	.loc 1 827 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp795
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _673->data[2].substr, iftmp.194
.L161:
	.loc 1 827 0 discriminator 3
	movq	%rax, %rdi	# iftmp.194,
	call	Perl_sv_free	#
	.loc 1 828 0 is_stmt 1 discriminator 3
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L162	#,
	.loc 1 828 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp796
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _675->data[2].substr, D.19243
	testq	%rax, %rax	# D.19243
	setne	%al	#, iftmp.195
	jmp	.L163	#
.L162:
	.loc 1 828 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp797
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _678->data[2].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	setne	%al	#, iftmp.195
.L163:
	.loc 1 828 0 discriminator 3
	testb	%al, %al	# iftmp.195
	je	.L164	#,
	.loc 1 829 0 is_stmt 1
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L165	#,
	.loc 1 829 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp798
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _681->data[2].substr, iftmp.196
	jmp	.L166	#
.L165:
	.loc 1 829 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp799
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _683->data[2].utf8_substr, iftmp.196
.L166:
	.loc 1 829 0 discriminator 3
	movq	%rax, %rdi	# iftmp.196,
	call	Perl_sv_free	#
.L164:
	.loc 1 830 0 is_stmt 1
	movq	-216(%rbp), %rax	# prog, tmp800
	movq	24(%rax), %rdx	# prog_147(D)->substrs, D.19242
	movq	-216(%rbp), %rax	# prog, tmp801
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	$0, 64(%rax)	#, _686->data[2].utf8_substr
	movq	64(%rax), %rax	# _686->data[2].utf8_substr, D.19243
	movq	%rax, 56(%rdx)	# D.19243, _685->data[2].substr
	.loc 1 831 0
	movq	-216(%rbp), %rax	# prog, tmp802
	movq	24(%rax), %rdx	# prog_147(D)->substrs, D.19242
	movq	-216(%rbp), %rax	# prog, tmp803
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	$0, 40(%rax)	#, _689->data[1].utf8_substr
	movq	40(%rax), %rax	# _689->data[1].utf8_substr, D.19243
	movq	%rax, 32(%rdx)	# D.19243, _688->data[1].substr
	.loc 1 832 0
	movl	$0, %r12d	#, check
	.loc 1 833 0
	movq	-232(%rbp), %rbx	# strpos, s
	.loc 1 837 0
	movq	-216(%rbp), %rax	# prog, tmp804
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$-3145729, %eax	#, D.19236
	movl	%eax, %edx	# D.19236, D.19236
	movq	-216(%rbp), %rax	# prog, tmp805
	movl	%edx, 92(%rax)	# D.19236, prog_147(D)->reganch
	jmp	.L152	#
.L153:
	.loc 1 840 0
	movq	-232(%rbp), %rbx	# strpos, s
.L152:
	.loc 1 845 0
	movq	-216(%rbp), %rax	# prog, tmp806
	movq	16(%rax), %rax	# prog_147(D)->regstclass, D.19253
	testq	%rax, %rax	# D.19253
	je	.L167	#,
.LBB7:
	.loc 1 854 0
	movq	-216(%rbp), %rax	# prog, tmp807
	movq	16(%rax), %rax	# prog_147(D)->regstclass, D.19253
	addq	$4, %rax	#, tmp808
	movq	%rax, -72(%rbp)	# tmp808, str
	.loc 1 855 0
	movq	-216(%rbp), %rax	# prog, tmp809
	movq	16(%rax), %rax	# prog_147(D)->regstclass, D.19253
	movzbl	1(%rax), %eax	# _731->type, D.19247
	movzbl	%al, %eax	# D.19247, D.19237
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19247
	cmpb	$33, %al	#, D.19247
	jne	.L168	#,
	.loc 1 856 0 discriminator 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.199
	.loc 1 855 0 discriminator 1
	testb	%al, %al	# PL_reg_match_utf8.199
	je	.L169	#,
	.loc 1 856 0
	movq	-216(%rbp), %rax	# prog, tmp811
	movq	16(%rax), %rax	# prog_147(D)->regstclass, D.19253
	movzbl	(%rax), %eax	# MEM[(struct regnode_string *)_736].str_len, D.19247
	movzbl	%al, %edx	# D.19247, D.19241
	movq	-72(%rbp), %rax	# str, tmp812
	addq	%rax, %rdx	# tmp812, D.19252
	movq	-72(%rbp), %rax	# str, tmp813
	movq	%rax, %rsi	# tmp813,
	movq	%rdx, %rdi	# D.19252,
	call	Perl_utf8_distance	#
	jmp	.L171	#
.L169:
	.loc 1 856 0 is_stmt 0 discriminator 3
	movq	-216(%rbp), %rax	# prog, tmp814
	movq	16(%rax), %rax	# prog_147(D)->regstclass, D.19253
	movzbl	(%rax), %eax	# MEM[(struct regnode_string *)_742].str_len, D.19247
	.loc 1 855 0 is_stmt 1 discriminator 3
	movzbl	%al, %eax	# D.19247, iftmp.198
	jmp	.L171	#
.L168:
	.loc 1 855 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.197
.L171:
	.loc 1 855 0 discriminator 4
	movl	%eax, -180(%rbp)	# iftmp.197, cl_l
	.loc 1 858 0 is_stmt 1 discriminator 4
	movq	-216(%rbp), %rax	# prog, tmp815
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	8(%rax), %rax	# _748->data[0].substr, D.19243
	.loc 1 860 0 discriminator 4
	testq	%rax, %rax	# D.19243
	jne	.L172	#,
	.loc 1 858 0
	movq	-216(%rbp), %rax	# prog, tmp816
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	16(%rax), %rax	# _750->data[0].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	jne	.L172	#,
	.loc 1 858 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, ml_anch
	je	.L173	#,
.L172:
	.loc 1 859 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.202
	testb	%al, %al	# PL_reg_match_utf8.202
	je	.L174	#,
	.loc 1 859 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp817
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	testl	%eax, %eax	# D.19237
	je	.L175	#,
	movl	-180(%rbp), %eax	# cl_l, iftmp.203
	jmp	.L176	#
.L175:
	.loc 1 859 0 discriminator 2
	movl	$0, %eax	#, iftmp.203
.L176:
	movq	-240(%rbp), %rdx	# strend, tmp818
	movl	%eax, %esi	# iftmp.203,
	movq	%rbx, %rdi	# s,
	call	S_reghop3	#
	jmp	.L177	#
.L174:
	movq	-216(%rbp), %rax	# prog, tmp819
	movl	72(%rax), %eax	# prog_147(D)->minlen, D.19237
	testl	%eax, %eax	# D.19237
	je	.L178	#,
	.loc 1 859 0 discriminator 1
	movl	-180(%rbp), %eax	# cl_l, tmp820
	cltq
	jmp	.L179	#
.L178:
	.loc 1 859 0 discriminator 2
	movl	$0, %eax	#, iftmp.204
.L179:
	.loc 1 859 0 discriminator 3
	addq	%rbx, %rax	# s, iftmp.201
.L177:
	.loc 1 860 0 is_stmt 1
	jmp	.L180	#
.L173:
	movq	-216(%rbp), %rax	# prog, tmp821
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	32(%rax), %rax	# _752->data[1].substr, D.19243
	.loc 1 863 0
	testq	%rax, %rax	# D.19243
	jne	.L181	#,
	.loc 1 860 0
	movq	-216(%rbp), %rax	# prog, tmp822
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	40(%rax), %rax	# _754->data[1].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L182	#,
.L181:
	.loc 1 861 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.207
	testb	%al, %al	# PL_reg_match_utf8.207
	je	.L183	#,
	.loc 1 861 0 is_stmt 0 discriminator 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.209
	testb	%al, %al	# PL_reg_match_utf8.209
	je	.L184	#,
	movl	%r13d, %ecx	# start_shift, D.19237
	negl	%ecx	# D.19237
	movq	-144(%rbp), %rdx	# strbeg, tmp823
	movq	-168(%rbp), %rax	# check_at, tmp824
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp824,
	call	S_reghop3	#
	jmp	.L185	#
.L184:
	.loc 1 861 0 discriminator 2
	movl	%r13d, %eax	# start_shift, D.19237
	negl	%eax	# D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-168(%rbp), %rax	# check_at, tmp825
	addq	%rdx, %rax	# D.19241, iftmp.208
.L185:
	.loc 1 861 0 discriminator 3
	movq	-240(%rbp), %rdx	# strend, tmp826
	movl	-180(%rbp), %ecx	# cl_l, tmp827
	movl	%ecx, %esi	# tmp827,
	movq	%rax, %rdi	# iftmp.208,
	call	S_reghop3	#
	jmp	.L186	#
.L183:
	.loc 1 861 0 discriminator 2
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.211
	testb	%al, %al	# PL_reg_match_utf8.211
	je	.L187	#,
	.loc 1 861 0 discriminator 1
	movl	%r13d, %ecx	# start_shift, D.19237
	negl	%ecx	# D.19237
	movq	-144(%rbp), %rdx	# strbeg, tmp828
	movq	-168(%rbp), %rax	# check_at, tmp829
	movl	%ecx, %esi	# D.19237,
	movq	%rax, %rdi	# tmp829,
	call	S_reghop3	#
	jmp	.L188	#
.L187:
	.loc 1 861 0 discriminator 2
	movl	%r13d, %eax	# start_shift, D.19237
	negl	%eax	# D.19237
	movslq	%eax, %rdx	# D.19237, D.19241
	movq	-168(%rbp), %rax	# check_at, tmp830
	addq	%rdx, %rax	# D.19241, iftmp.210
.L188:
	.loc 1 861 0 discriminator 3
	movl	-180(%rbp), %edx	# cl_l, tmp831
	movslq	%edx, %rdx	# tmp831, D.19241
	addq	%rdx, %rax	# D.19241, iftmp.206
.L186:
	.loc 1 863 0 is_stmt 1
	jmp	.L180	#
.L182:
	movq	-240(%rbp), %rax	# strend, iftmp.205
.L180:
	.loc 1 858 0
	movq	%rax, -64(%rbp)	# iftmp.200, endpos
	.loc 1 864 0
	movq	-144(%rbp), %rax	# strbeg, tmp832
	movq	%rax, -56(%rbp)	# tmp832, startpos
	.loc 1 866 0
	movq	%rbx, -176(%rbp)	# s, t
	.loc 1 867 0
	movq	-216(%rbp), %rax	# prog, tmp833
	movq	%rax, %rdi	# tmp833,
	call	S_cache_re	#
	.loc 1 868 0
	movq	-216(%rbp), %rax	# prog, tmp834
	movq	16(%rax), %rsi	# prog_147(D)->regstclass, D.19253
	movq	-56(%rbp), %rcx	# startpos, tmp835
	movq	-64(%rbp), %rdx	# endpos, tmp836
	movq	-216(%rbp), %rax	# prog, tmp837
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp835,
	movq	%rdx, %rcx	# tmp836,
	movq	%rbx, %rdx	# s,
	movq	%rax, %rdi	# tmp837,
	call	S_find_byclass	#
	movq	%rax, %rbx	#, s
	.loc 1 869 0
	testq	%rbx, %rbx	# s
	jne	.L190	#,
	.loc 1 873 0
	movq	-64(%rbp), %rax	# endpos, tmp838
	cmpq	-240(%rbp), %rax	# strend, tmp838
	jne	.L191	#,
	.loc 1 876 0
	jmp	.L27	#
.L191:
	.loc 1 880 0
	movq	-216(%rbp), %rax	# prog, tmp839
	movl	92(%rax), %eax	# prog_147(D)->reganch, D.19236
	andl	$15, %eax	#, D.19236
	testl	%eax, %eax	# D.19236
	je	.L192	#,
	.loc 1 880 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, ml_anch
	jne	.L192	#,
	.loc 1 881 0 is_stmt 1
	jmp	.L27	#
.L192:
	.loc 1 883 0
	movq	-216(%rbp), %rax	# prog, tmp840
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	8(%rax), %rax	# _792->data[0].substr, D.19243
	testq	%rax, %rax	# D.19243
	jne	.L193	#,
	.loc 1 883 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp841
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	16(%rax), %rax	# _794->data[0].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L194	#,
.L193:
	.loc 1 884 0 is_stmt 1
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L195	#,
	.loc 1 884 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp842
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	16(%rax), %rax	# _804->data[0].utf8_substr, iftmp.212
	jmp	.L196	#
.L195:
	.loc 1 884 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp843
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	8(%rax), %rax	# _806->data[0].substr, iftmp.212
.L196:
	.loc 1 884 0 discriminator 3
	cmpq	%r12, %rax	# check, iftmp.212
	jne	.L197	#,
.L198:
	.loc 1 887 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.214
	testb	%al, %al	# PL_reg_match_utf8.214
	je	.L199	#,
	.loc 1 887 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rdx	# strend, tmp844
	movq	-176(%rbp), %rax	# t, tmp845
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp845,
	call	S_reghop3	#
	jmp	.L200	#
.L199:
	.loc 1 887 0 discriminator 2
	movq	-176(%rbp), %rax	# t, tmp846
	addq	$1, %rax	#, iftmp.213
.L200:
	.loc 1 887 0 discriminator 3
	movq	%rax, %rbx	# iftmp.213, s
	.loc 1 888 0 is_stmt 1 discriminator 3
	movslq	%r13d, %rdx	# start_shift, D.19241
	movslq	%r15d, %rax	# end_shift, D.19241
	addq	%rdx, %rax	# D.19241, D.19241
	addq	%rbx, %rax	# s, D.19235
	cmpq	-240(%rbp), %rax	# strend, D.19235
	jbe	.L201	#,
	.loc 1 892 0
	jmp	.L27	#
.L201:
	.loc 1 894 0
	testq	%r12, %r12	# check
	jne	.L202	#,
	.loc 1 895 0
	jmp	.L167	#
.L202:
	.loc 1 899 0
	jmp	.L56	#
.L197:
	.loc 1 902 0
	movslq	%r13d, %rdx	# start_shift, D.19241
	movq	-176(%rbp), %rax	# t, tmp847
	addq	%rdx, %rax	# D.19241, D.19235
	cmpq	-168(%rbp), %rax	# check_at, D.19235
	jb	.L203	#,
	.loc 1 903 0
	jmp	.L204	#
.L203:
	.loc 1 905 0
	movq	-168(%rbp), %rbx	# check_at, s
	.loc 1 906 0
	testq	%r12, %r12	# check
	jne	.L205	#,
	.loc 1 907 0
	jmp	.L167	#
.L205:
	.loc 1 911 0
	jmp	.L84	#
.L194:
	.loc 1 915 0
	cmpl	$0, -200(%rbp)	#, ml_anch
	je	.L206	#,
	.loc 1 916 0
	addq	$1, -176(%rbp)	#, t
	movq	-176(%rbp), %rbx	# t, s
	.loc 1 917 0
	testq	%r12, %r12	# check
	jne	.L207	#,
	.loc 1 918 0
	jmp	.L167	#
.L207:
	.loc 1 922 0
	jmp	.L118	#
.L206:
	.loc 1 924 0
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L208	#,
	.loc 1 924 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp848
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	40(%rax), %rax	# _798->data[1].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	sete	%al	#, iftmp.215
	jmp	.L209	#
.L208:
	.loc 1 924 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp849
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	32(%rax), %rax	# _801->data[1].substr, D.19243
	testq	%rax, %rax	# D.19243
	sete	%al	#, iftmp.215
.L209:
	.loc 1 924 0 discriminator 3
	testb	%al, %al	# iftmp.215
	je	.L204	#,
	.loc 1 925 0 is_stmt 1
	jmp	.L27	#
.L204:
	.loc 1 928 0
	movslq	%r13d, %rax	# start_shift, D.19241
	negq	%rax	# D.19241
	movq	%rax, %rdx	# D.19241, D.19241
	movq	-168(%rbp), %rax	# check_at, tmp853
	addq	%rdx, %rax	# D.19241, tmp852
	movq	%rax, -176(%rbp)	# tmp852, t
	.loc 1 930 0
	jmp	.L198	#
.L190:
.L167:
.LBE7:
	.loc 1 948 0
	movq	%rbx, %rax	# s, D.19235
	jmp	.L210	#
.L44:
	.loc 1 951 0
	movq	-216(%rbp), %rax	# prog, tmp854
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _317->data[2].substr, D.19243
	testq	%rax, %rax	# D.19243
	jne	.L211	#,
	.loc 1 951 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp855
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _319->data[2].utf8_substr, D.19243
	testq	%rax, %rax	# D.19243
	je	.L27	#,
.L211:
	.loc 1 952 0 is_stmt 1
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L212	#,
	.loc 1 952 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# prog, tmp856
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _321->data[2].utf8_substr, iftmp.216
	jmp	.L213	#
.L212:
	.loc 1 952 0 discriminator 2
	movq	-216(%rbp), %rax	# prog, tmp857
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _323->data[2].substr, iftmp.216
.L213:
	.loc 1 952 0 discriminator 3
	movq	(%rax), %rdx	# iftmp.216_135->sv_any, D.19239
	cmpl	$0, -196(%rbp)	#, do_utf8
	je	.L214	#,
	.loc 1 952 0 discriminator 4
	movq	-216(%rbp), %rax	# prog, tmp858
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	64(%rax), %rax	# _326->data[2].utf8_substr, iftmp.217
	jmp	.L215	#
.L214:
	.loc 1 952 0 discriminator 5
	movq	-216(%rbp), %rax	# prog, tmp859
	movq	24(%rax), %rax	# prog_147(D)->substrs, D.19242
	movq	56(%rax), %rax	# _328->data[2].substr, iftmp.217
.L215:
	.loc 1 952 0 discriminator 6
	movq	(%rax), %rax	# iftmp.217_136->sv_any, D.19239
	movl	56(%rax), %eax	# MEM[(struct XPVBM *)_330].xbm_useful, D.19237
	addl	$5, %eax	#, D.19237
	movl	%eax, 56(%rdx)	# D.19237, MEM[(struct XPVBM *)_325].xbm_useful
.L27:
	.loc 1 956 0 is_stmt 1
	movl	$0, %eax	#, D.19235
.L210:
	.loc 1 957 0
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
.LFE7:
	.size	Perl_re_intuit_start, .-Perl_re_intuit_start
	.section	.rodata
.LC1:
	.string	"a"
.LC2:
	.string	" "
.LC3:
	.string	"0"
.LC4:
	.string	"panic: unknown regstclass %d"
	.text
	.type	S_find_byclass, @function
S_find_byclass:
.LFB8:
	.loc 1 962 0
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
	subq	$224, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -200(%rbp)	# prog, prog
	movq	%rsi, -208(%rbp)	# c, c
	movq	%rdx, -216(%rbp)	# s, s
	movq	%rcx, -224(%rbp)	# strend, strend
	movq	%r8, -232(%rbp)	# startpos, startpos
	movl	%r9d, -236(%rbp)	# norun, norun
	.loc 1 962 0
	movq	%fs:40, %rax	#, tmp1226
	movq	%rax, -40(%rbp)	# tmp1226, D.19270
	xorl	%eax, %eax	# tmp1226
	.loc 1 963 0
	movq	-200(%rbp), %rax	# prog, tmp817
	movl	92(%rax), %eax	# prog_163(D)->reganch, D.19256
	andl	$16, %eax	#, D.19256
	testl	%eax, %eax	# D.19256
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, tmp818
	movl	%eax, -180(%rbp)	# tmp818, doevery
	.loc 1 971 0
	movl	$1, %ebx	#, tmp
	.loc 1 972 0
	movzbl	PL_reg_match_utf8(%rip), %r13d	# PL_reg_match_utf8, do_utf8
	.loc 1 975 0
	movq	-208(%rbp), %rax	# c, tmp819
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	subl	$9, %eax	#, tmp820
	cmpl	$26, %eax	#, tmp820
	ja	.L217	#,
	movl	%eax, %eax	# tmp820, tmp821
	movq	.L219(,%rax,8), %rax	#, tmp822
	jmp	*%rax	# tmp822
	.section	.rodata
	.align 8
	.align 4
.L219:
	.quad	.L218
	.quad	.L220
	.quad	.L221
	.quad	.L222
	.quad	.L217
	.quad	.L217
	.quad	.L217
	.quad	.L265
	.quad	.L224
	.quad	.L225
	.quad	.L226
	.quad	.L227
	.quad	.L228
	.quad	.L229
	.quad	.L230
	.quad	.L231
	.quad	.L232
	.quad	.L233
	.quad	.L234
	.quad	.L235
	.quad	.L236
	.quad	.L217
	.quad	.L217
	.quad	.L217
	.quad	.L217
	.quad	.L237
	.quad	.L238
	.text
.L224:
	.loc 1 977 0
	testb	%r13b, %r13b	# do_utf8
	je	.L239	#,
	.loc 1 978 0
	jmp	.L240	#
.L250:
	.loc 1 979 0
	movq	-208(%rbp), %rax	# c, tmp823
	movzbl	(%rax), %eax	# c_170(D)->flags, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$32, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L241	#,
	.loc 1 980 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp824
	movzbl	(%rax), %eax	# *s_1, D.19260
	.loc 1 979 0 discriminator 2
	testb	%al, %al	# D.19260
	jns	.L242	#,
.L241:
	.loc 1 981 0 discriminator 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	-216(%rbp), %rsi	# s, tmp825
	movq	-208(%rbp), %rax	# c, tmp826
	movl	%edx, %ecx	# D.19259,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp826,
	call	S_reginclass	#
	.loc 1 979 0 discriminator 1
	testb	%al, %al	# D.19260
	setne	%al	#, iftmp.218
	jmp	.L243	#
.L242:
	.loc 1 982 0 discriminator 1
	movq	-208(%rbp), %rax	# c, tmp827
	movzbl	(%rax), %eax	# c_170(D)->flags, D.19258
	.loc 1 979 0 discriminator 1
	testb	%al, %al	# D.19258
	je	.L244	#,
	.loc 1 982 0
	movq	-216(%rbp), %rsi	# s, tmp828
	movq	-208(%rbp), %rax	# c, tmp829
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp829,
	call	S_reginclass	#
	.loc 1 979 0
	testb	%al, %al	# D.19260
	setne	%al	#, iftmp.219
	jmp	.L243	#
.L244:
	.loc 1 982 0 discriminator 4
	movq	-216(%rbp), %rax	# s, tmp830
	movzbl	(%rax), %eax	# MEM[(U8 *)s_1], D.19258
	shrb	$3, %al	#, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$31, %eax	#, D.19259
	movq	-208(%rbp), %rdx	# c, tmp831
	cltq
	movzbl	8(%rdx,%rax), %eax	# MEM[(struct regnode_charclass *)c_170(D)].bitmap, D.19260
	.loc 1 979 0 discriminator 4
	movsbl	%al, %edx	# D.19260, D.19259
	.loc 1 982 0 discriminator 4
	movq	-216(%rbp), %rax	# s, tmp833
	movzbl	(%rax), %eax	# MEM[(U8 *)s_1], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$7, %eax	#, D.19259
	.loc 1 979 0 discriminator 4
	movl	%eax, %ecx	# D.19259, tmp1229
	sarl	%cl, %edx	# tmp1229, D.19259
	movl	%edx, %eax	# D.19259, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	setne	%al	#, iftmp.219
.L243:
	.loc 1 979 0 is_stmt 0 discriminator 3
	testb	%al, %al	# iftmp.218
	je	.L246	#,
	.loc 1 983 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L247	#,
	.loc 1 983 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp834
	movq	-200(%rbp), %rax	# prog, tmp835
	movq	%rdx, %rsi	# tmp834,
	movq	%rax, %rdi	# tmp835,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L247:
	.loc 1 986 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L249	#
.L246:
	.loc 1 989 0
	movl	$1, %ebx	#, tmp
.L249:
	.loc 1 990 0
	addq	%r12, -216(%rbp)	# uskip, s
.L240:
	.loc 1 978 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp836
	movzbl	(%rax), %eax	# MEM[(U8 *)s_1], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp838
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L250	#,
	.loc 1 1012 0
	jmp	.L264	#
.L239:
	.loc 1 994 0
	jmp	.L252	#
.L263:
.LBB8:
	.loc 1 995 0
	movq	$1, -128(%rbp)	#, skip
	.loc 1 997 0
	movq	-208(%rbp), %rax	# c, tmp839
	movzbl	(%rax), %eax	# c_170(D)->flags, D.19258
	testb	%al, %al	# D.19258
	je	.L253	#,
	.loc 1 997 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rsi	# s, tmp840
	movq	-208(%rbp), %rax	# c, tmp841
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp841,
	call	S_reginclass	#
	testb	%al, %al	# D.19260
	jne	.L254	#,
	jmp	.L255	#
.L253:
	.loc 1 997 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp842
	movzbl	(%rax), %eax	# MEM[(U8 *)s_2], D.19258
	shrb	$3, %al	#, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$31, %eax	#, D.19259
	movq	-208(%rbp), %rdx	# c, tmp843
	cltq
	movzbl	8(%rdx,%rax), %eax	# MEM[(struct regnode_charclass *)c_170(D)].bitmap, D.19260
	movsbl	%al, %edx	# D.19260, D.19259
	movq	-216(%rbp), %rax	# s, tmp845
	movzbl	(%rax), %eax	# MEM[(U8 *)s_2], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$7, %eax	#, D.19259
	movl	%eax, %ecx	# D.19259, tmp1231
	sarl	%cl, %edx	# tmp1231, D.19259
	movl	%edx, %eax	# D.19259, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L254	#,
.L255:
	.loc 1 998 0 is_stmt 1 discriminator 1
	movq	-208(%rbp), %rax	# c, tmp846
	movzbl	35(%rax), %eax	# MEM[(struct regnode_charclass *)c_170(D)].bitmap, D.19260
	.loc 1 997 0 discriminator 1
	testb	%al, %al	# D.19260
	jns	.L256	#,
	.loc 1 998 0
	movq	-208(%rbp), %rax	# c, tmp847
	movzbl	(%rax), %eax	# c_170(D)->flags, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$32, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L256	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# c, tmp848
	movzbl	(%rax), %eax	# c_170(D)->flags, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	andl	$2, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L256	#,
	movq	-216(%rbp), %rax	# s, tmp849
	addq	$1, %rax	#, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jae	.L256	#,
	movq	-216(%rbp), %rax	# s, tmp850
	movzbl	(%rax), %eax	# *s_2, D.19260
	.loc 1 997 0 is_stmt 1 discriminator 1
	cmpb	$64, %al	#, D.19260
	jle	.L257	#,
	.loc 1 998 0
	movq	-216(%rbp), %rax	# s, tmp851
	movzbl	(%rax), %eax	# *s_2, D.19260
	cmpb	$90, %al	#, D.19260
	jg	.L257	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp852
	movzbl	(%rax), %eax	# *s_2, D.19260
	cmpb	$83, %al	#, D.19260
	jne	.L256	#,
	jmp	.L258	#
.L257:
	.loc 1 998 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp853
	movzbl	(%rax), %eax	# *s_2, D.19260
	cmpb	$115, %al	#, D.19260
	jne	.L256	#,
.L258:
	movq	-216(%rbp), %rax	# s, tmp854
	addq	$1, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_234, D.19260
	.loc 1 997 0 is_stmt 1 discriminator 2
	cmpb	$64, %al	#, D.19260
	jle	.L259	#,
	.loc 1 998 0
	movq	-216(%rbp), %rax	# s, tmp855
	addq	$1, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_236, D.19260
	cmpb	$90, %al	#, D.19260
	jg	.L259	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp856
	addq	$1, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_238, D.19260
	cmpb	$83, %al	#, D.19260
	jne	.L256	#,
	jmp	.L260	#
.L259:
	.loc 1 998 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp857
	addq	$1, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_240, D.19260
	cmpb	$115, %al	#, D.19260
	jne	.L256	#,
.L260:
	.loc 1 1001 0 is_stmt 1 discriminator 2
	movq	$2, -128(%rbp)	#, skip
.L254:
	.loc 1 1002 0
	testl	%ebx, %ebx	# tmp
	je	.L261	#,
	.loc 1 1002 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp858
	movq	-200(%rbp), %rax	# prog, tmp859
	movq	%rdx, %rsi	# tmp858,
	movq	%rax, %rdi	# tmp859,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L261:
	.loc 1 1005 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1002 0
	jmp	.L262	#
.L256:
	.loc 1 1008 0
	movl	$1, %ebx	#, tmp
.L262:
	.loc 1 1009 0
	movq	-128(%rbp), %rax	# skip, tmp860
	addq	%rax, -216(%rbp)	# tmp860, s
.L252:
.LBE8:
	.loc 1 994 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp861
	cmpq	-224(%rbp), %rax	# strend, tmp861
	jb	.L263	#,
	.loc 1 1012 0
	jmp	.L264	#
.L267:
	.loc 1 1015 0
	testl	%ebx, %ebx	# tmp
	je	.L266	#,
	.loc 1 1015 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp862
	movq	-200(%rbp), %rax	# prog, tmp863
	movq	%rdx, %rsi	# tmp862,
	movq	%rax, %rdi	# tmp863,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L266:
	.loc 1 1018 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1019 0
	addq	$1, -216(%rbp)	#, s
.L265:
	.loc 1 1014 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp864
	cmpq	-224(%rbp), %rax	# strend, tmp864
	jb	.L267	#,
	.loc 1 1021 0
	jmp	.L264	#
.L237:
	.loc 1 1023 0
	movq	-208(%rbp), %rax	# c, tmp868
	addq	$4, %rax	#, tmp867
	movq	%rax, -160(%rbp)	# tmp867, m
	.loc 1 1024 0
	movq	-208(%rbp), %rax	# c, tmp869
	movzbl	(%rax), %eax	# MEM[(struct regnode_string *)c_170(D)].str_len, D.19258
	movzbl	%al, %eax	# D.19258, tmp870
	movq	%rax, -152(%rbp)	# tmp870, ln
	.loc 1 1025 0
	movq	-152(%rbp), %rax	# ln, tmp871
	cltq
	movq	%rax, -144(%rbp)	# tmp872, lnc
	.loc 1 1026 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.220
	andl	$8, %eax	#, D.19256
	testl	%eax, %eax	# D.19256
	je	.L268	#,
.LBB9:
	.loc 1 1028 0
	movq	-160(%rbp), %rax	# m, tmp873
	movq	%rax, -120(%rbp)	# tmp873, sm
	.loc 1 1032 0
	leaq	-176(%rbp), %rdx	#, tmp874
	leaq	-80(%rbp), %rcx	#, tmp875
	movq	-160(%rbp), %rax	# m, tmp876
	movq	%rcx, %rsi	# tmp875,
	movq	%rax, %rdi	# tmp876,
	call	Perl_to_utf8_lower	#
	.loc 1 1033 0
	leaq	-168(%rbp), %rdx	#, tmp877
	leaq	-64(%rbp), %rcx	#, tmp878
	movq	-160(%rbp), %rax	# m, tmp879
	movq	%rcx, %rsi	# tmp878,
	movq	%rax, %rdi	# tmp879,
	call	Perl_to_utf8_upper	#
	.loc 1 1036 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.222
	movq	80(%rax), %rax	# PL_curcop.222_258->cop_warnings, D.19261
	.loc 1 1035 0
	testq	%rax, %rax	# D.19261
	je	.L269	#,
	.loc 1 1036 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.223
	movq	80(%rax), %rax	# PL_curcop.223_260->cop_warnings, D.19261
	cmpq	$32, %rax	#, D.19261
	je	.L269	#,
	.loc 1 1036 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.224
	movq	80(%rax), %rax	# PL_curcop.224_262->cop_warnings, D.19261
	cmpq	$16, %rax	#, D.19261
	je	.L270	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.225
	movq	80(%rax), %rax	# PL_curcop.225_264->cop_warnings, D.19261
	movq	(%rax), %rax	# _265->sv_any, D.19262
	movq	(%rax), %rax	# MEM[(struct XPV *)_266].xpv_pv, D.19255
	addq	$11, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_268, D.19260
	movsbl	%al, %eax	# D.19260, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L270	#,
.L269:
	.loc 1 1036 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.226
	movq	80(%rax), %rax	# PL_curcop.226_272->cop_warnings, D.19261
	testq	%rax, %rax	# D.19261
	jne	.L271	#,
	.loc 1 1036 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.227
	movzbl	%al, %eax	# PL_dowarn.227, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L271	#,
.L270:
	.loc 1 1035 0 is_stmt 1
	movl	$0, %eax	#, iftmp.221
	jmp	.L272	#
.L271:
	movl	$255, %eax	#, iftmp.221
.L272:
	.loc 1 1035 0 is_stmt 0 discriminator 1
	leaq	-80(%rbp), %rdi	#, tmp880
	movl	%eax, %ecx	# iftmp.221,
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, -188(%rbp)	# D.19263, c1
	.loc 1 1038 0 is_stmt 1 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.229
	movq	80(%rax), %rax	# PL_curcop.229_281->cop_warnings, D.19261
	.loc 1 1037 0 discriminator 1
	testq	%rax, %rax	# D.19261
	je	.L273	#,
	.loc 1 1038 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.230
	movq	80(%rax), %rax	# PL_curcop.230_283->cop_warnings, D.19261
	cmpq	$32, %rax	#, D.19261
	je	.L273	#,
	.loc 1 1038 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.231
	movq	80(%rax), %rax	# PL_curcop.231_285->cop_warnings, D.19261
	cmpq	$16, %rax	#, D.19261
	je	.L274	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.232
	movq	80(%rax), %rax	# PL_curcop.232_287->cop_warnings, D.19261
	movq	(%rax), %rax	# _288->sv_any, D.19262
	movq	(%rax), %rax	# MEM[(struct XPV *)_289].xpv_pv, D.19255
	addq	$11, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_291, D.19260
	movsbl	%al, %eax	# D.19260, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L274	#,
.L273:
	.loc 1 1038 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.233
	movq	80(%rax), %rax	# PL_curcop.233_295->cop_warnings, D.19261
	testq	%rax, %rax	# D.19261
	jne	.L275	#,
	.loc 1 1038 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.234
	movzbl	%al, %eax	# PL_dowarn.234, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L275	#,
.L274:
	.loc 1 1037 0 is_stmt 1
	movl	$0, %eax	#, iftmp.228
	jmp	.L276	#
.L275:
	movl	$255, %eax	#, iftmp.228
.L276:
	.loc 1 1037 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rdi	#, tmp881
	movl	%eax, %ecx	# iftmp.228,
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, -184(%rbp)	# D.19263, c2
	.loc 1 1039 0 is_stmt 1 discriminator 1
	movq	$0, -144(%rbp)	#, lnc
	.loc 1 1040 0 discriminator 1
	jmp	.L277	#
.L278:
	.loc 1 1041 0
	addq	$1, -144(%rbp)	#, lnc
	.loc 1 1042 0
	movq	-120(%rbp), %rax	# sm, tmp882
	movzbl	(%rax), %eax	# *sm_117, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %eax	# D.19258, D.19265
	addq	%rax, -120(%rbp)	# D.19265, sm
.L277:
	.loc 1 1040 0 discriminator 1
	movq	-152(%rbp), %rax	# ln, tmp884
	movq	-160(%rbp), %rdx	# m, tmp885
	addq	%rdx, %rax	# tmp885, D.19264
	cmpq	-120(%rbp), %rax	# sm, D.19264
	ja	.L278	#,
.LBE9:
	.loc 1 1049 0
	jmp	.L280	#
.L268:
	.loc 1 1046 0
	movq	-160(%rbp), %rax	# m, tmp886
	movzbl	(%rax), %eax	# MEM[(U8 *)m_250], D.19258
	movzbl	%al, %eax	# D.19258, tmp887
	movl	%eax, -188(%rbp)	# tmp887, c1
	.loc 1 1047 0
	movl	-188(%rbp), %eax	# c1, tmp888
	movzbl	PL_fold(%rax), %eax	# PL_fold, D.19258
	movzbl	%al, %eax	# D.19258, tmp889
	movl	%eax, -184(%rbp)	# tmp889, c2
	.loc 1 1049 0
	jmp	.L280	#
.L238:
	.loc 1 1051 0
	movq	-208(%rbp), %rax	# c, tmp893
	addq	$4, %rax	#, tmp892
	movq	%rax, -160(%rbp)	# tmp892, m
	.loc 1 1052 0
	movq	-208(%rbp), %rax	# c, tmp894
	movzbl	(%rax), %eax	# MEM[(struct regnode_string *)c_170(D)].str_len, D.19258
	movzbl	%al, %eax	# D.19258, tmp895
	movq	%rax, -152(%rbp)	# tmp895, ln
	.loc 1 1053 0
	movq	-152(%rbp), %rax	# ln, tmp896
	cltq
	movq	%rax, -144(%rbp)	# tmp897, lnc
	.loc 1 1054 0
	movq	-160(%rbp), %rax	# m, tmp898
	movzbl	(%rax), %eax	# MEM[(U8 *)m_316], D.19258
	movzbl	%al, %eax	# D.19258, tmp899
	movl	%eax, -188(%rbp)	# tmp899, c1
	.loc 1 1055 0
	movl	-188(%rbp), %eax	# c1, tmp900
	movzbl	PL_fold_locale(%rax), %eax	# PL_fold_locale, D.19258
	movzbl	%al, %eax	# D.19258, tmp901
	movl	%eax, -184(%rbp)	# tmp901, c2
.L280:
	.loc 1 1057 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.236
	testb	%al, %al	# PL_reg_match_utf8.236
	je	.L281	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# lnc, tmp902
	negl	%eax	# D.19259
	movl	%eax, %ecx	# D.19259, D.19259
	movq	-216(%rbp), %rdx	# s, tmp903
	movq	-224(%rbp), %rax	# strend, tmp904
	movl	%ecx, %esi	# D.19259,
	movq	%rax, %rdi	# tmp904,
	call	S_reghop3	#
	jmp	.L282	#
.L281:
	.loc 1 1057 0 discriminator 2
	movq	-144(%rbp), %rax	# lnc, tmp905
	negl	%eax	# D.19259
	movslq	%eax, %rdx	# D.19259, D.19265
	movq	-224(%rbp), %rax	# strend, tmp906
	addq	%rdx, %rax	# D.19265, iftmp.235
.L282:
	.loc 1 1057 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.235, e
	.loc 1 1059 0 is_stmt 1 discriminator 3
	cmpl	$0, -236(%rbp)	#, norun
	je	.L283	#,
	.loc 1 1059 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# e, tmp907
	cmpq	-216(%rbp), %rax	# s, tmp907
	jae	.L283	#,
	.loc 1 1060 0 is_stmt 1
	movq	-216(%rbp), %rax	# s, tmp908
	movq	%rax, -136(%rbp)	# tmp908, e
.L283:
	.loc 1 1073 0
	testb	%r13b, %r13b	# do_utf8
	je	.L284	#,
.LBB10:
	.loc 1 1079 0
	movl	-188(%rbp), %eax	# c1, tmp909
	cmpl	-184(%rbp), %eax	# c2, tmp909
	jne	.L285	#,
	.loc 1 1082 0
	jmp	.L286	#
.L297:
	.loc 1 1084 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.238
	movq	80(%rax), %rax	# PL_curcop.238_335->cop_warnings, D.19261
	.loc 1 1083 0
	testq	%rax, %rax	# D.19261
	je	.L287	#,
	.loc 1 1084 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.239
	movq	80(%rax), %rax	# PL_curcop.239_337->cop_warnings, D.19261
	cmpq	$32, %rax	#, D.19261
	je	.L287	#,
	.loc 1 1084 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.240
	movq	80(%rax), %rax	# PL_curcop.240_339->cop_warnings, D.19261
	cmpq	$16, %rax	#, D.19261
	je	.L288	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.241
	movq	80(%rax), %rax	# PL_curcop.241_341->cop_warnings, D.19261
	movq	(%rax), %rax	# _342->sv_any, D.19262
	movq	(%rax), %rax	# MEM[(struct XPV *)_343].xpv_pv, D.19255
	addq	$11, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_345, D.19260
	movsbl	%al, %eax	# D.19260, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L288	#,
.L287:
	.loc 1 1084 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.242
	movq	80(%rax), %rax	# PL_curcop.242_349->cop_warnings, D.19261
	testq	%rax, %rax	# D.19261
	jne	.L289	#,
	.loc 1 1084 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.243
	movzbl	%al, %eax	# PL_dowarn.243, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L289	#,
.L288:
	.loc 1 1083 0 is_stmt 1
	movl	$0, %eax	#, iftmp.237
	jmp	.L290	#
.L289:
	movl	$255, %eax	#, iftmp.237
.L290:
	.loc 1 1083 0 is_stmt 0 discriminator 1
	leaq	-176(%rbp), %rdx	#, tmp910
	movq	-216(%rbp), %rdi	# s, tmp911
	movl	%eax, %ecx	# iftmp.237,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -112(%rbp)	# tmp912, c
	.loc 1 1086 0 is_stmt 1 discriminator 1
	movl	-188(%rbp), %eax	# c1, D.19263
	cmpq	-112(%rbp), %rax	# c, D.19263
	jne	.L291	#,
	.loc 1 1087 0
	movq	-176(%rbp), %rax	# len, len.244
	cmpq	%rax, -152(%rbp)	# len.244, ln
	je	.L292	#,
	.loc 1 1089 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.245
	andl	$8, %eax	#, D.19256
	.loc 1 1088 0 discriminator 1
	testl	%eax, %eax	# D.19256
	setne	%al	#, D.19257
	movzbl	%al, %ecx	# D.19257, D.19259
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	-160(%rbp), %rsi	# m, tmp913
	movq	-216(%rbp), %rax	# s, tmp914
	movl	%ecx, 8(%rsp)	# D.19259,
	movq	-152(%rbp), %rcx	# ln, tmp915
	movq	%rcx, (%rsp)	# tmp915,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp913,
	movl	%edx, %ecx	# D.19259,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp914,
	call	Perl_ibcmp_utf8	#
	.loc 1 1087 0 discriminator 1
	testl	%eax, %eax	# D.19259
	je	.L291	#,
.L292:
	.loc 1 1090 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1090 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp916
	movq	-200(%rbp), %rax	# prog, tmp917
	movq	%rdx, %rsi	# tmp916,
	movq	%rax, %rdi	# tmp917,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L291:
	.loc 1 1093 0 is_stmt 1
	movq	-112(%rbp), %rdx	# c, tmp918
	leaq	-64(%rbp), %rax	#, tmp919
	movq	%rdx, %rsi	# tmp918,
	movq	%rax, %rdi	# tmp919,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1094 0
	leaq	-168(%rbp), %rdx	#, tmp920
	leaq	-80(%rbp), %rcx	#, tmp921
	leaq	-64(%rbp), %rax	#, tmp922
	movq	%rcx, %rsi	# tmp921,
	movq	%rax, %rdi	# tmp922,
	call	Perl_to_utf8_fold	#
	movq	%rax, -104(%rbp)	# tmp923, f
	.loc 1 1095 0
	movq	-104(%rbp), %rax	# f, tmp924
	cmpq	-112(%rbp), %rax	# c, tmp924
	je	.L294	#,
	.loc 1 1096 0
	movl	-188(%rbp), %eax	# c1, D.19263
	cmpq	-104(%rbp), %rax	# f, D.19263
	je	.L295	#,
	.loc 1 1096 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# c2, D.19263
	cmpq	-104(%rbp), %rax	# f, D.19263
	jne	.L294	#,
.L295:
	.loc 1 1097 0 is_stmt 1
	movq	-168(%rbp), %rax	# foldlen, foldlen.246
	cmpq	%rax, -152(%rbp)	# foldlen.246, ln
	je	.L296	#,
	.loc 1 1101 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.247
	andl	$8, %eax	#, D.19256
	.loc 1 1098 0 discriminator 1
	testl	%eax, %eax	# D.19256
	setne	%al	#, D.19257
	movzbl	%al, %esi	# D.19257, D.19259
	movsbl	%r13b, %ecx	# do_utf8, D.19259
	movq	-168(%rbp), %rdx	# foldlen, foldlen.248
	movq	-160(%rbp), %rdi	# m, tmp925
	leaq	-80(%rbp), %rax	#, tmp926
	movl	%esi, 8(%rsp)	# D.19259,
	movq	-152(%rbp), %rsi	# ln, tmp927
	movq	%rsi, (%rsp)	# tmp927,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp925,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp926,
	call	Perl_ibcmp_utf8	#
	.loc 1 1097 0 discriminator 1
	testl	%eax, %eax	# D.19259
	jne	.L294	#,
.L296:
	.loc 1 1102 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1102 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp928
	movq	-200(%rbp), %rax	# prog, tmp929
	movq	%rdx, %rsi	# tmp928,
	movq	%rax, %rdi	# tmp929,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L294:
	.loc 1 1105 0 is_stmt 1
	movq	-176(%rbp), %rax	# len, len.249
	addq	%rax, -216(%rbp)	# len.249, s
.L286:
	.loc 1 1082 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp930
	cmpq	-136(%rbp), %rax	# e, tmp930
	jbe	.L297	#,
.LBE10:
	jmp	.L313	#
.L285:
.LBB11:
	.loc 1 1109 0
	jmp	.L299	#
.L312:
	.loc 1 1111 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.251
	movq	80(%rax), %rax	# PL_curcop.251_380->cop_warnings, D.19261
	.loc 1 1110 0
	testq	%rax, %rax	# D.19261
	je	.L300	#,
	.loc 1 1111 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.252
	movq	80(%rax), %rax	# PL_curcop.252_382->cop_warnings, D.19261
	cmpq	$32, %rax	#, D.19261
	je	.L300	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.253
	movq	80(%rax), %rax	# PL_curcop.253_384->cop_warnings, D.19261
	cmpq	$16, %rax	#, D.19261
	je	.L301	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.254
	movq	80(%rax), %rax	# PL_curcop.254_386->cop_warnings, D.19261
	movq	(%rax), %rax	# _387->sv_any, D.19262
	movq	(%rax), %rax	# MEM[(struct XPV *)_388].xpv_pv, D.19255
	addq	$11, %rax	#, D.19255
	movzbl	(%rax), %eax	# *_390, D.19260
	movsbl	%al, %eax	# D.19260, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L301	#,
.L300:
	.loc 1 1111 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.255
	movq	80(%rax), %rax	# PL_curcop.255_394->cop_warnings, D.19261
	testq	%rax, %rax	# D.19261
	jne	.L302	#,
	.loc 1 1111 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.256
	movzbl	%al, %eax	# PL_dowarn.256, D.19259
	andl	$1, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L302	#,
.L301:
	.loc 1 1110 0 is_stmt 1
	movl	$0, %eax	#, iftmp.250
	jmp	.L303	#
.L302:
	movl	$255, %eax	#, iftmp.250
.L303:
	.loc 1 1110 0 is_stmt 0 discriminator 1
	leaq	-176(%rbp), %rdx	#, tmp931
	movq	-216(%rbp), %rdi	# s, tmp932
	movl	%eax, %ecx	# iftmp.250,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -112(%rbp)	# tmp933, c
	.loc 1 1121 0 is_stmt 1 discriminator 1
	cmpq	$931, -112(%rbp)	#, c
	je	.L304	#,
	cmpq	$962, -112(%rbp)	#, c
	jne	.L305	#,
.L304:
	.loc 1 1123 0
	movq	$963, -112(%rbp)	#, c
.L305:
	.loc 1 1125 0
	movl	-188(%rbp), %eax	# c1, D.19263
	cmpq	-112(%rbp), %rax	# c, D.19263
	je	.L306	#,
	.loc 1 1125 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# c2, D.19263
	cmpq	-112(%rbp), %rax	# c, D.19263
	jne	.L307	#,
.L306:
	.loc 1 1126 0 is_stmt 1
	movq	-176(%rbp), %rax	# len, len.257
	cmpq	%rax, -152(%rbp)	# len.257, ln
	je	.L308	#,
	.loc 1 1128 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.258
	andl	$8, %eax	#, D.19256
	.loc 1 1127 0 discriminator 1
	testl	%eax, %eax	# D.19256
	setne	%al	#, D.19257
	movzbl	%al, %ecx	# D.19257, D.19259
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	-160(%rbp), %rsi	# m, tmp934
	movq	-216(%rbp), %rax	# s, tmp935
	movl	%ecx, 8(%rsp)	# D.19259,
	movq	-152(%rbp), %rcx	# ln, tmp936
	movq	%rcx, (%rsp)	# tmp936,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp934,
	movl	%edx, %ecx	# D.19259,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp935,
	call	Perl_ibcmp_utf8	#
	.loc 1 1126 0 discriminator 1
	testl	%eax, %eax	# D.19259
	je	.L307	#,
.L308:
	.loc 1 1129 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1129 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp937
	movq	-200(%rbp), %rax	# prog, tmp938
	movq	%rdx, %rsi	# tmp937,
	movq	%rax, %rdi	# tmp938,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L307:
	.loc 1 1132 0 is_stmt 1
	movq	-112(%rbp), %rdx	# c, tmp939
	leaq	-64(%rbp), %rax	#, tmp940
	movq	%rdx, %rsi	# tmp939,
	movq	%rax, %rdi	# tmp940,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1133 0
	leaq	-168(%rbp), %rdx	#, tmp941
	leaq	-80(%rbp), %rcx	#, tmp942
	leaq	-64(%rbp), %rax	#, tmp943
	movq	%rcx, %rsi	# tmp942,
	movq	%rax, %rdi	# tmp943,
	call	Perl_to_utf8_fold	#
	movq	%rax, -104(%rbp)	# tmp944, f
	.loc 1 1134 0
	movq	-104(%rbp), %rax	# f, tmp945
	cmpq	-112(%rbp), %rax	# c, tmp945
	je	.L309	#,
	.loc 1 1135 0
	movl	-188(%rbp), %eax	# c1, D.19263
	cmpq	-104(%rbp), %rax	# f, D.19263
	je	.L310	#,
	.loc 1 1135 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# c2, D.19263
	cmpq	-104(%rbp), %rax	# f, D.19263
	jne	.L309	#,
.L310:
	.loc 1 1136 0 is_stmt 1
	movq	-168(%rbp), %rax	# foldlen, foldlen.259
	cmpq	%rax, -152(%rbp)	# foldlen.259, ln
	je	.L311	#,
	.loc 1 1140 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.260
	andl	$8, %eax	#, D.19256
	.loc 1 1137 0 discriminator 1
	testl	%eax, %eax	# D.19256
	setne	%al	#, D.19257
	movzbl	%al, %esi	# D.19257, D.19259
	movsbl	%r13b, %ecx	# do_utf8, D.19259
	movq	-168(%rbp), %rdx	# foldlen, foldlen.261
	movq	-160(%rbp), %rdi	# m, tmp946
	leaq	-80(%rbp), %rax	#, tmp947
	movl	%esi, 8(%rsp)	# D.19259,
	movq	-152(%rbp), %rsi	# ln, tmp948
	movq	%rsi, (%rsp)	# tmp948,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp946,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp947,
	call	Perl_ibcmp_utf8	#
	.loc 1 1136 0 discriminator 1
	testl	%eax, %eax	# D.19259
	jne	.L309	#,
.L311:
	.loc 1 1141 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1141 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp949
	movq	-200(%rbp), %rax	# prog, tmp950
	movq	%rdx, %rsi	# tmp949,
	movq	%rax, %rdi	# tmp950,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L309:
	.loc 1 1144 0 is_stmt 1
	movq	-176(%rbp), %rax	# len, len.262
	addq	%rax, -216(%rbp)	# len.262, s
.L299:
	.loc 1 1109 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp951
	cmpq	-136(%rbp), %rax	# e, tmp951
	jbe	.L312	#,
.LBE11:
	jmp	.L313	#
.L284:
	.loc 1 1149 0
	movl	-188(%rbp), %eax	# c1, tmp952
	cmpl	-184(%rbp), %eax	# c2, tmp952
	jne	.L314	#,
	.loc 1 1150 0
	jmp	.L315	#
.L319:
	.loc 1 1151 0
	movq	-216(%rbp), %rax	# s, tmp953
	movzbl	(%rax), %eax	# MEM[(U8 *)s_7], D.19258
	movzbl	%al, %eax	# D.19258, D.19256
	cmpl	-188(%rbp), %eax	# c1, D.19256
	jne	.L316	#,
	.loc 1 1152 0
	cmpq	$1, -152(%rbp)	#, ln
	je	.L317	#,
	.loc 1 1152 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# c, tmp954
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	.loc 1 1151 0 is_stmt 1 discriminator 1
	cmpb	$34, %al	#, D.19258
	jne	.L318	#,
	.loc 1 1153 0
	movq	-152(%rbp), %rax	# ln, tmp955
	movl	%eax, %edx	# tmp955, D.19259
	movq	-160(%rbp), %rcx	# m, tmp956
	movq	-216(%rbp), %rax	# s, tmp957
	movq	%rcx, %rsi	# tmp956,
	movq	%rax, %rdi	# tmp957,
	call	Perl_ibcmp	#
	.loc 1 1152 0
	testl	%eax, %eax	# D.19259
	je	.L317	#,
	jmp	.L316	#
.L318:
	.loc 1 1154 0
	movq	-152(%rbp), %rax	# ln, tmp958
	movl	%eax, %edx	# tmp958, D.19259
	movq	-160(%rbp), %rcx	# m, tmp959
	movq	-216(%rbp), %rax	# s, tmp960
	movq	%rcx, %rsi	# tmp959,
	movq	%rax, %rdi	# tmp960,
	call	Perl_ibcmp_locale	#
	.loc 1 1152 0
	testl	%eax, %eax	# D.19259
	jne	.L316	#,
.L317:
	.loc 1 1155 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1155 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp961
	movq	-200(%rbp), %rax	# prog, tmp962
	movq	%rdx, %rsi	# tmp961,
	movq	%rax, %rdi	# tmp962,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L316:
	.loc 1 1157 0 is_stmt 1
	addq	$1, -216(%rbp)	#, s
.L315:
	.loc 1 1150 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp963
	cmpq	-136(%rbp), %rax	# e, tmp963
	jbe	.L319	#,
	.loc 1 1170 0
	jmp	.L264	#
.L314:
	.loc 1 1160 0
	jmp	.L320	#
.L325:
	.loc 1 1161 0
	movq	-216(%rbp), %rax	# s, tmp964
	movzbl	(%rax), %eax	# MEM[(U8 *)s_8], D.19258
	movzbl	%al, %eax	# D.19258, D.19256
	cmpl	-188(%rbp), %eax	# c1, D.19256
	je	.L321	#,
	.loc 1 1161 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp965
	movzbl	(%rax), %eax	# MEM[(U8 *)s_8], D.19258
	movzbl	%al, %eax	# D.19258, D.19256
	cmpl	-184(%rbp), %eax	# c2, D.19256
	jne	.L322	#,
.L321:
	.loc 1 1162 0 is_stmt 1
	cmpq	$1, -152(%rbp)	#, ln
	je	.L323	#,
	.loc 1 1162 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# c, tmp966
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	.loc 1 1161 0 is_stmt 1 discriminator 1
	cmpb	$34, %al	#, D.19258
	jne	.L324	#,
	.loc 1 1163 0
	movq	-152(%rbp), %rax	# ln, tmp967
	movl	%eax, %edx	# tmp967, D.19259
	movq	-160(%rbp), %rcx	# m, tmp968
	movq	-216(%rbp), %rax	# s, tmp969
	movq	%rcx, %rsi	# tmp968,
	movq	%rax, %rdi	# tmp969,
	call	Perl_ibcmp	#
	.loc 1 1162 0
	testl	%eax, %eax	# D.19259
	je	.L323	#,
	jmp	.L322	#
.L324:
	.loc 1 1164 0
	movq	-152(%rbp), %rax	# ln, tmp970
	movl	%eax, %edx	# tmp970, D.19259
	movq	-160(%rbp), %rcx	# m, tmp971
	movq	-216(%rbp), %rax	# s, tmp972
	movq	%rcx, %rsi	# tmp971,
	movq	%rax, %rdi	# tmp972,
	call	Perl_ibcmp_locale	#
	.loc 1 1162 0
	testl	%eax, %eax	# D.19259
	jne	.L322	#,
.L323:
	.loc 1 1165 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1165 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp973
	movq	-200(%rbp), %rax	# prog, tmp974
	movq	%rdx, %rsi	# tmp973,
	movq	%rax, %rdi	# tmp974,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L322:
	.loc 1 1167 0 is_stmt 1
	addq	$1, -216(%rbp)	#, s
.L320:
	.loc 1 1160 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp975
	cmpq	-136(%rbp), %rax	# e, tmp975
	jbe	.L325	#,
.L313:
	.loc 1 1170 0
	jmp	.L264	#
.L220:
	.loc 1 1172 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.263
	orl	$1, %eax	#, PL_reg_flags.264
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.264, PL_reg_flags
.L218:
	.loc 1 1175 0
	testb	%r13b, %r13b	# do_utf8
	je	.L326	#,
	.loc 1 1176 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.265
	cmpq	%rax, -216(%rbp)	# PL_bostr.265, s
	jne	.L327	#,
	.loc 1 1177 0
	movl	$10, %ebx	#, tmp
	jmp	.L328	#
.L327:
.LBB12:
	.loc 1 1179 0
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.266
	movq	-216(%rbp), %rax	# s, tmp976
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp976,
	call	S_reghop3	#
	movq	%rax, -96(%rbp)	# tmp977, r
	.loc 1 1181 0
	movq	-96(%rbp), %rax	# r, tmp978
	movzbl	(%rax), %eax	# *r_452, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %esi	# D.19258, D.19263
	movq	-96(%rbp), %rax	# r, tmp980
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp980,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, %ebx	# D.19263, tmp
.L328:
.LBE12:
	.loc 1 1183 0
	movq	-208(%rbp), %rax	# c, tmp981
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	.loc 1 1184 0
	cmpb	$9, %al	#, D.19258
	jne	.L329	#,
	.loc 1 1184 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# tmp, D.19263
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum	#
	testb	%al, %al	# D.19260
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.267
	jmp	.L330	#
.L329:
	.loc 1 1184 0 discriminator 2
	cmpl	$255, %ebx	#, tmp
	jg	.L331	#,
	.loc 1 1184 0 discriminator 3
	movl	%ebx, %eax	# tmp, D.19259
	andl	$-128, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L332	#,
	.loc 1 1184 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_465, D.19267
	movslq	%ebx, %rdx	# tmp, D.19263
	addq	%rdx, %rdx	# D.19263
	addq	%rdx, %rax	# D.19263, D.19267
	movzwl	(%rax), %eax	# *_469, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L333	#,
	.loc 1 1184 0 discriminator 4
	cmpl	$95, %ebx	#, tmp
	jne	.L332	#,
.L333:
	.loc 1 1184 0 discriminator 3
	movl	$1, %eax	#, iftmp.269
	jmp	.L334	#
.L332:
	.loc 1 1184 0 discriminator 2
	movl	$0, %eax	#, iftmp.269
.L334:
	.loc 1 1184 0 discriminator 5
	testl	%eax, %eax	# iftmp.269
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.268
	jmp	.L330	#
.L331:
	.loc 1 1184 0 discriminator 4
	movslq	%ebx, %rax	# tmp, D.19263
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum_lc	#
	testb	%al, %al	# D.19260
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.268
.L330:
	.loc 1 1183 0 is_stmt 1
	movl	%eax, %ebx	# iftmp.267, tmp
	.loc 1 1185 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.270
	testq	%rax, %rax	# PL_utf8_alnum.270
	jne	.L336	#,
	.loc 1 1185 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
	.loc 1 1186 0 is_stmt 1 discriminator 1
	jmp	.L337	#
.L336:
	.loc 1 1186 0 is_stmt 0
	jmp	.L337	#
.L346:
	.loc 1 1187 0 is_stmt 1
	movq	-208(%rbp), %rax	# c, tmp982
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	cmpb	$9, %al	#, D.19258
	jne	.L338	#,
	.loc 1 1188 0
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.272
	movq	-216(%rbp), %rcx	# s, tmp983
	movq	%rcx, %rsi	# tmp983,
	movq	%rax, %rdi	# PL_utf8_alnum.272,
	call	Perl_swash_fetch	#
	.loc 1 1187 0
	testq	%rax, %rax	# D.19263
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.271
	jmp	.L339	#
.L338:
	.loc 1 1189 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp984
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp984,
	call	Perl_utf8_to_uvchr	#
	.loc 1 1187 0 discriminator 1
	cmpq	$255, %rax	#, D.19263
	ja	.L340	#,
	.loc 1 1189 0
	movq	-216(%rbp), %rax	# s, tmp985
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp985,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L341	#,
	.loc 1 1189 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r14	# *_498, D.19267
	movq	-216(%rbp), %rax	# s, tmp986
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp986,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r14, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_504, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L342	#,
	.loc 1 1189 0 discriminator 4
	movq	-216(%rbp), %rax	# s, tmp987
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp987,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19263
	jne	.L341	#,
.L342:
	.loc 1 1189 0 discriminator 3
	movl	$1, %eax	#, iftmp.274
	jmp	.L343	#
.L341:
	.loc 1 1189 0 discriminator 2
	movl	$0, %eax	#, iftmp.274
.L343:
	.loc 1 1187 0 is_stmt 1
	testl	%eax, %eax	# iftmp.274
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.273
	jmp	.L339	#
.L340:
	.loc 1 1189 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp988
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp988,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum_lc	#
	.loc 1 1187 0 discriminator 2
	testb	%al, %al	# D.19260
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.273
.L339:
	.loc 1 1187 0 is_stmt 0 discriminator 4
	cmpl	%ebx, %eax	# tmp, iftmp.271
	jne	.L345	#,
	.loc 1 1191 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	sete	%al	#, D.19257
	movzbl	%al, %ebx	# D.19257, tmp
	.loc 1 1192 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1192 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp989
	movq	-200(%rbp), %rax	# prog, tmp990
	movq	%rdx, %rsi	# tmp989,
	movq	%rax, %rdi	# tmp990,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L345:
	.loc 1 1195 0 is_stmt 1
	addq	%r12, -216(%rbp)	# uskip, s
.L337:
	.loc 1 1186 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp991
	movzbl	(%rax), %eax	# MEM[(U8 *)s_9], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp993
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L346	#,
	jmp	.L347	#
.L326:
	.loc 1 1199 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.276
	cmpq	%rax, -216(%rbp)	# PL_bostr.276, s
	je	.L348	#,
	.loc 1 1199 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp994
	subq	$1, %rax	#, D.19264
	movzbl	(%rax), %eax	# *_523, D.19258
	movzbl	%al, %eax	# D.19258, iftmp.275
	jmp	.L349	#
.L348:
	.loc 1 1199 0 discriminator 2
	movl	$10, %eax	#, iftmp.275
.L349:
	.loc 1 1199 0 discriminator 3
	movl	%eax, %ebx	# iftmp.275, tmp
	.loc 1 1200 0 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax	# c, tmp995
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	cmpb	$9, %al	#, D.19258
	jne	.L350	#,
	.loc 1 1200 0 is_stmt 0 discriminator 1
	cmpl	$64, %ebx	#, tmp
	jle	.L351	#,
	cmpl	$90, %ebx	#, tmp
	jle	.L352	#,
.L351:
	.loc 1 1200 0 discriminator 2
	cmpl	$96, %ebx	#, tmp
	jle	.L353	#,
	.loc 1 1200 0 discriminator 1
	cmpl	$122, %ebx	#, tmp
	jle	.L352	#,
.L353:
	.loc 1 1200 0 discriminator 2
	cmpl	$47, %ebx	#, tmp
	jle	.L354	#,
	.loc 1 1200 0 discriminator 1
	cmpl	$57, %ebx	#, tmp
	jle	.L352	#,
.L354:
	.loc 1 1200 0 discriminator 2
	cmpl	$95, %ebx	#, tmp
	jne	.L355	#,
.L352:
	.loc 1 1200 0 discriminator 1
	movl	$1, %eax	#, iftmp.278
	jmp	.L356	#
.L355:
	.loc 1 1200 0 discriminator 3
	movl	$0, %eax	#, iftmp.278
.L356:
	.loc 1 1200 0 discriminator 4
	testl	%eax, %eax	# iftmp.278
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.277
	jmp	.L357	#
.L350:
	.loc 1 1200 0 discriminator 2
	movl	%ebx, %eax	# tmp, D.19259
	andl	$-128, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L358	#,
	.loc 1 1200 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_534, D.19267
	movslq	%ebx, %rdx	# tmp, D.19263
	addq	%rdx, %rdx	# D.19263
	addq	%rdx, %rax	# D.19263, D.19267
	movzwl	(%rax), %eax	# *_538, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L359	#,
	.loc 1 1200 0 discriminator 4
	cmpl	$95, %ebx	#, tmp
	jne	.L358	#,
.L359:
	.loc 1 1200 0 discriminator 3
	movl	$1, %eax	#, iftmp.279
	jmp	.L360	#
.L358:
	.loc 1 1200 0 discriminator 2
	movl	$0, %eax	#, iftmp.279
.L360:
	.loc 1 1200 0 discriminator 5
	testl	%eax, %eax	# iftmp.279
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.277
.L357:
	.loc 1 1200 0 discriminator 3
	movl	%eax, %ebx	# iftmp.277, tmp
	.loc 1 1201 0 is_stmt 1 discriminator 3
	jmp	.L361	#
.L373:
	.loc 1 1203 0
	movq	-208(%rbp), %rax	# c, tmp996
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	cmpb	$9, %al	#, D.19258
	jne	.L362	#,
	.loc 1 1203 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp997
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$64, %al	#, D.19260
	jle	.L363	#,
	.loc 1 1203 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp998
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$90, %al	#, D.19260
	jle	.L364	#,
.L363:
	.loc 1 1203 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp999
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$96, %al	#, D.19260
	jle	.L365	#,
	.loc 1 1203 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1000
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$122, %al	#, D.19260
	jle	.L364	#,
.L365:
	.loc 1 1203 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1001
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$47, %al	#, D.19260
	jle	.L366	#,
	.loc 1 1203 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1002
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$57, %al	#, D.19260
	jle	.L364	#,
.L366:
	.loc 1 1203 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1003
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$95, %al	#, D.19260
	je	.L364	#,
	.loc 1 1203 0 discriminator 3
	movl	$1, %eax	#, iftmp.281
	jmp	.L367	#
.L364:
	.loc 1 1203 0 discriminator 1
	movl	$0, %eax	#, iftmp.281
.L367:
	jmp	.L368	#
.L362:
	.loc 1 1203 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1004
	movzbl	(%rax), %eax	# *s_10, D.19260
	testb	%al, %al	# D.19260
	js	.L369	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_559, D.19267
	movq	-216(%rbp), %rax	# s, tmp1005
	movzbl	(%rax), %eax	# *s_10, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_564, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L370	#,
	.loc 1 1203 0 discriminator 3
	movq	-216(%rbp), %rax	# s, tmp1006
	movzbl	(%rax), %eax	# *s_10, D.19260
	cmpb	$95, %al	#, D.19260
	je	.L370	#,
.L369:
	.loc 1 1203 0 discriminator 1
	movl	$1, %eax	#, iftmp.282
	jmp	.L368	#
.L370:
	.loc 1 1203 0 discriminator 4
	movl	$0, %eax	#, iftmp.282
.L368:
	.loc 1 1202 0 is_stmt 1
	cmpl	%ebx, %eax	# tmp, iftmp.280
	jne	.L372	#,
	.loc 1 1204 0
	testl	%ebx, %ebx	# tmp
	sete	%al	#, D.19257
	movzbl	%al, %ebx	# D.19257, tmp
	.loc 1 1205 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1205 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp1007
	movq	-200(%rbp), %rax	# prog, tmp1008
	movq	%rdx, %rsi	# tmp1007,
	movq	%rax, %rdi	# tmp1008,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L372:
	.loc 1 1208 0 is_stmt 1
	addq	$1, -216(%rbp)	#, s
.L361:
	.loc 1 1201 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1009
	cmpq	-224(%rbp), %rax	# strend, tmp1009
	jb	.L373	#,
.L347:
	.loc 1 1211 0
	movq	-200(%rbp), %rax	# prog, tmp1010
	movl	72(%rax), %eax	# prog_163(D)->minlen, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L374	#,
	.loc 1 1211 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# tmp
	je	.L374	#,
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1011
	movq	-200(%rbp), %rax	# prog, tmp1012
	movq	%rdx, %rsi	# tmp1011,
	movq	%rax, %rdi	# tmp1012,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L374:
	.loc 1 1213 0 is_stmt 1
	jmp	.L264	#
.L222:
	.loc 1 1215 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.283
	orl	$1, %eax	#, PL_reg_flags.284
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.284, PL_reg_flags
.L221:
	.loc 1 1218 0
	testb	%r13b, %r13b	# do_utf8
	je	.L375	#,
	.loc 1 1219 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.285
	cmpq	%rax, -216(%rbp)	# PL_bostr.285, s
	jne	.L376	#,
	.loc 1 1220 0
	movl	$10, %ebx	#, tmp
	jmp	.L377	#
.L376:
.LBB13:
	.loc 1 1222 0
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.286
	movq	-216(%rbp), %rax	# s, tmp1013
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp1013,
	call	S_reghop3	#
	movq	%rax, -88(%rbp)	# tmp1014, r
	.loc 1 1224 0
	movq	-88(%rbp), %rax	# r, tmp1015
	movzbl	(%rax), %eax	# *r_583, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %esi	# D.19258, D.19263
	movq	-88(%rbp), %rax	# r, tmp1017
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp1017,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, %ebx	# D.19263, tmp
.L377:
.LBE13:
	.loc 1 1226 0
	movq	-208(%rbp), %rax	# c, tmp1018
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	.loc 1 1227 0
	cmpb	$11, %al	#, D.19258
	jne	.L378	#,
	.loc 1 1227 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# tmp, D.19263
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum	#
	testb	%al, %al	# D.19260
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.287
	jmp	.L379	#
.L378:
	.loc 1 1227 0 discriminator 2
	cmpl	$255, %ebx	#, tmp
	jg	.L380	#,
	.loc 1 1227 0 discriminator 3
	movl	%ebx, %eax	# tmp, D.19259
	andl	$-128, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L381	#,
	.loc 1 1227 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_596, D.19267
	movslq	%ebx, %rdx	# tmp, D.19263
	addq	%rdx, %rdx	# D.19263
	addq	%rdx, %rax	# D.19263, D.19267
	movzwl	(%rax), %eax	# *_600, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L382	#,
	.loc 1 1227 0 discriminator 4
	cmpl	$95, %ebx	#, tmp
	jne	.L381	#,
.L382:
	.loc 1 1227 0 discriminator 3
	movl	$1, %eax	#, iftmp.289
	jmp	.L383	#
.L381:
	.loc 1 1227 0 discriminator 2
	movl	$0, %eax	#, iftmp.289
.L383:
	.loc 1 1227 0 discriminator 5
	testl	%eax, %eax	# iftmp.289
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.288
	jmp	.L379	#
.L380:
	.loc 1 1227 0 discriminator 4
	movslq	%ebx, %rax	# tmp, D.19263
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum_lc	#
	testb	%al, %al	# D.19260
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.288
.L379:
	.loc 1 1226 0 is_stmt 1
	movl	%eax, %ebx	# iftmp.287, tmp
	.loc 1 1228 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.290
	testq	%rax, %rax	# PL_utf8_alnum.290
	jne	.L385	#,
	.loc 1 1228 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
	.loc 1 1229 0 is_stmt 1 discriminator 1
	jmp	.L386	#
.L385:
	.loc 1 1229 0 is_stmt 0
	jmp	.L386	#
.L396:
	.loc 1 1230 0 is_stmt 1
	movq	-208(%rbp), %rax	# c, tmp1019
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	cmpb	$11, %al	#, D.19258
	jne	.L387	#,
	.loc 1 1231 0
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.292
	movq	-216(%rbp), %rcx	# s, tmp1020
	movq	%rcx, %rsi	# tmp1020,
	movq	%rax, %rdi	# PL_utf8_alnum.292,
	call	Perl_swash_fetch	#
	.loc 1 1230 0
	testq	%rax, %rax	# D.19263
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.291
	jmp	.L388	#
.L387:
	.loc 1 1232 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1021
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1021,
	call	Perl_utf8_to_uvchr	#
	.loc 1 1230 0 discriminator 1
	cmpq	$255, %rax	#, D.19263
	ja	.L389	#,
	.loc 1 1232 0
	movq	-216(%rbp), %rax	# s, tmp1022
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1022,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L390	#,
	.loc 1 1232 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r14	# *_629, D.19267
	movq	-216(%rbp), %rax	# s, tmp1023
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1023,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r14, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_635, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L391	#,
	.loc 1 1232 0 discriminator 4
	movq	-216(%rbp), %rax	# s, tmp1024
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1024,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19263
	jne	.L390	#,
.L391:
	.loc 1 1232 0 discriminator 3
	movl	$1, %eax	#, iftmp.294
	jmp	.L392	#
.L390:
	.loc 1 1232 0 discriminator 2
	movl	$0, %eax	#, iftmp.294
.L392:
	.loc 1 1230 0 is_stmt 1
	testl	%eax, %eax	# iftmp.294
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.293
	jmp	.L388	#
.L389:
	.loc 1 1232 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1025
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1025,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum_lc	#
	.loc 1 1230 0 discriminator 2
	testb	%al, %al	# D.19260
	sete	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.293
.L388:
	.loc 1 1230 0 is_stmt 0 discriminator 4
	cmpl	%ebx, %eax	# tmp, iftmp.291
	jne	.L394	#,
	.loc 1 1233 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	sete	%al	#, D.19257
	movzbl	%al, %ebx	# D.19257, tmp
	jmp	.L395	#
.L394:
	.loc 1 1234 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1234 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp1026
	movq	-200(%rbp), %rax	# prog, tmp1027
	movq	%rdx, %rsi	# tmp1026,
	movq	%rax, %rdi	# tmp1027,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L395:
	.loc 1 1236 0 is_stmt 1
	addq	%r12, -216(%rbp)	# uskip, s
.L386:
	.loc 1 1229 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1028
	movzbl	(%rax), %eax	# MEM[(U8 *)s_12], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1030
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L396	#,
	jmp	.L397	#
.L375:
	.loc 1 1240 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.296
	cmpq	%rax, -216(%rbp)	# PL_bostr.296, s
	je	.L398	#,
	.loc 1 1240 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1031
	subq	$1, %rax	#, D.19264
	movzbl	(%rax), %eax	# *_654, D.19258
	movzbl	%al, %eax	# D.19258, iftmp.295
	jmp	.L399	#
.L398:
	.loc 1 1240 0 discriminator 2
	movl	$10, %eax	#, iftmp.295
.L399:
	.loc 1 1240 0 discriminator 3
	movl	%eax, %ebx	# iftmp.295, tmp
	.loc 1 1241 0 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax	# c, tmp1032
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	.loc 1 1242 0 discriminator 3
	cmpb	$11, %al	#, D.19258
	jne	.L400	#,
	.loc 1 1242 0 is_stmt 0 discriminator 1
	cmpl	$64, %ebx	#, tmp
	jle	.L401	#,
	cmpl	$90, %ebx	#, tmp
	jle	.L402	#,
.L401:
	.loc 1 1242 0 discriminator 2
	cmpl	$96, %ebx	#, tmp
	jle	.L403	#,
	.loc 1 1242 0 discriminator 1
	cmpl	$122, %ebx	#, tmp
	jle	.L402	#,
.L403:
	.loc 1 1242 0 discriminator 2
	cmpl	$47, %ebx	#, tmp
	jle	.L404	#,
	.loc 1 1242 0 discriminator 1
	cmpl	$57, %ebx	#, tmp
	jle	.L402	#,
.L404:
	.loc 1 1242 0 discriminator 2
	cmpl	$95, %ebx	#, tmp
	jne	.L405	#,
.L402:
	.loc 1 1242 0 discriminator 1
	movl	$1, %eax	#, iftmp.298
	jmp	.L406	#
.L405:
	.loc 1 1242 0 discriminator 3
	movl	$0, %eax	#, iftmp.298
.L406:
	.loc 1 1242 0 discriminator 4
	testl	%eax, %eax	# iftmp.298
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.297
	jmp	.L407	#
.L400:
	.loc 1 1242 0 discriminator 2
	movl	%ebx, %eax	# tmp, D.19259
	andl	$-128, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L408	#,
	.loc 1 1242 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_665, D.19267
	movslq	%ebx, %rdx	# tmp, D.19263
	addq	%rdx, %rdx	# D.19263
	addq	%rdx, %rax	# D.19263, D.19267
	movzwl	(%rax), %eax	# *_669, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L409	#,
	.loc 1 1242 0 discriminator 4
	cmpl	$95, %ebx	#, tmp
	jne	.L408	#,
.L409:
	.loc 1 1242 0 discriminator 3
	movl	$1, %eax	#, iftmp.299
	jmp	.L410	#
.L408:
	.loc 1 1242 0 discriminator 2
	movl	$0, %eax	#, iftmp.299
.L410:
	.loc 1 1242 0 discriminator 5
	testl	%eax, %eax	# iftmp.299
	setne	%al	#, D.19257
	movzbl	%al, %eax	# D.19257, iftmp.297
.L407:
	.loc 1 1241 0 is_stmt 1
	movl	%eax, %ebx	# iftmp.297, tmp
	.loc 1 1243 0
	jmp	.L411	#
.L424:
	.loc 1 1245 0
	movq	-208(%rbp), %rax	# c, tmp1033
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	cmpb	$11, %al	#, D.19258
	jne	.L412	#,
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1034
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$64, %al	#, D.19260
	jle	.L413	#,
	.loc 1 1245 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1035
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$90, %al	#, D.19260
	jle	.L414	#,
.L413:
	.loc 1 1245 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1036
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$96, %al	#, D.19260
	jle	.L415	#,
	.loc 1 1245 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1037
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$122, %al	#, D.19260
	jle	.L414	#,
.L415:
	.loc 1 1245 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1038
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$47, %al	#, D.19260
	jle	.L416	#,
	.loc 1 1245 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1039
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$57, %al	#, D.19260
	jle	.L414	#,
.L416:
	.loc 1 1245 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1040
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$95, %al	#, D.19260
	je	.L414	#,
	.loc 1 1245 0 discriminator 3
	movl	$1, %eax	#, iftmp.301
	jmp	.L417	#
.L414:
	.loc 1 1245 0 discriminator 1
	movl	$0, %eax	#, iftmp.301
.L417:
	jmp	.L418	#
.L412:
	.loc 1 1245 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1041
	movzbl	(%rax), %eax	# *s_13, D.19260
	testb	%al, %al	# D.19260
	js	.L419	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_690, D.19267
	movq	-216(%rbp), %rax	# s, tmp1042
	movzbl	(%rax), %eax	# *s_13, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_695, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L420	#,
	.loc 1 1245 0 discriminator 3
	movq	-216(%rbp), %rax	# s, tmp1043
	movzbl	(%rax), %eax	# *s_13, D.19260
	cmpb	$95, %al	#, D.19260
	je	.L420	#,
.L419:
	.loc 1 1245 0 discriminator 1
	movl	$1, %eax	#, iftmp.302
	jmp	.L418	#
.L420:
	.loc 1 1245 0 discriminator 4
	movl	$0, %eax	#, iftmp.302
.L418:
	.loc 1 1244 0 is_stmt 1
	cmpl	%ebx, %eax	# tmp, iftmp.300
	jne	.L422	#,
	.loc 1 1246 0
	testl	%ebx, %ebx	# tmp
	sete	%al	#, D.19257
	movzbl	%al, %ebx	# D.19257, tmp
	jmp	.L423	#
.L422:
	.loc 1 1247 0
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx	# s, tmp1044
	movq	-200(%rbp), %rax	# prog, tmp1045
	movq	%rdx, %rsi	# tmp1044,
	movq	%rax, %rdi	# tmp1045,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L423:
	.loc 1 1249 0 is_stmt 1
	addq	$1, -216(%rbp)	#, s
.L411:
	.loc 1 1243 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1046
	cmpq	-224(%rbp), %rax	# strend, tmp1046
	jb	.L424	#,
.L397:
	.loc 1 1252 0
	movq	-200(%rbp), %rax	# prog, tmp1047
	movl	72(%rax), %eax	# prog_163(D)->minlen, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L425	#,
	.loc 1 1252 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# tmp
	jne	.L425	#,
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1048
	movq	-200(%rbp), %rax	# prog, tmp1049
	movq	%rdx, %rsi	# tmp1048,
	movq	%rax, %rdi	# tmp1049,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L425:
	.loc 1 1254 0 is_stmt 1
	jmp	.L264	#
.L225:
	.loc 1 1256 0
	testb	%r13b, %r13b	# do_utf8
	je	.L426	#,
	.loc 1 1257 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.303
	testq	%rax, %rax	# PL_utf8_alnum.303
	jne	.L427	#,
	.loc 1 1257 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
	.loc 1 1258 0 is_stmt 1 discriminator 1
	jmp	.L428	#
.L427:
	.loc 1 1258 0 is_stmt 0
	jmp	.L428	#
.L432:
	.loc 1 1259 0 is_stmt 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.304
	movq	-216(%rbp), %rcx	# s, tmp1050
	movq	%rcx, %rsi	# tmp1050,
	movq	%rax, %rdi	# PL_utf8_alnum.304,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19263
	je	.L429	#,
	.loc 1 1260 0
	testl	%ebx, %ebx	# tmp
	je	.L430	#,
	.loc 1 1260 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1051
	movq	-200(%rbp), %rax	# prog, tmp1052
	movq	%rdx, %rsi	# tmp1051,
	movq	%rax, %rdi	# tmp1052,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L430:
	.loc 1 1263 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L431	#
.L429:
	.loc 1 1266 0
	movl	$1, %ebx	#, tmp
.L431:
	.loc 1 1267 0
	addq	%r12, -216(%rbp)	# uskip, s
.L428:
	.loc 1 1258 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1053
	movzbl	(%rax), %eax	# MEM[(U8 *)s_15], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1055
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L432	#,
	.loc 1 1283 0
	jmp	.L264	#
.L426:
	.loc 1 1271 0
	jmp	.L434	#
.L442:
	.loc 1 1272 0
	movq	-216(%rbp), %rax	# s, tmp1056
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$64, %al	#, D.19260
	jle	.L435	#,
	.loc 1 1272 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1057
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$90, %al	#, D.19260
	jle	.L436	#,
.L435:
	.loc 1 1272 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1058
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$96, %al	#, D.19260
	jle	.L437	#,
	.loc 1 1272 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1059
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$122, %al	#, D.19260
	jle	.L436	#,
.L437:
	.loc 1 1272 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1060
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$47, %al	#, D.19260
	jle	.L438	#,
	.loc 1 1272 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1061
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$57, %al	#, D.19260
	jle	.L436	#,
.L438:
	.loc 1 1272 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1062
	movzbl	(%rax), %eax	# *s_16, D.19260
	cmpb	$95, %al	#, D.19260
	jne	.L439	#,
.L436:
	.loc 1 1273 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L440	#,
	.loc 1 1273 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1063
	movq	-200(%rbp), %rax	# prog, tmp1064
	movq	%rdx, %rsi	# tmp1063,
	movq	%rax, %rdi	# tmp1064,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L440:
	.loc 1 1276 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1273 0
	jmp	.L441	#
.L439:
	.loc 1 1279 0
	movl	$1, %ebx	#, tmp
.L441:
	.loc 1 1280 0
	addq	$1, -216(%rbp)	#, s
.L434:
	.loc 1 1271 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1065
	cmpq	-224(%rbp), %rax	# strend, tmp1065
	jb	.L442	#,
	.loc 1 1283 0
	jmp	.L264	#
.L226:
	.loc 1 1285 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.305
	orl	$1, %eax	#, PL_reg_flags.306
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.306, PL_reg_flags
	.loc 1 1286 0
	testb	%r13b, %r13b	# do_utf8
	je	.L443	#,
	.loc 1 1287 0
	jmp	.L444	#
.L453:
	.loc 1 1288 0
	movq	-216(%rbp), %rax	# s, tmp1066
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1066,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19263
	ja	.L445	#,
	.loc 1 1288 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1067
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1067,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L446	#,
	call	__ctype_b_loc	#
	movq	(%rax), %r13	# *_743, D.19267
	movq	-216(%rbp), %rax	# s, tmp1068
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1068,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r13, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_749, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L447	#,
	.loc 1 1288 0 discriminator 4
	movq	-216(%rbp), %rax	# s, tmp1069
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1069,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19263
	jne	.L446	#,
.L447:
	.loc 1 1288 0 discriminator 3
	movl	$1, %eax	#, iftmp.308
	jmp	.L448	#
.L446:
	.loc 1 1288 0 discriminator 2
	movl	$0, %eax	#, iftmp.308
.L448:
	.loc 1 1288 0 discriminator 5
	andl	$1, %eax	#, iftmp.307
	jmp	.L449	#
.L445:
	.loc 1 1288 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1070
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1070,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum_lc	#
	testb	%al, %al	# D.19260
	setne	%al	#, iftmp.307
.L449:
	.loc 1 1288 0 discriminator 3
	testb	%al, %al	# iftmp.307
	je	.L450	#,
	.loc 1 1289 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L451	#,
	.loc 1 1289 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1071
	movq	-200(%rbp), %rax	# prog, tmp1072
	movq	%rdx, %rsi	# tmp1071,
	movq	%rax, %rdi	# tmp1072,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L451:
	.loc 1 1292 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L452	#
.L450:
	.loc 1 1295 0
	movl	$1, %ebx	#, tmp
.L452:
	.loc 1 1296 0
	addq	%r12, -216(%rbp)	# uskip, s
.L444:
	.loc 1 1287 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1073
	movzbl	(%rax), %eax	# MEM[(U8 *)s_17], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1075
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L453	#,
	.loc 1 1312 0
	jmp	.L264	#
.L443:
	.loc 1 1300 0
	jmp	.L455	#
.L460:
	.loc 1 1301 0
	movq	-216(%rbp), %rax	# s, tmp1076
	movzbl	(%rax), %eax	# *s_18, D.19260
	testb	%al, %al	# D.19260
	js	.L456	#,
	.loc 1 1301 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_765, D.19267
	movq	-216(%rbp), %rax	# s, tmp1077
	movzbl	(%rax), %eax	# *s_18, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_770, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L457	#,
	movq	-216(%rbp), %rax	# s, tmp1078
	movzbl	(%rax), %eax	# *s_18, D.19260
	cmpb	$95, %al	#, D.19260
	jne	.L456	#,
.L457:
	.loc 1 1302 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L458	#,
	.loc 1 1302 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1079
	movq	-200(%rbp), %rax	# prog, tmp1080
	movq	%rdx, %rsi	# tmp1079,
	movq	%rax, %rdi	# tmp1080,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L458:
	.loc 1 1305 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1302 0
	jmp	.L459	#
.L456:
	.loc 1 1308 0
	movl	$1, %ebx	#, tmp
.L459:
	.loc 1 1309 0
	addq	$1, -216(%rbp)	#, s
.L455:
	.loc 1 1300 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1081
	cmpq	-224(%rbp), %rax	# strend, tmp1081
	jb	.L460	#,
	.loc 1 1312 0
	jmp	.L264	#
.L227:
	.loc 1 1314 0
	testb	%r13b, %r13b	# do_utf8
	je	.L461	#,
	.loc 1 1315 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.309
	testq	%rax, %rax	# PL_utf8_alnum.309
	jne	.L462	#,
	.loc 1 1315 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
	.loc 1 1316 0 is_stmt 1 discriminator 1
	jmp	.L463	#
.L462:
	.loc 1 1316 0 is_stmt 0
	jmp	.L463	#
.L467:
	.loc 1 1317 0 is_stmt 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.310
	movq	-216(%rbp), %rcx	# s, tmp1082
	movq	%rcx, %rsi	# tmp1082,
	movq	%rax, %rdi	# PL_utf8_alnum.310,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19263
	jne	.L464	#,
	.loc 1 1318 0
	testl	%ebx, %ebx	# tmp
	je	.L465	#,
	.loc 1 1318 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1083
	movq	-200(%rbp), %rax	# prog, tmp1084
	movq	%rdx, %rsi	# tmp1083,
	movq	%rax, %rdi	# tmp1084,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L465:
	.loc 1 1321 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L466	#
.L464:
	.loc 1 1324 0
	movl	$1, %ebx	#, tmp
.L466:
	.loc 1 1325 0
	addq	%r12, -216(%rbp)	# uskip, s
.L463:
	.loc 1 1316 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1085
	movzbl	(%rax), %eax	# MEM[(U8 *)s_19], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1087
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L467	#,
	.loc 1 1341 0
	jmp	.L264	#
.L461:
	.loc 1 1329 0
	jmp	.L469	#
.L476:
	.loc 1 1330 0
	movq	-216(%rbp), %rax	# s, tmp1088
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$64, %al	#, D.19260
	jle	.L470	#,
	.loc 1 1330 0 is_stmt 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1089
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$90, %al	#, D.19260
	jle	.L471	#,
.L470:
	.loc 1 1330 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1090
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$96, %al	#, D.19260
	jle	.L472	#,
	.loc 1 1330 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1091
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$122, %al	#, D.19260
	jle	.L471	#,
.L472:
	.loc 1 1330 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1092
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$47, %al	#, D.19260
	jle	.L473	#,
	.loc 1 1330 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1093
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$57, %al	#, D.19260
	jle	.L471	#,
.L473:
	.loc 1 1330 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1094
	movzbl	(%rax), %eax	# *s_20, D.19260
	cmpb	$95, %al	#, D.19260
	je	.L471	#,
	.loc 1 1331 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L474	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1095
	movq	-200(%rbp), %rax	# prog, tmp1096
	movq	%rdx, %rsi	# tmp1095,
	movq	%rax, %rdi	# tmp1096,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L474:
	.loc 1 1334 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1331 0
	jmp	.L475	#
.L471:
	.loc 1 1337 0
	movl	$1, %ebx	#, tmp
.L475:
	.loc 1 1338 0
	addq	$1, -216(%rbp)	#, s
.L469:
	.loc 1 1329 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1097
	cmpq	-224(%rbp), %rax	# strend, tmp1097
	jb	.L476	#,
	.loc 1 1341 0
	jmp	.L264	#
.L228:
	.loc 1 1343 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.311
	orl	$1, %eax	#, PL_reg_flags.312
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.312, PL_reg_flags
	.loc 1 1344 0
	testb	%r13b, %r13b	# do_utf8
	je	.L477	#,
	.loc 1 1345 0
	jmp	.L478	#
.L487:
	.loc 1 1346 0
	movq	-216(%rbp), %rax	# s, tmp1098
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1098,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19263
	ja	.L479	#,
	.loc 1 1346 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1099
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1099,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L480	#,
	.loc 1 1346 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %r13	# *_813, D.19267
	movq	-216(%rbp), %rax	# s, tmp1100
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1100,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r13, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_819, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L481	#,
	.loc 1 1346 0 discriminator 3
	movq	-216(%rbp), %rax	# s, tmp1101
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1101,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19263
	je	.L481	#,
.L480:
	.loc 1 1346 0 discriminator 1
	movl	$1, %eax	#, iftmp.314
	jmp	.L482	#
.L481:
	.loc 1 1346 0 discriminator 4
	movl	$0, %eax	#, iftmp.314
.L482:
	.loc 1 1346 0 discriminator 5
	andl	$1, %eax	#, iftmp.313
	jmp	.L483	#
.L479:
	.loc 1 1346 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1102,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_alnum_lc	#
	testb	%al, %al	# D.19260
	sete	%al	#, iftmp.313
.L483:
	.loc 1 1346 0 discriminator 3
	testb	%al, %al	# iftmp.313
	je	.L484	#,
	.loc 1 1347 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L485	#,
	.loc 1 1347 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1103
	movq	-200(%rbp), %rax	# prog, tmp1104
	movq	%rdx, %rsi	# tmp1103,
	movq	%rax, %rdi	# tmp1104,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L485:
	.loc 1 1350 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L486	#
.L484:
	.loc 1 1353 0
	movl	$1, %ebx	#, tmp
.L486:
	.loc 1 1354 0
	addq	%r12, -216(%rbp)	# uskip, s
.L478:
	.loc 1 1345 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1105
	movzbl	(%rax), %eax	# MEM[(U8 *)s_21], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1107
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L487	#,
	.loc 1 1370 0
	jmp	.L264	#
.L477:
	.loc 1 1358 0
	jmp	.L489	#
.L494:
	.loc 1 1359 0
	movq	-216(%rbp), %rax	# s, tmp1108
	movzbl	(%rax), %eax	# *s_22, D.19260
	testb	%al, %al	# D.19260
	js	.L490	#,
	.loc 1 1359 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_835, D.19267
	movq	-216(%rbp), %rax	# s, tmp1109
	movzbl	(%rax), %eax	# *s_22, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_840, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L491	#,
	movq	-216(%rbp), %rax	# s, tmp1110
	movzbl	(%rax), %eax	# *s_22, D.19260
	cmpb	$95, %al	#, D.19260
	je	.L491	#,
.L490:
	.loc 1 1360 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L492	#,
	.loc 1 1360 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1111
	movq	-200(%rbp), %rax	# prog, tmp1112
	movq	%rdx, %rsi	# tmp1111,
	movq	%rax, %rdi	# tmp1112,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L492:
	.loc 1 1363 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1360 0
	jmp	.L493	#
.L491:
	.loc 1 1366 0
	movl	$1, %ebx	#, tmp
.L493:
	.loc 1 1367 0
	addq	$1, -216(%rbp)	#, s
.L489:
	.loc 1 1358 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1113
	cmpq	-224(%rbp), %rax	# strend, tmp1113
	jb	.L494	#,
	.loc 1 1370 0
	jmp	.L264	#
.L229:
	.loc 1 1372 0
	testb	%r13b, %r13b	# do_utf8
	je	.L495	#,
	.loc 1 1373 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.315
	testq	%rax, %rax	# PL_utf8_space.315
	jne	.L496	#,
	.loc 1 1373 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC2, %edi	#,
	call	Perl_is_utf8_space	#
	call	Perl_pop_scope	#
	.loc 1 1374 0 is_stmt 1 discriminator 1
	jmp	.L497	#
.L496:
	.loc 1 1374 0 is_stmt 0
	jmp	.L497	#
.L502:
	.loc 1 1375 0 is_stmt 1
	movq	-216(%rbp), %rax	# s, tmp1114
	movzbl	(%rax), %eax	# *s_23, D.19260
	cmpb	$32, %al	#, D.19260
	je	.L498	#,
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.316
	movq	-216(%rbp), %rcx	# s, tmp1115
	movq	%rcx, %rsi	# tmp1115,
	movq	%rax, %rdi	# PL_utf8_space.316,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19263
	je	.L499	#,
.L498:
	.loc 1 1376 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L500	#,
	.loc 1 1376 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1116
	movq	-200(%rbp), %rax	# prog, tmp1117
	movq	%rdx, %rsi	# tmp1116,
	movq	%rax, %rdi	# tmp1117,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L500:
	.loc 1 1379 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1376 0
	jmp	.L501	#
.L499:
	.loc 1 1382 0
	movl	$1, %ebx	#, tmp
.L501:
	.loc 1 1383 0
	addq	%r12, -216(%rbp)	# uskip, s
.L497:
	.loc 1 1374 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1118
	movzbl	(%rax), %eax	# MEM[(U8 *)s_23], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1120
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L502	#,
	.loc 1 1399 0
	jmp	.L264	#
.L495:
	.loc 1 1387 0
	jmp	.L504	#
.L509:
	.loc 1 1388 0
	movq	-216(%rbp), %rax	# s, tmp1121
	movzbl	(%rax), %eax	# *s_24, D.19260
	cmpb	$32, %al	#, D.19260
	je	.L505	#,
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1122
	movzbl	(%rax), %eax	# *s_24, D.19260
	cmpb	$9, %al	#, D.19260
	je	.L505	#,
	movq	-216(%rbp), %rax	# s, tmp1123
	movzbl	(%rax), %eax	# *s_24, D.19260
	cmpb	$10, %al	#, D.19260
	je	.L505	#,
	movq	-216(%rbp), %rax	# s, tmp1124
	movzbl	(%rax), %eax	# *s_24, D.19260
	cmpb	$13, %al	#, D.19260
	je	.L505	#,
	movq	-216(%rbp), %rax	# s, tmp1125
	movzbl	(%rax), %eax	# *s_24, D.19260
	cmpb	$12, %al	#, D.19260
	jne	.L506	#,
.L505:
	.loc 1 1389 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L507	#,
	.loc 1 1389 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1126
	movq	-200(%rbp), %rax	# prog, tmp1127
	movq	%rdx, %rsi	# tmp1126,
	movq	%rax, %rdi	# tmp1127,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L507:
	.loc 1 1392 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1389 0
	jmp	.L508	#
.L506:
	.loc 1 1395 0
	movl	$1, %ebx	#, tmp
.L508:
	.loc 1 1396 0
	addq	$1, -216(%rbp)	#, s
.L504:
	.loc 1 1387 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1128
	cmpq	-224(%rbp), %rax	# strend, tmp1128
	jb	.L509	#,
	.loc 1 1399 0
	jmp	.L264	#
.L230:
	.loc 1 1401 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.317
	orl	$1, %eax	#, PL_reg_flags.318
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.318, PL_reg_flags
	.loc 1 1402 0
	testb	%r13b, %r13b	# do_utf8
	je	.L510	#,
	.loc 1 1403 0
	jmp	.L511	#
.L519:
	.loc 1 1404 0
	movq	-216(%rbp), %rax	# s, tmp1129
	movzbl	(%rax), %eax	# *s_25, D.19260
	cmpb	$32, %al	#, D.19260
	je	.L512	#,
	.loc 1 1404 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1130,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19263
	ja	.L513	#,
	.loc 1 1404 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1131
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1131,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L514	#,
	.loc 1 1404 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r13	# *_883, D.19267
	movq	-216(%rbp), %rax	# s, tmp1132
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1132,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r13, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_889, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8192, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L514	#,
	.loc 1 1404 0 discriminator 3
	movl	$1, %eax	#, iftmp.319
	jmp	.L515	#
.L514:
	.loc 1 1404 0 discriminator 2
	movl	$0, %eax	#, iftmp.319
.L515:
	.loc 1 1404 0 discriminator 4
	andl	$1, %eax	#, D.19257
	testb	%al, %al	# D.19257
	jne	.L512	#,
	jmp	.L516	#
.L513:
	.loc 1 1404 0 discriminator 3
	movq	-216(%rbp), %rax	# s, tmp1133
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1133,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_space_lc	#
	testb	%al, %al	# D.19260
	je	.L516	#,
.L512:
	.loc 1 1405 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L517	#,
	.loc 1 1405 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1134
	movq	-200(%rbp), %rax	# prog, tmp1135
	movq	%rdx, %rsi	# tmp1134,
	movq	%rax, %rdi	# tmp1135,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L517:
	.loc 1 1408 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1405 0
	jmp	.L518	#
.L516:
	.loc 1 1411 0
	movl	$1, %ebx	#, tmp
.L518:
	.loc 1 1412 0
	addq	%r12, -216(%rbp)	# uskip, s
.L511:
	.loc 1 1403 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1136
	movzbl	(%rax), %eax	# MEM[(U8 *)s_25], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1138
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L519	#,
	.loc 1 1428 0
	jmp	.L264	#
.L510:
	.loc 1 1416 0
	jmp	.L521	#
.L525:
	.loc 1 1417 0
	movq	-216(%rbp), %rax	# s, tmp1139
	movzbl	(%rax), %eax	# *s_26, D.19260
	testb	%al, %al	# D.19260
	js	.L522	#,
	.loc 1 1417 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_903, D.19267
	movq	-216(%rbp), %rax	# s, tmp1140
	movzbl	(%rax), %eax	# *s_26, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_908, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8192, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L522	#,
	.loc 1 1418 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L523	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1141
	movq	-200(%rbp), %rax	# prog, tmp1142
	movq	%rdx, %rsi	# tmp1141,
	movq	%rax, %rdi	# tmp1142,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L523:
	.loc 1 1421 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1418 0
	jmp	.L524	#
.L522:
	.loc 1 1424 0
	movl	$1, %ebx	#, tmp
.L524:
	.loc 1 1425 0
	addq	$1, -216(%rbp)	#, s
.L521:
	.loc 1 1416 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1143
	cmpq	-224(%rbp), %rax	# strend, tmp1143
	jb	.L525	#,
	.loc 1 1428 0
	jmp	.L264	#
.L231:
	.loc 1 1430 0
	testb	%r13b, %r13b	# do_utf8
	je	.L526	#,
	.loc 1 1431 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.320
	testq	%rax, %rax	# PL_utf8_space.320
	jne	.L527	#,
	.loc 1 1431 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC2, %edi	#,
	call	Perl_is_utf8_space	#
	call	Perl_pop_scope	#
	.loc 1 1432 0 is_stmt 1 discriminator 1
	jmp	.L528	#
.L527:
	.loc 1 1432 0 is_stmt 0
	jmp	.L528	#
.L532:
	.loc 1 1433 0 is_stmt 1
	movq	-216(%rbp), %rax	# s, tmp1144
	movzbl	(%rax), %eax	# *s_27, D.19260
	cmpb	$32, %al	#, D.19260
	je	.L529	#,
	.loc 1 1433 0 is_stmt 0 discriminator 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.321
	movq	-216(%rbp), %rcx	# s, tmp1145
	movq	%rcx, %rsi	# tmp1145,
	movq	%rax, %rdi	# PL_utf8_space.321,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19263
	jne	.L529	#,
	.loc 1 1434 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L530	#,
	.loc 1 1434 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1146
	movq	-200(%rbp), %rax	# prog, tmp1147
	movq	%rdx, %rsi	# tmp1146,
	movq	%rax, %rdi	# tmp1147,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L530:
	.loc 1 1437 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1434 0
	jmp	.L531	#
.L529:
	.loc 1 1440 0
	movl	$1, %ebx	#, tmp
.L531:
	.loc 1 1441 0
	addq	%r12, -216(%rbp)	# uskip, s
.L528:
	.loc 1 1432 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1148
	movzbl	(%rax), %eax	# MEM[(U8 *)s_27], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1150
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L532	#,
	.loc 1 1457 0
	jmp	.L264	#
.L526:
	.loc 1 1445 0
	jmp	.L534	#
.L538:
	.loc 1 1446 0
	movq	-216(%rbp), %rax	# s, tmp1151
	movzbl	(%rax), %eax	# *s_28, D.19260
	cmpb	$32, %al	#, D.19260
	je	.L535	#,
	.loc 1 1446 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1152
	movzbl	(%rax), %eax	# *s_28, D.19260
	cmpb	$9, %al	#, D.19260
	je	.L535	#,
	movq	-216(%rbp), %rax	# s, tmp1153
	movzbl	(%rax), %eax	# *s_28, D.19260
	cmpb	$10, %al	#, D.19260
	je	.L535	#,
	movq	-216(%rbp), %rax	# s, tmp1154
	movzbl	(%rax), %eax	# *s_28, D.19260
	cmpb	$13, %al	#, D.19260
	je	.L535	#,
	movq	-216(%rbp), %rax	# s, tmp1155
	movzbl	(%rax), %eax	# *s_28, D.19260
	cmpb	$12, %al	#, D.19260
	je	.L535	#,
	.loc 1 1447 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L536	#,
	.loc 1 1447 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1156
	movq	-200(%rbp), %rax	# prog, tmp1157
	movq	%rdx, %rsi	# tmp1156,
	movq	%rax, %rdi	# tmp1157,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L536:
	.loc 1 1450 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1447 0
	jmp	.L537	#
.L535:
	.loc 1 1453 0
	movl	$1, %ebx	#, tmp
.L537:
	.loc 1 1454 0
	addq	$1, -216(%rbp)	#, s
.L534:
	.loc 1 1445 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1158
	cmpq	-224(%rbp), %rax	# strend, tmp1158
	jb	.L538	#,
	.loc 1 1457 0
	jmp	.L264	#
.L232:
	.loc 1 1459 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.322
	orl	$1, %eax	#, PL_reg_flags.323
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.323, PL_reg_flags
	.loc 1 1460 0
	testb	%r13b, %r13b	# do_utf8
	je	.L539	#,
	.loc 1 1461 0
	jmp	.L540	#
.L549:
	.loc 1 1462 0
	movq	-216(%rbp), %rax	# s, tmp1159
	movzbl	(%rax), %eax	# *s_29, D.19260
	cmpb	$32, %al	#, D.19260
	je	.L541	#,
	.loc 1 1462 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1160
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1160,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19263
	ja	.L542	#,
	.loc 1 1462 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1161
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1161,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L543	#,
	call	__ctype_b_loc	#
	movq	(%rax), %r13	# *_950, D.19267
	movq	-216(%rbp), %rax	# s, tmp1162
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1162,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r13, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_956, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8192, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L544	#,
.L543:
	.loc 1 1462 0 discriminator 1
	movl	$1, %eax	#, iftmp.324
	jmp	.L545	#
.L544:
	.loc 1 1462 0 discriminator 3
	movl	$0, %eax	#, iftmp.324
.L545:
	.loc 1 1462 0 discriminator 4
	andl	$1, %eax	#, D.19257
	testb	%al, %al	# D.19257
	jne	.L546	#,
	jmp	.L541	#
.L542:
	.loc 1 1462 0 discriminator 3
	movq	-216(%rbp), %rax	# s, tmp1163
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1163,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_space_lc	#
	testb	%al, %al	# D.19260
	jne	.L541	#,
.L546:
	.loc 1 1463 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L547	#,
	.loc 1 1463 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1164
	movq	-200(%rbp), %rax	# prog, tmp1165
	movq	%rdx, %rsi	# tmp1164,
	movq	%rax, %rdi	# tmp1165,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L547:
	.loc 1 1466 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1463 0
	jmp	.L548	#
.L541:
	.loc 1 1469 0
	movl	$1, %ebx	#, tmp
.L548:
	.loc 1 1470 0
	addq	%r12, -216(%rbp)	# uskip, s
.L540:
	.loc 1 1461 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1166
	movzbl	(%rax), %eax	# MEM[(U8 *)s_29], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1168
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L549	#,
	.loc 1 1486 0
	jmp	.L264	#
.L539:
	.loc 1 1474 0
	jmp	.L551	#
.L556:
	.loc 1 1475 0
	movq	-216(%rbp), %rax	# s, tmp1169
	movzbl	(%rax), %eax	# *s_30, D.19260
	testb	%al, %al	# D.19260
	js	.L552	#,
	.loc 1 1475 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_970, D.19267
	movq	-216(%rbp), %rax	# s, tmp1170
	movzbl	(%rax), %eax	# *s_30, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_975, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$8192, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L553	#,
.L552:
	.loc 1 1476 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L554	#,
	.loc 1 1476 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1171
	movq	-200(%rbp), %rax	# prog, tmp1172
	movq	%rdx, %rsi	# tmp1171,
	movq	%rax, %rdi	# tmp1172,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L554:
	.loc 1 1479 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1476 0
	jmp	.L555	#
.L553:
	.loc 1 1482 0
	movl	$1, %ebx	#, tmp
.L555:
	.loc 1 1483 0
	addq	$1, -216(%rbp)	#, s
.L551:
	.loc 1 1474 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1173
	cmpq	-224(%rbp), %rax	# strend, tmp1173
	jb	.L556	#,
	.loc 1 1486 0
	jmp	.L264	#
.L233:
	.loc 1 1488 0
	testb	%r13b, %r13b	# do_utf8
	je	.L557	#,
	.loc 1 1489 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.325
	testq	%rax, %rax	# PL_utf8_digit.325
	jne	.L558	#,
	.loc 1 1489 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC3, %edi	#,
	call	Perl_is_utf8_digit	#
	call	Perl_pop_scope	#
	.loc 1 1490 0 is_stmt 1 discriminator 1
	jmp	.L559	#
.L558:
	.loc 1 1490 0 is_stmt 0
	jmp	.L559	#
.L563:
	.loc 1 1491 0 is_stmt 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.326
	movq	-216(%rbp), %rcx	# s, tmp1174
	movq	%rcx, %rsi	# tmp1174,
	movq	%rax, %rdi	# PL_utf8_digit.326,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19263
	je	.L560	#,
	.loc 1 1492 0
	testl	%ebx, %ebx	# tmp
	je	.L561	#,
	.loc 1 1492 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1175
	movq	-200(%rbp), %rax	# prog, tmp1176
	movq	%rdx, %rsi	# tmp1175,
	movq	%rax, %rdi	# tmp1176,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L561:
	.loc 1 1495 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L562	#
.L560:
	.loc 1 1498 0
	movl	$1, %ebx	#, tmp
.L562:
	.loc 1 1499 0
	addq	%r12, -216(%rbp)	# uskip, s
.L559:
	.loc 1 1490 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1177
	movzbl	(%rax), %eax	# MEM[(U8 *)s_31], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1179
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L563	#,
	.loc 1 1515 0
	jmp	.L264	#
.L557:
	.loc 1 1503 0
	jmp	.L565	#
.L569:
	.loc 1 1504 0
	movq	-216(%rbp), %rax	# s, tmp1180
	movzbl	(%rax), %eax	# *s_32, D.19260
	cmpb	$47, %al	#, D.19260
	jle	.L566	#,
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1181
	movzbl	(%rax), %eax	# *s_32, D.19260
	cmpb	$57, %al	#, D.19260
	jg	.L566	#,
	.loc 1 1505 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L567	#,
	.loc 1 1505 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1182
	movq	-200(%rbp), %rax	# prog, tmp1183
	movq	%rdx, %rsi	# tmp1182,
	movq	%rax, %rdi	# tmp1183,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L567:
	.loc 1 1508 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1505 0
	jmp	.L568	#
.L566:
	.loc 1 1511 0
	movl	$1, %ebx	#, tmp
.L568:
	.loc 1 1512 0
	addq	$1, -216(%rbp)	#, s
.L565:
	.loc 1 1503 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1184
	cmpq	-224(%rbp), %rax	# strend, tmp1184
	jb	.L569	#,
	.loc 1 1515 0
	jmp	.L264	#
.L234:
	.loc 1 1517 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.327
	orl	$1, %eax	#, PL_reg_flags.328
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.328, PL_reg_flags
	.loc 1 1518 0
	testb	%r13b, %r13b	# do_utf8
	je	.L570	#,
	.loc 1 1519 0
	jmp	.L571	#
.L579:
	.loc 1 1520 0
	movq	-216(%rbp), %rax	# s, tmp1185
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1185,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19263
	ja	.L572	#,
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1186
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1186,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L573	#,
	call	__ctype_b_loc	#
	movq	(%rax), %r13	# *_1012, D.19267
	movq	-216(%rbp), %rax	# s, tmp1187
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1187,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r13, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_1018, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$2048, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L573	#,
	.loc 1 1520 0 discriminator 3
	movl	$1, %eax	#, iftmp.330
	jmp	.L574	#
.L573:
	.loc 1 1520 0 discriminator 2
	movl	$0, %eax	#, iftmp.330
.L574:
	.loc 1 1520 0 discriminator 4
	andl	$1, %eax	#, iftmp.329
	jmp	.L575	#
.L572:
	.loc 1 1520 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1188
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1188,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_digit_lc	#
	testb	%al, %al	# D.19260
	setne	%al	#, iftmp.329
.L575:
	.loc 1 1520 0 discriminator 3
	testb	%al, %al	# iftmp.329
	je	.L576	#,
	.loc 1 1521 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L577	#,
	.loc 1 1521 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1189
	movq	-200(%rbp), %rax	# prog, tmp1190
	movq	%rdx, %rsi	# tmp1189,
	movq	%rax, %rdi	# tmp1190,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L577:
	.loc 1 1524 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L578	#
.L576:
	.loc 1 1527 0
	movl	$1, %ebx	#, tmp
.L578:
	.loc 1 1528 0
	addq	%r12, -216(%rbp)	# uskip, s
.L571:
	.loc 1 1519 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1191
	movzbl	(%rax), %eax	# MEM[(U8 *)s_33], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1193
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L579	#,
	.loc 1 1544 0
	jmp	.L264	#
.L570:
	.loc 1 1532 0
	jmp	.L581	#
.L585:
	.loc 1 1533 0
	movq	-216(%rbp), %rax	# s, tmp1194
	movzbl	(%rax), %eax	# *s_34, D.19260
	testb	%al, %al	# D.19260
	js	.L582	#,
	.loc 1 1533 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_1033, D.19267
	movq	-216(%rbp), %rax	# s, tmp1195
	movzbl	(%rax), %eax	# *s_34, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_1038, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$2048, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	je	.L582	#,
	.loc 1 1534 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L583	#,
	.loc 1 1534 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1196
	movq	-200(%rbp), %rax	# prog, tmp1197
	movq	%rdx, %rsi	# tmp1196,
	movq	%rax, %rdi	# tmp1197,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L583:
	.loc 1 1537 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1534 0
	jmp	.L584	#
.L582:
	.loc 1 1540 0
	movl	$1, %ebx	#, tmp
.L584:
	.loc 1 1541 0
	addq	$1, -216(%rbp)	#, s
.L581:
	.loc 1 1532 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1198
	cmpq	-224(%rbp), %rax	# strend, tmp1198
	jb	.L585	#,
	.loc 1 1544 0
	jmp	.L264	#
.L235:
	.loc 1 1546 0
	testb	%r13b, %r13b	# do_utf8
	je	.L586	#,
	.loc 1 1547 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.331
	testq	%rax, %rax	# PL_utf8_digit.331
	jne	.L587	#,
	.loc 1 1547 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC3, %edi	#,
	call	Perl_is_utf8_digit	#
	call	Perl_pop_scope	#
	.loc 1 1548 0 is_stmt 1 discriminator 1
	jmp	.L588	#
.L587:
	.loc 1 1548 0 is_stmt 0
	jmp	.L588	#
.L592:
	.loc 1 1549 0 is_stmt 1
	movsbl	%r13b, %edx	# do_utf8, D.19259
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.332
	movq	-216(%rbp), %rcx	# s, tmp1199
	movq	%rcx, %rsi	# tmp1199,
	movq	%rax, %rdi	# PL_utf8_digit.332,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19263
	jne	.L589	#,
	.loc 1 1550 0
	testl	%ebx, %ebx	# tmp
	je	.L590	#,
	.loc 1 1550 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1200
	movq	-200(%rbp), %rax	# prog, tmp1201
	movq	%rdx, %rsi	# tmp1200,
	movq	%rax, %rdi	# tmp1201,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L590:
	.loc 1 1553 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L591	#
.L589:
	.loc 1 1556 0
	movl	$1, %ebx	#, tmp
.L591:
	.loc 1 1557 0
	addq	%r12, -216(%rbp)	# uskip, s
.L588:
	.loc 1 1548 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1202
	movzbl	(%rax), %eax	# MEM[(U8 *)s_35], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1204
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L592	#,
	.loc 1 1573 0
	jmp	.L264	#
.L586:
	.loc 1 1561 0
	jmp	.L594	#
.L599:
	.loc 1 1562 0
	movq	-216(%rbp), %rax	# s, tmp1205
	movzbl	(%rax), %eax	# *s_36, D.19260
	cmpb	$47, %al	#, D.19260
	jle	.L595	#,
	.loc 1 1562 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1206
	movzbl	(%rax), %eax	# *s_36, D.19260
	cmpb	$57, %al	#, D.19260
	jle	.L596	#,
.L595:
	.loc 1 1563 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L597	#,
	.loc 1 1563 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1207
	movq	-200(%rbp), %rax	# prog, tmp1208
	movq	%rdx, %rsi	# tmp1207,
	movq	%rax, %rdi	# tmp1208,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L597:
	.loc 1 1566 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1563 0
	jmp	.L598	#
.L596:
	.loc 1 1569 0
	movl	$1, %ebx	#, tmp
.L598:
	.loc 1 1570 0
	addq	$1, -216(%rbp)	#, s
.L594:
	.loc 1 1561 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1209
	cmpq	-224(%rbp), %rax	# strend, tmp1209
	jb	.L599	#,
	.loc 1 1573 0
	jmp	.L264	#
.L236:
	.loc 1 1575 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.333
	orl	$1, %eax	#, PL_reg_flags.334
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.334, PL_reg_flags
	.loc 1 1576 0
	testb	%r13b, %r13b	# do_utf8
	je	.L600	#,
	.loc 1 1577 0
	jmp	.L601	#
.L610:
	.loc 1 1578 0
	movq	-216(%rbp), %rax	# s, tmp1210
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1210,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19263
	ja	.L602	#,
	.loc 1 1578 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1211
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1211,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19263
	testq	%rax, %rax	# D.19263
	jne	.L603	#,
	.loc 1 1578 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %r13	# *_1075, D.19267
	movq	-216(%rbp), %rax	# s, tmp1212
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1212,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19263
	addq	%r13, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_1081, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$2048, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L604	#,
.L603:
	.loc 1 1578 0 discriminator 1
	movl	$1, %eax	#, iftmp.336
	jmp	.L605	#
.L604:
	.loc 1 1578 0 discriminator 3
	movl	$0, %eax	#, iftmp.336
.L605:
	.loc 1 1578 0 discriminator 4
	andl	$1, %eax	#, iftmp.335
	jmp	.L606	#
.L602:
	.loc 1 1578 0 discriminator 2
	movq	-216(%rbp), %rax	# s, tmp1213
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1213,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19263,
	call	Perl_is_uni_digit_lc	#
	testb	%al, %al	# D.19260
	sete	%al	#, iftmp.335
.L606:
	.loc 1 1578 0 discriminator 3
	testb	%al, %al	# iftmp.335
	je	.L607	#,
	.loc 1 1579 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L608	#,
	.loc 1 1579 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1214
	movq	-200(%rbp), %rax	# prog, tmp1215
	movq	%rdx, %rsi	# tmp1214,
	movq	%rax, %rdi	# tmp1215,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L608:
	.loc 1 1582 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	jmp	.L609	#
.L607:
	.loc 1 1585 0
	movl	$1, %ebx	#, tmp
.L609:
	.loc 1 1586 0
	addq	%r12, -216(%rbp)	# uskip, s
.L601:
	.loc 1 1577 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1216
	movzbl	(%rax), %eax	# MEM[(U8 *)s_37], D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19258
	movzbl	%al, %r12d	# D.19258, uskip
	movq	-216(%rbp), %rax	# s, tmp1218
	addq	%r12, %rax	# uskip, D.19255
	cmpq	-224(%rbp), %rax	# strend, D.19255
	jbe	.L610	#,
	.loc 1 1602 0
	jmp	.L264	#
.L600:
	.loc 1 1590 0
	jmp	.L612	#
.L617:
	.loc 1 1591 0
	movq	-216(%rbp), %rax	# s, tmp1219
	movzbl	(%rax), %eax	# *s_38, D.19260
	testb	%al, %al	# D.19260
	js	.L613	#,
	.loc 1 1591 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_1096, D.19267
	movq	-216(%rbp), %rax	# s, tmp1220
	movzbl	(%rax), %eax	# *s_38, D.19260
	movsbq	%al, %rax	# D.19260, D.19263
	addq	%rax, %rax	# D.19263
	addq	%rdx, %rax	# D.19267, D.19267
	movzwl	(%rax), %eax	# *_1101, D.19268
	movzwl	%ax, %eax	# D.19268, D.19259
	andl	$2048, %eax	#, D.19259
	testl	%eax, %eax	# D.19259
	jne	.L614	#,
.L613:
	.loc 1 1592 0 is_stmt 1
	testl	%ebx, %ebx	# tmp
	je	.L615	#,
	.loc 1 1592 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, norun
	jne	.L248	#,
	movq	-216(%rbp), %rdx	# s, tmp1221
	movq	-200(%rbp), %rax	# prog, tmp1222
	movq	%rdx, %rsi	# tmp1221,
	movq	%rax, %rdi	# tmp1222,
	call	S_regtry	#
	testl	%eax, %eax	# D.19259
	jne	.L248	#,
.L615:
	.loc 1 1595 0 is_stmt 1
	movl	-180(%rbp), %ebx	# doevery, tmp
	.loc 1 1592 0
	jmp	.L616	#
.L614:
	.loc 1 1598 0
	movl	$1, %ebx	#, tmp
.L616:
	.loc 1 1599 0
	addq	$1, -216(%rbp)	#, s
.L612:
	.loc 1 1590 0 discriminator 1
	movq	-216(%rbp), %rax	# s, tmp1223
	cmpq	-224(%rbp), %rax	# strend, tmp1223
	jb	.L617	#,
	.loc 1 1602 0
	jmp	.L264	#
.L217:
	.loc 1 1604 0
	movq	-208(%rbp), %rax	# c, tmp1224
	movzbl	1(%rax), %eax	# c_170(D)->type, D.19258
	movzbl	%al, %eax	# D.19258, D.19259
	movl	%eax, %esi	# D.19259,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 1605 0
	nop
.L264:
	.loc 1 1607 0
	movl	$0, %eax	#, D.19255
	jmp	.L618	#
.L248:
	.loc 1 1609 0
	movq	-216(%rbp), %rax	# s, D.19255
.L618:
	.loc 1 1610 0
	movq	-40(%rbp), %rcx	# D.19270, tmp1227
	xorq	%fs:40, %rcx	#, tmp1227
	je	.L619	#,
	call	__stack_chk_fail	#
.L619:
	addq	$224, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	S_find_byclass, .-S_find_byclass
	.section	.rodata
.LC5:
	.string	"NULL regexp parameter"
.LC6:
	.string	"corrupted regexp program"
	.text
	.globl	Perl_regexec_flags
	.type	Perl_regexec_flags, @function
Perl_regexec_flags:
.LFB9:
	.loc 1 1623 0
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
	subq	$184, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# prog, prog
	movq	%rsi, -200(%rbp)	# stringarg, stringarg
	movq	%rdx, %r13	# strend, strend
	movq	%rcx, -208(%rbp)	# strbeg, strbeg
	movl	%r8d, -212(%rbp)	# minend, minend
	movq	%r9, -224(%rbp)	# sv, sv
	.loc 1 1626 0
	movq	-200(%rbp), %r14	# stringarg, startpos
	.loc 1 1628 0
	movl	$0, -180(%rbp)	#, dontbother
	.loc 1 1631 0
	movl	$0, -168(%rbp)	#, end_shift
	.loc 1 1632 0
	movl	$-1, -184(%rbp)	#, scream_pos
	.loc 1 1634 0
	movq	PL_replgv(%rip), %rax	# PL_replgv, PL_replgv.337
	movq	(%rax), %rax	# PL_replgv.337_70->sv_any, D.19278
	movq	56(%rax), %rax	# _71->xgv_gp, D.19279
	movq	(%rax), %rax	# _72->gp_sv, tmp429
	movq	%rax, -120(%rbp)	# tmp429, oreplsv
	.loc 1 1635 0
	movq	-224(%rbp), %rax	# sv, tmp430
	movl	12(%rax), %eax	# sv_74(D)->sv_flags, D.19280
	andl	$536870912, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L621	#,
	.loc 1 1635 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.339
	movzbl	37(%rax), %eax	# PL_curcop.339_77->op_private, D.19281
	movzbl	%al, %eax	# D.19281, D.19282
	andl	$8, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	jne	.L621	#,
	.loc 1 1635 0 discriminator 3
	movl	$1, %eax	#, iftmp.338
	jmp	.L622	#
.L621:
	.loc 1 1635 0 discriminator 2
	movl	$0, %eax	#, iftmp.338
.L622:
	.loc 1 1635 0 discriminator 4
	movb	%al, -186(%rbp)	# iftmp.338, do_utf8
	.loc 1 1640 0 is_stmt 1 discriminator 4
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L623	#,
	.loc 1 1640 0 is_stmt 0 discriminator 1
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	orl	$268435456, %eax	#, D.19280
	movl	%eax, 92(%rbx)	# D.19280, prog_84(D)->reganch
	movb	$1, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
	jmp	.L624	#
.L623:
	.loc 1 1640 0 discriminator 2
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$-268435457, %eax	#, D.19280
	movl	%eax, 92(%rbx)	# D.19280, prog_84(D)->reganch
	movb	$0, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
.L624:
	.loc 1 1642 0 is_stmt 1
	movq	$0, PL_regcc(%rip)	#, PL_regcc
	.loc 1 1644 0
	movq	%rbx, %rdi	# prog,
	call	S_cache_re	#
	.loc 1 1650 0
	testq	%rbx, %rbx	# prog
	je	.L625	#,
	.loc 1 1650 0 is_stmt 0 discriminator 1
	testq	%r14, %r14	# startpos
	jne	.L626	#,
.L625:
	.loc 1 1651 0 is_stmt 1
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 1652 0
	movl	$0, %eax	#, D.19277
	jmp	.L785	#
.L626:
	.loc 1 1655 0
	movl	72(%rbx), %eax	# prog_84(D)->minlen, tmp431
	movl	%eax, -164(%rbp)	# tmp431, minlen
	.loc 1 1656 0
	movq	%r13, %rdx	# strend, strend.341
	movq	%r14, %rax	# startpos, startpos.342
	subq	%rax, %rdx	# startpos.342, D.19283
	movl	-164(%rbp), %eax	# minlen, tmp432
	cltq
	cmpq	%rax, %rdx	# D.19283, D.19283
	jge	.L628	#,
	.loc 1 1659 0
	jmp	.L629	#
.L628:
	.loc 1 1663 0
	leaq	96(%rbx), %rax	#, D.19284
	movzbl	(%rax), %eax	# MEM[(U8 *)_97], D.19281
	cmpb	$-100, %al	#, D.19281
	je	.L630	#,
	.loc 1 1664 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L630:
	.loc 1 1667 0
	movl	$0, PL_reg_flags(%rip)	#, PL_reg_flags
	.loc 1 1668 0
	movl	$0, PL_reg_eval_set(%rip)	#, PL_reg_eval_set
	.loc 1 1669 0
	movl	$0, PL_reg_maxiter(%rip)	#, PL_reg_maxiter
	.loc 1 1671 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$65536, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L631	#,
	.loc 1 1672 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.343
	orl	$8, %eax	#, PL_reg_flags.344
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.344, PL_reg_flags
.L631:
	.loc 1 1675 0
	movq	%r14, PL_regbol(%rip)	# startpos, PL_regbol
	.loc 1 1676 0
	movq	-208(%rbp), %rax	# strbeg, tmp433
	movq	%rax, PL_bostr(%rip)	# tmp433, PL_bostr
	.loc 1 1677 0
	movq	-224(%rbp), %rax	# sv, tmp434
	movq	%rax, PL_reg_sv(%rip)	# tmp434, PL_reg_sv
	.loc 1 1680 0
	movq	%r13, PL_regeol(%rip)	# strend, PL_regeol
	.loc 1 1683 0
	movl	-212(%rbp), %eax	# minend, tmp435
	cltq
	addq	%r14, %rax	# startpos, PL_regtill.345
	movq	%rax, PL_regtill(%rip)	# PL_regtill.345, PL_regtill
	.loc 1 1686 0
	movq	$0, PL_reg_call_cc(%rip)	#, PL_reg_call_cc
	.loc 1 1689 0
	movq	%r14, %r12	# startpos, s
	.loc 1 1691 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$128, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L632	#,
.LBB14:
	.loc 1 1694 0
	movl	24(%rbp), %eax	# flags, tmp436
	andl	$8, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L633	#,
	.loc 1 1695 0
	movq	%r14, PL_reg_ganch(%rip)	# startpos, PL_reg_ganch
	jmp	.L632	#
.L633:
	.loc 1 1696 0
	cmpq	$0, -224(%rbp)	#, sv
	je	.L634	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# sv, tmp437
	movl	12(%rax), %eax	# sv_74(D)->sv_flags, D.19280
	movzbl	%al, %eax	# D.19280, D.19280
	cmpl	$6, %eax	#, D.19280
	jbe	.L634	#,
	.loc 1 1697 0 is_stmt 1
	movq	-224(%rbp), %rax	# sv, tmp438
	movq	(%rax), %rax	# sv_74(D)->sv_any, D.19286
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_114].xmg_magic, D.19287
	testq	%rax, %rax	# D.19287
	je	.L634	#,
	.loc 1 1698 0
	movq	-224(%rbp), %rax	# sv, tmp439
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp439,
	call	Perl_mg_find	#
	movq	%rax, -112(%rbp)	# tmp440, mg
	cmpq	$0, -112(%rbp)	#, mg
	je	.L634	#,
	.loc 1 1699 0
	movq	-112(%rbp), %rax	# mg, tmp441
	movl	40(%rax), %eax	# mg_116->mg_len, D.19282
	testl	%eax, %eax	# D.19282
	js	.L634	#,
	.loc 1 1700 0
	movq	-112(%rbp), %rax	# mg, tmp442
	movl	40(%rax), %eax	# mg_116->mg_len, D.19282
	movslq	%eax, %rdx	# D.19282, D.19285
	movq	-208(%rbp), %rax	# strbeg, tmp443
	addq	%rdx, %rax	# D.19285, PL_reg_ganch.346
	movq	%rax, PL_reg_ganch(%rip)	# PL_reg_ganch.346, PL_reg_ganch
	.loc 1 1701 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$8, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L635	#,
	.loc 1 1702 0
	movq	PL_reg_ganch(%rip), %rax	# PL_reg_ganch, PL_reg_ganch.347
	cmpq	%rax, %r12	# PL_reg_ganch.347, s
	jbe	.L636	#,
	.loc 1 1703 0
	jmp	.L629	#
.L636:
	.loc 1 1704 0
	movq	PL_reg_ganch(%rip), %r12	# PL_reg_ganch, s
	.loc 1 1701 0
	jmp	.L632	#
.L635:
	.loc 1 1701 0 is_stmt 0 discriminator 1
	jmp	.L632	#
.L634:
	.loc 1 1708 0 is_stmt 1
	movq	-208(%rbp), %rax	# strbeg, tmp444
	movq	%rax, PL_reg_ganch(%rip)	# tmp444, PL_reg_ganch
.L632:
.LBE14:
	.loc 1 1711 0
	movl	24(%rbp), %eax	# flags, tmp445
	andl	$2, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	jne	.L637	#,
	.loc 1 1711 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	56(%rax), %rax	# _126->data[2].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L638	#,
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	64(%rax), %rax	# _128->data[2].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	je	.L637	#,
.L638:
.LBB15:
	.loc 1 1714 0 is_stmt 1
	leaq	-152(%rbp), %rax	#, tmp446
	movq	%rax, -64(%rbp)	# tmp446, d.scream_olds
	.loc 1 1715 0
	leaq	-184(%rbp), %rax	#, tmp447
	movq	%rax, -56(%rbp)	# tmp447, d.scream_pos
	.loc 1 1716 0
	leaq	-64(%rbp), %rcx	#, tmp448
	movl	24(%rbp), %edx	# flags, tmp449
	movq	-224(%rbp), %rax	# sv, tmp450
	movq	%rcx, %r9	# tmp448,
	movl	%edx, %r8d	# tmp449,
	movq	%r13, %rcx	# strend,
	movq	%r12, %rdx	# s,
	movq	%rax, %rsi	# tmp450,
	movq	%rbx, %rdi	# prog,
	call	Perl_re_intuit_start	#
	movq	%rax, %r12	#, s
	.loc 1 1717 0
	testq	%r12, %r12	# s
	je	.L629	#,
.L637:
.LBE15:
	.loc 1 1749 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$7, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L640	#,
	.loc 1 1750 0
	cmpq	%r14, %r12	# startpos, s
	jne	.L641	#,
	.loc 1 1750 0 is_stmt 0 discriminator 1
	movq	%r14, %rsi	# startpos,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	jne	.L642	#,
.L641:
	.loc 1 1752 0 is_stmt 1
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.348
	testl	%eax, %eax	# PL_multiline.348
	jne	.L643	#,
	.loc 1 1752 0 is_stmt 0 discriminator 1
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$32, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	jne	.L643	#,
	.loc 1 1753 0 is_stmt 1
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$2, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L644	#,
.L643:
.LBB16:
	.loc 1 1757 0
	cmpl	$0, -164(%rbp)	#, minlen
	je	.L645	#,
	.loc 1 1758 0
	movl	-164(%rbp), %eax	# minlen, tmp454
	subl	$1, %eax	#, tmp453
	movl	%eax, -180(%rbp)	# tmp453, dontbother
.L645:
	.loc 1 1759 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.350
	testb	%al, %al	# PL_reg_match_utf8.350
	je	.L646	#,
	.loc 1 1759 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# dontbother, tmp455
	negl	%eax	# D.19282
	movl	%eax, %ecx	# D.19282, D.19282
	movq	-208(%rbp), %rax	# strbeg, tmp456
	movq	%rax, %rdx	# tmp456,
	movl	%ecx, %esi	# D.19282,
	movq	%r13, %rdi	# strend,
	call	S_reghop3	#
	subq	$1, %rax	#, iftmp.349
	jmp	.L647	#
.L646:
	.loc 1 1759 0 discriminator 2
	movl	-180(%rbp), %eax	# dontbother, tmp457
	negl	%eax	# D.19282
	cltq
	subq	$1, %rax	#, D.19285
	addq	%r13, %rax	# strend, iftmp.349
.L647:
	.loc 1 1759 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.349, end
	.loc 1 1761 0 is_stmt 1 discriminator 3
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	56(%rax), %rax	# _149->data[2].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L648	#,
	.loc 1 1761 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	64(%rax), %rax	# _151->data[2].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	je	.L649	#,
.L648:
	.loc 1 1762 0 is_stmt 1
	cmpq	%r14, %r12	# startpos, s
	jne	.L650	#,
	.loc 1 1763 0
	jmp	.L651	#
.L650:
	.loc 1 1765 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L651	#,
	.loc 1 1766 0
	jmp	.L642	#
.L651:
	.loc 1 1768 0
	cmpq	-104(%rbp), %r12	# end, s
	jb	.L652	#,
	.loc 1 1769 0
	jmp	.L629	#
.L652:
	.loc 1 1770 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$3145728, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L653	#,
	.loc 1 1771 0
	leaq	1(%r12), %rdx	#, D.19292
	movl	24(%rbp), %ecx	# flags, tmp458
	movq	-224(%rbp), %rax	# sv, tmp459
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# tmp458,
	movq	%r13, %rcx	# strend,
	movq	%rax, %rsi	# tmp459,
	movq	%rbx, %rdi	# prog,
	call	Perl_re_intuit_start	#
	movq	%rax, %r12	#, s
	.loc 1 1772 0
	testq	%r12, %r12	# s
	jne	.L654	#,
	.loc 1 1773 0
	jmp	.L629	#
.L653:
	.loc 1 1776 0
	addq	$1, %r12	#, s
	.loc 1 1777 0
	jmp	.L650	#
.L654:
	jmp	.L650	#
.L649:
	.loc 1 1779 0
	cmpq	%r14, %r12	# startpos, s
	jbe	.L655	#,
	.loc 1 1780 0
	subq	$1, %r12	#, s
	.loc 1 1781 0
	jmp	.L656	#
.L655:
	jmp	.L656	#
.L657:
	.loc 1 1782 0
	movq	%r12, %rax	# s, s.351
	leaq	1(%rax), %r12	#, s
	movzbl	(%rax), %eax	# *s.351_154, D.19291
	cmpb	$10, %al	#, D.19291
	jne	.L656	#,
	.loc 1 1783 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L656	#,
	.loc 1 1784 0
	jmp	.L642	#
.L656:
	.loc 1 1781 0 discriminator 1
	cmpq	-104(%rbp), %r12	# end, s
	jb	.L657	#,
.L644:
.LBE16:
	.loc 1 1789 0
	jmp	.L629	#
.L640:
	.loc 1 1790 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$8, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L658	#,
	.loc 1 1791 0
	movq	PL_reg_ganch(%rip), %rax	# PL_reg_ganch, PL_reg_ganch.352
	movq	%rax, %rsi	# PL_reg_ganch.352,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L659	#,
	.loc 1 1792 0
	jmp	.L642	#
.L659:
	.loc 1 1793 0
	jmp	.L629	#
.L658:
	.loc 1 1797 0
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _168->data[0].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L660	#,
	.loc 1 1797 0 is_stmt 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _170->data[0].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	je	.L661	#,
.L660:
	.loc 1 1797 0 discriminator 1
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$16, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L661	#,
.LBB17:
	.loc 1 1804 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L662	#,
	.loc 1 1804 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _174->data[0].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.353
	jmp	.L663	#
.L662:
	.loc 1 1804 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _177->data[0].substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.353
.L663:
	.loc 1 1804 0 discriminator 3
	testb	%al, %al	# iftmp.353
	je	.L664	#,
	.loc 1 1805 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L665	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# prog,
	call	S_to_utf8_substr	#
	jmp	.L664	#
.L665:
	.loc 1 1805 0 discriminator 2
	movq	%rbx, %rdi	# prog,
	call	S_to_byte_substr	#
.L664:
	.loc 1 1806 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L666	#,
	.loc 1 1806 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _180->data[0].utf8_substr, iftmp.354
	jmp	.L667	#
.L666:
	.loc 1 1806 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _182->data[0].substr, iftmp.354
.L667:
	.loc 1 1806 0 discriminator 3
	movq	(%rax), %rax	# iftmp.354_43->sv_any, D.19286
	movq	(%rax), %rax	# MEM[(struct XPV *)_184].xpv_pv, D.19292
	movzbl	(%rax), %eax	# *_185, tmp460
	movb	%al, -185(%rbp)	# tmp460, ch
	.loc 1 1808 0 is_stmt 1 discriminator 3
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L668	#,
	.loc 1 1809 0
	jmp	.L669	#
.L674:
	.loc 1 1810 0
	movzbl	(%r12), %eax	# *s_12, D.19291
	cmpb	-185(%rbp), %al	# ch, D.19291
	jne	.L670	#,
	.loc 1 1812 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L671	#,
	.loc 1 1812 0 is_stmt 0 discriminator 1
	jmp	.L642	#
.L671:
	.loc 1 1813 0 is_stmt 1
	movzbl	(%r12), %eax	# MEM[(U8 *)s_12], D.19281
	movzbl	%al, %eax	# D.19281, D.19282
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19281
	movzbl	%al, %eax	# D.19281, D.19285
	addq	%rax, %r12	# D.19285, s
	.loc 1 1814 0
	jmp	.L672	#
.L673:
	.loc 1 1815 0
	movzbl	(%r12), %eax	# MEM[(U8 *)s_10], D.19281
	movzbl	%al, %eax	# D.19281, D.19282
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19281
	movzbl	%al, %eax	# D.19281, D.19285
	addq	%rax, %r12	# D.19285, s
.L672:
	.loc 1 1814 0 discriminator 1
	cmpq	%r13, %r12	# strend, s
	jae	.L670	#,
	.loc 1 1814 0 is_stmt 0 discriminator 2
	movzbl	(%r12), %eax	# *s_10, D.19291
	cmpb	-185(%rbp), %al	# ch, D.19291
	je	.L673	#,
.L670:
	.loc 1 1817 0 is_stmt 1
	movzbl	(%r12), %eax	# MEM[(U8 *)s_11], D.19281
	movzbl	%al, %eax	# D.19281, D.19282
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19281
	movzbl	%al, %eax	# D.19281, D.19285
	addq	%rax, %r12	# D.19285, s
.L669:
	.loc 1 1809 0 discriminator 1
	cmpq	%r13, %r12	# strend, s
	jb	.L674	#,
.LBE17:
	.loc 1 1797 0
	jmp	.L682	#
.L668:
.LBB18:
	.loc 1 1821 0
	jmp	.L676	#
.L681:
	.loc 1 1822 0
	movzbl	(%r12), %eax	# *s_15, D.19291
	cmpb	-185(%rbp), %al	# ch, D.19291
	jne	.L677	#,
	.loc 1 1824 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L678	#,
	.loc 1 1824 0 is_stmt 0 discriminator 1
	jmp	.L642	#
.L678:
	.loc 1 1825 0 is_stmt 1
	addq	$1, %r12	#, s
	.loc 1 1826 0
	jmp	.L679	#
.L680:
	.loc 1 1827 0
	addq	$1, %r12	#, s
.L679:
	.loc 1 1826 0 discriminator 1
	cmpq	%r13, %r12	# strend, s
	jae	.L677	#,
	.loc 1 1826 0 is_stmt 0 discriminator 2
	movzbl	(%r12), %eax	# *s_13, D.19291
	cmpb	-185(%rbp), %al	# ch, D.19291
	je	.L680	#,
.L677:
	.loc 1 1829 0 is_stmt 1
	addq	$1, %r12	#, s
.L676:
	.loc 1 1821 0 discriminator 1
	cmpq	%r13, %r12	# strend, s
	jb	.L681	#,
.LBE18:
	.loc 1 1797 0
	jmp	.L682	#
.L661:
	.loc 1 1838 0
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _211->data[0].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L683	#,
	.loc 1 1839 0
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _213->data[0].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L683	#,
	.loc 1 1840 0
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	32(%rax), %rax	# _215->data[1].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L684	#,
	.loc 1 1840 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	40(%rax), %rax	# _217->data[1].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	je	.L685	#,
.L684:
	.loc 1 1841 0 is_stmt 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movl	28(%rax), %eax	# _219->data[1].max_offset, D.19282
	cltq
	movq	%r13, %rcx	# strend, strend.355
	movq	%r12, %rdx	# s, s.356
	subq	%rdx, %rcx	# s.356, D.19283
	movq	%rcx, %rdx	# D.19283, D.19283
	cmpq	%rdx, %rax	# D.19283, D.19283
	jge	.L685	#,
.L683:
.LBB19:
	.loc 1 1850 0
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _327->data[0].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L686	#,
	.loc 1 1850 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _329->data[0].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	je	.L687	#,
.L686:
	.loc 1 1851 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L688	#,
	.loc 1 1851 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _346->data[0].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.357
	jmp	.L689	#
.L688:
	.loc 1 1851 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _349->data[0].substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.357
.L689:
	.loc 1 1851 0 discriminator 3
	testb	%al, %al	# iftmp.357
	je	.L690	#,
	.loc 1 1852 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L691	#,
	.loc 1 1852 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# prog,
	call	S_to_utf8_substr	#
	jmp	.L690	#
.L691:
	.loc 1 1852 0 discriminator 2
	movq	%rbx, %rdi	# prog,
	call	S_to_byte_substr	#
.L690:
	.loc 1 1853 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L692	#,
	.loc 1 1853 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	16(%rax), %rax	# _352->data[0].utf8_substr, iftmp.358
	jmp	.L693	#
.L692:
	.loc 1 1853 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	8(%rax), %rax	# _354->data[0].substr, iftmp.358
.L693:
	.loc 1 1853 0 discriminator 3
	movq	%rax, -144(%rbp)	# iftmp.358, must
	.loc 1 1854 0 is_stmt 1 discriminator 3
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movl	(%rax), %eax	# _357->data[0].min_offset, tmp464
	movl	%eax, -172(%rbp)	# tmp464, back_min
	movl	-172(%rbp), %eax	# back_min, tmp465
	movl	%eax, -176(%rbp)	# tmp465, back_max
	jmp	.L694	#
.L687:
	.loc 1 1856 0
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L695	#,
	.loc 1 1856 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	40(%rax), %rax	# _331->data[1].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.359
	jmp	.L696	#
.L695:
	.loc 1 1856 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	32(%rax), %rax	# _334->data[1].substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.359
.L696:
	.loc 1 1856 0 discriminator 3
	testb	%al, %al	# iftmp.359
	je	.L697	#,
	.loc 1 1857 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L698	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# prog,
	call	S_to_utf8_substr	#
	jmp	.L697	#
.L698:
	.loc 1 1857 0 discriminator 2
	movq	%rbx, %rdi	# prog,
	call	S_to_byte_substr	#
.L697:
	.loc 1 1858 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L699	#,
	.loc 1 1858 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	40(%rax), %rax	# _337->data[1].utf8_substr, iftmp.360
	jmp	.L700	#
.L699:
	.loc 1 1858 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	32(%rax), %rax	# _339->data[1].substr, iftmp.360
.L700:
	.loc 1 1858 0 discriminator 3
	movq	%rax, -144(%rbp)	# iftmp.360, must
	.loc 1 1859 0 is_stmt 1 discriminator 3
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movl	28(%rax), %eax	# _342->data[1].max_offset, tmp466
	movl	%eax, -176(%rbp)	# tmp466, back_max
	.loc 1 1860 0 discriminator 3
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movl	24(%rax), %eax	# _344->data[1].min_offset, tmp467
	movl	%eax, -172(%rbp)	# tmp467, back_min
.L694:
	.loc 1 1862 0
	cmpq	$PL_sv_undef, -144(%rbp)	#, must
	jne	.L701	#,
	.loc 1 1864 0
	jmp	.L629	#
.L701:
	.loc 1 1866 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.362
	testb	%al, %al	# PL_reg_match_utf8.362
	je	.L702	#,
	.loc 1 1866 0 is_stmt 0 discriminator 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L703	#,
	movq	-144(%rbp), %rax	# must, tmp468
	movq	%rax, %rdi	# tmp468,
	call	Perl_sv_len_utf8	#
	jmp	.L704	#
.L703:
	.loc 1 1866 0 discriminator 2
	movq	-144(%rbp), %rax	# must, tmp469
	movq	(%rax), %rax	# must_30->sv_any, D.19286
	movq	8(%rax), %rax	# MEM[(struct XPV *)_363].xpv_cur, D.19294
.L704:
	.loc 1 1866 0 discriminator 1
	movq	-144(%rbp), %rdx	# must, tmp470
	movl	12(%rdx), %edx	# must_30->sv_flags, D.19280
	andl	$1073741824, %edx	#, D.19280
	testl	%edx, %edx	# D.19280
	setne	%dl	#, D.19297
	movzbl	%dl, %edx	# D.19297, D.19296
	subl	%edx, %eax	# D.19296, D.19296
	movl	%eax, %edx	# D.19296, D.19296
	movl	-172(%rbp), %eax	# back_min, back_min.364
	addl	%edx, %eax	# D.19296, D.19296
	negl	%eax	# D.19282
	movl	%eax, %ecx	# D.19282, D.19282
	movq	-208(%rbp), %rax	# strbeg, tmp471
	movq	%rax, %rdx	# tmp471,
	movl	%ecx, %esi	# D.19282,
	movq	%r13, %rdi	# strend,
	call	S_reghop3	#
	jmp	.L705	#
.L702:
	.loc 1 1866 0 discriminator 2
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L706	#,
	.loc 1 1866 0 discriminator 1
	movq	-144(%rbp), %rax	# must, tmp472
	movq	%rax, %rdi	# tmp472,
	call	Perl_sv_len_utf8	#
	jmp	.L707	#
.L706:
	.loc 1 1866 0 discriminator 2
	movq	-144(%rbp), %rax	# must, tmp473
	movq	(%rax), %rax	# must_30->sv_any, D.19286
	movq	8(%rax), %rax	# MEM[(struct XPV *)_378].xpv_cur, D.19294
.L707:
	.loc 1 1866 0 discriminator 3
	movq	-144(%rbp), %rdx	# must, tmp474
	movl	12(%rdx), %edx	# must_30->sv_flags, D.19280
	andl	$1073741824, %edx	#, D.19280
	testl	%edx, %edx	# D.19280
	setne	%dl	#, D.19297
	movzbl	%dl, %edx	# D.19297, D.19296
	subl	%edx, %eax	# D.19296, D.19296
	movl	%eax, %edx	# D.19296, D.19296
	movl	-172(%rbp), %eax	# back_min, back_min.366
	addl	%edx, %eax	# D.19296, D.19296
	negl	%eax	# D.19282
	cltq
	addq	%r13, %rax	# strend, iftmp.361
.L705:
	movq	%rax, -80(%rbp)	# iftmp.361, last
	.loc 1 1870 0 is_stmt 1 discriminator 3
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.367
	cmpq	%rax, %r12	# PL_bostr.367, s
	jbe	.L708	#,
	.loc 1 1871 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.369
	testb	%al, %al	# PL_reg_match_utf8.369
	je	.L709	#,
	.loc 1 1871 0 is_stmt 0 discriminator 1
	movl	$-1, %esi	#,
	movq	%r12, %rdi	# s,
	call	S_reghop	#
	jmp	.L710	#
.L709:
	.loc 1 1871 0 discriminator 2
	leaq	-1(%r12), %rax	#, iftmp.368
.L710:
	movq	%rax, -136(%rbp)	# iftmp.368, last1
	jmp	.L711	#
.L708:
	.loc 1 1873 0 is_stmt 1
	leaq	-1(%r12), %rax	#, tmp475
	movq	%rax, -136(%rbp)	# tmp475, last1
.L711:
	.loc 1 1877 0
	movl	$-1, -184(%rbp)	#, scream_pos
	.loc 1 1878 0
	movl	-168(%rbp), %eax	# end_shift, tmp476
	movl	%eax, -180(%rbp)	# tmp476, dontbother
	.loc 1 1879 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.371
	testb	%al, %al	# PL_reg_match_utf8.371
	je	.L712	#,
	.loc 1 1879 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# dontbother, tmp477
	negl	%eax	# D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r13, %rdi	# strend,
	call	S_reghop	#
	jmp	.L713	#
.L712:
	.loc 1 1879 0 discriminator 2
	movl	-180(%rbp), %eax	# dontbother, tmp478
	negl	%eax	# D.19282
	cltq
	addq	%r13, %rax	# strend, iftmp.370
.L713:
	.loc 1 1879 0 discriminator 3
	movq	%rax, %r13	# iftmp.370, strend
	.loc 1 1880 0 is_stmt 1 discriminator 3
	jmp	.L714	#
.L741:
	.loc 1 1888 0
	movl	24(%rbp), %eax	# flags, tmp479
	andl	$4, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L715	#,
	.loc 1 1888 0 is_stmt 0 discriminator 1
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$262144, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L715	#,
	.loc 1 1889 0 is_stmt 1
	movq	%r12, %rdx	# s, s.372
	movq	-224(%rbp), %rax	# sv, tmp480
	movq	(%rax), %rax	# sv_74(D)->sv_any, D.19286
	movq	(%rax), %rax	# MEM[(struct XPV *)_433].xpv_pv, D.19292
	subq	%rax, %rdx	# D.19283, D.19283
	movq	%rdx, %rax	# D.19283, D.19283
	movq	%rax, %rdx	# D.19283, D.19285
	movq	-208(%rbp), %rax	# strbeg, tmp481
	leaq	(%rdx,%rax), %r12	#, s
.L715:
	.loc 1 1891 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.374
	testb	%al, %al	# PL_reg_match_utf8.374
	je	.L716	#,
	.loc 1 1891 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# back_max, tmp482
	negl	%eax	# D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r12, %rdi	# s,
	call	S_reghop	#
	jmp	.L717	#
.L716:
	.loc 1 1891 0 discriminator 2
	movl	-176(%rbp), %eax	# back_max, tmp483
	negl	%eax	# D.19282
	cltq
	addq	%r12, %rax	# s, iftmp.373
.L717:
	.loc 1 1891 0 discriminator 3
	cmpq	-136(%rbp), %rax	# last1, iftmp.373
	jbe	.L718	#,
	.loc 1 1892 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.376
	testb	%al, %al	# PL_reg_match_utf8.376
	je	.L719	#,
	.loc 1 1892 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# back_min, tmp484
	negl	%eax	# D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r12, %rdi	# s,
	call	S_reghop	#
	jmp	.L720	#
.L719:
	.loc 1 1892 0 discriminator 2
	movl	-172(%rbp), %eax	# back_min, tmp485
	negl	%eax	# D.19282
	cltq
	addq	%r12, %rax	# s, iftmp.375
.L720:
	.loc 1 1892 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.375, last1
	.loc 1 1893 0 is_stmt 1 discriminator 3
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.378
	testb	%al, %al	# PL_reg_match_utf8.378
	je	.L721	#,
	.loc 1 1893 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# back_max, tmp486
	negl	%eax	# D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r12, %rdi	# s,
	call	S_reghop	#
	jmp	.L722	#
.L721:
	.loc 1 1893 0 discriminator 2
	movl	-176(%rbp), %eax	# back_max, tmp487
	negl	%eax	# D.19282
	cltq
	addq	%r12, %rax	# s, iftmp.377
.L722:
	.loc 1 1893 0 discriminator 3
	movq	%rax, %r12	# iftmp.377, s
	jmp	.L723	#
.L718:
.LBB20:
	.loc 1 1896 0 is_stmt 1
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.380
	cmpq	%rax, -136(%rbp)	# PL_bostr.380, last1
	jb	.L724	#,
	.loc 1 1896 0 is_stmt 0 discriminator 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.382
	testb	%al, %al	# PL_reg_match_utf8.382
	je	.L725	#,
	movq	-136(%rbp), %rax	# last1, tmp488
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp488,
	call	S_reghop	#
	jmp	.L727	#
.L725:
	.loc 1 1896 0 discriminator 2
	movq	-136(%rbp), %rax	# last1, tmp489
	addq	$1, %rax	#, iftmp.381
	jmp	.L727	#
.L724:
	movq	-136(%rbp), %rax	# last1, tmp490
	addq	$1, %rax	#, iftmp.379
.L727:
	.loc 1 1896 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.379, t
	.loc 1 1898 0 is_stmt 1 discriminator 3
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.384
	testb	%al, %al	# PL_reg_match_utf8.384
	je	.L728	#,
	.loc 1 1898 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# back_min, tmp491
	negl	%eax	# D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r12, %rdi	# s,
	call	S_reghop	#
	jmp	.L729	#
.L728:
	.loc 1 1898 0 discriminator 2
	movl	-172(%rbp), %eax	# back_min, tmp492
	negl	%eax	# D.19282
	cltq
	addq	%r12, %rax	# s, iftmp.383
.L729:
	.loc 1 1898 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.383, last1
	.loc 1 1899 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %r12	# t, s
.L723:
.LBE20:
	.loc 1 1901 0
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L730	#,
	.loc 1 1902 0
	jmp	.L731	#
.L733:
	.loc 1 1903 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L732	#,
	.loc 1 1904 0
	jmp	.L642	#
.L732:
	.loc 1 1905 0
	movzbl	(%r12), %eax	# MEM[(U8 *)s_19], D.19281
	movzbl	%al, %eax	# D.19281, D.19282
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19281
	movzbl	%al, %eax	# D.19281, D.19285
	addq	%rax, %r12	# D.19285, s
.L731:
	.loc 1 1902 0 discriminator 1
	cmpq	-136(%rbp), %r12	# last1, s
	jbe	.L733	#,
	jmp	.L714	#
.L730:
	.loc 1 1909 0
	jmp	.L734	#
.L736:
	.loc 1 1910 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L735	#,
	.loc 1 1911 0
	jmp	.L642	#
.L735:
	.loc 1 1912 0
	addq	$1, %r12	#, s
.L734:
	.loc 1 1909 0 discriminator 1
	cmpq	-136(%rbp), %r12	# last1, s
	jbe	.L736	#,
.L714:
	.loc 1 1880 0 discriminator 1
	cmpq	-80(%rbp), %r12	# last, s
	ja	.L737	#,
	.loc 1 1881 0 discriminator 2
	movl	24(%rbp), %eax	# flags, tmp494
	andl	$4, %eax	#, D.19280
	.loc 1 1880 0 discriminator 2
	testl	%eax, %eax	# D.19280
	je	.L738	#,
	.loc 1 1882 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.386
	testb	%al, %al	# PL_reg_match_utf8.386
	je	.L739	#,
	.loc 1 1882 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# back_min, tmp495
	movq	%r13, %rdx	# strend,
	movl	%eax, %esi	# tmp495,
	movq	%r12, %rdi	# s,
	call	S_reghop3	#
	jmp	.L740	#
.L739:
	.loc 1 1882 0 discriminator 2
	movl	-172(%rbp), %eax	# back_min, tmp496
	cltq
	addq	%r12, %rax	# s, D.19292
.L740:
	.loc 1 1882 0 discriminator 3
	movq	-208(%rbp), %rdx	# strbeg, strbeg.387
	subl	%edx, %eax	# D.19296, D.19296
	movl	%eax, %edx	# D.19296, D.19282
	.loc 1 1880 0 is_stmt 1 discriminator 3
	leaq	-184(%rbp), %rdi	#, tmp497
	movl	-168(%rbp), %ecx	# end_shift, tmp498
	movq	-144(%rbp), %rsi	# must, tmp499
	movq	-224(%rbp), %rax	# sv, tmp500
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp497,
	movq	%rax, %rdi	# tmp500,
	call	Perl_screaminstr	#
	movq	%rax, %r12	#, s
	testq	%r12, %r12	# s
	jne	.L741	#,
	.loc 1 1926 0
	jmp	.L629	#
.L738:
	.loc 1 1884 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.388
	testl	%eax, %eax	# PL_multiline.388
	setne	%al	#, D.19297
	movzbl	%al, %r15d	# D.19297, D.19280
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.390
	testb	%al, %al	# PL_reg_match_utf8.390
	je	.L742	#,
	.loc 1 1884 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# back_min, tmp501
	movq	%r13, %rdx	# strend,
	movl	%eax, %esi	# tmp501,
	movq	%r12, %rdi	# s,
	call	S_reghop3	#
	jmp	.L743	#
.L742:
	.loc 1 1884 0 discriminator 2
	movl	-172(%rbp), %eax	# back_min, tmp502
	cltq
	addq	%r12, %rax	# s, iftmp.389
.L743:
	.loc 1 1880 0 is_stmt 1
	movq	-144(%rbp), %rdx	# must, tmp503
	movl	%r15d, %ecx	# D.19280,
	movq	%r13, %rsi	# strend,
	movq	%rax, %rdi	# iftmp.389,
	call	Perl_fbm_instr	#
	movq	%rax, %r12	#, s
	testq	%r12, %r12	# s
	jne	.L741	#,
.L737:
	.loc 1 1926 0
	jmp	.L629	#
.L685:
.LBE19:
	.loc 1 1928 0
	movq	16(%rbx), %r15	# prog_84(D)->regstclass, c
	testq	%r15, %r15	# c
	je	.L744	#,
	.loc 1 1929 0
	cmpl	$0, -164(%rbp)	#, minlen
	je	.L745	#,
.LBB21:
	.loc 1 1930 0
	movq	16(%rbx), %rax	# prog_84(D)->regstclass, D.19293
	movzbl	1(%rax), %eax	# _226->type, D.19281
	movzbl	%al, %eax	# D.19281, tmp504
	movl	%eax, -160(%rbp)	# tmp504, op
	.loc 1 1932 0
	movl	-160(%rbp), %eax	# op, tmp506
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19281
	cmpb	$33, %al	#, D.19281
	je	.L745	#,
	.loc 1 1932 0 is_stmt 0 discriminator 1
	cmpl	$16, -160(%rbp)	#, op
	je	.L745	#,
	.loc 1 1933 0 is_stmt 1
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.392
	testb	%al, %al	# PL_reg_match_utf8.392
	je	.L746	#,
	.loc 1 1933 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, tmp507
	subl	-164(%rbp), %eax	# minlen, D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r13, %rdi	# strend,
	call	S_reghop	#
	jmp	.L747	#
.L746:
	.loc 1 1933 0 discriminator 2
	movl	$1, %eax	#, tmp508
	subl	-164(%rbp), %eax	# minlen, D.19282
	cltq
	addq	%r13, %rax	# strend, iftmp.391
.L747:
	.loc 1 1933 0 discriminator 3
	movq	%rax, %r13	# iftmp.391, strend
.L745:
.LBE21:
	.loc 1 1956 0 is_stmt 1
	movl	$0, %r9d	#,
	movq	%r14, %r8	# startpos,
	movq	%r13, %rcx	# strend,
	movq	%r12, %rdx	# s,
	movq	%r15, %rsi	# c,
	movq	%rbx, %rdi	# prog,
	call	S_find_byclass	#
	testq	%rax, %rax	# D.19292
	je	.L682	#,
	.loc 1 1957 0
	jmp	.L642	#
.L744:
	.loc 1 1961 0
	movl	$0, -180(%rbp)	#, dontbother
	.loc 1 1962 0
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	32(%rax), %rax	# _239->data[1].substr, D.19289
	testq	%rax, %rax	# D.19289
	jne	.L748	#,
	.loc 1 1962 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	40(%rax), %rax	# _241->data[1].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	je	.L749	#,
.L748:
.LBB22:
	.loc 1 1967 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L750	#,
	.loc 1 1967 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	40(%rax), %rax	# _243->data[1].utf8_substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.393
	jmp	.L751	#
.L750:
	.loc 1 1967 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	32(%rax), %rax	# _246->data[1].substr, D.19289
	testq	%rax, %rax	# D.19289
	sete	%al	#, iftmp.393
.L751:
	.loc 1 1967 0 discriminator 3
	testb	%al, %al	# iftmp.393
	je	.L752	#,
	.loc 1 1968 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L753	#,
	.loc 1 1968 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# prog,
	call	S_to_utf8_substr	#
	jmp	.L752	#
.L753:
	.loc 1 1968 0 discriminator 2
	movq	%rbx, %rdi	# prog,
	call	S_to_byte_substr	#
.L752:
	.loc 1 1969 0 is_stmt 1
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L754	#,
	.loc 1 1969 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	40(%rax), %rax	# _249->data[1].utf8_substr, iftmp.394
	jmp	.L755	#
.L754:
	.loc 1 1969 0 discriminator 2
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movq	32(%rax), %rax	# _251->data[1].substr, iftmp.394
.L755:
	.loc 1 1969 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.394, float_real
	.loc 1 1971 0 is_stmt 1 discriminator 3
	movl	24(%rbp), %eax	# flags, tmp509
	andl	$4, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L756	#,
	.loc 1 1972 0
	movq	%r12, %rdx	# s, s.395
	movq	-208(%rbp), %rax	# strbeg, strbeg.396
	subq	%rax, %rdx	# strbeg.396, D.19283
	movq	%rdx, %rax	# D.19283, D.19283
	movl	%eax, %edx	# D.19283, D.19282
	leaq	-184(%rbp), %rdi	#, tmp510
	movl	-168(%rbp), %ecx	# end_shift, tmp511
	movq	-96(%rbp), %rsi	# float_real, tmp512
	movq	-224(%rbp), %rax	# sv, tmp513
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp510,
	movq	%rax, %rdi	# tmp513,
	call	Perl_screaminstr	#
	movq	%rax, -128(%rbp)	# tmp514, last
	.loc 1 1974 0
	cmpq	$0, -128(%rbp)	#, last
	jne	.L757	#,
	.loc 1 1975 0
	movq	-152(%rbp), %rax	# scream_olds, tmp515
	movq	%rax, -128(%rbp)	# tmp515, last
	jmp	.L759	#
.L757:
	.loc 1 1977 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$262144, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L759	#,
	.loc 1 1978 0
	movq	%r12, %rdx	# s, s.397
	movq	-224(%rbp), %rax	# sv, tmp516
	movq	(%rax), %rax	# sv_74(D)->sv_any, D.19286
	movq	(%rax), %rax	# MEM[(struct XPV *)_264].xpv_pv, D.19292
	subq	%rax, %rdx	# D.19283, D.19283
	movq	%rdx, %rax	# D.19283, D.19283
	movq	%rax, %rdx	# D.19283, D.19285
	movq	-208(%rbp), %rax	# strbeg, tmp517
	leaq	(%rdx,%rax), %r12	#, s
	jmp	.L759	#
.L756:
.LBB23:
	.loc 1 1982 0
	movq	-96(%rbp), %rax	# float_real, tmp518
	movl	12(%rax), %eax	# float_real_253->sv_flags, D.19280
	andl	$262144, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L760	#,
	.loc 1 1982 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# float_real, tmp519
	movq	(%rax), %rax	# float_real_253->sv_any, D.19286
	movq	8(%rax), %rax	# MEM[(struct XPV *)_272].xpv_cur, len.399
	movq	%rax, -64(%rbp)	# len.399, len
	movq	-96(%rbp), %rax	# float_real, tmp520
	movq	(%rax), %rax	# float_real_253->sv_any, D.19286
	movq	(%rax), %rax	# MEM[(struct XPV *)_274].xpv_pv, iftmp.398
	jmp	.L761	#
.L760:
	.loc 1 1982 0 discriminator 2
	leaq	-64(%rbp), %rcx	#, tmp521
	movq	-96(%rbp), %rax	# float_real, tmp522
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp521,
	movq	%rax, %rdi	# tmp522,
	call	Perl_sv_2pv_flags	#
.L761:
	.loc 1 1982 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.398, little
	.loc 1 1984 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# float_real, tmp523
	movl	12(%rax), %eax	# float_real_253->sv_flags, D.19280
	andl	$1073741824, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L762	#,
	.loc 1 1985 0
	movq	-64(%rbp), %rax	# len, len.400
	leaq	-1(%rax), %rdx	#, D.19294
	movq	-64(%rbp), %rax	# len, len.401
	movl	$1, %ecx	#, tmp524
	subq	%rax, %rcx	# len.401, D.19285
	movq	%rcx, %rax	# D.19285, D.19285
	leaq	0(%r13,%rax), %rcx	#, D.19292
	movq	-88(%rbp), %rax	# little, tmp525
	movq	%rax, %rsi	# tmp525,
	movq	%rcx, %rdi	# D.19292,
	call	memcmp	#
	testl	%eax, %eax	# D.19282
	jne	.L763	#,
	.loc 1 1986 0
	movq	-64(%rbp), %rax	# len, len.402
	movl	$1, %edx	#, tmp526
	subq	%rax, %rdx	# len.402, D.19285
	movq	%rdx, %rax	# D.19285, D.19285
	addq	%r13, %rax	# strend, tmp527
	movq	%rax, -128(%rbp)	# tmp527, last
	jmp	.L759	#
.L763:
	.loc 1 1987 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.403
	testl	%eax, %eax	# PL_multiline.403
	jne	.L765	#,
	.loc 1 1988 0
	movq	-64(%rbp), %rdx	# len, len.405
	movq	-64(%rbp), %rax	# len, len.406
	negq	%rax	# D.19285
	leaq	0(%r13,%rax), %rcx	#, D.19292
	movq	-88(%rbp), %rax	# little, tmp528
	movq	%rax, %rsi	# tmp528,
	movq	%rcx, %rdi	# D.19292,
	call	memcmp	#
	.loc 1 1989 0
	testl	%eax, %eax	# D.19282
	jne	.L766	#,
	.loc 1 1989 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# len, len.407
	negq	%rax	# D.19285
	addq	%r13, %rax	# strend, iftmp.404
	jmp	.L767	#
.L766:
	.loc 1 1989 0 discriminator 2
	movl	$0, %eax	#, iftmp.404
.L767:
	.loc 1 1988 0 is_stmt 1 discriminator 2
	movq	%rax, -128(%rbp)	# iftmp.404, last
	jmp	.L759	#
.L765:
	.loc 1 1991 0
	nop
.L762:
	.loc 1 1994 0
	movq	-64(%rbp), %rax	# len, len.408
	testq	%rax, %rax	# len.408
	je	.L768	#,
	.loc 1 1995 0
	movq	-64(%rbp), %rdx	# len, len.409
	movq	-88(%rbp), %rax	# little, tmp529
	addq	%rax, %rdx	# tmp529, D.19295
	movq	-88(%rbp), %rax	# little, tmp530
	movq	%rdx, %rcx	# D.19295,
	movq	%rax, %rdx	# tmp530,
	movq	%r13, %rsi	# strend,
	movq	%r12, %rdi	# s,
	call	Perl_rninstr	#
	movq	%rax, -128(%rbp)	# tmp531, last
	jmp	.L759	#
.L768:
	.loc 1 1997 0
	movq	%r13, -128(%rbp)	# strend, last
.L759:
.LBE23:
	.loc 1 2000 0
	cmpq	$0, -128(%rbp)	#, last
	jne	.L769	#,
	.loc 1 2004 0
	jmp	.L629	#
.L769:
	.loc 1 2006 0
	movq	%r13, %rdx	# strend, strend.410
	movq	-128(%rbp), %rax	# last, last.411
	subq	%rax, %rdx	# last.411, D.19283
	movq	%rdx, %rax	# D.19283, D.19283
	movl	%eax, %edx	# D.19283, D.19296
	movq	24(%rbx), %rax	# prog_84(D)->substrs, D.19288
	movl	24(%rax), %eax	# _309->data[1].min_offset, D.19282
	addl	%edx, %eax	# D.19296, D.19296
	movl	%eax, -180(%rbp)	# D.19296, dontbother
.L749:
.LBE22:
	.loc 1 2008 0
	cmpl	$0, -164(%rbp)	#, minlen
	je	.L770	#,
	.loc 1 2008 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# dontbother, tmp532
	cmpl	-164(%rbp), %eax	# minlen, tmp532
	jge	.L770	#,
	.loc 1 2009 0 is_stmt 1
	movl	-164(%rbp), %eax	# minlen, tmp536
	subl	$1, %eax	#, tmp535
	movl	%eax, -180(%rbp)	# tmp535, dontbother
.L770:
	.loc 1 2010 0
	movl	-180(%rbp), %eax	# dontbother, tmp537
	cltq
	negq	%rax	# D.19285
	addq	%rax, %r13	# D.19285, strend
	.loc 1 2012 0
	cmpb	$0, -186(%rbp)	#, do_utf8
	je	.L771	#,
.L775:
	.loc 1 2014 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L772	#,
	.loc 1 2015 0
	jmp	.L642	#
.L772:
	.loc 1 2016 0
	cmpq	%r13, %r12	# strend, s
	jb	.L773	#,
	.loc 1 2017 0
	nop
	jmp	.L682	#
.L773:
	.loc 1 2018 0
	movzbl	(%r12), %eax	# MEM[(U8 *)s_25], D.19281
	movzbl	%al, %eax	# D.19281, D.19282
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19281
	movzbl	%al, %eax	# D.19281, D.19285
	addq	%rax, %r12	# D.19285, s
	.loc 1 2019 0
	jmp	.L775	#
.L771:
	.loc 1 2023 0
	movq	%r12, %rsi	# s,
	movq	%rbx, %rdi	# prog,
	call	S_regtry	#
	testl	%eax, %eax	# D.19282
	je	.L776	#,
	.loc 1 2024 0
	jmp	.L642	#
.L776:
	.loc 1 2025 0
	movq	%r12, %rax	# s, s.412
	leaq	1(%rax), %r12	#, s
	cmpq	%r13, %rax	# strend, s.412
	jb	.L771	#,
.L682:
	.loc 1 2030 0
	jmp	.L629	#
.L642:
	.loc 1 2033 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.414
	andl	$1, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L777	#,
	.loc 1 2033 0 is_stmt 0 discriminator 1
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	orl	$524288, %eax	#, D.19280
	movl	%eax, 92(%rbx)	# D.19280, prog_84(D)->reganch
	jmp	.L778	#
.L777:
	.loc 1 2033 0 discriminator 2
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$-524289, %eax	#, D.19280
	movl	%eax, 92(%rbx)	# D.19280, prog_84(D)->reganch
.L778:
	.loc 1 2035 0 is_stmt 1
	movl	PL_reg_eval_set(%rip), %eax	# PL_reg_eval_set, PL_reg_eval_set.415
	testl	%eax, %eax	# PL_reg_eval_set.415
	je	.L779	#,
	.loc 1 2037 0
	movq	PL_replgv(%rip), %rax	# PL_replgv, PL_replgv.416
	movq	(%rax), %rax	# PL_replgv.416_491->sv_any, D.19278
	movq	56(%rax), %rax	# _492->xgv_gp, D.19279
	movq	(%rax), %rax	# _493->gp_sv, D.19289
	cmpq	-120(%rbp), %rax	# oreplsv, D.19289
	je	.L780	#,
	.loc 1 2038 0
	movq	PL_replgv(%rip), %rax	# PL_replgv, PL_replgv.417
	movq	(%rax), %rax	# PL_replgv.417_495->sv_any, D.19278
	movq	56(%rax), %rax	# _496->xgv_gp, D.19279
	movq	(%rax), %rcx	# _497->gp_sv, D.19289
	movq	-120(%rbp), %rax	# oreplsv, tmp539
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.19289,
	movq	%rax, %rdi	# tmp539,
	call	Perl_sv_setsv_flags	#
.L780:
	.loc 1 2041 0
	movl	$0, %edi	#,
	call	restore_pos	#
.L779:
	.loc 1 2045 0
	movl	24(%rbp), %eax	# flags, tmp540
	andl	$16, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	jne	.L781	#,
	.loc 1 2046 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$262144, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L782	#,
	.loc 1 2047 0
	movq	48(%rbx), %rax	# prog_84(D)->subbeg, D.19292
	movq	%rax, %rdi	# D.19292,
	call	Perl_safesysfree	#
	.loc 1 2048 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	andl	$-262145, %eax	#, D.19280
	movl	%eax, 92(%rbx)	# D.19280, prog_84(D)->reganch
.L782:
	.loc 1 2050 0
	movl	24(%rbp), %eax	# flags, tmp541
	andl	$1, %eax	#, D.19280
	testl	%eax, %eax	# D.19280
	je	.L783	#,
.LBB24:
	.loc 1 2051 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.418
	movq	%rax, %rdx	# PL_regeol.418, PL_regeol.419
	movq	%r14, %rax	# startpos, startpos.420
	subq	%rax, %rdx	# startpos.420, D.19283
	movq	%rdx, %rax	# D.19283, D.19283
	movl	%eax, %edx	# D.19283, D.19296
	movq	-200(%rbp), %rcx	# stringarg, stringarg.421
	movq	-208(%rbp), %rax	# strbeg, strbeg.422
	subq	%rax, %rcx	# strbeg.422, D.19283
	movq	%rcx, %rax	# D.19283, D.19283
	addl	%edx, %eax	# D.19296, D.19296
	movl	%eax, -156(%rbp)	# D.19296, i
	.loc 1 2053 0
	movl	-156(%rbp), %edx	# i, tmp542
	movq	-208(%rbp), %rax	# strbeg, tmp543
	movl	%edx, %esi	# tmp542,
	movq	%rax, %rdi	# tmp543,
	call	Perl_savepvn	#
	movq	%rax, %r12	#, s
	.loc 1 2054 0
	movq	%r12, 48(%rbx)	# s, prog_84(D)->subbeg
	.loc 1 2055 0
	movl	-156(%rbp), %eax	# i, tmp544
	movl	%eax, 64(%rbx)	# tmp544, prog_84(D)->sublen
	.loc 1 2056 0
	movl	92(%rbx), %eax	# prog_84(D)->reganch, D.19280
	orl	$262144, %eax	#, D.19280
	movl	%eax, 92(%rbx)	# D.19280, prog_84(D)->reganch
.LBE24:
	jmp	.L781	#
.L783:
	.loc 1 2059 0
	movq	-208(%rbp), %rax	# strbeg, tmp545
	movq	%rax, 48(%rbx)	# tmp545, prog_84(D)->subbeg
	.loc 1 2060 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.423
	movq	%rax, %rdx	# PL_regeol.423, PL_regeol.424
	movq	-208(%rbp), %rax	# strbeg, strbeg.425
	subq	%rax, %rdx	# strbeg.425, D.19283
	movq	%rdx, %rax	# D.19283, D.19283
	movl	%eax, 64(%rbx)	# D.19282, prog_84(D)->sublen
.L781:
	.loc 1 2064 0
	movl	$1, %eax	#, D.19277
	jmp	.L785	#
.L629:
	.loc 1 2069 0
	movl	PL_reg_eval_set(%rip), %eax	# PL_reg_eval_set, PL_reg_eval_set.426
	testl	%eax, %eax	# PL_reg_eval_set.426
	je	.L784	#,
	.loc 1 2070 0
	movl	$0, %edi	#,
	call	restore_pos	#
.L784:
	.loc 1 2071 0
	movl	$0, %eax	#, D.19277
.L785:
	.loc 1 2072 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_regexec_flags, .-Perl_regexec_flags
	.type	S_regtry, @function
S_regtry:
.LFB10:
	.loc 1 2079 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# prog, prog
	movq	%rsi, -64(%rbp)	# startpos, startpos
	.loc 1 2088 0
	movq	-56(%rbp), %rax	# prog, tmp175
	movl	92(%rax), %eax	# prog_6(D)->reganch, D.19302
	andl	$1024, %eax	#, D.19302
	testl	%eax, %eax	# D.19302
	je	.L787	#,
	.loc 1 2088 0 is_stmt 0 discriminator 1
	movl	PL_reg_eval_set(%rip), %eax	# PL_reg_eval_set, PL_reg_eval_set.427
	testl	%eax, %eax	# PL_reg_eval_set.427
	jne	.L787	#,
.LBB25:
	.loc 1 2091 0 is_stmt 1
	movl	$1, PL_reg_eval_set(%rip)	#, PL_reg_eval_set
	.loc 1 2096 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.428
	movq	8(%rax), %rcx	# PL_curstackinfo.428_10->si_cxstack, D.19303
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.429
	movl	16(%rax), %eax	# PL_curstackinfo.429_12->si_cxix, D.19304
	movslq	%eax, %rdx	# D.19304, D.19305
	movq	%rdx, %rax	# D.19305, tmp176
	salq	$3, %rax	#, tmp176
	addq	%rdx, %rax	# D.19305, tmp176
	salq	$4, %rax	#, tmp177
	addq	%rcx, %rax	# D.19303, D.19303
	addq	$8, %rax	#, D.19306
	movq	%rax, %rdi	# D.19306,
	call	Perl_save_I32	#
	.loc 1 2097 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.430
	movq	8(%rax), %rcx	# PL_curstackinfo.430_18->si_cxstack, D.19303
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.431
	movl	16(%rax), %eax	# PL_curstackinfo.431_20->si_cxix, D.19304
	movslq	%eax, %rdx	# D.19304, D.19305
	movq	%rdx, %rax	# D.19305, tmp178
	salq	$3, %rax	#, tmp178
	addq	%rdx, %rax	# D.19305, tmp178
	salq	$4, %rax	#, tmp179
	leaq	(%rcx,%rax), %rdx	#, D.19303
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.432
	movq	%rax, %rcx	# PL_stack_sp.432, PL_stack_sp.433
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.434
	subq	%rax, %rcx	# PL_stack_base.435, D.19307
	movq	%rcx, %rax	# D.19307, D.19307
	sarq	$3, %rax	#, tmp180
	movl	%eax, 8(%rdx)	# D.19304, _24->cx_u.cx_blk.blku_oldsp
	.loc 1 2099 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.436
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.436, PL_tmps_floor
	.loc 1 2104 0
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.437
	testq	%rax, %rax	# PL_reg_sv.437
	je	.L788	#,
	.loc 1 2106 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.438
	movq	(%rax), %rax	# PL_defgv.438_34->sv_any, D.19308
	movq	56(%rax), %rax	# _35->xgv_gp, D.19309
	movq	(%rax), %rdx	# _36->gp_sv, D.19310
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.439
	cmpq	%rax, %rdx	# PL_reg_sv.439, D.19310
	je	.L789	#,
	.loc 1 2108 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.440
	movq	(%rax), %rax	# PL_defgv.440_39->sv_any, D.19308
	movq	56(%rax), %rax	# _40->xgv_gp, D.19309
	movq	%rax, %rdi	# D.19311,
	call	Perl_save_sptr	#
	.loc 1 2109 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.441
	movq	(%rax), %rax	# PL_defgv.441_43->sv_any, D.19308
	movq	56(%rax), %rax	# _44->xgv_gp, D.19309
	movq	PL_reg_sv(%rip), %rdx	# PL_reg_sv, PL_reg_sv.442
	movq	%rdx, (%rax)	# PL_reg_sv.442, _45->gp_sv
.L789:
	.loc 1 2112 0
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.443
	movl	12(%rax), %eax	# PL_reg_sv.443_47->sv_flags, D.19302
	movzbl	%al, %eax	# D.19302, D.19302
	cmpl	$6, %eax	#, D.19302
	jbe	.L790	#,
	.loc 1 2112 0 is_stmt 0 discriminator 1
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.444
	movq	(%rax), %rax	# PL_reg_sv.444_50->sv_any, D.19312
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_51].xmg_magic, D.19313
	testq	%rax, %rax	# D.19313
	je	.L790	#,
	.loc 1 2113 0 is_stmt 1 discriminator 1
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.445
	.loc 1 2112 0 discriminator 1
	movl	$103, %esi	#,
	movq	%rax, %rdi	# PL_reg_sv.445,
	call	Perl_mg_find	#
	movq	%rax, -40(%rbp)	# tmp181, mg
	cmpq	$0, -40(%rbp)	#, mg
	jne	.L791	#,
.L790:
	.loc 1 2115 0
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.446
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$103, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_reg_sv.446,
	call	Perl_sv_magic	#
	.loc 1 2117 0
	movq	PL_reg_sv(%rip), %rax	# PL_reg_sv, PL_reg_sv.447
	movl	$103, %esi	#,
	movq	%rax, %rdi	# PL_reg_sv.447,
	call	Perl_mg_find	#
	movq	%rax, -40(%rbp)	# tmp182, mg
	.loc 1 2118 0
	movq	-40(%rbp), %rax	# mg, tmp183
	movl	$-1, 40(%rax)	#, mg_57->mg_len
.L791:
	.loc 1 2120 0
	movq	-40(%rbp), %rax	# mg, tmp184
	movq	%rax, PL_reg_magic(%rip)	# tmp184, PL_reg_magic
	.loc 1 2121 0
	movq	-40(%rbp), %rax	# mg, tmp185
	movl	40(%rax), %eax	# mg_4->mg_len, PL_reg_oldpos.448
	movl	%eax, PL_reg_oldpos(%rip)	# PL_reg_oldpos.448, PL_reg_oldpos
	.loc 1 2122 0
	movl	$0, %esi	#,
	movl	$restore_pos, %edi	#,
	call	Perl_save_destructor_x	#
.L788:
	.loc 1 2124 0
	movq	PL_reg_curpm(%rip), %rax	# PL_reg_curpm, PL_reg_curpm.449
	testq	%rax, %rax	# PL_reg_curpm.449
	jne	.L792	#,
	.loc 1 2125 0
	movl	$112, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_reg_curpm(%rip)	# PL_reg_curpm.450, PL_reg_curpm
	movq	PL_reg_curpm(%rip), %rax	# PL_reg_curpm, PL_reg_curpm.451
	movl	$112, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_reg_curpm.451,
	call	memset	#
.L792:
	.loc 1 2137 0
	movq	PL_reg_curpm(%rip), %rax	# PL_reg_curpm, PL_reg_curpm.452
	movq	-56(%rbp), %rdx	# prog, tmp186
	movq	%rdx, 80(%rax)	# tmp186, PL_reg_curpm.452_62->op_pmregexp
	.loc 1 2138 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.453
	movq	%rax, PL_reg_oldcurpm(%rip)	# PL_curpm.453, PL_reg_oldcurpm
	.loc 1 2139 0
	movq	PL_reg_curpm(%rip), %rax	# PL_reg_curpm, PL_reg_curpm.454
	movq	%rax, PL_curpm(%rip)	# PL_reg_curpm.454, PL_curpm
	.loc 1 2140 0
	movq	-56(%rbp), %rax	# prog, tmp187
	movl	92(%rax), %eax	# prog_6(D)->reganch, D.19302
	andl	$262144, %eax	#, D.19302
	testl	%eax, %eax	# D.19302
	je	.L793	#,
	.loc 1 2144 0
	movq	-56(%rbp), %rax	# prog, tmp188
	movq	48(%rax), %rax	# prog_6(D)->subbeg, PL_reg_oldsaved.455
	movq	%rax, PL_reg_oldsaved(%rip)	# PL_reg_oldsaved.455, PL_reg_oldsaved
	.loc 1 2145 0
	movq	-56(%rbp), %rax	# prog, tmp189
	movl	64(%rax), %eax	# prog_6(D)->sublen, D.19304
	cltq
	movq	%rax, PL_reg_oldsavedlen(%rip)	# PL_reg_oldsavedlen.456, PL_reg_oldsavedlen
	.loc 1 2146 0
	movq	-56(%rbp), %rax	# prog, tmp190
	movl	92(%rax), %eax	# prog_6(D)->reganch, D.19302
	andl	$-262145, %eax	#, D.19302
	movl	%eax, %edx	# D.19302, D.19302
	movq	-56(%rbp), %rax	# prog, tmp191
	movl	%edx, 92(%rax)	# D.19302, prog_6(D)->reganch
	jmp	.L794	#
.L793:
	.loc 1 2149 0
	movq	$0, PL_reg_oldsaved(%rip)	#, PL_reg_oldsaved
.L794:
	.loc 1 2150 0
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.457
	movq	-56(%rbp), %rax	# prog, tmp192
	movq	%rdx, 48(%rax)	# PL_bostr.457, prog_6(D)->subbeg
	.loc 1 2151 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.458
	movq	%rax, %rdx	# PL_regeol.458, PL_regeol.459
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.460
	subq	%rax, %rdx	# PL_bostr.461, D.19307
	movq	%rdx, %rax	# D.19307, D.19307
	movl	%eax, %edx	# D.19307, D.19304
	movq	-56(%rbp), %rax	# prog, tmp193
	movl	%edx, 64(%rax)	# D.19304, prog_6(D)->sublen
.L787:
.LBE25:
	.loc 1 2153 0
	movq	-56(%rbp), %rax	# prog, tmp194
	movq	(%rax), %rax	# prog_6(D)->startp, D.19306
	movq	-64(%rbp), %rcx	# startpos, startpos.462
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.463
	subq	%rdx, %rcx	# PL_bostr.464, D.19307
	movq	%rcx, %rdx	# D.19307, D.19307
	movl	%edx, (%rax)	# D.19304, *_79
	.loc 1 2154 0
	movq	-64(%rbp), %rax	# startpos, tmp195
	movq	%rax, PL_reginput(%rip)	# tmp195, PL_reginput
	.loc 1 2155 0
	movq	-56(%rbp), %rax	# prog, tmp196
	movq	(%rax), %rax	# prog_6(D)->startp, PL_regstartp.465
	movq	%rax, PL_regstartp(%rip)	# PL_regstartp.465, PL_regstartp
	.loc 1 2156 0
	movq	-56(%rbp), %rax	# prog, tmp197
	movq	8(%rax), %rax	# prog_6(D)->endp, PL_regendp.466
	movq	%rax, PL_regendp(%rip)	# PL_regendp.466, PL_regendp
	.loc 1 2157 0
	movq	-56(%rbp), %rax	# prog, tmp198
	addq	$84, %rax	#, PL_reglastparen.467
	movq	%rax, PL_reglastparen(%rip)	# PL_reglastparen.467, PL_reglastparen
	.loc 1 2158 0
	movq	-56(%rbp), %rax	# prog, tmp199
	addq	$88, %rax	#, PL_reglastcloseparen.468
	movq	%rax, PL_reglastcloseparen(%rip)	# PL_reglastcloseparen.468, PL_reglastcloseparen
	.loc 1 2159 0
	movq	-56(%rbp), %rax	# prog, tmp200
	movl	$0, 84(%rax)	#, prog_6(D)->lastparen
	.loc 1 2160 0
	movq	-56(%rbp), %rax	# prog, tmp201
	movl	$0, 88(%rax)	#, prog_6(D)->lastcloseparen
	.loc 1 2161 0
	movl	$0, PL_regsize(%rip)	#, PL_regsize
	.loc 1 2163 0
	movq	-56(%rbp), %rax	# prog, tmp202
	movl	80(%rax), %edx	# prog_6(D)->nparens, D.19302
	movl	PL_reg_start_tmpl(%rip), %eax	# PL_reg_start_tmpl, PL_reg_start_tmpl.469
	cmpl	%eax, %edx	# PL_reg_start_tmpl.469, D.19302
	jb	.L795	#,
	.loc 1 2164 0
	movq	-56(%rbp), %rax	# prog, tmp203
	movl	80(%rax), %edx	# prog_6(D)->nparens, D.19302
	movl	%edx, %eax	# D.19302, tmp204
	addl	%eax, %eax	# tmp204
	addl	%edx, %eax	# D.19302, D.19302
	shrl	%eax	# D.19302
	addl	$3, %eax	#, PL_reg_start_tmpl.470
	movl	%eax, PL_reg_start_tmpl(%rip)	# PL_reg_start_tmpl.470, PL_reg_start_tmpl
	.loc 1 2165 0
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.471
	testq	%rax, %rax	# PL_reg_start_tmp.471
	je	.L796	#,
	.loc 1 2166 0
	movl	PL_reg_start_tmpl(%rip), %eax	# PL_reg_start_tmpl, PL_reg_start_tmpl.472
	movl	%eax, %eax	# PL_reg_start_tmpl.472, D.19305
	leaq	0(,%rax,8), %rdx	#, D.19305
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.473
	movq	%rdx, %rsi	# D.19305,
	movq	%rax, %rdi	# PL_reg_start_tmp.473,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_reg_start_tmp(%rip)	# PL_reg_start_tmp.474, PL_reg_start_tmp
	jmp	.L795	#
.L796:
	.loc 1 2168 0
	movl	PL_reg_start_tmpl(%rip), %eax	# PL_reg_start_tmpl, PL_reg_start_tmpl.475
	movl	%eax, %eax	# PL_reg_start_tmpl.475, D.19305
	salq	$3, %rax	#, D.19305
	movq	%rax, %rdi	# D.19305,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_reg_start_tmp(%rip)	# PL_reg_start_tmp.476, PL_reg_start_tmp
.L795:
	.loc 1 2186 0
	movq	-56(%rbp), %rax	# prog, tmp205
	movq	(%rax), %rbx	# prog_6(D)->startp, sp
	.loc 1 2187 0
	movq	-56(%rbp), %rax	# prog, tmp206
	movq	8(%rax), %r12	# prog_6(D)->endp, ep
	.loc 1 2188 0
	movq	-56(%rbp), %rax	# prog, tmp207
	movl	80(%rax), %eax	# prog_6(D)->nparens, D.19302
	testl	%eax, %eax	# D.19302
	je	.L797	#,
	.loc 1 2189 0
	movq	-56(%rbp), %rax	# prog, tmp208
	movl	80(%rax), %eax	# prog_6(D)->nparens, D.19302
	movl	%eax, %r13d	# D.19302, i
	jmp	.L798	#
.L799:
	.loc 1 2190 0 discriminator 2
	addq	$4, %rbx	#, sp
	movl	$-1, (%rbx)	#, *sp_114
	.loc 1 2191 0 discriminator 2
	addq	$4, %r12	#, ep
	movl	$-1, (%r12)	#, *ep_115
	.loc 1 2189 0 discriminator 2
	subl	$1, %r13d	#, i
.L798:
	.loc 1 2189 0 is_stmt 0 discriminator 1
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.477
	movl	(%rax), %eax	# *PL_reglastparen.477_111, D.19302
	cmpl	%r13d, %eax	# i, D.19304
	jl	.L799	#,
.L797:
	.loc 1 2195 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp209
	movl	%eax, -44(%rbp)	# tmp209, lastcp
	.loc 1 2196 0
	movq	-56(%rbp), %rax	# prog, tmp210
	addq	$100, %rax	#, D.19314
	movq	%rax, %rdi	# D.19314,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19304
	je	.L800	#,
	.loc 1 2197 0
	movq	-56(%rbp), %rax	# prog, tmp211
	movq	8(%rax), %rax	# prog_6(D)->endp, D.19306
	movq	PL_reginput(%rip), %rdx	# PL_reginput, PL_reginput.478
	movq	%rdx, %rcx	# PL_reginput.478, PL_reginput.479
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.480
	subq	%rdx, %rcx	# PL_bostr.481, D.19307
	movq	%rcx, %rdx	# D.19307, D.19307
	movl	%edx, (%rax)	# D.19304, *_120
	.loc 1 2198 0
	movl	$1, %eax	#, D.19301
	jmp	.L801	#
.L800:
	.loc 1 2200 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.482
	cmpl	-44(%rbp), %eax	# lastcp, PL_savestack_ix.482
	jle	.L802	#,
	.loc 1 2200 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# lastcp, tmp212
	movl	%eax, %edi	# tmp212,
	call	Perl_leave_scope	#
.L802:
	.loc 1 2201 0 is_stmt 1
	movl	$0, %eax	#, D.19301
.L801:
	.loc 1 2202 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	S_regtry, .-S_regtry
	.section	.rodata
.LC7:
	.string	"~"
	.align 8
.LC9:
	.string	"Complex regular subexpression recursion"
.LC10:
	.string	"%s limit (%d) exceeded"
.LC11:
	.string	"%lx %d\n"
.LC12:
	.string	"regexp memory corruption"
.LC13:
	.string	"corrupted regexp pointers"
	.align 8
.LC14:
	.string	"regexp unwind memory corruption"
	.text
	.type	S_regmatch, @function
S_regmatch:
.LFB11:
	.loc 1 2297 0
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
	subq	$600, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -600(%rbp)	# prog, prog
	.loc 1 2297 0
	movq	%fs:40, %rax	#, tmp2613
	movq	%rax, -56(%rbp)	# tmp2613, D.19347
	xorl	%eax, %eax	# tmp2613
	.loc 1 2304 0
	movl	$0, %r14d	#, ln
	.loc 1 2305 0
	movq	$0, -616(%rbp)	#, %sfp
	.loc 1 2306 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	.loc 1 2307 0
	movl	$0, -604(%rbp)	#, %sfp
	movl	$0, -620(%rbp)	#, %sfp
	.loc 1 2308 0
	movl	$0, -592(%rbp)	#, minmod
	movl	$0, -588(%rbp)	#, sw
	movl	$0, -584(%rbp)	#, logical
	.loc 1 2309 0
	movl	$0, -580(%rbp)	#, unwind
	.loc 1 2313 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, do_utf8
	movb	%al, -605(%rbp)	# do_utf8, %sfp
	.loc 1 2325 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_254], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2326 0
	movq	-600(%rbp), %r12	# prog, scan
	.loc 1 2327 0
	jmp	.L804	#
.L1485:
	.loc 1 2394 0
	movzwl	2(%r12), %eax	# scan_3->next_off, D.19317
	movzwl	%ax, %eax	# D.19317, D.19318
	salq	$2, %rax	#, D.19318
	addq	%r12, %rax	# scan, tmp2089
	movq	%rax, -480(%rbp)	# tmp2089, next
	.loc 1 2395 0
	cmpq	%r12, -480(%rbp)	# scan, next
	jne	.L805	#,
	.loc 1 2396 0
	movq	$0, -480(%rbp)	#, next
.L805:
	.loc 1 2398 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	$59, %eax	#, D.19319
	ja	.L806	#,
	movl	%eax, %eax	# D.19319, tmp2090
	movq	.L808(,%rax,8), %rax	#, tmp2091
	jmp	*%rax	# tmp2091
	.section	.rodata
	.align 8
	.align 4
.L808:
	.quad	.L807
	.quad	.L809
	.quad	.L810
	.quad	.L811
	.quad	.L812
	.quad	.L813
	.quad	.L814
	.quad	.L815
	.quad	.L816
	.quad	.L817
	.quad	.L818
	.quad	.L817
	.quad	.L818
	.quad	.L819
	.quad	.L820
	.quad	.L821
	.quad	.L822
	.quad	.L823
	.quad	.L824
	.quad	.L825
	.quad	.L826
	.quad	.L827
	.quad	.L828
	.quad	.L829
	.quad	.L830
	.quad	.L831
	.quad	.L832
	.quad	.L833
	.quad	.L834
	.quad	.L835
	.quad	.L836
	.quad	.L837
	.quad	.L1505
	.quad	.L839
	.quad	.L840
	.quad	.L841
	.quad	.L1505
	.quad	.L1505
	.quad	.L843
	.quad	.L844
	.quad	.L845
	.quad	.L846
	.quad	.L847
	.quad	.L848
	.quad	.L849
	.quad	.L850
	.quad	.L851
	.quad	.L852
	.quad	.L852
	.quad	.L853
	.quad	.L854
	.quad	.L855
	.quad	.L856
	.quad	.L857
	.quad	.L858
	.quad	.L859
	.quad	.L860
	.quad	.L861
	.quad	.L862
	.quad	.L863
	.text
.L810:
	.loc 1 2400 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.483
	cmpq	%rax, %rbx	# PL_bostr.483, locinput
	je	.L864	#,
	.loc 1 2400 0 is_stmt 0 discriminator 1
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.484
	testl	%eax, %eax	# PL_multiline.484
	je	.L865	#,
	testl	%r13d, %r13d	# nextchr
	jne	.L866	#,
	.loc 1 2401 0 is_stmt 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.485
	cmpq	%rax, %rbx	# PL_regeol.485, locinput
	jae	.L865	#,
.L866:
	.loc 1 2401 0 is_stmt 0 discriminator 1
	leaq	-1(%rbx), %rax	#, D.19320
	movzbl	(%rax), %eax	# *_276, D.19321
	cmpb	$10, %al	#, D.19321
	je	.L864	#,
.L865:
	.loc 1 2406 0 is_stmt 1
	jmp	.L867	#
.L811:
	.loc 1 2408 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.486
	cmpq	%rax, %rbx	# PL_bostr.486, locinput
	je	.L864	#,
	.loc 1 2408 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# nextchr
	jne	.L868	#,
	.loc 1 2409 0 is_stmt 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.487
	cmpq	%rax, %rbx	# PL_regeol.487, locinput
	jae	.L869	#,
.L868:
	.loc 1 2409 0 is_stmt 0 discriminator 1
	leaq	-1(%rbx), %rax	#, D.19320
	movzbl	(%rax), %eax	# *_280, D.19321
	cmpb	$10, %al	#, D.19321
	je	.L864	#,
.L869:
	.loc 1 2413 0 is_stmt 1
	jmp	.L867	#
.L812:
	.loc 1 2415 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.488
	cmpq	%rax, %rbx	# PL_bostr.488, locinput
	jne	.L870	#,
	.loc 1 2416 0
	jmp	.L864	#
.L870:
	.loc 1 2417 0
	jmp	.L867	#
.L819:
	.loc 1 2419 0
	movq	PL_reg_ganch(%rip), %rax	# PL_reg_ganch, PL_reg_ganch.489
	cmpq	%rax, %rbx	# PL_reg_ganch.489, locinput
	jne	.L871	#,
	.loc 1 2420 0
	jmp	.L864	#
.L871:
	.loc 1 2421 0
	jmp	.L867	#
.L814:
	.loc 1 2423 0
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.490
	testl	%eax, %eax	# PL_multiline.490
	je	.L872	#,
	.loc 1 2424 0
	jmp	.L815	#
.L872:
	.loc 1 2426 0
	jmp	.L816	#
.L815:
	.loc 1 2429 0
	testl	%r13d, %r13d	# nextchr
	jne	.L873	#,
	.loc 1 2429 0 is_stmt 0 discriminator 2
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.491
	cmpq	%rax, %rbx	# PL_regeol.491, locinput
	jae	.L874	#,
.L873:
	.loc 1 2429 0 discriminator 1
	cmpl	$10, %r13d	#, nextchr
	je	.L874	#,
	.loc 1 2430 0 is_stmt 1
	jmp	.L867	#
.L874:
	.loc 1 2431 0
	jmp	.L864	#
.L816:
	.loc 1 2434 0
	testl	%r13d, %r13d	# nextchr
	jne	.L875	#,
	.loc 1 2434 0 is_stmt 0 discriminator 2
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.492
	cmpq	%rax, %rbx	# PL_regeol.492, locinput
	jae	.L876	#,
.L875:
	.loc 1 2434 0 discriminator 1
	cmpl	$10, %r13d	#, nextchr
	je	.L876	#,
	.loc 1 2435 0 is_stmt 1
	jmp	.L867	#
.L876:
	.loc 1 2436 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.493
	movq	%rax, %rdx	# PL_regeol.493, PL_regeol.494
	movq	%rbx, %rax	# locinput, locinput.495
	subq	%rax, %rdx	# locinput.495, D.19322
	movq	%rdx, %rax	# D.19322, D.19322
	cmpq	$1, %rax	#, D.19322
	jle	.L877	#,
	.loc 1 2437 0
	jmp	.L867	#
.L877:
	.loc 1 2438 0
	jmp	.L864	#
.L813:
	.loc 1 2440 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.496
	cmpq	%rbx, %rax	# locinput, PL_regeol.496
	je	.L878	#,
	.loc 1 2441 0
	jmp	.L867	#
.L878:
	.loc 1 2442 0
	jmp	.L864	#
.L821:
	.loc 1 2444 0
	testl	%r13d, %r13d	# nextchr
	jne	.L879	#,
	.loc 1 2444 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.497
	cmpq	%rax, %rbx	# PL_regeol.497, locinput
	jb	.L879	#,
	.loc 1 2445 0 is_stmt 1
	jmp	.L867	#
.L879:
	.loc 1 2446 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L880	#,
	.loc 1 2447 0
	movslq	%r13d, %rax	# nextchr, tmp2092
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2448 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.498
	cmpq	%rax, %rbx	# PL_regeol.498, locinput
	jbe	.L881	#,
	.loc 1 2449 0
	jmp	.L867	#
.L881:
	.loc 1 2450 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_295], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2454 0
	jmp	.L864	#
.L880:
	.loc 1 2453 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_299], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2454 0
	jmp	.L864	#
.L822:
	.loc 1 2456 0
	testl	%r13d, %r13d	# nextchr
	jne	.L883	#,
	.loc 1 2456 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.499
	cmpq	%rax, %rbx	# PL_regeol.499, locinput
	jb	.L883	#,
	.loc 1 2457 0 is_stmt 1
	jmp	.L867	#
.L883:
	.loc 1 2458 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_303], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2459 0
	jmp	.L864	#
.L820:
	.loc 1 2461 0
	testl	%r13d, %r13d	# nextchr
	jne	.L884	#,
	.loc 1 2461 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.500
	cmpq	%rax, %rbx	# PL_regeol.500, locinput
	jae	.L867	#,
.L884:
	.loc 1 2461 0 discriminator 2
	cmpl	$10, %r13d	#, nextchr
	je	.L867	#,
	.loc 1 2463 0 is_stmt 1
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L885	#,
	.loc 1 2464 0
	movslq	%r13d, %rax	# nextchr, tmp2093
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2465 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.501
	cmpq	%rax, %rbx	# PL_regeol.501, locinput
	jbe	.L886	#,
	.loc 1 2466 0
	jmp	.L867	#
.L886:
	.loc 1 2467 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_309], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2471 0
	jmp	.L864	#
.L885:
	.loc 1 2470 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_313], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2471 0
	jmp	.L864	#
.L839:
	.loc 1 2473 0
	leaq	4(%r12), %rax	#, s
	movq	%rax, -616(%rbp)	# s, %sfp
	.loc 1 2474 0
	movzbl	(%r12), %eax	# MEM[(struct regnode_string *)scan_3].str_len, D.19316
	movzbl	%al, %r14d	# D.19316, ln
	.loc 1 2475 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.502
	andl	$8, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	setne	%al	#, D.19325
	movzbl	%al, %eax	# D.19325, D.19319
	cmpl	%eax, %edx	# D.19319, D.19319
	je	.L888	#,
.LBB26:
	.loc 1 2477 0
	movq	%rbx, -464(%rbp)	# locinput, l
	.loc 1 2478 0
	movslq	%r14d, %rax	# ln, D.19323
	addq	-616(%rbp), %rax	# %sfp, tmp2094
	movq	%rax, -360(%rbp)	# tmp2094, e
	.loc 1 2481 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L889	#,
	.loc 1 2483 0
	jmp	.L890	#
.L898:
	.loc 1 2484 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.503
	cmpq	%rax, -464(%rbp)	# PL_regeol.503, l
	jb	.L891	#,
	.loc 1 2485 0
	jmp	.L867	#
.L891:
	.loc 1 2486 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s_49], D.19316
	movzbl	%al, %ebx	# D.19316, D.19318
	.loc 1 2488 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.505
	movq	80(%rax), %rax	# PL_curcop.505_330->cop_warnings, D.19326
	.loc 1 2487 0
	testq	%rax, %rax	# D.19326
	je	.L893	#,
	.loc 1 2488 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.506
	movq	80(%rax), %rax	# PL_curcop.506_332->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L893	#,
	.loc 1 2488 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.507
	movq	80(%rax), %rax	# PL_curcop.507_334->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L894	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.508
	movq	80(%rax), %rax	# PL_curcop.508_336->cop_warnings, D.19326
	movq	(%rax), %rax	# _337->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_338].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_340, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L894	#,
.L893:
	.loc 1 2488 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.509
	movq	80(%rax), %rax	# PL_curcop.509_344->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L895	#,
	.loc 1 2488 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.510
	movzbl	%al, %eax	# PL_dowarn.510, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L895	#,
.L894:
	.loc 1 2487 0 is_stmt 1
	movl	$0, %eax	#, iftmp.504
	jmp	.L896	#
.L895:
	movl	$255, %eax	#, iftmp.504
.L896:
	.loc 1 2487 0 is_stmt 0 discriminator 1
	leaq	-192(%rbp), %rdx	#, tmp2095
	movq	-464(%rbp), %rdi	# l, tmp2096
	movl	%eax, %ecx	# iftmp.504,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	.loc 1 2486 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rbx	# D.19318, D.19318
	je	.L897	#,
	.loc 1 2490 0
	jmp	.L892	#
.L897:
	.loc 1 2491 0
	movq	-192(%rbp), %rax	# ulen, ulen.511
	addq	%rax, -464(%rbp)	# ulen.511, l
	.loc 1 2492 0
	addq	$1, -616(%rbp)	#, %sfp
.L890:
	.loc 1 2483 0 discriminator 1
	movq	-616(%rbp), %rax	# %sfp, s
	cmpq	-360(%rbp), %rax	# e, s
	jb	.L898	#,
	jmp	.L899	#
.L889:
	.loc 1 2497 0
	jmp	.L900	#
.L907:
	.loc 1 2498 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.512
	cmpq	%rax, -464(%rbp)	# PL_regeol.512, l
	jb	.L901	#,
	.loc 1 2499 0
	jmp	.L892	#
.L901:
	.loc 1 2500 0
	movq	-464(%rbp), %rax	# l, tmp2097
	movzbl	(%rax), %eax	# MEM[(U8 *)l_124], D.19316
	movzbl	%al, %ebx	# D.19316, D.19318
	.loc 1 2502 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.514
	movq	80(%rax), %rax	# PL_curcop.514_358->cop_warnings, D.19326
	.loc 1 2501 0
	testq	%rax, %rax	# D.19326
	je	.L902	#,
	.loc 1 2502 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.515
	movq	80(%rax), %rax	# PL_curcop.515_360->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L902	#,
	.loc 1 2502 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.516
	movq	80(%rax), %rax	# PL_curcop.516_362->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L903	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.517
	movq	80(%rax), %rax	# PL_curcop.517_364->cop_warnings, D.19326
	movq	(%rax), %rax	# _365->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_366].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_368, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L903	#,
.L902:
	.loc 1 2502 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.518
	movq	80(%rax), %rax	# PL_curcop.518_372->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L904	#,
	.loc 1 2502 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.519
	movzbl	%al, %eax	# PL_dowarn.519, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L904	#,
.L903:
	.loc 1 2501 0 is_stmt 1
	movl	$0, %eax	#, iftmp.513
	jmp	.L905	#
.L904:
	movl	$255, %eax	#, iftmp.513
.L905:
	.loc 1 2501 0 is_stmt 0 discriminator 1
	leaq	-192(%rbp), %rdx	#, tmp2098
	movl	%eax, %ecx	# iftmp.513,
	movl	$13, %esi	#,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_utf8n_to_uvuni	#
	.loc 1 2500 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rbx	# D.19318, D.19318
	je	.L906	#,
	.loc 1 2504 0
	jmp	.L892	#
.L906:
	.loc 1 2505 0
	movq	-192(%rbp), %rax	# ulen, ulen.520
	addq	%rax, -616(%rbp)	# ulen.520, %sfp
	.loc 1 2506 0
	addq	$1, -464(%rbp)	#, l
.L900:
	.loc 1 2497 0 discriminator 1
	movq	-616(%rbp), %rax	# %sfp, s
	cmpq	-360(%rbp), %rax	# e, s
	jb	.L907	#,
.L899:
	.loc 1 2509 0
	movq	-464(%rbp), %rbx	# l, locinput
	.loc 1 2510 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_383], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	jmp	.L864	#
.L892:
.LBE26:
	.loc 1 3976 0 discriminator 1
	jmp	.L1488	#
.L888:
	.loc 1 2515 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s_316], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	%r13d, %eax	# nextchr, D.19319
	je	.L908	#,
	.loc 1 2516 0
	jmp	.L867	#
.L908:
	.loc 1 2517 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.521
	movq	%rax, %rdx	# PL_regeol.521, PL_regeol.522
	movq	%rbx, %rax	# locinput, locinput.523
	subq	%rax, %rdx	# locinput.523, D.19322
	movslq	%r14d, %rax	# ln, D.19322
	cmpq	%rax, %rdx	# D.19322, D.19322
	jge	.L909	#,
	.loc 1 2518 0
	jmp	.L867	#
.L909:
	.loc 1 2519 0
	cmpl	$1, %r14d	#, ln
	jle	.L910	#,
	.loc 1 2519 0 is_stmt 0 discriminator 1
	movslq	%r14d, %rax	# ln, D.19318
	movq	%rax, %rdx	# D.19318,
	movq	%rbx, %rsi	# locinput,
	movq	-616(%rbp), %rdi	# %sfp,
	call	memcmp	#
	testl	%eax, %eax	# D.19319
	je	.L910	#,
	.loc 1 2520 0 is_stmt 1
	jmp	.L867	#
.L910:
	.loc 1 2521 0
	movslq	%r14d, %rax	# ln, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2522 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_396], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2523 0
	jmp	.L864	#
.L841:
	.loc 1 2525 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.524
	orl	$1, %eax	#, PL_reg_flags.525
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.525, PL_reg_flags
.L840:
	.loc 1 2528 0
	leaq	4(%r12), %rax	#, s
	movq	%rax, -616(%rbp)	# s, %sfp
	.loc 1 2529 0
	movzbl	(%r12), %eax	# MEM[(struct regnode_string *)scan_3].str_len, D.19316
	movzbl	%al, %r14d	# D.19316, ln
	.loc 1 2531 0
	cmpb	$0, -605(%rbp)	#, %sfp
	jne	.L911	#,
	.loc 1 2531 0 is_stmt 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.526
	andl	$8, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L912	#,
.L911:
.LBB27:
	.loc 1 2533 0 is_stmt 1
	movq	%rbx, -352(%rbp)	# locinput, l
	.loc 1 2534 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.527
	movq	%rax, -192(%rbp)	# PL_regeol.527, e
	.loc 1 2536 0
	movsbl	-605(%rbp), %ecx	# %sfp, D.19319
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.528
	andl	$8, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	setne	%al	#, D.19325
	movzbl	%al, %edx	# D.19325, D.19319
	movslq	%r14d, %rax	# ln, D.19318
	leaq	-192(%rbp), %rdi	#, tmp2099
	movq	-352(%rbp), %rsi	# l, tmp2100
	movl	%ecx, 8(%rsp)	# D.19319,
	movq	$0, (%rsp)	#,
	movq	%rdi, %r9	# tmp2099,
	movq	%rsi, %r8	# tmp2100,
	movl	%edx, %ecx	# D.19319,
	movq	%rax, %rdx	# D.19318,
	movl	$0, %esi	#,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_ibcmp_utf8	#
	testl	%eax, %eax	# D.19319
	je	.L913	#,
	.loc 1 2542 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L867	#,
	.loc 1 2543 0 discriminator 1
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# *s_401, D.19321
	.loc 1 2542 0 discriminator 1
	cmpb	$64, %al	#, D.19321
	jle	.L915	#,
	.loc 1 2543 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# *s_401, D.19321
	cmpb	$90, %al	#, D.19321
	jg	.L915	#,
	.loc 1 2543 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# *s_401, D.19321
	.loc 1 2542 0 is_stmt 1 discriminator 1
	cmpb	$83, %al	#, D.19321
	jne	.L867	#,
	jmp	.L916	#
.L915:
	.loc 1 2543 0 discriminator 2
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# *s_401, D.19321
	cmpb	$115, %al	#, D.19321
	jne	.L867	#,
.L916:
	.loc 1 2543 0 is_stmt 0 discriminator 1
	cmpl	$1, %r14d	#, ln
	jle	.L867	#,
	.loc 1 2545 0 is_stmt 1
	movq	-616(%rbp), %rax	# %sfp, s
	addq	$1, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_442, D.19321
	.loc 1 2542 0
	cmpb	$64, %al	#, D.19321
	jle	.L917	#,
	.loc 1 2545 0
	movq	-616(%rbp), %rax	# %sfp, s
	addq	$1, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_444, D.19321
	cmpb	$90, %al	#, D.19321
	jg	.L917	#,
	.loc 1 2545 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# %sfp, D.19320
	addq	$1, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_446, D.19321
	.loc 1 2544 0 is_stmt 1 discriminator 1
	cmpb	$83, %al	#, D.19321
	jne	.L867	#,
	jmp	.L918	#
.L917:
	.loc 1 2545 0 discriminator 2
	movq	-616(%rbp), %rax	# %sfp, D.19320
	addq	$1, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_448, D.19321
	cmpb	$115, %al	#, D.19321
	jne	.L867	#,
.L918:
	.loc 1 2546 0 discriminator 1
	movq	-352(%rbp), %rax	# l, tmp2101
	movzbl	(%rax), %eax	# *l_429, D.19321
	.loc 1 2545 0 discriminator 1
	cmpb	$-61, %al	#, D.19321
	jne	.L867	#,
	.loc 1 2547 0
	movq	-192(%rbp), %rax	# e, e.529
	movq	%rax, %rdx	# e.529, e.530
	movq	-352(%rbp), %rax	# l, l.531
	subq	%rax, %rdx	# l.531, D.19322
	movq	%rdx, %rax	# D.19322, D.19322
	.loc 1 2546 0
	cmpq	$1, %rax	#, D.19322
	jle	.L867	#,
	.loc 1 2548 0
	movq	-352(%rbp), %rax	# l, tmp2102
	addq	$1, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_455, D.19321
	.loc 1 2542 0
	cmpb	$-97, %al	#, D.19321
	jne	.L867	#,
.L913:
	.loc 1 2551 0
	movq	-192(%rbp), %rbx	# e, locinput
	.loc 1 2552 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_457], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	jmp	.L864	#
.L912:
.LBE27:
	.loc 1 2559 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s_401], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	%r13d, %eax	# nextchr, D.19319
	je	.L919	#,
	.loc 1 2560 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %edx	# MEM[(U8 *)s_401], D.19316
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	.loc 1 2561 0
	cmpb	$34, %al	#, D.19316
	jne	.L920	#,
	.loc 1 2561 0 is_stmt 0 discriminator 1
	movl	$PL_fold, %eax	#, iftmp.532
	jmp	.L921	#
.L920:
	.loc 1 2561 0 discriminator 2
	movl	$PL_fold_locale, %eax	#, iftmp.532
.L921:
	.loc 1 2561 0 discriminator 3
	movslq	%r13d, %rcx	# nextchr, D.19323
	addq	%rcx, %rax	# D.19323, D.19328
	movzbl	(%rax), %eax	# *_413, D.19316
	.loc 1 2559 0 is_stmt 1 discriminator 3
	cmpb	%al, %dl	# D.19316, D.19316
	je	.L919	#,
	.loc 1 2562 0
	jmp	.L867	#
.L919:
	.loc 1 2563 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.533
	movq	%rax, %rdx	# PL_regeol.533, PL_regeol.534
	movq	%rbx, %rax	# locinput, locinput.535
	subq	%rax, %rdx	# locinput.535, D.19322
	movslq	%r14d, %rax	# ln, D.19322
	cmpq	%rax, %rdx	# D.19322, D.19322
	jge	.L922	#,
	.loc 1 2564 0
	jmp	.L867	#
.L922:
	.loc 1 2565 0
	cmpl	$1, %r14d	#, ln
	jle	.L923	#,
	.loc 1 2565 0 is_stmt 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$34, %al	#, D.19316
	jne	.L924	#,
	.loc 1 2566 0 is_stmt 1
	movl	%r14d, %edx	# ln,
	movq	%rbx, %rsi	# locinput,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_ibcmp	#
	.loc 1 2565 0
	testl	%eax, %eax	# D.19319
	setne	%al	#, iftmp.536
	jmp	.L925	#
.L924:
	.loc 1 2567 0 discriminator 1
	movl	%r14d, %edx	# ln,
	movq	%rbx, %rsi	# locinput,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_ibcmp_locale	#
	.loc 1 2565 0 discriminator 1
	testl	%eax, %eax	# D.19319
	setne	%al	#, iftmp.536
.L925:
	.loc 1 2565 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.536
	je	.L923	#,
	.loc 1 2568 0 is_stmt 1
	jmp	.L867	#
.L923:
	.loc 1 2569 0
	movslq	%r14d, %rax	# ln, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2570 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_426], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2571 0
	jmp	.L864	#
.L823:
	.loc 1 2573 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L926	#,
.LBB28:
	.loc 1 2574 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.537
	movq	%rax, %rdx	# PL_regeol.537, PL_regeol.538
	movq	%rbx, %rax	# locinput, locinput.539
	subq	%rax, %rdx	# locinput.539, D.19322
	movq	%rdx, %rax	# D.19322, D.19322
	movq	%rax, -192(%rbp)	# inclasslen.540, inclasslen
	.loc 1 2576 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	leaq	-192(%rbp), %rax	#, tmp2103
	movl	%edx, %ecx	# D.19319,
	movq	%rax, %rdx	# tmp2103,
	movq	%rbx, %rsi	# locinput,
	movq	%r12, %rdi	# scan,
	call	S_reginclass	#
	testb	%al, %al	# D.19321
	je	.L928	#,
	.loc 1 2578 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.541
	cmpq	%rax, %rbx	# PL_regeol.541, locinput
	jb	.L929	#,
.LBE28:
	.loc 1 3976 0
	jmp	.L1488	#
.L929:
.LBB29:
	.loc 1 2580 0
	movq	-192(%rbp), %rax	# inclasslen, inclasslen.543
	testq	%rax, %rax	# inclasslen.543
	jne	.L930	#,
	.loc 1 2580 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_73], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, iftmp.542
	jmp	.L931	#
.L930:
	.loc 1 2580 0 discriminator 2
	movq	-192(%rbp), %rax	# inclasslen, iftmp.542
.L931:
	.loc 1 2580 0 discriminator 3
	addq	%rax, %rbx	# iftmp.542, locinput
	.loc 1 2581 0 is_stmt 1 discriminator 3
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_474], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	jmp	.L864	#
.L926:
.LBE29:
	.loc 1 2585 0
	testl	%r13d, %r13d	# nextchr
	jns	.L932	#,
	.loc 1 2586 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_73], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
.L932:
	.loc 1 2587 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	testb	%al, %al	# D.19316
	je	.L933	#,
	.loc 1 2587 0 is_stmt 0 discriminator 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# locinput,
	movq	%r12, %rdi	# scan,
	call	S_reginclass	#
	testb	%al, %al	# D.19321
	sete	%al	#, iftmp.544
	jmp	.L934	#
.L933:
	.loc 1 2587 0 discriminator 2
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_73], D.19316
	shrb	$3, %al	#, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	andl	$31, %eax	#, D.19319
	cltq
	movzbl	8(%r12,%rax), %eax	# MEM[(struct regnode_charclass *)scan_3].bitmap, D.19321
	movsbl	%al, %edx	# D.19321, D.19319
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_73], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	andl	$7, %eax	#, D.19319
	movl	%eax, %ecx	# D.19319, tmp2636
	sarl	%cl, %edx	# tmp2636, D.19319
	movl	%edx, %eax	# D.19319, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	sete	%al	#, iftmp.544
.L934:
	.loc 1 2587 0 discriminator 3
	testb	%al, %al	# iftmp.544
	je	.L935	#,
	.loc 1 2588 0 is_stmt 1
	jmp	.L928	#
.L935:
	.loc 1 2589 0
	testl	%r13d, %r13d	# nextchr
	jne	.L936	#,
	.loc 1 2589 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.545
	cmpq	%rax, %rbx	# PL_regeol.545, locinput
	jb	.L936	#,
	.loc 1 2590 0 is_stmt 1
	jmp	.L867	#
.L936:
	.loc 1 2591 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_495], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2592 0
	jmp	.L864	#
.L928:
	.loc 1 2598 0
	movzbl	35(%r12), %eax	# MEM[(struct regnode_charclass *)scan_3].bitmap, D.19321
	testb	%al, %al	# D.19321
	jns	.L867	#,
	.loc 1 2598 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	andl	$32, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L867	#,
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L867	#,
	leaq	1(%rbx), %rdx	#, D.19320
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.546
	cmpq	%rax, %rdx	# PL_regeol.546, D.19320
	jae	.L867	#,
	movzbl	(%rbx), %eax	# *locinput_73, D.19321
	cmpb	$64, %al	#, D.19321
	jle	.L937	#,
	.loc 1 2598 0 discriminator 2
	movzbl	(%rbx), %eax	# *locinput_73, D.19321
	cmpb	$90, %al	#, D.19321
	jg	.L937	#,
	.loc 1 2598 0 discriminator 1
	movzbl	(%rbx), %eax	# *locinput_73, D.19321
	cmpb	$83, %al	#, D.19321
	jne	.L867	#,
	jmp	.L938	#
.L937:
	.loc 1 2598 0 discriminator 3
	movzbl	(%rbx), %eax	# *locinput_73, D.19321
	cmpb	$115, %al	#, D.19321
	jne	.L867	#,
.L938:
	.loc 1 2598 0 discriminator 2
	leaq	1(%rbx), %rax	#, D.19320
	movzbl	(%rax), %eax	# *_511, D.19321
	cmpb	$64, %al	#, D.19321
	jle	.L939	#,
	.loc 1 2598 0 discriminator 4
	leaq	1(%rbx), %rax	#, D.19320
	movzbl	(%rax), %eax	# *_513, D.19321
	cmpb	$90, %al	#, D.19321
	jg	.L939	#,
	.loc 1 2598 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.19320
	movzbl	(%rax), %eax	# *_515, D.19321
	cmpb	$83, %al	#, D.19321
	jne	.L867	#,
	jmp	.L940	#
.L939:
	.loc 1 2598 0 discriminator 5
	leaq	1(%rbx), %rax	#, D.19320
	movzbl	(%rax), %eax	# *_517, D.19321
	cmpb	$115, %al	#, D.19321
	jne	.L867	#,
.L940:
	.loc 1 2599 0 is_stmt 1
	addq	$2, %rbx	#, locinput
	.loc 1 2600 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_519], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2604 0
	jmp	.L864	#
.L825:
	.loc 1 2606 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.547
	orl	$1, %eax	#, PL_reg_flags.548
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.548, PL_reg_flags
.L824:
	.loc 1 2609 0
	testl	%r13d, %r13d	# nextchr
	jne	.L941	#,
	.loc 1 2610 0
	jmp	.L867	#
.L941:
	.loc 1 2611 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L942	#,
	.loc 1 2612 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.549
	testq	%rax, %rax	# PL_utf8_alnum.549
	jne	.L943	#,
	.loc 1 2612 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
.L943:
	.loc 1 2613 0 is_stmt 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$18, %al	#, D.19316
	jne	.L944	#,
	.loc 1 2614 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.551
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_alnum.551,
	call	Perl_swash_fetch	#
	.loc 1 2613 0
	testq	%rax, %rax	# D.19318
	sete	%al	#, iftmp.550
	jmp	.L945	#
.L944:
	.loc 1 2615 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	.loc 1 2613 0 discriminator 1
	cmpq	$255, %rax	#, D.19318
	ja	.L946	#,
	.loc 1 2615 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L947	#,
	.loc 1 2615 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r12	# *_533, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r12, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_539, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L948	#,
	.loc 1 2615 0 discriminator 4
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19318
	jne	.L947	#,
.L948:
	.loc 1 2615 0 discriminator 3
	movl	$1, %eax	#, iftmp.553
	jmp	.L949	#
.L947:
	.loc 1 2615 0 discriminator 2
	movl	$0, %eax	#, iftmp.553
.L949:
	.loc 1 2613 0 is_stmt 1
	testl	%eax, %eax	# iftmp.553
	sete	%al	#, iftmp.552
	jmp	.L945	#
.L946:
	.loc 1 2615 0 discriminator 2
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_alnum_lc	#
	.loc 1 2613 0 discriminator 2
	testb	%al, %al	# D.19321
	sete	%al	#, iftmp.552
.L945:
	.loc 1 2613 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.550
	je	.L951	#,
	.loc 1 2617 0 is_stmt 1
	jmp	.L867	#
.L951:
	.loc 1 2619 0
	movslq	%r13d, %rax	# nextchr, tmp2106
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2620 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_553], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2621 0
	jmp	.L864	#
.L942:
	.loc 1 2623 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$18, %al	#, D.19316
	jne	.L952	#,
	.loc 1 2624 0
	cmpl	$64, %r13d	#, nextchr
	jle	.L953	#,
	.loc 1 2624 0 is_stmt 0 discriminator 2
	cmpl	$90, %r13d	#, nextchr
	jle	.L954	#,
.L953:
	.loc 1 2624 0 discriminator 1
	cmpl	$96, %r13d	#, nextchr
	jle	.L955	#,
	.loc 1 2624 0 discriminator 2
	cmpl	$122, %r13d	#, nextchr
	jle	.L954	#,
.L955:
	.loc 1 2624 0 discriminator 1
	cmpl	$47, %r13d	#, nextchr
	jle	.L956	#,
	.loc 1 2624 0 discriminator 2
	cmpl	$57, %r13d	#, nextchr
	jle	.L954	#,
.L956:
	.loc 1 2624 0 discriminator 1
	cmpl	$95, %r13d	#, nextchr
	je	.L954	#,
	.loc 1 2624 0 discriminator 3
	movl	$1, %eax	#, iftmp.555
	jmp	.L957	#
.L954:
	.loc 1 2624 0 discriminator 1
	movl	$0, %eax	#, iftmp.555
.L957:
	.loc 1 2623 0 is_stmt 1
	andl	$1, %eax	#, iftmp.554
	jmp	.L958	#
.L952:
	.loc 1 2624 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L959	#,
	.loc 1 2624 0 is_stmt 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_561, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_565, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L960	#,
	.loc 1 2624 0 discriminator 3
	cmpl	$95, %r13d	#, nextchr
	je	.L960	#,
.L959:
	.loc 1 2624 0 discriminator 1
	movl	$1, %eax	#, iftmp.556
	jmp	.L961	#
.L960:
	.loc 1 2624 0 discriminator 4
	movl	$0, %eax	#, iftmp.556
.L961:
	.loc 1 2623 0 is_stmt 1
	andl	$1, %eax	#, iftmp.554
.L958:
	.loc 1 2623 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.554
	je	.L962	#,
	.loc 1 2625 0 is_stmt 1
	jmp	.L867	#
.L962:
	.loc 1 2626 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_572], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2627 0
	jmp	.L864	#
.L827:
	.loc 1 2629 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.557
	orl	$1, %eax	#, PL_reg_flags.558
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.558, PL_reg_flags
.L826:
	.loc 1 2632 0
	testl	%r13d, %r13d	# nextchr
	jne	.L963	#,
	.loc 1 2632 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.559
	cmpq	%rax, %rbx	# PL_regeol.559, locinput
	jb	.L963	#,
	.loc 1 2633 0 is_stmt 1
	jmp	.L867	#
.L963:
	.loc 1 2634 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L964	#,
	.loc 1 2635 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.560
	testq	%rax, %rax	# PL_utf8_alnum.560
	jne	.L965	#,
	.loc 1 2635 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
.L965:
	.loc 1 2636 0 is_stmt 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$20, %al	#, D.19316
	jne	.L966	#,
	.loc 1 2637 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.562
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_alnum.562,
	call	Perl_swash_fetch	#
	.loc 1 2636 0
	testq	%rax, %rax	# D.19318
	setne	%al	#, iftmp.561
	jmp	.L967	#
.L966:
	.loc 1 2638 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	.loc 1 2636 0 discriminator 1
	cmpq	$255, %rax	#, D.19318
	ja	.L968	#,
	.loc 1 2638 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L969	#,
	.loc 1 2638 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r12	# *_587, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r12, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_593, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L970	#,
	.loc 1 2638 0 discriminator 4
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19318
	jne	.L969	#,
.L970:
	.loc 1 2638 0 discriminator 3
	movl	$1, %eax	#, iftmp.564
	jmp	.L971	#
.L969:
	.loc 1 2638 0 discriminator 2
	movl	$0, %eax	#, iftmp.564
.L971:
	.loc 1 2636 0 is_stmt 1
	testl	%eax, %eax	# iftmp.564
	setne	%al	#, iftmp.563
	jmp	.L967	#
.L968:
	.loc 1 2638 0 discriminator 2
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_alnum_lc	#
	.loc 1 2636 0 discriminator 2
	testb	%al, %al	# D.19321
	setne	%al	#, iftmp.563
.L967:
	.loc 1 2636 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.561
	je	.L973	#,
	.loc 1 2640 0 is_stmt 1
	jmp	.L867	#
.L973:
	.loc 1 2642 0
	movslq	%r13d, %rax	# nextchr, tmp2107
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2643 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_607], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2644 0
	jmp	.L864	#
.L964:
	.loc 1 2646 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$20, %al	#, D.19316
	jne	.L974	#,
	.loc 1 2647 0
	cmpl	$64, %r13d	#, nextchr
	jle	.L975	#,
	.loc 1 2647 0 is_stmt 0 discriminator 1
	cmpl	$90, %r13d	#, nextchr
	jle	.L976	#,
.L975:
	.loc 1 2647 0 discriminator 2
	cmpl	$96, %r13d	#, nextchr
	jle	.L977	#,
	.loc 1 2647 0 discriminator 1
	cmpl	$122, %r13d	#, nextchr
	jle	.L976	#,
.L977:
	.loc 1 2647 0 discriminator 2
	cmpl	$47, %r13d	#, nextchr
	jle	.L978	#,
	.loc 1 2647 0 discriminator 1
	cmpl	$57, %r13d	#, nextchr
	jle	.L976	#,
.L978:
	.loc 1 2647 0 discriminator 2
	cmpl	$95, %r13d	#, nextchr
	jne	.L979	#,
.L976:
	.loc 1 2647 0 discriminator 1
	movl	$1, %eax	#, iftmp.566
	jmp	.L980	#
.L979:
	.loc 1 2647 0 discriminator 3
	movl	$0, %eax	#, iftmp.566
.L980:
	.loc 1 2646 0 is_stmt 1
	andl	$1, %eax	#, iftmp.565
	jmp	.L981	#
.L974:
	.loc 1 2647 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L982	#,
	.loc 1 2647 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_615, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_619, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L983	#,
	.loc 1 2647 0 discriminator 4
	cmpl	$95, %r13d	#, nextchr
	jne	.L982	#,
.L983:
	.loc 1 2647 0 discriminator 3
	movl	$1, %eax	#, iftmp.567
	jmp	.L984	#
.L982:
	.loc 1 2647 0 discriminator 2
	movl	$0, %eax	#, iftmp.567
.L984:
	.loc 1 2646 0 is_stmt 1
	andl	$1, %eax	#, iftmp.565
.L981:
	.loc 1 2646 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.565
	je	.L985	#,
	.loc 1 2648 0 is_stmt 1
	jmp	.L867	#
.L985:
	.loc 1 2649 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_626], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2650 0
	jmp	.L864	#
.L818:
	.loc 1 2653 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.568
	orl	$1, %eax	#, PL_reg_flags.569
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.569, PL_reg_flags
.L817:
	.loc 1 2658 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L986	#,
	.loc 1 2659 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.570
	cmpq	%rax, %rbx	# PL_bostr.570, locinput
	jne	.L987	#,
	.loc 1 2660 0
	movl	$10, %r14d	#, ln
	jmp	.L988	#
.L987:
.LBB30:
	.loc 1 2662 0
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.571
	movq	%rax, %rdx	# PL_bostr.571,
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	S_reghop3	#
	movq	%rax, -344(%rbp)	# tmp2108, r
	.loc 1 2664 0
	movq	-344(%rbp), %rax	# r, tmp2109
	movzbl	(%rax), %eax	# *r_634, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %esi	# D.19316, D.19318
	movq	-344(%rbp), %rax	# r, tmp2111
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp2111,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, %r14d	# D.19318, ln
.L988:
.LBE30:
	.loc 1 2666 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$9, %al	#, D.19316
	je	.L989	#,
	.loc 1 2666 0 is_stmt 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$11, %al	#, D.19316
	jne	.L990	#,
.L989:
	.loc 1 2667 0 is_stmt 1
	movslq	%r14d, %rax	# ln, D.19318
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_alnum	#
	movsbl	%al, %r14d	# D.19321, ln
	.loc 1 2668 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.572
	testq	%rax, %rax	# PL_utf8_alnum.572
	jne	.L991	#,
	.loc 1 2668 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
.L991:
	.loc 1 2669 0 is_stmt 1
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.573
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_alnum.573,
	call	Perl_swash_fetch	#
	movl	%eax, %r15d	# D.19318, n
	jmp	.L1003	#
.L990:
	.loc 1 2672 0
	cmpl	$255, %r14d	#, ln
	jg	.L993	#,
	.loc 1 2672 0 is_stmt 0 discriminator 1
	movl	%r14d, %eax	# ln, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L994	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_644, D.19330
	movslq	%r14d, %rdx	# ln, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_648, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L995	#,
	.loc 1 2672 0 discriminator 4
	cmpl	$95, %r14d	#, ln
	jne	.L994	#,
.L995:
	.loc 1 2672 0 discriminator 3
	movl	$1, %eax	#, iftmp.575
	jmp	.L996	#
.L994:
	.loc 1 2672 0 discriminator 2
	movl	$0, %eax	#, iftmp.575
.L996:
	jmp	.L997	#
.L993:
	movslq	%r14d, %rax	# ln, D.19318
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_alnum_lc	#
	movsbl	%al, %eax	# D.19321, iftmp.574
.L997:
	.loc 1 2672 0 discriminator 3
	movl	%eax, %r14d	# iftmp.574, ln
	.loc 1 2673 0 is_stmt 1 discriminator 3
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cmpq	$255, %rax	#, D.19318
	ja	.L998	#,
	.loc 1 2673 0 is_stmt 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L999	#,
	call	__ctype_b_loc	#
	movq	(%rax), %r15	# *_662, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r15, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_668, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1000	#,
	.loc 1 2673 0 discriminator 4
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19318
	jne	.L999	#,
.L1000:
	.loc 1 2673 0 discriminator 3
	movl	$1, %eax	#, iftmp.577
	jmp	.L1001	#
.L999:
	.loc 1 2673 0 discriminator 2
	movl	$0, %eax	#, iftmp.577
.L1001:
	jmp	.L1002	#
.L998:
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_alnum_lc	#
	movsbl	%al, %eax	# D.19321, iftmp.576
.L1002:
	.loc 1 2673 0 discriminator 3
	movl	%eax, %r15d	# iftmp.576, n
	jmp	.L1003	#
.L986:
	.loc 1 2677 0 is_stmt 1
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.579
	.loc 1 2678 0
	cmpq	%rax, %rbx	# PL_bostr.579, locinput
	je	.L1004	#,
	.loc 1 2678 0 is_stmt 0 discriminator 1
	leaq	-1(%rbx), %rax	#, D.19331
	movzbl	(%rax), %eax	# *_689, D.19316
	movzbl	%al, %eax	# D.19316, iftmp.578
	jmp	.L1005	#
.L1004:
	.loc 1 2678 0 discriminator 2
	movl	$10, %eax	#, iftmp.578
.L1005:
	.loc 1 2677 0 is_stmt 1
	movl	%eax, %r14d	# iftmp.578, ln
	.loc 1 2679 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$9, %al	#, D.19316
	je	.L1006	#,
	.loc 1 2679 0 is_stmt 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$11, %al	#, D.19316
	jne	.L1007	#,
.L1006:
	.loc 1 2680 0 is_stmt 1
	cmpl	$64, %r14d	#, ln
	jle	.L1008	#,
	.loc 1 2680 0 is_stmt 0 discriminator 1
	cmpl	$90, %r14d	#, ln
	jle	.L1009	#,
.L1008:
	.loc 1 2680 0 discriminator 2
	cmpl	$96, %r14d	#, ln
	jle	.L1010	#,
	.loc 1 2680 0 discriminator 1
	cmpl	$122, %r14d	#, ln
	jle	.L1009	#,
.L1010:
	.loc 1 2680 0 discriminator 2
	cmpl	$47, %r14d	#, ln
	jle	.L1011	#,
	.loc 1 2680 0 discriminator 1
	cmpl	$57, %r14d	#, ln
	jle	.L1009	#,
.L1011:
	.loc 1 2680 0 discriminator 2
	cmpl	$95, %r14d	#, ln
	jne	.L1012	#,
.L1009:
	.loc 1 2680 0 discriminator 1
	movl	$1, %eax	#, iftmp.580
	jmp	.L1013	#
.L1012:
	.loc 1 2680 0 discriminator 3
	movl	$0, %eax	#, iftmp.580
.L1013:
	.loc 1 2680 0 discriminator 4
	movl	%eax, %r14d	# iftmp.580, ln
	.loc 1 2681 0 is_stmt 1 discriminator 4
	cmpl	$64, %r13d	#, nextchr
	jle	.L1014	#,
	.loc 1 2681 0 is_stmt 0 discriminator 1
	cmpl	$90, %r13d	#, nextchr
	jle	.L1015	#,
.L1014:
	.loc 1 2681 0 discriminator 2
	cmpl	$96, %r13d	#, nextchr
	jle	.L1016	#,
	.loc 1 2681 0 discriminator 1
	cmpl	$122, %r13d	#, nextchr
	jle	.L1015	#,
.L1016:
	.loc 1 2681 0 discriminator 2
	cmpl	$47, %r13d	#, nextchr
	jle	.L1017	#,
	.loc 1 2681 0 discriminator 1
	cmpl	$57, %r13d	#, nextchr
	jle	.L1015	#,
.L1017:
	.loc 1 2681 0 discriminator 2
	cmpl	$95, %r13d	#, nextchr
	jne	.L1018	#,
.L1015:
	.loc 1 2681 0 discriminator 1
	movl	$1, %eax	#, iftmp.581
	jmp	.L1019	#
.L1018:
	.loc 1 2681 0 discriminator 3
	movl	$0, %eax	#, iftmp.581
.L1019:
	.loc 1 2681 0 discriminator 4
	movl	%eax, %r15d	# iftmp.581, n
	jmp	.L1003	#
.L1007:
	.loc 1 2684 0 is_stmt 1
	movl	%r14d, %eax	# ln, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1020	#,
	.loc 1 2684 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_697, D.19330
	movslq	%r14d, %rdx	# ln, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_701, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1021	#,
	.loc 1 2684 0 discriminator 4
	cmpl	$95, %r14d	#, ln
	jne	.L1020	#,
.L1021:
	.loc 1 2684 0 discriminator 3
	movl	$1, %eax	#, iftmp.582
	jmp	.L1022	#
.L1020:
	.loc 1 2684 0 discriminator 2
	movl	$0, %eax	#, iftmp.582
.L1022:
	.loc 1 2684 0 discriminator 5
	movl	%eax, %r14d	# iftmp.582, ln
	.loc 1 2685 0 is_stmt 1 discriminator 5
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1023	#,
	.loc 1 2685 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_709, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_713, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1024	#,
	.loc 1 2685 0 discriminator 4
	cmpl	$95, %r13d	#, nextchr
	jne	.L1023	#,
.L1024:
	.loc 1 2685 0 discriminator 3
	movl	$1, %eax	#, iftmp.583
	jmp	.L1025	#
.L1023:
	.loc 1 2685 0 discriminator 2
	movl	$0, %eax	#, iftmp.583
.L1025:
	.loc 1 2685 0 discriminator 5
	movl	%eax, %r15d	# iftmp.583, n
.L1003:
	.loc 1 2688 0 is_stmt 1
	testl	%r14d, %r14d	# ln
	setne	%dl	#, D.19325
	testl	%r15d, %r15d	# n
	sete	%al	#, D.19325
	xorl	%edx, %eax	# D.19325, D.19325
	movzbl	%al, %edx	# D.19325, D.19319
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$9, %al	#, D.19316
	je	.L1026	#,
	.loc 1 2689 0 discriminator 2
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	.loc 1 2688 0 discriminator 2
	cmpb	$10, %al	#, D.19316
	jne	.L1027	#,
.L1026:
	.loc 1 2688 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.584
	jmp	.L1028	#
.L1027:
	.loc 1 2688 0 discriminator 3
	movl	$0, %eax	#, iftmp.584
.L1028:
	.loc 1 2688 0 discriminator 4
	cmpl	%eax, %edx	# iftmp.584, D.19319
	jne	.L1029	#,
	.loc 1 2690 0 is_stmt 1
	jmp	.L867	#
.L1029:
	.loc 1 2691 0
	jmp	.L864	#
.L829:
	.loc 1 2693 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.585
	orl	$1, %eax	#, PL_reg_flags.586
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.586, PL_reg_flags
.L828:
	.loc 1 2696 0
	testl	%r13d, %r13d	# nextchr
	jne	.L1030	#,
	.loc 1 2697 0
	jmp	.L867	#
.L1030:
	.loc 1 2698 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1031	#,
	.loc 1 2699 0
	movl	%r13d, %eax	# nextchr, D.19332
	testb	%al, %al	# D.19332
	jns	.L1032	#,
	.loc 1 2700 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.587
	testq	%rax, %rax	# PL_utf8_space.587
	jne	.L1033	#,
	.loc 1 2700 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC2, %edi	#,
	call	Perl_is_utf8_space	#
	call	Perl_pop_scope	#
.L1033:
	.loc 1 2701 0 is_stmt 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$22, %al	#, D.19316
	jne	.L1034	#,
	.loc 1 2702 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.589
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_space.589,
	call	Perl_swash_fetch	#
	.loc 1 2701 0
	testq	%rax, %rax	# D.19318
	sete	%al	#, iftmp.588
	jmp	.L1035	#
.L1034:
	.loc 1 2703 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	.loc 1 2701 0 discriminator 1
	cmpq	$255, %rax	#, D.19318
	ja	.L1036	#,
	.loc 1 2703 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L1037	#,
	.loc 1 2703 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r12	# *_746, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r12, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_752, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8192, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1037	#,
	.loc 1 2703 0 discriminator 3
	movl	$1, %eax	#, iftmp.591
	jmp	.L1038	#
.L1037:
	.loc 1 2703 0 discriminator 2
	movl	$0, %eax	#, iftmp.591
.L1038:
	.loc 1 2701 0 is_stmt 1
	testl	%eax, %eax	# iftmp.591
	sete	%al	#, iftmp.590
	jmp	.L1035	#
.L1036:
	.loc 1 2703 0 discriminator 2
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_space_lc	#
	.loc 1 2701 0 discriminator 2
	testb	%al, %al	# D.19321
	sete	%al	#, iftmp.590
.L1035:
	.loc 1 2701 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.588
	je	.L1040	#,
	.loc 1 2705 0 is_stmt 1
	jmp	.L867	#
.L1040:
	.loc 1 2707 0
	movslq	%r13d, %rax	# nextchr, tmp2112
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2708 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_765], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2709 0
	jmp	.L864	#
.L1032:
	.loc 1 2711 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$22, %al	#, D.19316
	jne	.L1041	#,
	.loc 1 2712 0
	cmpl	$32, %r13d	#, nextchr
	je	.L1042	#,
	.loc 1 2712 0 is_stmt 0 discriminator 1
	cmpl	$9, %r13d	#, nextchr
	je	.L1042	#,
	cmpl	$10, %r13d	#, nextchr
	je	.L1042	#,
	cmpl	$13, %r13d	#, nextchr
	je	.L1042	#,
	cmpl	$12, %r13d	#, nextchr
	je	.L1042	#,
	.loc 1 2712 0 discriminator 3
	movl	$1, %eax	#, iftmp.593
	jmp	.L1043	#
.L1042:
	.loc 1 2712 0 discriminator 2
	movl	$0, %eax	#, iftmp.593
.L1043:
	.loc 1 2711 0 is_stmt 1
	andl	$1, %eax	#, iftmp.592
	jmp	.L1044	#
.L1041:
	.loc 1 2712 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1045	#,
	.loc 1 2712 0 is_stmt 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_773, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_777, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8192, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1046	#,
.L1045:
	.loc 1 2712 0 discriminator 1
	movl	$1, %eax	#, iftmp.594
	jmp	.L1047	#
.L1046:
	.loc 1 2712 0 discriminator 3
	movl	$0, %eax	#, iftmp.594
.L1047:
	.loc 1 2711 0 is_stmt 1
	andl	$1, %eax	#, iftmp.592
.L1044:
	.loc 1 2711 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.592
	je	.L1048	#,
	.loc 1 2713 0 is_stmt 1
	jmp	.L867	#
.L1048:
	.loc 1 2714 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_784], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2722 0
	jmp	.L864	#
.L1031:
	.loc 1 2717 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$22, %al	#, D.19316
	jne	.L1050	#,
	.loc 1 2718 0
	cmpl	$32, %r13d	#, nextchr
	je	.L1051	#,
	.loc 1 2718 0 is_stmt 0 discriminator 1
	cmpl	$9, %r13d	#, nextchr
	je	.L1051	#,
	cmpl	$10, %r13d	#, nextchr
	je	.L1051	#,
	cmpl	$13, %r13d	#, nextchr
	je	.L1051	#,
	cmpl	$12, %r13d	#, nextchr
	je	.L1051	#,
	.loc 1 2718 0 discriminator 3
	movl	$1, %eax	#, iftmp.596
	jmp	.L1052	#
.L1051:
	.loc 1 2718 0 discriminator 2
	movl	$0, %eax	#, iftmp.596
.L1052:
	.loc 1 2717 0 is_stmt 1
	andl	$1, %eax	#, iftmp.595
	jmp	.L1053	#
.L1050:
	.loc 1 2718 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1054	#,
	.loc 1 2718 0 is_stmt 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_792, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_796, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8192, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1055	#,
.L1054:
	.loc 1 2718 0 discriminator 1
	movl	$1, %eax	#, iftmp.597
	jmp	.L1056	#
.L1055:
	.loc 1 2718 0 discriminator 3
	movl	$0, %eax	#, iftmp.597
.L1056:
	.loc 1 2717 0 is_stmt 1
	andl	$1, %eax	#, iftmp.595
.L1053:
	.loc 1 2717 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.595
	je	.L1057	#,
	.loc 1 2719 0 is_stmt 1
	jmp	.L867	#
.L1057:
	.loc 1 2720 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_803], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2722 0
	jmp	.L864	#
.L831:
	.loc 1 2724 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.598
	orl	$1, %eax	#, PL_reg_flags.599
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.599, PL_reg_flags
.L830:
	.loc 1 2727 0
	testl	%r13d, %r13d	# nextchr
	jne	.L1058	#,
	.loc 1 2727 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.600
	cmpq	%rax, %rbx	# PL_regeol.600, locinput
	jb	.L1058	#,
	.loc 1 2728 0 is_stmt 1
	jmp	.L867	#
.L1058:
	.loc 1 2729 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1059	#,
	.loc 1 2730 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.601
	testq	%rax, %rax	# PL_utf8_space.601
	jne	.L1060	#,
	.loc 1 2730 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC2, %edi	#,
	call	Perl_is_utf8_space	#
	call	Perl_pop_scope	#
.L1060:
	.loc 1 2731 0 is_stmt 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$24, %al	#, D.19316
	jne	.L1061	#,
	.loc 1 2732 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.603
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_space.603,
	call	Perl_swash_fetch	#
	.loc 1 2731 0
	testq	%rax, %rax	# D.19318
	setne	%al	#, iftmp.602
	jmp	.L1062	#
.L1061:
	.loc 1 2733 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	.loc 1 2731 0 discriminator 1
	cmpq	$255, %rax	#, D.19318
	ja	.L1063	#,
	.loc 1 2733 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L1064	#,
	.loc 1 2733 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r12	# *_818, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r12, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_824, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8192, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1064	#,
	.loc 1 2733 0 discriminator 3
	movl	$1, %eax	#, iftmp.605
	jmp	.L1065	#
.L1064:
	.loc 1 2733 0 discriminator 2
	movl	$0, %eax	#, iftmp.605
.L1065:
	.loc 1 2731 0 is_stmt 1
	testl	%eax, %eax	# iftmp.605
	setne	%al	#, iftmp.604
	jmp	.L1062	#
.L1063:
	.loc 1 2733 0 discriminator 2
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_space_lc	#
	.loc 1 2731 0 discriminator 2
	testb	%al, %al	# D.19321
	setne	%al	#, iftmp.604
.L1062:
	.loc 1 2731 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.602
	je	.L1067	#,
	.loc 1 2735 0 is_stmt 1
	jmp	.L867	#
.L1067:
	.loc 1 2737 0
	movslq	%r13d, %rax	# nextchr, tmp2113
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2738 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_837], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2739 0
	jmp	.L864	#
.L1059:
	.loc 1 2741 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$24, %al	#, D.19316
	jne	.L1068	#,
	.loc 1 2742 0
	cmpl	$32, %r13d	#, nextchr
	je	.L1069	#,
	.loc 1 2742 0 is_stmt 0 discriminator 2
	cmpl	$9, %r13d	#, nextchr
	je	.L1069	#,
	.loc 1 2742 0 discriminator 1
	cmpl	$10, %r13d	#, nextchr
	je	.L1069	#,
	cmpl	$13, %r13d	#, nextchr
	je	.L1069	#,
	cmpl	$12, %r13d	#, nextchr
	jne	.L1070	#,
.L1069:
	movl	$1, %eax	#, iftmp.607
	jmp	.L1071	#
.L1070:
	.loc 1 2742 0 discriminator 3
	movl	$0, %eax	#, iftmp.607
.L1071:
	.loc 1 2741 0 is_stmt 1
	andl	$1, %eax	#, iftmp.606
	jmp	.L1072	#
.L1068:
	.loc 1 2742 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1073	#,
	.loc 1 2742 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_845, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_849, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$8192, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1073	#,
	.loc 1 2742 0 discriminator 3
	movl	$1, %eax	#, iftmp.608
	jmp	.L1074	#
.L1073:
	.loc 1 2742 0 discriminator 2
	movl	$0, %eax	#, iftmp.608
.L1074:
	.loc 1 2741 0 is_stmt 1
	andl	$1, %eax	#, iftmp.606
.L1072:
	.loc 1 2741 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.606
	je	.L1075	#,
	.loc 1 2743 0 is_stmt 1
	jmp	.L867	#
.L1075:
	.loc 1 2744 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_856], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2745 0
	jmp	.L864	#
.L833:
	.loc 1 2747 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.609
	orl	$1, %eax	#, PL_reg_flags.610
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.610, PL_reg_flags
.L832:
	.loc 1 2750 0
	testl	%r13d, %r13d	# nextchr
	jne	.L1076	#,
	.loc 1 2751 0
	jmp	.L867	#
.L1076:
	.loc 1 2752 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1077	#,
	.loc 1 2753 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.611
	testq	%rax, %rax	# PL_utf8_digit.611
	jne	.L1078	#,
	.loc 1 2753 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC3, %edi	#,
	call	Perl_is_utf8_digit	#
	call	Perl_pop_scope	#
.L1078:
	.loc 1 2754 0 is_stmt 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$26, %al	#, D.19316
	jne	.L1079	#,
	.loc 1 2755 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.613
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_digit.613,
	call	Perl_swash_fetch	#
	.loc 1 2754 0
	testq	%rax, %rax	# D.19318
	sete	%al	#, iftmp.612
	jmp	.L1080	#
.L1079:
	.loc 1 2756 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	.loc 1 2754 0 discriminator 1
	cmpq	$255, %rax	#, D.19318
	ja	.L1081	#,
	.loc 1 2756 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L1082	#,
	.loc 1 2756 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r12	# *_870, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r12, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_876, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$2048, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1082	#,
	.loc 1 2756 0 discriminator 3
	movl	$1, %eax	#, iftmp.615
	jmp	.L1083	#
.L1082:
	.loc 1 2756 0 discriminator 2
	movl	$0, %eax	#, iftmp.615
.L1083:
	.loc 1 2754 0 is_stmt 1
	testl	%eax, %eax	# iftmp.615
	sete	%al	#, iftmp.614
	jmp	.L1080	#
.L1081:
	.loc 1 2756 0 discriminator 2
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_digit_lc	#
	.loc 1 2754 0 discriminator 2
	testb	%al, %al	# D.19321
	sete	%al	#, iftmp.614
.L1080:
	.loc 1 2754 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.612
	je	.L1085	#,
	.loc 1 2758 0 is_stmt 1
	jmp	.L867	#
.L1085:
	.loc 1 2760 0
	movslq	%r13d, %rax	# nextchr, tmp2114
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2761 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_889], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2762 0
	jmp	.L864	#
.L1077:
	.loc 1 2764 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$26, %al	#, D.19316
	jne	.L1086	#,
	.loc 1 2765 0
	cmpl	$47, %r13d	#, nextchr
	jle	.L1087	#,
	.loc 1 2765 0 is_stmt 0 discriminator 2
	cmpl	$57, %r13d	#, nextchr
	jle	.L1088	#,
.L1087:
	.loc 1 2765 0 discriminator 1
	movl	$1, %eax	#, iftmp.617
	jmp	.L1089	#
.L1088:
	.loc 1 2765 0 discriminator 3
	movl	$0, %eax	#, iftmp.617
.L1089:
	.loc 1 2764 0 is_stmt 1
	andl	$1, %eax	#, iftmp.616
	jmp	.L1090	#
.L1086:
	.loc 1 2765 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1091	#,
	.loc 1 2765 0 is_stmt 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_897, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_901, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$2048, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1092	#,
.L1091:
	.loc 1 2765 0 discriminator 1
	movl	$1, %eax	#, iftmp.618
	jmp	.L1093	#
.L1092:
	.loc 1 2765 0 discriminator 3
	movl	$0, %eax	#, iftmp.618
.L1093:
	.loc 1 2764 0 is_stmt 1
	andl	$1, %eax	#, iftmp.616
.L1090:
	.loc 1 2764 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.616
	je	.L1094	#,
	.loc 1 2766 0 is_stmt 1
	jmp	.L867	#
.L1094:
	.loc 1 2767 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_908], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2768 0
	jmp	.L864	#
.L835:
	.loc 1 2770 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.619
	orl	$1, %eax	#, PL_reg_flags.620
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.620, PL_reg_flags
.L834:
	.loc 1 2773 0
	testl	%r13d, %r13d	# nextchr
	jne	.L1095	#,
	.loc 1 2773 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.621
	cmpq	%rax, %rbx	# PL_regeol.621, locinput
	jb	.L1095	#,
	.loc 1 2774 0 is_stmt 1
	jmp	.L867	#
.L1095:
	.loc 1 2775 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1096	#,
	.loc 1 2776 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.622
	testq	%rax, %rax	# PL_utf8_digit.622
	jne	.L1097	#,
	.loc 1 2776 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC3, %edi	#,
	call	Perl_is_utf8_digit	#
	call	Perl_pop_scope	#
.L1097:
	.loc 1 2777 0 is_stmt 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$28, %al	#, D.19316
	jne	.L1098	#,
	.loc 1 2778 0
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.624
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_digit.624,
	call	Perl_swash_fetch	#
	.loc 1 2777 0
	testq	%rax, %rax	# D.19318
	setne	%al	#, iftmp.623
	jmp	.L1099	#
.L1098:
	.loc 1 2779 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	.loc 1 2777 0 discriminator 1
	cmpq	$255, %rax	#, D.19318
	ja	.L1100	#,
	.loc 1 2779 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19318
	testq	%rax, %rax	# D.19318
	jne	.L1101	#,
	.loc 1 2779 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r12	# *_923, D.19330
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19318
	addq	%r12, %rax	# D.19330, D.19330
	movzwl	(%rax), %eax	# *_929, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$2048, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1101	#,
	.loc 1 2779 0 discriminator 3
	movl	$1, %eax	#, iftmp.626
	jmp	.L1102	#
.L1101:
	.loc 1 2779 0 discriminator 2
	movl	$0, %eax	#, iftmp.626
.L1102:
	.loc 1 2777 0 is_stmt 1
	testl	%eax, %eax	# iftmp.626
	setne	%al	#, iftmp.625
	jmp	.L1099	#
.L1100:
	.loc 1 2779 0 discriminator 2
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19318,
	call	Perl_is_uni_digit_lc	#
	.loc 1 2777 0 discriminator 2
	testb	%al, %al	# D.19321
	setne	%al	#, iftmp.625
.L1099:
	.loc 1 2777 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.623
	je	.L1104	#,
	.loc 1 2781 0 is_stmt 1
	jmp	.L867	#
.L1104:
	.loc 1 2783 0
	movslq	%r13d, %rax	# nextchr, tmp2115
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2784 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_942], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2785 0
	jmp	.L864	#
.L1096:
	.loc 1 2787 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$28, %al	#, D.19316
	jne	.L1105	#,
	.loc 1 2788 0
	cmpl	$47, %r13d	#, nextchr
	jle	.L1106	#,
	.loc 1 2788 0 is_stmt 0 discriminator 1
	cmpl	$57, %r13d	#, nextchr
	jg	.L1106	#,
	.loc 1 2788 0 discriminator 3
	movl	$1, %eax	#, iftmp.628
	jmp	.L1107	#
.L1106:
	.loc 1 2788 0 discriminator 2
	movl	$0, %eax	#, iftmp.628
.L1107:
	.loc 1 2787 0 is_stmt 1
	andl	$1, %eax	#, iftmp.627
	jmp	.L1108	#
.L1105:
	.loc 1 2788 0
	movl	%r13d, %eax	# nextchr, D.19319
	andl	$-128, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1109	#,
	.loc 1 2788 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_950, D.19330
	movslq	%r13d, %rdx	# nextchr, D.19318
	addq	%rdx, %rdx	# D.19318
	addq	%rdx, %rax	# D.19318, D.19330
	movzwl	(%rax), %eax	# *_954, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	andl	$2048, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1109	#,
	.loc 1 2788 0 discriminator 3
	movl	$1, %eax	#, iftmp.629
	jmp	.L1110	#
.L1109:
	.loc 1 2788 0 discriminator 2
	movl	$0, %eax	#, iftmp.629
.L1110:
	.loc 1 2787 0 is_stmt 1
	andl	$1, %eax	#, iftmp.627
.L1108:
	.loc 1 2787 0 is_stmt 0 discriminator 1
	testb	%al, %al	# iftmp.627
	je	.L1111	#,
	.loc 1 2789 0 is_stmt 1
	jmp	.L867	#
.L1111:
	.loc 1 2790 0
	addq	$1, %rbx	#, locinput
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_961], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2791 0
	jmp	.L864	#
.L836:
	.loc 1 2793 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.630
	cmpq	%rax, %rbx	# PL_regeol.630, locinput
	jb	.L1112	#,
	.loc 1 2794 0
	jmp	.L867	#
.L1112:
	.loc 1 2795 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1113	#,
	.loc 1 2796 0
	movq	PL_utf8_mark(%rip), %rax	# PL_utf8_mark, PL_utf8_mark.631
	testq	%rax, %rax	# PL_utf8_mark.631
	jne	.L1114	#,
	.loc 1 2796 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC7, %edi	#,
	call	Perl_is_utf8_mark	#
	call	Perl_pop_scope	#
.L1114:
	.loc 1 2797 0 is_stmt 1
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_mark(%rip), %rax	# PL_utf8_mark, PL_utf8_mark.632
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_mark.632,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19318
	je	.L1115	#,
	.loc 1 2798 0
	jmp	.L867	#
.L1115:
	.loc 1 2799 0
	movslq	%r13d, %rax	# nextchr, tmp2116
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2800 0
	jmp	.L1116	#
.L1118:
	.loc 1 2802 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_55], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
.L1116:
	.loc 1 2800 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.633
	cmpq	%rax, %rbx	# PL_regeol.633, locinput
	jae	.L1117	#,
	.loc 1 2801 0 discriminator 2
	movsbl	-605(%rbp), %edx	# %sfp, D.19319
	movq	PL_utf8_mark(%rip), %rax	# PL_utf8_mark, PL_utf8_mark.634
	movq	%rbx, %rsi	# locinput,
	movq	%rax, %rdi	# PL_utf8_mark.634,
	call	Perl_swash_fetch	#
	.loc 1 2800 0 discriminator 2
	testq	%rax, %rax	# D.19318
	jne	.L1118	#,
.L1117:
	.loc 1 2803 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.635
	cmpq	%rax, %rbx	# PL_regeol.635, locinput
	jbe	.L1119	#,
	.loc 1 2804 0
	jmp	.L867	#
.L1113:
	.loc 1 2807 0
	addq	$1, %rbx	#, locinput
.L1119:
	.loc 1 2808 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_56], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2809 0
	jmp	.L864	#
.L853:
	.loc 1 2811 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.636
	orl	$1, %eax	#, PL_reg_flags.637
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.637, PL_reg_flags
.L852:
	.loc 1 2815 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %r15d	# D.19324, n
	.loc 1 2816 0
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.638
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	(%rax), %r14d	# *_992, ln
	.loc 1 2817 0
	movl	PL_reg_maxiter(%rip), %eax	# PL_reg_maxiter, PL_reg_maxiter.639
	movl	%eax, PL_reg_leftiter(%rip)	# PL_reg_maxiter.639, PL_reg_leftiter
	.loc 1 2818 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.640
	movl	(%rax), %eax	# *PL_reglastparen.640_995, D.19324
	cmpl	%r15d, %eax	# n, D.19319
	jl	.L867	#,
	.loc 1 2818 0 is_stmt 0 discriminator 1
	cmpl	$-1, %r14d	#, ln
	je	.L867	#,
	.loc 1 2820 0 is_stmt 1
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.641
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	(%rax), %eax	# *_1001, D.19319
	cmpl	%r14d, %eax	# ln, D.19319
	jne	.L1120	#,
	.loc 1 2821 0
	jmp	.L864	#
.L1120:
	.loc 1 2823 0
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.642
	movslq	%r14d, %rax	# ln, D.19323
	addq	%rdx, %rax	# PL_bostr.642, s
	movq	%rax, -616(%rbp)	# s, %sfp
	.loc 1 2824 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1121	#,
	.loc 1 2824 0 is_stmt 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1121	#,
.LBB31:
	.loc 1 2825 0 is_stmt 1
	movq	%rbx, -456(%rbp)	# locinput, l
	.loc 1 2826 0
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.643
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.644
	movslq	%r15d, %rcx	# n, D.19318
	salq	$2, %rcx	#, D.19318
	addq	%rcx, %rax	# D.19318, D.19333
	movl	(%rax), %eax	# *_1012, D.19319
	cltq
	addq	%rdx, %rax	# PL_bostr.643, tmp2118
	movq	%rax, -336(%rbp)	# tmp2118, e
	.loc 1 2832 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$48, %al	#, D.19316
	jne	.L1122	#,
.LBB32:
	.loc 1 2836 0
	jmp	.L1123	#
.L1126:
	.loc 1 2837 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.645
	cmpq	%rax, -456(%rbp)	# PL_regeol.645, l
	jb	.L1124	#,
	.loc 1 2838 0
	jmp	.L1506	#
.L1124:
	.loc 1 2839 0
	leaq	-488(%rbp), %rdx	#, tmp2119
	leaq	-80(%rbp), %rax	#, tmp2120
	movq	%rax, %rsi	# tmp2120,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_to_utf8_lower	#
	.loc 1 2840 0
	leaq	-192(%rbp), %rdx	#, tmp2121
	leaq	-64(%rbp), %rcx	#, tmp2122
	movq	-456(%rbp), %rax	# l, tmp2123
	movq	%rcx, %rsi	# tmp2122,
	movq	%rax, %rdi	# tmp2123,
	call	Perl_to_utf8_lower	#
	.loc 1 2841 0
	movq	-488(%rbp), %rdx	# ulen1, ulen1.646
	movq	-192(%rbp), %rax	# ulen2, ulen2.647
	cmpq	%rax, %rdx	# ulen2.647, ulen1.646
	jne	.L1506	#,
	.loc 1 2841 0 is_stmt 0 discriminator 1
	movq	-488(%rbp), %rdx	# ulen1, ulen1.648
	leaq	-64(%rbp), %rcx	#, tmp2124
	leaq	-80(%rbp), %rax	#, tmp2125
	movq	%rcx, %rsi	# tmp2124,
	movq	%rax, %rdi	# tmp2125,
	call	memcmp	#
	testl	%eax, %eax	# D.19319
	jne	.L1506	#,
	.loc 1 2843 0 is_stmt 1
	movq	-488(%rbp), %rax	# ulen1, ulen1.649
	addq	%rax, -616(%rbp)	# ulen1.649, %sfp
	.loc 1 2844 0
	movq	-192(%rbp), %rax	# ulen2, ulen2.650
	addq	%rax, -456(%rbp)	# ulen2.650, l
.L1123:
	.loc 1 2836 0 discriminator 1
	movq	-616(%rbp), %rax	# %sfp, s
	cmpq	-336(%rbp), %rax	# e, s
	jb	.L1126	#,
.L1122:
.LBE32:
	.loc 1 2847 0
	movq	-456(%rbp), %rbx	# l, locinput
	.loc 1 2848 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_1026], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2849 0
	jmp	.L864	#
.L1121:
.LBE31:
	.loc 1 2853 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %eax	# MEM[(U8 *)s_1005], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	%r13d, %eax	# nextchr, D.19319
	je	.L1127	#,
	.loc 1 2854 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	.loc 1 2853 0 discriminator 1
	cmpb	$47, %al	#, D.19316
	je	.L867	#,
	.loc 1 2855 0
	movq	-616(%rbp), %rax	# %sfp, s
	movzbl	(%rax), %edx	# MEM[(U8 *)s_1005], D.19316
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	.loc 1 2856 0
	cmpb	$48, %al	#, D.19316
	jne	.L1128	#,
	.loc 1 2856 0 is_stmt 0 discriminator 1
	movl	$PL_fold, %eax	#, iftmp.651
	jmp	.L1129	#
.L1128:
	.loc 1 2856 0 discriminator 2
	movl	$PL_fold_locale, %eax	#, iftmp.651
.L1129:
	.loc 1 2856 0 discriminator 3
	movslq	%r13d, %rcx	# nextchr, D.19323
	addq	%rcx, %rax	# D.19323, D.19328
	movzbl	(%rax), %eax	# *_1037, D.19316
	.loc 1 2854 0 is_stmt 1 discriminator 3
	cmpb	%al, %dl	# D.19316, D.19316
	jne	.L867	#,
.L1127:
	.loc 1 2858 0
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.652
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	(%rax), %eax	# *_1042, D.19319
	subl	%r14d, %eax	# ln, ln
	movl	%eax, %r14d	# ln, ln
	.loc 1 2859 0
	movslq	%r14d, %rax	# ln, D.19323
	leaq	(%rbx,%rax), %rdx	#, D.19320
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.653
	cmpq	%rax, %rdx	# PL_regeol.653, D.19320
	jbe	.L1130	#,
	.loc 1 2860 0
	jmp	.L867	#
.L1130:
	.loc 1 2861 0
	cmpl	$1, %r14d	#, ln
	jle	.L1131	#,
	.loc 1 2861 0 is_stmt 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$47, %al	#, D.19316
	jne	.L1132	#,
	.loc 1 2862 0 is_stmt 1
	movslq	%r14d, %rax	# ln, D.19318
	movq	%rax, %rdx	# D.19318,
	movq	%rbx, %rsi	# locinput,
	movq	-616(%rbp), %rdi	# %sfp,
	call	memcmp	#
	.loc 1 2861 0
	testl	%eax, %eax	# D.19319
	setne	%al	#, iftmp.654
	jmp	.L1133	#
.L1132:
	.loc 1 2863 0 discriminator 1
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	.loc 1 2861 0 discriminator 1
	cmpb	$48, %al	#, D.19316
	jne	.L1134	#,
	.loc 1 2864 0
	movl	%r14d, %edx	# ln,
	movq	%rbx, %rsi	# locinput,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_ibcmp	#
	.loc 1 2861 0
	testl	%eax, %eax	# D.19319
	setne	%al	#, iftmp.655
	jmp	.L1133	#
.L1134:
	.loc 1 2865 0 discriminator 2
	movl	%r14d, %edx	# ln,
	movq	%rbx, %rsi	# locinput,
	movq	-616(%rbp), %rdi	# %sfp,
	call	Perl_ibcmp_locale	#
	.loc 1 2861 0 discriminator 2
	testl	%eax, %eax	# D.19319
	setne	%al	#, iftmp.655
.L1133:
	.loc 1 2861 0 is_stmt 0 discriminator 4
	testb	%al, %al	# iftmp.654
	je	.L1131	#,
	.loc 1 2866 0 is_stmt 1
	jmp	.L867	#
.L1131:
	.loc 1 2867 0
	movslq	%r14d, %rax	# ln, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	.loc 1 2868 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_1059], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
	.loc 1 2869 0
	jmp	.L864	#
.L861:
.LBB34:
	.loc 1 2878 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, sp
	movq	%rax, %rdi	# sp, sp
	.loc 1 2879 0
	movq	PL_op(%rip), %rax	# PL_op, tmp2126
	movq	%rax, -328(%rbp)	# tmp2126, oop
	.loc 1 2880 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, tmp2127
	movq	%rax, -320(%rbp)	# tmp2127, ocurcop
	.loc 1 2883 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, tmp2128
	movq	%rax, -312(%rbp)	# tmp2128, oreg
	.loc 1 2885 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %r15d	# D.19324, n
	.loc 1 2886 0
	movq	PL_regdata(%rip), %rax	# PL_regdata, PL_regdata.656
	movslq	%r15d, %rdx	# n, tmp2129
	addq	$2, %rdx	#, tmp2130
	movq	(%rax,%rdx,8), %rax	# PL_regdata.656_1068->data, PL_op.657
	movq	%rax, PL_op(%rip)	# PL_op.657, PL_op
	.loc 1 2888 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, tmp2131
	movq	%rax, -304(%rbp)	# tmp2131, old_comppad
	movq	PL_regdata(%rip), %rax	# PL_regdata, PL_regdata.658
	leal	2(%r15), %edx	#, D.19319
	movslq	%edx, %rdx	# D.19319, tmp2132
	addq	$2, %rdx	#, tmp2133
	movq	(%rax,%rdx,8), %rax	# PL_regdata.658_1071->data, PL_comppad.659
	movq	%rax, PL_comppad(%rip)	# PL_comppad.659, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.661
	testq	%rax, %rax	# PL_comppad.661
	je	.L1136	#,
	.loc 1 2888 0 is_stmt 0 discriminator 1
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.662
	movq	(%rax), %rax	# PL_comppad.662_1075->sv_any, D.19334
	movq	(%rax), %rax	# _1076->xav_array, iftmp.660
	jmp	.L1137	#
.L1136:
	.loc 1 2888 0 discriminator 2
	movl	$0, %eax	#, iftmp.660
.L1137:
	.loc 1 2888 0 discriminator 3
	movq	%rax, PL_curpad(%rip)	# iftmp.660, PL_curpad
	.loc 1 2889 0 is_stmt 1 discriminator 3
	movq	PL_regendp(%rip), %rdx	# PL_regendp, PL_regendp.663
	movq	PL_reg_magic(%rip), %rax	# PL_reg_magic, PL_reg_magic.664
	movq	%rbx, %rsi	# locinput, locinput.665
	movq	PL_bostr(%rip), %rcx	# PL_bostr, PL_bostr.666
	subq	%rcx, %rsi	# PL_bostr.667, D.19322
	movq	%rsi, %rcx	# D.19322, D.19322
	movl	%ecx, 40(%rax)	# D.19319, PL_reg_magic.664_1080->mg_len
	movl	40(%rax), %eax	# PL_reg_magic.664_1080->mg_len, D.19319
	movl	%eax, (%rdx)	# D.19319, *PL_regendp.663_1079
.LBB35:
	.loc 1 2892 0 discriminator 3
	movq	%rdi, %rax	# sp, sp
	movq	%rax, -296(%rbp)	# sp, before
	.loc 1 2893 0 discriminator 3
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.668
	call	*%rax	# PL_runops.668
	.loc 1 2894 0 discriminator 3
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, sp
	movq	%rax, %rdi	# sp, sp
	.loc 1 2895 0 discriminator 3
	cmpq	-296(%rbp), %rax	# before, sp
	jne	.L1138	#,
	.loc 1 2896 0
	movq	$PL_sv_undef, -448(%rbp)	#, ret
	jmp	.L1139	#
.L1138:
	.loc 1 2898 0
	movq	%rdi, %rax	# sp, sp.669
	leaq	-8(%rax), %rsi	#, sp
	movq	(%rax), %rax	# *sp.669_1091, tmp2134
	movq	%rax, -448(%rbp)	# tmp2134, ret
	.loc 1 2899 0
	movq	%rsi, PL_stack_sp(%rip)	# sp, PL_stack_sp
.L1139:
.LBE35:
	.loc 1 2903 0
	movq	-328(%rbp), %rax	# oop, tmp2135
	movq	%rax, PL_op(%rip)	# tmp2135, PL_op
	.loc 1 2904 0
	movq	-304(%rbp), %rax	# old_comppad, tmp2136
	movq	%rax, PL_comppad(%rip)	# tmp2136, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.671
	testq	%rax, %rax	# PL_comppad.671
	je	.L1140	#,
	.loc 1 2904 0 is_stmt 0 discriminator 1
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.672
	movq	(%rax), %rax	# PL_comppad.672_1095->sv_any, D.19334
	movq	(%rax), %rax	# _1096->xav_array, iftmp.670
	jmp	.L1141	#
.L1140:
	.loc 1 2904 0 discriminator 2
	movl	$0, %eax	#, iftmp.670
.L1141:
	.loc 1 2904 0 discriminator 3
	movq	%rax, PL_curpad(%rip)	# iftmp.670, PL_curpad
	.loc 1 2905 0 is_stmt 1 discriminator 3
	movq	-320(%rbp), %rax	# ocurcop, tmp2137
	movq	%rax, PL_curcop(%rip)	# tmp2137, PL_curcop
	.loc 1 2906 0 discriminator 3
	cmpl	$0, -584(%rbp)	#, logical
	je	.L1142	#,
	.loc 1 2907 0
	cmpl	$2, -584(%rbp)	#, logical
	jne	.L1143	#,
.LBB36:
	.loc 1 2909 0
	movq	$0, -432(%rbp)	#, mg
	.loc 1 2915 0
	movq	-448(%rbp), %rax	# ret, tmp2138
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$524288, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1144	#,
	.loc 1 2915 0 is_stmt 0 discriminator 1
	movq	-448(%rbp), %rax	# ret, tmp2139
	movq	(%rax), %rax	# ret_128->sv_any, D.19327
	movq	(%rax), %r12	# MEM[(struct XRV *)_1102].xrv_rv, sv
	movl	12(%r12), %eax	# sv_1103->sv_flags, D.19324
	andl	$16384, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1144	#,
	.loc 1 2916 0 is_stmt 1
	movl	$114, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_mg_find	#
	movq	%rax, -432(%rbp)	# tmp2140, mg
	jmp	.L1145	#
.L1144:
	.loc 1 2917 0
	movq	-448(%rbp), %rax	# ret, tmp2141
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$16384, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1145	#,
	.loc 1 2918 0
	movq	-448(%rbp), %rax	# ret, tmp2142
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$8192, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1146	#,
	.loc 1 2919 0
	movq	-448(%rbp), %rax	# ret, tmp2143
	movl	$114, %esi	#,
	movq	%rax, %rdi	# tmp2143,
	call	Perl_sv_unmagic	#
	jmp	.L1145	#
.L1146:
	.loc 1 2921 0
	movq	-448(%rbp), %rax	# ret, tmp2144
	movl	$114, %esi	#,
	movq	%rax, %rdi	# tmp2144,
	call	Perl_mg_find	#
	movq	%rax, -432(%rbp)	# tmp2145, mg
.L1145:
	.loc 1 2924 0
	cmpq	$0, -432(%rbp)	#, mg
	je	.L1147	#,
	.loc 1 2925 0
	movq	-432(%rbp), %rax	# mg, tmp2146
	movq	24(%rax), %rax	# mg_130->mg_obj, tmp2147
	movq	%rax, -440(%rbp)	# tmp2147, re
	.loc 1 2926 0
	cmpq	$0, -440(%rbp)	#, re
	je	.L1150	#,
	.loc 1 2926 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# re, tmp2148
	movl	68(%rax), %eax	# re_1112->refcnt, D.19319
	leal	1(%rax), %ecx	#, D.19319
	movq	-440(%rbp), %rdx	# re, tmp2149
	movl	%ecx, 68(%rdx)	# D.19319, re_1112->refcnt
	testl	%eax, %eax	# D.19319
	je	.L1150	#,
	jmp	.L1150	#
.L1147:
.LBB37:
	.loc 1 2930 0 is_stmt 1
	movq	-448(%rbp), %rax	# ret, tmp2150
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$262144, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1151	#,
	.loc 1 2930 0 is_stmt 0 discriminator 1
	movq	-448(%rbp), %rax	# ret, tmp2151
	movq	(%rax), %rax	# ret_128->sv_any, D.19327
	movq	8(%rax), %rax	# MEM[(struct XPV *)_1120].xpv_cur, len.675
	movq	%rax, -488(%rbp)	# len.675, len
	movq	-448(%rbp), %rax	# ret, tmp2152
	movq	(%rax), %rax	# ret_128->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_1122].xpv_pv, iftmp.674
	jmp	.L1152	#
.L1151:
	.loc 1 2930 0 discriminator 2
	leaq	-488(%rbp), %rcx	#, tmp2153
	movq	-448(%rbp), %rax	# ret, tmp2154
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp2153,
	movq	%rax, %rdi	# tmp2154,
	call	Perl_sv_2pv_flags	#
.L1152:
	.loc 1 2930 0 discriminator 3
	movq	%rax, -288(%rbp)	# iftmp.674, t
	.loc 1 2932 0 is_stmt 1 discriminator 3
	movq	PL_regprecomp(%rip), %rax	# PL_regprecomp, tmp2155
	movq	%rax, -280(%rbp)	# tmp2155, oprecomp
	.loc 1 2933 0 discriminator 3
	movl	PL_regsize(%rip), %eax	# PL_regsize, tmp2156
	movl	%eax, -556(%rbp)	# tmp2156, osize
	.loc 1 2934 0 discriminator 3
	movl	PL_regnpar(%rip), %eax	# PL_regnpar, tmp2157
	movl	%eax, -552(%rbp)	# tmp2157, onpar
	.loc 1 2936 0 discriminator 3
	leaq	-192(%rbp), %rax	#, tmp2158
	movl	$112, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2158,
	call	memset	#
	.loc 1 2937 0 discriminator 3
	movq	-448(%rbp), %rax	# ret, tmp2159
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$536870912, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1153	#,
	.loc 1 2937 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.676
	movzbl	37(%rax), %eax	# PL_curcop.676_1131->op_private, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	andl	$8, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1153	#,
	movzbl	-96(%rbp), %eax	# pm.op_pmdynflags, D.19316
	orl	$8, %eax	#, D.19316
	movb	%al, -96(%rbp)	# D.19316, pm.op_pmdynflags
.L1153:
	.loc 1 2938 0 is_stmt 1
	movq	PL_regcompp(%rip), %rax	# PL_regcompp, PL_regcompp.677
	movq	-488(%rbp), %rcx	# len, len.678
	movq	-288(%rbp), %rdx	# t, tmp2160
	leaq	(%rcx,%rdx), %rsi	#, D.19320
	leaq	-192(%rbp), %rdx	#, tmp2161
	movq	-288(%rbp), %rcx	# t, tmp2162
	movq	%rcx, %rdi	# tmp2162,
	call	*%rax	# PL_regcompp.677
	movq	%rax, -440(%rbp)	# tmp2163, re
	.loc 1 2939 0
	movq	-448(%rbp), %rax	# ret, tmp2164
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	.loc 1 2940 0
	andl	$8399360, %eax	#, D.19324
	.loc 1 2939 0
	testl	%eax, %eax	# D.19324
	jne	.L1154	#,
	.loc 1 2942 0
	cmpq	$0, -440(%rbp)	#, re
	je	.L1156	#,
	.loc 1 2942 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# re, tmp2165
	movl	68(%rax), %eax	# re_1140->refcnt, D.19319
	leal	1(%rax), %ecx	#, D.19319
	movq	-440(%rbp), %rdx	# re, tmp2166
	movl	%ecx, 68(%rdx)	# D.19319, re_1140->refcnt
	testl	%eax, %eax	# D.19319
	je	.L1156	#,
	.loc 1 2942 0
	nop
.L1156:
	.loc 1 2942 0 discriminator 3
	movq	-440(%rbp), %rsi	# re, tmp2167
	movq	-448(%rbp), %rax	# ret, tmp2168
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$114, %edx	#,
	movq	%rax, %rdi	# tmp2168,
	call	Perl_sv_magic	#
.L1154:
	.loc 1 2944 0 is_stmt 1
	movq	-280(%rbp), %rax	# oprecomp, tmp2169
	movq	%rax, PL_regprecomp(%rip)	# tmp2169, PL_regprecomp
	.loc 1 2945 0
	movl	-556(%rbp), %eax	# osize, tmp2170
	movl	%eax, PL_regsize(%rip)	# tmp2170, PL_regsize
	.loc 1 2946 0
	movl	-552(%rbp), %eax	# onpar, tmp2171
	movl	%eax, PL_regnpar(%rip)	# tmp2171, PL_regnpar
.L1150:
.LBE37:
	.loc 1 2956 0
	movq	-480(%rbp), %rax	# next, tmp2172
	movq	%rax, -184(%rbp)	# tmp2172, state.node
	.loc 1 2957 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, PL_reg_call_cc.680
	movq	%rax, -176(%rbp)	# PL_reg_call_cc.680, state.prev
	.loc 1 2958 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.681
	movq	%rax, -168(%rbp)	# PL_regcc.681, state.cc
	.loc 1 2959 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, PL_reg_re.682
	movq	%rax, -160(%rbp)	# PL_reg_re.682, state.re
	.loc 1 2961 0
	movq	$0, PL_regcc(%rip)	#, PL_regcc
	.loc 1 2963 0
	movl	$0, %edi	#,
	call	S_regcppush	#
	movl	%eax, -548(%rbp)	# tmp2173, cp
	.loc 1 2964 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2174
	movl	%eax, -544(%rbp)	# tmp2174, lastcp
	.loc 1 2965 0
	movq	-440(%rbp), %rax	# re, tmp2175
	movq	%rax, %rdi	# tmp2175,
	call	S_cache_re	#
	.loc 1 2966 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.683
	movl	%eax, -192(%rbp)	# PL_savestack_ix.683, state.ss
	.loc 1 2967 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.684
	movl	$0, (%rax)	#, *PL_reglastparen.684_1154
	.loc 1 2968 0
	movq	PL_reglastcloseparen(%rip), %rax	# PL_reglastcloseparen, PL_reglastcloseparen.685
	movl	$0, (%rax)	#, *PL_reglastcloseparen.685_1155
	.loc 1 2969 0
	leaq	-192(%rbp), %rax	#, tmp2176
	movq	%rax, PL_reg_call_cc(%rip)	# tmp2176, PL_reg_call_cc
	.loc 1 2970 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 2971 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.686
	andl	$8, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	setne	%al	#, D.19325
	movzbl	%al, %edx	# D.19325, D.19319
	.loc 1 2972 0
	movq	-440(%rbp), %rax	# re, tmp2177
	movl	92(%rax), %eax	# re_129->reganch, D.19324
	andl	$65536, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	setne	%al	#, D.19325
	movzbl	%al, %eax	# D.19325, D.19319
	.loc 1 2971 0
	xorl	%edx, %eax	# D.19319, tmp2178
	movl	%eax, -540(%rbp)	# tmp2178, toggleutf
	.loc 1 2973 0
	cmpl	$0, -540(%rbp)	#, toggleutf
	je	.L1157	#,
	.loc 1 2973 0 is_stmt 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.687
	xorl	$8, %eax	#, PL_reg_flags.688
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.688, PL_reg_flags
.L1157:
	.loc 1 2976 0 is_stmt 1
	movl	$0, PL_reg_maxiter(%rip)	#, PL_reg_maxiter
	.loc 1 2978 0
	movq	-440(%rbp), %rax	# re, tmp2179
	addq	$100, %rax	#, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1158	#,
	.loc 1 2984 0
	movq	-176(%rbp), %rax	# state.prev, PL_reg_call_cc.689
	movq	%rax, PL_reg_call_cc(%rip)	# PL_reg_call_cc.689, PL_reg_call_cc
	.loc 1 2985 0
	movq	-168(%rbp), %rax	# state.cc, PL_regcc.690
	movq	%rax, PL_regcc(%rip)	# PL_regcc.690, PL_regcc
	.loc 1 2986 0
	movq	-160(%rbp), %rax	# state.re, PL_reg_re.691
	movq	%rax, PL_reg_re(%rip)	# PL_reg_re.691, PL_reg_re
	.loc 1 2987 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, PL_reg_re.692
	movq	%rax, %rdi	# PL_reg_re.692,
	call	S_cache_re	#
	.loc 1 2988 0
	cmpl	$0, -540(%rbp)	#, toggleutf
	je	.L1159	#,
	.loc 1 2988 0 is_stmt 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.693
	xorl	$8, %eax	#, PL_reg_flags.694
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.694, PL_reg_flags
.L1159:
	.loc 1 2991 0 is_stmt 1
	movl	$0, PL_reg_maxiter(%rip)	#, PL_reg_maxiter
	.loc 1 2994 0
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.695
	movq	-440(%rbp), %rdx	# re, tmp2180
	movq	%rdx, %rdi	# tmp2180,
	call	*%rax	# PL_regfree.695
	.loc 1 2995 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.696
	cmpl	-548(%rbp), %eax	# cp, PL_savestack_ix.696
	jle	.L1486	#,
	.loc 1 2995 0 is_stmt 0 discriminator 1
	movl	-548(%rbp), %eax	# cp, tmp2181
	movl	%eax, %edi	# tmp2181,
	call	Perl_leave_scope	#
	.loc 1 2996 0 is_stmt 1 discriminator 1
	jmp	.L1486	#
.L1158:
	.loc 1 2998 0
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.697
	movq	-440(%rbp), %rdx	# re, tmp2182
	movq	%rdx, %rdi	# tmp2182,
	call	*%rax	# PL_regfree.697
	.loc 1 2999 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.698
	cmpl	-544(%rbp), %eax	# lastcp, PL_savestack_ix.698
	jle	.L1162	#,
	.loc 1 2999 0 is_stmt 0 discriminator 1
	movl	-544(%rbp), %eax	# lastcp, tmp2183
	movl	%eax, %edi	# tmp2183,
	call	Perl_leave_scope	#
.L1162:
	.loc 1 3000 0 is_stmt 1
	call	S_regcppop	#
	.loc 1 3001 0
	movq	-176(%rbp), %rax	# state.prev, PL_reg_call_cc.699
	movq	%rax, PL_reg_call_cc(%rip)	# PL_reg_call_cc.699, PL_reg_call_cc
	.loc 1 3002 0
	movq	-168(%rbp), %rax	# state.cc, PL_regcc.700
	movq	%rax, PL_regcc(%rip)	# PL_regcc.700, PL_regcc
	.loc 1 3003 0
	movq	-160(%rbp), %rax	# state.re, PL_reg_re.701
	movq	%rax, PL_reg_re(%rip)	# PL_reg_re.701, PL_reg_re
	.loc 1 3004 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, PL_reg_re.702
	movq	%rax, %rdi	# PL_reg_re.702,
	call	S_cache_re	#
	.loc 1 3005 0
	cmpl	$0, -540(%rbp)	#, toggleutf
	je	.L1163	#,
	.loc 1 3005 0 is_stmt 0 discriminator 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.703
	xorl	$8, %eax	#, PL_reg_flags.704
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.704, PL_reg_flags
.L1163:
	.loc 1 3008 0 is_stmt 1
	movl	$0, PL_reg_maxiter(%rip)	#, PL_reg_maxiter
	.loc 1 3010 0
	movl	$0, -584(%rbp)	#, logical
.LBE36:
.LBE34:
	.loc 1 3976 0
	jmp	.L1488	#
.L1143:
.LBB38:
	.loc 1 3013 0
	cmpq	$0, -448(%rbp)	#, ret
	je	.L1164	#,
	.loc 1 3013 0 is_stmt 0 discriminator 1
	movq	-448(%rbp), %rax	# ret, tmp2184
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$262144, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1165	#,
	movq	-448(%rbp), %rax	# ret, tmp2185
	movq	(%rax), %rax	# ret_128->sv_any, PL_Xpv.708
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.708, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.709
	testq	%rax, %rax	# PL_Xpv.709
	je	.L1166	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.710
	movq	8(%rax), %rax	# PL_Xpv.710_1190->xpv_cur, D.19318
	cmpq	$1, %rax	#, D.19318
	ja	.L1167	#,
	.loc 1 3013 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.711
	movq	8(%rax), %rax	# PL_Xpv.711_1192->xpv_cur, D.19318
	testq	%rax, %rax	# D.19318
	je	.L1166	#,
	.loc 1 3013 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.712
	movq	(%rax), %rax	# PL_Xpv.712_1194->xpv_pv, D.19320
	movzbl	(%rax), %eax	# *_1195, D.19321
	cmpb	$48, %al	#, D.19321
	je	.L1166	#,
.L1167:
	.loc 1 3013 0 discriminator 3
	movl	$1, %eax	#, iftmp.707
	jmp	.L1168	#
.L1166:
	.loc 1 3013 0 discriminator 2
	movl	$0, %eax	#, iftmp.707
.L1168:
	jmp	.L1174	#
.L1165:
	movq	-448(%rbp), %rax	# ret, tmp2186
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$65536, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1170	#,
	.loc 1 3013 0 discriminator 1
	movq	-448(%rbp), %rax	# ret, tmp2187
	movq	(%rax), %rax	# ret_128->sv_any, D.19327
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_1202].xiv_iv, D.19322
	testq	%rax, %rax	# D.19322
	setne	%al	#, D.19325
	movzbl	%al, %eax	# D.19325, iftmp.713
	jmp	.L1174	#
.L1170:
	.loc 1 3013 0 discriminator 2
	movq	-448(%rbp), %rax	# ret, tmp2188
	movl	12(%rax), %eax	# ret_128->sv_flags, D.19324
	andl	$131072, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	je	.L1172	#,
	.loc 1 3013 0 discriminator 1
	movq	-448(%rbp), %rax	# ret, tmp2189
	movq	(%rax), %rax	# ret_128->sv_any, D.19327
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_1208].xnv_nv, D.19336
	xorpd	%xmm1, %xmm1	# tmp2191
	ucomisd	%xmm1, %xmm0	# tmp2191, D.19336
	setp	%dl	#, tmp2190
	movl	$1, %eax	#, tmp2193
	xorpd	%xmm1, %xmm1	# tmp2192
	ucomisd	%xmm1, %xmm0	# tmp2192, D.19336
	cmove	%edx, %eax	# tmp2190,, D.19325
	movzbl	%al, %eax	# D.19325, iftmp.714
	jmp	.L1174	#
.L1172:
	.loc 1 3013 0 discriminator 2
	movq	-448(%rbp), %rax	# ret, tmp2194
	movq	%rax, %rdi	# tmp2194,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.19321, iftmp.714
	jmp	.L1174	#
.L1164:
	movl	$0, %eax	#, iftmp.705
.L1174:
	movl	%eax, -588(%rbp)	# iftmp.705, sw
	.loc 1 3014 0 is_stmt 1 discriminator 2
	movl	$0, -584(%rbp)	#, logical
	.loc 1 3020 0 discriminator 2
	jmp	.L864	#
.L1142:
	.loc 1 3017 0
	movq	PL_replgv(%rip), %rax	# PL_replgv, PL_replgv.715
	movq	%rax, %rdi	# PL_replgv.715,
	call	Perl_save_scalar	#
	movq	-448(%rbp), %rcx	# ret, tmp2195
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp2195,
	movq	%rax, %rdi	# D.19326,
	call	Perl_sv_setsv_flags	#
	.loc 1 3018 0
	movq	-312(%rbp), %rax	# oreg, tmp2196
	movq	%rax, %rdi	# tmp2196,
	call	S_cache_re	#
	.loc 1 3020 0
	jmp	.L864	#
.L850:
.LBE38:
	.loc 1 3023 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %r15d	# D.19324, n
	.loc 1 3024 0
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.716
	movslq	%r15d, %rdx	# n, D.19318
	salq	$3, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19337
	movq	%rbx, (%rax)	# locinput, *_1227
	.loc 1 3025 0
	movl	PL_regsize(%rip), %eax	# PL_regsize, PL_regsize.717
	cmpl	%eax, %r15d	# PL_regsize.717, n
	jle	.L1176	#,
	.loc 1 3026 0
	movl	%r15d, PL_regsize(%rip)	# n, PL_regsize
	.loc 1 3027 0
	jmp	.L864	#
.L1176:
	jmp	.L864	#
.L851:
	.loc 1 3029 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %r15d	# D.19324, n
	.loc 1 3030 0
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.718
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regstartp.718, D.19333
	movq	PL_reg_start_tmp(%rip), %rax	# PL_reg_start_tmp, PL_reg_start_tmp.719
	movslq	%r15d, %rcx	# n, D.19318
	salq	$3, %rcx	#, D.19318
	addq	%rcx, %rax	# D.19318, D.19337
	movq	(%rax), %rax	# *_1238, D.19320
	movq	%rax, %rcx	# D.19320, D.19322
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.720
	subq	%rax, %rcx	# PL_bostr.721, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_1234
	.loc 1 3031 0
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.722
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.722, D.19333
	movq	%rbx, %rcx	# locinput, locinput.723
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.724
	subq	%rax, %rcx	# PL_bostr.725, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_1248
	.loc 1 3032 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.726
	movl	(%rax), %eax	# *PL_reglastparen.726_1254, D.19324
	cmpl	%r15d, %eax	# n, D.19319
	jge	.L1177	#,
	.loc 1 3033 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.727
	movl	%r15d, %edx	# n, n.728
	movl	%edx, (%rax)	# n.728, *PL_reglastparen.727_1257
.L1177:
	.loc 1 3034 0
	movq	PL_reglastcloseparen(%rip), %rax	# PL_reglastcloseparen, PL_reglastcloseparen.729
	movl	%r15d, %edx	# n, n.730
	movl	%edx, (%rax)	# n.730, *PL_reglastcloseparen.729_1259
	.loc 1 3035 0
	jmp	.L864	#
.L858:
	.loc 1 3037 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %r15d	# D.19324, n
	.loc 1 3038 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.732
	movl	(%rax), %eax	# *PL_reglastparen.732_1263, D.19324
	cmpl	%r15d, %eax	# n, D.19319
	jl	.L1178	#,
	.loc 1 3038 0 is_stmt 0 discriminator 1
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.733
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	(%rax), %eax	# *_1269, D.19319
	cmpl	$-1, %eax	#, D.19319
	je	.L1178	#,
	.loc 1 3038 0 discriminator 3
	movl	$1, %eax	#, iftmp.731
	jmp	.L1179	#
.L1178:
	.loc 1 3038 0 discriminator 2
	movl	$0, %eax	#, iftmp.731
.L1179:
	.loc 1 3038 0 discriminator 4
	movl	%eax, -588(%rbp)	# iftmp.731, sw
	.loc 1 3039 0 is_stmt 1 discriminator 4
	jmp	.L864	#
.L857:
	.loc 1 3041 0
	movl	PL_reg_maxiter(%rip), %eax	# PL_reg_maxiter, PL_reg_maxiter.734
	movl	%eax, PL_reg_leftiter(%rip)	# PL_reg_maxiter.734, PL_reg_leftiter
	.loc 1 3042 0
	cmpl	$0, -588(%rbp)	#, sw
	je	.L1180	#,
	.loc 1 3043 0
	leaq	8(%r12), %rax	#, tmp2197
	movq	%rax, -480(%rbp)	# tmp2197, next
	jmp	.L1181	#
.L1180:
	.loc 1 3045 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	salq	$2, %rax	#, D.19318
	addq	%r12, %rax	# scan, tmp2198
	movq	%rax, -480(%rbp)	# tmp2198, next
	.loc 1 3046 0
	movq	-480(%rbp), %rax	# next, tmp2199
	movzbl	1(%rax), %eax	# next_1279->type, D.19316
	cmpb	$53, %al	#, D.19316
	jne	.L1181	#,
	.loc 1 3047 0
	addq	$8, -480(%rbp)	#, next
	.loc 1 3049 0
	jmp	.L864	#
.L1181:
	jmp	.L864	#
.L863:
	.loc 1 3051 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, tmp2200
	movl	%eax, -584(%rbp)	# tmp2200, logical
	.loc 1 3052 0
	jmp	.L864	#
.L848:
.LBB39:
	.loc 1 3130 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2201
	movl	%eax, -536(%rbp)	# tmp2201, cp
	.loc 1 3132 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, tmp2202
	movl	%eax, -576(%rbp)	# tmp2202, parenfloor
	.loc 1 3134 0
	movq	-480(%rbp), %rax	# next, tmp2203
	subq	$4, %rax	#, D.19335
	movzbl	1(%rax), %eax	# _1287->type, D.19316
	cmpb	$36, %al	#, D.19316
	jne	.L1182	#,
	.loc 1 3135 0
	movq	-480(%rbp), %rax	# next, tmp2204
	movl	4(%rax), %eax	# MEM[(struct regnode_1 *)next_4].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	salq	$2, %rax	#, D.19318
	addq	%rax, -480(%rbp)	# D.19318, next
.L1182:
	.loc 1 3136 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.735
	movq	%rax, -144(%rbp)	# PL_regcc.735, cc.oldcc
	.loc 1 3137 0
	leaq	-192(%rbp), %rax	#, tmp2205
	movq	%rax, PL_regcc(%rip)	# tmp2205, PL_regcc
	.loc 1 3140 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.736
	movl	(%rax), %eax	# *PL_reglastparen.736_1294, D.19324
	cmpl	-576(%rbp), %eax	# parenfloor, D.19319
	jge	.L1183	#,
	.loc 1 3141 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.737
	movl	(%rax), %eax	# *PL_reglastparen.737_1297, D.19324
	movl	%eax, -576(%rbp)	# D.19324, parenfloor
.L1183:
	.loc 1 3142 0
	movl	-576(%rbp), %eax	# parenfloor, tmp2206
	movl	%eax, -192(%rbp)	# tmp2206, cc.parenfloor
	.loc 1 3143 0
	movl	$-1, -188(%rbp)	#, cc.cur
	.loc 1 3144 0
	movzwl	4(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg1, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	movl	%eax, -184(%rbp)	# D.19319, cc.min
	.loc 1 3145 0
	movzwl	6(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg2, D.19317
	movzwl	%ax, %eax	# D.19317, D.19319
	movl	%eax, -180(%rbp)	# D.19319, cc.max
	.loc 1 3146 0
	leaq	8(%r12), %rax	#, D.19335
	movq	%rax, -168(%rbp)	# D.19335, cc.scan
	.loc 1 3147 0
	movq	-480(%rbp), %rax	# next, tmp2207
	movq	%rax, -160(%rbp)	# tmp2207, cc.next
	.loc 1 3148 0
	movl	-592(%rbp), %eax	# minmod, tmp2208
	movl	%eax, -176(%rbp)	# tmp2208, cc.minmod
	.loc 1 3149 0
	movq	$0, -152(%rbp)	#, cc.lastloc
	.loc 1 3150 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3151 0
	movq	-480(%rbp), %rax	# next, tmp2209
	subq	$4, %rax	#, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	movl	%eax, %r15d	#, n
	.loc 1 3152 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.738
	cmpl	-536(%rbp), %eax	# cp, PL_savestack_ix.738
	jle	.L1184	#,
	.loc 1 3152 0 is_stmt 0 discriminator 1
	movl	-536(%rbp), %eax	# cp, tmp2210
	movl	%eax, %edi	# tmp2210,
	call	Perl_leave_scope	#
.L1184:
	.loc 1 3153 0 is_stmt 1
	movq	-144(%rbp), %rax	# cc.oldcc, PL_regcc.739
	movq	%rax, PL_regcc(%rip)	# PL_regcc.739, PL_regcc
	.loc 1 3154 0
	testl	%r15d, %r15d	# n
	jne	.L1486	#,
.LBE39:
	.loc 1 3976 0 discriminator 2
	jmp	.L1488	#
.L849:
.LBB40:
	.loc 1 3168 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, tmp2211
	movq	%rax, -272(%rbp)	# tmp2211, cc
	.loc 1 3169 0
	movq	-272(%rbp), %rax	# cc, tmp2212
	movq	40(%rax), %rax	# cc_1309->lastloc, tmp2213
	movq	%rax, -264(%rbp)	# tmp2213, lastloc
	.loc 1 3170 0
	movl	$0, -572(%rbp)	#, cache_offset
	movl	$0, -568(%rbp)	#, cache_bit
	.loc 1 3172 0
	movq	-272(%rbp), %rax	# cc, tmp2214
	movl	4(%rax), %eax	# cc_1309->cur, D.19319
	leal	1(%rax), %r15d	#, n
	.loc 1 3173 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3185 0
	movq	-272(%rbp), %rax	# cc, tmp2215
	movq	40(%rax), %rax	# cc_1309->lastloc, D.19320
	cmpq	%rbx, %rax	# locinput, D.19320
	jne	.L1186	#,
	.loc 1 3185 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# cc, tmp2216
	movl	8(%rax), %eax	# cc_1309->min, D.19319
	cmpl	%r15d, %eax	# n, D.19319
	jg	.L1186	#,
	.loc 1 3186 0 is_stmt 1
	movq	-272(%rbp), %rax	# cc, tmp2217
	movq	48(%rax), %rax	# cc_1309->oldcc, PL_regcc.740
	movq	%rax, PL_regcc(%rip)	# PL_regcc.740, PL_regcc
	.loc 1 3187 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.741
	testq	%rax, %rax	# PL_regcc.741
	je	.L1187	#,
	.loc 1 3188 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.742
	movl	4(%rax), %r14d	# PL_regcc.742_1319->cur, ln
.L1187:
	.loc 1 3194 0
	movq	-272(%rbp), %rax	# cc, tmp2218
	movq	32(%rax), %rax	# cc_1309->next, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1188	#,
	.loc 1 3195 0
	jmp	.L1486	#
.L1188:
	.loc 1 3196 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.743
	testq	%rax, %rax	# PL_regcc.743
	je	.L1189	#,
	.loc 1 3197 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.744
	movl	%r14d, 4(%rax)	# ln, PL_regcc.744_1324->cur
.L1189:
	.loc 1 3198 0
	movq	-272(%rbp), %rax	# cc, tmp2219
	movq	%rax, PL_regcc(%rip)	# tmp2219, PL_regcc
	.loc 1 3199 0
	jmp	.L867	#
.L1186:
	.loc 1 3204 0
	movq	-272(%rbp), %rax	# cc, tmp2220
	movl	8(%rax), %eax	# cc_1309->min, D.19319
	cmpl	%r15d, %eax	# n, D.19319
	jle	.L1190	#,
	.loc 1 3205 0
	movq	-272(%rbp), %rax	# cc, tmp2221
	movl	%r15d, 4(%rax)	# n, cc_1309->cur
	.loc 1 3206 0
	movq	-272(%rbp), %rax	# cc, tmp2222
	movq	%rbx, 40(%rax)	# locinput, cc_1309->lastloc
	.loc 1 3207 0
	movq	-272(%rbp), %rax	# cc, tmp2223
	movq	24(%rax), %rax	# cc_1309->scan, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1191	#,
	.loc 1 3208 0
	jmp	.L1486	#
.L1191:
	.loc 1 3209 0
	leal	-1(%r15), %edx	#, D.19319
	movq	-272(%rbp), %rax	# cc, tmp2224
	movl	%edx, 4(%rax)	# D.19319, cc_1309->cur
	.loc 1 3210 0
	movq	-272(%rbp), %rax	# cc, tmp2225
	movq	-264(%rbp), %rdx	# lastloc, tmp2226
	movq	%rdx, 40(%rax)	# tmp2226, cc_1309->lastloc
	.loc 1 3211 0
	jmp	.L867	#
.L1190:
	.loc 1 3214 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	testb	%al, %al	# D.19316
	je	.L1192	#,
	.loc 1 3218 0
	movl	PL_reg_maxiter(%rip), %eax	# PL_reg_maxiter, PL_reg_maxiter.745
	testl	%eax, %eax	# PL_reg_maxiter.745
	jne	.L1193	#,
	.loc 1 3219 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.746
	movq	%rax, %rdx	# PL_regeol.746, PL_regeol.747
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.748
	subq	%rax, %rdx	# PL_bostr.749, D.19322
	movq	%rdx, %rax	# D.19322, D.19322
	addq	$1, %rax	#, D.19322
	movl	%eax, %edx	# D.19322, D.19338
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	shrb	$4, %al	#, D.19316
	movzbl	%al, %eax	# D.19316, D.19338
	imull	%edx, %eax	# D.19338, D.19338
	movl	%eax, PL_reg_maxiter(%rip)	# PL_reg_maxiter.750, PL_reg_maxiter
	.loc 1 3220 0
	movl	PL_reg_maxiter(%rip), %eax	# PL_reg_maxiter, PL_reg_maxiter.751
	movl	%eax, PL_reg_leftiter(%rip)	# PL_reg_maxiter.751, PL_reg_leftiter
.L1193:
	.loc 1 3222 0
	movl	PL_reg_leftiter(%rip), %eax	# PL_reg_leftiter, PL_reg_leftiter.752
	leal	-1(%rax), %edx	#, PL_reg_leftiter.754
	movl	%edx, PL_reg_leftiter(%rip)	# PL_reg_leftiter.754, PL_reg_leftiter
	testl	%eax, %eax	# PL_reg_leftiter.753
	jne	.L1194	#,
.LBB41:
	.loc 1 3223 0
	movl	PL_reg_maxiter(%rip), %eax	# PL_reg_maxiter, PL_reg_maxiter.755
	addl	$9, %eax	#, D.19319
	leal	7(%rax), %edx	#, tmp2228
	testl	%eax, %eax	# tmp2227
	cmovs	%edx, %eax	# tmp2228,, tmp2227
	sarl	$3, %eax	#, tmp2229
	movl	%eax, -532(%rbp)	# tmp2229, size
	.loc 1 3224 0
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.756
	testq	%rax, %rax	# PL_reg_poscache.756
	je	.L1195	#,
	.loc 1 3225 0
	movq	PL_reg_poscache_size(%rip), %rax	# PL_reg_poscache_size, PL_reg_poscache_size.757
	cmpl	-532(%rbp), %eax	# size, D.19319
	jge	.L1196	#,
	.loc 1 3226 0
	movl	-532(%rbp), %eax	# size, tmp2230
	movslq	%eax, %rdx	# tmp2230, D.19318
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.758
	movq	%rdx, %rsi	# D.19318,
	movq	%rax, %rdi	# PL_reg_poscache.758,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_reg_poscache(%rip)	# PL_reg_poscache.759, PL_reg_poscache
	.loc 1 3227 0
	movl	-532(%rbp), %eax	# size, tmp2231
	cltq
	movq	%rax, PL_reg_poscache_size(%rip)	# PL_reg_poscache_size.760, PL_reg_poscache_size
.L1196:
	.loc 1 3229 0
	movl	-532(%rbp), %eax	# size, tmp2232
	movslq	%eax, %rdx	# tmp2232, D.19318
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.761
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_reg_poscache.761,
	call	memset	#
	jmp	.L1194	#
.L1195:
	.loc 1 3232 0
	movl	-532(%rbp), %eax	# size, tmp2233
	cltq
	movq	%rax, PL_reg_poscache_size(%rip)	# PL_reg_poscache_size.762, PL_reg_poscache_size
	.loc 1 3233 0
	movl	-532(%rbp), %eax	# size, tmp2234
	cltq
	movq	%rax, %rdi	# D.19318,
	call	Perl_safesysmalloc	#
	movq	%rax, PL_reg_poscache(%rip)	# PL_reg_poscache.763, PL_reg_poscache
	movl	-532(%rbp), %eax	# size, tmp2235
	movslq	%eax, %rdx	# tmp2235, D.19318
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.764
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_reg_poscache.764,
	call	memset	#
.L1194:
.LBE41:
	.loc 1 3241 0
	movl	PL_reg_leftiter(%rip), %eax	# PL_reg_leftiter, PL_reg_leftiter.765
	testl	%eax, %eax	# PL_reg_leftiter.765
	jns	.L1192	#,
	.loc 1 3242 0
	movq	%rbx, %rdx	# locinput, locinput.766
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.767
	subq	%rax, %rdx	# PL_bostr.768, D.19322
	movq	%rdx, %rax	# D.19322, D.19322
	movl	%eax, -572(%rbp)	# D.19322, cache_offset
	.loc 1 3244 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	andl	$15, %eax	#, D.19319
	leal	1(%rax), %edx	#, D.19319
	.loc 1 3245 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	shrb	$4, %al	#, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	imull	-572(%rbp), %eax	# cache_offset, D.19319
	.loc 1 3244 0
	addl	%edx, %eax	# D.19319, tmp2236
	movl	%eax, -572(%rbp)	# tmp2236, cache_offset
	.loc 1 3246 0
	movl	-572(%rbp), %eax	# cache_offset, tmp2238
	cltd
	shrl	$29, %edx	#, tmp2240
	addl	%edx, %eax	# tmp2240, tmp2241
	andl	$7, %eax	#, tmp2242
	subl	%edx, %eax	# tmp2240, tmp2243
	movl	%eax, -568(%rbp)	# tmp2243, cache_bit
	.loc 1 3247 0
	movl	-572(%rbp), %eax	# cache_offset, tmp2245
	leal	7(%rax), %edx	#, tmp2247
	testl	%eax, %eax	# tmp2246
	cmovs	%edx, %eax	# tmp2247,, tmp2246
	sarl	$3, %eax	#, tmp2248
	movl	%eax, -572(%rbp)	# tmp2248, cache_offset
	.loc 1 3248 0
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.769
	movl	-572(%rbp), %eax	# cache_offset, tmp2249
	cltq
	addq	%rdx, %rax	# PL_reg_poscache.769, D.19320
	movzbl	(%rax), %eax	# *_1383, D.19321
	movsbl	%al, %edx	# D.19321, D.19319
	movl	-568(%rbp), %eax	# cache_bit, tmp2250
	movl	%eax, %ecx	# tmp2250, tmp2664
	sarl	%cl, %edx	# tmp2664, D.19319
	movl	%edx, %eax	# D.19319, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1197	#,
	.loc 1 3254 0
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.770
	movzbl	(%rax), %eax	# *PL_reg_poscache.770_1388, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1198	#,
	.loc 1 3256 0
	jmp	.L1486	#
.L1198:
	.loc 1 3259 0
	jmp	.L1488	#
.L1197:
	.loc 1 3261 0
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.771
	movl	-572(%rbp), %eax	# cache_offset, tmp2251
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.772
	movl	-572(%rbp), %eax	# cache_offset, tmp2252
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.772, D.19320
	movzbl	(%rax), %esi	# *_1397, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2253
	movl	$1, %edi	#, tmp2254
	movl	%eax, %ecx	# tmp2253, tmp2666
	sall	%cl, %edi	# tmp2666, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	orl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1394
.L1192:
	.loc 1 3267 0
	movq	-272(%rbp), %rax	# cc, tmp2255
	movl	16(%rax), %eax	# cc_1309->minmod, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1200	#,
	.loc 1 3268 0
	movq	-272(%rbp), %rax	# cc, tmp2256
	movq	48(%rax), %rax	# cc_1309->oldcc, PL_regcc.773
	movq	%rax, PL_regcc(%rip)	# PL_regcc.773, PL_regcc
	.loc 1 3269 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.774
	testq	%rax, %rax	# PL_regcc.774
	je	.L1201	#,
	.loc 1 3270 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.775
	movl	4(%rax), %r14d	# PL_regcc.775_1405->cur, ln
.L1201:
	.loc 1 3271 0
	movq	-272(%rbp), %rax	# cc, tmp2257
	movl	(%rax), %eax	# cc_1309->parenfloor, D.19319
	movl	%eax, %edi	# D.19319,
	call	S_regcppush	#
	movl	%eax, -528(%rbp)	# tmp2258, cp
	.loc 1 3272 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2259
	movl	%eax, -524(%rbp)	# tmp2259, lastcp
	.loc 1 3273 0
	movq	-272(%rbp), %rax	# cc, tmp2260
	movq	32(%rax), %rax	# cc_1309->next, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1202	#,
	.loc 1 3274 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.776
	cmpl	-528(%rbp), %eax	# cp, PL_savestack_ix.776
	jle	.L1203	#,
	.loc 1 3274 0 is_stmt 0 discriminator 1
	movl	-528(%rbp), %eax	# cp, tmp2261
	movl	%eax, %edi	# tmp2261,
	call	Perl_leave_scope	#
.L1203:
.LBB42:
	.loc 1 3275 0 is_stmt 1
	movl	-568(%rbp), %eax	# cache_bit, tmp2262
	movl	-572(%rbp), %edx	# cache_offset, tmp2263
	orl	%edx, %eax	# tmp2263, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1204	#,
	.loc 1 3275 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.777
	movzbl	(%rax), %eax	# *PL_reg_poscache.777_1414, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1205	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.778
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.779
	movzbl	(%rdx), %edx	# *PL_reg_poscache.779_1419, D.19321
	orl	$1, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.778_1418
	jmp	.L1204	#
.L1205:
	.loc 1 3275 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.780
	movzbl	(%rax), %eax	# *PL_reg_poscache.780_1422, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1204	#,
	.loc 1 3275 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.781
	movl	-572(%rbp), %eax	# cache_offset, tmp2264
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.782
	movl	-572(%rbp), %eax	# cache_offset, tmp2265
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.782, D.19320
	movzbl	(%rax), %esi	# *_1431, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2266
	movl	$1, %edi	#, tmp2267
	movl	%eax, %ecx	# tmp2266, tmp2668
	sall	%cl, %edi	# tmp2668, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1428
	jmp	.L1486	#
.L1204:
	.loc 1 3275 0 discriminator 2
	jmp	.L1486	#
.L1202:
.LBE42:
	.loc 1 3277 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.783
	cmpl	-524(%rbp), %eax	# lastcp, PL_savestack_ix.783
	jle	.L1206	#,
	.loc 1 3277 0 is_stmt 0 discriminator 1
	movl	-524(%rbp), %eax	# lastcp, tmp2268
	movl	%eax, %edi	# tmp2268,
	call	Perl_leave_scope	#
.L1206:
	.loc 1 3278 0 is_stmt 1
	call	S_regcppop	#
	.loc 1 3279 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.784
	testq	%rax, %rax	# PL_regcc.784
	je	.L1207	#,
	.loc 1 3280 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.785
	movl	%r14d, 4(%rax)	# ln, PL_regcc.785_1439->cur
.L1207:
	.loc 1 3281 0
	movq	-272(%rbp), %rax	# cc, tmp2269
	movq	%rax, PL_regcc(%rip)	# tmp2269, PL_regcc
	.loc 1 3283 0
	movq	-272(%rbp), %rax	# cc, tmp2270
	movl	12(%rax), %eax	# cc_1309->max, D.19319
	cmpl	%r15d, %eax	# n, D.19319
	jg	.L1208	#,
	.loc 1 3284 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.786
	movq	80(%rax), %rax	# PL_curcop.786_1441->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	je	.L1209	#,
	.loc 1 3284 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.787
	movq	80(%rax), %rax	# PL_curcop.787_1443->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1209	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.788
	movq	80(%rax), %rax	# PL_curcop.788_1445->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1210	#,
	.loc 1 3284 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.789
	movq	80(%rax), %rax	# PL_curcop.789_1447->cop_warnings, D.19326
	movq	(%rax), %rax	# _1448->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_1449].xpv_pv, D.19320
	addq	$5, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_1451, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1210	#,
.L1209:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.790
	movq	80(%rax), %rax	# PL_curcop.790_1455->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1211	#,
	.loc 1 3284 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.791
	movzbl	%al, %eax	# PL_dowarn.791, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1211	#,
.L1210:
	cmpl	$32766, %r15d	#, n
	jle	.L1211	#,
	.loc 1 3285 0 is_stmt 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.792
	andl	$2, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	jne	.L1211	#,
	.loc 1 3286 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.793
	orl	$2, %eax	#, PL_reg_flags.794
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.794, PL_reg_flags
	.loc 1 3287 0
	movl	$32766, %ecx	#,
	movl	$.LC9, %edx	#,
	movl	$.LC10, %esi	#,
	movl	$20, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L1211:
.LBB43:
	.loc 1 3291 0
	movl	-568(%rbp), %eax	# cache_bit, tmp2271
	movl	-572(%rbp), %edx	# cache_offset, tmp2272
	orl	%edx, %eax	# tmp2272, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1212	#,
	.loc 1 3291 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.795
	movzbl	(%rax), %eax	# *PL_reg_poscache.795_1465, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1213	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.796
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.797
	movzbl	(%rdx), %edx	# *PL_reg_poscache.797_1470, D.19321
	orl	$2, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.796_1469
	jmp	.L1212	#
.L1213:
	.loc 1 3291 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.798
	movzbl	(%rax), %eax	# *PL_reg_poscache.798_1473, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1212	#,
	.loc 1 3291 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.799
	movl	-572(%rbp), %eax	# cache_offset, tmp2273
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.800
	movl	-572(%rbp), %eax	# cache_offset, tmp2274
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.800, D.19320
	movzbl	(%rax), %esi	# *_1482, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2275
	movl	$1, %edi	#, tmp2276
	movl	%eax, %ecx	# tmp2275, tmp2670
	sall	%cl, %edi	# tmp2670, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1479
	jmp	.L867	#
.L1212:
	.loc 1 3291 0 discriminator 2
	jmp	.L867	#
.L1208:
.LBE43:
	.loc 1 3300 0 is_stmt 1
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3301 0
	movq	-272(%rbp), %rax	# cc, tmp2277
	movl	%r15d, 4(%rax)	# n, cc_1309->cur
	.loc 1 3302 0
	movq	-272(%rbp), %rax	# cc, tmp2278
	movq	%rbx, 40(%rax)	# locinput, cc_1309->lastloc
	.loc 1 3303 0
	movq	-272(%rbp), %rax	# cc, tmp2279
	movl	(%rax), %eax	# cc_1309->parenfloor, D.19319
	movl	%eax, %edi	# D.19319,
	call	S_regcppush	#
	movl	%eax, -528(%rbp)	# tmp2280, cp
	.loc 1 3304 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2281
	movl	%eax, -524(%rbp)	# tmp2281, lastcp
	.loc 1 3305 0
	movq	-272(%rbp), %rax	# cc, tmp2282
	movq	24(%rax), %rax	# cc_1309->scan, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1214	#,
	.loc 1 3306 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.801
	cmpl	-528(%rbp), %eax	# cp, PL_savestack_ix.801
	jle	.L1215	#,
	.loc 1 3306 0 is_stmt 0 discriminator 1
	movl	-528(%rbp), %eax	# cp, tmp2283
	movl	%eax, %edi	# tmp2283,
	call	Perl_leave_scope	#
.L1215:
.LBB44:
	.loc 1 3307 0 is_stmt 1
	movl	-568(%rbp), %eax	# cache_bit, tmp2284
	movl	-572(%rbp), %edx	# cache_offset, tmp2285
	orl	%edx, %eax	# tmp2285, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1216	#,
	.loc 1 3307 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.802
	movzbl	(%rax), %eax	# *PL_reg_poscache.802_1495, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1217	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.803
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.804
	movzbl	(%rdx), %edx	# *PL_reg_poscache.804_1500, D.19321
	orl	$1, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.803_1499
	jmp	.L1216	#
.L1217:
	.loc 1 3307 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.805
	movzbl	(%rax), %eax	# *PL_reg_poscache.805_1503, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1216	#,
	.loc 1 3307 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.806
	movl	-572(%rbp), %eax	# cache_offset, tmp2286
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.807
	movl	-572(%rbp), %eax	# cache_offset, tmp2287
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.807, D.19320
	movzbl	(%rax), %esi	# *_1512, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2288
	movl	$1, %edi	#, tmp2289
	movl	%eax, %ecx	# tmp2288, tmp2672
	sall	%cl, %edi	# tmp2672, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1509
	jmp	.L1486	#
.L1216:
	.loc 1 3307 0 discriminator 2
	jmp	.L1486	#
.L1214:
.LBE44:
	.loc 1 3309 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.808
	cmpl	-524(%rbp), %eax	# lastcp, PL_savestack_ix.808
	jle	.L1218	#,
	.loc 1 3309 0 is_stmt 0 discriminator 1
	movl	-524(%rbp), %eax	# lastcp, tmp2290
	movl	%eax, %edi	# tmp2290,
	call	Perl_leave_scope	#
.L1218:
	.loc 1 3310 0 is_stmt 1
	call	S_regcppop	#
	.loc 1 3311 0
	leal	-1(%r15), %edx	#, D.19319
	movq	-272(%rbp), %rax	# cc, tmp2291
	movl	%edx, 4(%rax)	# D.19319, cc_1309->cur
	.loc 1 3312 0
	movq	-272(%rbp), %rax	# cc, tmp2292
	movq	-264(%rbp), %rdx	# lastloc, tmp2293
	movq	%rdx, 40(%rax)	# tmp2293, cc_1309->lastloc
.LBB45:
	.loc 1 3313 0
	movl	-568(%rbp), %eax	# cache_bit, tmp2294
	movl	-572(%rbp), %edx	# cache_offset, tmp2295
	orl	%edx, %eax	# tmp2295, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1219	#,
	.loc 1 3313 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.809
	movzbl	(%rax), %eax	# *PL_reg_poscache.809_1521, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1220	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.810
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.811
	movzbl	(%rdx), %edx	# *PL_reg_poscache.811_1526, D.19321
	orl	$2, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.810_1525
	jmp	.L1219	#
.L1220:
	.loc 1 3313 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.812
	movzbl	(%rax), %eax	# *PL_reg_poscache.812_1529, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1219	#,
	.loc 1 3313 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.813
	movl	-572(%rbp), %eax	# cache_offset, tmp2296
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.814
	movl	-572(%rbp), %eax	# cache_offset, tmp2297
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.814, D.19320
	movzbl	(%rax), %esi	# *_1538, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2298
	movl	$1, %edi	#, tmp2299
	movl	%eax, %ecx	# tmp2298, tmp2674
	sall	%cl, %edi	# tmp2674, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1535
	jmp	.L867	#
.L1219:
	.loc 1 3313 0 discriminator 2
	jmp	.L867	#
.L1200:
.LBE45:
	.loc 1 3318 0 is_stmt 1
	movq	-272(%rbp), %rax	# cc, tmp2300
	movl	12(%rax), %eax	# cc_1309->max, D.19319
	cmpl	%r15d, %eax	# n, D.19319
	jle	.L1221	#,
	.loc 1 3319 0
	movq	-272(%rbp), %rax	# cc, tmp2301
	movl	(%rax), %eax	# cc_1309->parenfloor, D.19319
	movl	%eax, %edi	# D.19319,
	call	S_regcppush	#
	movl	%eax, -528(%rbp)	# tmp2302, cp
	.loc 1 3320 0
	movq	-272(%rbp), %rax	# cc, tmp2303
	movl	%r15d, 4(%rax)	# n, cc_1309->cur
	.loc 1 3321 0
	movq	-272(%rbp), %rax	# cc, tmp2304
	movq	%rbx, 40(%rax)	# locinput, cc_1309->lastloc
	.loc 1 3322 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2305
	movl	%eax, -524(%rbp)	# tmp2305, lastcp
	.loc 1 3323 0
	movq	-272(%rbp), %rax	# cc, tmp2306
	movq	24(%rax), %rax	# cc_1309->scan, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1222	#,
	.loc 1 3324 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.815
	cmpl	-528(%rbp), %eax	# cp, PL_savestack_ix.815
	jle	.L1223	#,
	.loc 1 3324 0 is_stmt 0 discriminator 1
	movl	-528(%rbp), %eax	# cp, tmp2307
	movl	%eax, %edi	# tmp2307,
	call	Perl_leave_scope	#
.L1223:
.LBB46:
	.loc 1 3325 0 is_stmt 1
	movl	-568(%rbp), %eax	# cache_bit, tmp2308
	movl	-572(%rbp), %edx	# cache_offset, tmp2309
	orl	%edx, %eax	# tmp2309, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1224	#,
	.loc 1 3325 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.816
	movzbl	(%rax), %eax	# *PL_reg_poscache.816_1552, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1225	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.817
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.818
	movzbl	(%rdx), %edx	# *PL_reg_poscache.818_1557, D.19321
	orl	$1, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.817_1556
	jmp	.L1224	#
.L1225:
	.loc 1 3325 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.819
	movzbl	(%rax), %eax	# *PL_reg_poscache.819_1560, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1224	#,
	.loc 1 3325 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.820
	movl	-572(%rbp), %eax	# cache_offset, tmp2310
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.821
	movl	-572(%rbp), %eax	# cache_offset, tmp2311
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.821, D.19320
	movzbl	(%rax), %esi	# *_1569, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2312
	movl	$1, %edi	#, tmp2313
	movl	%eax, %ecx	# tmp2312, tmp2676
	sall	%cl, %edi	# tmp2676, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1566
	jmp	.L1486	#
.L1224:
	.loc 1 3325 0 discriminator 2
	jmp	.L1486	#
.L1222:
.LBE46:
	.loc 1 3327 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.822
	cmpl	-524(%rbp), %eax	# lastcp, PL_savestack_ix.822
	jle	.L1226	#,
	.loc 1 3327 0 is_stmt 0 discriminator 1
	movl	-524(%rbp), %eax	# lastcp, tmp2314
	movl	%eax, %edi	# tmp2314,
	call	Perl_leave_scope	#
.L1226:
	.loc 1 3328 0 is_stmt 1
	call	S_regcppop	#
	.loc 1 3329 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
.L1221:
	.loc 1 3336 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.823
	movq	80(%rax), %rax	# PL_curcop.823_1576->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	je	.L1227	#,
	.loc 1 3336 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.824
	movq	80(%rax), %rax	# PL_curcop.824_1578->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1227	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.825
	movq	80(%rax), %rax	# PL_curcop.825_1580->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1228	#,
	.loc 1 3336 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.826
	movq	80(%rax), %rax	# PL_curcop.826_1582->cop_warnings, D.19326
	movq	(%rax), %rax	# _1583->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_1584].xpv_pv, D.19320
	addq	$5, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_1586, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1228	#,
.L1227:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.827
	movq	80(%rax), %rax	# PL_curcop.827_1590->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1229	#,
	.loc 1 3336 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.828
	movzbl	%al, %eax	# PL_dowarn.828, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1229	#,
.L1228:
	cmpl	$32766, %r15d	#, n
	jle	.L1229	#,
	.loc 1 3337 0 is_stmt 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.829
	andl	$2, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	jne	.L1229	#,
	.loc 1 3338 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.830
	orl	$2, %eax	#, PL_reg_flags.831
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.831, PL_reg_flags
	.loc 1 3339 0
	movl	$32766, %ecx	#,
	movl	$.LC9, %edx	#,
	movl	$.LC10, %esi	#,
	movl	$20, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L1229:
	.loc 1 3345 0
	movq	-272(%rbp), %rax	# cc, tmp2315
	movq	48(%rax), %rax	# cc_1309->oldcc, PL_regcc.832
	movq	%rax, PL_regcc(%rip)	# PL_regcc.832, PL_regcc
	.loc 1 3346 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.833
	testq	%rax, %rax	# PL_regcc.833
	je	.L1230	#,
	.loc 1 3347 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.834
	movl	4(%rax), %r14d	# PL_regcc.834_1601->cur, ln
.L1230:
	.loc 1 3348 0
	movq	-272(%rbp), %rax	# cc, tmp2316
	movq	32(%rax), %rax	# cc_1309->next, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1231	#,
.LBB47:
	.loc 1 3349 0
	movl	-568(%rbp), %eax	# cache_bit, tmp2317
	movl	-572(%rbp), %edx	# cache_offset, tmp2318
	orl	%edx, %eax	# tmp2318, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1232	#,
	.loc 1 3349 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.835
	movzbl	(%rax), %eax	# *PL_reg_poscache.835_1606, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1233	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.836
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.837
	movzbl	(%rdx), %edx	# *PL_reg_poscache.837_1611, D.19321
	orl	$1, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.836_1610
	jmp	.L1232	#
.L1233:
	.loc 1 3349 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.838
	movzbl	(%rax), %eax	# *PL_reg_poscache.838_1614, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1232	#,
	.loc 1 3349 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.839
	movl	-572(%rbp), %eax	# cache_offset, tmp2319
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.840
	movl	-572(%rbp), %eax	# cache_offset, tmp2320
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.840, D.19320
	movzbl	(%rax), %esi	# *_1623, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2321
	movl	$1, %edi	#, tmp2322
	movl	%eax, %ecx	# tmp2321, tmp2678
	sall	%cl, %edi	# tmp2678, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1620
	jmp	.L1486	#
.L1232:
	.loc 1 3349 0 discriminator 2
	jmp	.L1486	#
.L1231:
.LBE47:
	.loc 1 3350 0 is_stmt 1
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.841
	testq	%rax, %rax	# PL_regcc.841
	je	.L1234	#,
	.loc 1 3351 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, PL_regcc.842
	movl	%r14d, 4(%rax)	# ln, PL_regcc.842_1630->cur
.L1234:
	.loc 1 3352 0
	movq	-272(%rbp), %rax	# cc, tmp2323
	movq	%rax, PL_regcc(%rip)	# tmp2323, PL_regcc
	.loc 1 3353 0
	leal	-1(%r15), %edx	#, D.19319
	movq	-272(%rbp), %rax	# cc, tmp2324
	movl	%edx, 4(%rax)	# D.19319, cc_1309->cur
	.loc 1 3354 0
	movq	-272(%rbp), %rax	# cc, tmp2325
	movq	-264(%rbp), %rdx	# lastloc, tmp2326
	movq	%rdx, 40(%rax)	# tmp2326, cc_1309->lastloc
.LBB48:
	.loc 1 3355 0
	movl	-568(%rbp), %eax	# cache_bit, tmp2327
	movl	-572(%rbp), %edx	# cache_offset, tmp2328
	orl	%edx, %eax	# tmp2328, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1235	#,
	.loc 1 3355 0 is_stmt 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.843
	movzbl	(%rax), %eax	# *PL_reg_poscache.843_1633, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$2, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1236	#,
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.844
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.845
	movzbl	(%rdx), %edx	# *PL_reg_poscache.845_1638, D.19321
	orl	$2, %edx	#, D.19339
	movb	%dl, (%rax)	# D.19339, *PL_reg_poscache.844_1637
	jmp	.L1235	#
.L1236:
	.loc 1 3355 0 discriminator 2
	movq	PL_reg_poscache(%rip), %rax	# PL_reg_poscache, PL_reg_poscache.846
	movzbl	(%rax), %eax	# *PL_reg_poscache.846_1641, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1235	#,
	.loc 1 3355 0 discriminator 1
	movq	PL_reg_poscache(%rip), %rdx	# PL_reg_poscache, PL_reg_poscache.847
	movl	-572(%rbp), %eax	# cache_offset, tmp2329
	cltq
	addq	%rax, %rdx	# D.19323, D.19320
	movq	PL_reg_poscache(%rip), %rcx	# PL_reg_poscache, PL_reg_poscache.848
	movl	-572(%rbp), %eax	# cache_offset, tmp2330
	cltq
	addq	%rcx, %rax	# PL_reg_poscache.848, D.19320
	movzbl	(%rax), %esi	# *_1650, D.19321
	movl	-568(%rbp), %eax	# cache_bit, tmp2331
	movl	$1, %edi	#, tmp2332
	movl	%eax, %ecx	# tmp2331, tmp2680
	sall	%cl, %edi	# tmp2680, D.19319
	movl	%edi, %eax	# D.19319, D.19319
	notl	%eax	# D.19321
	andl	%esi, %eax	# D.19321, D.19321
	movb	%al, (%rdx)	# D.19321, *_1647
	jmp	.L867	#
.L1235:
	.loc 1 3355 0 discriminator 2
	jmp	.L867	#
.L860:
.LBE48:
.LBE40:
	.loc 1 3359 0 is_stmt 1
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	salq	$2, %rax	#, D.19318
	addq	%r12, %rax	# scan, tmp2333
	movq	%rax, -480(%rbp)	# tmp2333, next
	.loc 1 3360 0
	cmpq	%r12, -480(%rbp)	# scan, next
	jne	.L1237	#,
	.loc 1 3361 0
	movq	$0, -480(%rbp)	#, next
.L1237:
	.loc 1 3362 0
	leaq	8(%r12), %rax	#, tmp2334
	movq	%rax, -472(%rbp)	# tmp2334, inner
	.loc 1 3363 0
	jmp	.L1238	#
.L837:
	.loc 1 3365 0
	leaq	4(%r12), %rax	#, tmp2335
	movq	%rax, -472(%rbp)	# tmp2335, inner
.L1238:
	.loc 1 3368 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	movzbl	%al, %eax	# D.19316, c1
	movl	%eax, %ecx	# c1, c1
	movl	%ecx, -604(%rbp)	# c1, %sfp
	.loc 1 3369 0
	movq	-480(%rbp), %rax	# next, tmp2336
	movzbl	1(%rax), %eax	# next_8->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	%ecx, %eax	# c1, D.19319
	je	.L1239	#,
	.loc 1 3370 0
	movq	-472(%rbp), %rax	# inner, tmp2337
	movq	%rax, -480(%rbp)	# tmp2337, next
	.loc 1 3398 0
	jmp	.L864	#
.L1239:
.LBB49:
	.loc 1 3372 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.849
	movl	(%rax), %eax	# *PL_reglastparen.849_1668, D.19324
	movl	%eax, -520(%rbp)	# D.19324, lastparen
	.loc 1 3377 0
	movl	$0, %esi	#,
	movl	$40, %edi	#,
	call	Perl_save_alloc	#
	movl	%eax, -516(%rbp)	# tmp2338, unwind1
	.loc 1 3378 0
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.850
	movl	-516(%rbp), %eax	# unwind1, tmp2339
	cltq
	addq	%rdx, %rax	# PL_savestack.850, tmp2340
	movq	%rax, -256(%rbp)	# tmp2340, uw
	.loc 1 3379 0
	movq	-256(%rbp), %rax	# uw, tmp2341
	movl	-580(%rbp), %edx	# unwind, tmp2342
	movl	%edx, 4(%rax)	# tmp2342, uw_1674->prev
	.loc 1 3380 0
	movl	-516(%rbp), %eax	# unwind1, tmp2343
	movl	%eax, -580(%rbp)	# tmp2343, unwind
	.loc 1 3383 0
	cmpl	$31, -604(%rbp)	#, %sfp
	jne	.L1241	#,
	.loc 1 3383 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.851
	jmp	.L1242	#
.L1241:
	.loc 1 3383 0 discriminator 2
	movl	$2, %eax	#, iftmp.851
.L1242:
	.loc 1 3381 0 is_stmt 1
	movq	-256(%rbp), %rdx	# uw, tmp2344
	movl	%eax, (%rdx)	# iftmp.851, uw_1674->type
	.loc 1 3384 0
	movq	-256(%rbp), %rax	# uw, tmp2345
	movl	-520(%rbp), %edx	# lastparen, tmp2346
	movl	%edx, 12(%rax)	# tmp2346, uw_1674->lastparen
	.loc 1 3385 0
	movq	-256(%rbp), %rax	# uw, tmp2347
	movq	-480(%rbp), %rdx	# next, tmp2348
	movq	%rdx, 16(%rax)	# tmp2348, uw_1674->next
	.loc 1 3386 0
	movq	-256(%rbp), %rax	# uw, tmp2349
	movq	%rbx, 24(%rax)	# locinput, uw_1674->locinput
	.loc 1 3387 0
	movq	-256(%rbp), %rax	# uw, tmp2350
	movl	%r13d, 32(%rax)	# nextchr, uw_1674->nextchr
	.loc 1 3392 0
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.852
	movq	-256(%rbp), %rax	# uw, tmp2351
	movl	%edx, 8(%rax)	# PL_savestack_ix.852, uw_1674->lastcp
	.loc 1 3395 0
	movq	-472(%rbp), %rax	# inner, tmp2352
	movq	%rax, -480(%rbp)	# tmp2352, next
.LBE49:
	.loc 1 3398 0
	jmp	.L864	#
.L862:
	.loc 1 3400 0
	movl	$1, -592(%rbp)	#, minmod
	.loc 1 3401 0
	jmp	.L864	#
.L847:
.LBB50:
	.loc 1 3404 0
	movl	$0, -192(%rbp)	#, l
	.loc 1 3410 0
	movzwl	4(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg1, D.19317
	movzwl	%ax, %r14d	# D.19317, ln
	.loc 1 3411 0
	movzwl	6(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg2, D.19317
	movzwl	%ax, %r15d	# D.19317, n
	.loc 1 3412 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %r13d	# D.19316, paren
	.loc 1 3413 0
	testl	%r13d, %r13d	# paren
	je	.L1243	#,
	.loc 1 3414 0
	movl	PL_regsize(%rip), %eax	# PL_regsize, PL_regsize.853
	cmpl	%eax, %r13d	# PL_regsize.853, paren
	jle	.L1244	#,
	.loc 1 3415 0
	movl	%r13d, PL_regsize(%rip)	# paren, PL_regsize
.L1244:
	.loc 1 3416 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.854
	movl	(%rax), %eax	# *PL_reglastparen.854_1688, D.19324
	cmpl	%r13d, %eax	# paren, D.19319
	jge	.L1243	#,
	.loc 1 3417 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.855
	movl	%r13d, %edx	# paren, paren.856
	movl	%edx, (%rax)	# paren.856, *PL_reglastparen.855_1691
.L1243:
	.loc 1 3419 0
	addq	$8, %r12	#, scan
	.loc 1 3420 0
	testl	%r13d, %r13d	# paren
	je	.L1245	#,
	.loc 1 3421 0
	movzwl	2(%r12), %eax	# scan_1693->next_off, D.19317
	movzwl	%ax, %eax	# D.19317, D.19318
	salq	$2, %rax	#, D.19318
	addq	%rax, %r12	# D.19318, scan
.L1245:
	.loc 1 3422 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3423 0
	cmpl	$0, -592(%rbp)	#, minmod
	je	.L1246	#,
	.loc 1 3424 0
	movl	$0, -592(%rbp)	#, minmod
	.loc 1 3425 0
	testl	%r14d, %r14d	# ln
	je	.L1247	#,
	.loc 1 3425 0 is_stmt 0 discriminator 1
	leaq	-192(%rbp), %rax	#, tmp2353
	movq	%rax, %rdx	# tmp2353,
	movl	%r14d, %esi	# ln,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat_hard	#
	cmpl	%r14d, %eax	# ln, D.19319
	jge	.L1247	#,
	.loc 1 3426 0 is_stmt 1
	jmp	.L867	#
.L1247:
	.loc 1 3427 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	.loc 1 3428 0
	movq	-480(%rbp), %rax	# next, tmp2354
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1249	#,
	.loc 1 3428 0 is_stmt 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2356
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2358
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$45, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2359
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$46, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2360
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$57, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2361
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2362
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$50, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2363
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$39, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2364
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$58, %al	#, D.19316
	je	.L1249	#,
	movq	-480(%rbp), %rax	# next, tmp2365
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1250	#,
	movq	-480(%rbp), %rax	# next, tmp2367
	movzwl	4(%rax), %eax	# MEM[(struct regnode_2 *)next_4].arg1, D.19317
	testw	%ax, %ax	# D.19317
	je	.L1250	#,
.L1249:
.LBB51:
	.loc 1 3429 0 is_stmt 1
	movq	-480(%rbp), %rax	# next, tmp2368
	movq	%rax, -424(%rbp)	# tmp2368, text_node
	.loc 1 3431 0
	movq	-424(%rbp), %rax	# text_node, tmp2369
	movzbl	1(%rax), %eax	# text_node_1720->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1251	#,
	.loc 1 3431 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2371
	movzbl	1(%rax), %eax	# text_node_1720->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1251	#,
	jmp	.L1252	#
.L1259:
	.loc 1 3431 0 discriminator 2
	movq	-424(%rbp), %rax	# text_node, tmp2373
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1253	#,
	movq	-424(%rbp), %rax	# text_node, tmp2374
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1254	#,
.L1253:
	.loc 1 3431 0 discriminator 1
	addq	$8, -424(%rbp)	#, text_node
	jmp	.L1252	#
.L1254:
	movq	-424(%rbp), %rax	# text_node, tmp2376
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$39, %al	#, D.19316
	jne	.L1255	#,
	addq	$4, -424(%rbp)	#, text_node
	jmp	.L1252	#
.L1255:
	.loc 1 3431 0 discriminator 2
	movq	-424(%rbp), %rax	# text_node, tmp2377
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$50, %al	#, D.19316
	jne	.L1256	#,
	.loc 1 3431 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2378
	movzbl	(%rax), %eax	# text_node_134->flags, D.19316
	testb	%al, %al	# D.19316
	jne	.L1257	#,
	movq	-424(%rbp), %rax	# text_node, tmp2379
	addq	$8, %rax	#, iftmp.857
	jmp	.L1258	#
.L1257:
	.loc 1 3431 0 discriminator 2
	movq	-424(%rbp), %rax	# text_node, tmp2380
	movl	4(%rax), %eax	# MEM[(struct regnode_1 *)text_node_134].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	leaq	0(,%rax,4), %rdx	#, D.19318
	movq	-424(%rbp), %rax	# text_node, tmp2381
	addq	%rdx, %rax	# D.19318, iftmp.857
.L1258:
	.loc 1 3431 0 discriminator 1
	movq	%rax, -424(%rbp)	# iftmp.857, text_node
	jmp	.L1252	#
.L1256:
	.loc 1 3431 0 discriminator 2
	movq	-424(%rbp), %rax	# text_node, tmp2382
	movzwl	2(%rax), %eax	# text_node_134->next_off, D.19317
	movzwl	%ax, %eax	# D.19317, D.19318
	salq	$2, %rax	#, D.19318
	addq	%rax, -424(%rbp)	# D.19318, text_node
.L1252:
	.loc 1 3431 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2383
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$45, %al	#, D.19316
	je	.L1259	#,
	.loc 1 3431 0 discriminator 3
	movq	-424(%rbp), %rax	# text_node, tmp2384
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$46, %al	#, D.19316
	je	.L1259	#,
	.loc 1 3431 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2385
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$57, %al	#, D.19316
	je	.L1259	#,
	movq	-424(%rbp), %rax	# text_node, tmp2386
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1259	#,
	movq	-424(%rbp), %rax	# text_node, tmp2387
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$50, %al	#, D.19316
	je	.L1259	#,
	movq	-424(%rbp), %rax	# text_node, tmp2388
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$39, %al	#, D.19316
	je	.L1259	#,
	movq	-424(%rbp), %rax	# text_node, tmp2389
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	cmpb	$58, %al	#, D.19316
	je	.L1259	#,
	movq	-424(%rbp), %rax	# text_node, tmp2390
	movzbl	1(%rax), %eax	# text_node_134->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1251	#,
	movq	-424(%rbp), %rax	# text_node, tmp2392
	movzwl	4(%rax), %eax	# MEM[(struct regnode_2 *)text_node_134].arg1, D.19317
	testw	%ax, %ax	# D.19317
	jne	.L1259	#,
.L1251:
	.loc 1 3433 0 is_stmt 1
	movq	-424(%rbp), %rax	# text_node, tmp2393
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1260	#,
	.loc 1 3433 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2395
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1260	#,
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
	jmp	.L1261	#
.L1260:
	.loc 1 3435 0 is_stmt 1
	movq	-424(%rbp), %rax	# text_node, tmp2397
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	jne	.L1262	#,
	.loc 1 3436 0
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
	.loc 1 3437 0
	jmp	.L1263	#
.L1262:
	.loc 1 3439 0
	movq	-424(%rbp), %rax	# text_node, tmp2399
	movzbl	4(%rax), %eax	# MEM[(struct regnode_string *)text_node_135].string, D.19321
	movzbl	%al, %eax	# D.19316, c1
	movl	%eax, -604(%rbp)	# c1, %sfp
	.loc 1 3440 0
	movq	-424(%rbp), %rax	# text_node, tmp2400
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	cmpb	$34, %al	#, D.19316
	je	.L1264	#,
	.loc 1 3440 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2401
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	cmpb	$48, %al	#, D.19316
	jne	.L1265	#,
.L1264:
	.loc 1 3441 0 is_stmt 1
	movslq	-604(%rbp), %rax	# %sfp, tmp2402
	movzbl	PL_fold(%rax), %eax	# PL_fold, D.19316
	movzbl	%al, %eax	# D.19316, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	jmp	.L1261	#
.L1265:
	.loc 1 3442 0
	movq	-424(%rbp), %rax	# text_node, tmp2403
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	cmpb	$35, %al	#, D.19316
	je	.L1266	#,
	.loc 1 3442 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# text_node, tmp2404
	movzbl	1(%rax), %eax	# text_node_135->type, D.19316
	cmpb	$49, %al	#, D.19316
	jne	.L1267	#,
.L1266:
	.loc 1 3443 0 is_stmt 1
	movslq	-604(%rbp), %rax	# %sfp, tmp2405
	movzbl	PL_fold_locale(%rax), %eax	# PL_fold_locale, D.19316
	movzbl	%al, %eax	# D.19316, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	jmp	.L1261	#
.L1267:
	.loc 1 3445 0
	movl	-604(%rbp), %eax	# %sfp, c1
	movl	%eax, -620(%rbp)	# c1, %sfp
.LBE51:
	.loc 1 3428 0
	jmp	.L1263	#
.L1261:
	jmp	.L1263	#
.L1250:
	.loc 1 3449 0
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
.L1263:
	.loc 1 3451 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2406
	movl	%eax, -512(%rbp)	# tmp2406, lastcp
	.loc 1 3452 0
	jmp	.L1268	#
.L1278:
	.loc 1 3454 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1269	#,
	.loc 1 3455 0 discriminator 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.858
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.858_1783], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	.loc 1 3454 0 discriminator 1
	cmpl	-604(%rbp), %eax	# %sfp, D.19319
	je	.L1269	#,
	.loc 1 3456 0
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.859
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.859_1786], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	.loc 1 3455 0
	cmpl	-620(%rbp), %eax	# %sfp, D.19319
	jne	.L1270	#,
.L1269:
	.loc 1 3458 0
	testl	%r13d, %r13d	# paren
	je	.L1271	#,
	.loc 1 3459 0
	testl	%r14d, %r14d	# ln
	je	.L1272	#,
	.loc 1 3460 0
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.860
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movq	%rax, -616(%rbp)	# D.19333, %sfp
	.loc 1 3461 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.862
	.loc 1 3460 0
	testb	%al, %al	# PL_reg_match_utf8.862
	je	.L1273	#,
	.loc 1 3461 0
	movl	-192(%rbp), %eax	# l, l.863
	negl	%eax	# D.19319
	movl	%eax, %edx	# D.19319, D.19319
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.864
	movl	%edx, %esi	# D.19319,
	movq	%rax, %rdi	# PL_reginput.864,
	call	S_reghop	#
	jmp	.L1274	#
.L1273:
	.loc 1 3461 0 is_stmt 0 discriminator 1
	movq	PL_reginput(%rip), %rdx	# PL_reginput, PL_reginput.865
	movl	-192(%rbp), %eax	# l, l.866
	negl	%eax	# D.19319
	cltq
	addq	%rdx, %rax	# PL_reginput.865, D.19320
.L1274:
	.loc 1 3460 0 is_stmt 1 discriminator 1
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.867
	subl	%edx, %eax	# D.19338, D.19338
	movq	-616(%rbp), %rsi	# %sfp, D.19333
	movl	%eax, (%rsi)	# D.19319, *_1792
	.loc 1 3462 0 discriminator 1
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.869
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.869, D.19333
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.870
	movq	%rax, %rcx	# PL_reginput.870, PL_reginput.871
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.872
	subq	%rax, %rcx	# PL_bostr.873, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_1815
	jmp	.L1271	#
.L1272:
	.loc 1 3465 0
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.874
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_1825
.L1271:
	.loc 1 3467 0
	movq	-480(%rbp), %rax	# next, tmp2407
	movq	%rax, %rdi	# tmp2407,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1275	#,
	.loc 1 3468 0
	jmp	.L1486	#
.L1275:
	.loc 1 3469 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.875
	cmpl	-512(%rbp), %eax	# lastcp, PL_savestack_ix.875
	jle	.L1270	#,
	.loc 1 3469 0 is_stmt 0 discriminator 1
	movl	-512(%rbp), %eax	# lastcp, tmp2408
	movl	%eax, %edi	# tmp2408,
	call	Perl_leave_scope	#
.L1270:
	.loc 1 3472 0 is_stmt 1
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3473 0
	leaq	-192(%rbp), %rax	#, tmp2409
	movq	%rax, %rdx	# tmp2409,
	movl	$1, %esi	#,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat_hard	#
	testl	%eax, %eax	# D.19319
	je	.L1277	#,
	.loc 1 3474 0
	addl	$1, %r14d	#, ln
	.loc 1 3475 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	jmp	.L1268	#
.L1277:
	.loc 1 3478 0
	jmp	.L1248	#
.L1268:
	.loc 1 3452 0 discriminator 1
	cmpl	%r14d, %r15d	# ln, n
	jge	.L1278	#,
	.loc 1 3452 0 is_stmt 0 discriminator 2
	cmpl	$32767, %r15d	#, n
	jne	.L1279	#,
	.loc 1 3452 0 discriminator 1
	testl	%r14d, %r14d	# ln
	jg	.L1278	#,
	.loc 1 3546 0 is_stmt 1
	jmp	.L1507	#
.L1246:
	.loc 1 3482 0
	leaq	-192(%rbp), %rax	#, tmp2410
	movq	%rax, %rdx	# tmp2410,
	movl	%r15d, %esi	# n,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat_hard	#
	movl	%eax, %r15d	#, n
	.loc 1 3483 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	.loc 1 3490 0
	cmpl	%r14d, %r15d	# ln, n
	jl	.L1280	#,
	.loc 1 3491 0
	movq	-480(%rbp), %rax	# next, tmp2411
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1281	#,
	.loc 1 3491 0 is_stmt 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2413
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2415
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$45, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2416
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$46, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2417
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$57, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2418
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2419
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$50, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2420
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$39, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2421
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$58, %al	#, D.19316
	je	.L1281	#,
	movq	-480(%rbp), %rax	# next, tmp2422
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1282	#,
	movq	-480(%rbp), %rax	# next, tmp2424
	movzwl	4(%rax), %eax	# MEM[(struct regnode_2 *)next_4].arg1, D.19317
	testw	%ax, %ax	# D.19317
	je	.L1282	#,
.L1281:
.LBB52:
	.loc 1 3492 0 is_stmt 1
	movq	-480(%rbp), %rax	# next, tmp2425
	movq	%rax, -416(%rbp)	# tmp2425, text_node
	.loc 1 3494 0
	movq	-416(%rbp), %rax	# text_node, tmp2426
	movzbl	1(%rax), %eax	# text_node_1852->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1283	#,
	.loc 1 3494 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2428
	movzbl	1(%rax), %eax	# text_node_1852->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1283	#,
	jmp	.L1284	#
.L1291:
	.loc 1 3494 0 discriminator 2
	movq	-416(%rbp), %rax	# text_node, tmp2430
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1285	#,
	movq	-416(%rbp), %rax	# text_node, tmp2431
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1286	#,
.L1285:
	.loc 1 3494 0 discriminator 1
	addq	$8, -416(%rbp)	#, text_node
	jmp	.L1284	#
.L1286:
	movq	-416(%rbp), %rax	# text_node, tmp2433
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$39, %al	#, D.19316
	jne	.L1287	#,
	addq	$4, -416(%rbp)	#, text_node
	jmp	.L1284	#
.L1287:
	.loc 1 3494 0 discriminator 2
	movq	-416(%rbp), %rax	# text_node, tmp2434
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$50, %al	#, D.19316
	jne	.L1288	#,
	.loc 1 3494 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2435
	movzbl	(%rax), %eax	# text_node_136->flags, D.19316
	testb	%al, %al	# D.19316
	jne	.L1289	#,
	movq	-416(%rbp), %rax	# text_node, tmp2436
	addq	$8, %rax	#, iftmp.876
	jmp	.L1290	#
.L1289:
	.loc 1 3494 0 discriminator 2
	movq	-416(%rbp), %rax	# text_node, tmp2437
	movl	4(%rax), %eax	# MEM[(struct regnode_1 *)text_node_136].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	leaq	0(,%rax,4), %rdx	#, D.19318
	movq	-416(%rbp), %rax	# text_node, tmp2438
	addq	%rdx, %rax	# D.19318, iftmp.876
.L1290:
	.loc 1 3494 0 discriminator 1
	movq	%rax, -416(%rbp)	# iftmp.876, text_node
	jmp	.L1284	#
.L1288:
	.loc 1 3494 0 discriminator 2
	movq	-416(%rbp), %rax	# text_node, tmp2439
	movzwl	2(%rax), %eax	# text_node_136->next_off, D.19317
	movzwl	%ax, %eax	# D.19317, D.19318
	salq	$2, %rax	#, D.19318
	addq	%rax, -416(%rbp)	# D.19318, text_node
.L1284:
	.loc 1 3494 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2440
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$45, %al	#, D.19316
	je	.L1291	#,
	.loc 1 3494 0 discriminator 3
	movq	-416(%rbp), %rax	# text_node, tmp2441
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$46, %al	#, D.19316
	je	.L1291	#,
	.loc 1 3494 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2442
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$57, %al	#, D.19316
	je	.L1291	#,
	movq	-416(%rbp), %rax	# text_node, tmp2443
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1291	#,
	movq	-416(%rbp), %rax	# text_node, tmp2444
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$50, %al	#, D.19316
	je	.L1291	#,
	movq	-416(%rbp), %rax	# text_node, tmp2445
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$39, %al	#, D.19316
	je	.L1291	#,
	movq	-416(%rbp), %rax	# text_node, tmp2446
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	cmpb	$58, %al	#, D.19316
	je	.L1291	#,
	movq	-416(%rbp), %rax	# text_node, tmp2447
	movzbl	1(%rax), %eax	# text_node_136->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1283	#,
	movq	-416(%rbp), %rax	# text_node, tmp2449
	movzwl	4(%rax), %eax	# MEM[(struct regnode_2 *)text_node_136].arg1, D.19317
	testw	%ax, %ax	# D.19317
	jne	.L1291	#,
.L1283:
	.loc 1 3496 0 is_stmt 1
	movq	-416(%rbp), %rax	# text_node, tmp2450
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1292	#,
	.loc 1 3496 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2452
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1292	#,
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
	jmp	.L1293	#
.L1292:
	.loc 1 3498 0 is_stmt 1
	movq	-416(%rbp), %rax	# text_node, tmp2454
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	jne	.L1294	#,
	.loc 1 3499 0
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
	.loc 1 3500 0
	jmp	.L1280	#
.L1294:
	.loc 1 3502 0
	movq	-416(%rbp), %rax	# text_node, tmp2456
	movzbl	4(%rax), %eax	# MEM[(struct regnode_string *)text_node_137].string, D.19321
	movzbl	%al, %eax	# D.19316, c1
	movl	%eax, -604(%rbp)	# c1, %sfp
	.loc 1 3504 0
	movq	-416(%rbp), %rax	# text_node, tmp2457
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	cmpb	$34, %al	#, D.19316
	je	.L1295	#,
	.loc 1 3504 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2458
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	cmpb	$48, %al	#, D.19316
	jne	.L1296	#,
.L1295:
	.loc 1 3505 0 is_stmt 1
	movslq	-604(%rbp), %rax	# %sfp, tmp2459
	movzbl	PL_fold(%rax), %eax	# PL_fold, D.19316
	movzbl	%al, %eax	# D.19316, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	jmp	.L1293	#
.L1296:
	.loc 1 3506 0
	movq	-416(%rbp), %rax	# text_node, tmp2460
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	cmpb	$35, %al	#, D.19316
	je	.L1297	#,
	.loc 1 3506 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# text_node, tmp2461
	movzbl	1(%rax), %eax	# text_node_137->type, D.19316
	cmpb	$49, %al	#, D.19316
	jne	.L1298	#,
.L1297:
	.loc 1 3507 0 is_stmt 1
	movslq	-604(%rbp), %rax	# %sfp, tmp2462
	movzbl	PL_fold_locale(%rax), %eax	# PL_fold_locale, D.19316
	movzbl	%al, %eax	# D.19316, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	jmp	.L1293	#
.L1298:
	.loc 1 3509 0
	movl	-604(%rbp), %eax	# %sfp, c1
	movl	%eax, -620(%rbp)	# c1, %sfp
.LBE52:
	.loc 1 3491 0
	jmp	.L1280	#
.L1293:
	jmp	.L1280	#
.L1282:
	.loc 1 3513 0
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
.L1280:
	.loc 1 3516 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2463
	movl	%eax, -512(%rbp)	# tmp2463, lastcp
	.loc 1 3517 0
	jmp	.L1299	#
.L1309:
	.loc 1 3519 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1300	#,
	.loc 1 3520 0 discriminator 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.877
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.877_1915], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	.loc 1 3519 0 discriminator 1
	cmpl	-604(%rbp), %eax	# %sfp, D.19319
	je	.L1300	#,
	.loc 1 3521 0
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.878
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.878_1918], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	.loc 1 3520 0
	cmpl	-620(%rbp), %eax	# %sfp, D.19319
	jne	.L1301	#,
.L1300:
	.loc 1 3528 0
	testl	%r13d, %r13d	# paren
	je	.L1302	#,
	.loc 1 3529 0
	testl	%r15d, %r15d	# n
	je	.L1303	#,
	.loc 1 3530 0
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.879
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	leaq	(%rax,%rdx), %r12	#, D.19333
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.881
	testb	%al, %al	# PL_reg_match_utf8.881
	je	.L1304	#,
	.loc 1 3530 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# l, l.882
	negl	%eax	# D.19319
	movl	%eax, %edx	# D.19319, D.19319
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.883
	movl	%edx, %esi	# D.19319,
	movq	%rax, %rdi	# PL_reginput.883,
	call	S_reghop	#
	jmp	.L1305	#
.L1304:
	.loc 1 3530 0 discriminator 2
	movq	PL_reginput(%rip), %rdx	# PL_reginput, PL_reginput.884
	movl	-192(%rbp), %eax	# l, l.885
	negl	%eax	# D.19319
	cltq
	addq	%rdx, %rax	# PL_reginput.884, D.19320
.L1305:
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.886
	subl	%edx, %eax	# D.19338, D.19338
	movl	%eax, (%r12)	# D.19319, *_1924
	.loc 1 3531 0 is_stmt 1 discriminator 2
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.888
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.888, D.19333
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.889
	movq	%rax, %rcx	# PL_reginput.889, PL_reginput.890
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.891
	subq	%rax, %rcx	# PL_bostr.892, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_1947
	jmp	.L1302	#
.L1303:
	.loc 1 3534 0
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.893
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_1957
.L1302:
	.loc 1 3536 0
	movq	-480(%rbp), %rax	# next, tmp2464
	movq	%rax, %rdi	# tmp2464,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1306	#,
	.loc 1 3537 0
	nop
	jmp	.L1486	#
.L1306:
	.loc 1 3538 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.894
	cmpl	-512(%rbp), %eax	# lastcp, PL_savestack_ix.894
	jle	.L1301	#,
	.loc 1 3538 0 is_stmt 0 discriminator 1
	movl	-512(%rbp), %eax	# lastcp, tmp2465
	movl	%eax, %edi	# tmp2465,
	call	Perl_leave_scope	#
.L1301:
	.loc 1 3541 0 is_stmt 1
	subl	$1, %r15d	#, n
	.loc 1 3542 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.896
	testb	%al, %al	# PL_reg_match_utf8.896
	je	.L1307	#,
	.loc 1 3542 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# l, l.897
	negl	%eax	# D.19319
	movl	%eax, %esi	# D.19319,
	movq	%rbx, %rdi	# locinput,
	call	S_reghop	#
	jmp	.L1308	#
.L1307:
	.loc 1 3542 0 discriminator 2
	movl	-192(%rbp), %eax	# l, l.898
	negl	%eax	# D.19319
	cltq
	addq	%rbx, %rax	# locinput, iftmp.895
.L1308:
	.loc 1 3542 0 discriminator 3
	movq	%rax, %rbx	# iftmp.895, locinput
	.loc 1 3543 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
.L1299:
	.loc 1 3517 0 discriminator 1
	cmpl	%r14d, %r15d	# ln, n
	jge	.L1309	#,
.L1279:
.L1507:
	.loc 1 3546 0
	nop
.L1248:
.LBE50:
	.loc 1 3976 0 discriminator 1
	jmp	.L1488	#
.L846:
	.loc 1 3550 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %r13d	# D.19316, paren
	.loc 1 3551 0
	movl	PL_regsize(%rip), %eax	# PL_regsize, PL_regsize.899
	cmpl	%eax, %r13d	# PL_regsize.899, paren
	jle	.L1310	#,
	.loc 1 3552 0
	movl	%r13d, PL_regsize(%rip)	# paren, PL_regsize
.L1310:
	.loc 1 3553 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.900
	movl	(%rax), %eax	# *PL_reglastparen.900_1973, D.19324
	cmpl	%r13d, %eax	# paren, D.19319
	jge	.L1311	#,
	.loc 1 3554 0
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.901
	movl	%r13d, %edx	# paren, paren.902
	movl	%edx, (%rax)	# paren.902, *PL_reglastparen.901_1976
.L1311:
	.loc 1 3555 0
	movzwl	4(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg1, D.19317
	movzwl	%ax, %r14d	# D.19317, ln
	.loc 1 3556 0
	movzwl	6(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg2, D.19317
	movzwl	%ax, %r15d	# D.19317, n
	.loc 1 3557 0
	leaq	8(%r12), %rax	#, D.19335
	movq	%rax, %rdi	# D.19335,
	call	Perl_regnext	#
	movq	%rax, %r12	#, scan
	.loc 1 3558 0
	jmp	.L1312	#
.L845:
	.loc 1 3560 0
	movl	$0, %r13d	#, paren
	.loc 1 3561 0
	movzwl	4(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg1, D.19317
	movzwl	%ax, %r14d	# D.19317, ln
	.loc 1 3562 0
	movzwl	6(%r12), %eax	# MEM[(struct regnode_2 *)scan_3].arg2, D.19317
	movzwl	%ax, %r15d	# D.19317, n
	.loc 1 3563 0
	addq	$8, %r12	#, scan
	.loc 1 3564 0
	jmp	.L1312	#
.L843:
	.loc 1 3566 0
	movl	$0, %r14d	#, ln
	.loc 1 3567 0
	movl	$32767, %r15d	#, n
	.loc 1 3568 0
	addq	$4, %r12	#, scan
	.loc 1 3569 0
	movl	$0, %r13d	#, paren
	.loc 1 3570 0
	jmp	.L1312	#
.L844:
	.loc 1 3572 0
	movl	$1, %r14d	#, ln
	.loc 1 3573 0
	movl	$32767, %r15d	#, n
	.loc 1 3574 0
	addq	$4, %r12	#, scan
	.loc 1 3575 0
	movl	$0, %r13d	#, paren
.L1312:
	.loc 1 3588 0
	movq	-480(%rbp), %rax	# next, tmp2466
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1313	#,
	.loc 1 3588 0 is_stmt 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2468
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2470
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$45, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2471
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$46, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2472
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$57, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2473
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2474
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$50, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2475
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$39, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2476
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$58, %al	#, D.19316
	je	.L1313	#,
	movq	-480(%rbp), %rax	# next, tmp2477
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1314	#,
	movq	-480(%rbp), %rax	# next, tmp2479
	movzwl	4(%rax), %eax	# MEM[(struct regnode_2 *)next_4].arg1, D.19317
	testw	%ax, %ax	# D.19317
	je	.L1314	#,
.L1313:
.LBB53:
	.loc 1 3590 0 is_stmt 1
	movq	-480(%rbp), %rax	# next, tmp2480
	movq	%rax, -408(%rbp)	# tmp2480, text_node
	.loc 1 3592 0
	movq	-408(%rbp), %rax	# text_node, tmp2481
	movzbl	1(%rax), %eax	# text_node_2017->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1315	#,
	.loc 1 3592 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2483
	movzbl	1(%rax), %eax	# text_node_2017->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1315	#,
	jmp	.L1316	#
.L1323:
	.loc 1 3592 0 discriminator 2
	movq	-408(%rbp), %rax	# text_node, tmp2485
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1317	#,
	movq	-408(%rbp), %rax	# text_node, tmp2486
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1318	#,
.L1317:
	.loc 1 3592 0 discriminator 1
	addq	$8, -408(%rbp)	#, text_node
	jmp	.L1316	#
.L1318:
	movq	-408(%rbp), %rax	# text_node, tmp2488
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$39, %al	#, D.19316
	jne	.L1319	#,
	addq	$4, -408(%rbp)	#, text_node
	jmp	.L1316	#
.L1319:
	.loc 1 3592 0 discriminator 2
	movq	-408(%rbp), %rax	# text_node, tmp2489
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$50, %al	#, D.19316
	jne	.L1320	#,
	.loc 1 3592 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2490
	movzbl	(%rax), %eax	# text_node_138->flags, D.19316
	testb	%al, %al	# D.19316
	jne	.L1321	#,
	movq	-408(%rbp), %rax	# text_node, tmp2491
	addq	$8, %rax	#, iftmp.903
	jmp	.L1322	#
.L1321:
	.loc 1 3592 0 discriminator 2
	movq	-408(%rbp), %rax	# text_node, tmp2492
	movl	4(%rax), %eax	# MEM[(struct regnode_1 *)text_node_138].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	leaq	0(,%rax,4), %rdx	#, D.19318
	movq	-408(%rbp), %rax	# text_node, tmp2493
	addq	%rdx, %rax	# D.19318, iftmp.903
.L1322:
	.loc 1 3592 0 discriminator 1
	movq	%rax, -408(%rbp)	# iftmp.903, text_node
	jmp	.L1316	#
.L1320:
	.loc 1 3592 0 discriminator 2
	movq	-408(%rbp), %rax	# text_node, tmp2494
	movzwl	2(%rax), %eax	# text_node_138->next_off, D.19317
	movzwl	%ax, %eax	# D.19317, D.19318
	salq	$2, %rax	#, D.19318
	addq	%rax, -408(%rbp)	# D.19318, text_node
.L1316:
	.loc 1 3592 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2495
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$45, %al	#, D.19316
	je	.L1323	#,
	.loc 1 3592 0 discriminator 3
	movq	-408(%rbp), %rax	# text_node, tmp2496
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$46, %al	#, D.19316
	je	.L1323	#,
	.loc 1 3592 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2497
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$57, %al	#, D.19316
	je	.L1323	#,
	movq	-408(%rbp), %rax	# text_node, tmp2498
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$52, %al	#, D.19316
	je	.L1323	#,
	movq	-408(%rbp), %rax	# text_node, tmp2499
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$50, %al	#, D.19316
	je	.L1323	#,
	movq	-408(%rbp), %rax	# text_node, tmp2500
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$39, %al	#, D.19316
	je	.L1323	#,
	movq	-408(%rbp), %rax	# text_node, tmp2501
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	cmpb	$58, %al	#, D.19316
	je	.L1323	#,
	movq	-408(%rbp), %rax	# text_node, tmp2502
	movzbl	1(%rax), %eax	# text_node_138->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$40, %al	#, D.19316
	jne	.L1315	#,
	movq	-408(%rbp), %rax	# text_node, tmp2504
	movzwl	4(%rax), %eax	# MEM[(struct regnode_2 *)text_node_138].arg1, D.19317
	testw	%ax, %ax	# D.19317
	jne	.L1323	#,
.L1315:
	.loc 1 3594 0 is_stmt 1
	movq	-408(%rbp), %rax	# text_node, tmp2505
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$33, %al	#, D.19316
	je	.L1324	#,
	.loc 1 3594 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2507
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	je	.L1324	#,
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
	jmp	.L1325	#
.L1324:
	.loc 1 3596 0 is_stmt 1
	movq	-408(%rbp), %rax	# text_node, tmp2509
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$47, %al	#, D.19316
	jne	.L1326	#,
	.loc 1 3597 0
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
	.loc 1 3598 0
	jmp	.L1327	#
.L1326:
	.loc 1 3600 0
	movq	-408(%rbp), %rax	# text_node, tmp2514
	addq	$4, %rax	#, tmp2513
	movq	%rax, -248(%rbp)	# tmp2513, s
	.loc 1 3602 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.904
	andl	$8, %eax	#, D.19324
	testl	%eax, %eax	# D.19324
	jne	.L1328	#,
	.loc 1 3603 0
	movq	-248(%rbp), %rax	# s, tmp2515
	movzbl	(%rax), %eax	# *s_2067, D.19316
	movzbl	%al, %eax	# D.19316, c1
	movl	%eax, -604(%rbp)	# c1, %sfp
	movl	%eax, -620(%rbp)	# c1, %sfp
	.loc 1 3604 0
	movq	-408(%rbp), %rax	# text_node, tmp2516
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	cmpb	$34, %al	#, D.19316
	je	.L1329	#,
	.loc 1 3604 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2517
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	cmpb	$48, %al	#, D.19316
	jne	.L1330	#,
.L1329:
	.loc 1 3605 0 is_stmt 1
	movslq	-604(%rbp), %rax	# %sfp, tmp2518
	movzbl	PL_fold(%rax), %eax	# PL_fold, D.19316
	movzbl	%al, %eax	# D.19316, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	jmp	.L1325	#
.L1330:
	.loc 1 3606 0
	movq	-408(%rbp), %rax	# text_node, tmp2519
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	cmpb	$35, %al	#, D.19316
	je	.L1332	#,
	.loc 1 3606 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2520
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	cmpb	$49, %al	#, D.19316
	jne	.L1325	#,
.L1332:
	.loc 1 3607 0 is_stmt 1
	movslq	-604(%rbp), %rax	# %sfp, tmp2521
	movzbl	PL_fold_locale(%rax), %eax	# PL_fold_locale, D.19316
	movzbl	%al, %eax	# D.19316, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	jmp	.L1325	#
.L1328:
	.loc 1 3610 0
	movq	-408(%rbp), %rax	# text_node, tmp2522
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	cmpb	$34, %al	#, D.19316
	je	.L1333	#,
	.loc 1 3610 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# text_node, tmp2523
	movzbl	1(%rax), %eax	# text_node_139->type, D.19316
	cmpb	$48, %al	#, D.19316
	jne	.L1334	#,
.L1333:
.LBB54:
	.loc 1 3615 0 is_stmt 1
	leaq	-488(%rbp), %rdx	#, tmp2524
	leaq	-80(%rbp), %rcx	#, tmp2525
	movq	-248(%rbp), %rax	# s, tmp2526
	movq	%rcx, %rsi	# tmp2525,
	movq	%rax, %rdi	# tmp2526,
	call	Perl_to_utf8_lower	#
	.loc 1 3616 0
	leaq	-192(%rbp), %rdx	#, tmp2527
	leaq	-64(%rbp), %rcx	#, tmp2528
	movq	-248(%rbp), %rax	# s, tmp2529
	movq	%rcx, %rsi	# tmp2528,
	movq	%rax, %rdi	# tmp2529,
	call	Perl_to_utf8_upper	#
	.loc 1 3619 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.906
	movq	80(%rax), %rax	# PL_curcop.906_2107->cop_warnings, D.19326
	.loc 1 3618 0
	testq	%rax, %rax	# D.19326
	je	.L1335	#,
	.loc 1 3619 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.907
	movq	80(%rax), %rax	# PL_curcop.907_2109->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1335	#,
	.loc 1 3619 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.908
	movq	80(%rax), %rax	# PL_curcop.908_2111->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1336	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.909
	movq	80(%rax), %rax	# PL_curcop.909_2113->cop_warnings, D.19326
	movq	(%rax), %rax	# _2114->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2115].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2117, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1336	#,
.L1335:
	.loc 1 3619 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.910
	movq	80(%rax), %rax	# PL_curcop.910_2121->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1337	#,
	.loc 1 3619 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.911
	movzbl	%al, %eax	# PL_dowarn.911, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1337	#,
.L1336:
	.loc 1 3618 0 is_stmt 1
	movl	$0, %eax	#, iftmp.905
	jmp	.L1338	#
.L1337:
	movl	$255, %eax	#, iftmp.905
.L1338:
	.loc 1 3618 0 is_stmt 0 discriminator 1
	leaq	-80(%rbp), %rdi	#, tmp2530
	movl	%eax, %ecx	# iftmp.905,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, -604(%rbp)	# D.19318, %sfp
	.loc 1 3622 0 is_stmt 1 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.913
	movq	80(%rax), %rax	# PL_curcop.913_2130->cop_warnings, D.19326
	.loc 1 3621 0 discriminator 1
	testq	%rax, %rax	# D.19326
	je	.L1339	#,
	.loc 1 3622 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.914
	movq	80(%rax), %rax	# PL_curcop.914_2132->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1339	#,
	.loc 1 3622 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.915
	movq	80(%rax), %rax	# PL_curcop.915_2134->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1340	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.916
	movq	80(%rax), %rax	# PL_curcop.916_2136->cop_warnings, D.19326
	movq	(%rax), %rax	# _2137->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2138].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2140, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1340	#,
.L1339:
	.loc 1 3622 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.917
	movq	80(%rax), %rax	# PL_curcop.917_2144->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1341	#,
	.loc 1 3622 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.918
	movzbl	%al, %eax	# PL_dowarn.918, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1341	#,
.L1340:
	.loc 1 3621 0 is_stmt 1
	movl	$0, %eax	#, iftmp.912
	jmp	.L1342	#
.L1341:
	movl	$255, %eax	#, iftmp.912
.L1342:
	.loc 1 3621 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rdi	#, tmp2531
	movl	%eax, %ecx	# iftmp.912,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, -620(%rbp)	# D.19318, %sfp
.LBE54:
	.loc 1 3610 0 is_stmt 1 discriminator 1
	jmp	.L1325	#
.L1334:
	.loc 1 3627 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.920
	movq	80(%rax), %rax	# PL_curcop.920_2083->cop_warnings, D.19326
	.loc 1 3626 0
	testq	%rax, %rax	# D.19326
	je	.L1343	#,
	.loc 1 3627 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.921
	movq	80(%rax), %rax	# PL_curcop.921_2085->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1343	#,
	.loc 1 3627 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.922
	movq	80(%rax), %rax	# PL_curcop.922_2087->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1344	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.923
	movq	80(%rax), %rax	# PL_curcop.923_2089->cop_warnings, D.19326
	movq	(%rax), %rax	# _2090->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2091].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2093, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1344	#,
.L1343:
	.loc 1 3627 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.924
	movq	80(%rax), %rax	# PL_curcop.924_2097->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1345	#,
	.loc 1 3627 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.925
	movzbl	%al, %eax	# PL_dowarn.925, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1345	#,
.L1344:
	.loc 1 3626 0 is_stmt 1
	movl	$0, %eax	#, iftmp.919
	jmp	.L1346	#
.L1345:
	movl	$255, %eax	#, iftmp.919
.L1346:
	.loc 1 3626 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rdi	# s, tmp2532
	movl	%eax, %ecx	# iftmp.919,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movl	%eax, -604(%rbp)	# c1, %sfp
	movl	%eax, -620(%rbp)	# c1, %sfp
.LBE53:
	.loc 1 3588 0 is_stmt 1 discriminator 1
	jmp	.L1327	#
.L1325:
	.loc 1 3588 0 is_stmt 0
	jmp	.L1327	#
.L1314:
	.loc 1 3634 0 is_stmt 1
	movl	$-1000, %eax	#, c2
	movl	%eax, -620(%rbp)	# c2, %sfp
	movl	%eax, -604(%rbp)	# c2, %sfp
.L1327:
	.loc 1 3636 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3637 0
	cmpl	$0, -592(%rbp)	#, minmod
	je	.L1347	#,
.LBB55:
	.loc 1 3639 0
	movl	$0, -592(%rbp)	#, minmod
	.loc 1 3640 0
	testl	%r14d, %r14d	# ln
	je	.L1348	#,
	.loc 1 3640 0 is_stmt 0 discriminator 1
	movl	%r14d, %esi	# ln,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat	#
	cmpl	%r14d, %eax	# ln, D.19319
	jge	.L1348	#,
	.loc 1 3641 0 is_stmt 1
	jmp	.L867	#
.L1348:
	.loc 1 3642 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	.loc 1 3643 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2533
	movl	%eax, -508(%rbp)	# tmp2533, lastcp
	.loc 1 3644 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1349	#,
.LBB56:
	.loc 1 3646 0
	movq	%rbx, -392(%rbp)	# locinput, old
	.loc 1 3647 0
	movl	$0, -564(%rbp)	#, count
	.loc 1 3649 0
	cmpl	$32767, %r15d	#, n
	jne	.L1350	#,
	.loc 1 3650 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.926
	subq	$1, %rax	#, tmp2534
	movq	%rax, -400(%rbp)	# tmp2534, e
	.loc 1 3651 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1351	#,
	.loc 1 3652 0
	jmp	.L1352	#
.L1353:
	.loc 1 3653 0
	subq	$1, -400(%rbp)	#, e
.L1352:
	.loc 1 3652 0 discriminator 1
	movq	-400(%rbp), %rax	# e, tmp2535
	movzbl	(%rax), %eax	# MEM[(U8 *)e_140], D.19316
	testb	%al, %al	# D.19332
	jns	.L1351	#,
	.loc 1 3652 0 is_stmt 0 discriminator 2
	movq	-400(%rbp), %rax	# e, tmp2536
	movzbl	(%rax), %eax	# MEM[(U8 *)e_140], D.19316
	cmpb	$-65, %al	#, D.19316
	jbe	.L1353	#,
	jmp	.L1351	#
.L1350:
	.loc 1 3655 0 is_stmt 1
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1354	#,
.LBB57:
	.loc 1 3656 0
	movl	%r15d, %eax	# n, tmp2537
	subl	%r14d, %eax	# ln, tmp2537
	movl	%eax, -560(%rbp)	# tmp2537, m
	.loc 1 3657 0
	movq	%rbx, -400(%rbp)	# locinput, e
	jmp	.L1355	#
.L1357:
	.loc 1 3659 0 discriminator 1
	movq	-400(%rbp), %rax	# e, tmp2538
	movzbl	(%rax), %eax	# MEM[(U8 *)e_141], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, -400(%rbp)	# D.19323, e
	.loc 1 3658 0 discriminator 1
	subl	$1, -560(%rbp)	#, m
.L1355:
	.loc 1 3657 0 discriminator 1
	cmpl	$0, -560(%rbp)	#, m
	jle	.L1356	#,
	.loc 1 3658 0
	movq	-400(%rbp), %rax	# e, tmp2540
	movzbl	(%rax), %eax	# MEM[(U8 *)e_141], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %edx	# D.19316, D.19323
	movq	-400(%rbp), %rax	# e, tmp2542
	addq	%rax, %rdx	# tmp2542, D.19320
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.927
	cmpq	%rax, %rdx	# PL_regeol.927, D.19320
	jbe	.L1357	#,
.L1356:
.LBE57:
	jmp	.L1351	#
.L1354:
	.loc 1 3662 0
	movslq	%r15d, %rdx	# n, D.19323
	movslq	%r14d, %rax	# ln, D.19323
	subq	%rax, %rdx	# D.19323, D.19323
	movq	%rdx, %rax	# D.19323, D.19323
	addq	%rbx, %rax	# locinput, tmp2543
	movq	%rax, -400(%rbp)	# tmp2543, e
	.loc 1 3663 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.928
	cmpq	%rax, -400(%rbp)	# PL_regeol.928, e
	jb	.L1351	#,
	.loc 1 3664 0
	movq	PL_regeol(%rip), %rax	# PL_regeol, PL_regeol.929
	subq	$1, %rax	#, tmp2544
	movq	%rax, -400(%rbp)	# tmp2544, e
.L1351:
	.loc 1 3668 0
	cmpb	$0, -605(%rbp)	#, %sfp
	jne	.L1358	#,
	.loc 1 3669 0
	movl	-620(%rbp), %eax	# %sfp, c2
	cmpl	%eax, -604(%rbp)	# c2, %sfp
	jne	.L1359	#,
	.loc 1 3670 0
	jmp	.L1360	#
.L1362:
	.loc 1 3672 0
	addq	$1, %rbx	#, locinput
.L1360:
	.loc 1 3670 0 discriminator 1
	cmpq	-400(%rbp), %rbx	# e, locinput
	ja	.L1361	#,
	.loc 1 3671 0 discriminator 2
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_60], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	.loc 1 3670 0 discriminator 2
	cmpl	-604(%rbp), %eax	# %sfp, D.19319
	jne	.L1362	#,
	jmp	.L1361	#
.L1359:
	.loc 1 3674 0
	jmp	.L1363	#
.L1364:
	.loc 1 3677 0
	addq	$1, %rbx	#, locinput
.L1363:
	.loc 1 3674 0 discriminator 1
	cmpq	-400(%rbp), %rbx	# e, locinput
	ja	.L1361	#,
	.loc 1 3675 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_61], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	-604(%rbp), %eax	# %sfp, D.19319
	je	.L1361	#,
	.loc 1 3676 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_61], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cmpl	-620(%rbp), %eax	# %sfp, D.19319
	jne	.L1364	#,
.L1361:
	.loc 1 3679 0 discriminator 1
	movq	%rbx, %rdx	# locinput, locinput.930
	movq	-392(%rbp), %rax	# old, old.931
	subq	%rax, %rdx	# old.931, D.19322
	movq	%rdx, %rax	# D.19322, D.19322
	movl	%eax, -564(%rbp)	# D.19322, count
	jmp	.L1365	#
.L1358:
.LBB58:
	.loc 1 3683 0
	movl	-620(%rbp), %eax	# %sfp, c2
	cmpl	%eax, -604(%rbp)	# c2, %sfp
	jne	.L1366	#,
	.loc 1 3686 0
	jmp	.L1367	#
.L1373:
	.loc 1 3691 0
	movq	-192(%rbp), %rax	# len, len.932
	addq	%rax, %rbx	# len.932, locinput
	.loc 1 3692 0
	addl	$1, -564(%rbp)	#, count
.L1367:
	.loc 1 3686 0 discriminator 1
	cmpq	-400(%rbp), %rbx	# e, locinput
	ja	.L1365	#,
	.loc 1 3689 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.934
	movq	80(%rax), %rax	# PL_curcop.934_2198->cop_warnings, D.19326
	.loc 1 3687 0
	testq	%rax, %rax	# D.19326
	je	.L1369	#,
	.loc 1 3689 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.935
	movq	80(%rax), %rax	# PL_curcop.935_2200->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1369	#,
	.loc 1 3689 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.936
	movq	80(%rax), %rax	# PL_curcop.936_2202->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1370	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.937
	movq	80(%rax), %rax	# PL_curcop.937_2204->cop_warnings, D.19326
	movq	(%rax), %rax	# _2205->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2206].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2208, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1370	#,
.L1369:
	.loc 1 3689 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.938
	movq	80(%rax), %rax	# PL_curcop.938_2212->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1371	#,
	.loc 1 3689 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.939
	movzbl	%al, %eax	# PL_dowarn.939, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1371	#,
.L1370:
	.loc 1 3687 0 is_stmt 1
	movl	$0, %eax	#, iftmp.933
	jmp	.L1372	#
.L1371:
	movl	$255, %eax	#, iftmp.933
.L1372:
	.loc 1 3687 0 is_stmt 0 discriminator 1
	leaq	-192(%rbp), %rdx	#, tmp2545
	movl	%eax, %ecx	# iftmp.933,
	movl	$13, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8n_to_uvuni	#
	.loc 1 3690 0 is_stmt 1 discriminator 1
	movslq	-604(%rbp), %rdx	# %sfp, D.19318
	.loc 1 3686 0 discriminator 1
	cmpq	%rdx, %rax	# D.19318, D.19318
	jne	.L1373	#,
	jmp	.L1365	#
.L1366:
	.loc 1 3697 0
	jmp	.L1374	#
.L1379:
.LBB59:
	.loc 1 3700 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.941
	movq	80(%rax), %rax	# PL_curcop.941_2224->cop_warnings, D.19326
	.loc 1 3698 0
	testq	%rax, %rax	# D.19326
	je	.L1375	#,
	.loc 1 3700 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.942
	movq	80(%rax), %rax	# PL_curcop.942_2226->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1375	#,
	.loc 1 3700 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.943
	movq	80(%rax), %rax	# PL_curcop.943_2228->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1376	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.944
	movq	80(%rax), %rax	# PL_curcop.944_2230->cop_warnings, D.19326
	movq	(%rax), %rax	# _2231->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2232].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2234, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1376	#,
.L1375:
	.loc 1 3700 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.945
	movq	80(%rax), %rax	# PL_curcop.945_2238->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1377	#,
	.loc 1 3700 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.946
	movzbl	%al, %eax	# PL_dowarn.946, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1377	#,
.L1376:
	.loc 1 3698 0 is_stmt 1
	movl	$0, %eax	#, iftmp.940
	jmp	.L1378	#
.L1377:
	movl	$255, %eax	#, iftmp.940
.L1378:
	.loc 1 3698 0 is_stmt 0 discriminator 1
	leaq	-192(%rbp), %rdx	#, tmp2546
	movl	%eax, %ecx	# iftmp.940,
	movl	$13, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -240(%rbp)	# tmp2547, c
	.loc 1 3702 0 is_stmt 1 discriminator 1
	movslq	-604(%rbp), %rax	# %sfp, D.19318
	cmpq	-240(%rbp), %rax	# c, D.19318
	je	.L1365	#,
	movslq	-620(%rbp), %rax	# %sfp, D.19318
	cmpq	-240(%rbp), %rax	# c, D.19318
	je	.L1365	#,
	.loc 1 3704 0
	movq	-192(%rbp), %rax	# len, len.947
	addq	%rax, %rbx	# len.947, locinput
	.loc 1 3705 0
	addl	$1, -564(%rbp)	#, count
.L1374:
.LBE59:
	.loc 1 3697 0 discriminator 1
	cmpq	-400(%rbp), %rbx	# e, locinput
	jbe	.L1379	#,
.L1365:
.LBE58:
	.loc 1 3709 0
	cmpq	-400(%rbp), %rbx	# e, locinput
	jbe	.L1380	#,
	.loc 1 3710 0
	jmp	.L867	#
.L1380:
	.loc 1 3712 0
	cmpq	-392(%rbp), %rbx	# old, locinput
	je	.L1381	#,
	.loc 1 3713 0
	movl	$1, %r14d	#, ln
	.loc 1 3714 0
	movl	-564(%rbp), %eax	# count, tmp2548
	movl	%eax, %esi	# tmp2548,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat	#
	cmpl	-564(%rbp), %eax	# count, D.19319
	jge	.L1381	#,
	.loc 1 3715 0
	jmp	.L867	#
.L1381:
	.loc 1 3718 0
	testl	%r13d, %r13d	# paren
	je	.L1382	#,
	.loc 1 3718 0 is_stmt 0 discriminator 1
	testl	%r14d, %r14d	# ln
	je	.L1383	#,
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.948
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	leaq	(%rax,%rdx), %r15	#, D.19333
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.950
	testb	%al, %al	# PL_reg_match_utf8.950
	je	.L1384	#,
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	S_reghop	#
	jmp	.L1385	#
.L1384:
	.loc 1 3718 0 discriminator 2
	leaq	-1(%rbx), %rax	#, D.19320
.L1385:
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.951
	subl	%edx, %eax	# D.19338, D.19338
	movl	%eax, (%r15)	# D.19319, *_2256
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.953
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.953, D.19333
	movq	%rbx, %rcx	# locinput, locinput.954
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.955
	subq	%rax, %rcx	# PL_bostr.956, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_2272
	jmp	.L1382	#
.L1383:
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.957
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2281
.L1382:
	movq	-480(%rbp), %rax	# next, tmp2549
	movq	%rax, %rdi	# tmp2549,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1386	#,
	.loc 1 3718 0 discriminator 1
	jmp	.L1486	#
.L1386:
	.loc 1 3718 0 discriminator 2
	testl	%r13d, %r13d	# paren
	je	.L1387	#,
	.loc 1 3718 0 discriminator 1
	testl	%r14d, %r14d	# ln
	je	.L1387	#,
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.958
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2286
.L1387:
	.loc 1 3719 0 is_stmt 1
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3720 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.959
	cmpl	-508(%rbp), %eax	# lastcp, PL_savestack_ix.959
	jle	.L1388	#,
	.loc 1 3720 0 is_stmt 0 discriminator 1
	movl	-508(%rbp), %eax	# lastcp, tmp2550
	movl	%eax, %edi	# tmp2550,
	call	Perl_leave_scope	#
.L1388:
	.loc 1 3722 0 is_stmt 1
	movq	%rbx, -392(%rbp)	# locinput, old
	.loc 1 3723 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1389	#,
	.loc 1 3724 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_66], D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	addq	%rax, %rbx	# D.19323, locinput
	jmp	.L1390	#
.L1389:
	.loc 1 3726 0
	addq	$1, %rbx	#, locinput
.L1390:
	.loc 1 3727 0
	movl	$1, -564(%rbp)	#, count
	.loc 1 3728 0
	jmp	.L1351	#
.L1349:
.LBE56:
	.loc 1 3731 0
	jmp	.L1391	#
.L1415:
.LBB60:
	.loc 1 3733 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1392	#,
	.loc 1 3734 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1393	#,
	.loc 1 3737 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.961
	movq	80(%rax), %rax	# PL_curcop.961_2296->cop_warnings, D.19326
	.loc 1 3735 0
	testq	%rax, %rax	# D.19326
	je	.L1394	#,
	.loc 1 3737 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.962
	movq	80(%rax), %rax	# PL_curcop.962_2298->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1394	#,
	.loc 1 3737 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.963
	movq	80(%rax), %rax	# PL_curcop.963_2300->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1395	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.964
	movq	80(%rax), %rax	# PL_curcop.964_2302->cop_warnings, D.19326
	movq	(%rax), %rax	# _2303->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2304].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2306, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1395	#,
.L1394:
	.loc 1 3737 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.965
	movq	80(%rax), %rax	# PL_curcop.965_2310->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1396	#,
	.loc 1 3737 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.966
	movzbl	%al, %eax	# PL_dowarn.966, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1396	#,
.L1395:
	.loc 1 3735 0 is_stmt 1
	movl	$0, %eax	#, iftmp.960
	jmp	.L1397	#
.L1396:
	movl	$255, %eax	#, iftmp.960
.L1397:
	.loc 1 3735 0 is_stmt 0 discriminator 1
	movq	PL_reginput(%rip), %rdi	# PL_reginput, PL_reginput.967
	movl	%eax, %ecx	# iftmp.960,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -384(%rbp)	# tmp2552, c
	jmp	.L1398	#
.L1393:
	.loc 1 3740 0 is_stmt 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.968
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.968_2319], D.19316
	movzbl	%al, %eax	# D.19316, tmp2553
	movq	%rax, -384(%rbp)	# tmp2553, c
.L1398:
	.loc 1 3742 0
	movslq	-604(%rbp), %rax	# %sfp, D.19318
	cmpq	-384(%rbp), %rax	# c, D.19318
	je	.L1399	#,
	.loc 1 3742 0 is_stmt 0 discriminator 1
	movslq	-620(%rbp), %rax	# %sfp, D.19318
	cmpq	-384(%rbp), %rax	# c, D.19318
	jne	.L1407	#,
.L1399:
	.loc 1 3744 0 is_stmt 1
	testl	%r13d, %r13d	# paren
	je	.L1401	#,
	.loc 1 3744 0 is_stmt 0 discriminator 1
	testl	%r14d, %r14d	# ln
	je	.L1402	#,
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.969
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movq	%rax, -616(%rbp)	# D.19333, %sfp
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.971
	testb	%al, %al	# PL_reg_match_utf8.971
	je	.L1403	#,
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.972
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# PL_reginput.972,
	call	S_reghop	#
	jmp	.L1404	#
.L1403:
	.loc 1 3744 0 discriminator 2
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.973
	subq	$1, %rax	#, D.19320
.L1404:
	.loc 1 3744 0 discriminator 1
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.974
	subl	%edx, %eax	# D.19338, D.19338
	movq	-616(%rbp), %rsi	# %sfp, D.19333
	movl	%eax, (%rsi)	# D.19319, *_2327
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.976
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.976, D.19333
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.977
	movq	%rax, %rcx	# PL_reginput.977, PL_reginput.978
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.979
	subq	%rax, %rcx	# PL_bostr.980, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_2345
	jmp	.L1401	#
.L1402:
	.loc 1 3744 0 discriminator 2
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.981
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2355
.L1401:
	movq	-480(%rbp), %rax	# next, tmp2554
	movq	%rax, %rdi	# tmp2554,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1405	#,
	.loc 1 3744 0 discriminator 1
	jmp	.L1486	#
.L1405:
	.loc 1 3744 0 discriminator 2
	testl	%r13d, %r13d	# paren
	je	.L1406	#,
	.loc 1 3744 0 discriminator 1
	testl	%r14d, %r14d	# ln
	je	.L1406	#,
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.982
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2360
.L1406:
	.loc 1 3745 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.983
	cmpl	-508(%rbp), %eax	# lastcp, PL_savestack_ix.983
	jle	.L1407	#,
	.loc 1 3745 0 is_stmt 0 discriminator 1
	movl	-508(%rbp), %eax	# lastcp, tmp2555
	movl	%eax, %edi	# tmp2555,
	call	Perl_leave_scope	#
	jmp	.L1407	#
.L1392:
	.loc 1 3749 0 is_stmt 1
	cmpl	$-1000, -604(%rbp)	#, %sfp
	jne	.L1407	#,
	.loc 1 3751 0
	testl	%r13d, %r13d	# paren
	je	.L1408	#,
	.loc 1 3751 0 is_stmt 0 discriminator 1
	testl	%r14d, %r14d	# ln
	je	.L1409	#,
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.984
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movq	%rax, -616(%rbp)	# D.19333, %sfp
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.986
	testb	%al, %al	# PL_reg_match_utf8.986
	je	.L1410	#,
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.987
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# PL_reginput.987,
	call	S_reghop	#
	jmp	.L1411	#
.L1410:
	.loc 1 3751 0 discriminator 2
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.988
	subq	$1, %rax	#, D.19320
.L1411:
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.989
	subl	%edx, %eax	# D.19338, D.19338
	movq	-616(%rbp), %rsi	# %sfp, D.19333
	movl	%eax, (%rsi)	# D.19319, *_2365
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.991
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.991, D.19333
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.992
	movq	%rax, %rcx	# PL_reginput.992, PL_reginput.993
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.994
	subq	%rax, %rcx	# PL_bostr.995, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_2383
	jmp	.L1408	#
.L1409:
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.996
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2393
.L1408:
	movq	-480(%rbp), %rax	# next, tmp2556
	movq	%rax, %rdi	# tmp2556,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1412	#,
	.loc 1 3751 0 discriminator 1
	jmp	.L1486	#
.L1412:
	.loc 1 3751 0 discriminator 2
	testl	%r13d, %r13d	# paren
	je	.L1413	#,
	.loc 1 3751 0 discriminator 1
	testl	%r14d, %r14d	# ln
	je	.L1413	#,
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.997
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2398
.L1413:
	.loc 1 3752 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.998
	cmpl	-508(%rbp), %eax	# lastcp, PL_savestack_ix.998
	jle	.L1407	#,
	.loc 1 3752 0 is_stmt 0 discriminator 1
	movl	-508(%rbp), %eax	# lastcp, tmp2557
	movl	%eax, %edi	# tmp2557,
	call	Perl_leave_scope	#
.L1407:
	.loc 1 3755 0 is_stmt 1
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3756 0
	movl	$1, %esi	#,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat	#
	testl	%eax, %eax	# D.19319
	je	.L1414	#,
	.loc 1 3757 0
	addl	$1, %r14d	#, ln
	.loc 1 3758 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	jmp	.L1391	#
.L1414:
	.loc 1 3761 0
	jmp	.L867	#
.L1391:
.LBE60:
	.loc 1 3731 0 discriminator 1
	cmpl	%r14d, %r15d	# ln, n
	jge	.L1415	#,
	.loc 1 3731 0 is_stmt 0 discriminator 2
	cmpl	$32767, %r15d	#, n
	jne	.L1416	#,
	.loc 1 3731 0 discriminator 1
	testl	%r14d, %r14d	# ln
	jg	.L1415	#,
.L1416:
.LBE55:
	jmp	.L1417	#
.L1347:
.LBB61:
	.loc 1 3766 0 is_stmt 1
	movl	%r15d, %esi	# n,
	movq	%r12, %rdi	# scan,
	call	S_regrepeat	#
	movl	%eax, %r15d	#, n
	.loc 1 3767 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	.loc 1 3768 0
	cmpl	%r15d, %r14d	# n, ln
	jge	.L1418	#,
	.loc 1 3768 0 is_stmt 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2558
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	cltq
	movzbl	PL_regkind(%rax), %eax	# PL_regkind, D.19316
	cmpb	$6, %al	#, D.19316
	jne	.L1418	#,
	.loc 1 3769 0 is_stmt 1 discriminator 1
	movl	PL_multiline(%rip), %eax	# PL_multiline, PL_multiline.999
	.loc 1 3768 0 discriminator 1
	testl	%eax, %eax	# PL_multiline.999
	jne	.L1419	#,
	.loc 1 3769 0
	movq	-480(%rbp), %rax	# next, tmp2560
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$7, %al	#, D.19316
	jne	.L1420	#,
.L1419:
	.loc 1 3770 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2561
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	.loc 1 3769 0 discriminator 1
	cmpb	$8, %al	#, D.19316
	je	.L1420	#,
	.loc 1 3770 0
	movq	-480(%rbp), %rax	# next, tmp2562
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$5, %al	#, D.19316
	jne	.L1418	#,
.L1420:
	.loc 1 3772 0
	movl	%r15d, %r14d	# n, ln
	.loc 1 3776 0
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1000
	subq	$1, %rax	#, D.19331
	movzbl	(%rax), %eax	# *_2414, D.19316
	cmpb	$10, %al	#, D.19316
	jne	.L1418	#,
	.loc 1 3776 0 is_stmt 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2563
	movzbl	1(%rax), %eax	# next_4->type, D.19316
	cmpb	$5, %al	#, D.19316
	je	.L1418	#,
	.loc 1 3777 0 is_stmt 1
	subl	$1, %r14d	#, ln
.L1418:
	.loc 1 3779 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2564
	movl	%eax, -504(%rbp)	# tmp2564, lastcp
	.loc 1 3780 0
	testl	%r13d, %r13d	# paren
	je	.L1421	#,
.LBB62:
	.loc 1 3781 0
	movq	$0, -376(%rbp)	#, c
	.loc 1 3782 0
	jmp	.L1422	#
.L1439:
	.loc 1 3783 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1423	#,
	.loc 1 3784 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1424	#,
	.loc 1 3787 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1002
	movq	80(%rax), %rax	# PL_curcop.1002_2420->cop_warnings, D.19326
	.loc 1 3785 0
	testq	%rax, %rax	# D.19326
	je	.L1425	#,
	.loc 1 3787 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1003
	movq	80(%rax), %rax	# PL_curcop.1003_2422->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1425	#,
	.loc 1 3787 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1004
	movq	80(%rax), %rax	# PL_curcop.1004_2424->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1426	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1005
	movq	80(%rax), %rax	# PL_curcop.1005_2426->cop_warnings, D.19326
	movq	(%rax), %rax	# _2427->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2428].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2430, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1426	#,
.L1425:
	.loc 1 3787 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1006
	movq	80(%rax), %rax	# PL_curcop.1006_2434->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1427	#,
	.loc 1 3787 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1007
	movzbl	%al, %eax	# PL_dowarn.1007, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1427	#,
.L1426:
	.loc 1 3785 0 is_stmt 1
	movl	$0, %eax	#, iftmp.1001
	jmp	.L1428	#
.L1427:
	movl	$255, %eax	#, iftmp.1001
.L1428:
	.loc 1 3785 0 is_stmt 0 discriminator 1
	movq	PL_reginput(%rip), %rdi	# PL_reginput, PL_reginput.1008
	movl	%eax, %ecx	# iftmp.1001,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -376(%rbp)	# tmp2565, c
	jmp	.L1423	#
.L1424:
	.loc 1 3790 0 is_stmt 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1009
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.1009_2443], D.19316
	movzbl	%al, %eax	# D.19316, tmp2566
	movq	%rax, -376(%rbp)	# tmp2566, c
.L1423:
	.loc 1 3793 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1429	#,
	.loc 1 3793 0 is_stmt 0 discriminator 1
	movslq	-604(%rbp), %rax	# %sfp, D.19318
	cmpq	-376(%rbp), %rax	# c, D.19318
	je	.L1429	#,
	movslq	-620(%rbp), %rax	# %sfp, D.19318
	cmpq	-376(%rbp), %rax	# c, D.19318
	jne	.L1430	#,
.L1429:
	.loc 1 3795 0 is_stmt 1
	testl	%r13d, %r13d	# paren
	je	.L1431	#,
	.loc 1 3795 0 is_stmt 0 discriminator 1
	testl	%r15d, %r15d	# n
	je	.L1432	#,
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.1010
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	leaq	(%rax,%rdx), %r12	#, D.19333
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1012
	testb	%al, %al	# PL_reg_match_utf8.1012
	je	.L1433	#,
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1013
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# PL_reginput.1013,
	call	S_reghop	#
	jmp	.L1434	#
.L1433:
	.loc 1 3795 0 discriminator 2
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1014
	subq	$1, %rax	#, D.19320
.L1434:
	.loc 1 3795 0 discriminator 1
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.1015
	subl	%edx, %eax	# D.19338, D.19338
	movl	%eax, (%r12)	# D.19319, *_2451
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1017
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.1017, D.19333
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1018
	movq	%rax, %rcx	# PL_reginput.1018, PL_reginput.1019
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.1020
	subq	%rax, %rcx	# PL_bostr.1021, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_2469
	jmp	.L1431	#
.L1432:
	.loc 1 3795 0 discriminator 2
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1022
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2479
.L1431:
	movq	-480(%rbp), %rax	# next, tmp2567
	movq	%rax, %rdi	# tmp2567,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1435	#,
	.loc 1 3795 0 discriminator 1
	jmp	.L1486	#
.L1435:
	.loc 1 3795 0 discriminator 2
	testl	%r13d, %r13d	# paren
	je	.L1436	#,
	.loc 1 3795 0 discriminator 1
	testl	%r15d, %r15d	# n
	je	.L1436	#,
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1023
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2484
.L1436:
	.loc 1 3796 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1024
	cmpl	-504(%rbp), %eax	# lastcp, PL_savestack_ix.1024
	jle	.L1430	#,
	.loc 1 3796 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# lastcp, tmp2568
	movl	%eax, %edi	# tmp2568,
	call	Perl_leave_scope	#
.L1430:
	.loc 1 3799 0 is_stmt 1
	subl	$1, %r15d	#, n
	.loc 1 3800 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1026
	testb	%al, %al	# PL_reg_match_utf8.1026
	je	.L1437	#,
	.loc 1 3800 0 is_stmt 0 discriminator 1
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	S_reghop	#
	jmp	.L1438	#
.L1437:
	.loc 1 3800 0 discriminator 2
	leaq	-1(%rbx), %rax	#, iftmp.1025
.L1438:
	.loc 1 3800 0 discriminator 3
	movq	%rax, %rbx	# iftmp.1025, locinput
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
.L1422:
	.loc 1 3782 0 is_stmt 1 discriminator 1
	cmpl	%r14d, %r15d	# ln, n
	jge	.L1439	#,
.LBE62:
	jmp	.L1417	#
.L1421:
.LBB63:
	.loc 1 3804 0
	movq	$0, -368(%rbp)	#, c
	.loc 1 3805 0
	jmp	.L1440	#
.L1457:
	.loc 1 3806 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1441	#,
	.loc 1 3807 0
	cmpb	$0, -605(%rbp)	#, %sfp
	je	.L1442	#,
	.loc 1 3810 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1028
	movq	80(%rax), %rax	# PL_curcop.1028_2492->cop_warnings, D.19326
	.loc 1 3808 0
	testq	%rax, %rax	# D.19326
	je	.L1443	#,
	.loc 1 3810 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1029
	movq	80(%rax), %rax	# PL_curcop.1029_2494->cop_warnings, D.19326
	cmpq	$32, %rax	#, D.19326
	je	.L1443	#,
	.loc 1 3810 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1030
	movq	80(%rax), %rax	# PL_curcop.1030_2496->cop_warnings, D.19326
	cmpq	$16, %rax	#, D.19326
	je	.L1444	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1031
	movq	80(%rax), %rax	# PL_curcop.1031_2498->cop_warnings, D.19326
	movq	(%rax), %rax	# _2499->sv_any, D.19327
	movq	(%rax), %rax	# MEM[(struct XPV *)_2500].xpv_pv, D.19320
	addq	$11, %rax	#, D.19320
	movzbl	(%rax), %eax	# *_2502, D.19321
	movsbl	%al, %eax	# D.19321, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	jne	.L1444	#,
.L1443:
	.loc 1 3810 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1032
	movq	80(%rax), %rax	# PL_curcop.1032_2506->cop_warnings, D.19326
	testq	%rax, %rax	# D.19326
	jne	.L1445	#,
	.loc 1 3810 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1033
	movzbl	%al, %eax	# PL_dowarn.1033, D.19319
	andl	$1, %eax	#, D.19319
	testl	%eax, %eax	# D.19319
	je	.L1445	#,
.L1444:
	.loc 1 3808 0 is_stmt 1
	movl	$0, %eax	#, iftmp.1027
	jmp	.L1446	#
.L1445:
	movl	$255, %eax	#, iftmp.1027
.L1446:
	.loc 1 3808 0 is_stmt 0 discriminator 1
	movq	PL_reginput(%rip), %rdi	# PL_reginput, PL_reginput.1034
	movl	%eax, %ecx	# iftmp.1027,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -368(%rbp)	# tmp2569, c
	jmp	.L1441	#
.L1442:
	.loc 1 3813 0 is_stmt 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1035
	movzbl	(%rax), %eax	# MEM[(U8 *)PL_reginput.1035_2515], D.19316
	movzbl	%al, %eax	# D.19316, tmp2570
	movq	%rax, -368(%rbp)	# tmp2570, c
.L1441:
	.loc 1 3816 0
	cmpl	$-1000, -604(%rbp)	#, %sfp
	je	.L1447	#,
	.loc 1 3816 0 is_stmt 0 discriminator 1
	movslq	-604(%rbp), %rax	# %sfp, D.19318
	cmpq	-368(%rbp), %rax	# c, D.19318
	je	.L1447	#,
	movslq	-620(%rbp), %rax	# %sfp, D.19318
	cmpq	-368(%rbp), %rax	# c, D.19318
	jne	.L1448	#,
.L1447:
	.loc 1 3818 0 is_stmt 1
	testl	%r13d, %r13d	# paren
	je	.L1449	#,
	.loc 1 3818 0 is_stmt 0 discriminator 1
	testl	%r15d, %r15d	# n
	je	.L1450	#,
	movq	PL_regstartp(%rip), %rax	# PL_regstartp, PL_regstartp.1036
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	leaq	(%rax,%rdx), %r12	#, D.19333
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1038
	testb	%al, %al	# PL_reg_match_utf8.1038
	je	.L1451	#,
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1039
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# PL_reginput.1039,
	call	S_reghop	#
	jmp	.L1452	#
.L1451:
	.loc 1 3818 0 discriminator 2
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1040
	subq	$1, %rax	#, D.19320
.L1452:
	.loc 1 3818 0 discriminator 1
	movq	PL_bostr(%rip), %rdx	# PL_bostr, PL_bostr.1041
	subl	%edx, %eax	# D.19338, D.19338
	movl	%eax, (%r12)	# D.19319, *_2523
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1043
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rax, %rdx	# PL_regendp.1043, D.19333
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1044
	movq	%rax, %rcx	# PL_reginput.1044, PL_reginput.1045
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.1046
	subq	%rax, %rcx	# PL_bostr.1047, D.19322
	movq	%rcx, %rax	# D.19322, D.19322
	movl	%eax, (%rdx)	# D.19319, *_2541
	jmp	.L1449	#
.L1450:
	.loc 1 3818 0 discriminator 2
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1048
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2551
.L1449:
	movq	-480(%rbp), %rax	# next, tmp2571
	movq	%rax, %rdi	# tmp2571,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1453	#,
	.loc 1 3818 0 discriminator 1
	jmp	.L1486	#
.L1453:
	.loc 1 3818 0 discriminator 2
	testl	%r13d, %r13d	# paren
	je	.L1454	#,
	.loc 1 3818 0 discriminator 1
	testl	%r15d, %r15d	# n
	je	.L1454	#,
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1049
	movslq	%r13d, %rdx	# paren, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2556
.L1454:
	.loc 1 3819 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1050
	cmpl	-504(%rbp), %eax	# lastcp, PL_savestack_ix.1050
	jle	.L1448	#,
	.loc 1 3819 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# lastcp, tmp2572
	movl	%eax, %edi	# tmp2572,
	call	Perl_leave_scope	#
.L1448:
	.loc 1 3822 0 is_stmt 1
	subl	$1, %r15d	#, n
	.loc 1 3823 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1052
	testb	%al, %al	# PL_reg_match_utf8.1052
	je	.L1455	#,
	.loc 1 3823 0 is_stmt 0 discriminator 1
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# locinput,
	call	S_reghop	#
	jmp	.L1456	#
.L1455:
	.loc 1 3823 0 discriminator 2
	leaq	-1(%rbx), %rax	#, iftmp.1051
.L1456:
	.loc 1 3823 0 discriminator 3
	movq	%rax, %rbx	# iftmp.1051, locinput
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
.L1440:
	.loc 1 3805 0 is_stmt 1 discriminator 1
	cmpl	%r14d, %r15d	# ln, n
	jge	.L1457	#,
.L1417:
.LBE63:
.LBE61:
	.loc 1 3827 0
	jmp	.L867	#
.L807:
	.loc 1 3830 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, PL_reg_call_cc.1053
	testq	%rax, %rax	# PL_reg_call_cc.1053
	je	.L1458	#,
.LBB64:
	.loc 1 3831 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, tmp2573
	movq	%rax, -232(%rbp)	# tmp2573, cur_call_cc
	.loc 1 3832 0
	movq	PL_regcc(%rip), %rax	# PL_regcc, tmp2574
	movq	%rax, -224(%rbp)	# tmp2574, cctmp
	.loc 1 3833 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, tmp2575
	movq	%rax, -216(%rbp)	# tmp2575, re
	.loc 1 3836 0
	movl	$0, %edi	#,
	call	S_regcppush	#
	movl	%eax, -500(%rbp)	# tmp2576, cp
	.loc 1 3837 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp2577
	movl	%eax, -496(%rbp)	# tmp2577, lastcp
	.loc 1 3838 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, PL_reg_call_cc.1054
	movl	(%rax), %eax	# PL_reg_call_cc.1054_2569->ss, D.19319
	movl	%eax, %edi	# D.19319,
	call	S_regcp_set_to	#
	.loc 1 3840 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3842 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, PL_reg_call_cc.1055
	movq	32(%rax), %rax	# PL_reg_call_cc.1055_2571->re, D.19340
	movq	%rax, %rdi	# D.19340,
	call	S_cache_re	#
	.loc 1 3843 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, PL_reg_call_cc.1056
	movq	24(%rax), %rax	# PL_reg_call_cc.1056_2573->cc, PL_regcc.1057
	movq	%rax, PL_regcc(%rip)	# PL_regcc.1057, PL_regcc
	.loc 1 3844 0
	movq	PL_reg_call_cc(%rip), %rax	# PL_reg_call_cc, PL_reg_call_cc.1058
	movq	16(%rax), %rax	# PL_reg_call_cc.1058_2575->prev, PL_reg_call_cc.1059
	movq	%rax, PL_reg_call_cc(%rip)	# PL_reg_call_cc.1059, PL_reg_call_cc
	.loc 1 3845 0
	movq	-232(%rbp), %rax	# cur_call_cc, tmp2578
	movq	8(%rax), %rax	# cur_call_cc_2564->node, D.19335
	movq	%rax, %rdi	# D.19335,
	call	S_regmatch	#
	testl	%eax, %eax	# D.19319
	je	.L1459	#,
	.loc 1 3846 0
	movq	-232(%rbp), %rax	# cur_call_cc, tmp2579
	movq	%rax, PL_reg_call_cc(%rip)	# tmp2579, PL_reg_call_cc
	.loc 1 3847 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1060
	cmpl	-500(%rbp), %eax	# cp, PL_savestack_ix.1060
	jle	.L1460	#,
	.loc 1 3847 0 is_stmt 0 discriminator 1
	movl	-500(%rbp), %eax	# cp, tmp2580
	movl	%eax, %edi	# tmp2580,
	call	Perl_leave_scope	#
	.loc 1 3848 0 is_stmt 1 discriminator 1
	jmp	.L1486	#
.L1460:
	.loc 1 3848 0 is_stmt 0
	jmp	.L1486	#
.L1459:
	.loc 1 3850 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1061
	cmpl	-496(%rbp), %eax	# lastcp, PL_savestack_ix.1061
	jle	.L1461	#,
	.loc 1 3850 0 is_stmt 0 discriminator 1
	movl	-496(%rbp), %eax	# lastcp, tmp2581
	movl	%eax, %edi	# tmp2581,
	call	Perl_leave_scope	#
.L1461:
	.loc 1 3851 0 is_stmt 1
	call	S_regcppop	#
	.loc 1 3852 0
	movq	-232(%rbp), %rax	# cur_call_cc, tmp2582
	movq	%rax, PL_reg_call_cc(%rip)	# tmp2582, PL_reg_call_cc
	.loc 1 3853 0
	movq	-224(%rbp), %rax	# cctmp, tmp2583
	movq	%rax, PL_regcc(%rip)	# tmp2583, PL_regcc
	.loc 1 3854 0
	movq	-216(%rbp), %rax	# re, tmp2584
	movq	%rax, PL_reg_re(%rip)	# tmp2584, PL_reg_re
	.loc 1 3855 0
	movq	-216(%rbp), %rax	# re, tmp2585
	movq	%rax, %rdi	# tmp2585,
	call	S_cache_re	#
	.loc 1 3862 0
	jmp	.L1488	#
.L1458:
.LBE64:
	.loc 1 3864 0
	movq	PL_regtill(%rip), %rax	# PL_regtill, PL_regtill.1062
	cmpq	%rax, %rbx	# PL_regtill.1062, locinput
	jae	.L1462	#,
	.loc 1 3871 0
	jmp	.L1488	#
.L1462:
	.loc 1 3873 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3874 0
	jmp	.L1486	#
.L809:
	.loc 1 3876 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3877 0
	nop
.L1463:
	.loc 1 3955 0
	nop
	jmp	.L1486	#
.L856:
	.loc 1 3879 0
	movl	$1, %r15d	#, n
	.loc 1 3880 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3881 0
	jmp	.L1464	#
.L855:
	.loc 1 3883 0
	movl	$0, %r15d	#, n
	.loc 1 3884 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	testb	%al, %al	# D.19316
	je	.L1465	#,
	.loc 1 3885 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1064
	testb	%al, %al	# PL_reg_match_utf8.1064
	je	.L1466	#,
	.loc 1 3885 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	negl	%eax	# D.19319
	movl	%eax, %esi	# D.19319,
	movq	%rbx, %rdi	# locinput,
	call	S_reghopmaybe	#
	jmp	.L1467	#
.L1466:
	.loc 1 3885 0 discriminator 2
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	negq	%rax	# D.19323
	leaq	(%rbx,%rax), %rdx	#, D.19320
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.1066
	cmpq	%rax, %rdx	# PL_bostr.1066, D.19320
	jb	.L1468	#,
	.loc 1 3885 0 discriminator 1
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	negq	%rax	# D.19323
	addq	%rbx, %rax	# locinput, iftmp.1065
	jmp	.L1467	#
.L1468:
	.loc 1 3885 0 discriminator 2
	movl	$0, %eax	#, iftmp.1065
.L1467:
	.loc 1 3885 0 discriminator 3
	movq	%rax, -616(%rbp)	# s, %sfp
	.loc 1 3886 0 is_stmt 1 discriminator 3
	testq	%rax, %rax	# s
	jne	.L1470	#,
	.loc 1 3887 0
	jmp	.L1471	#
.L1470:
	.loc 1 3888 0
	movq	-616(%rbp), %rax	# %sfp, s
	movq	%rax, PL_reginput(%rip)	# s, PL_reginput
	.loc 1 3892 0
	jmp	.L1464	#
.L1465:
	.loc 1 3891 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
	.loc 1 3892 0
	jmp	.L1464	#
.L854:
	.loc 1 3894 0
	movl	$1, %r15d	#, n
	.loc 1 3895 0
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	testb	%al, %al	# D.19316
	je	.L1473	#,
	.loc 1 3896 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1068
	testb	%al, %al	# PL_reg_match_utf8.1068
	je	.L1474	#,
	.loc 1 3896 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19319
	negl	%eax	# D.19319
	movl	%eax, %esi	# D.19319,
	movq	%rbx, %rdi	# locinput,
	call	S_reghopmaybe	#
	jmp	.L1475	#
.L1474:
	.loc 1 3896 0 discriminator 2
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	negq	%rax	# D.19323
	leaq	(%rbx,%rax), %rdx	#, D.19320
	movq	PL_bostr(%rip), %rax	# PL_bostr, PL_bostr.1070
	cmpq	%rax, %rdx	# PL_bostr.1070, D.19320
	jb	.L1476	#,
	.loc 1 3896 0 discriminator 1
	movzbl	(%r12), %eax	# scan_3->flags, D.19316
	movzbl	%al, %eax	# D.19316, D.19323
	negq	%rax	# D.19323
	addq	%rbx, %rax	# locinput, iftmp.1069
	jmp	.L1475	#
.L1476:
	.loc 1 3896 0 discriminator 2
	movl	$0, %eax	#, iftmp.1069
.L1475:
	.loc 1 3896 0 discriminator 3
	movq	%rax, -616(%rbp)	# s, %sfp
	.loc 1 3897 0 is_stmt 1 discriminator 3
	testq	%rax, %rax	# s
	jne	.L1478	#,
	.loc 1 3898 0
	jmp	.L1479	#
.L1478:
	.loc 1 3899 0
	movq	-616(%rbp), %rax	# %sfp, s
	movq	%rax, PL_reginput(%rip)	# s, PL_reginput
	jmp	.L1464	#
.L1473:
	.loc 1 3902 0
	movq	%rbx, PL_reginput(%rip)	# locinput, PL_reginput
.L1464:
	.loc 1 3905 0
	leaq	8(%r12), %rax	#, tmp2586
	movq	%rax, -472(%rbp)	# tmp2586, inner
	.loc 1 3906 0
	movq	-472(%rbp), %rax	# inner, tmp2587
	movq	%rax, %rdi	# tmp2587,
	call	S_regmatch	#
	cmpl	%r15d, %eax	# n, D.19319
	je	.L1471	#,
.L1479:
	.loc 1 3908 0
	cmpl	$0, -584(%rbp)	#, logical
	je	.L1480	#,
	.loc 1 3909 0
	movl	$0, -584(%rbp)	#, logical
	.loc 1 3910 0
	movl	$0, -588(%rbp)	#, sw
	.loc 1 3911 0
	jmp	.L859	#
.L1480:
	.loc 1 3914 0
	jmp	.L867	#
.L1471:
	.loc 1 3917 0
	cmpl	$0, -584(%rbp)	#, logical
	je	.L1481	#,
	.loc 1 3918 0
	movl	$0, -584(%rbp)	#, logical
	.loc 1 3919 0
	movl	$1, -588(%rbp)	#, sw
.L1481:
	.loc 1 3921 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	cmpb	$52, %al	#, D.19316
	jne	.L859	#,
	.loc 1 3922 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, locinput
	.loc 1 3923 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)locinput_2628], D.19316
	movzbl	%al, %r13d	# D.19316, nextchr
.L859:
	.loc 1 3928 0
	movl	4(%r12), %eax	# MEM[(struct regnode_1 *)scan_3].arg1, D.19324
	movl	%eax, %eax	# D.19324, D.19318
	salq	$2, %rax	#, D.19318
	addq	%r12, %rax	# scan, tmp2588
	movq	%rax, -480(%rbp)	# tmp2588, next
	.loc 1 3929 0
	cmpq	%r12, -480(%rbp)	# scan, next
	jne	.L1482	#,
	.loc 1 3930 0
	movq	$0, -480(%rbp)	#, next
	.loc 1 3931 0
	jmp	.L864	#
.L1482:
	jmp	.L864	#
.L806:
	.loc 1 3934 0
	movzbl	1(%r12), %eax	# scan_3->type, D.19316
	.loc 1 3933 0
	movzbl	%al, %r15d	# D.19316, D.19319
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1073
	testq	%rax, %rax	# PL_stderrgv.1073
	je	.L1483	#,
	.loc 1 3933 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1074
	movl	12(%rax), %eax	# PL_stderrgv.1074_2640->sv_flags, D.19324
	movzbl	%al, %eax	# D.19324, D.19324
	cmpl	$13, %eax	#, D.19324
	jne	.L1483	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1075
	movq	(%rax), %rax	# PL_stderrgv.1075_2643->sv_any, D.19341
	movq	56(%rax), %rax	# _2644->xgv_gp, D.19342
	movq	16(%rax), %rax	# _2645->gp_io, D.19343
	testq	%rax, %rax	# D.19343
	je	.L1483	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1076
	movq	(%rax), %rax	# PL_stderrgv.1076_2647->sv_any, D.19341
	movq	56(%rax), %rax	# _2648->xgv_gp, D.19342
	movq	16(%rax), %rax	# _2649->gp_io, D.19343
	movq	(%rax), %rax	# _2650->sv_any, D.19344
	movq	64(%rax), %rax	# _2651->xio_ofp, D.19345
	testq	%rax, %rax	# D.19345
	je	.L1483	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.1077
	movq	(%rax), %rax	# PL_stderrgv.1077_2653->sv_any, D.19341
	movq	56(%rax), %rax	# _2654->xgv_gp, D.19342
	movq	16(%rax), %rax	# _2655->gp_io, D.19343
	movq	(%rax), %rax	# _2656->sv_any, D.19344
	movq	64(%rax), %rax	# _2657->xio_ofp, iftmp.1072
	jmp	.L1484	#
.L1483:
	.loc 1 3933 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L1484:
	.loc 1 3933 0 discriminator 3
	movl	%r15d, %ecx	# D.19319,
	movq	%r12, %rdx	# scan.1071,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# iftmp.1072,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	.loc 1 3935 0 is_stmt 1 discriminator 3
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L864	#
.L1505:
	.loc 1 2875 0
	nop
.L864:
	.loc 1 3938 0
	movq	-480(%rbp), %r12	# next, scan
.L804:
	.loc 1 2327 0 discriminator 1
	testq	%r12, %r12	# scan
	jne	.L1485	#,
	.loc 1 3945 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 3947 0
	jmp	.L867	#
.L1161:
.L1486:
	.loc 1 3968 0
	movl	$1, %eax	#, D.19315
	jmp	.L1487	#
.L1506:
.LBB65:
.LBB33:
	.loc 1 2838 0
	nop
.L867:
.LBE33:
.LBE65:
	.loc 1 3976 0
	nop
.L1199:
.L1488:
	.loc 1 3979 0
	cmpl	$0, -580(%rbp)	#, unwind
	je	.L1489	#,
.LBB66:
	.loc 1 3980 0
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.1078
	movl	-580(%rbp), %eax	# unwind, tmp2589
	cltq
	addq	%rdx, %rax	# PL_savestack.1078, tmp2590
	movq	%rax, -208(%rbp)	# tmp2590, uw
	.loc 1 3982 0
	movq	-208(%rbp), %rax	# uw, tmp2591
	movl	(%rax), %eax	# uw_2663->type, D.19319
	subl	$1, %eax	#, tmp2592
	cmpl	$1, %eax	#, tmp2592
	ja	.L1490	#,
.LBB67:
	.loc 1 3986 0
	movq	-208(%rbp), %rax	# uw, tmp2593
	movq	%rax, -200(%rbp)	# tmp2593, uwb
	.loc 1 3987 0
	movq	-200(%rbp), %rax	# uwb, tmp2594
	movl	12(%rax), %eax	# uwb_2665->lastparen, tmp2595
	movl	%eax, -492(%rbp)	# tmp2595, lastparen
	.loc 1 3989 0
	movq	-200(%rbp), %rax	# uwb, tmp2596
	movl	8(%rax), %edx	# uwb_2665->lastcp, D.19319
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1079
	cmpl	%eax, %edx	# PL_savestack_ix.1079, D.19319
	jge	.L1492	#,
	.loc 1 3989 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# uwb, tmp2597
	movl	8(%rax), %eax	# uwb_2665->lastcp, D.19319
	movl	%eax, %edi	# D.19319,
	call	Perl_leave_scope	#
.L1492:
	.loc 1 3990 0 is_stmt 1
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.1080
	movl	(%rax), %eax	# *PL_reglastparen.1080_2670, D.19324
	movl	%eax, %r15d	# D.19324, n
	jmp	.L1493	#
.L1494:
	.loc 1 3991 0 discriminator 2
	movq	PL_regendp(%rip), %rax	# PL_regendp, PL_regendp.1081
	movslq	%r15d, %rdx	# n, D.19318
	salq	$2, %rdx	#, D.19318
	addq	%rdx, %rax	# D.19318, D.19333
	movl	$-1, (%rax)	#, *_2676
	.loc 1 3990 0 discriminator 2
	subl	$1, %r15d	#, n
.L1493:
	.loc 1 3990 0 is_stmt 0 discriminator 1
	cmpl	-492(%rbp), %r15d	# lastparen, n
	jg	.L1494	#,
	.loc 1 3992 0 is_stmt 1
	movq	PL_reglastparen(%rip), %rax	# PL_reglastparen, PL_reglastparen.1082
	movl	%r15d, %edx	# n, n.1083
	movl	%edx, (%rax)	# n.1083, *PL_reglastparen.1082_2678
	.loc 1 3993 0
	movq	-200(%rbp), %rax	# uwb, tmp2598
	movq	16(%rax), %rax	# uwb_2665->next, tmp2599
	movq	%rax, -480(%rbp)	# tmp2599, next
	movq	-480(%rbp), %r12	# next, scan
	.loc 1 3994 0
	testq	%r12, %r12	# scan
	je	.L1495	#,
	.loc 1 3995 0
	movzbl	1(%r12), %eax	# scan_2681->type, D.19316
	movzbl	%al, %edx	# D.19316, D.19319
	movq	-200(%rbp), %rax	# uwb, tmp2600
	movl	(%rax), %eax	# uwb_2665->type, D.19319
	.loc 1 3996 0
	cmpl	$1, %eax	#, D.19319
	jne	.L1496	#,
	.loc 1 3996 0 is_stmt 0 discriminator 1
	movl	$31, %eax	#, iftmp.1084
	jmp	.L1497	#
.L1496:
	.loc 1 3996 0 discriminator 2
	movl	$56, %eax	#, iftmp.1084
.L1497:
	.loc 1 3994 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.1084, D.19319
	je	.L1498	#,
.L1495:
	.loc 1 3997 0
	movq	-200(%rbp), %rax	# uwb, tmp2601
	movl	4(%rax), %eax	# uwb_2665->prev, tmp2602
	movl	%eax, -580(%rbp)	# tmp2602, unwind
	.loc 1 4001 0
	jmp	.L1488	#
.L1498:
	.loc 1 4005 0
	movq	-200(%rbp), %rax	# uwb, tmp2603
	movl	(%rax), %eax	# uwb_2665->type, D.19319
	cmpl	$1, %eax	#, D.19319
	jne	.L1499	#,
	.loc 1 4006 0
	movq	-480(%rbp), %rax	# next, tmp2604
	movzwl	2(%rax), %eax	# next_2680->next_off, D.19317
	.loc 1 4005 0
	movzwl	%ax, %eax	# D.19317, iftmp.1085
	jmp	.L1500	#
.L1499:
	.loc 1 4006 0 discriminator 1
	movq	-480(%rbp), %rax	# next, tmp2605
	movl	4(%rax), %eax	# MEM[(struct regnode_1 *)next_2680].arg1, D.19324
.L1500:
	.loc 1 4005 0 discriminator 2
	movl	%eax, %r15d	# iftmp.1085, n
	testl	%r15d, %r15d	# n
	je	.L1501	#,
	.loc 1 4007 0
	movslq	%r15d, %rax	# n, D.19318
	salq	$2, %rax	#, D.19318
	addq	%rax, -480(%rbp)	# D.19318, next
	jmp	.L1502	#
.L1501:
	.loc 1 4009 0
	movq	$0, -480(%rbp)	#, next
.L1502:
	.loc 1 4010 0
	movq	-200(%rbp), %rax	# uwb, tmp2606
	movq	-480(%rbp), %rdx	# next, tmp2607
	movq	%rdx, 16(%rax)	# tmp2607, uwb_2665->next
	.loc 1 4011 0
	leaq	4(%r12), %rax	#, tmp2608
	movq	%rax, -480(%rbp)	# tmp2608, next
	.loc 1 4012 0
	movq	-200(%rbp), %rax	# uwb, tmp2609
	movl	(%rax), %eax	# uwb_2665->type, D.19319
	cmpl	$2, %eax	#, D.19319
	jne	.L1503	#,
	.loc 1 4013 0
	addq	$4, -480(%rbp)	#, next
.L1503:
	.loc 1 4014 0
	movq	-200(%rbp), %rax	# uwb, tmp2610
	movq	24(%rax), %rbx	# uwb_2665->locinput, locinput
	.loc 1 4015 0
	movq	-200(%rbp), %rax	# uwb, tmp2611
	movl	32(%rax), %r13d	# uwb_2665->nextchr, nextchr
	.loc 1 4020 0
	jmp	.L864	#
.L1490:
.LBE67:
	.loc 1 4024 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1489:
.LBE66:
	.loc 1 4031 0
	movl	$0, %eax	#, D.19315
.L1487:
	.loc 1 4032 0
	movq	-56(%rbp), %rsi	# D.19347, tmp2614
	xorq	%fs:40, %rsi	#, tmp2614
	je	.L1504	#,
	call	__stack_chk_fail	#
.L1504:
	addq	$600, %rsp	#,
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
	.size	S_regmatch, .-S_regmatch
	.type	S_regrepeat, @function
S_regrepeat:
.LFB12:
	.loc 1 4044 0
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
	subq	$16, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)	# p, p
	movl	%esi, -44(%rbp)	# max, max
	.loc 1 4047 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4048 0
	movl	$0, %r13d	#, hardcount
	.loc 1 4049 0
	movzbl	PL_reg_match_utf8(%rip), %r14d	# PL_reg_match_utf8, do_utf8
	.loc 1 4051 0
	movq	PL_reginput(%rip), %rbx	# PL_reginput, scan
	.loc 1 4052 0
	cmpl	$32767, -44(%rbp)	#, max
	jne	.L1509	#,
	.loc 1 4053 0
	movl	$2147483647, -44(%rbp)	#, max
	jmp	.L1510	#
.L1509:
	.loc 1 4054 0
	movl	-44(%rbp), %eax	# max, tmp340
	cltq
	movq	%r12, %rcx	# loceol, loceol.1086
	movq	%rbx, %rdx	# scan, scan.1087
	subq	%rdx, %rcx	# scan.1087, D.19355
	movq	%rcx, %rdx	# D.19355, D.19355
	cmpq	%rdx, %rax	# D.19355, D.19355
	jge	.L1510	#,
	.loc 1 4055 0
	movl	-44(%rbp), %eax	# max, tmp341
	cltq
	leaq	(%rbx,%rax), %r12	#, loceol
.L1510:
	.loc 1 4056 0
	movq	-40(%rbp), %rax	# p, tmp342
	movzbl	1(%rax), %eax	# p_90(D)->type, D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	subl	$14, %eax	#, tmp343
	cmpl	$21, %eax	#, tmp343
	ja	.L1647	#,
	movl	%eax, %eax	# tmp343, tmp344
	movq	.L1513(,%rax,8), %rax	#, tmp345
	jmp	*%rax	# tmp345
	.section	.rodata
	.align 8
	.align 4
.L1513:
	.quad	.L1512
	.quad	.L1514
	.quad	.L1515
	.quad	.L1516
	.quad	.L1517
	.quad	.L1518
	.quad	.L1519
	.quad	.L1520
	.quad	.L1521
	.quad	.L1522
	.quad	.L1523
	.quad	.L1524
	.quad	.L1525
	.quad	.L1647
	.quad	.L1526
	.quad	.L1647
	.quad	.L1647
	.quad	.L1647
	.quad	.L1647
	.quad	.L1527
	.quad	.L1528
	.quad	.L1529
	.text
.L1512:
	.loc 1 4058 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1530	#,
	.loc 1 4059 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4060 0
	jmp	.L1531	#
.L1533:
	.loc 1 4061 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_2], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4062 0
	addl	$1, %r13d	#, hardcount
.L1531:
	.loc 1 4060 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1532	#,
	.loc 1 4060 0 is_stmt 0 discriminator 2
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1532	#,
	.loc 1 4060 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_2, D.19359
	cmpb	$10, %al	#, D.19359
	jne	.L1533	#,
	.loc 1 4068 0 is_stmt 1
	jmp	.L1536	#
.L1530:
	.loc 1 4065 0
	jmp	.L1534	#
.L1535:
	.loc 1 4066 0
	addq	$1, %rbx	#, scan
.L1534:
	.loc 1 4065 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1532	#,
	.loc 1 4065 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_3, D.19359
	cmpb	$10, %al	#, D.19359
	jne	.L1535	#,
.L1532:
	.loc 1 4068 0 is_stmt 1
	jmp	.L1536	#
.L1514:
	.loc 1 4070 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1537	#,
	.loc 1 4071 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4072 0
	jmp	.L1538	#
.L1540:
	.loc 1 4073 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_5], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4074 0
	addl	$1, %r13d	#, hardcount
.L1538:
	.loc 1 4072 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1539	#,
	.loc 1 4072 0 is_stmt 0 discriminator 2
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jl	.L1540	#,
	.loc 1 4079 0 is_stmt 1
	jmp	.L1536	#
.L1537:
	.loc 1 4078 0
	movq	%r12, %rbx	# loceol, scan
	.loc 1 4079 0
	jmp	.L1536	#
.L1539:
	jmp	.L1536	#
.L1515:
	.loc 1 4081 0
	movq	%r12, %rbx	# loceol, scan
	.loc 1 4082 0
	jmp	.L1536	#
.L1527:
	.loc 1 4084 0
	movq	-40(%rbp), %rax	# p, tmp348
	movzbl	4(%rax), %eax	# MEM[(struct regnode_string *)p_90(D)].string, D.19359
	movzbl	%al, %r14d	# D.19357, c
	.loc 1 4085 0
	jmp	.L1541	#
.L1543:
	.loc 1 4086 0
	addq	$1, %rbx	#, scan
.L1541:
	.loc 1 4085 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1542	#,
	.loc 1 4085 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_7], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cmpl	%r14d, %eax	# c, D.19358
	je	.L1543	#,
.L1542:
	.loc 1 4087 0 is_stmt 1
	jmp	.L1536	#
.L1528:
	.loc 1 4089 0
	movq	-40(%rbp), %rax	# p, tmp349
	movzbl	4(%rax), %eax	# MEM[(struct regnode_string *)p_90(D)].string, D.19359
	movzbl	%al, %r14d	# D.19357, c
	.loc 1 4090 0
	jmp	.L1544	#
.L1546:
	.loc 1 4092 0
	addq	$1, %rbx	#, scan
.L1544:
	.loc 1 4090 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1545	#,
	.loc 1 4091 0 discriminator 2
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_8], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	.loc 1 4090 0 discriminator 2
	cmpl	%r14d, %eax	# c, D.19358
	je	.L1546	#,
	.loc 1 4091 0
	movzbl	(%rbx), %edx	# MEM[(U8 *)scan_8], D.19357
	movslq	%r14d, %rax	# c, tmp350
	movzbl	PL_fold(%rax), %eax	# PL_fold, D.19357
	cmpb	%al, %dl	# D.19357, D.19357
	je	.L1546	#,
.L1545:
	.loc 1 4093 0
	jmp	.L1536	#
.L1529:
	.loc 1 4095 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1088
	orl	$1, %eax	#, PL_reg_flags.1089
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1089, PL_reg_flags
	.loc 1 4096 0
	movq	-40(%rbp), %rax	# p, tmp351
	movzbl	4(%rax), %eax	# MEM[(struct regnode_string *)p_90(D)].string, D.19359
	movzbl	%al, %r14d	# D.19357, c
	.loc 1 4097 0
	jmp	.L1547	#
.L1549:
	.loc 1 4099 0
	addq	$1, %rbx	#, scan
.L1547:
	.loc 1 4097 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1548	#,
	.loc 1 4098 0 discriminator 2
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_9], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	.loc 1 4097 0 discriminator 2
	cmpl	%r14d, %eax	# c, D.19358
	je	.L1549	#,
	.loc 1 4098 0
	movzbl	(%rbx), %edx	# MEM[(U8 *)scan_9], D.19357
	movslq	%r14d, %rax	# c, tmp352
	movzbl	PL_fold_locale(%rax), %eax	# PL_fold_locale, D.19357
	cmpb	%al, %dl	# D.19357, D.19357
	je	.L1549	#,
.L1548:
	.loc 1 4100 0
	jmp	.L1536	#
.L1516:
	.loc 1 4102 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1550	#,
	.loc 1 4103 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4104 0
	jmp	.L1551	#
.L1553:
	.loc 1 4106 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_10], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4107 0
	addl	$1, %r13d	#, hardcount
.L1551:
	.loc 1 4104 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1552	#,
	.loc 1 4104 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1552	#,
	.loc 1 4105 0 is_stmt 1 discriminator 1
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	-40(%rbp), %rax	# p, tmp354
	movl	%edx, %ecx	# D.19358,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# tmp354,
	call	S_reginclass	#
	.loc 1 4104 0 discriminator 1
	testb	%al, %al	# D.19359
	jne	.L1553	#,
	.loc 1 4113 0
	jmp	.L1536	#
.L1550:
	.loc 1 4110 0
	jmp	.L1554	#
.L1556:
	.loc 1 4111 0
	addq	$1, %rbx	#, scan
.L1554:
	.loc 1 4110 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1552	#,
	.loc 1 4110 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp355
	movzbl	(%rax), %eax	# p_90(D)->flags, D.19357
	testb	%al, %al	# D.19357
	je	.L1555	#,
	.loc 1 4110 0 discriminator 3
	movq	-40(%rbp), %rax	# p, tmp356
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# tmp356,
	call	S_reginclass	#
	testb	%al, %al	# D.19359
	jne	.L1556	#,
	.loc 1 4113 0 is_stmt 1
	jmp	.L1536	#
.L1555:
	.loc 1 4110 0 discriminator 4
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_11], D.19357
	shrb	$3, %al	#, D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	andl	$31, %eax	#, D.19358
	movq	-40(%rbp), %rdx	# p, tmp357
	cltq
	movzbl	8(%rdx,%rax), %eax	# MEM[(struct regnode_charclass *)p_90(D)].bitmap, D.19359
	movsbl	%al, %edx	# D.19359, D.19358
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_11], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	andl	$7, %eax	#, D.19358
	movl	%eax, %ecx	# D.19358, tmp372
	sarl	%cl, %edx	# tmp372, D.19358
	movl	%edx, %eax	# D.19358, D.19358
	andl	$1, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1556	#,
.L1552:
	.loc 1 4113 0
	jmp	.L1536	#
.L1517:
	.loc 1 4115 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1557	#,
	.loc 1 4116 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4117 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.1090
	testq	%rax, %rax	# PL_utf8_alnum.1090
	jne	.L1558	#,
	.loc 1 4117 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
	.loc 1 4118 0 is_stmt 1 discriminator 1
	jmp	.L1559	#
.L1558:
	.loc 1 4118 0 is_stmt 0
	jmp	.L1559	#
.L1561:
	.loc 1 4120 0 is_stmt 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_13], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4121 0
	addl	$1, %r13d	#, hardcount
.L1559:
	.loc 1 4118 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1560	#,
	.loc 1 4118 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1560	#,
	.loc 1 4119 0 is_stmt 1 discriminator 1
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.1091
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# PL_utf8_alnum.1091,
	call	Perl_swash_fetch	#
	.loc 1 4118 0 discriminator 1
	testq	%rax, %rax	# D.19360
	jne	.L1561	#,
	.loc 1 4127 0
	jmp	.L1536	#
.L1557:
	.loc 1 4124 0
	jmp	.L1562	#
.L1564:
	.loc 1 4125 0
	addq	$1, %rbx	#, scan
.L1562:
	.loc 1 4124 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1560	#,
	.loc 1 4124 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$64, %al	#, D.19359
	jle	.L1563	#,
	.loc 1 4124 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$90, %al	#, D.19359
	jle	.L1564	#,
.L1563:
	.loc 1 4124 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$96, %al	#, D.19359
	jle	.L1565	#,
	.loc 1 4124 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$122, %al	#, D.19359
	jle	.L1564	#,
.L1565:
	.loc 1 4124 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$47, %al	#, D.19359
	jle	.L1566	#,
	.loc 1 4124 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$57, %al	#, D.19359
	jle	.L1564	#,
.L1566:
	.loc 1 4124 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_14, D.19359
	cmpb	$95, %al	#, D.19359
	je	.L1564	#,
.L1560:
	.loc 1 4127 0 is_stmt 1
	jmp	.L1536	#
.L1518:
	.loc 1 4129 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1092
	orl	$1, %eax	#, PL_reg_flags.1093
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1093, PL_reg_flags
	.loc 1 4130 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1567	#,
	.loc 1 4131 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4132 0
	jmp	.L1568	#
.L1574:
	.loc 1 4134 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_16], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4135 0
	addl	$1, %r13d	#, hardcount
.L1568:
	.loc 1 4132 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1569	#,
	.loc 1 4132 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1569	#,
	.loc 1 4133 0 is_stmt 1 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	.loc 1 4132 0 discriminator 1
	cmpq	$255, %rax	#, D.19360
	ja	.L1570	#,
	.loc 1 4133 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19360
	testq	%rax, %rax	# D.19360
	jne	.L1571	#,
	.loc 1 4133 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r14	# *_184, D.19362
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19360
	addq	%r14, %rax	# D.19362, D.19362
	movzwl	(%rax), %eax	# *_190, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1572	#,
	.loc 1 4133 0 discriminator 4
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19360
	jne	.L1571	#,
.L1572:
	.loc 1 4133 0 discriminator 3
	movl	$1, %eax	#, iftmp.1094
	jmp	.L1573	#
.L1571:
	.loc 1 4133 0 discriminator 2
	movl	$0, %eax	#, iftmp.1094
.L1573:
	.loc 1 4132 0 is_stmt 1
	andl	$1, %eax	#, D.19364
	testb	%al, %al	# D.19364
	jne	.L1574	#,
	.loc 1 4141 0
	jmp	.L1536	#
.L1570:
	.loc 1 4133 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19360,
	call	Perl_is_uni_alnum_lc	#
	.loc 1 4132 0 discriminator 3
	testb	%al, %al	# D.19359
	jne	.L1574	#,
	.loc 1 4141 0
	jmp	.L1536	#
.L1567:
	.loc 1 4138 0
	jmp	.L1575	#
.L1576:
	.loc 1 4139 0
	addq	$1, %rbx	#, scan
.L1575:
	.loc 1 4138 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1569	#,
	.loc 1 4138 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_17, D.19359
	testb	%al, %al	# D.19359
	js	.L1569	#,
	.loc 1 4138 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_207, D.19362
	movzbl	(%rbx), %edx	# *scan_17, D.19359
	movsbq	%dl, %rdx	# D.19359, D.19360
	addq	%rdx, %rdx	# D.19360
	addq	%rdx, %rax	# D.19360, D.19362
	movzwl	(%rax), %eax	# *_212, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1576	#,
	movzbl	(%rbx), %eax	# *scan_17, D.19359
	cmpb	$95, %al	#, D.19359
	je	.L1576	#,
.L1569:
	.loc 1 4141 0 is_stmt 1
	jmp	.L1536	#
.L1519:
	.loc 1 4143 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1577	#,
	.loc 1 4144 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4145 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.1095
	testq	%rax, %rax	# PL_utf8_alnum.1095
	jne	.L1578	#,
	.loc 1 4145 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC1, %edi	#,
	call	Perl_is_utf8_alnum	#
	call	Perl_pop_scope	#
	.loc 1 4146 0 is_stmt 1 discriminator 1
	jmp	.L1579	#
.L1578:
	.loc 1 4146 0 is_stmt 0
	jmp	.L1579	#
.L1581:
	.loc 1 4148 0 is_stmt 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_19], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4149 0
	addl	$1, %r13d	#, hardcount
.L1579:
	.loc 1 4146 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1580	#,
	.loc 1 4146 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1580	#,
	.loc 1 4147 0 is_stmt 1 discriminator 1
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.1096
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# PL_utf8_alnum.1096,
	call	Perl_swash_fetch	#
	.loc 1 4146 0 discriminator 1
	testq	%rax, %rax	# D.19360
	je	.L1581	#,
	.loc 1 4155 0
	jmp	.L1536	#
.L1577:
	.loc 1 4152 0
	jmp	.L1582	#
.L1586:
	.loc 1 4153 0
	addq	$1, %rbx	#, scan
.L1582:
	.loc 1 4152 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1580	#,
	.loc 1 4152 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$64, %al	#, D.19359
	jle	.L1583	#,
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$90, %al	#, D.19359
	jle	.L1580	#,
.L1583:
	.loc 1 4152 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$96, %al	#, D.19359
	jle	.L1584	#,
	.loc 1 4152 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$122, %al	#, D.19359
	jle	.L1580	#,
.L1584:
	.loc 1 4152 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$47, %al	#, D.19359
	jle	.L1585	#,
	.loc 1 4152 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$57, %al	#, D.19359
	jle	.L1580	#,
.L1585:
	.loc 1 4152 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_20, D.19359
	cmpb	$95, %al	#, D.19359
	jne	.L1586	#,
.L1580:
	.loc 1 4155 0 is_stmt 1
	jmp	.L1536	#
.L1520:
	.loc 1 4157 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1097
	orl	$1, %eax	#, PL_reg_flags.1098
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1098, PL_reg_flags
	.loc 1 4158 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1587	#,
	.loc 1 4159 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4160 0
	jmp	.L1588	#
.L1594:
	.loc 1 4162 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_22], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4163 0
	addl	$1, %r13d	#, hardcount
.L1588:
	.loc 1 4160 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1589	#,
	.loc 1 4160 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1589	#,
	.loc 1 4161 0 is_stmt 1 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	.loc 1 4160 0 discriminator 1
	cmpq	$255, %rax	#, D.19360
	ja	.L1590	#,
	.loc 1 4161 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19360
	testq	%rax, %rax	# D.19360
	jne	.L1591	#,
	.loc 1 4161 0 is_stmt 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %r14	# *_243, D.19362
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19360
	addq	%r14, %rax	# D.19362, D.19362
	movzwl	(%rax), %eax	# *_249, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1592	#,
	.loc 1 4161 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	cmpq	$95, %rax	#, D.19360
	je	.L1592	#,
.L1591:
	.loc 1 4161 0 discriminator 1
	movl	$1, %eax	#, iftmp.1099
	jmp	.L1593	#
.L1592:
	.loc 1 4161 0 discriminator 4
	movl	$0, %eax	#, iftmp.1099
.L1593:
	.loc 1 4160 0 is_stmt 1
	andl	$1, %eax	#, D.19364
	testb	%al, %al	# D.19364
	jne	.L1594	#,
	.loc 1 4169 0
	jmp	.L1536	#
.L1590:
	.loc 1 4161 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19360,
	call	Perl_is_uni_alnum_lc	#
	.loc 1 4160 0 discriminator 3
	testb	%al, %al	# D.19359
	je	.L1594	#,
	.loc 1 4169 0
	jmp	.L1536	#
.L1587:
	.loc 1 4166 0
	jmp	.L1595	#
.L1596:
	.loc 1 4167 0
	addq	$1, %rbx	#, scan
.L1595:
	.loc 1 4166 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1589	#,
	.loc 1 4166 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_23, D.19359
	testb	%al, %al	# D.19359
	js	.L1596	#,
	.loc 1 4166 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_266, D.19362
	movzbl	(%rbx), %edx	# *scan_23, D.19359
	movsbq	%dl, %rdx	# D.19359, D.19360
	addq	%rdx, %rdx	# D.19360
	addq	%rdx, %rax	# D.19360, D.19362
	movzwl	(%rax), %eax	# *_271, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1589	#,
	movzbl	(%rbx), %eax	# *scan_23, D.19359
	cmpb	$95, %al	#, D.19359
	jne	.L1596	#,
.L1589:
	.loc 1 4169 0 is_stmt 1
	jmp	.L1536	#
.L1521:
	.loc 1 4171 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1597	#,
	.loc 1 4172 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4173 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.1100
	testq	%rax, %rax	# PL_utf8_space.1100
	jne	.L1598	#,
	.loc 1 4173 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC2, %edi	#,
	call	Perl_is_utf8_space	#
	call	Perl_pop_scope	#
	.loc 1 4174 0 is_stmt 1 discriminator 1
	jmp	.L1599	#
.L1598:
	.loc 1 4174 0 is_stmt 0
	jmp	.L1599	#
.L1601:
	.loc 1 4177 0 is_stmt 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_25], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4178 0
	addl	$1, %r13d	#, hardcount
.L1599:
	.loc 1 4174 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1600	#,
	.loc 1 4174 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1600	#,
	.loc 1 4175 0 is_stmt 1 discriminator 1
	movzbl	(%rbx), %eax	# *scan_25, D.19359
	.loc 1 4174 0 discriminator 1
	cmpb	$32, %al	#, D.19359
	je	.L1601	#,
	.loc 1 4176 0
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.1101
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# PL_utf8_space.1101,
	call	Perl_swash_fetch	#
	.loc 1 4175 0
	testq	%rax, %rax	# D.19360
	jne	.L1601	#,
	.loc 1 4184 0
	jmp	.L1536	#
.L1597:
	.loc 1 4181 0
	jmp	.L1602	#
.L1603:
	.loc 1 4182 0
	addq	$1, %rbx	#, scan
.L1602:
	.loc 1 4181 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1600	#,
	.loc 1 4181 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_26, D.19359
	cmpb	$32, %al	#, D.19359
	je	.L1603	#,
	.loc 1 4181 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_26, D.19359
	cmpb	$9, %al	#, D.19359
	je	.L1603	#,
	movzbl	(%rbx), %eax	# *scan_26, D.19359
	cmpb	$10, %al	#, D.19359
	je	.L1603	#,
	movzbl	(%rbx), %eax	# *scan_26, D.19359
	cmpb	$13, %al	#, D.19359
	je	.L1603	#,
	movzbl	(%rbx), %eax	# *scan_26, D.19359
	cmpb	$12, %al	#, D.19359
	je	.L1603	#,
.L1600:
	.loc 1 4184 0 is_stmt 1
	jmp	.L1536	#
.L1522:
	.loc 1 4186 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1102
	orl	$1, %eax	#, PL_reg_flags.1103
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1103, PL_reg_flags
	.loc 1 4187 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1604	#,
	.loc 1 4188 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4189 0
	jmp	.L1605	#
.L1607:
	.loc 1 4191 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_28], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4192 0
	addl	$1, %r13d	#, hardcount
.L1605:
	.loc 1 4189 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1606	#,
	.loc 1 4189 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1606	#,
	.loc 1 4190 0 is_stmt 1 discriminator 1
	movzbl	(%rbx), %eax	# *scan_28, D.19359
	.loc 1 4189 0 discriminator 1
	cmpb	$32, %al	#, D.19359
	je	.L1607	#,
	.loc 1 4190 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	.loc 1 4189 0 discriminator 1
	cmpq	$255, %rax	#, D.19360
	ja	.L1608	#,
	.loc 1 4190 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19360
	testq	%rax, %rax	# D.19360
	jne	.L1609	#,
	.loc 1 4190 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %r14	# *_302, D.19362
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19360
	addq	%r14, %rax	# D.19362, D.19362
	movzwl	(%rax), %eax	# *_308, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8192, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	je	.L1609	#,
	.loc 1 4190 0 discriminator 3
	movl	$1, %eax	#, iftmp.1104
	jmp	.L1610	#
.L1609:
	.loc 1 4190 0 discriminator 2
	movl	$0, %eax	#, iftmp.1104
.L1610:
	.loc 1 4190 0 discriminator 4
	andl	$1, %eax	#, D.19364
	testb	%al, %al	# D.19364
	jne	.L1607	#,
	.loc 1 4198 0 is_stmt 1
	jmp	.L1536	#
.L1608:
	.loc 1 4190 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19360,
	call	Perl_is_uni_space_lc	#
	testb	%al, %al	# D.19359
	jne	.L1607	#,
	.loc 1 4198 0
	jmp	.L1536	#
.L1604:
	.loc 1 4195 0
	jmp	.L1611	#
.L1612:
	.loc 1 4196 0
	addq	$1, %rbx	#, scan
.L1611:
	.loc 1 4195 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1606	#,
	.loc 1 4195 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_29, D.19359
	testb	%al, %al	# D.19359
	js	.L1606	#,
	.loc 1 4195 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_324, D.19362
	movzbl	(%rbx), %edx	# *scan_29, D.19359
	movsbq	%dl, %rdx	# D.19359, D.19360
	addq	%rdx, %rdx	# D.19360
	addq	%rdx, %rax	# D.19360, D.19362
	movzwl	(%rax), %eax	# *_329, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8192, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1612	#,
.L1606:
	.loc 1 4198 0 is_stmt 1
	jmp	.L1536	#
.L1523:
	.loc 1 4200 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1613	#,
	.loc 1 4201 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4202 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.1105
	testq	%rax, %rax	# PL_utf8_space.1105
	jne	.L1614	#,
	.loc 1 4202 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC2, %edi	#,
	call	Perl_is_utf8_space	#
	call	Perl_pop_scope	#
	.loc 1 4203 0 is_stmt 1 discriminator 1
	jmp	.L1615	#
.L1614:
	.loc 1 4203 0 is_stmt 0
	jmp	.L1615	#
.L1616:
	.loc 1 4206 0 is_stmt 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_31], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4207 0
	addl	$1, %r13d	#, hardcount
.L1615:
	.loc 1 4203 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1524	#,
	.loc 1 4203 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1524	#,
	.loc 1 4204 0 is_stmt 1 discriminator 1
	movzbl	(%rbx), %eax	# *scan_31, D.19359
	.loc 1 4203 0 discriminator 1
	cmpb	$32, %al	#, D.19359
	je	.L1524	#,
	.loc 1 4205 0
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.1106
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# PL_utf8_space.1106,
	call	Perl_swash_fetch	#
	.loc 1 4204 0
	testq	%rax, %rax	# D.19360
	je	.L1616	#,
	jmp	.L1524	#
.L1613:
	.loc 1 4210 0
	jmp	.L1617	#
.L1619:
	.loc 1 4211 0
	addq	$1, %rbx	#, scan
.L1617:
	.loc 1 4210 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1618	#,
	.loc 1 4210 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_32, D.19359
	cmpb	$32, %al	#, D.19359
	je	.L1618	#,
	.loc 1 4210 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_32, D.19359
	cmpb	$9, %al	#, D.19359
	je	.L1618	#,
	movzbl	(%rbx), %eax	# *scan_32, D.19359
	cmpb	$10, %al	#, D.19359
	je	.L1618	#,
	movzbl	(%rbx), %eax	# *scan_32, D.19359
	cmpb	$13, %al	#, D.19359
	je	.L1618	#,
	movzbl	(%rbx), %eax	# *scan_32, D.19359
	cmpb	$12, %al	#, D.19359
	jne	.L1619	#,
.L1618:
	.loc 1 4212 0 is_stmt 1
	jmp	.L1536	#
.L1524:
	.loc 1 4215 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1107
	orl	$1, %eax	#, PL_reg_flags.1108
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1108, PL_reg_flags
	.loc 1 4216 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1620	#,
	.loc 1 4217 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4218 0
	jmp	.L1621	#
.L1627:
	.loc 1 4220 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_34], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4221 0
	addl	$1, %r13d	#, hardcount
.L1621:
	.loc 1 4218 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1622	#,
	.loc 1 4218 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1622	#,
	.loc 1 4219 0 is_stmt 1 discriminator 1
	movzbl	(%rbx), %eax	# *scan_34, D.19359
	.loc 1 4218 0 discriminator 1
	cmpb	$32, %al	#, D.19359
	je	.L1622	#,
	.loc 1 4219 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	.loc 1 4218 0 discriminator 1
	cmpq	$255, %rax	#, D.19360
	ja	.L1623	#,
	.loc 1 4219 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	andq	$-128, %rax	#, D.19360
	testq	%rax, %rax	# D.19360
	jne	.L1624	#,
	.loc 1 4219 0 is_stmt 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %r14	# *_359, D.19362
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	cltq
	addq	%rax, %rax	# D.19360
	addq	%r14, %rax	# D.19362, D.19362
	movzwl	(%rax), %eax	# *_365, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8192, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	jne	.L1625	#,
.L1624:
	.loc 1 4219 0 discriminator 1
	movl	$1, %eax	#, iftmp.1109
	jmp	.L1626	#
.L1625:
	.loc 1 4219 0 discriminator 3
	movl	$0, %eax	#, iftmp.1109
.L1626:
	.loc 1 4219 0 discriminator 4
	andl	$1, %eax	#, D.19364
	testb	%al, %al	# D.19364
	jne	.L1627	#,
	.loc 1 4227 0 is_stmt 1
	jmp	.L1536	#
.L1623:
	.loc 1 4219 0
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# scan,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, %rdi	# D.19360,
	call	Perl_is_uni_space_lc	#
	testb	%al, %al	# D.19359
	je	.L1627	#,
	.loc 1 4227 0
	jmp	.L1536	#
.L1620:
	.loc 1 4224 0
	jmp	.L1628	#
.L1629:
	.loc 1 4225 0
	addq	$1, %rbx	#, scan
.L1628:
	.loc 1 4224 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1622	#,
	.loc 1 4224 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_35, D.19359
	testb	%al, %al	# D.19359
	js	.L1629	#,
	.loc 1 4224 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_381, D.19362
	movzbl	(%rbx), %edx	# *scan_35, D.19359
	movsbq	%dl, %rdx	# D.19359, D.19360
	addq	%rdx, %rdx	# D.19360
	addq	%rdx, %rax	# D.19360, D.19362
	movzwl	(%rax), %eax	# *_386, D.19363
	movzwl	%ax, %eax	# D.19363, D.19358
	andl	$8192, %eax	#, D.19358
	testl	%eax, %eax	# D.19358
	je	.L1629	#,
.L1622:
	.loc 1 4227 0 is_stmt 1
	jmp	.L1536	#
.L1525:
	.loc 1 4229 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1630	#,
	.loc 1 4230 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4231 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.1110
	testq	%rax, %rax	# PL_utf8_digit.1110
	jne	.L1631	#,
	.loc 1 4231 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC3, %edi	#,
	call	Perl_is_utf8_digit	#
	call	Perl_pop_scope	#
	.loc 1 4232 0 is_stmt 1 discriminator 1
	jmp	.L1632	#
.L1631:
	.loc 1 4232 0 is_stmt 0
	jmp	.L1632	#
.L1634:
	.loc 1 4234 0 is_stmt 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_37], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4235 0
	addl	$1, %r13d	#, hardcount
.L1632:
	.loc 1 4232 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1633	#,
	.loc 1 4232 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1633	#,
	.loc 1 4233 0 is_stmt 1 discriminator 1
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.1111
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# PL_utf8_digit.1111,
	call	Perl_swash_fetch	#
	.loc 1 4232 0 discriminator 1
	testq	%rax, %rax	# D.19360
	jne	.L1634	#,
	.loc 1 4241 0
	jmp	.L1536	#
.L1630:
	.loc 1 4238 0
	jmp	.L1635	#
.L1636:
	.loc 1 4239 0
	addq	$1, %rbx	#, scan
.L1635:
	.loc 1 4238 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1633	#,
	.loc 1 4238 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_38, D.19359
	cmpb	$47, %al	#, D.19359
	jle	.L1633	#,
	.loc 1 4238 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_38, D.19359
	cmpb	$57, %al	#, D.19359
	jle	.L1636	#,
.L1633:
	.loc 1 4241 0 is_stmt 1
	jmp	.L1536	#
.L1526:
	.loc 1 4243 0
	testb	%r14b, %r14b	# do_utf8
	je	.L1637	#,
	.loc 1 4244 0
	movq	PL_regeol(%rip), %r12	# PL_regeol, loceol
	.loc 1 4245 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.1112
	testq	%rax, %rax	# PL_utf8_digit.1112
	jne	.L1638	#,
	.loc 1 4245 0 is_stmt 0 discriminator 1
	call	Perl_push_scope	#
	call	Perl_save_re_context	#
	movl	$.LC3, %edi	#,
	call	Perl_is_utf8_digit	#
	call	Perl_pop_scope	#
	.loc 1 4246 0 is_stmt 1 discriminator 1
	jmp	.L1639	#
.L1638:
	.loc 1 4246 0 is_stmt 0
	jmp	.L1639	#
.L1641:
	.loc 1 4248 0 is_stmt 1
	movzbl	(%rbx), %eax	# MEM[(U8 *)scan_40], D.19357
	movzbl	%al, %eax	# D.19357, D.19358
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19357
	movzbl	%al, %eax	# D.19357, D.19356
	addq	%rax, %rbx	# D.19356, scan
	.loc 1 4249 0
	addl	$1, %r13d	#, hardcount
.L1639:
	.loc 1 4246 0 discriminator 1
	cmpl	-44(%rbp), %r13d	# max, hardcount
	jge	.L1640	#,
	.loc 1 4246 0 is_stmt 0 discriminator 2
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1640	#,
	.loc 1 4247 0 is_stmt 1 discriminator 1
	movsbl	%r14b, %edx	# do_utf8, D.19358
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.1113
	movq	%rbx, %rsi	# scan,
	movq	%rax, %rdi	# PL_utf8_digit.1113,
	call	Perl_swash_fetch	#
	.loc 1 4246 0 discriminator 1
	testq	%rax, %rax	# D.19360
	je	.L1641	#,
	.loc 1 4255 0
	jmp	.L1536	#
.L1637:
	.loc 1 4252 0
	jmp	.L1642	#
.L1643:
	.loc 1 4253 0
	addq	$1, %rbx	#, scan
.L1642:
	.loc 1 4252 0 discriminator 1
	cmpq	%r12, %rbx	# loceol, scan
	jae	.L1640	#,
	.loc 1 4252 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *scan_41, D.19359
	cmpb	$47, %al	#, D.19359
	jle	.L1643	#,
	.loc 1 4252 0 discriminator 1
	movzbl	(%rbx), %eax	# *scan_41, D.19359
	cmpb	$57, %al	#, D.19359
	jg	.L1643	#,
.L1640:
	.loc 1 4255 0 is_stmt 1
	jmp	.L1536	#
.L1647:
	.loc 1 4257 0
	nop
.L1536:
	.loc 1 4260 0
	testl	%r13d, %r13d	# hardcount
	je	.L1644	#,
	.loc 1 4261 0
	movl	%r13d, %r14d	# hardcount, c
	jmp	.L1645	#
.L1644:
	.loc 1 4263 0
	movq	%rbx, %rdx	# scan, scan.1114
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1115
	subq	%rax, %rdx	# PL_reginput.1116, D.19355
	movq	%rdx, %rax	# D.19355, D.19355
	movl	%eax, %r14d	# D.19355, c
.L1645:
	.loc 1 4264 0
	movq	%rbx, PL_reginput(%rip)	# scan, PL_reginput
	.loc 1 4276 0
	movl	%r14d, %eax	# c, D.19365
	.loc 1 4277 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	S_regrepeat, .-S_regrepeat
	.type	S_regrepeat_hard, @function
S_regrepeat_hard:
.LFB13:
	.loc 1 4287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# p, p
	movl	%esi, -60(%rbp)	# max, max
	movq	%rdx, -72(%rbp)	# lp, lp
	.loc 1 4288 0
	movl	$0, %ebx	#, scan
	.loc 1 4290 0
	movq	PL_regeol(%rip), %r13	# PL_regeol, loceol
	.loc 1 4291 0
	movl	$0, -44(%rbp)	#, l
	.loc 1 4292 0
	movl	$0, -40(%rbp)	#, count
	movl	$1, -36(%rbp)	#, res
	.loc 1 4294 0
	cmpl	$0, -60(%rbp)	#, max
	jne	.L1649	#,
	.loc 1 4295 0
	movl	$0, %eax	#, D.19366
	jmp	.L1650	#
.L1649:
	.loc 1 4297 0
	movq	PL_reginput(%rip), %r12	# PL_reginput, start
	.loc 1 4298 0
	movzbl	PL_reg_match_utf8(%rip), %eax	# PL_reg_match_utf8, PL_reg_match_utf8.1117
	testb	%al, %al	# PL_reg_match_utf8.1117
	je	.L1651	#,
	.loc 1 4299 0
	jmp	.L1652	#
.L1657:
	.loc 1 4300 0
	movl	-40(%rbp), %eax	# count, count.1118
	leal	1(%rax), %edx	#, tmp85
	movl	%edx, -40(%rbp)	# tmp85, count
	testl	%eax, %eax	# count.1118
	jne	.L1653	#,
	.loc 1 4301 0
	movl	$0, -44(%rbp)	#, l
	.loc 1 4302 0
	jmp	.L1654	#
.L1655:
	.loc 1 4303 0
	addl	$1, -44(%rbp)	#, l
	.loc 1 4304 0
	movzbl	(%r12), %eax	# MEM[(U8 *)start_4], D.19367
	movzbl	%al, %eax	# D.19367, D.19368
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19367
	movzbl	%al, %eax	# D.19367, D.19369
	addq	%rax, %r12	# D.19369, start
.L1654:
	.loc 1 4302 0 discriminator 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1119
	cmpq	%rax, %r12	# PL_reginput.1119, start
	jb	.L1655	#,
	.loc 1 4306 0
	movq	-72(%rbp), %rax	# lp, tmp87
	movl	-44(%rbp), %edx	# l, tmp88
	movl	%edx, (%rax)	# tmp88, *lp_40(D)
	.loc 1 4307 0
	cmpl	$0, -44(%rbp)	#, l
	jne	.L1653	#,
	.loc 1 4308 0
	movl	-60(%rbp), %eax	# max, D.19366
	jmp	.L1650	#
.L1653:
	.loc 1 4310 0
	movl	-40(%rbp), %eax	# count, tmp89
	cmpl	-60(%rbp), %eax	# max, tmp89
	jne	.L1652	#,
	.loc 1 4311 0
	movl	-40(%rbp), %eax	# count, D.19366
	jmp	.L1650	#
.L1652:
	.loc 1 4299 0 discriminator 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1120
	cmpq	%r13, %rax	# loceol, PL_reginput.1120
	jae	.L1656	#,
	.loc 1 4299 0 is_stmt 0 discriminator 2
	movq	PL_reginput(%rip), %rbx	# PL_reginput, scan
	movq	-56(%rbp), %rax	# p, tmp90
	movq	%rax, %rdi	# tmp90,
	call	S_regmatch	#
	movl	%eax, -36(%rbp)	# tmp91, res
	cmpl	$0, -36(%rbp)	#, res
	jne	.L1657	#,
	jmp	.L1656	#
.L1651:
	.loc 1 4315 0 is_stmt 1
	jmp	.L1658	#
.L1660:
	.loc 1 4316 0
	movl	-40(%rbp), %eax	# count, count.1121
	leal	1(%rax), %edx	#, tmp92
	movl	%edx, -40(%rbp)	# tmp92, count
	testl	%eax, %eax	# count.1121
	jne	.L1658	#,
	.loc 1 4317 0
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1122
	movq	%rax, %rdx	# PL_reginput.1122, PL_reginput.1123
	movq	%r12, %rax	# start, start.1124
	subq	%rax, %rdx	# start.1124, D.19370
	movq	%rdx, %rax	# D.19370, D.19370
	movl	%eax, -44(%rbp)	# D.19370, l
	movq	-72(%rbp), %rax	# lp, tmp93
	movl	-44(%rbp), %edx	# l, tmp94
	movl	%edx, (%rax)	# tmp94, *lp_40(D)
	.loc 1 4318 0
	cmpl	$32767, -60(%rbp)	#, max
	je	.L1659	#,
	.loc 1 4318 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# l, tmp95
	imull	-60(%rbp), %eax	# max, D.19368
	cltq
	movq	%r13, %rcx	# loceol, loceol.1125
	movq	%rbx, %rdx	# scan, scan.1126
	subq	%rdx, %rcx	# scan.1126, D.19370
	movq	%rcx, %rdx	# D.19370, D.19370
	cmpq	%rdx, %rax	# D.19370, D.19370
	jge	.L1659	#,
	.loc 1 4319 0 is_stmt 1
	movl	-44(%rbp), %eax	# l, tmp96
	imull	-60(%rbp), %eax	# max, D.19368
	cltq
	leaq	(%rbx,%rax), %r13	#, loceol
.L1659:
	.loc 1 4320 0
	cmpl	$0, -44(%rbp)	#, l
	jne	.L1658	#,
	.loc 1 4321 0
	movl	-60(%rbp), %eax	# max, D.19366
	jmp	.L1650	#
.L1658:
	.loc 1 4315 0 discriminator 1
	movq	PL_reginput(%rip), %rax	# PL_reginput, PL_reginput.1127
	cmpq	%r13, %rax	# loceol, PL_reginput.1127
	jae	.L1656	#,
	.loc 1 4315 0 is_stmt 0 discriminator 2
	movq	PL_reginput(%rip), %rbx	# PL_reginput, scan
	movq	-56(%rbp), %rax	# p, tmp97
	movq	%rax, %rdi	# tmp97,
	call	S_regmatch	#
	movl	%eax, -36(%rbp)	# tmp98, res
	cmpl	$0, -36(%rbp)	#, res
	jne	.L1660	#,
.L1656:
	.loc 1 4325 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, res
	jne	.L1661	#,
	.loc 1 4326 0
	movq	%rbx, PL_reginput(%rip)	# scan, PL_reginput
.L1661:
	.loc 1 4328 0
	movl	-40(%rbp), %eax	# count, D.19366
.L1650:
	.loc 1 4329 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	S_regrepeat_hard, .-S_regrepeat_hard
	.section	.rodata
.LC15:
	.string	""
.LC16:
	.string	"utf8"
	.text
	.globl	Perl_regclass_swash
	.type	Perl_regclass_swash, @function
Perl_regclass_swash:
.LFB14:
	.loc 1 4337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, %rax	# node, node
	movq	%rdx, -96(%rbp)	# listsvp, listsvp
	movq	%rcx, -104(%rbp)	# altsvp, altsvp
	movb	%sil, -84(%rbp)	# tmp83, doinit
	.loc 1 4338 0
	movq	$0, -64(%rbp)	#, sw
	.loc 1 4339 0
	movq	$0, -56(%rbp)	#, si
	.loc 1 4340 0
	movq	$0, -48(%rbp)	#, alt
	.loc 1 4342 0
	movq	PL_regdata(%rip), %rdx	# PL_regdata, PL_regdata.1128
	testq	%rdx, %rdx	# PL_regdata.1128
	je	.L1663	#,
	.loc 1 4342 0 is_stmt 0 discriminator 1
	movq	PL_regdata(%rip), %rdx	# PL_regdata, PL_regdata.1129
	movl	(%rdx), %edx	# PL_regdata.1129_11->count, D.19371
	testl	%edx, %edx	# D.19371
	je	.L1663	#,
.LBB68:
	.loc 1 4343 0 is_stmt 1
	movl	4(%rax), %eax	# MEM[(struct regnode_1 *)node_13(D)].arg1, tmp84
	movl	%eax, -68(%rbp)	# tmp84, n
	.loc 1 4345 0
	movq	PL_regdata(%rip), %rax	# PL_regdata, PL_regdata.1130
	movq	8(%rax), %rdx	# PL_regdata.1130_15->what, D.19372
	movl	-68(%rbp), %eax	# n, D.19373
	addq	%rdx, %rax	# D.19372, D.19372
	movzbl	(%rax), %eax	# *_18, D.19374
	cmpb	$115, %al	#, D.19374
	jne	.L1663	#,
.LBB69:
	.loc 1 4346 0
	movq	PL_regdata(%rip), %rax	# PL_regdata, PL_regdata.1131
	movl	-68(%rbp), %edx	# n, tmp85
	addq	$2, %rdx	#, tmp86
	movq	(%rax,%rdx,8), %rax	# PL_regdata.1131_20->data, tmp87
	movq	%rax, -40(%rbp)	# tmp87, rv
	.loc 1 4347 0
	movq	-40(%rbp), %rax	# rv, tmp88
	movq	(%rax), %rax	# rv_21->sv_any, D.19375
	movq	(%rax), %rax	# MEM[(struct XRV *)_22].xrv_rv, tmp89
	movq	%rax, -32(%rbp)	# tmp89, av
	.loc 1 4348 0
	movq	-32(%rbp), %rax	# av, tmp90
	movq	(%rax), %rax	# av_23->sv_any, D.19376
	movq	(%rax), %rax	# _24->xav_array, tmp91
	movq	%rax, -24(%rbp)	# tmp91, ary
	.loc 1 4354 0
	movq	-24(%rbp), %rax	# ary, tmp92
	movq	(%rax), %rax	# *ary_25, tmp93
	movq	%rax, -56(%rbp)	# tmp93, si
	.loc 1 4355 0
	movq	-24(%rbp), %rax	# ary, tmp94
	addq	$8, %rax	#, D.19377
	movq	(%rax), %rax	# *_27, D.19378
	movl	12(%rax), %eax	# _28->sv_flags, D.19371
	movzbl	%al, %eax	# D.19371, D.19371
	cmpl	$3, %eax	#, D.19371
	jne	.L1664	#,
	.loc 1 4355 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ary, tmp95
	addq	$8, %rax	#, iftmp.1132
	jmp	.L1665	#
.L1664:
	.loc 1 4355 0 discriminator 2
	movl	$0, %eax	#, iftmp.1132
.L1665:
	.loc 1 4355 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.1132, a
	.loc 1 4356 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# ary, tmp96
	addq	$16, %rax	#, D.19377
	movq	(%rax), %rax	# *_34, D.19378
	movl	12(%rax), %eax	# _35->sv_flags, D.19371
	movzbl	%al, %eax	# D.19371, D.19371
	cmpl	$10, %eax	#, D.19371
	jne	.L1666	#,
	.loc 1 4356 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ary, tmp97
	addq	$16, %rax	#, iftmp.1133
	jmp	.L1667	#
.L1666:
	.loc 1 4356 0 discriminator 2
	movl	$0, %eax	#, iftmp.1133
.L1667:
	.loc 1 4356 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.1133, b
	.loc 1 4358 0 is_stmt 1 discriminator 3
	cmpq	$0, -16(%rbp)	#, a
	je	.L1668	#,
	.loc 1 4359 0
	movq	-16(%rbp), %rax	# a, tmp98
	movq	(%rax), %rax	# *a_33, tmp99
	movq	%rax, -64(%rbp)	# tmp99, sw
	jmp	.L1669	#
.L1668:
	.loc 1 4360 0
	cmpq	$0, -56(%rbp)	#, si
	je	.L1669	#,
	.loc 1 4360 0 is_stmt 0 discriminator 1
	cmpb	$0, -84(%rbp)	#, doinit
	je	.L1669	#,
	.loc 1 4361 0 is_stmt 1
	movq	-56(%rbp), %rax	# si, tmp100
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdx	# tmp100,
	movl	$.LC15, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, -64(%rbp)	# tmp101, sw
	.loc 1 4362 0
	movq	-64(%rbp), %rdx	# sw, tmp102
	movq	-32(%rbp), %rax	# av, tmp103
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	Perl_av_store	#
.L1669:
	.loc 1 4364 0
	cmpq	$0, -8(%rbp)	#, b
	je	.L1663	#,
	.loc 1 4365 0
	movq	-8(%rbp), %rax	# b, tmp104
	movq	(%rax), %rax	# *b_40, tmp105
	movq	%rax, -48(%rbp)	# tmp105, alt
.L1663:
.LBE69:
.LBE68:
	.loc 1 4369 0
	cmpq	$0, -96(%rbp)	#, listsvp
	je	.L1670	#,
	.loc 1 4370 0
	movq	-96(%rbp), %rax	# listsvp, tmp106
	movq	-56(%rbp), %rdx	# si, tmp107
	movq	%rdx, (%rax)	# tmp107, *listsvp_45(D)
.L1670:
	.loc 1 4371 0
	cmpq	$0, -104(%rbp)	#, altsvp
	je	.L1671	#,
	.loc 1 4372 0
	movq	-104(%rbp), %rax	# altsvp, tmp108
	movq	-48(%rbp), %rdx	# alt, tmp109
	movq	%rdx, (%rax)	# tmp109, *altsvp_46(D)
.L1671:
	.loc 1 4374 0
	movq	-64(%rbp), %rax	# sw, D.19378
	.loc 1 4375 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_regclass_swash, .-Perl_regclass_swash
	.type	S_reginclass, @function
S_reginclass:
.LFB15:
	.loc 1 4389 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# n, n
	movq	%rsi, %r13	# p, p
	movq	%rdx, -136(%rbp)	# lenp, lenp
	movl	%ecx, %eax	# do_utf8, tmp473
	movl	%eax, %r12d	# tmp473, do_utf8
	.loc 1 4389 0
	movq	%fs:40, %rax	#, tmp556
	movq	%rax, -40(%rbp)	# tmp556, D.19396
	xorl	%eax, %eax	# tmp556
	.loc 1 4390 0
	movzbl	(%rbx), %eax	# n_31(D)->flags, D.19381
	movb	%al, -117(%rbp)	# D.19381, flags
	.loc 1 4391 0
	movb	$0, -119(%rbp)	#, match
	.loc 1 4392 0
	movzbl	0(%r13), %eax	# *p_35(D), D.19381
	movzbl	%al, %eax	# D.19381, tmp474
	movq	%rax, -88(%rbp)	# tmp474, c
	.loc 1 4393 0
	movq	$0, -112(%rbp)	#, len
	.loc 1 4396 0
	testb	%r12b, %r12b	# do_utf8
	je	.L1674	#,
	.loc 1 4396 0 is_stmt 0 discriminator 1
	cmpq	$127, -88(%rbp)	#, c
	jbe	.L1674	#,
	.loc 1 4398 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1135
	movq	80(%rax), %rax	# PL_curcop.1135_39->cop_warnings, D.19382
	.loc 1 4397 0
	testq	%rax, %rax	# D.19382
	je	.L1675	#,
	.loc 1 4398 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1136
	movq	80(%rax), %rax	# PL_curcop.1136_41->cop_warnings, D.19382
	cmpq	$32, %rax	#, D.19382
	je	.L1675	#,
	.loc 1 4398 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1137
	movq	80(%rax), %rax	# PL_curcop.1137_43->cop_warnings, D.19382
	cmpq	$16, %rax	#, D.19382
	je	.L1676	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1138
	movq	80(%rax), %rax	# PL_curcop.1138_45->cop_warnings, D.19382
	movq	(%rax), %rax	# _46->sv_any, D.19383
	movq	(%rax), %rax	# MEM[(struct XPV *)_47].xpv_pv, D.19384
	addq	$11, %rax	#, D.19384
	movzbl	(%rax), %eax	# *_49, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$1, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1676	#,
.L1675:
	.loc 1 4398 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1139
	movq	80(%rax), %rax	# PL_curcop.1139_53->cop_warnings, D.19382
	testq	%rax, %rax	# D.19382
	jne	.L1677	#,
	.loc 1 4398 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1140
	movzbl	%al, %eax	# PL_dowarn.1140, D.19386
	andl	$1, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1677	#,
.L1676:
	.loc 1 4397 0 is_stmt 1
	movl	$0, %eax	#, iftmp.1134
	jmp	.L1678	#
.L1677:
	movl	$255, %eax	#, iftmp.1134
.L1678:
	.loc 1 4397 0 is_stmt 0 discriminator 1
	leaq	-112(%rbp), %rdx	#, tmp475
	movl	%eax, %ecx	# iftmp.1134,
	movl	$13, %esi	#,
	movq	%r13, %rdi	# p,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -88(%rbp)	# tmp476, c
.L1674:
	.loc 1 4400 0 is_stmt 1
	cmpq	$0, -136(%rbp)	#, lenp
	je	.L1679	#,
	.loc 1 4400 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# lenp, tmp477
	movq	(%rax), %rax	# *lenp_61(D), iftmp.1141
	jmp	.L1680	#
.L1679:
	.loc 1 4400 0 discriminator 2
	cmpq	$127, -88(%rbp)	#, c
	jbe	.L1681	#,
	.loc 1 4400 0 discriminator 3
	cmpq	$2047, -88(%rbp)	#, c
	jbe	.L1682	#,
	.loc 1 4400 0 discriminator 5
	cmpq	$65535, -88(%rbp)	#, c
	jbe	.L1683	#,
	.loc 1 4400 0 discriminator 7
	cmpq	$2097151, -88(%rbp)	#, c
	jbe	.L1684	#,
	.loc 1 4400 0 discriminator 9
	cmpq	$67108863, -88(%rbp)	#, c
	jbe	.L1685	#,
	.loc 1 4400 0 discriminator 11
	cmpq	$2147483647, -88(%rbp)	#, c
	jbe	.L1686	#,
	.loc 1 4400 0 discriminator 13
	movabsq	$68719476735, %rax	#, tmp478
	cmpq	%rax, -88(%rbp)	# tmp478, c
	ja	.L1687	#,
	.loc 1 4400 0 discriminator 15
	movl	$7, %eax	#, iftmp.1148
	jmp	.L1680	#
.L1687:
	.loc 1 4400 0 discriminator 16
	movl	$13, %eax	#, iftmp.1148
	jmp	.L1680	#
.L1686:
	.loc 1 4400 0 discriminator 14
	movl	$6, %eax	#, iftmp.1147
	jmp	.L1680	#
.L1685:
	.loc 1 4400 0 discriminator 12
	movl	$5, %eax	#, iftmp.1146
	jmp	.L1680	#
.L1684:
	.loc 1 4400 0 discriminator 10
	movl	$4, %eax	#, iftmp.1145
	jmp	.L1680	#
.L1683:
	.loc 1 4400 0 discriminator 8
	movl	$3, %eax	#, iftmp.1144
	jmp	.L1680	#
.L1682:
	.loc 1 4400 0 discriminator 6
	movl	$2, %eax	#, iftmp.1143
	jmp	.L1680	#
.L1681:
	.loc 1 4400 0 discriminator 4
	movl	$1, %eax	#, iftmp.1142
.L1680:
	.loc 1 4400 0 discriminator 18
	movq	%rax, -80(%rbp)	# iftmp.1141, plen
	.loc 1 4401 0 is_stmt 1 discriminator 18
	testb	%r12b, %r12b	# do_utf8
	jne	.L1695	#,
	.loc 1 4401 0 is_stmt 0 discriminator 1
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$32, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1696	#,
.L1695:
	.loc 1 4402 0 is_stmt 1
	cmpq	$0, -136(%rbp)	#, lenp
	je	.L1697	#,
	.loc 1 4403 0
	movq	-136(%rbp), %rax	# lenp, tmp479
	movq	$0, (%rax)	#, *lenp_61(D)
.L1697:
	.loc 1 4404 0
	testb	%r12b, %r12b	# do_utf8
	je	.L1698	#,
	.loc 1 4404 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# n_31(D)->flags, D.19381
	movzbl	%al, %eax	# D.19381, D.19386
	andl	$15, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1698	#,
	.loc 1 4405 0 is_stmt 1
	movq	-112(%rbp), %rax	# len, len.1149
	cmpq	$-1, %rax	#, len.1149
	je	.L1698	#,
	.loc 1 4405 0 is_stmt 0 discriminator 1
	cmpq	$255, -88(%rbp)	#, c
	ja	.L1698	#,
	movq	-88(%rbp), %rax	# c, tmp480
	shrq	$3, %rax	#, D.19387
	andl	$31, %eax	#, D.19387
	movzbl	8(%rbx,%rax), %eax	# MEM[(struct regnode_charclass *)n_31(D)].bitmap, D.19385
	movsbl	%al, %edx	# D.19385, D.19386
	movq	-88(%rbp), %rax	# c, tmp481
	andl	$7, %eax	#, D.19386
	movl	%eax, %ecx	# D.19386, tmp559
	sarl	%cl, %edx	# tmp559, D.19386
	movl	%edx, %eax	# D.19386, D.19386
	andl	$1, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1698	#,
	.loc 1 4406 0 is_stmt 1
	movb	$1, -119(%rbp)	#, match
.L1698:
	.loc 1 4408 0
	cmpb	$0, -119(%rbp)	#, match
	jne	.L1699	#,
	.loc 1 4408 0 is_stmt 0 discriminator 1
	testb	%r12b, %r12b	# do_utf8
	je	.L1699	#,
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$64, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1699	#,
	cmpq	$255, -88(%rbp)	#, c
	jbe	.L1699	#,
	.loc 1 4409 0 is_stmt 1
	movb	$1, -119(%rbp)	#, match
.L1699:
	.loc 1 4410 0
	cmpb	$0, -119(%rbp)	#, match
	jne	.L1700	#,
.LBB70:
	.loc 1 4412 0
	leaq	-104(%rbp), %rax	#, tmp482
	movq	%rax, %rcx	# tmp482,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# n,
	call	Perl_regclass_swash	#
	movq	%rax, -72(%rbp)	# tmp483, sw
	.loc 1 4414 0
	cmpq	$0, -72(%rbp)	#, sw
	je	.L1700	#,
	.loc 1 4415 0
	movsbl	%r12b, %edx	# do_utf8, D.19386
	movq	-72(%rbp), %rax	# sw, tmp484
	movq	%r13, %rsi	# p,
	movq	%rax, %rdi	# tmp484,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19387
	je	.L1702	#,
	.loc 1 4416 0
	movb	$1, -119(%rbp)	#, match
	jmp	.L1700	#
.L1702:
	.loc 1 4417 0
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$2, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1700	#,
	.loc 1 4418 0
	cmpb	$0, -119(%rbp)	#, match
	jne	.L1703	#,
	.loc 1 4418 0 is_stmt 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, lenp
	je	.L1703	#,
	movq	-104(%rbp), %rax	# av, av.1150
	testq	%rax, %rax	# av.1150
	je	.L1703	#,
.LBB71:
	.loc 1 4421 0 is_stmt 1
	movl	$0, -116(%rbp)	#, i
	jmp	.L1704	#
.L1708:
.LBB72:
	.loc 1 4422 0
	movq	-104(%rbp), %rax	# av, av.1151
	movl	-116(%rbp), %ecx	# i, tmp485
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp485,
	movq	%rax, %rdi	# av.1151,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_108, tmp486
	movq	%rax, -64(%rbp)	# tmp486, sv
	.loc 1 4424 0
	movq	-64(%rbp), %rax	# sv, tmp487
	movl	12(%rax), %eax	# sv_109->sv_flags, D.19389
	andl	$262144, %eax	#, D.19389
	testl	%eax, %eax	# D.19389
	je	.L1705	#,
	.loc 1 4424 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# sv, tmp488
	movq	(%rax), %rax	# sv_109->sv_any, D.19383
	movq	8(%rax), %rax	# MEM[(struct XPV *)_112].xpv_cur, len.1153
	movq	%rax, -96(%rbp)	# len.1153, len
	movq	-64(%rbp), %rax	# sv, tmp489
	movq	(%rax), %rax	# sv_109->sv_any, D.19383
	movq	(%rax), %rax	# MEM[(struct XPV *)_114].xpv_pv, iftmp.1152
	jmp	.L1706	#
.L1705:
	.loc 1 4424 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp490
	movq	-64(%rbp), %rax	# sv, tmp491
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp490,
	movq	%rax, %rdi	# tmp491,
	call	Perl_sv_2pv_flags	#
.L1706:
	.loc 1 4424 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.1152, s
	.loc 1 4426 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# len, len.1154
	cmpq	-80(%rbp), %rax	# plen, len.1154
	ja	.L1707	#,
	.loc 1 4426 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx	# len, len.1155
	movq	-56(%rbp), %rax	# s, tmp492
	movq	%r13, %rsi	# p,
	movq	%rax, %rdi	# tmp492,
	call	memcmp	#
	testl	%eax, %eax	# D.19386
	jne	.L1707	#,
	.loc 1 4427 0 is_stmt 1
	movq	-96(%rbp), %rdx	# len, len.1156
	movq	-136(%rbp), %rax	# lenp, tmp493
	movq	%rdx, (%rax)	# len.1156, *lenp_61(D)
	.loc 1 4428 0
	movb	$1, -119(%rbp)	#, match
	jmp	.L1703	#
.L1707:
.LBE72:
	.loc 1 4421 0
	addl	$1, -116(%rbp)	#, i
.L1704:
	.loc 1 4421 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# av, av.1157
	movq	%rax, %rdi	# av.1157,
	call	Perl_av_len	#
	cmpl	-116(%rbp), %eax	# i, D.19386
	jge	.L1708	#,
.L1703:
.LBE71:
	.loc 1 4433 0 is_stmt 1
	cmpb	$0, -119(%rbp)	#, match
	jne	.L1700	#,
.LBB73:
	.loc 1 4437 0
	leaq	-96(%rbp), %rdx	#, tmp494
	leaq	-48(%rbp), %rax	#, tmp495
	movq	%rax, %rsi	# tmp495,
	movq	%r13, %rdi	# p,
	call	Perl_to_utf8_fold	#
	.loc 1 4438 0
	movsbl	%r12b, %edx	# do_utf8, D.19386
	leaq	-48(%rbp), %rcx	#, tmp496
	movq	-72(%rbp), %rax	# sw, tmp497
	movq	%rcx, %rsi	# tmp496,
	movq	%rax, %rdi	# tmp497,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.19387
	je	.L1700	#,
	.loc 1 4439 0
	movb	$1, -119(%rbp)	#, match
.L1700:
.LBE73:
.LBE70:
	.loc 1 4444 0
	cmpb	$0, -119(%rbp)	#, match
	je	.L1696	#,
	.loc 1 4444 0 is_stmt 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, lenp
	je	.L1696	#,
	movq	-136(%rbp), %rax	# lenp, tmp498
	movq	(%rax), %rax	# *lenp_61(D), D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1696	#,
	.loc 1 4445 0 is_stmt 1
	cmpq	$127, -88(%rbp)	#, c
	jbe	.L1710	#,
	.loc 1 4445 0 is_stmt 0 discriminator 1
	cmpq	$2047, -88(%rbp)	#, c
	jbe	.L1711	#,
	.loc 1 4445 0 discriminator 3
	cmpq	$65535, -88(%rbp)	#, c
	jbe	.L1712	#,
	.loc 1 4445 0 discriminator 5
	cmpq	$2097151, -88(%rbp)	#, c
	jbe	.L1713	#,
	.loc 1 4445 0 discriminator 7
	cmpq	$67108863, -88(%rbp)	#, c
	jbe	.L1714	#,
	.loc 1 4445 0 discriminator 9
	cmpq	$2147483647, -88(%rbp)	#, c
	jbe	.L1715	#,
	.loc 1 4445 0 discriminator 11
	movabsq	$68719476735, %rax	#, tmp499
	cmpq	%rax, -88(%rbp)	# tmp499, c
	ja	.L1716	#,
	.loc 1 4445 0 discriminator 13
	movl	$7, %eax	#, iftmp.1164
	jmp	.L1723	#
.L1716:
	.loc 1 4445 0 discriminator 14
	movl	$13, %eax	#, iftmp.1164
	jmp	.L1723	#
.L1715:
	.loc 1 4445 0 discriminator 12
	movl	$6, %eax	#, iftmp.1163
	jmp	.L1723	#
.L1714:
	.loc 1 4445 0 discriminator 10
	movl	$5, %eax	#, iftmp.1162
	jmp	.L1723	#
.L1713:
	.loc 1 4445 0 discriminator 8
	movl	$4, %eax	#, iftmp.1161
	jmp	.L1723	#
.L1712:
	.loc 1 4445 0 discriminator 6
	movl	$3, %eax	#, iftmp.1160
	jmp	.L1723	#
.L1711:
	.loc 1 4445 0 discriminator 4
	movl	$2, %eax	#, iftmp.1159
	jmp	.L1723	#
.L1710:
	.loc 1 4445 0 discriminator 2
	movl	$1, %eax	#, iftmp.1158
.L1723:
	.loc 1 4445 0 discriminator 15
	movq	-136(%rbp), %rdx	# lenp, tmp500
	movq	%rax, (%rdx)	# iftmp.1158, *lenp_61(D)
.L1696:
	.loc 1 4447 0 is_stmt 1
	cmpb	$0, -119(%rbp)	#, match
	jne	.L1724	#,
	.loc 1 4447 0 is_stmt 0 discriminator 1
	cmpq	$255, -88(%rbp)	#, c
	ja	.L1724	#,
	.loc 1 4448 0 is_stmt 1
	movq	-88(%rbp), %rax	# c, tmp501
	shrq	$3, %rax	#, D.19387
	andl	$31, %eax	#, D.19387
	movzbl	8(%rbx,%rax), %eax	# MEM[(struct regnode_charclass *)n_31(D)].bitmap, D.19385
	movsbl	%al, %edx	# D.19385, D.19386
	movq	-88(%rbp), %rax	# c, tmp502
	andl	$7, %eax	#, D.19386
	movl	%eax, %ecx	# D.19386, tmp561
	sarl	%cl, %edx	# tmp561, D.19386
	movl	%edx, %eax	# D.19386, D.19386
	andl	$1, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1725	#,
	.loc 1 4449 0
	movb	$1, -119(%rbp)	#, match
	jmp	.L1726	#
.L1725:
	.loc 1 4450 0
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$2, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1726	#,
.LBB74:
	.loc 1 4453 0
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$1, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1727	#,
	.loc 1 4454 0
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1165
	orl	$1, %eax	#, PL_reg_flags.1166
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1166, PL_reg_flags
	.loc 1 4455 0
	movq	-88(%rbp), %rax	# c, tmp504
	addq	$PL_fold_locale, %rax	#, tmp503
	movzbl	(%rax), %eax	# PL_fold_locale, tmp505
	movb	%al, -118(%rbp)	# tmp505, f
	jmp	.L1728	#
.L1727:
	.loc 1 4458 0
	movq	-88(%rbp), %rax	# c, tmp507
	addq	$PL_fold, %rax	#, tmp506
	movzbl	(%rax), %eax	# PL_fold, tmp508
	movb	%al, -118(%rbp)	# tmp508, f
.L1728:
	.loc 1 4459 0
	movzbl	-118(%rbp), %eax	# f, D.19387
	cmpq	-88(%rbp), %rax	# c, D.19387
	je	.L1726	#,
	.loc 1 4459 0 is_stmt 0 discriminator 1
	movzbl	-118(%rbp), %eax	# f, tmp509
	shrb	$3, %al	#, D.19381
	movzbl	%al, %eax	# D.19381, D.19386
	andl	$31, %eax	#, D.19386
	cltq
	movzbl	8(%rbx,%rax), %eax	# MEM[(struct regnode_charclass *)n_31(D)].bitmap, D.19385
	movsbl	%al, %edx	# D.19385, D.19386
	movzbl	-118(%rbp), %eax	# f, D.19386
	andl	$7, %eax	#, D.19386
	movl	%eax, %ecx	# D.19386, tmp563
	sarl	%cl, %edx	# tmp563, D.19386
	movl	%edx, %eax	# D.19386, D.19386
	andl	$1, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1726	#,
	.loc 1 4460 0 is_stmt 1
	movb	$1, -119(%rbp)	#, match
.L1726:
.LBE74:
	.loc 1 4463 0
	cmpb	$0, -119(%rbp)	#, match
	jne	.L1724	#,
	.loc 1 4463 0 is_stmt 0 discriminator 1
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$8, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1724	#,
	.loc 1 4464 0 is_stmt 1
	movl	PL_reg_flags(%rip), %eax	# PL_reg_flags, PL_reg_flags.1167
	orl	$1, %eax	#, PL_reg_flags.1168
	movl	%eax, PL_reg_flags(%rip)	# PL_reg_flags.1168, PL_reg_flags
	.loc 1 4466 0
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$1, %eax	#, D.19386
	.loc 1 4465 0
	testl	%eax, %eax	# D.19386
	je	.L1729	#,
	.loc 1 4466 0
	movq	-88(%rbp), %rax	# c, tmp511
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1729	#,
	.loc 1 4466 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_178, D.19391
	movq	-88(%rbp), %rdx	# c, tmp512
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_183, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$8, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
	cmpq	$95, -88(%rbp)	#, c
	je	.L1730	#,
.L1729:
	.loc 1 4467 0 is_stmt 1 discriminator 2
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$2, %eax	#, D.19386
	.loc 1 4466 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1731	#,
	.loc 1 4467 0
	movq	-88(%rbp), %rax	# c, tmp513
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4467 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_191, D.19391
	movq	-88(%rbp), %rdx	# c, tmp514
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_196, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$8, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1731	#,
	cmpq	$95, -88(%rbp)	#, c
	jne	.L1730	#,
.L1731:
	.loc 1 4468 0 is_stmt 1 discriminator 2
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$4, %eax	#, D.19386
	.loc 1 4467 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1732	#,
	.loc 1 4468 0
	movq	-88(%rbp), %rax	# c, tmp515
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1732	#,
	.loc 1 4468 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_204, D.19391
	movq	-88(%rbp), %rdx	# c, tmp516
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_209, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$8192, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1732:
	.loc 1 4469 0 is_stmt 1 discriminator 2
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$8, %eax	#, D.19386
	.loc 1 4468 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1733	#,
	.loc 1 4469 0
	movq	-88(%rbp), %rax	# c, tmp517
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4469 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_217, D.19391
	movq	-88(%rbp), %rdx	# c, tmp518
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_222, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$8192, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1733:
	.loc 1 4470 0 is_stmt 1 discriminator 1
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$16, %eax	#, D.19386
	.loc 1 4469 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1734	#,
	.loc 1 4470 0
	movq	-88(%rbp), %rax	# c, tmp519
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1734	#,
	.loc 1 4470 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_230, D.19391
	movq	-88(%rbp), %rdx	# c, tmp520
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_235, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$2048, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1734:
	.loc 1 4471 0 is_stmt 1 discriminator 2
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$32, %eax	#, D.19386
	.loc 1 4470 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1735	#,
	.loc 1 4471 0
	movq	-88(%rbp), %rax	# c, tmp521
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4471 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_243, D.19391
	movq	-88(%rbp), %rdx	# c, tmp522
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_248, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$2048, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1735:
	.loc 1 4472 0 is_stmt 1 discriminator 1
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$64, %eax	#, D.19386
	.loc 1 4471 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1736	#,
	.loc 1 4472 0
	movq	-88(%rbp), %rax	# c, tmp523
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1736	#,
	.loc 1 4472 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_256, D.19391
	movq	-88(%rbp), %rdx	# c, tmp524
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_261, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$8, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1736:
	.loc 1 4473 0 is_stmt 1 discriminator 2
	movzbl	40(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	.loc 1 4472 0 discriminator 2
	testb	%al, %al	# D.19385
	jns	.L1737	#,
	.loc 1 4473 0
	movq	-88(%rbp), %rax	# c, tmp525
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4473 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_267, D.19391
	movq	-88(%rbp), %rdx	# c, tmp526
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_272, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$8, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1737:
	.loc 1 4474 0 is_stmt 1 discriminator 1
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$1, %eax	#, D.19386
	.loc 1 4473 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1738	#,
	.loc 1 4474 0
	movq	-88(%rbp), %rax	# c, tmp527
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1738	#,
	.loc 1 4474 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_280, D.19391
	movq	-88(%rbp), %rdx	# c, tmp528
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_285, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$1024, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1738:
	.loc 1 4475 0 is_stmt 1 discriminator 2
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$2, %eax	#, D.19386
	.loc 1 4474 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1739	#,
	.loc 1 4475 0
	movq	-88(%rbp), %rax	# c, tmp529
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4475 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_293, D.19391
	movq	-88(%rbp), %rdx	# c, tmp530
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_298, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$1024, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1739:
	.loc 1 4476 0 is_stmt 1 discriminator 1
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$4, %eax	#, D.19386
	.loc 1 4475 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1740	#,
	.loc 1 4476 0
	cmpq	$127, -88(%rbp)	#, c
	jbe	.L1730	#,
.L1740:
	.loc 1 4477 0 discriminator 1
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$8, %eax	#, D.19386
	.loc 1 4476 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1741	#,
	.loc 1 4477 0
	cmpq	$127, -88(%rbp)	#, c
	ja	.L1730	#,
.L1741:
	.loc 1 4478 0 discriminator 1
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$16, %eax	#, D.19386
	.loc 1 4477 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1742	#,
	.loc 1 4478 0
	movq	-88(%rbp), %rax	# c, tmp531
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1742	#,
	.loc 1 4478 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_312, D.19391
	movq	-88(%rbp), %rdx	# c, tmp532
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_317, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$2, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1742:
	.loc 1 4479 0 is_stmt 1 discriminator 2
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$32, %eax	#, D.19386
	.loc 1 4478 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1743	#,
	.loc 1 4479 0
	movq	-88(%rbp), %rax	# c, tmp533
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4479 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_325, D.19391
	movq	-88(%rbp), %rdx	# c, tmp534
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_330, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$2, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1743:
	.loc 1 4480 0 is_stmt 1 discriminator 1
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$64, %eax	#, D.19386
	.loc 1 4479 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1744	#,
	.loc 1 4480 0
	movq	-88(%rbp), %rax	# c, tmp535
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1744	#,
	.loc 1 4480 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_338, D.19391
	movq	-88(%rbp), %rdx	# c, tmp536
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_343, D.19392
	testw	%ax, %ax	# D.19393
	js	.L1730	#,
.L1744:
	.loc 1 4481 0 is_stmt 1 discriminator 2
	movzbl	41(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	.loc 1 4480 0 discriminator 2
	testb	%al, %al	# D.19385
	jns	.L1745	#,
	.loc 1 4481 0
	movq	-88(%rbp), %rax	# c, tmp537
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4481 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_348, D.19391
	movq	-88(%rbp), %rdx	# c, tmp538
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_353, D.19392
	testw	%ax, %ax	# D.19393
	jns	.L1730	#,
.L1745:
	.loc 1 4482 0 is_stmt 1 discriminator 1
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$1, %eax	#, D.19386
	.loc 1 4481 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1746	#,
	.loc 1 4482 0
	movq	-88(%rbp), %rax	# c, tmp539
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1746	#,
	.loc 1 4482 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_360, D.19391
	movq	-88(%rbp), %rdx	# c, tmp540
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_365, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$512, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1746:
	.loc 1 4483 0 is_stmt 1 discriminator 2
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$2, %eax	#, D.19386
	.loc 1 4482 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1747	#,
	.loc 1 4483 0
	movq	-88(%rbp), %rax	# c, tmp541
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4483 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_373, D.19391
	movq	-88(%rbp), %rdx	# c, tmp542
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_378, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$512, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1747:
	.loc 1 4484 0 is_stmt 1 discriminator 1
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$4, %eax	#, D.19386
	.loc 1 4483 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1748	#,
	.loc 1 4484 0
	movq	-88(%rbp), %rax	# c, tmp543
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1748	#,
	.loc 1 4484 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_386, D.19391
	movq	-88(%rbp), %rdx	# c, tmp544
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_391, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$16384, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1748:
	.loc 1 4485 0 is_stmt 1 discriminator 2
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$8, %eax	#, D.19386
	.loc 1 4484 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1749	#,
	.loc 1 4485 0
	movq	-88(%rbp), %rax	# c, tmp545
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4485 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_399, D.19391
	movq	-88(%rbp), %rdx	# c, tmp546
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_404, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$16384, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1749:
	.loc 1 4486 0 is_stmt 1 discriminator 1
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$16, %eax	#, D.19386
	.loc 1 4485 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1750	#,
	.loc 1 4486 0
	movq	-88(%rbp), %rax	# c, tmp547
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1750	#,
	.loc 1 4486 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_412, D.19391
	movq	-88(%rbp), %rdx	# c, tmp548
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_417, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$4, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1750:
	.loc 1 4487 0 is_stmt 1 discriminator 2
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$32, %eax	#, D.19386
	.loc 1 4486 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1751	#,
	.loc 1 4487 0
	movq	-88(%rbp), %rax	# c, tmp549
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4487 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_425, D.19391
	movq	-88(%rbp), %rdx	# c, tmp550
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_430, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$4, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1751:
	.loc 1 4488 0 is_stmt 1 discriminator 1
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$64, %eax	#, D.19386
	.loc 1 4487 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1752	#,
	.loc 1 4488 0
	movq	-88(%rbp), %rax	# c, tmp551
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1752	#,
	.loc 1 4488 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_438, D.19391
	movq	-88(%rbp), %rdx	# c, tmp552
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_443, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$256, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	jne	.L1730	#,
.L1752:
	.loc 1 4489 0 is_stmt 1 discriminator 2
	movzbl	42(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	.loc 1 4488 0 discriminator 2
	testb	%al, %al	# D.19385
	jns	.L1753	#,
	.loc 1 4489 0
	movq	-88(%rbp), %rax	# c, tmp553
	andq	$-128, %rax	#, D.19387
	testq	%rax, %rax	# D.19387
	jne	.L1730	#,
	.loc 1 4489 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_449, D.19391
	movq	-88(%rbp), %rdx	# c, tmp554
	movslq	%edx, %rdx	# D.19386, D.19387
	addq	%rdx, %rdx	# D.19387
	addq	%rdx, %rax	# D.19387, D.19391
	movzwl	(%rax), %eax	# *_454, D.19392
	movzwl	%ax, %eax	# D.19392, D.19386
	andl	$256, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1730	#,
.L1753:
	.loc 1 4490 0 is_stmt 1 discriminator 1
	movzbl	43(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$1, %eax	#, D.19386
	.loc 1 4489 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1754	#,
	.loc 1 4490 0
	cmpq	$47, -88(%rbp)	#, c
	jbe	.L1755	#,
	.loc 1 4490 0 is_stmt 0 discriminator 1
	cmpq	$57, -88(%rbp)	#, c
	jbe	.L1730	#,
.L1755:
	.loc 1 4490 0 discriminator 2
	cmpq	$96, -88(%rbp)	#, c
	jbe	.L1756	#,
	.loc 1 4490 0 discriminator 1
	cmpq	$102, -88(%rbp)	#, c
	jbe	.L1730	#,
.L1756:
	.loc 1 4490 0 discriminator 2
	cmpq	$64, -88(%rbp)	#, c
	jbe	.L1754	#,
	.loc 1 4490 0 discriminator 1
	cmpq	$70, -88(%rbp)	#, c
	jbe	.L1730	#,
.L1754:
	.loc 1 4491 0 is_stmt 1 discriminator 2
	movzbl	43(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$2, %eax	#, D.19386
	.loc 1 4490 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1757	#,
	.loc 1 4491 0
	cmpq	$47, -88(%rbp)	#, c
	jbe	.L1758	#,
	.loc 1 4491 0 is_stmt 0 discriminator 2
	cmpq	$57, -88(%rbp)	#, c
	jbe	.L1757	#,
.L1758:
	.loc 1 4491 0 discriminator 1
	cmpq	$96, -88(%rbp)	#, c
	jbe	.L1759	#,
	.loc 1 4491 0 discriminator 2
	cmpq	$102, -88(%rbp)	#, c
	jbe	.L1757	#,
.L1759:
	.loc 1 4491 0 discriminator 1
	cmpq	$64, -88(%rbp)	#, c
	jbe	.L1730	#,
	cmpq	$70, -88(%rbp)	#, c
	ja	.L1730	#,
.L1757:
	.loc 1 4492 0 is_stmt 1 discriminator 1
	movzbl	43(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$4, %eax	#, D.19386
	.loc 1 4491 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1760	#,
	.loc 1 4492 0
	cmpq	$32, -88(%rbp)	#, c
	je	.L1730	#,
	.loc 1 4492 0 is_stmt 0 discriminator 1
	cmpq	$9, -88(%rbp)	#, c
	je	.L1730	#,
	cmpq	$10, -88(%rbp)	#, c
	je	.L1730	#,
	cmpq	$13, -88(%rbp)	#, c
	je	.L1730	#,
	cmpq	$12, -88(%rbp)	#, c
	je	.L1730	#,
	cmpq	$11, -88(%rbp)	#, c
	je	.L1730	#,
.L1760:
	.loc 1 4493 0 is_stmt 1 discriminator 1
	movzbl	43(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$8, %eax	#, D.19386
	.loc 1 4492 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1761	#,
	.loc 1 4493 0
	cmpq	$32, -88(%rbp)	#, c
	je	.L1761	#,
	.loc 1 4493 0 is_stmt 0 discriminator 1
	cmpq	$9, -88(%rbp)	#, c
	je	.L1761	#,
	cmpq	$10, -88(%rbp)	#, c
	je	.L1761	#,
	cmpq	$13, -88(%rbp)	#, c
	je	.L1761	#,
	cmpq	$12, -88(%rbp)	#, c
	je	.L1761	#,
	cmpq	$11, -88(%rbp)	#, c
	jne	.L1730	#,
.L1761:
	.loc 1 4494 0 is_stmt 1 discriminator 2
	movzbl	43(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$16, %eax	#, D.19386
	.loc 1 4493 0 discriminator 2
	testl	%eax, %eax	# D.19386
	je	.L1762	#,
	.loc 1 4494 0
	cmpq	$32, -88(%rbp)	#, c
	je	.L1730	#,
	.loc 1 4494 0 is_stmt 0 discriminator 1
	cmpq	$9, -88(%rbp)	#, c
	je	.L1730	#,
.L1762:
	.loc 1 4495 0 is_stmt 1 discriminator 1
	movzbl	43(%rbx), %eax	# MEM[(struct regnode_charclass_class *)n_31(D)].classflags, D.19385
	movsbl	%al, %eax	# D.19385, D.19386
	andl	$32, %eax	#, D.19386
	.loc 1 4494 0 discriminator 1
	testl	%eax, %eax	# D.19386
	je	.L1724	#,
	.loc 1 4495 0
	cmpq	$32, -88(%rbp)	#, c
	je	.L1724	#,
	.loc 1 4495 0 is_stmt 0 discriminator 1
	cmpq	$9, -88(%rbp)	#, c
	je	.L1724	#,
.L1730:
	.loc 1 4498 0 is_stmt 1
	movb	$1, -119(%rbp)	#, match
.L1724:
	.loc 1 4503 0
	movsbl	-117(%rbp), %eax	# flags, D.19386
	andl	$4, %eax	#, D.19386
	testl	%eax, %eax	# D.19386
	je	.L1763	#,
	.loc 1 4503 0 is_stmt 0 discriminator 1
	cmpb	$0, -119(%rbp)	#, match
	sete	%al	#, D.19394
	jmp	.L1764	#
.L1763:
	.loc 1 4503 0 discriminator 2
	movzbl	-119(%rbp), %eax	# match, iftmp.1169
.L1764:
	.loc 1 4504 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rsi	# D.19396, tmp557
	xorq	%fs:40, %rsi	#, tmp557
	je	.L1766	#,
	.loc 1 4504 0 is_stmt 0
	call	__stack_chk_fail	#
.L1766:
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	S_reginclass, .-S_reginclass
	.type	S_reghop, @function
S_reghop:
.LFB16:
	.loc 1 4508 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# off, off
	.loc 1 4509 0
	cmpl	$0, -12(%rbp)	#, off
	js	.L1768	#,
	.loc 1 4509 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, iftmp.1170
	jmp	.L1769	#
.L1768:
	.loc 1 4509 0 discriminator 2
	movq	PL_bostr(%rip), %rax	# PL_bostr, iftmp.1170
.L1769:
	.loc 1 4509 0 discriminator 3
	movl	-12(%rbp), %esi	# off, tmp62
	movq	-8(%rbp), %rcx	# s, tmp63
	movq	%rax, %rdx	# iftmp.1170,
	movq	%rcx, %rdi	# tmp63,
	call	S_reghop3	#
	.loc 1 4510 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	S_reghop, .-S_reghop
	.type	S_reghop3, @function
S_reghop3:
.LFB17:
	.loc 1 4514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# off, off
	movq	%rdx, -24(%rbp)	# lim, lim
	.loc 1 4515 0
	cmpl	$0, -12(%rbp)	#, off
	js	.L1772	#,
	.loc 1 4516 0
	jmp	.L1773	#
.L1775:
	.loc 1 4518 0
	movq	-8(%rbp), %rax	# s, tmp72
	movzbl	(%rax), %eax	# *s_1, D.19399
	movzbl	%al, %eax	# D.19399, D.19400
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19399
	movzbl	%al, %eax	# D.19399, D.19401
	addq	%rax, -8(%rbp)	# D.19401, s
.L1773:
	.loc 1 4516 0 discriminator 1
	movl	-12(%rbp), %eax	# off, off.1171
	leal	-1(%rax), %edx	#, tmp74
	movl	%edx, -12(%rbp)	# tmp74, off
	testl	%eax, %eax	# off.1171
	je	.L1774	#,
	.loc 1 4516 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp75
	cmpq	-24(%rbp), %rax	# lim, tmp75
	jb	.L1775	#,
	jmp	.L1774	#
.L1772:
	.loc 1 4522 0 is_stmt 1
	jmp	.L1776	#
.L1779:
	.loc 1 4523 0
	movq	-8(%rbp), %rax	# s, tmp76
	cmpq	-24(%rbp), %rax	# lim, tmp76
	jbe	.L1776	#,
	.loc 1 4524 0
	subq	$1, -8(%rbp)	#, s
	.loc 1 4525 0
	movq	-8(%rbp), %rax	# s, tmp77
	movzbl	(%rax), %eax	# *s_19, D.19399
	testb	%al, %al	# D.19402
	jns	.L1776	#,
	.loc 1 4526 0
	jmp	.L1777	#
.L1778:
	.loc 1 4527 0
	subq	$1, -8(%rbp)	#, s
.L1777:
	.loc 1 4526 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp78
	cmpq	-24(%rbp), %rax	# lim, tmp78
	jbe	.L1776	#,
	.loc 1 4526 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp79
	movzbl	(%rax), %eax	# *s_2, D.19399
	testb	%al, %al	# D.19402
	jns	.L1776	#,
	.loc 1 4526 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp80
	movzbl	(%rax), %eax	# *s_2, D.19399
	cmpb	$-65, %al	#, D.19399
	jbe	.L1778	#,
.L1776:
	.loc 1 4522 0 is_stmt 1 discriminator 1
	movl	-12(%rbp), %eax	# off, off.1172
	leal	1(%rax), %edx	#, tmp81
	movl	%edx, -12(%rbp)	# tmp81, off
	testl	%eax, %eax	# off.1172
	jne	.L1779	#,
.L1774:
	.loc 1 4533 0
	movq	-8(%rbp), %rax	# s, D.19403
	.loc 1 4534 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	S_reghop3, .-S_reghop3
	.type	S_reghopmaybe, @function
S_reghopmaybe:
.LFB18:
	.loc 1 4538 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# off, off
	.loc 1 4539 0
	cmpl	$0, -12(%rbp)	#, off
	js	.L1782	#,
	.loc 1 4539 0 is_stmt 0 discriminator 1
	movq	PL_regeol(%rip), %rax	# PL_regeol, iftmp.1173
	jmp	.L1783	#
.L1782:
	.loc 1 4539 0 discriminator 2
	movq	PL_bostr(%rip), %rax	# PL_bostr, iftmp.1173
.L1783:
	.loc 1 4539 0 discriminator 3
	movl	-12(%rbp), %esi	# off, tmp62
	movq	-8(%rbp), %rcx	# s, tmp63
	movq	%rax, %rdx	# iftmp.1173,
	movq	%rcx, %rdi	# tmp63,
	call	S_reghopmaybe3	#
	.loc 1 4540 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	S_reghopmaybe, .-S_reghopmaybe
	.type	S_reghopmaybe3, @function
S_reghopmaybe3:
.LFB19:
	.loc 1 4544 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# off, off
	movq	%rdx, -24(%rbp)	# lim, lim
	.loc 1 4545 0
	cmpl	$0, -12(%rbp)	#, off
	js	.L1786	#,
	.loc 1 4546 0
	jmp	.L1787	#
.L1789:
	.loc 1 4548 0
	movq	-8(%rbp), %rax	# s, tmp72
	movzbl	(%rax), %eax	# *s_1, D.19406
	movzbl	%al, %eax	# D.19406, D.19407
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19406
	movzbl	%al, %eax	# D.19406, D.19408
	addq	%rax, -8(%rbp)	# D.19408, s
.L1787:
	.loc 1 4546 0 discriminator 1
	movl	-12(%rbp), %eax	# off, off.1174
	leal	-1(%rax), %edx	#, tmp74
	movl	%edx, -12(%rbp)	# tmp74, off
	testl	%eax, %eax	# off.1174
	je	.L1788	#,
	.loc 1 4546 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp75
	cmpq	-24(%rbp), %rax	# lim, tmp75
	jb	.L1789	#,
.L1788:
	.loc 1 4550 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, off
	js	.L1790	#,
	.loc 1 4551 0
	movl	$0, %eax	#, D.19405
	jmp	.L1791	#
.L1786:
	.loc 1 4554 0
	jmp	.L1792	#
.L1797:
	.loc 1 4555 0
	movq	-8(%rbp), %rax	# s, tmp76
	cmpq	-24(%rbp), %rax	# lim, tmp76
	jbe	.L1793	#,
	.loc 1 4556 0
	subq	$1, -8(%rbp)	#, s
	.loc 1 4557 0
	movq	-8(%rbp), %rax	# s, tmp77
	movzbl	(%rax), %eax	# *s_21, D.19406
	testb	%al, %al	# D.19409
	jns	.L1792	#,
	.loc 1 4558 0
	jmp	.L1794	#
.L1795:
	.loc 1 4559 0
	subq	$1, -8(%rbp)	#, s
.L1794:
	.loc 1 4558 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp78
	cmpq	-24(%rbp), %rax	# lim, tmp78
	jbe	.L1792	#,
	.loc 1 4558 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp79
	movzbl	(%rax), %eax	# *s_2, D.19406
	testb	%al, %al	# D.19409
	jns	.L1792	#,
	.loc 1 4558 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp80
	movzbl	(%rax), %eax	# *s_2, D.19406
	cmpb	$-65, %al	#, D.19406
	jbe	.L1795	#,
	jmp	.L1792	#
.L1793:
	.loc 1 4564 0 is_stmt 1
	jmp	.L1796	#
.L1792:
	.loc 1 4554 0 discriminator 1
	movl	-12(%rbp), %eax	# off, off.1175
	leal	1(%rax), %edx	#, tmp81
	movl	%edx, -12(%rbp)	# tmp81, off
	testl	%eax, %eax	# off.1175
	jne	.L1797	#,
.L1796:
	.loc 1 4566 0
	cmpl	$0, -12(%rbp)	#, off
	jg	.L1790	#,
	.loc 1 4567 0
	movl	$0, %eax	#, D.19405
	jmp	.L1791	#
.L1790:
	.loc 1 4569 0
	movq	-8(%rbp), %rax	# s, D.19405
.L1791:
	.loc 1 4570 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	S_reghopmaybe3, .-S_reghopmaybe3
	.type	restore_pos, @function
restore_pos:
.LFB20:
	.loc 1 4574 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg, arg
	.loc 1 4575 0
	movl	PL_reg_eval_set(%rip), %eax	# PL_reg_eval_set, PL_reg_eval_set.1176
	testl	%eax, %eax	# PL_reg_eval_set.1176
	je	.L1798	#,
	.loc 1 4576 0
	movq	PL_reg_oldsaved(%rip), %rax	# PL_reg_oldsaved, PL_reg_oldsaved.1177
	testq	%rax, %rax	# PL_reg_oldsaved.1177
	je	.L1800	#,
	.loc 1 4577 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, PL_reg_re.1178
	movq	PL_reg_oldsaved(%rip), %rdx	# PL_reg_oldsaved, PL_reg_oldsaved.1179
	movq	%rdx, 48(%rax)	# PL_reg_oldsaved.1179, PL_reg_re.1178_3->subbeg
	.loc 1 4578 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, PL_reg_re.1180
	movq	PL_reg_oldsavedlen(%rip), %rdx	# PL_reg_oldsavedlen, PL_reg_oldsavedlen.1181
	movl	%edx, 64(%rax)	# D.19410, PL_reg_re.1180_5->sublen
	.loc 1 4579 0
	movq	PL_reg_re(%rip), %rax	# PL_reg_re, PL_reg_re.1182
	movq	PL_reg_re(%rip), %rdx	# PL_reg_re, PL_reg_re.1183
	movl	92(%rdx), %edx	# PL_reg_re.1183_9->reganch, D.19411
	orl	$262144, %edx	#, D.19411
	movl	%edx, 92(%rax)	# D.19411, PL_reg_re.1182_8->reganch
.L1800:
	.loc 1 4581 0
	movq	PL_reg_magic(%rip), %rax	# PL_reg_magic, PL_reg_magic.1184
	movl	PL_reg_oldpos(%rip), %edx	# PL_reg_oldpos, PL_reg_oldpos.1185
	movl	%edx, 40(%rax)	# PL_reg_oldpos.1185, PL_reg_magic.1184_12->mg_len
	.loc 1 4582 0
	movl	$0, PL_reg_eval_set(%rip)	#, PL_reg_eval_set
	.loc 1 4583 0
	movq	PL_reg_oldcurpm(%rip), %rax	# PL_reg_oldcurpm, PL_reg_oldcurpm.1186
	movq	%rax, PL_curpm(%rip)	# PL_reg_oldcurpm.1186, PL_curpm
.L1798:
	.loc 1 4585 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	restore_pos, .-restore_pos
	.type	S_to_utf8_substr, @function
S_to_utf8_substr:
.LFB21:
	.loc 1 4589 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# prog, prog
	.loc 1 4591 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	32(%rax), %rax	# _2->data[1].substr, D.19413
	testq	%rax, %rax	# D.19413
	je	.L1802	#,
	.loc 1 4591 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	40(%rax), %rax	# _4->data[1].utf8_substr, D.19413
	testq	%rax, %rax	# D.19413
	jne	.L1802	#,
	.loc 1 4592 0 is_stmt 1
	movq	24(%rbx), %r12	# prog_1(D)->substrs, D.19412
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	32(%rax), %rax	# _7->data[1].substr, D.19413
	movq	%rax, %rdi	# D.19413,
	call	Perl_newSVsv	#
	movq	%rax, -24(%rbp)	# tmp96, sv
	movq	-24(%rbp), %rax	# sv, tmp97
	movq	%rax, 40(%r12)	# tmp97, _6->data[1].utf8_substr
	.loc 1 4593 0
	movq	-24(%rbp), %rax	# sv, tmp98
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 1 4594 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	32(%rax), %rax	# _10->data[1].substr, D.19413
	movl	12(%rax), %eax	# _11->sv_flags, D.19414
	andl	$1073741824, %eax	#, D.19414
	testl	%eax, %eax	# D.19414
	je	.L1803	#,
	.loc 1 4595 0
	movq	-24(%rbp), %rax	# sv, tmp99
	movl	12(%rax), %eax	# sv_9->sv_flags, D.19414
	orl	$1073741824, %eax	#, D.19414
	movl	%eax, %edx	# D.19414, D.19414
	movq	-24(%rbp), %rax	# sv, tmp100
	movl	%edx, 12(%rax)	# D.19414, sv_9->sv_flags
.L1803:
	.loc 1 4596 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	32(%rax), %rdx	# _16->data[1].substr, D.19413
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	56(%rax), %rax	# _18->data[2].substr, D.19413
	cmpq	%rax, %rdx	# D.19413, D.19413
	jne	.L1802	#,
	.loc 1 4597 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	-24(%rbp), %rdx	# sv, tmp101
	movq	%rdx, 64(%rax)	# tmp101, _20->data[2].utf8_substr
.L1802:
	.loc 1 4599 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	8(%rax), %rax	# _21->data[0].substr, D.19413
	testq	%rax, %rax	# D.19413
	je	.L1801	#,
	.loc 1 4599 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	16(%rax), %rax	# _23->data[0].utf8_substr, D.19413
	testq	%rax, %rax	# D.19413
	jne	.L1801	#,
	.loc 1 4600 0 is_stmt 1
	movq	24(%rbx), %r12	# prog_1(D)->substrs, D.19412
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	8(%rax), %rax	# _26->data[0].substr, D.19413
	movq	%rax, %rdi	# D.19413,
	call	Perl_newSVsv	#
	movq	%rax, -24(%rbp)	# tmp102, sv
	movq	-24(%rbp), %rax	# sv, tmp103
	movq	%rax, 16(%r12)	# tmp103, _25->data[0].utf8_substr
	.loc 1 4601 0
	movq	-24(%rbp), %rax	# sv, tmp104
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 1 4602 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	8(%rax), %rax	# _29->data[0].substr, D.19413
	movl	12(%rax), %eax	# _30->sv_flags, D.19414
	andl	$1073741824, %eax	#, D.19414
	testl	%eax, %eax	# D.19414
	je	.L1805	#,
	.loc 1 4603 0
	movq	-24(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_28->sv_flags, D.19414
	orl	$1073741824, %eax	#, D.19414
	movl	%eax, %edx	# D.19414, D.19414
	movq	-24(%rbp), %rax	# sv, tmp106
	movl	%edx, 12(%rax)	# D.19414, sv_28->sv_flags
.L1805:
	.loc 1 4604 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	8(%rax), %rdx	# _35->data[0].substr, D.19413
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	56(%rax), %rax	# _37->data[2].substr, D.19413
	cmpq	%rax, %rdx	# D.19413, D.19413
	jne	.L1801	#,
	.loc 1 4605 0
	movq	24(%rbx), %rax	# prog_1(D)->substrs, D.19412
	movq	-24(%rbp), %rdx	# sv, tmp107
	movq	%rdx, 64(%rax)	# tmp107, _39->data[2].utf8_substr
.L1801:
	.loc 1 4607 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	S_to_utf8_substr, .-S_to_utf8_substr
	.type	S_to_byte_substr, @function
S_to_byte_substr:
.LFB22:
	.loc 1 4611 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# prog, prog
	.loc 1 4613 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	40(%rax), %rax	# _4->data[1].utf8_substr, D.19416
	testq	%rax, %rax	# D.19416
	je	.L1807	#,
	.loc 1 4613 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	32(%rax), %rax	# _6->data[1].substr, D.19416
	testq	%rax, %rax	# D.19416
	jne	.L1807	#,
	.loc 1 4614 0 is_stmt 1
	movq	24(%rbx), %r12	# prog_3(D)->substrs, D.19415
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	40(%rax), %rax	# _9->data[1].utf8_substr, D.19416
	movq	%rax, %rdi	# D.19416,
	call	Perl_newSVsv	#
	movq	%rax, -24(%rbp)	# tmp100, sv
	movq	-24(%rbp), %rax	# sv, tmp101
	movq	%rax, 32(%r12)	# tmp101, _8->data[1].substr
	.loc 1 4615 0
	movq	-24(%rbp), %rax	# sv, tmp102
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	Perl_sv_utf8_downgrade	#
	testb	%al, %al	# D.19417
	je	.L1808	#,
	.loc 1 4616 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	40(%rax), %rax	# _13->data[1].utf8_substr, D.19416
	movl	12(%rax), %eax	# _14->sv_flags, D.19418
	andl	$1073741824, %eax	#, D.19418
	testl	%eax, %eax	# D.19418
	je	.L1810	#,
	.loc 1 4617 0
	movq	-24(%rbp), %rax	# sv, tmp103
	movl	12(%rax), %eax	# sv_11->sv_flags, D.19418
	orl	$1073741824, %eax	#, D.19418
	movl	%eax, %edx	# D.19418, D.19418
	movq	-24(%rbp), %rax	# sv, tmp104
	movl	%edx, 12(%rax)	# D.19418, sv_11->sv_flags
	jmp	.L1810	#
.L1808:
	.loc 1 4619 0
	movq	-24(%rbp), %rax	# sv, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_sv_free	#
	.loc 1 4620 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	$PL_sv_undef, -24(%rbp)	#, sv
	movq	-24(%rbp), %rdx	# sv, tmp106
	movq	%rdx, 32(%rax)	# tmp106, _19->data[1].substr
.L1810:
	.loc 1 4622 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	40(%rax), %rdx	# _21->data[1].utf8_substr, D.19416
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	64(%rax), %rax	# _23->data[2].utf8_substr, D.19416
	cmpq	%rax, %rdx	# D.19416, D.19416
	jne	.L1807	#,
	.loc 1 4623 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	-24(%rbp), %rdx	# sv, tmp107
	movq	%rdx, 56(%rax)	# tmp107, _25->data[2].substr
.L1807:
	.loc 1 4625 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	16(%rax), %rax	# _26->data[0].utf8_substr, D.19416
	testq	%rax, %rax	# D.19416
	je	.L1806	#,
	.loc 1 4625 0 is_stmt 0 discriminator 1
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	8(%rax), %rax	# _28->data[0].substr, D.19416
	testq	%rax, %rax	# D.19416
	jne	.L1806	#,
	.loc 1 4626 0 is_stmt 1
	movq	24(%rbx), %r12	# prog_3(D)->substrs, D.19415
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	16(%rax), %rax	# _31->data[0].utf8_substr, D.19416
	movq	%rax, %rdi	# D.19416,
	call	Perl_newSVsv	#
	movq	%rax, -24(%rbp)	# tmp108, sv
	movq	-24(%rbp), %rax	# sv, tmp109
	movq	%rax, 8(%r12)	# tmp109, _30->data[0].substr
	.loc 1 4627 0
	movq	-24(%rbp), %rax	# sv, tmp110
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_utf8_downgrade	#
	testb	%al, %al	# D.19417
	je	.L1812	#,
	.loc 1 4628 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	16(%rax), %rax	# _35->data[0].utf8_substr, D.19416
	movl	12(%rax), %eax	# _36->sv_flags, D.19418
	andl	$1073741824, %eax	#, D.19418
	testl	%eax, %eax	# D.19418
	je	.L1814	#,
	.loc 1 4629 0
	movq	-24(%rbp), %rax	# sv, tmp111
	movl	12(%rax), %eax	# sv_33->sv_flags, D.19418
	orl	$1073741824, %eax	#, D.19418
	movl	%eax, %edx	# D.19418, D.19418
	movq	-24(%rbp), %rax	# sv, tmp112
	movl	%edx, 12(%rax)	# D.19418, sv_33->sv_flags
	jmp	.L1814	#
.L1812:
	.loc 1 4631 0
	movq	-24(%rbp), %rax	# sv, tmp113
	movq	%rax, %rdi	# tmp113,
	call	Perl_sv_free	#
	.loc 1 4632 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	$PL_sv_undef, -24(%rbp)	#, sv
	movq	-24(%rbp), %rdx	# sv, tmp114
	movq	%rdx, 8(%rax)	# tmp114, _41->data[0].substr
.L1814:
	.loc 1 4634 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	16(%rax), %rdx	# _43->data[0].utf8_substr, D.19416
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	64(%rax), %rax	# _45->data[2].utf8_substr, D.19416
	cmpq	%rax, %rdx	# D.19416, D.19416
	jne	.L1806	#,
	.loc 1 4635 0
	movq	24(%rbx), %rax	# prog_3(D)->substrs, D.19415
	movq	-24(%rbp), %rdx	# sv, tmp115
	movq	%rdx, 56(%rax)	# tmp115, _47->data[2].substr
.L1806:
	.loc 1 4637 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	S_to_byte_substr, .-S_to_byte_substr
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "cop.h"
	.file 9 "sv.h"
	.file 10 "regexp.h"
	.file 11 "gv.h"
	.file 12 "mg.h"
	.file 13 "av.h"
	.file 14 "hv.h"
	.file 15 "cv.h"
	.file 16 "handy.h"
	.file 17 "perlio.h"
	.file 18 "regcomp.h"
	.file 19 "/usr/include/ctype.h"
	.file 20 "pad.h"
	.file 21 "utf8.h"
	.file 22 "intrpvar.h"
	.file 23 "thrdvar.h"
	.file 24 "regnodes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3785
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF553
	.byte	0x1
	.long	.LASF554
	.long	.LASF555
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
	.long	0x7f
	.long	0xac
	.uleb128 0x8
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x7
	.long	0x7f
	.long	0xca
	.uleb128 0x8
	.long	0x65
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x13
	.byte	0x30
	.long	0x126
	.uleb128 0xa
	.long	.LASF14
	.sleb128 256
	.uleb128 0xa
	.long	.LASF15
	.sleb128 512
	.uleb128 0xa
	.long	.LASF16
	.sleb128 1024
	.uleb128 0xa
	.long	.LASF17
	.sleb128 2048
	.uleb128 0xa
	.long	.LASF18
	.sleb128 4096
	.uleb128 0xa
	.long	.LASF19
	.sleb128 8192
	.uleb128 0xa
	.long	.LASF20
	.sleb128 16384
	.uleb128 0xa
	.long	.LASF21
	.sleb128 32768
	.uleb128 0xa
	.long	.LASF22
	.sleb128 1
	.uleb128 0xa
	.long	.LASF23
	.sleb128 2
	.uleb128 0xa
	.long	.LASF24
	.sleb128 4
	.uleb128 0xa
	.long	.LASF25
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12c
	.uleb128 0xb
	.long	0x7f
	.uleb128 0xc
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0x13c
	.uleb128 0xd
	.long	.LASF216
	.uleb128 0xe
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xe
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xe
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0x162
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF26
	.uleb128 0xf
	.long	.LASF27
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xe
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x180
	.uleb128 0x10
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x1ec
	.uleb128 0x11
	.long	.LASF28
	.byte	0x7
	.byte	0xe3
	.long	0x1132
	.byte	0
	.uleb128 0x11
	.long	.LASF29
	.byte	0x7
	.byte	0xe3
	.long	0x1132
	.byte	0x8
	.uleb128 0x11
	.long	.LASF30
	.byte	0x7
	.byte	0xe3
	.long	0x11c1
	.byte	0x10
	.uleb128 0x11
	.long	.LASF31
	.byte	0x7
	.byte	0xe3
	.long	0x11ab
	.byte	0x18
	.uleb128 0x11
	.long	.LASF32
	.byte	0x7
	.byte	0xe3
	.long	0xf53
	.byte	0x20
	.uleb128 0x11
	.long	.LASF33
	.byte	0x7
	.byte	0xe3
	.long	0xf53
	.byte	0x22
	.uleb128 0x11
	.long	.LASF34
	.byte	0x7
	.byte	0xe3
	.long	0xf49
	.byte	0x24
	.uleb128 0x11
	.long	.LASF35
	.byte	0x7
	.byte	0xe3
	.long	0xf49
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x1f8
	.uleb128 0x10
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x2c5
	.uleb128 0x11
	.long	.LASF28
	.byte	0x8
	.byte	0x11
	.long	0x1132
	.byte	0
	.uleb128 0x11
	.long	.LASF29
	.byte	0x8
	.byte	0x11
	.long	0x1132
	.byte	0x8
	.uleb128 0x11
	.long	.LASF30
	.byte	0x8
	.byte	0x11
	.long	0x11c1
	.byte	0x10
	.uleb128 0x11
	.long	.LASF31
	.byte	0x8
	.byte	0x11
	.long	0x11ab
	.byte	0x18
	.uleb128 0x11
	.long	.LASF32
	.byte	0x8
	.byte	0x11
	.long	0xf53
	.byte	0x20
	.uleb128 0x11
	.long	.LASF33
	.byte	0x8
	.byte	0x11
	.long	0xf53
	.byte	0x22
	.uleb128 0x11
	.long	.LASF34
	.byte	0x8
	.byte	0x11
	.long	0xf49
	.byte	0x24
	.uleb128 0x11
	.long	.LASF35
	.byte	0x8
	.byte	0x11
	.long	0xf49
	.byte	0x25
	.uleb128 0x11
	.long	.LASF36
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0x11
	.long	.LASF37
	.byte	0x8
	.byte	0x17
	.long	0x111a
	.byte	0x30
	.uleb128 0x11
	.long	.LASF38
	.byte	0x8
	.byte	0x18
	.long	0x114f
	.byte	0x38
	.uleb128 0x11
	.long	.LASF39
	.byte	0x8
	.byte	0x1a
	.long	0xf69
	.byte	0x40
	.uleb128 0x11
	.long	.LASF40
	.byte	0x8
	.byte	0x1b
	.long	0xf5e
	.byte	0x44
	.uleb128 0x11
	.long	.LASF41
	.byte	0x8
	.byte	0x1c
	.long	0xf74
	.byte	0x48
	.uleb128 0x11
	.long	.LASF42
	.byte	0x8
	.byte	0x1d
	.long	0xf91
	.byte	0x50
	.uleb128 0x11
	.long	.LASF43
	.byte	0x8
	.byte	0x1e
	.long	0xf91
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF44
	.byte	0x6
	.value	0x7db
	.long	0x2d1
	.uleb128 0x12
	.long	.LASF45
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x3bf
	.uleb128 0x11
	.long	.LASF28
	.byte	0x7
	.byte	0xfe
	.long	0x1132
	.byte	0
	.uleb128 0x11
	.long	.LASF29
	.byte	0x7
	.byte	0xfe
	.long	0x1132
	.byte	0x8
	.uleb128 0x11
	.long	.LASF30
	.byte	0x7
	.byte	0xfe
	.long	0x11c1
	.byte	0x10
	.uleb128 0x11
	.long	.LASF31
	.byte	0x7
	.byte	0xfe
	.long	0x11ab
	.byte	0x18
	.uleb128 0x11
	.long	.LASF32
	.byte	0x7
	.byte	0xfe
	.long	0xf53
	.byte	0x20
	.uleb128 0x11
	.long	.LASF33
	.byte	0x7
	.byte	0xfe
	.long	0xf53
	.byte	0x22
	.uleb128 0x11
	.long	.LASF34
	.byte	0x7
	.byte	0xfe
	.long	0xf49
	.byte	0x24
	.uleb128 0x11
	.long	.LASF35
	.byte	0x7
	.byte	0xfe
	.long	0xf49
	.byte	0x25
	.uleb128 0x11
	.long	.LASF46
	.byte	0x7
	.byte	0xff
	.long	0x1132
	.byte	0x28
	.uleb128 0x13
	.long	.LASF47
	.byte	0x7
	.value	0x100
	.long	0x1132
	.byte	0x30
	.uleb128 0x13
	.long	.LASF48
	.byte	0x7
	.value	0x101
	.long	0x1132
	.byte	0x38
	.uleb128 0x13
	.long	.LASF49
	.byte	0x7
	.value	0x102
	.long	0x1132
	.byte	0x40
	.uleb128 0x13
	.long	.LASF50
	.byte	0x7
	.value	0x103
	.long	0x11c7
	.byte	0x48
	.uleb128 0x13
	.long	.LASF51
	.byte	0x7
	.value	0x107
	.long	0x11cd
	.byte	0x50
	.uleb128 0x13
	.long	.LASF52
	.byte	0x7
	.value	0x109
	.long	0xf69
	.byte	0x58
	.uleb128 0x13
	.long	.LASF53
	.byte	0x7
	.value	0x10a
	.long	0xf69
	.byte	0x5c
	.uleb128 0x13
	.long	.LASF54
	.byte	0x7
	.value	0x10b
	.long	0xf49
	.byte	0x60
	.uleb128 0x13
	.long	.LASF55
	.byte	0x7
	.value	0x10f
	.long	0x111a
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.long	.LASF56
	.byte	0x6
	.value	0x7e1
	.long	0x3cb
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x3e6
	.uleb128 0x13
	.long	.LASF58
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x3f1
	.uleb128 0x10
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x421
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.byte	0x45
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.byte	0x46
	.long	0xf69
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x42c
	.uleb128 0x10
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x45c
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.byte	0x56
	.long	0x1102
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.byte	0x57
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.byte	0x58
	.long	0xf69
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x467
	.uleb128 0x10
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x497
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.byte	0x5c
	.long	0x1108
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.byte	0x5d
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.byte	0x5e
	.long	0xf69
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x4a2
	.uleb128 0x10
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x4d2
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.byte	0x50
	.long	0x10fc
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.byte	0x51
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.byte	0x52
	.long	0xf69
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF62
	.byte	0x6
	.value	0x7ee
	.long	0x4de
	.uleb128 0x12
	.long	.LASF63
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x5b7
	.uleb128 0x11
	.long	.LASF64
	.byte	0xa
	.byte	0x20
	.long	0x1004
	.byte	0
	.uleb128 0x11
	.long	.LASF65
	.byte	0xa
	.byte	0x21
	.long	0x1004
	.byte	0x8
	.uleb128 0x11
	.long	.LASF66
	.byte	0xa
	.byte	0x22
	.long	0x100a
	.byte	0x10
	.uleb128 0x11
	.long	.LASF67
	.byte	0xa
	.byte	0x23
	.long	0x102b
	.byte	0x18
	.uleb128 0x11
	.long	.LASF68
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0x11
	.long	.LASF69
	.byte	0xa
	.byte	0x25
	.long	0x1066
	.byte	0x28
	.uleb128 0x11
	.long	.LASF70
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0x11
	.long	.LASF71
	.byte	0xa
	.byte	0x28
	.long	0x106c
	.byte	0x38
	.uleb128 0x11
	.long	.LASF72
	.byte	0xa
	.byte	0x29
	.long	0xf5e
	.byte	0x40
	.uleb128 0x11
	.long	.LASF73
	.byte	0xa
	.byte	0x2a
	.long	0xf5e
	.byte	0x44
	.uleb128 0x11
	.long	.LASF74
	.byte	0xa
	.byte	0x2b
	.long	0xf5e
	.byte	0x48
	.uleb128 0x11
	.long	.LASF75
	.byte	0xa
	.byte	0x2c
	.long	0xf5e
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF76
	.byte	0xa
	.byte	0x2d
	.long	0xf69
	.byte	0x50
	.uleb128 0x11
	.long	.LASF77
	.byte	0xa
	.byte	0x2e
	.long	0xf69
	.byte	0x54
	.uleb128 0x11
	.long	.LASF78
	.byte	0xa
	.byte	0x2f
	.long	0xf69
	.byte	0x58
	.uleb128 0x11
	.long	.LASF79
	.byte	0xa
	.byte	0x30
	.long	0xf69
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF80
	.byte	0xa
	.byte	0x32
	.long	0x1072
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x5c2
	.uleb128 0x10
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x65e
	.uleb128 0x11
	.long	.LASF81
	.byte	0xb
	.byte	0xc
	.long	0xf91
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0xb
	.byte	0xd
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF83
	.byte	0xb
	.byte	0xe
	.long	0x118f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF84
	.byte	0xb
	.byte	0xf
	.long	0x1143
	.byte	0x18
	.uleb128 0x11
	.long	.LASF85
	.byte	0xb
	.byte	0x10
	.long	0x1155
	.byte	0x20
	.uleb128 0x11
	.long	.LASF86
	.byte	0xb
	.byte	0x11
	.long	0x111a
	.byte	0x28
	.uleb128 0x11
	.long	.LASF87
	.byte	0xb
	.byte	0x12
	.long	0x114f
	.byte	0x30
	.uleb128 0x11
	.long	.LASF88
	.byte	0xb
	.byte	0x13
	.long	0x1143
	.byte	0x38
	.uleb128 0x11
	.long	.LASF89
	.byte	0xb
	.byte	0x14
	.long	0xf69
	.byte	0x40
	.uleb128 0x11
	.long	.LASF90
	.byte	0xb
	.byte	0x15
	.long	0xf69
	.byte	0x44
	.uleb128 0x11
	.long	.LASF91
	.byte	0xb
	.byte	0x16
	.long	0xf74
	.byte	0x48
	.uleb128 0x11
	.long	.LASF92
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x669
	.uleb128 0x10
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x699
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.byte	0x4a
	.long	0x10f6
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.byte	0x4b
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.byte	0x4c
	.long	0xf69
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x6c9
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.byte	0x62
	.long	0x110e
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.byte	0x63
	.long	0xf69
	.byte	0x8
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.byte	0x64
	.long	0xf69
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x6
	.value	0x7f2
	.long	0x6d5
	.uleb128 0x14
	.long	.LASF94
	.byte	0x90
	.byte	0x8
	.value	0x1a2
	.long	0x6fd
	.uleb128 0x13
	.long	.LASF95
	.byte	0x8
	.value	0x1a3
	.long	0xf69
	.byte	0
	.uleb128 0x13
	.long	.LASF96
	.byte	0x8
	.value	0x1a7
	.long	0x1434
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF97
	.byte	0x88
	.byte	0x8
	.value	0x130
	.long	0x773
	.uleb128 0x13
	.long	.LASF98
	.byte	0x8
	.value	0x131
	.long	0xf5e
	.byte	0
	.uleb128 0x13
	.long	.LASF99
	.byte	0x8
	.value	0x132
	.long	0x136a
	.byte	0x8
	.uleb128 0x13
	.long	.LASF100
	.byte	0x8
	.value	0x133
	.long	0xf5e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF101
	.byte	0x8
	.value	0x134
	.long	0xf5e
	.byte	0x14
	.uleb128 0x13
	.long	.LASF102
	.byte	0x8
	.value	0x135
	.long	0xf5e
	.byte	0x18
	.uleb128 0x13
	.long	.LASF103
	.byte	0x8
	.value	0x136
	.long	0x11c7
	.byte	0x20
	.uleb128 0x13
	.long	.LASF104
	.byte	0x8
	.value	0x137
	.long	0xf49
	.byte	0x28
	.uleb128 0x13
	.long	.LASF105
	.byte	0x8
	.value	0x13d
	.long	0x133c
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x6
	.value	0x7f5
	.long	0x77f
	.uleb128 0x12
	.long	.LASF107
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x7ec
	.uleb128 0x11
	.long	.LASF108
	.byte	0xc
	.byte	0x1b
	.long	0x1114
	.byte	0
	.uleb128 0x11
	.long	.LASF109
	.byte	0xc
	.byte	0x1c
	.long	0x15e3
	.byte	0x8
	.uleb128 0x11
	.long	.LASF110
	.byte	0xc
	.byte	0x1d
	.long	0xf53
	.byte	0x10
	.uleb128 0x11
	.long	.LASF111
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0x11
	.long	.LASF112
	.byte	0xc
	.byte	0x1f
	.long	0xf49
	.byte	0x13
	.uleb128 0x11
	.long	.LASF113
	.byte	0xc
	.byte	0x20
	.long	0xf91
	.byte	0x18
	.uleb128 0x11
	.long	.LASF114
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0x11
	.long	.LASF115
	.byte	0xc
	.byte	0x22
	.long	0xf5e
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x7f8
	.uleb128 0x10
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x811
	.uleb128 0x11
	.long	.LASF116
	.byte	0x9
	.byte	0xf6
	.long	0xf91
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x81d
	.uleb128 0x10
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x84e
	.uleb128 0x11
	.long	.LASF117
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF118
	.byte	0x9
	.byte	0xfb
	.long	0x169
	.byte	0x8
	.uleb128 0x11
	.long	.LASF119
	.byte	0x9
	.byte	0xfc
	.long	0x169
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF120
	.byte	0x6
	.value	0x7f8
	.long	0x85a
	.uleb128 0x12
	.long	.LASF121
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x89b
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x9
	.value	0x101
	.long	0x169
	.byte	0x8
	.uleb128 0x13
	.long	.LASF119
	.byte	0x9
	.value	0x102
	.long	0x169
	.byte	0x10
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x103
	.long	0x141
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF123
	.byte	0x6
	.value	0x7fa
	.long	0x8a7
	.uleb128 0x14
	.long	.LASF124
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x8f6
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x9
	.value	0x10f
	.long	0x169
	.byte	0x8
	.uleb128 0x13
	.long	.LASF119
	.byte	0x9
	.value	0x110
	.long	0x169
	.byte	0x10
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x111
	.long	0x141
	.byte	0x18
	.uleb128 0x13
	.long	.LASF125
	.byte	0x9
	.value	0x112
	.long	0x157
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF126
	.byte	0x6
	.value	0x7fb
	.long	0x902
	.uleb128 0x14
	.long	.LASF127
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x96b
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x9
	.value	0x118
	.long	0x169
	.byte	0x8
	.uleb128 0x13
	.long	.LASF119
	.byte	0x9
	.value	0x119
	.long	0x169
	.byte	0x10
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x11a
	.long	0x141
	.byte	0x18
	.uleb128 0x13
	.long	.LASF125
	.byte	0x9
	.value	0x11b
	.long	0x157
	.byte	0x20
	.uleb128 0x13
	.long	.LASF128
	.byte	0x9
	.value	0x11c
	.long	0x1114
	.byte	0x28
	.uleb128 0x13
	.long	.LASF129
	.byte	0x9
	.value	0x11d
	.long	0x111a
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF130
	.byte	0x6
	.value	0x7fd
	.long	0x977
	.uleb128 0x12
	.long	.LASF131
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x9fc
	.uleb128 0x11
	.long	.LASF132
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF133
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0x11
	.long	.LASF134
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0x11
	.long	.LASF135
	.byte	0xd
	.byte	0xf
	.long	0x141
	.byte	0x18
	.uleb128 0x11
	.long	.LASF125
	.byte	0xd
	.byte	0x10
	.long	0x157
	.byte	0x20
	.uleb128 0x11
	.long	.LASF128
	.byte	0xd
	.byte	0x11
	.long	0x1114
	.byte	0x28
	.uleb128 0x11
	.long	.LASF129
	.byte	0xd
	.byte	0x12
	.long	0x111a
	.byte	0x30
	.uleb128 0x11
	.long	.LASF136
	.byte	0xd
	.byte	0x14
	.long	0x1336
	.byte	0x38
	.uleb128 0x11
	.long	.LASF137
	.byte	0xd
	.byte	0x15
	.long	0xf91
	.byte	0x40
	.uleb128 0x11
	.long	.LASF138
	.byte	0xd
	.byte	0x16
	.long	0xf49
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0x6
	.value	0x7fe
	.long	0xa08
	.uleb128 0x12
	.long	.LASF140
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0xa99
	.uleb128 0x11
	.long	.LASF141
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF142
	.byte	0xe
	.byte	0x24
	.long	0x169
	.byte	0x8
	.uleb128 0x11
	.long	.LASF143
	.byte	0xe
	.byte	0x25
	.long	0x169
	.byte	0x10
	.uleb128 0x11
	.long	.LASF144
	.byte	0xe
	.byte	0x26
	.long	0x141
	.byte	0x18
	.uleb128 0x11
	.long	.LASF125
	.byte	0xe
	.byte	0x27
	.long	0x157
	.byte	0x20
	.uleb128 0x11
	.long	.LASF128
	.byte	0xe
	.byte	0x29
	.long	0x1114
	.byte	0x28
	.uleb128 0x11
	.long	.LASF129
	.byte	0xe
	.byte	0x2a
	.long	0x111a
	.byte	0x30
	.uleb128 0x11
	.long	.LASF145
	.byte	0xe
	.byte	0x2c
	.long	0xf5e
	.byte	0x38
	.uleb128 0x11
	.long	.LASF146
	.byte	0xe
	.byte	0x2d
	.long	0x155a
	.byte	0x40
	.uleb128 0x11
	.long	.LASF147
	.byte	0xe
	.byte	0x2e
	.long	0x11c7
	.byte	0x48
	.uleb128 0x11
	.long	.LASF148
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x6
	.value	0x7ff
	.long	0xaa5
	.uleb128 0x14
	.long	.LASF150
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xb4f
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x9
	.value	0x132
	.long	0x169
	.byte	0x8
	.uleb128 0x13
	.long	.LASF119
	.byte	0x9
	.value	0x133
	.long	0x169
	.byte	0x10
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x134
	.long	0x141
	.byte	0x18
	.uleb128 0x13
	.long	.LASF125
	.byte	0x9
	.value	0x135
	.long	0x157
	.byte	0x20
	.uleb128 0x13
	.long	.LASF128
	.byte	0x9
	.value	0x136
	.long	0x1114
	.byte	0x28
	.uleb128 0x13
	.long	.LASF129
	.byte	0x9
	.value	0x137
	.long	0x111a
	.byte	0x30
	.uleb128 0x13
	.long	.LASF151
	.byte	0x9
	.value	0x139
	.long	0x1120
	.byte	0x38
	.uleb128 0x13
	.long	.LASF152
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x13
	.long	.LASF153
	.byte	0x9
	.value	0x13b
	.long	0x169
	.byte	0x48
	.uleb128 0x13
	.long	.LASF154
	.byte	0x9
	.value	0x13c
	.long	0x111a
	.byte	0x50
	.uleb128 0x13
	.long	.LASF155
	.byte	0x9
	.value	0x13d
	.long	0xf49
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF156
	.byte	0x6
	.value	0x800
	.long	0xb5b
	.uleb128 0x12
	.long	.LASF157
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xc4c
	.uleb128 0x11
	.long	.LASF117
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF118
	.byte	0xf
	.byte	0x10
	.long	0x169
	.byte	0x8
	.uleb128 0x11
	.long	.LASF119
	.byte	0xf
	.byte	0x11
	.long	0x169
	.byte	0x10
	.uleb128 0x11
	.long	.LASF135
	.byte	0xf
	.byte	0x12
	.long	0x141
	.byte	0x18
	.uleb128 0x11
	.long	.LASF125
	.byte	0xf
	.byte	0x13
	.long	0x157
	.byte	0x20
	.uleb128 0x11
	.long	.LASF128
	.byte	0xf
	.byte	0x14
	.long	0x1114
	.byte	0x28
	.uleb128 0x11
	.long	.LASF129
	.byte	0xf
	.byte	0x15
	.long	0x111a
	.byte	0x30
	.uleb128 0x11
	.long	.LASF158
	.byte	0xf
	.byte	0x17
	.long	0x111a
	.byte	0x38
	.uleb128 0x11
	.long	.LASF159
	.byte	0xf
	.byte	0x18
	.long	0x1132
	.byte	0x40
	.uleb128 0x11
	.long	.LASF160
	.byte	0xf
	.byte	0x19
	.long	0x1132
	.byte	0x48
	.uleb128 0x11
	.long	.LASF161
	.byte	0xf
	.byte	0x1a
	.long	0x1149
	.byte	0x50
	.uleb128 0x11
	.long	.LASF162
	.byte	0xf
	.byte	0x1b
	.long	0xe9a
	.byte	0x58
	.uleb128 0x11
	.long	.LASF163
	.byte	0xf
	.byte	0x1c
	.long	0x114f
	.byte	0x60
	.uleb128 0x11
	.long	.LASF164
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0x11
	.long	.LASF165
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x11
	.long	.LASF166
	.byte	0xf
	.byte	0x1f
	.long	0x11b6
	.byte	0x78
	.uleb128 0x11
	.long	.LASF167
	.byte	0xf
	.byte	0x20
	.long	0x1143
	.byte	0x80
	.uleb128 0x11
	.long	.LASF168
	.byte	0xf
	.byte	0x25
	.long	0x1126
	.byte	0x88
	.uleb128 0x11
	.long	.LASF169
	.byte	0xf
	.byte	0x26
	.long	0xf69
	.byte	0x8c
	.byte	0
	.uleb128 0xf
	.long	.LASF170
	.byte	0x6
	.value	0x801
	.long	0xc58
	.uleb128 0x14
	.long	.LASF171
	.byte	0x40
	.byte	0x9
	.value	0x140
	.long	0xce8
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9
	.value	0x141
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x9
	.value	0x142
	.long	0x169
	.byte	0x8
	.uleb128 0x13
	.long	.LASF119
	.byte	0x9
	.value	0x143
	.long	0x169
	.byte	0x10
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x144
	.long	0x141
	.byte	0x18
	.uleb128 0x13
	.long	.LASF125
	.byte	0x9
	.value	0x145
	.long	0x157
	.byte	0x20
	.uleb128 0x13
	.long	.LASF128
	.byte	0x9
	.value	0x146
	.long	0x1114
	.byte	0x28
	.uleb128 0x13
	.long	.LASF129
	.byte	0x9
	.value	0x147
	.long	0x111a
	.byte	0x30
	.uleb128 0x13
	.long	.LASF172
	.byte	0x9
	.value	0x149
	.long	0xf5e
	.byte	0x38
	.uleb128 0x13
	.long	.LASF173
	.byte	0x9
	.value	0x14a
	.long	0xf53
	.byte	0x3c
	.uleb128 0x13
	.long	.LASF174
	.byte	0x9
	.value	0x14b
	.long	0xf49
	.byte	0x3e
	.byte	0
	.uleb128 0xf
	.long	.LASF175
	.byte	0x6
	.value	0x803
	.long	0xcf4
	.uleb128 0x14
	.long	.LASF176
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xe2d
	.uleb128 0x13
	.long	.LASF117
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x9
	.value	0x172
	.long	0x169
	.byte	0x8
	.uleb128 0x13
	.long	.LASF119
	.byte	0x9
	.value	0x173
	.long	0x169
	.byte	0x10
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x174
	.long	0x141
	.byte	0x18
	.uleb128 0x13
	.long	.LASF125
	.byte	0x9
	.value	0x175
	.long	0x157
	.byte	0x20
	.uleb128 0x13
	.long	.LASF128
	.byte	0x9
	.value	0x176
	.long	0x1114
	.byte	0x28
	.uleb128 0x13
	.long	.LASF129
	.byte	0x9
	.value	0x177
	.long	0x111a
	.byte	0x30
	.uleb128 0x13
	.long	.LASF177
	.byte	0x9
	.value	0x179
	.long	0x1183
	.byte	0x38
	.uleb128 0x13
	.long	.LASF178
	.byte	0x9
	.value	0x17a
	.long	0x1183
	.byte	0x40
	.uleb128 0x13
	.long	.LASF179
	.byte	0x9
	.value	0x187
	.long	0x115b
	.byte	0x48
	.uleb128 0x13
	.long	.LASF180
	.byte	0x9
	.value	0x188
	.long	0x141
	.byte	0x50
	.uleb128 0x13
	.long	.LASF181
	.byte	0x9
	.value	0x189
	.long	0x141
	.byte	0x58
	.uleb128 0x13
	.long	.LASF182
	.byte	0x9
	.value	0x18a
	.long	0x141
	.byte	0x60
	.uleb128 0x13
	.long	.LASF183
	.byte	0x9
	.value	0x18b
	.long	0x141
	.byte	0x68
	.uleb128 0x13
	.long	.LASF184
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x13
	.long	.LASF185
	.byte	0x9
	.value	0x18d
	.long	0x114f
	.byte	0x78
	.uleb128 0x13
	.long	.LASF186
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x13
	.long	.LASF187
	.byte	0x9
	.value	0x18f
	.long	0x114f
	.byte	0x88
	.uleb128 0x13
	.long	.LASF188
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x13
	.long	.LASF189
	.byte	0x9
	.value	0x191
	.long	0x114f
	.byte	0x98
	.uleb128 0x13
	.long	.LASF190
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF191
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x13
	.long	.LASF192
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xf
	.long	.LASF193
	.byte	0x6
	.value	0x804
	.long	0xe39
	.uleb128 0x12
	.long	.LASF194
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xe9a
	.uleb128 0x11
	.long	.LASF195
	.byte	0xc
	.byte	0xf
	.long	0x157a
	.byte	0
	.uleb128 0x11
	.long	.LASF196
	.byte	0xc
	.byte	0x10
	.long	0x157a
	.byte	0x8
	.uleb128 0x11
	.long	.LASF197
	.byte	0xc
	.byte	0x11
	.long	0x1594
	.byte	0x10
	.uleb128 0x11
	.long	.LASF198
	.byte	0xc
	.byte	0x12
	.long	0x157a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF199
	.byte	0xc
	.byte	0x13
	.long	0x157a
	.byte	0x20
	.uleb128 0x11
	.long	.LASF200
	.byte	0xc
	.byte	0x14
	.long	0x15bd
	.byte	0x28
	.uleb128 0x11
	.long	.LASF201
	.byte	0xc
	.byte	0x16
	.long	0x15dd
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xea6
	.uleb128 0x15
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xf08
	.uleb128 0x16
	.long	.LASF202
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x16
	.long	.LASF203
	.byte	0x6
	.value	0x9f3
	.long	0xf5e
	.uleb128 0x16
	.long	.LASF204
	.byte	0x6
	.value	0x9f4
	.long	0x141
	.uleb128 0x16
	.long	.LASF205
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x16
	.long	.LASF206
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x16
	.long	.LASF207
	.byte	0x6
	.value	0x9f7
	.long	0xf8b
	.uleb128 0x16
	.long	.LASF208
	.byte	0x6
	.value	0x9f8
	.long	0xf8b
	.byte	0
	.uleb128 0xf
	.long	.LASF209
	.byte	0x6
	.value	0x808
	.long	0xf14
	.uleb128 0x14
	.long	.LASF210
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xf49
	.uleb128 0x13
	.long	.LASF211
	.byte	0x9
	.value	0x4ee
	.long	0x1155
	.byte	0
	.uleb128 0x13
	.long	.LASF212
	.byte	0x9
	.value	0x4ef
	.long	0x14c
	.byte	0x8
	.uleb128 0x13
	.long	.LASF213
	.byte	0x9
	.value	0x4f0
	.long	0x1189
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0xc
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0xc
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0xc
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xf
	.long	.LASF214
	.byte	0x10
	.value	0x209
	.long	0xf69
	.uleb128 0x17
	.long	0xf8b
	.uleb128 0x18
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf80
	.uleb128 0x6
	.byte	0x8
	.long	0x3e6
	.uleb128 0x7
	.long	0x7f
	.long	0xfa7
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF215
	.byte	0x11
	.byte	0x63
	.long	0xfb2
	.uleb128 0xd
	.long	.LASF217
	.uleb128 0x5
	.long	.LASF218
	.byte	0x11
	.byte	0x65
	.long	0xfc2
	.uleb128 0x6
	.byte	0x8
	.long	0xfa7
	.uleb128 0x12
	.long	.LASF219
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xff9
	.uleb128 0x11
	.long	.LASF212
	.byte	0xa
	.byte	0x14
	.long	0xf49
	.byte	0
	.uleb128 0x11
	.long	.LASF220
	.byte	0xa
	.byte	0x15
	.long	0xf49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF221
	.byte	0xa
	.byte	0x16
	.long	0xf53
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF219
	.byte	0xa
	.byte	0x19
	.long	0xfc8
	.uleb128 0x6
	.byte	0x8
	.long	0xf5e
	.uleb128 0x6
	.byte	0x8
	.long	0xff9
	.uleb128 0x14
	.long	.LASF222
	.byte	0x48
	.byte	0x12
	.value	0x18a
	.long	0x102b
	.uleb128 0x13
	.long	.LASF69
	.byte	0x12
	.value	0x18b
	.long	0x1906
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1010
	.uleb128 0x14
	.long	.LASF223
	.byte	0x18
	.byte	0x12
	.value	0x17d
	.long	0x1066
	.uleb128 0x13
	.long	.LASF224
	.byte	0x12
	.value	0x17e
	.long	0xf69
	.byte	0
	.uleb128 0x13
	.long	.LASF225
	.byte	0x12
	.value	0x17f
	.long	0x18ae
	.byte	0x8
	.uleb128 0x13
	.long	.LASF69
	.byte	0x12
	.value	0x180
	.long	0x18b4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1031
	.uleb128 0x6
	.byte	0x8
	.long	0xf69
	.uleb128 0x7
	.long	0xff9
	.long	0x1082
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF63
	.byte	0xa
	.byte	0x33
	.long	0x4de
	.uleb128 0x9
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0x10f6
	.uleb128 0xa
	.long	.LASF226
	.sleb128 0
	.uleb128 0xa
	.long	.LASF227
	.sleb128 1
	.uleb128 0xa
	.long	.LASF228
	.sleb128 2
	.uleb128 0xa
	.long	.LASF229
	.sleb128 3
	.uleb128 0xa
	.long	.LASF230
	.sleb128 4
	.uleb128 0xa
	.long	.LASF231
	.sleb128 5
	.uleb128 0xa
	.long	.LASF232
	.sleb128 6
	.uleb128 0xa
	.long	.LASF233
	.sleb128 7
	.uleb128 0xa
	.long	.LASF234
	.sleb128 8
	.uleb128 0xa
	.long	.LASF235
	.sleb128 9
	.uleb128 0xa
	.long	.LASF236
	.sleb128 10
	.uleb128 0xa
	.long	.LASF237
	.sleb128 11
	.uleb128 0xa
	.long	.LASF238
	.sleb128 12
	.uleb128 0xa
	.long	.LASF239
	.sleb128 13
	.uleb128 0xa
	.long	.LASF240
	.sleb128 14
	.uleb128 0xa
	.long	.LASF241
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa99
	.uleb128 0x6
	.byte	0x8
	.long	0xb4f
	.uleb128 0x6
	.byte	0x8
	.long	0x96b
	.uleb128 0x6
	.byte	0x8
	.long	0x9fc
	.uleb128 0x6
	.byte	0x8
	.long	0xce8
	.uleb128 0x6
	.byte	0x8
	.long	0x773
	.uleb128 0x6
	.byte	0x8
	.long	0x45c
	.uleb128 0x6
	.byte	0x8
	.long	0x5b7
	.uleb128 0xf
	.long	.LASF242
	.byte	0x9
	.value	0x150
	.long	0xf53
	.uleb128 0x6
	.byte	0x8
	.long	0x175
	.uleb128 0x17
	.long	0x1143
	.uleb128 0x18
	.long	0x1143
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x497
	.uleb128 0x6
	.byte	0x8
	.long	0x1138
	.uleb128 0x6
	.byte	0x8
	.long	0x65e
	.uleb128 0x6
	.byte	0x8
	.long	0x421
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0x117d
	.uleb128 0x16
	.long	.LASF243
	.byte	0x9
	.value	0x185
	.long	0x117d
	.uleb128 0x16
	.long	.LASF244
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x131
	.uleb128 0x6
	.byte	0x8
	.long	0xfb7
	.uleb128 0x6
	.byte	0x8
	.long	0x3bf
	.uleb128 0x6
	.byte	0x8
	.long	0x699
	.uleb128 0x5
	.long	.LASF245
	.byte	0x14
	.byte	0x13
	.long	0x421
	.uleb128 0xc
	.string	"PAD"
	.byte	0x14
	.byte	0x14
	.long	0x421
	.uleb128 0x5
	.long	.LASF246
	.byte	0x14
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1195
	.uleb128 0x1a
	.long	0x1132
	.uleb128 0x6
	.byte	0x8
	.long	0x11bc
	.uleb128 0x6
	.byte	0x8
	.long	0x2c5
	.uleb128 0x6
	.byte	0x8
	.long	0x4d2
	.uleb128 0x12
	.long	.LASF247
	.byte	0x40
	.byte	0x8
	.byte	0x70
	.long	0x124a
	.uleb128 0x1b
	.string	"cv"
	.byte	0x8
	.byte	0x71
	.long	0x1143
	.byte	0
	.uleb128 0x1b
	.string	"gv"
	.byte	0x8
	.byte	0x72
	.long	0x114f
	.byte	0x8
	.uleb128 0x11
	.long	.LASF248
	.byte	0x8
	.byte	0x73
	.long	0x114f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF249
	.byte	0x8
	.byte	0x75
	.long	0x1155
	.byte	0x18
	.uleb128 0x11
	.long	.LASF250
	.byte	0x8
	.byte	0x77
	.long	0x1155
	.byte	0x20
	.uleb128 0x11
	.long	.LASF251
	.byte	0x8
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x11
	.long	.LASF252
	.byte	0x8
	.byte	0x79
	.long	0xf49
	.byte	0x30
	.uleb128 0x11
	.long	.LASF253
	.byte	0x8
	.byte	0x7a
	.long	0xf49
	.byte	0x31
	.uleb128 0x11
	.long	.LASF254
	.byte	0x8
	.byte	0x7b
	.long	0x124a
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11a0
	.uleb128 0x12
	.long	.LASF255
	.byte	0x28
	.byte	0x8
	.byte	0xd3
	.long	0x12a4
	.uleb128 0x11
	.long	.LASF256
	.byte	0x8
	.byte	0xd4
	.long	0xf5e
	.byte	0
	.uleb128 0x11
	.long	.LASF257
	.byte	0x8
	.byte	0xd5
	.long	0xf5e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF258
	.byte	0x8
	.byte	0xd6
	.long	0xf91
	.byte	0x8
	.uleb128 0x11
	.long	.LASF259
	.byte	0x8
	.byte	0xd7
	.long	0x1132
	.byte	0x10
	.uleb128 0x11
	.long	.LASF260
	.byte	0x8
	.byte	0xd8
	.long	0xf91
	.byte	0x18
	.uleb128 0x1b
	.string	"cv"
	.byte	0x8
	.byte	0xd9
	.long	0x1143
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.long	.LASF261
	.byte	0x58
	.byte	0x8
	.byte	0xf0
	.long	0x1336
	.uleb128 0x11
	.long	.LASF262
	.byte	0x8
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF263
	.byte	0x8
	.byte	0xf2
	.long	0xf5e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF264
	.byte	0x8
	.byte	0xf3
	.long	0x1132
	.byte	0x10
	.uleb128 0x11
	.long	.LASF265
	.byte	0x8
	.byte	0xf4
	.long	0x1132
	.byte	0x18
	.uleb128 0x11
	.long	.LASF266
	.byte	0x8
	.byte	0xf5
	.long	0x1132
	.byte	0x20
	.uleb128 0x11
	.long	.LASF267
	.byte	0x8
	.byte	0xfa
	.long	0x1336
	.byte	0x28
	.uleb128 0x11
	.long	.LASF268
	.byte	0x8
	.byte	0xfc
	.long	0xf91
	.byte	0x30
	.uleb128 0x11
	.long	.LASF269
	.byte	0x8
	.byte	0xfd
	.long	0xf91
	.byte	0x38
	.uleb128 0x11
	.long	.LASF270
	.byte	0x8
	.byte	0xfe
	.long	0x1155
	.byte	0x40
	.uleb128 0x11
	.long	.LASF271
	.byte	0x8
	.byte	0xff
	.long	0x141
	.byte	0x48
	.uleb128 0x13
	.long	.LASF272
	.byte	0x8
	.value	0x100
	.long	0x141
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf91
	.uleb128 0x19
	.byte	0x58
	.byte	0x8
	.value	0x139
	.long	0x136a
	.uleb128 0x16
	.long	.LASF273
	.byte	0x8
	.value	0x13a
	.long	0x11d3
	.uleb128 0x16
	.long	.LASF274
	.byte	0x8
	.value	0x13b
	.long	0x1250
	.uleb128 0x16
	.long	.LASF275
	.byte	0x8
	.value	0x13c
	.long	0x12a4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1ec
	.uleb128 0x14
	.long	.LASF276
	.byte	0x58
	.byte	0x8
	.value	0x16e
	.long	0x1434
	.uleb128 0x13
	.long	.LASF277
	.byte	0x8
	.value	0x16f
	.long	0xf5e
	.byte	0
	.uleb128 0x13
	.long	.LASF278
	.byte	0x8
	.value	0x170
	.long	0xf5e
	.byte	0x4
	.uleb128 0x13
	.long	.LASF279
	.byte	0x8
	.value	0x171
	.long	0xf5e
	.byte	0x8
	.uleb128 0x13
	.long	.LASF280
	.byte	0x8
	.value	0x172
	.long	0xf5e
	.byte	0xc
	.uleb128 0x13
	.long	.LASF281
	.byte	0x8
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF282
	.byte	0x8
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0x13
	.long	.LASF283
	.byte	0x8
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0x13
	.long	.LASF284
	.byte	0x8
	.value	0x176
	.long	0xf91
	.byte	0x20
	.uleb128 0x13
	.long	.LASF285
	.byte	0x8
	.value	0x177
	.long	0xf91
	.byte	0x28
	.uleb128 0x13
	.long	.LASF286
	.byte	0x8
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0x13
	.long	.LASF287
	.byte	0x8
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0x13
	.long	.LASF288
	.byte	0x8
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0x13
	.long	.LASF289
	.byte	0x8
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0x13
	.long	.LASF290
	.byte	0x8
	.value	0x17c
	.long	0x11cd
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x88
	.byte	0x8
	.value	0x1a4
	.long	0x1456
	.uleb128 0x16
	.long	.LASF291
	.byte	0x8
	.value	0x1a5
	.long	0x6fd
	.uleb128 0x16
	.long	.LASF292
	.byte	0x8
	.value	0x1a6
	.long	0x1370
	.byte	0
	.uleb128 0x14
	.long	.LASF293
	.byte	0x38
	.byte	0x8
	.value	0x20c
	.long	0x14cc
	.uleb128 0x13
	.long	.LASF294
	.byte	0x8
	.value	0x20d
	.long	0x1155
	.byte	0
	.uleb128 0x13
	.long	.LASF295
	.byte	0x8
	.value	0x20e
	.long	0x14cc
	.byte	0x8
	.uleb128 0x13
	.long	.LASF296
	.byte	0x8
	.value	0x20f
	.long	0xf5e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF297
	.byte	0x8
	.value	0x210
	.long	0xf5e
	.byte	0x14
	.uleb128 0x13
	.long	.LASF298
	.byte	0x8
	.value	0x211
	.long	0xf5e
	.byte	0x18
	.uleb128 0x13
	.long	.LASF299
	.byte	0x8
	.value	0x212
	.long	0x14d2
	.byte	0x20
	.uleb128 0x13
	.long	.LASF300
	.byte	0x8
	.value	0x213
	.long	0x14d2
	.byte	0x28
	.uleb128 0x13
	.long	.LASF301
	.byte	0x8
	.value	0x214
	.long	0xf5e
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6c9
	.uleb128 0x6
	.byte	0x8
	.long	0x1456
	.uleb128 0xf
	.long	.LASF302
	.byte	0x8
	.value	0x219
	.long	0x1456
	.uleb128 0xc
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x14ee
	.uleb128 0x10
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x151e
	.uleb128 0x11
	.long	.LASF303
	.byte	0xe
	.byte	0x11
	.long	0x155a
	.byte	0
	.uleb128 0x11
	.long	.LASF304
	.byte	0xe
	.byte	0x12
	.long	0x1560
	.byte	0x8
	.uleb128 0x11
	.long	.LASF305
	.byte	0xe
	.byte	0x13
	.long	0xf91
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x1529
	.uleb128 0x10
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x155a
	.uleb128 0x11
	.long	.LASF306
	.byte	0xe
	.byte	0x18
	.long	0xf69
	.byte	0
	.uleb128 0x11
	.long	.LASF307
	.byte	0xe
	.byte	0x19
	.long	0xf5e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF308
	.byte	0xe
	.byte	0x1a
	.long	0xf97
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14e4
	.uleb128 0x6
	.byte	0x8
	.long	0x151e
	.uleb128 0x1c
	.long	0x57
	.long	0x157a
	.uleb128 0x18
	.long	0xf91
	.uleb128 0x18
	.long	0x1114
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1566
	.uleb128 0x1c
	.long	0xf69
	.long	0x1594
	.uleb128 0x18
	.long	0xf91
	.uleb128 0x18
	.long	0x1114
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1580
	.uleb128 0x1c
	.long	0x57
	.long	0x15bd
	.uleb128 0x18
	.long	0xf91
	.uleb128 0x18
	.long	0x1114
	.uleb128 0x18
	.long	0xf91
	.uleb128 0x18
	.long	0x126
	.uleb128 0x18
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x159a
	.uleb128 0x1c
	.long	0x57
	.long	0x15d7
	.uleb128 0x18
	.long	0x1114
	.uleb128 0x18
	.long	0x15d7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf08
	.uleb128 0x6
	.byte	0x8
	.long	0x15c3
	.uleb128 0x6
	.byte	0x8
	.long	0xe2d
	.uleb128 0xf
	.long	.LASF309
	.byte	0x6
	.value	0xa38
	.long	0x15f5
	.uleb128 0x14
	.long	.LASF310
	.byte	0x38
	.byte	0x6
	.value	0xa39
	.long	0x1678
	.uleb128 0x13
	.long	.LASF311
	.byte	0x6
	.value	0xa3a
	.long	0x57
	.byte	0
	.uleb128 0x1d
	.string	"cur"
	.byte	0x6
	.value	0xa3b
	.long	0x57
	.byte	0x4
	.uleb128 0x1d
	.string	"min"
	.byte	0x6
	.value	0xa3c
	.long	0x57
	.byte	0x8
	.uleb128 0x1d
	.string	"max"
	.byte	0x6
	.value	0xa3d
	.long	0x57
	.byte	0xc
	.uleb128 0x13
	.long	.LASF312
	.byte	0x6
	.value	0xa3e
	.long	0x57
	.byte	0x10
	.uleb128 0x13
	.long	.LASF313
	.byte	0x6
	.value	0xa3f
	.long	0x100a
	.byte	0x18
	.uleb128 0x13
	.long	.LASF314
	.byte	0x6
	.value	0xa40
	.long	0x100a
	.byte	0x20
	.uleb128 0x13
	.long	.LASF315
	.byte	0x6
	.value	0xa41
	.long	0x79
	.byte	0x28
	.uleb128 0x13
	.long	.LASF316
	.byte	0x6
	.value	0xa42
	.long	0x1678
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15e9
	.uleb128 0xf
	.long	.LASF317
	.byte	0x6
	.value	0xa53
	.long	0xf5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF318
	.uleb128 0xf
	.long	.LASF319
	.byte	0x6
	.value	0xcc1
	.long	0x169d
	.uleb128 0x6
	.byte	0x8
	.long	0x16a3
	.uleb128 0x1a
	.long	0x57
	.uleb128 0xf
	.long	.LASF320
	.byte	0x6
	.value	0xe62
	.long	0x16b4
	.uleb128 0x6
	.byte	0x8
	.long	0x16ba
	.uleb128 0x1c
	.long	0x16d3
	.long	0x16d3
	.uleb128 0x18
	.long	0x79
	.uleb128 0x18
	.long	0x79
	.uleb128 0x18
	.long	0x11c7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1082
	.uleb128 0x14
	.long	.LASF321
	.byte	0x10
	.byte	0x12
	.value	0x16b
	.long	0x1701
	.uleb128 0x13
	.long	.LASF322
	.byte	0x12
	.value	0x16d
	.long	0x189c
	.byte	0
	.uleb128 0x13
	.long	.LASF323
	.byte	0x12
	.value	0x16e
	.long	0x1004
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF324
	.byte	0x6
	.value	0xe6b
	.long	0x170d
	.uleb128 0x6
	.byte	0x8
	.long	0x1713
	.uleb128 0x17
	.long	0x171e
	.uleb128 0x18
	.long	0x171e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4de
	.uleb128 0xf
	.long	.LASF325
	.byte	0x6
	.value	0xe6e
	.long	0xf8b
	.uleb128 0x5
	.long	.LASF326
	.byte	0x12
	.byte	0xb
	.long	0x175
	.uleb128 0x12
	.long	.LASF327
	.byte	0x6
	.byte	0x12
	.byte	0x4b
	.long	0x1778
	.uleb128 0x11
	.long	.LASF328
	.byte	0x12
	.byte	0x4c
	.long	0xf49
	.byte	0
	.uleb128 0x11
	.long	.LASF220
	.byte	0x12
	.byte	0x4d
	.long	0xf49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF221
	.byte	0x12
	.byte	0x4e
	.long	0xf53
	.byte	0x2
	.uleb128 0x11
	.long	.LASF329
	.byte	0x12
	.byte	0x4f
	.long	0xf97
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF330
	.byte	0x8
	.byte	0x12
	.byte	0x52
	.long	0x17b5
	.uleb128 0x11
	.long	.LASF212
	.byte	0x12
	.byte	0x53
	.long	0xf49
	.byte	0
	.uleb128 0x11
	.long	.LASF220
	.byte	0x12
	.byte	0x54
	.long	0xf49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF221
	.byte	0x12
	.byte	0x55
	.long	0xf53
	.byte	0x2
	.uleb128 0x11
	.long	.LASF331
	.byte	0x12
	.byte	0x56
	.long	0xf69
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF332
	.byte	0x8
	.byte	0x12
	.byte	0x59
	.long	0x17fe
	.uleb128 0x11
	.long	.LASF212
	.byte	0x12
	.byte	0x5a
	.long	0xf49
	.byte	0
	.uleb128 0x11
	.long	.LASF220
	.byte	0x12
	.byte	0x5b
	.long	0xf49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF221
	.byte	0x12
	.byte	0x5c
	.long	0xf53
	.byte	0x2
	.uleb128 0x11
	.long	.LASF331
	.byte	0x12
	.byte	0x5d
	.long	0xf53
	.byte	0x4
	.uleb128 0x11
	.long	.LASF333
	.byte	0x12
	.byte	0x5e
	.long	0xf53
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF334
	.byte	0x28
	.byte	0x12
	.byte	0x64
	.long	0x1847
	.uleb128 0x11
	.long	.LASF212
	.byte	0x12
	.byte	0x65
	.long	0xf49
	.byte	0
	.uleb128 0x11
	.long	.LASF220
	.byte	0x12
	.byte	0x66
	.long	0xf49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF221
	.byte	0x12
	.byte	0x67
	.long	0xf53
	.byte	0x2
	.uleb128 0x11
	.long	.LASF331
	.byte	0x12
	.byte	0x68
	.long	0xf69
	.byte	0x4
	.uleb128 0x11
	.long	.LASF335
	.byte	0x12
	.byte	0x69
	.long	0xba
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF336
	.byte	0x2c
	.byte	0x12
	.byte	0x6c
	.long	0x189c
	.uleb128 0x11
	.long	.LASF212
	.byte	0x12
	.byte	0x6d
	.long	0xf49
	.byte	0
	.uleb128 0x11
	.long	.LASF220
	.byte	0x12
	.byte	0x6e
	.long	0xf49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF221
	.byte	0x12
	.byte	0x6f
	.long	0xf53
	.byte	0x2
	.uleb128 0x11
	.long	.LASF331
	.byte	0x12
	.byte	0x70
	.long	0xf69
	.byte	0x4
	.uleb128 0x11
	.long	.LASF335
	.byte	0x12
	.byte	0x71
	.long	0xba
	.byte	0x8
	.uleb128 0x11
	.long	.LASF337
	.byte	0x12
	.byte	0x72
	.long	0x9c
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0xf
	.long	.LASF338
	.byte	0x12
	.value	0x16f
	.long	0x16d9
	.uleb128 0x6
	.byte	0x8
	.long	0xf49
	.uleb128 0x7
	.long	0x6c
	.long	0x18c4
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF339
	.byte	0x18
	.byte	0x12
	.value	0x183
	.long	0x1906
	.uleb128 0x13
	.long	.LASF340
	.byte	0x12
	.value	0x184
	.long	0xf5e
	.byte	0
	.uleb128 0x13
	.long	.LASF341
	.byte	0x12
	.value	0x185
	.long	0xf5e
	.byte	0x4
	.uleb128 0x13
	.long	.LASF342
	.byte	0x12
	.value	0x186
	.long	0xf91
	.byte	0x8
	.uleb128 0x13
	.long	.LASF343
	.byte	0x12
	.value	0x187
	.long	0xf91
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x18c4
	.long	0x1916
	.uleb128 0x8
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	.LASF344
	.byte	0x28
	.byte	0x1
	.value	0x123
	.long	0x1962
	.uleb128 0x1d
	.string	"ss"
	.byte	0x1
	.value	0x125
	.long	0xf5e
	.byte	0
	.uleb128 0x13
	.long	.LASF345
	.byte	0x1
	.value	0x126
	.long	0x100a
	.byte	0x8
	.uleb128 0x13
	.long	.LASF346
	.byte	0x1
	.value	0x127
	.long	0x1962
	.byte	0x10
	.uleb128 0x1d
	.string	"cc"
	.byte	0x1
	.value	0x128
	.long	0x1678
	.byte	0x18
	.uleb128 0x1d
	.string	"re"
	.byte	0x1
	.value	0x129
	.long	0x16d3
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1916
	.uleb128 0xf
	.long	.LASF344
	.byte	0x1
	.value	0x12a
	.long	0x1916
	.uleb128 0x1e
	.byte	0xc
	.byte	0x1
	.value	0x8a1
	.long	0x19a5
	.uleb128 0x13
	.long	.LASF220
	.byte	0x1
	.value	0x8a2
	.long	0xf5e
	.byte	0
	.uleb128 0x13
	.long	.LASF346
	.byte	0x1
	.value	0x8a3
	.long	0xf5e
	.byte	0x4
	.uleb128 0x13
	.long	.LASF347
	.byte	0x1
	.value	0x8a4
	.long	0x167e
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF348
	.byte	0x1
	.value	0x8a5
	.long	0x1974
	.uleb128 0x1e
	.byte	0x28
	.byte	0x1
	.value	0x8a7
	.long	0x1a16
	.uleb128 0x13
	.long	.LASF220
	.byte	0x1
	.value	0x8a8
	.long	0xf5e
	.byte	0
	.uleb128 0x13
	.long	.LASF346
	.byte	0x1
	.value	0x8a9
	.long	0xf5e
	.byte	0x4
	.uleb128 0x13
	.long	.LASF347
	.byte	0x1
	.value	0x8aa
	.long	0x167e
	.byte	0x8
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.value	0x8ab
	.long	0xf5e
	.byte	0xc
	.uleb128 0x13
	.long	.LASF314
	.byte	0x1
	.value	0x8ac
	.long	0x100a
	.byte	0x10
	.uleb128 0x13
	.long	.LASF349
	.byte	0x1
	.value	0x8ad
	.long	0x79
	.byte	0x18
	.uleb128 0x13
	.long	.LASF350
	.byte	0x1
	.value	0x8ae
	.long	0xf5e
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF351
	.byte	0x1
	.value	0x8b2
	.long	0x19b1
	.uleb128 0x1f
	.long	.LASF352
	.byte	0x28
	.byte	0x1
	.value	0x8b4
	.long	0x1a54
	.uleb128 0x16
	.long	.LASF220
	.byte	0x1
	.value	0x8b5
	.long	0xf5e
	.uleb128 0x16
	.long	.LASF353
	.byte	0x1
	.value	0x8b6
	.long	0x19a5
	.uleb128 0x16
	.long	.LASF354
	.byte	0x1
	.value	0x8b7
	.long	0x1a16
	.byte	0
	.uleb128 0xf
	.long	.LASF352
	.byte	0x1
	.value	0x8b8
	.long	0x1a22
	.uleb128 0x20
	.long	.LASF357
	.byte	0x1
	.byte	0xaf
	.long	0x167e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab8
	.uleb128 0x21
	.long	.LASF311
	.byte	0x1
	.byte	0xaf
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF355
	.byte	0x1
	.byte	0xb1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF356
	.byte	0x1
	.byte	0xb3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xb4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF358
	.byte	0x1
	.byte	0xdb
	.long	0x79
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b10
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xdd
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF359
	.byte	0x1
	.byte	0xde
	.long	0xf69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF360
	.byte	0x1
	.byte	0xdf
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF361
	.byte	0x1
	.byte	0xe0
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF362
	.byte	0x1
	.value	0x119
	.long	0x79
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b50
	.uleb128 0x26
	.string	"ss"
	.byte	0x1
	.value	0x119
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x11b
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF370
	.byte	0x1
	.value	0x146
	.long	0xf5e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bda
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x146
	.long	0x16d3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF364
	.byte	0x1
	.value	0x146
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF365
	.byte	0x1
	.value	0x146
	.long	0x79
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x29
	.long	.LASF366
	.byte	0x1
	.value	0x147
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF367
	.byte	0x1
	.value	0x147
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF368
	.byte	0x1
	.value	0x147
	.long	0xf91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF369
	.byte	0x1
	.value	0x147
	.long	0xf69
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.long	.LASF484
	.byte	0x1
	.value	0x153
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c08
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x153
	.long	0x16d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF371
	.byte	0x1
	.value	0x18d
	.long	0x79
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f87
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x18d
	.long	0x16d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x18d
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x29
	.long	.LASF372
	.byte	0x1
	.value	0x18d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x29
	.long	.LASF365
	.byte	0x1
	.value	0x18e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x29
	.long	.LASF212
	.byte	0x1
	.value	0x18e
	.long	0xf69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.value	0x18e
	.long	0x1f87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2b
	.long	.LASF373
	.byte	0x1
	.value	0x190
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF374
	.byte	0x1
	.value	0x192
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x193
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF375
	.byte	0x1
	.value	0x194
	.long	0xf91
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF366
	.byte	0x1
	.value	0x195
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x196
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.value	0x197
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2b
	.long	.LASF377
	.byte	0x1
	.value	0x198
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LASF378
	.byte	0x1
	.value	0x199
	.long	0x79
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF379
	.byte	0x1
	.value	0x19a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF380
	.byte	0x1
	.value	0x3b9
	.quad	.L27
	.uleb128 0x2c
	.long	.LASF381
	.byte	0x1
	.value	0x3b6
	.quad	.L44
	.uleb128 0x2c
	.long	.LASF382
	.byte	0x1
	.value	0x1f6
	.quad	.L47
	.uleb128 0x2c
	.long	.LASF383
	.byte	0x1
	.value	0x32d
	.quad	.L48
	.uleb128 0x2c
	.long	.LASF384
	.byte	0x1
	.value	0x21e
	.quad	.L56
	.uleb128 0x2c
	.long	.LASF385
	.byte	0x1
	.value	0x25e
	.quad	.L84
	.uleb128 0x2c
	.long	.LASF386
	.byte	0x1
	.value	0x31e
	.quad	.L117
	.uleb128 0x2c
	.long	.LASF387
	.byte	0x1
	.value	0x2e3
	.quad	.L118
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x1
	.value	0x2eb
	.quad	.L141
	.uleb128 0x2c
	.long	.LASF389
	.byte	0x1
	.value	0x316
	.quad	.L148
	.uleb128 0x2c
	.long	.LASF390
	.byte	0x1
	.value	0x376
	.quad	.L198
	.uleb128 0x2c
	.long	.LASF391
	.byte	0x1
	.value	0x3b0
	.quad	.L167
	.uleb128 0x2c
	.long	.LASF392
	.byte	0x1
	.value	0x39f
	.quad	.L204
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1e11
	.uleb128 0x2b
	.long	.LASF393
	.byte	0x1
	.value	0x1e6
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1e47
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.value	0x208
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2b
	.long	.LASF394
	.byte	0x1
	.value	0x20a
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2d
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1e7a
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x222
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x27
	.string	"pp"
	.byte	0x1
	.value	0x223
	.long	0x1004
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x2d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1edf
	.uleb128 0x2b
	.long	.LASF395
	.byte	0x1
	.value	0x260
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF396
	.byte	0x1
	.value	0x260
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF397
	.byte	0x1
	.value	0x260
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"s1"
	.byte	0x1
	.value	0x261
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF398
	.byte	0x1
	.value	0x262
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2d
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1f34
	.uleb128 0x2b
	.long	.LASF395
	.byte	0x1
	.value	0x2a3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.long	.LASF396
	.byte	0x1
	.value	0x2a3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.string	"s1"
	.byte	0x1
	.value	0x2a4
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF398
	.byte	0x1
	.value	0x2a5
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.string	"str"
	.byte	0x1
	.value	0x356
	.long	0x18ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF399
	.byte	0x1
	.value	0x357
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2b
	.long	.LASF400
	.byte	0x1
	.value	0x35a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF401
	.byte	0x1
	.value	0x360
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x18a2
	.uleb128 0x25
	.long	.LASF402
	.byte	0x1
	.value	0x3c1
	.long	0x79
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f4
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x3c1
	.long	0x16d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3c1
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x3c1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x29
	.long	.LASF365
	.byte	0x1
	.value	0x3c1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x29
	.long	.LASF401
	.byte	0x1
	.value	0x3c1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x29
	.long	.LASF403
	.byte	0x1
	.value	0x3c1
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2b
	.long	.LASF404
	.byte	0x1
	.value	0x3c3
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x27
	.string	"m"
	.byte	0x1
	.value	0x3c4
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.string	"ln"
	.byte	0x1
	.value	0x3c5
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x27
	.string	"lnc"
	.byte	0x1
	.value	0x3c6
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF405
	.byte	0x1
	.value	0x3c7
	.long	0x169
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"c1"
	.byte	0x1
	.value	0x3c8
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x27
	.string	"c2"
	.byte	0x1
	.value	0x3c9
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x3ca
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x3cb
	.long	0xf5e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.value	0x3cc
	.long	0x7f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	.LASF406
	.byte	0x1
	.value	0x648
	.quad	.L248
	.uleb128 0x2c
	.long	.LASF407
	.byte	0x1
	.value	0x420
	.quad	.L280
	.uleb128 0x2d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x20e4
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.value	0x3e3
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x2149
	.uleb128 0x2b
	.long	.LASF409
	.byte	0x1
	.value	0x403
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF410
	.byte	0x1
	.value	0x403
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.string	"sm"
	.byte	0x1
	.value	0x404
	.long	0x18ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF411
	.byte	0x1
	.value	0x405
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF412
	.byte	0x1
	.value	0x406
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0
	.long	0x21af
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x432
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.string	"f"
	.byte	0x1
	.value	0x432
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x433
	.long	0x2204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF414
	.byte	0x1
	.value	0x434
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x435
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF415
	.byte	0x1
	.value	0x435
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2d
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x21d3
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0x49b
	.long	0x18ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0x4c6
	.long	0x18ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xf49
	.long	0x2204
	.uleb128 0x8
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0xf49
	.long	0x2214
	.uleb128 0x8
	.long	0x65
	.byte	0xd
	.byte	0
	.uleb128 0x28
	.long	.LASF416
	.byte	0x1
	.value	0x650
	.long	0xf5e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2541
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x650
	.long	0x16d3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF364
	.byte	0x1
	.value	0x650
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x29
	.long	.LASF365
	.byte	0x1
	.value	0x650
	.long	0x79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF366
	.byte	0x1
	.value	0x651
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x29
	.long	.LASF367
	.byte	0x1
	.value	0x651
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x651
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.value	0x651
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF212
	.byte	0x1
	.value	0x651
	.long	0xf69
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x658
	.long	0x79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x659
	.long	0x100a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	.LASF401
	.byte	0x1
	.value	0x65a
	.long	0x79
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF74
	.byte	0x1
	.value	0x65b
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2b
	.long	.LASF417
	.byte	0x1
	.value	0x65c
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2b
	.long	.LASF374
	.byte	0x1
	.value	0x65f
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF323
	.byte	0x1
	.value	0x660
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF322
	.byte	0x1
	.value	0x661
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.long	.LASF418
	.byte	0x1
	.value	0x662
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.value	0x663
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -202
	.uleb128 0x2c
	.long	.LASF419
	.byte	0x1
	.value	0x812
	.quad	.L629
	.uleb128 0x2c
	.long	.LASF406
	.byte	0x1
	.value	0x7f0
	.quad	.L642
	.uleb128 0x2c
	.long	.LASF420
	.byte	0x1
	.value	0x6e7
	.quad	.L651
	.uleb128 0x2c
	.long	.LASF421
	.byte	0x1
	.value	0x7c9
	.quad	.L762
	.uleb128 0x2d
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x23aa
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x69c
	.long	0x1114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2d
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x23ce
	.uleb128 0x27
	.string	"d"
	.byte	0x1
	.value	0x6b0
	.long	0x18a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2d
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x23f4
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.value	0x6db
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x30
	.long	0x240d
	.uleb128 0x27
	.string	"ch"
	.byte	0x1
	.value	0x708
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.byte	0
	.uleb128 0x2d
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x2493
	.uleb128 0x2b
	.long	.LASF398
	.byte	0x1
	.value	0x732
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF422
	.byte	0x1
	.value	0x733
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF423
	.byte	0x1
	.value	0x734
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2b
	.long	.LASF395
	.byte	0x1
	.value	0x735
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF396
	.byte	0x1
	.value	0x736
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x768
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x24b8
	.uleb128 0x27
	.string	"op"
	.byte	0x1
	.value	0x78a
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x2d
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2520
	.uleb128 0x2b
	.long	.LASF395
	.byte	0x1
	.value	0x7ac
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF424
	.byte	0x1
	.value	0x7ad
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x7bd
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF425
	.byte	0x1
	.value	0x7be
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x803
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF426
	.byte	0x1
	.value	0x81e
	.long	0xf5e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d9
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x81e
	.long	0x16d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF401
	.byte	0x1
	.value	0x81e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x820
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x821
	.long	0x1004
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"ep"
	.byte	0x1
	.value	0x822
	.long	0x1004
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0x823
	.long	0x167e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0x829
	.long	0x1114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF427
	.byte	0x1
	.value	0x8f8
	.long	0xf5e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2edf
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x8f8
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0x8fa
	.long	0x100a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF314
	.byte	0x1
	.value	0x8fb
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2b
	.long	.LASF428
	.byte	0x1
	.value	0x8fc
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2b
	.long	.LASF350
	.byte	0x1
	.value	0x8fd
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x8ff
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x27
	.string	"ln"
	.byte	0x1
	.value	0x900
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x901
	.long	0x79
	.uleb128 0x2b
	.long	.LASF349
	.byte	0x1
	.value	0x902
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"c1"
	.byte	0x1
	.value	0x903
	.long	0xf5e
	.uleb128 0x30
	.string	"c2"
	.byte	0x1
	.value	0x903
	.long	0xf5e
	.uleb128 0x2b
	.long	.LASF359
	.byte	0x1
	.value	0x903
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF312
	.byte	0x1
	.value	0x904
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x27
	.string	"sw"
	.byte	0x1
	.value	0x904
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x2b
	.long	.LASF429
	.byte	0x1
	.value	0x904
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2b
	.long	.LASF430
	.byte	0x1
	.value	0x905
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x31
	.long	.LASF376
	.byte	0x1
	.value	0x909
	.long	0x7f
	.uleb128 0x32
	.string	"no"
	.byte	0x1
	.value	0xf82
	.quad	.L867
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x1
	.value	0x97c
	.quad	.L815
	.uleb128 0x2c
	.long	.LASF432
	.byte	0x1
	.value	0x981
	.quad	.L816
	.uleb128 0x2c
	.long	.LASF433
	.byte	0x1
	.value	0xa22
	.quad	.L928
	.uleb128 0x32
	.string	"yes"
	.byte	0x1
	.value	0xf77
	.quad	.L1486
	.uleb128 0x2c
	.long	.LASF434
	.byte	0x1
	.value	0xf8a
	.quad	.L1488
	.uleb128 0x2c
	.long	.LASF435
	.byte	0x1
	.value	0xd26
	.quad	.L1238
	.uleb128 0x2c
	.long	.LASF436
	.byte	0x1
	.value	0xd7a
	.quad	.L1263
	.uleb128 0x2c
	.long	.LASF437
	.byte	0x1
	.value	0xdbb
	.quad	.L1280
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x1
	.value	0xdf8
	.quad	.L1312
	.uleb128 0x2c
	.long	.LASF439
	.byte	0x1
	.value	0xe33
	.quad	.L1327
	.uleb128 0x2c
	.long	.LASF440
	.byte	0x1
	.value	0xf89
	.quad	.L1199
	.uleb128 0x2c
	.long	.LASF441
	.byte	0x1
	.value	0xf74
	.quad	.L1161
	.uleb128 0x2c
	.long	.LASF442
	.byte	0x1
	.value	0xf6d
	.quad	.L1463
	.uleb128 0x2c
	.long	.LASF443
	.byte	0x1
	.value	0xf40
	.quad	.L1464
	.uleb128 0x2c
	.long	.LASF444
	.byte	0x1
	.value	0xf4c
	.quad	.L1471
	.uleb128 0x2c
	.long	.LASF445
	.byte	0x1
	.value	0xf43
	.quad	.L1479
	.uleb128 0x2c
	.long	.LASF446
	.byte	0x1
	.value	0xf57
	.quad	.L859
	.uleb128 0x2c
	.long	.LASF447
	.byte	0x1
	.value	0xf61
	.quad	.L864
	.uleb128 0x2d
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x2858
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x9ad
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x9ae
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2b
	.long	.LASF448
	.byte	0x1
	.value	0x9af
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2d
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x288a
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x9e5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x9e6
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x60
	.long	0x28a4
	.uleb128 0x2b
	.long	.LASF449
	.byte	0x1
	.value	0xa0e
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2d
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x28c8
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0xa66
	.long	0x18ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x90
	.long	0x2934
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0xb09
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0xb0a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x33
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x2b
	.long	.LASF409
	.byte	0x1
	.value	0xb11
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2b
	.long	.LASF410
	.byte	0x1
	.value	0xb11
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF411
	.byte	0x1
	.value	0xb12
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF412
	.byte	0x1
	.value	0xb13
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0xf0
	.long	0x2aac
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0xb3e
	.long	0x1336
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.string	"oop"
	.byte	0x1
	.value	0xb3f
	.long	0x2edf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2b
	.long	.LASF450
	.byte	0x1
	.value	0xb40
	.long	0x136a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2b
	.long	.LASF451
	.byte	0x1
	.value	0xb41
	.long	0x124a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0xb42
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2b
	.long	.LASF452
	.byte	0x1
	.value	0xb43
	.long	0x171e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2d
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x29c0
	.uleb128 0x2b
	.long	.LASF453
	.byte	0x1
	.value	0xb4c
	.long	0x1336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x2e
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x27
	.string	"re"
	.byte	0x1
	.value	0xb5c
	.long	0x16d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x27
	.string	"mg"
	.byte	0x1
	.value	0xb5d
	.long	0x1114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2b
	.long	.LASF454
	.byte	0x1
	.value	0xb5e
	.long	0x1968
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.string	"cp"
	.byte	0x1
	.value	0xb5f
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0xb5f
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x2b
	.long	.LASF455
	.byte	0x1
	.value	0xb60
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0xb61
	.long	0xf91
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0xb71
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0xb72
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.string	"pm"
	.byte	0x1
	.value	0xb73
	.long	0x2c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF456
	.byte	0x1
	.value	0xb74
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2b
	.long	.LASF457
	.byte	0x1
	.value	0xb75
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x2b
	.long	.LASF458
	.byte	0x1
	.value	0xb76
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x2af0
	.uleb128 0x27
	.string	"cc"
	.byte	0x1
	.value	0xc39
	.long	0x15e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.string	"cp"
	.byte	0x1
	.value	0xc3a
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x1
	.value	0xc3c
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0x2d
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x2b86
	.uleb128 0x27
	.string	"cp"
	.byte	0x1
	.value	0xc5f
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0xc5f
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x27
	.string	"cc"
	.byte	0x1
	.value	0xc60
	.long	0x1678
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x1
	.value	0xc61
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2b
	.long	.LASF459
	.byte	0x1
	.value	0xc62
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x2b
	.long	.LASF460
	.byte	0x1
	.value	0xc62
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2b
	.long	.LASF461
	.byte	0x1
	.value	0xc97
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x2bcb
	.uleb128 0x2b
	.long	.LASF77
	.byte	0x1
	.value	0xd2c
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2b
	.long	.LASF462
	.byte	0x1
	.value	0xd2d
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x27
	.string	"uw"
	.byte	0x1
	.value	0xd2e
	.long	0x2ee5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x2d
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x2c47
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0xd4c
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0xd4d
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2d
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x2c24
	.uleb128 0x2b
	.long	.LASF463
	.byte	0x1
	.value	0xd65
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.byte	0
	.uleb128 0x2e
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2b
	.long	.LASF463
	.byte	0x1
	.value	0xda4
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x2ccd
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0xe05
	.long	0x18ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2b
	.long	.LASF463
	.byte	0x1
	.value	0xe06
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2e
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2b
	.long	.LASF409
	.byte	0x1
	.value	0xe1b
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2b
	.long	.LASF410
	.byte	0x1
	.value	0xe1b
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF411
	.byte	0x1
	.value	0xe1c
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF412
	.byte	0x1
	.value	0xe1d
	.long	0x21f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x2dbd
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0xe36
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x2d
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x2d9c
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0xe3d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x27
	.string	"old"
	.byte	0x1
	.value	0xe3e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2b
	.long	.LASF224
	.byte	0x1
	.value	0xe3f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x2d
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x2d59
	.uleb128 0x27
	.string	"m"
	.byte	0x1
	.value	0xe48
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.byte	0
	.uleb128 0x2e
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0xe62
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2e
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0xe72
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0xe94
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x2e27
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0xeb5
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2d
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x2e06
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0xec5
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x2e
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0xedc
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x2e8b
	.uleb128 0x2b
	.long	.LASF464
	.byte	0x1
	.value	0xef7
	.long	0x2eeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2b
	.long	.LASF465
	.byte	0x1
	.value	0xef8
	.long	0x1678
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.string	"re"
	.byte	0x1
	.value	0xef9
	.long	0x16d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.string	"cp"
	.byte	0x1
	.value	0xefa
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0xefa
	.long	0x167e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x2e
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x27
	.string	"uw"
	.byte	0x1
	.value	0xf8c
	.long	0x2ef1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2e
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x27
	.string	"uwb"
	.byte	0x1
	.value	0xf92
	.long	0x2ee5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LASF77
	.byte	0x1
	.value	0xf93
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1730
	.uleb128 0x6
	.byte	0x8
	.long	0x1a16
	.uleb128 0x6
	.byte	0x8
	.long	0x1968
	.uleb128 0x6
	.byte	0x8
	.long	0x1a54
	.uleb128 0x25
	.long	.LASF466
	.byte	0x1
	.value	0xfcb
	.long	0xf5e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f7a
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0xfcb
	.long	0x100a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"max"
	.byte	0x1
	.value	0xfcb
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0xfcd
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0xfce
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF467
	.byte	0x1
	.value	0xfcf
	.long	0x79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF468
	.byte	0x1
	.value	0xfd0
	.long	0xf5e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.value	0xfd1
	.long	0x7f
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x25
	.long	.LASF469
	.byte	0x1
	.value	0x10be
	.long	0xf5e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x301f
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x10be
	.long	0x100a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"max"
	.byte	0x1
	.value	0x10be
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.string	"lp"
	.byte	0x1
	.value	0x10be
	.long	0x1004
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0x10c0
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF470
	.byte	0x1
	.value	0x10c1
	.long	0x79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF467
	.byte	0x1
	.value	0x10c2
	.long	0x79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x10c3
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF224
	.byte	0x1
	.value	0x10c4
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"res"
	.byte	0x1
	.value	0x10c4
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x28
	.long	.LASF471
	.byte	0x1
	.value	0x10f0
	.long	0xf91
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3124
	.uleb128 0x29
	.long	.LASF345
	.byte	0x1
	.value	0x10f0
	.long	0x100a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF472
	.byte	0x1
	.value	0x10f0
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.long	.LASF473
	.byte	0x1
	.value	0x10f0
	.long	0x1336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF474
	.byte	0x1
	.value	0x10f0
	.long	0x1336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"sw"
	.byte	0x1
	.value	0x10f2
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"si"
	.byte	0x1
	.value	0x10f3
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"alt"
	.byte	0x1
	.value	0x10f4
	.long	0xf91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x10f7
	.long	0xf69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x27
	.string	"rv"
	.byte	0x1
	.value	0x10fa
	.long	0xf91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"av"
	.byte	0x1
	.value	0x10fb
	.long	0x1155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ary"
	.byte	0x1
	.value	0x10fc
	.long	0x1336
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"a"
	.byte	0x1
	.value	0x10fd
	.long	0x1336
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x10fd
	.long	0x1336
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF475
	.byte	0x1
	.value	0x1124
	.long	0x7f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x32b3
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x1124
	.long	0x100a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x1124
	.long	0x18ae
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF476
	.byte	0x1
	.value	0x1124
	.long	0x32b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.long	.LASF376
	.byte	0x1
	.value	0x1124
	.long	0x7f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.value	0x1126
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -133
	.uleb128 0x2b
	.long	.LASF477
	.byte	0x1
	.value	0x1127
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -135
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x1128
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x1129
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF478
	.byte	0x1
	.value	0x112a
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x3292
	.uleb128 0x27
	.string	"av"
	.byte	0x1
	.value	0x113b
	.long	0x1155
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"sw"
	.byte	0x1
	.value	0x113c
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x3260
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1143
	.long	0xf5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x1146
	.long	0xf91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x1147
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1148
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x1152
	.long	0x21f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF479
	.byte	0x1
	.value	0x1153
	.long	0x169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x27
	.string	"f"
	.byte	0x1
	.value	0x1163
	.long	0xf49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -134
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x169
	.uleb128 0x25
	.long	.LASF480
	.byte	0x1
	.value	0x119b
	.long	0x18ae
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x32f8
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x119b
	.long	0x18ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x119b
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x34
	.long	.LASF481
	.byte	0x1
	.value	0x11a1
	.long	0x18ae
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3346
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x11a1
	.long	0x18ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x11a1
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"lim"
	.byte	0x1
	.value	0x11a1
	.long	0x18ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF482
	.byte	0x1
	.value	0x11b9
	.long	0x18ae
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3385
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x11b9
	.long	0x18ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x11b9
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x34
	.long	.LASF483
	.byte	0x1
	.value	0x11bf
	.long	0x18ae
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x33d3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x11bf
	.long	0x18ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x11bf
	.long	0xf5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"lim"
	.byte	0x1
	.value	0x11bf
	.long	0x18ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x11dd
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3401
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x11dd
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF486
	.byte	0x1
	.value	0x11ec
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x343c
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x11ec
	.long	0x16d3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x11ee
	.long	0xf91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF487
	.byte	0x1
	.value	0x1202
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3477
	.uleb128 0x29
	.long	.LASF363
	.byte	0x1
	.value	0x1202
	.long	0x16d3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x1204
	.long	0xf91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.long	0x2d
	.long	0x3482
	.uleb128 0x36
	.byte	0
	.uleb128 0x37
	.long	.LASF488
	.byte	0x15
	.byte	0x29
	.long	0x348d
	.uleb128 0xb
	.long	0x3477
	.uleb128 0x38
	.long	.LASF489
	.byte	0x6
	.value	0xd63
	.long	0x349e
	.uleb128 0xb
	.long	0x3477
	.uleb128 0x38
	.long	.LASF490
	.byte	0x6
	.value	0xd8a
	.long	0x3477
	.uleb128 0x37
	.long	.LASF491
	.byte	0x16
	.byte	0x34
	.long	0xf49
	.uleb128 0x37
	.long	.LASF492
	.byte	0x16
	.byte	0x48
	.long	0x57
	.uleb128 0x37
	.long	.LASF493
	.byte	0x16
	.byte	0x51
	.long	0x114f
	.uleb128 0x37
	.long	.LASF494
	.byte	0x16
	.byte	0x52
	.long	0x114f
	.uleb128 0x37
	.long	.LASF495
	.byte	0x16
	.byte	0x5a
	.long	0x114f
	.uleb128 0x38
	.long	.LASF496
	.byte	0x16
	.value	0x112
	.long	0x1691
	.uleb128 0x38
	.long	.LASF497
	.byte	0x16
	.value	0x125
	.long	0x3e6
	.uleb128 0x38
	.long	.LASF498
	.byte	0x16
	.value	0x17e
	.long	0xf91
	.uleb128 0x38
	.long	.LASF499
	.byte	0x16
	.value	0x182
	.long	0xf91
	.uleb128 0x38
	.long	.LASF500
	.byte	0x16
	.value	0x185
	.long	0xf91
	.uleb128 0x38
	.long	.LASF501
	.byte	0x16
	.value	0x18b
	.long	0xf91
	.uleb128 0x37
	.long	.LASF502
	.byte	0x17
	.byte	0x22
	.long	0x1336
	.uleb128 0x37
	.long	.LASF503
	.byte	0x17
	.byte	0x26
	.long	0x1132
	.uleb128 0x37
	.long	.LASF504
	.byte	0x17
	.byte	0x28
	.long	0x1336
	.uleb128 0x37
	.long	.LASF505
	.byte	0x17
	.byte	0x2a
	.long	0x1336
	.uleb128 0x37
	.long	.LASF506
	.byte	0x17
	.byte	0x31
	.long	0x3565
	.uleb128 0x6
	.byte	0x8
	.long	0xe9a
	.uleb128 0x37
	.long	.LASF507
	.byte	0x17
	.byte	0x33
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF508
	.byte	0x17
	.byte	0x34
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF509
	.byte	0x17
	.byte	0x37
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF510
	.byte	0x17
	.byte	0x38
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF511
	.byte	0x17
	.byte	0x44
	.long	0x35a2
	.uleb128 0x6
	.byte	0x8
	.long	0x811
	.uleb128 0x37
	.long	.LASF512
	.byte	0x17
	.byte	0x60
	.long	0x11c7
	.uleb128 0x37
	.long	.LASF513
	.byte	0x17
	.byte	0x81
	.long	0x35be
	.uleb128 0x39
	.long	0x136a
	.uleb128 0x37
	.long	.LASF514
	.byte	0x17
	.byte	0x88
	.long	0x35ce
	.uleb128 0x6
	.byte	0x8
	.long	0x14d8
	.uleb128 0x37
	.long	.LASF515
	.byte	0x17
	.byte	0xa9
	.long	0x1004
	.uleb128 0x37
	.long	.LASF516
	.byte	0x17
	.byte	0xb4
	.long	0x79
	.uleb128 0x37
	.long	.LASF517
	.byte	0x17
	.byte	0xb5
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF518
	.byte	0x17
	.byte	0xb6
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF519
	.byte	0x17
	.byte	0xc0
	.long	0x79
	.uleb128 0x37
	.long	.LASF520
	.byte	0x17
	.byte	0xc1
	.long	0x79
	.uleb128 0x37
	.long	.LASF521
	.byte	0x17
	.byte	0xc2
	.long	0x79
	.uleb128 0x37
	.long	.LASF522
	.byte	0x17
	.byte	0xc3
	.long	0x1004
	.uleb128 0x37
	.long	.LASF523
	.byte	0x17
	.byte	0xc4
	.long	0x1004
	.uleb128 0x37
	.long	.LASF524
	.byte	0x17
	.byte	0xc5
	.long	0x106c
	.uleb128 0x37
	.long	.LASF525
	.byte	0x17
	.byte	0xc6
	.long	0x106c
	.uleb128 0x37
	.long	.LASF526
	.byte	0x17
	.byte	0xc7
	.long	0x79
	.uleb128 0x37
	.long	.LASF527
	.byte	0x17
	.byte	0xc9
	.long	0x189c
	.uleb128 0x37
	.long	.LASF528
	.byte	0x17
	.byte	0xca
	.long	0xf69
	.uleb128 0x37
	.long	.LASF529
	.byte	0x17
	.byte	0xcb
	.long	0x1066
	.uleb128 0x37
	.long	.LASF530
	.byte	0x17
	.byte	0xcd
	.long	0x79
	.uleb128 0x37
	.long	.LASF531
	.byte	0x17
	.byte	0xce
	.long	0xf69
	.uleb128 0x37
	.long	.LASF532
	.byte	0x17
	.byte	0xcf
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF533
	.byte	0x17
	.byte	0xd3
	.long	0x1678
	.uleb128 0x37
	.long	.LASF534
	.byte	0x17
	.byte	0xd4
	.long	0x1962
	.uleb128 0x37
	.long	.LASF535
	.byte	0x17
	.byte	0xd5
	.long	0x16d3
	.uleb128 0x37
	.long	.LASF536
	.byte	0x17
	.byte	0xd6
	.long	0x79
	.uleb128 0x37
	.long	.LASF537
	.byte	0x17
	.byte	0xd7
	.long	0xf91
	.uleb128 0x37
	.long	.LASF538
	.byte	0x17
	.byte	0xd8
	.long	0x1114
	.uleb128 0x37
	.long	.LASF539
	.byte	0x17
	.byte	0xd9
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF540
	.byte	0x17
	.byte	0xda
	.long	0x11c7
	.uleb128 0x37
	.long	.LASF541
	.byte	0x17
	.byte	0xdb
	.long	0x11c7
	.uleb128 0x37
	.long	.LASF542
	.byte	0x17
	.byte	0xdc
	.long	0x79
	.uleb128 0x37
	.long	.LASF543
	.byte	0x17
	.byte	0xdd
	.long	0x169
	.uleb128 0x37
	.long	.LASF544
	.byte	0x17
	.byte	0xde
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF545
	.byte	0x17
	.byte	0xdf
	.long	0xf5e
	.uleb128 0x37
	.long	.LASF546
	.byte	0x17
	.byte	0xe0
	.long	0x79
	.uleb128 0x37
	.long	.LASF547
	.byte	0x17
	.byte	0xe1
	.long	0x169
	.uleb128 0x37
	.long	.LASF548
	.byte	0x17
	.byte	0xe5
	.long	0x16a8
	.uleb128 0x37
	.long	.LASF549
	.byte	0x17
	.byte	0xed
	.long	0x1701
	.uleb128 0x38
	.long	.LASF550
	.byte	0x17
	.value	0x113
	.long	0x7f
	.uleb128 0x38
	.long	.LASF551
	.byte	0x17
	.value	0x115
	.long	0x1155
	.uleb128 0x7
	.long	0xf49
	.long	0x3778
	.uleb128 0x36
	.byte	0
	.uleb128 0x37
	.long	.LASF552
	.byte	0x18
	.byte	0x46
	.long	0x3783
	.uleb128 0xb
	.long	0x376d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x17
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF330:
	.string	"regnode_1"
.LASF68:
	.string	"precomp"
.LASF100:
	.string	"blku_oldretsp"
.LASF299:
	.string	"si_prev"
.LASF367:
	.string	"minend"
.LASF426:
	.string	"S_regtry"
.LASF326:
	.string	"OP_4tree"
.LASF28:
	.string	"op_next"
.LASF244:
	.string	"xiou_any"
.LASF445:
	.string	"say_no"
.LASF500:
	.string	"PL_utf8_digit"
.LASF97:
	.string	"block"
.LASF399:
	.string	"cl_l"
.LASF150:
	.string	"xpvgv"
.LASF341:
	.string	"max_offset"
.LASF177:
	.string	"xio_ifp"
.LASF43:
	.string	"cop_io"
.LASF293:
	.string	"stackinfo"
.LASF144:
	.string	"xhv_keys"
.LASF361:
	.string	"tmps"
.LASF192:
	.string	"xio_flags"
.LASF24:
	.string	"_ISpunct"
.LASF196:
	.string	"svt_set"
.LASF140:
	.string	"xpvhv"
.LASF430:
	.string	"unwind"
.LASF555:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF469:
	.string	"S_regrepeat_hard"
.LASF398:
	.string	"must"
.LASF349:
	.string	"locinput"
.LASF86:
	.string	"gp_hv"
.LASF466:
	.string	"S_regrepeat"
.LASF176:
	.string	"xpvio"
.LASF121:
	.string	"xpviv"
.LASF551:
	.string	"PL_comppad"
.LASF285:
	.string	"sbu_targ"
.LASF314:
	.string	"next"
.LASF316:
	.string	"oldcc"
.LASF325:
	.string	"DESTRUCTORFUNC_t"
.LASF159:
	.string	"xcv_start"
.LASF83:
	.string	"gp_io"
.LASF87:
	.string	"gp_egv"
.LASF277:
	.string	"sbu_iters"
.LASF306:
	.string	"hek_hash"
.LASF441:
	.string	"yes_final"
.LASF400:
	.string	"endpos"
.LASF41:
	.string	"cop_line"
.LASF473:
	.string	"listsvp"
.LASF158:
	.string	"xcv_stash"
.LASF541:
	.string	"PL_reg_curpm"
.LASF353:
	.string	"generic"
.LASF506:
	.string	"PL_savestack"
.LASF315:
	.string	"lastloc"
.LASF472:
	.string	"doinit"
.LASF163:
	.string	"xcv_gv"
.LASF300:
	.string	"si_next"
.LASF118:
	.string	"xpv_cur"
.LASF543:
	.string	"PL_reg_oldsavedlen"
.LASF554:
	.string	"regexec.c"
.LASF465:
	.string	"cctmp"
.LASF354:
	.string	"branch"
.LASF460:
	.string	"cache_bit"
.LASF111:
	.string	"mg_type"
.LASF482:
	.string	"S_reghopmaybe"
.LASF117:
	.string	"xpv_pv"
.LASF428:
	.string	"inner"
.LASF127:
	.string	"xpvmg"
.LASF284:
	.string	"sbu_dstr"
.LASF458:
	.string	"onpar"
.LASF242:
	.string	"cv_flags_t"
.LASF91:
	.string	"gp_line"
.LASF276:
	.string	"subst"
.LASF182:
	.string	"xio_page_len"
.LASF363:
	.string	"prog"
.LASF498:
	.string	"PL_utf8_alnum"
.LASF124:
	.string	"xpvnv"
.LASF151:
	.string	"xgv_gp"
.LASF110:
	.string	"mg_private"
.LASF283:
	.string	"sbu_orig"
.LASF487:
	.string	"S_to_byte_substr"
.LASF499:
	.string	"PL_utf8_space"
.LASF137:
	.string	"xav_arylen"
.LASF80:
	.string	"program"
.LASF160:
	.string	"xcv_root"
.LASF489:
	.string	"PL_fold"
.LASF256:
	.string	"old_in_eval"
.LASF304:
	.string	"hent_hek"
.LASF109:
	.string	"mg_virtual"
.LASF443:
	.string	"do_ifmatch"
.LASF39:
	.string	"cop_seq"
.LASF61:
	.string	"sv_flags"
.LASF365:
	.string	"strend"
.LASF384:
	.string	"restart"
.LASF58:
	.string	"broiled"
.LASF187:
	.string	"xio_fmt_gv"
.LASF488:
	.string	"PL_utf8skip"
.LASF90:
	.string	"gp_flags"
.LASF96:
	.string	"cx_u"
.LASF82:
	.string	"gp_refcnt"
.LASF267:
	.string	"itervar"
.LASF76:
	.string	"nparens"
.LASF220:
	.string	"type"
.LASF496:
	.string	"PL_runops"
.LASF391:
	.string	"giveup"
.LASF92:
	.string	"gp_file"
.LASF387:
	.string	"try_at_offset"
.LASF324:
	.string	"regfree_t"
.LASF181:
	.string	"xio_page"
.LASF347:
	.string	"lastcp"
.LASF327:
	.string	"regnode_string"
.LASF550:
	.string	"PL_reg_match_utf8"
.LASF166:
	.string	"xcv_padlist"
.LASF390:
	.string	"hop_and_restart"
.LASF342:
	.string	"substr"
.LASF425:
	.string	"little"
.LASF275:
	.string	"blku_loop"
.LASF81:
	.string	"gp_sv"
.LASF22:
	.string	"_ISblank"
.LASF0:
	.string	"unsigned char"
.LASF218:
	.string	"PerlIO"
.LASF286:
	.string	"sbu_s"
.LASF448:
	.string	"ulen"
.LASF318:
	.string	"float"
.LASF449:
	.string	"inclasslen"
.LASF408:
	.string	"skip"
.LASF517:
	.string	"PL_regnpar"
.LASF463:
	.string	"text_node"
.LASF268:
	.string	"itersave"
.LASF334:
	.string	"regnode_charclass"
.LASF59:
	.string	"sv_any"
.LASF372:
	.string	"strpos"
.LASF255:
	.string	"block_eval"
.LASF79:
	.string	"reganch"
.LASF211:
	.string	"stashes"
.LASF457:
	.string	"osize"
.LASF65:
	.string	"endp"
.LASF351:
	.string	"re_unwind_branch_t"
.LASF16:
	.string	"_ISalpha"
.LASF525:
	.string	"PL_reglastcloseparen"
.LASF393:
	.string	"slen"
.LASF529:
	.string	"PL_regdata"
.LASF11:
	.string	"size_t"
.LASF358:
	.string	"S_regcppop"
.LASF503:
	.string	"PL_op"
.LASF415:
	.string	"foldlen"
.LASF20:
	.string	"_ISprint"
.LASF507:
	.string	"PL_savestack_ix"
.LASF535:
	.string	"PL_reg_re"
.LASF25:
	.string	"_ISalnum"
.LASF494:
	.string	"PL_defgv"
.LASF239:
	.string	"SVt_PVGV"
.LASF386:
	.string	"try_at_start"
.LASF274:
	.string	"blku_eval"
.LASF72:
	.string	"sublen"
.LASF133:
	.string	"xav_fill"
.LASF19:
	.string	"_ISspace"
.LASF108:
	.string	"mg_moremagic"
.LASF435:
	.string	"do_branch"
.LASF288:
	.string	"sbu_strend"
.LASF40:
	.string	"cop_arybase"
.LASF297:
	.string	"si_cxmax"
.LASF438:
	.string	"repeat"
.LASF114:
	.string	"mg_ptr"
.LASF272:
	.string	"itermax"
.LASF311:
	.string	"parenfloor"
.LASF323:
	.string	"scream_pos"
.LASF190:
	.string	"xio_subprocess"
.LASF343:
	.string	"utf8_substr"
.LASF552:
	.string	"PL_regkind"
.LASF70:
	.string	"subbeg"
.LASF64:
	.string	"startp"
.LASF356:
	.string	"paren_elems_to_push"
.LASF389:
	.string	"set_useful"
.LASF338:
	.string	"re_scream_pos_data"
.LASF406:
	.string	"got_it"
.LASF545:
	.string	"PL_reg_leftiter"
.LASF18:
	.string	"_ISxdigit"
.LASF313:
	.string	"scan"
.LASF553:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF321:
	.string	"re_scream_pos_data_s"
.LASF63:
	.string	"regexp"
.LASF524:
	.string	"PL_reglastparen"
.LASF401:
	.string	"startpos"
.LASF537:
	.string	"PL_reg_sv"
.LASF549:
	.string	"PL_regfree"
.LASF62:
	.string	"REGEXP"
.LASF60:
	.string	"sv_refcnt"
.LASF197:
	.string	"svt_len"
.LASF221:
	.string	"next_off"
.LASF253:
	.string	"lval"
.LASF34:
	.string	"op_flags"
.LASF427:
	.string	"S_regmatch"
.LASF42:
	.string	"cop_warnings"
.LASF302:
	.string	"PERL_SI"
.LASF357:
	.string	"S_regcppush"
.LASF67:
	.string	"substrs"
.LASF540:
	.string	"PL_reg_oldcurpm"
.LASF468:
	.string	"hardcount"
.LASF102:
	.string	"blku_oldscopesp"
.LASF236:
	.string	"SVt_PVAV"
.LASF296:
	.string	"si_cxix"
.LASF141:
	.string	"xhv_array"
.LASF71:
	.string	"offsets"
.LASF388:
	.string	"find_anchor"
.LASF502:
	.string	"PL_stack_sp"
.LASF518:
	.string	"PL_regsize"
.LASF188:
	.string	"xio_bottom_name"
.LASF478:
	.string	"plen"
.LASF234:
	.string	"SVt_PVBM"
.LASF352:
	.string	"re_unwind_t"
.LASF419:
	.string	"phooey"
.LASF106:
	.string	"MAGIC"
.LASF36:
	.string	"cop_label"
.LASF112:
	.string	"mg_flags"
.LASF260:
	.string	"cur_text"
.LASF130:
	.string	"XPVAV"
.LASF442:
	.string	"yes_loud"
.LASF474:
	.string	"altsvp"
.LASF238:
	.string	"SVt_PVCV"
.LASF75:
	.string	"prelen"
.LASF23:
	.string	"_IScntrl"
.LASF513:
	.string	"PL_curcop"
.LASF370:
	.string	"Perl_pregexec"
.LASF31:
	.string	"op_targ"
.LASF170:
	.string	"XPVBM"
.LASF14:
	.string	"_ISupper"
.LASF189:
	.string	"xio_bottom_gv"
.LASF359:
	.string	"paren"
.LASF493:
	.string	"PL_stderrgv"
.LASF383:
	.string	"success_at_start"
.LASF101:
	.string	"blku_oldmarksp"
.LASF378:
	.string	"other_last"
.LASF362:
	.string	"S_regcp_set_to"
.LASF431:
	.string	"meol"
.LASF77:
	.string	"lastparen"
.LASF156:
	.string	"XPVCV"
.LASF375:
	.string	"check"
.LASF475:
	.string	"S_reginclass"
.LASF270:
	.string	"iterary"
.LASF417:
	.string	"dontbother"
.LASF385:
	.string	"do_other_anchored"
.LASF373:
	.string	"start_shift"
.LASF504:
	.string	"PL_curpad"
.LASF515:
	.string	"PL_screamfirst"
.LASF9:
	.string	"__ssize_t"
.LASF223:
	.string	"reg_data"
.LASF186:
	.string	"xio_fmt_name"
.LASF305:
	.string	"hent_val"
.LASF174:
	.string	"xbm_rare"
.LASF125:
	.string	"xnv_nv"
.LASF303:
	.string	"hent_next"
.LASF382:
	.string	"report_neq"
.LASF199:
	.string	"svt_free"
.LASF54:
	.string	"op_pmdynflags"
.LASF310:
	.string	"curcur"
.LASF240:
	.string	"SVt_PVFM"
.LASF412:
	.string	"tmpbuf2"
.LASF309:
	.string	"CURCUR"
.LASF377:
	.string	"ml_anch"
.LASF210:
	.string	"clone_params"
.LASF369:
	.string	"nosave"
.LASF290:
	.string	"sbu_rx"
.LASF287:
	.string	"sbu_m"
.LASF167:
	.string	"xcv_outside"
.LASF245:
	.string	"PADLIST"
.LASF208:
	.string	"any_dxptr"
.LASF510:
	.string	"PL_tmps_floor"
.LASF155:
	.string	"xgv_flags"
.LASF107:
	.string	"magic"
.LASF452:
	.string	"oreg"
.LASF547:
	.string	"PL_reg_poscache_size"
.LASF337:
	.string	"classflags"
.LASF237:
	.string	"SVt_PVHV"
.LASF446:
	.string	"do_longjump"
.LASF226:
	.string	"SVt_NULL"
.LASF405:
	.string	"uskip"
.LASF194:
	.string	"mgvtbl"
.LASF396:
	.string	"last1"
.LASF397:
	.string	"last2"
.LASF484:
	.string	"S_cache_re"
.LASF149:
	.string	"XPVGV"
.LASF193:
	.string	"MGVTBL"
.LASF292:
	.string	"cx_subst"
.LASF241:
	.string	"SVt_PVIO"
.LASF420:
	.string	"after_try"
.LASF231:
	.string	"SVt_PVIV"
.LASF73:
	.string	"refcnt"
.LASF456:
	.string	"oprecomp"
.LASF282:
	.string	"sbu_rxtainted"
.LASF527:
	.string	"PL_reg_start_tmp"
.LASF447:
	.string	"reenter"
.LASF139:
	.string	"XPVHV"
.LASF7:
	.string	"sizetype"
.LASF332:
	.string	"regnode_2"
.LASF519:
	.string	"PL_reginput"
.LASF50:
	.string	"op_pmnext"
.LASF161:
	.string	"xcv_xsub"
.LASF252:
	.string	"hasargs"
.LASF35:
	.string	"op_private"
.LASF531:
	.string	"PL_reg_flags"
.LASF202:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF505:
	.string	"PL_stack_base"
.LASF479:
	.string	"tmplen"
.LASF520:
	.string	"PL_regbol"
.LASF175:
	.string	"XPVIO"
.LASF470:
	.string	"start"
.LASF120:
	.string	"XPVIV"
.LASF136:
	.string	"xav_alloc"
.LASF280:
	.string	"sbu_oldsave"
.LASF143:
	.string	"xhv_max"
.LASF74:
	.string	"minlen"
.LASF224:
	.string	"count"
.LASF368:
	.string	"screamer"
.LASF129:
	.string	"xmg_stash"
.LASF279:
	.string	"sbu_rflags"
.LASF66:
	.string	"regstclass"
.LASF146:
	.string	"xhv_eiter"
.LASF411:
	.string	"tmpbuf1"
.LASF235:
	.string	"SVt_PVLV"
.LASF329:
	.string	"string"
.LASF222:
	.string	"reg_substr_data"
.LASF249:
	.string	"savearray"
.LASF269:
	.string	"iterlval"
.LASF454:
	.string	"state"
.LASF322:
	.string	"scream_olds"
.LASF380:
	.string	"fail"
.LASF105:
	.string	"blk_u"
.LASF233:
	.string	"SVt_PVMG"
.LASF360:
	.string	"input"
.LASF135:
	.string	"xof_off"
.LASF481:
	.string	"S_reghop3"
.LASF153:
	.string	"xgv_namelen"
.LASF414:
	.string	"foldbuf"
.LASF47:
	.string	"op_last"
.LASF216:
	.string	"__dirstream"
.LASF205:
	.string	"any_long"
.LASF509:
	.string	"PL_tmps_ix"
.LASF33:
	.string	"op_seq"
.LASF508:
	.string	"PL_savestack_max"
.LASF232:
	.string	"SVt_PVNV"
.LASF44:
	.string	"PMOP"
.LASF173:
	.string	"xbm_previous"
.LASF78:
	.string	"lastcloseparen"
.LASF126:
	.string	"XPVMG"
.LASF522:
	.string	"PL_regstartp"
.LASF278:
	.string	"sbu_maxiters"
.LASF191:
	.string	"xio_type"
.LASF451:
	.string	"old_comppad"
.LASF339:
	.string	"reg_substr_datum"
.LASF6:
	.string	"long int"
.LASF198:
	.string	"svt_clear"
.LASF178:
	.string	"xio_ofp"
.LASF154:
	.string	"xgv_stash"
.LASF409:
	.string	"ulen1"
.LASF410:
	.string	"ulen2"
.LASF257:
	.string	"old_op_type"
.LASF48:
	.string	"op_pmreplroot"
.LASF165:
	.string	"xcv_depth"
.LASF89:
	.string	"gp_cvgen"
.LASF467:
	.string	"loceol"
.LASF123:
	.string	"XPVNV"
.LASF145:
	.string	"xhv_riter"
.LASF104:
	.string	"blku_gimme"
.LASF262:
	.string	"label"
.LASF94:
	.string	"context"
.LASF248:
	.string	"dfoutgv"
.LASF395:
	.string	"last"
.LASF172:
	.string	"xbm_useful"
.LASF49:
	.string	"op_pmreplstart"
.LASF227:
	.string	"SVt_IV"
.LASF526:
	.string	"PL_regtill"
.LASF219:
	.string	"regnode"
.LASF265:
	.string	"next_op"
.LASF371:
	.string	"Perl_re_intuit_start"
.LASF477:
	.string	"match"
.LASF29:
	.string	"op_sibling"
.LASF179:
	.string	"xio_dirpu"
.LASF204:
	.string	"any_iv"
.LASF147:
	.string	"xhv_pmroot"
.LASF3:
	.string	"long unsigned int"
.LASF45:
	.string	"pmop"
.LASF374:
	.string	"end_shift"
.LASF281:
	.string	"sbu_once"
.LASF56:
	.string	"PerlInterpreter"
.LASF459:
	.string	"cache_offset"
.LASF8:
	.string	"char"
.LASF250:
	.string	"argarray"
.LASF184:
	.string	"xio_top_name"
.LASF501:
	.string	"PL_utf8_mark"
.LASF115:
	.string	"mg_len"
.LASF243:
	.string	"xiou_dirp"
.LASF152:
	.string	"xgv_name"
.LASF439:
	.string	"assume_ok_easy"
.LASF512:
	.string	"PL_curpm"
.LASF247:
	.string	"block_sub"
.LASF180:
	.string	"xio_lines"
.LASF523:
	.string	"PL_regendp"
.LASF344:
	.string	"re_cc_state"
.LASF345:
	.string	"node"
.LASF295:
	.string	"si_cxstack"
.LASF381:
	.string	"fail_finish"
.LASF119:
	.string	"xpv_len"
.LASF392:
	.string	"retry_floating_check"
.LASF32:
	.string	"op_type"
.LASF533:
	.string	"PL_regcc"
.LASF27:
	.string	"STRLEN"
.LASF495:
	.string	"PL_replgv"
.LASF258:
	.string	"old_namesv"
.LASF228:
	.string	"SVt_NV"
.LASF21:
	.string	"_ISgraph"
.LASF308:
	.string	"hek_key"
.LASF434:
	.string	"do_no"
.LASF461:
	.string	"size"
.LASF164:
	.string	"xcv_file"
.LASF213:
	.string	"proto_perl"
.LASF366:
	.string	"strbeg"
.LASF259:
	.string	"old_eval_root"
.LASF464:
	.string	"cur_call_cc"
.LASF497:
	.string	"PL_sv_undef"
.LASF317:
	.string	"CHECKPOINT"
.LASF422:
	.string	"back_max"
.LASF416:
	.string	"Perl_regexec_flags"
.LASF246:
	.string	"PADOFFSET"
.LASF394:
	.string	"eshift"
.LASF340:
	.string	"min_offset"
.LASF52:
	.string	"op_pmflags"
.LASF548:
	.string	"PL_regcompp"
.LASF225:
	.string	"what"
.LASF273:
	.string	"blku_sub"
.LASF57:
	.string	"interpreter"
.LASF532:
	.string	"PL_reg_eval_set"
.LASF331:
	.string	"arg1"
.LASF103:
	.string	"blku_oldpm"
.LASF492:
	.string	"PL_multiline"
.LASF46:
	.string	"op_first"
.LASF26:
	.string	"double"
.LASF432:
	.string	"seol"
.LASF328:
	.string	"str_len"
.LASF376:
	.string	"do_utf8"
.LASF53:
	.string	"op_pmpermflags"
.LASF116:
	.string	"xrv_rv"
.LASF134:
	.string	"xav_max"
.LASF516:
	.string	"PL_regprecomp"
.LASF10:
	.string	"ssize_t"
.LASF30:
	.string	"op_ppaddr"
.LASF203:
	.string	"any_i32"
.LASF485:
	.string	"restore_pos"
.LASF402:
	.string	"S_find_byclass"
.LASF546:
	.string	"PL_reg_poscache"
.LASF336:
	.string	"regnode_charclass_class"
.LASF230:
	.string	"SVt_PV"
.LASF38:
	.string	"cop_filegv"
.LASF206:
	.string	"any_bool"
.LASF544:
	.string	"PL_reg_maxiter"
.LASF453:
	.string	"before"
.LASF169:
	.string	"xcv_outside_seq"
.LASF69:
	.string	"data"
.LASF364:
	.string	"stringarg"
.LASF298:
	.string	"si_type"
.LASF132:
	.string	"xav_array"
.LASF229:
	.string	"SVt_RV"
.LASF491:
	.string	"PL_dowarn"
.LASF209:
	.string	"CLONE_PARAMS"
.LASF320:
	.string	"regcomp_t"
.LASF263:
	.string	"resetsp"
.LASF93:
	.string	"PERL_CONTEXT"
.LASF15:
	.string	"_ISlower"
.LASF407:
	.string	"do_exactf"
.LASF142:
	.string	"xhv_fill"
.LASF480:
	.string	"S_reghop"
.LASF122:
	.string	"xiv_iv"
.LASF312:
	.string	"minmod"
.LASF486:
	.string	"S_to_utf8_substr"
.LASF319:
	.string	"runops_proc_t"
.LASF98:
	.string	"blku_oldsp"
.LASF335:
	.string	"bitmap"
.LASF403:
	.string	"norun"
.LASF471:
	.string	"Perl_regclass_swash"
.LASF264:
	.string	"redo_op"
.LASF437:
	.string	"assume_ok_REG"
.LASF307:
	.string	"hek_len"
.LASF538:
	.string	"PL_reg_magic"
.LASF521:
	.string	"PL_regeol"
.LASF413:
	.string	"tmpbuf"
.LASF12:
	.string	"long long unsigned int"
.LASF534:
	.string	"PL_reg_call_cc"
.LASF266:
	.string	"last_op"
.LASF539:
	.string	"PL_reg_oldpos"
.LASF440:
	.string	"no_final"
.LASF379:
	.string	"check_at"
.LASF201:
	.string	"svt_dup"
.LASF301:
	.string	"si_markoff"
.LASF436:
	.string	"assume_ok_MM"
.LASF185:
	.string	"xio_top_gv"
.LASF455:
	.string	"toggleutf"
.LASF289:
	.string	"sbu_rxres"
.LASF444:
	.string	"say_yes"
.LASF514:
	.string	"PL_curstackinfo"
.LASF423:
	.string	"back_min"
.LASF55:
	.string	"op_pmstash"
.LASF195:
	.string	"svt_get"
.LASF483:
	.string	"S_reghopmaybe3"
.LASF84:
	.string	"gp_form"
.LASF355:
	.string	"retval"
.LASF404:
	.string	"doevery"
.LASF99:
	.string	"blku_oldcop"
.LASF37:
	.string	"cop_stash"
.LASF13:
	.string	"long long int"
.LASF214:
	.string	"line_t"
.LASF148:
	.string	"xhv_name"
.LASF294:
	.string	"si_stack"
.LASF200:
	.string	"svt_copy"
.LASF528:
	.string	"PL_reg_start_tmpl"
.LASF95:
	.string	"cx_type"
.LASF429:
	.string	"logical"
.LASF138:
	.string	"xav_flags"
.LASF17:
	.string	"_ISdigit"
.LASF350:
	.string	"nextchr"
.LASF271:
	.string	"iterix"
.LASF128:
	.string	"xmg_magic"
.LASF424:
	.string	"float_real"
.LASF113:
	.string	"mg_obj"
.LASF207:
	.string	"any_dptr"
.LASF131:
	.string	"xpvav"
.LASF51:
	.string	"op_pmregexp"
.LASF450:
	.string	"ocurcop"
.LASF162:
	.string	"xcv_xsubany"
.LASF476:
	.string	"lenp"
.LASF183:
	.string	"xio_lines_left"
.LASF85:
	.string	"gp_av"
.LASF171:
	.string	"xpvbm"
.LASF536:
	.string	"PL_reg_ganch"
.LASF542:
	.string	"PL_reg_oldsaved"
.LASF333:
	.string	"arg2"
.LASF490:
	.string	"PL_fold_locale"
.LASF261:
	.string	"block_loop"
.LASF462:
	.string	"unwind1"
.LASF511:
	.string	"PL_Xpv"
.LASF168:
	.string	"xcv_flags"
.LASF348:
	.string	"re_unwind_generic_t"
.LASF2:
	.string	"unsigned int"
.LASF157:
	.string	"xpvcv"
.LASF421:
	.string	"find_last"
.LASF530:
	.string	"PL_bostr"
.LASF254:
	.string	"oldcomppad"
.LASF217:
	.string	"_PerlIO"
.LASF5:
	.string	"short int"
.LASF88:
	.string	"gp_cv"
.LASF346:
	.string	"prev"
.LASF251:
	.string	"olddepth"
.LASF433:
	.string	"no_anyof"
.LASF291:
	.string	"cx_blk"
.LASF215:
	.string	"PerlIOl"
.LASF212:
	.string	"flags"
.LASF418:
	.string	"oreplsv"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
