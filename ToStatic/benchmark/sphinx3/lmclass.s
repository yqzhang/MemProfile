	.file	"lmclass.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# lmclass.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"LMCLASS %s\n"
.LC1:
	.string	"    %s\t%d\n"
.LC2:
	.string	"END %s\n"
	.text
	.globl	lmclass_dump
	.type	lmclass_dump, @function
lmclass_dump:
.LFB2:
	.file 1 "lmclass.c"
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cl, cl
	movq	%rsi, -32(%rbp)	# fp, fp
	.loc 1 64 0
	movq	-24(%rbp), %rax	# cl, tmp63
	movq	(%rax), %rdx	# cl_2(D)->name, D.5190
	movq	-32(%rbp), %rax	# fp, tmp64
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp64,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 65 0
	movq	-24(%rbp), %rax	# cl, tmp65
	movq	8(%rax), %rax	# cl_2(D)->wordlist, tmp66
	movq	%rax, -8(%rbp)	# tmp66, w
	jmp	.L2	#
.L3:
	.loc 1 66 0 discriminator 2
	movq	-8(%rbp), %rax	# w, tmp67
	movl	12(%rax), %ecx	# w_1->LOGprob, D.5191
	movq	-8(%rbp), %rax	# w, tmp68
	movq	(%rax), %rdx	# w_1->word, D.5190
	movq	-32(%rbp), %rax	# fp, tmp69
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 65 0 discriminator 2
	movq	-8(%rbp), %rax	# w, tmp70
	movq	16(%rax), %rax	# w_1->next, tmp71
	movq	%rax, -8(%rbp)	# tmp71, w
.L2:
	.loc 1 65 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, w
	jne	.L3	#,
	.loc 1 67 0 is_stmt 1
	movq	-24(%rbp), %rax	# cl, tmp72
	movq	(%rax), %rdx	# cl_2(D)->name, D.5190
	movq	-32(%rbp), %rax	# fp, tmp73
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 69 0
	movq	-32(%rbp), %rax	# fp, tmp74
	movq	%rax, %rdi	# tmp74,
	call	fflush	#
	.loc 1 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	lmclass_dump, .-lmclass_dump
	.globl	lmclass_set_dump
	.type	lmclass_set_dump, @function
lmclass_set_dump:
.LFB3:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	movq	%rsi, -32(%rbp)	# fp, fp
	.loc 1 78 0
	movq	-24(%rbp), %rax	# set, tmp59
	movq	(%rax), %rax	# set_2(D)->lmclass_list, tmp60
	movq	%rax, -8(%rbp)	# tmp60, cl
	jmp	.L5	#
.L6:
	.loc 1 79 0 discriminator 2
	movq	-32(%rbp), %rdx	# fp, tmp61
	movq	-8(%rbp), %rax	# cl, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	lmclass_dump	#
	.loc 1 78 0 discriminator 2
	movq	-8(%rbp), %rax	# cl, tmp63
	movq	16(%rax), %rax	# cl_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, cl
.L5:
	.loc 1 78 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, cl
	jne	.L6	#,
	.loc 1 80 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lmclass_set_dump, .-lmclass_set_dump
	.section	.rodata
.LC3:
	.string	"lmclass.c"
	.text
	.globl	lmclass_newset
	.type	lmclass_newset, @function
lmclass_newset:
.LFB4:
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 86 0
	movl	$86, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$8, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp61, set
	.loc 1 87 0
	movq	-8(%rbp), %rax	# set, tmp62
	movq	$0, (%rax)	#, set_1->lmclass_list
	.loc 1 88 0
	movq	-8(%rbp), %rax	# set, D.5195
	.loc 1 89 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	lmclass_newset, .-lmclass_newset
	.type	lmclass_add, @function
lmclass_add:
.LFB5:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	movq	%rsi, -32(%rbp)	# new, new
	.loc 1 98 0
	movq	$0, -8(%rbp)	#, prev
	.loc 1 99 0
	movq	-24(%rbp), %rax	# set, tmp64
	movq	(%rax), %rax	# set_5(D)->lmclass_list, tmp65
	movq	%rax, -16(%rbp)	# tmp65, cl
	jmp	.L10	#
.L12:
	.loc 1 102 0
	movq	-16(%rbp), %rax	# cl, tmp66
	movq	%rax, -8(%rbp)	# tmp66, prev
	.loc 1 101 0
	movq	-16(%rbp), %rax	# cl, tmp67
	movq	16(%rax), %rax	# cl_1->next, tmp68
	movq	%rax, -16(%rbp)	# tmp68, cl
.L10:
	.loc 1 99 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, cl
	je	.L11	#,
	.loc 1 100 0
	movq	-32(%rbp), %rax	# new, tmp69
	movq	(%rax), %rdx	# new_7(D)->name, D.5198
	movq	-16(%rbp), %rax	# cl, tmp70
	movq	(%rax), %rax	# cl_1->name, D.5198
	movq	%rdx, %rsi	# D.5198,
	movq	%rax, %rdi	# D.5198,
	call	strcmp	#
	testl	%eax, %eax	# D.5199
	jne	.L12	#,
.L11:
	.loc 1 104 0
	cmpq	$0, -16(%rbp)	#, cl
	je	.L13	#,
	.loc 1 105 0
	movl	$0, %eax	#, D.5197
	jmp	.L14	#
.L13:
	.loc 1 107 0
	cmpq	$0, -8(%rbp)	#, prev
	je	.L15	#,
	.loc 1 108 0
	movq	-8(%rbp), %rax	# prev, tmp71
	movq	-32(%rbp), %rdx	# new, tmp72
	movq	%rdx, 16(%rax)	# tmp72, prev_2->next
	jmp	.L16	#
.L15:
	.loc 1 110 0
	movq	-24(%rbp), %rax	# set, tmp73
	movq	-32(%rbp), %rdx	# new, tmp74
	movq	%rdx, (%rax)	# tmp74, set_5(D)->lmclass_list
.L16:
	.loc 1 111 0
	movq	-32(%rbp), %rax	# new, tmp75
	movq	$0, 16(%rax)	#, new_7(D)->next
	.loc 1 113 0
	movq	-24(%rbp), %rax	# set, D.5197
.L14:
	.loc 1 114 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	lmclass_add, .-lmclass_add
	.type	lmclass_addword, @function
lmclass_addword:
.LFB6:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# class, class
	movq	%rsi, -32(%rbp)	# new, new
	.loc 1 123 0
	movq	$0, -8(%rbp)	#, prev
	.loc 1 124 0
	movq	-24(%rbp), %rax	# class, tmp64
	movq	8(%rax), %rax	# class_5(D)->wordlist, tmp65
	movq	%rax, -16(%rbp)	# tmp65, w
	jmp	.L18	#
.L20:
	.loc 1 125 0 discriminator 1
	movq	-16(%rbp), %rax	# w, tmp66
	movq	%rax, -8(%rbp)	# tmp66, prev
	.loc 1 124 0 discriminator 1
	movq	-16(%rbp), %rax	# w, tmp67
	movq	16(%rax), %rax	# w_1->next, tmp68
	movq	%rax, -16(%rbp)	# tmp68, w
.L18:
	cmpq	$0, -16(%rbp)	#, w
	je	.L19	#,
	.loc 1 124 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# new, tmp69
	movq	(%rax), %rdx	# new_7(D)->word, D.5201
	movq	-16(%rbp), %rax	# w, tmp70
	movq	(%rax), %rax	# w_1->word, D.5201
	movq	%rdx, %rsi	# D.5201,
	movq	%rax, %rdi	# D.5201,
	call	strcmp	#
	testl	%eax, %eax	# D.5202
	jne	.L20	#,
.L19:
	.loc 1 126 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, w
	je	.L21	#,
	.loc 1 127 0
	movl	$0, %eax	#, D.5200
	jmp	.L22	#
.L21:
	.loc 1 129 0
	cmpq	$0, -8(%rbp)	#, prev
	je	.L23	#,
	.loc 1 130 0
	movq	-8(%rbp), %rax	# prev, tmp71
	movq	-32(%rbp), %rdx	# new, tmp72
	movq	%rdx, 16(%rax)	# tmp72, prev_2->next
	jmp	.L24	#
.L23:
	.loc 1 132 0
	movq	-24(%rbp), %rax	# class, tmp73
	movq	-32(%rbp), %rdx	# new, tmp74
	movq	%rdx, 8(%rax)	# tmp74, class_5(D)->wordlist
.L24:
	.loc 1 133 0
	movq	-32(%rbp), %rax	# new, tmp75
	movq	$0, 16(%rax)	#, new_7(D)->next
	.loc 1 135 0
	movq	-24(%rbp), %rax	# class, D.5200
.L22:
	.loc 1 136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	lmclass_addword, .-lmclass_addword
	.section	.rodata
.LC4:
	.string	"INFO"
.LC5:
	.string	"Reading LM Class file '%s'\n"
.LC6:
	.string	"r"
.LC7:
	.string	"FATAL_ERROR"
.LC8:
	.string	"Line %d: Line too long:\n\t%s\n"
.LC9:
	.string	"LMCLASS"
	.align 8
.LC10:
	.string	"Line %d: Expecting LMCLASS <classname>\n"
.LC11:
	.string	"WARNING"
	.align 8
.LC12:
	.string	"Line %d: LM class name(%s) not enclosed in []\n"
	.align 8
.LC13:
	.string	"Line %d: lmclass_add(%s) failed (duplicate?)\n"
.LC15:
	.string	"Premature EOF(%s)\n"
.LC16:
	.string	"Line %d: Syntax error\n"
.LC17:
	.string	"END"
.LC18:
	.string	"%e"
	.align 8
.LC20:
	.string	"Line %d: Prob(%s) out of range (0,1)\n"
	.align 8
.LC21:
	.string	"Line %d: lmclass_addword(%s) failed (duplicate?)\n"
.LC22:
	.string	"Sum(prob)(LMClass %s) = %e\n"
	.align 8
.LC26:
	.string	"Loaded LM Class '%s'; %d words\n"
	.text
	.globl	lmclass_loadfile
	.type	lmclass_loadfile, @function
lmclass_loadfile:
.LFB7:
	.loc 1 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$49256, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -49256(%rbp)	# lmclass_set, lmclass_set
	movq	%rsi, -49264(%rbp)	# file, file
	.loc 1 139 0
	movq	%fs:40, %rax	#, tmp174
	movq	%rax, -24(%rbp)	# tmp174, D.5211
	xorl	%eax, %eax	# tmp174
	.loc 1 150 0
	movl	$.LC4, %edx	#,
	movl	$150, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	movq	-49264(%rbp), %rax	# file, tmp109
	movq	%rax, %rsi	# tmp109,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 151 0
	movq	-49264(%rbp), %rax	# file, tmp110
	movl	$151, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	_myfopen	#
	movq	%rax, -49200(%rbp)	# tmp111, fp
	.loc 1 154 0
	movl	$0, -49244(%rbp)	#, lineno
	.loc 1 157 0
	jmp	.L26	#
.L28:
	.loc 1 159 0
	addl	$1, -49244(%rbp)	#, lineno
.L26:
	.loc 1 157 0 discriminator 1
	movq	-49200(%rbp), %rdx	# fp, tmp112
	leaq	-16416(%rbp), %rax	#, tmp113
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	fgets	#
	movq	%rax, -49192(%rbp)	# tmp114, _eof
	cmpq	$0, -49192(%rbp)	#, _eof
	je	.L27	#,
	.loc 1 158 0 discriminator 2
	movzbl	-16416(%rbp), %eax	# line, D.5203
	.loc 1 157 0 discriminator 2
	cmpb	$35, %al	#, D.5203
	je	.L28	#,
	.loc 1 158 0
	leaq	-49184(%rbp), %rcx	#, tmp115
	leaq	-16416(%rbp), %rax	#, tmp116
	movl	$4096, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	str2words	#
	movl	%eax, -49240(%rbp)	# tmp117, nwd
	cmpl	$0, -49240(%rbp)	#, nwd
	je	.L28	#,
.L27:
	.loc 1 161 0
	cmpq	$0, -49192(%rbp)	#, _eof
	jne	.L29	#,
	.loc 1 162 0
	nop
	.loc 1 259 0
	movq	-49200(%rbp), %rax	# fp, tmp172
	movq	%rax, %rdi	# tmp172,
	call	fclose	#
	.loc 1 261 0
	movq	-49256(%rbp), %rax	# lmclass_set, D.5204
	.loc 1 262 0
	movq	-24(%rbp), %rbx	# D.5211, tmp175
	xorq	%fs:40, %rbx	#, tmp175
	je	.L64	#,
	jmp	.L66	#
.L29:
	.loc 1 163 0
	addl	$1, -49244(%rbp)	#, lineno
	.loc 1 165 0
	cmpl	$0, -49240(%rbp)	#, nwd
	jns	.L31	#,
	.loc 1 166 0
	movl	$.LC7, %edx	#,
	movl	$166, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	leaq	-16416(%rbp), %rdx	#, tmp118
	movl	-49244(%rbp), %eax	# lineno, tmp119
	movl	%eax, %esi	# tmp119,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L31:
	.loc 1 168 0
	cmpl	$2, -49240(%rbp)	#, nwd
	jne	.L32	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	movq	-49184(%rbp), %rax	# word, D.5205
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# D.5205,
	call	strcmp	#
	testl	%eax, %eax	# D.5206
	je	.L33	#,
.L32:
	.loc 1 169 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$169, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-49244(%rbp), %eax	# lineno, tmp120
	movl	%eax, %esi	# tmp120,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L33:
	.loc 1 171 0
	movq	-49176(%rbp), %rax	# word, D.5205
	movzbl	(%rax), %eax	# *_37, D.5203
	cmpb	$91, %al	#, D.5203
	jne	.L34	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movq	-49176(%rbp), %rbx	# word, D.5205
	movq	-49176(%rbp), %rax	# word, D.5205
	movq	%rax, %rdi	# D.5205,
	call	strlen	#
	subq	$1, %rax	#, D.5208
	addq	%rbx, %rax	# D.5205, D.5205
	movzbl	(%rax), %eax	# *_43, D.5203
	cmpb	$93, %al	#, D.5203
	je	.L35	#,
.L34:
	.loc 1 172 0 is_stmt 1
	movl	$.LC11, %edx	#,
	movl	$172, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-49176(%rbp), %rdx	# word, D.5205
	movl	-49244(%rbp), %eax	# lineno, tmp121
	movl	%eax, %esi	# tmp121,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L35:
	.loc 1 176 0
	movl	$176, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -49216(%rbp)	# tmp122, lmclass
	.loc 1 177 0
	movq	-49176(%rbp), %rax	# word, D.5205
	movl	$177, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.5205,
	call	__ckd_salloc__	#
	movq	-49216(%rbp), %rdx	# lmclass, tmp123
	movq	%rax, (%rdx)	# D.5205, lmclass_46->name
	.loc 1 179 0
	movq	-49216(%rbp), %rax	# lmclass, tmp124
	movq	$0, 8(%rax)	#, lmclass_46->wordlist
	.loc 1 182 0
	movq	-49216(%rbp), %rdx	# lmclass, tmp125
	movq	-49256(%rbp), %rax	# lmclass_set, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	lmclass_add	#
	movq	%rax, -49256(%rbp)	# tmp127, lmclass_set
	cmpq	$0, -49256(%rbp)	#, lmclass_set
	jne	.L36	#,
	.loc 1 183 0
	movl	$.LC7, %edx	#,
	movl	$183, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-49176(%rbp), %rdx	# word, D.5205
	movl	-49244(%rbp), %eax	# lineno, tmp128
	movl	%eax, %esi	# tmp128,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L36:
	.loc 1 186 0
	movl	.LC14(%rip), %eax	#, tmp129
	movl	%eax, -49236(%rbp)	# tmp129, SUMp
	.loc 1 187 0
	movl	$0, -49232(%rbp)	#, n_implicit_prob
	.loc 1 188 0
	movl	$0, -49228(%rbp)	#, n_word
.L52:
.LBB2:
	.loc 1 190 0
	movl	$0, -49224(%rbp)	#, LOGp
	.loc 1 192 0
	jmp	.L37	#
.L39:
	.loc 1 194 0
	addl	$1, -49244(%rbp)	#, lineno
.L37:
	.loc 1 192 0 discriminator 1
	movq	-49200(%rbp), %rdx	# fp, tmp130
	leaq	-16416(%rbp), %rax	#, tmp131
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	fgets	#
	movq	%rax, -49192(%rbp)	# tmp132, _eof
	cmpq	$0, -49192(%rbp)	#, _eof
	je	.L38	#,
	.loc 1 193 0 discriminator 2
	movzbl	-16416(%rbp), %eax	# line, D.5203
	.loc 1 192 0 discriminator 2
	cmpb	$35, %al	#, D.5203
	je	.L39	#,
	.loc 1 193 0
	leaq	-49184(%rbp), %rcx	#, tmp133
	leaq	-16416(%rbp), %rax	#, tmp134
	movl	$4096, %edx	#,
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	str2words	#
	movl	%eax, -49240(%rbp)	# tmp135, nwd
	cmpl	$0, -49240(%rbp)	#, nwd
	je	.L39	#,
.L38:
	.loc 1 196 0
	cmpq	$0, -49192(%rbp)	#, _eof
	jne	.L40	#,
	.loc 1 197 0
	movl	$.LC7, %edx	#,
	movl	$197, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-49264(%rbp), %rax	# file, tmp136
	movq	%rax, %rsi	# tmp136,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L40:
	.loc 1 198 0
	addl	$1, -49244(%rbp)	#, lineno
	.loc 1 200 0
	cmpl	$1, -49240(%rbp)	#, nwd
	je	.L41	#,
	.loc 1 200 0 is_stmt 0 discriminator 1
	cmpl	$2, -49240(%rbp)	#, nwd
	je	.L41	#,
	.loc 1 201 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$201, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-49244(%rbp), %eax	# lineno, tmp137
	movl	%eax, %esi	# tmp137,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L41:
	.loc 1 203 0
	cmpl	$2, -49240(%rbp)	#, nwd
	jne	.L42	#,
	.loc 1 204 0 discriminator 1
	movq	-49184(%rbp), %rax	# word, D.5205
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# D.5205,
	call	strcmp	#
	.loc 1 203 0 discriminator 1
	testl	%eax, %eax	# D.5206
	jne	.L42	#,
	.loc 1 205 0
	movq	-49216(%rbp), %rax	# lmclass, tmp138
	movq	(%rax), %rdx	# lmclass_14->name, D.5205
	movq	-49176(%rbp), %rax	# word, D.5205
	movq	%rdx, %rsi	# D.5205,
	movq	%rax, %rdi	# D.5205,
	call	strcmp	#
	.loc 1 204 0
	testl	%eax, %eax	# D.5206
	jne	.L42	#,
	.loc 1 206 0
	nop
.LBE2:
	.loc 1 235 0
	cmpl	$0, -49232(%rbp)	#, n_implicit_prob
	jle	.L53	#,
	jmp	.L67	#
.L42:
.LBB3:
	.loc 1 208 0
	cmpl	$2, -49240(%rbp)	#, nwd
	jne	.L44	#,
	.loc 1 209 0
	movq	-49176(%rbp), %rax	# word, D.5205
	leaq	-49248(%rbp), %rdx	#, tmp139
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.5205,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.5206
	jne	.L45	#,
	.loc 1 210 0
	movss	-49248(%rbp), %xmm1	# p, p.0
	xorps	%xmm0, %xmm0	# tmp140
	ucomiss	%xmm1, %xmm0	# p.0, tmp140
	jae	.L46	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movss	-49248(%rbp), %xmm0	# p, p.1
	movss	.LC19(%rip), %xmm1	#, tmp141
	ucomiss	%xmm1, %xmm0	# tmp141, p.1
	jb	.L47	#,
.L46:
	.loc 1 211 0 is_stmt 1
	movl	$.LC7, %edx	#,
	movl	$211, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-49176(%rbp), %rdx	# word, D.5205
	movl	-49244(%rbp), %eax	# lineno, tmp142
	movl	%eax, %esi	# tmp142,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L47:
	.loc 1 213 0
	movss	-49248(%rbp), %xmm0	# p, p.2
	unpcklps	%xmm0, %xmm0	# p.2, p.2
	cvtps2pd	%xmm0, %xmm0	# p.2, D.5209
	call	logs3	#
	movl	%eax, -49224(%rbp)	# tmp143, LOGp
	.loc 1 214 0
	movss	-49248(%rbp), %xmm0	# p, p.3
	movss	-49236(%rbp), %xmm1	# SUMp, tmp145
	addss	%xmm1, %xmm0	# tmp145, tmp144
	movss	%xmm0, -49236(%rbp)	# tmp144, SUMp
	jmp	.L50	#
.L45:
	.loc 1 216 0
	movl	$.LC7, %edx	#,
	movl	$216, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-49244(%rbp), %eax	# lineno, tmp146
	movl	%eax, %esi	# tmp146,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L50	#
.L44:
	.loc 1 218 0
	movl	$32001, -49224(%rbp)	#, LOGp
	.loc 1 219 0
	addl	$1, -49232(%rbp)	#, n_implicit_prob
.L50:
	.loc 1 223 0
	movl	$223, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -49208(%rbp)	# tmp147, lmclass_word
	.loc 1 224 0
	movq	-49184(%rbp), %rax	# word, D.5205
	movl	$224, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.5205,
	call	__ckd_salloc__	#
	movq	-49208(%rbp), %rdx	# lmclass_word, tmp148
	movq	%rax, (%rdx)	# D.5205, lmclass_word_96->word
	.loc 1 225 0
	movq	-49208(%rbp), %rax	# lmclass_word, tmp149
	movl	$-1, 8(%rax)	#, lmclass_word_96->dictwid
	.loc 1 226 0
	movq	-49208(%rbp), %rax	# lmclass_word, tmp150
	movl	-49224(%rbp), %edx	# LOGp, tmp151
	movl	%edx, 12(%rax)	# tmp151, lmclass_word_96->LOGprob
	.loc 1 229 0
	movq	-49208(%rbp), %rdx	# lmclass_word, tmp152
	movq	-49216(%rbp), %rax	# lmclass, tmp153
	movq	%rdx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	lmclass_addword	#
	movq	%rax, -49216(%rbp)	# tmp154, lmclass
	cmpq	$0, -49216(%rbp)	#, lmclass
	jne	.L51	#,
	.loc 1 230 0
	movl	$.LC7, %edx	#,
	movl	$230, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-49184(%rbp), %rdx	# word, D.5205
	movl	-49244(%rbp), %eax	# lineno, tmp155
	movl	%eax, %esi	# tmp155,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L51:
	.loc 1 232 0
	addl	$1, -49228(%rbp)	#, n_word
.LBE3:
	.loc 1 233 0
	jmp	.L52	#
.L67:
.LBB4:
	.loc 1 238 0
	movss	-49236(%rbp), %xmm0	# SUMp, tmp156
	movss	.LC19(%rip), %xmm1	#, tmp157
	ucomiss	%xmm1, %xmm0	# tmp157, tmp156
	jb	.L54	#,
	.loc 1 239 0
	movl	$.LC7, %edx	#,
	movl	$239, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movss	-49236(%rbp), %xmm0	# SUMp, D.5209
	cvtps2pd	%xmm0, %xmm0	# D.5209, D.5209
	movq	-49216(%rbp), %rax	# lmclass, tmp158
	movq	(%rax), %rax	# lmclass_14->name, D.5205
	movq	%rax, %rsi	# D.5205,
	movl	$.LC22, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L54:
	.loc 1 241 0
	movss	-49236(%rbp), %xmm0	# SUMp, D.5209
	cvtps2pd	%xmm0, %xmm0	# D.5209, D.5209
	movsd	.LC23(%rip), %xmm1	#, tmp159
	subsd	%xmm0, %xmm1	# D.5209, D.5209
	movapd	%xmm1, %xmm0	# D.5209, D.5209
	cvtsi2ss	-49232(%rbp), %xmm1	# n_implicit_prob, D.5210
	unpcklps	%xmm1, %xmm1	# D.5210, D.5210
	cvtps2pd	%xmm1, %xmm1	# D.5210, D.5209
	divsd	%xmm1, %xmm0	# D.5209, D.5209
	unpcklpd	%xmm0, %xmm0	# D.5209
	cvtpd2ps	%xmm0, %xmm0	# D.5209, p.4
	movss	%xmm0, -49248(%rbp)	# p.4, p
	.loc 1 242 0
	movss	-49248(%rbp), %xmm0	# p, p.5
	unpcklps	%xmm0, %xmm0	# p.5, p.5
	cvtps2pd	%xmm0, %xmm0	# p.5, D.5209
	call	logs3	#
	movl	%eax, -49220(%rbp)	# tmp160, LOGp
	.loc 1 244 0
	movq	-49216(%rbp), %rax	# lmclass, tmp161
	movq	8(%rax), %rax	# lmclass_14->wordlist, tmp162
	movq	%rax, -49208(%rbp)	# tmp162, lmclass_word
	jmp	.L56	#
.L58:
	.loc 1 247 0
	movq	-49208(%rbp), %rax	# lmclass_word, tmp163
	movl	12(%rax), %eax	# lmclass_word_15->LOGprob, D.5206
	cmpl	$32001, %eax	#, D.5206
	jne	.L57	#,
	.loc 1 248 0
	movq	-49208(%rbp), %rax	# lmclass_word, tmp164
	movl	-49220(%rbp), %edx	# LOGp, tmp165
	movl	%edx, 12(%rax)	# tmp165, lmclass_word_15->LOGprob
.L57:
	.loc 1 246 0
	movq	-49208(%rbp), %rax	# lmclass_word, tmp166
	movq	16(%rax), %rax	# lmclass_word_15->next, tmp167
	movq	%rax, -49208(%rbp)	# tmp167, lmclass_word
.L56:
	.loc 1 244 0 discriminator 1
	cmpq	$0, -49208(%rbp)	#, lmclass_word
	jne	.L58	#,
.LBE4:
	jmp	.L59	#
.L53:
	.loc 1 252 0
	movss	-49236(%rbp), %xmm0	# SUMp, D.5209
	cvtps2pd	%xmm0, %xmm0	# D.5209, D.5209
	ucomisd	.LC24(%rip), %xmm0	#, D.5209
	jae	.L60	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movss	-49236(%rbp), %xmm0	# SUMp, D.5209
	cvtps2pd	%xmm0, %xmm0	# D.5209, D.5209
	movsd	.LC25(%rip), %xmm1	#, tmp168
	ucomisd	%xmm0, %xmm1	# D.5209, tmp168
	jb	.L59	#,
.L60:
	.loc 1 253 0 is_stmt 1
	movl	$.LC4, %edx	#,
	movl	$253, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	movss	-49236(%rbp), %xmm0	# SUMp, D.5209
	cvtps2pd	%xmm0, %xmm0	# D.5209, D.5209
	movq	-49216(%rbp), %rax	# lmclass, tmp169
	movq	(%rax), %rax	# lmclass_14->name, D.5205
	movq	%rax, %rsi	# D.5205,
	movl	$.LC22, %edi	#,
	movl	$1, %eax	#,
	call	_E__pr_info	#
.L59:
	.loc 1 256 0
	movl	$.LC4, %edx	#,
	movl	$256, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	movq	-49216(%rbp), %rax	# lmclass, tmp170
	movq	(%rax), %rax	# lmclass_14->name, D.5205
	movl	-49228(%rbp), %edx	# n_word, tmp171
	movq	%rax, %rsi	# D.5205,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 257 0
	nop
	.loc 1 157 0
	jmp	.L26	#
.L66:
	.loc 1 262 0
	call	__stack_chk_fail	#
.L64:
	addq	$49256, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	lmclass_loadfile, .-lmclass_loadfile
	.globl	lmclass_set_dictwid
	.type	lmclass_set_dictwid, @function
lmclass_set_dictwid:
.LFB8:
	.loc 1 265 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# w, w
	movl	%esi, -12(%rbp)	# dictwid, dictwid
	.loc 1 267 0
	movq	-8(%rbp), %rax	# w, tmp59
	movl	-12(%rbp), %edx	# dictwid, tmp60
	movl	%edx, 8(%rax)	# tmp60, w_1(D)->dictwid
	.loc 1 268 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lmclass_set_dictwid, .-lmclass_set_dictwid
	.globl	lmclass_get_lmclass
	.type	lmclass_get_lmclass, @function
lmclass_get_lmclass:
.LFB9:
	.loc 1 271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	movq	%rsi, -32(%rbp)	# name, name
	.loc 1 274 0
	movq	-24(%rbp), %rax	# set, tmp63
	movq	(%rax), %rax	# set_2(D)->lmclass_list, tmp64
	movq	%rax, -8(%rbp)	# tmp64, cl
	jmp	.L70	#
.L72:
	.loc 1 276 0
	movq	-8(%rbp), %rax	# cl, tmp65
	movq	16(%rax), %rax	# cl_1->next, tmp66
	movq	%rax, -8(%rbp)	# tmp66, cl
.L70:
	.loc 1 274 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, cl
	je	.L71	#,
	.loc 1 275 0
	movq	-8(%rbp), %rax	# cl, tmp67
	movq	(%rax), %rax	# cl_1->name, D.5232
	movq	-32(%rbp), %rdx	# name, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.5232,
	call	strcmp	#
	testl	%eax, %eax	# D.5233
	jne	.L72	#,
.L71:
	.loc 1 278 0
	movq	-8(%rbp), %rax	# cl, D.5234
	.loc 1 279 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	lmclass_get_lmclass, .-lmclass_get_lmclass
	.globl	lmclass_get_nclass
	.type	lmclass_get_nclass, @function
lmclass_get_nclass:
.LFB10:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# set, set
	.loc 1 286 0
	movl	$0, -12(%rbp)	#, n
	movq	-24(%rbp), %rax	# set, tmp61
	movq	(%rax), %rax	# set_4(D)->lmclass_list, tmp62
	movq	%rax, -8(%rbp)	# tmp62, cl
	jmp	.L75	#
.L76:
	.loc 1 286 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# cl, tmp63
	movq	16(%rax), %rax	# cl_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, cl
	addl	$1, -12(%rbp)	#, n
.L75:
	.loc 1 286 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, cl
	jne	.L76	#,
	.loc 1 288 0 is_stmt 1
	movl	-12(%rbp), %eax	# n, D.5235
	.loc 1 289 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lmclass_get_nclass, .-lmclass_get_nclass
	.section	.rodata
	.align 4
.LC14:
	.long	0
	.align 4
.LC19:
	.long	1065353216
	.align 8
.LC23:
	.long	0
	.long	1072693248
	.align 8
.LC24:
	.long	2576980378
	.long	1072798105
	.align 8
.LC25:
	.long	3435973837
	.long	1072483532
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "lmclass.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x711
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF87
	.byte	0x1
	.long	.LASF88
	.long	.LASF89
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x7
	.long	.LASF52
	.byte	0x18
	.byte	0x7
	.byte	0x42
	.long	0x2f6
	.uleb128 0x8
	.long	.LASF53
	.byte	0x7
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x44
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x46
	.long	0x2ae
	.byte	0xc
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x47
	.long	0x2f6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x49
	.long	0x2f6
	.uleb128 0x7
	.long	.LASF58
	.byte	0x18
	.byte	0x7
	.byte	0x4f
	.long	0x338
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x51
	.long	0x2fc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x52
	.long	0x338
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x54
	.long	0x338
	.uleb128 0x7
	.long	.LASF62
	.byte	0x8
	.byte	0x7
	.byte	0x5b
	.long	0x362
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x5c
	.long	0x33e
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x5d
	.long	0x36d
	.uleb128 0x6
	.byte	0x8
	.long	0x349
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0x3a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b7
	.uleb128 0xe
	.string	"cl"
	.byte	0x1
	.byte	0x3a
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x3a
	.long	0x3b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x3c
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xd
	.long	.LASF66
	.byte	0x1
	.byte	0x48
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x403
	.uleb128 0xe
	.string	"set"
	.byte	0x1
	.byte	0x48
	.long	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x48
	.long	0x3b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"cl"
	.byte	0x1
	.byte	0x4a
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.byte	0x52
	.long	0x362
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x433
	.uleb128 0xf
	.string	"set"
	.byte	0x1
	.byte	0x54
	.long	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0x5b
	.long	0x362
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x48c
	.uleb128 0xe
	.string	"set"
	.byte	0x1
	.byte	0x5b
	.long	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"new"
	.byte	0x1
	.byte	0x5b
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"cl"
	.byte	0x1
	.byte	0x5d
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x5d
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x74
	.long	0x33e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x74
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"new"
	.byte	0x1
	.byte	0x74
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x76
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x76
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x8a
	.long	0x362
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x61f
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0x8a
	.long	0x362
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49272
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x8a
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49280
	.uleb128 0xf
	.string	"fp"
	.byte	0x1
	.byte	0x8c
	.long	0x3b7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49216
	.uleb128 0x12
	.long	.LASF75
	.byte	0x1
	.byte	0x8d
	.long	0x61f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x8d
	.long	0x630
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49200
	.uleb128 0x12
	.long	.LASF76
	.byte	0x1
	.byte	0x8d
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49208
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0x8e
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49260
	.uleb128 0xf
	.string	"nwd"
	.byte	0x1
	.byte	0x8e
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49256
	.uleb128 0x12
	.long	.LASF78
	.byte	0x1
	.byte	0x8f
	.long	0x33e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49232
	.uleb128 0x12
	.long	.LASF79
	.byte	0x1
	.byte	0x90
	.long	0x2fc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49224
	.uleb128 0x12
	.long	.LASF80
	.byte	0x1
	.byte	0x91
	.long	0x2a0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49252
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x91
	.long	0x2a0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49264
	.uleb128 0x12
	.long	.LASF81
	.byte	0x1
	.byte	0x92
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49248
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0x92
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49244
	.uleb128 0x14
	.long	.Ldebug_ranges0+0
	.long	0x5fc
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0xbe
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49240
	.byte	0
	.uleb128 0x15
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0xec
	.long	0x2ae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -49236
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x630
	.uleb128 0x16
	.long	0x86
	.value	0x3fff
	.byte	0
	.uleb128 0xb
	.long	0x8f
	.long	0x641
	.uleb128 0x16
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x108
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x67c
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x108
	.long	0x2fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF54
	.byte	0x1
	.value	0x108
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.value	0x10e
	.long	0x33e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cb
	.uleb128 0x18
	.string	"set"
	.byte	0x1
	.value	0x10e
	.long	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.value	0x10e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"cl"
	.byte	0x1
	.value	0x110
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x1
	.value	0x119
	.long	0x2ae
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"set"
	.byte	0x1
	.value	0x119
	.long	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"cl"
	.byte	0x1
	.value	0x11b
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"n"
	.byte	0x1
	.value	0x11c
	.long	0x2ae
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"SUMp"
.LASF29:
	.string	"_old_offset"
.LASF50:
	.string	"double"
.LASF42:
	.string	"_IO_FILE"
.LASF73:
	.string	"lmclass_set"
.LASF60:
	.string	"wordlist"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"lmclass_loadfile"
.LASF66:
	.string	"lmclass_set_dump"
.LASF10:
	.string	"sizetype"
.LASF22:
	.string	"_IO_save_base"
.LASF34:
	.string	"_offset"
.LASF58:
	.string	"lmclass_s"
.LASF62:
	.string	"lmclass_set_s"
.LASF64:
	.string	"lmclass_set_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF79:
	.string	"lmclass_word"
.LASF20:
	.string	"_IO_buf_base"
.LASF74:
	.string	"file"
.LASF85:
	.string	"lmclass_get_lmclass"
.LASF5:
	.string	"short int"
.LASF82:
	.string	"n_word"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF86:
	.string	"lmclass_get_nclass"
.LASF70:
	.string	"class"
.LASF65:
	.string	"lmclass_dump"
.LASF75:
	.string	"line"
.LASF69:
	.string	"lmclass_addword"
.LASF49:
	.string	"float"
.LASF47:
	.string	"long long int"
.LASF63:
	.string	"lmclass_list"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF36:
	.string	"__pad2"
.LASF30:
	.string	"_cur_column"
.LASF45:
	.string	"_sbuf"
.LASF46:
	.string	"_pos"
.LASF59:
	.string	"name"
.LASF54:
	.string	"dictwid"
.LASF76:
	.string	"_eof"
.LASF55:
	.string	"LOGprob"
.LASF53:
	.string	"word"
.LASF1:
	.string	"unsigned char"
.LASF78:
	.string	"lmclass"
.LASF67:
	.string	"prev"
.LASF87:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF77:
	.string	"lineno"
.LASF48:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_write_base"
.LASF37:
	.string	"__pad3"
.LASF14:
	.string	"_IO_read_ptr"
.LASF39:
	.string	"__pad5"
.LASF21:
	.string	"_IO_buf_end"
.LASF88:
	.string	"lmclass.c"
.LASF11:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF35:
	.string	"__pad1"
.LASF7:
	.string	"size_t"
.LASF71:
	.string	"lmclass_newset"
.LASF38:
	.string	"__pad4"
.LASF83:
	.string	"LOGp"
.LASF89:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF51:
	.string	"int32"
.LASF19:
	.string	"_IO_write_end"
.LASF61:
	.string	"lmclass_t"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF68:
	.string	"lmclass_add"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF41:
	.string	"_unused2"
.LASF84:
	.string	"lmclass_set_dictwid"
.LASF12:
	.string	"FILE"
.LASF81:
	.string	"n_implicit_prob"
.LASF52:
	.string	"lmclass_word_s"
.LASF57:
	.string	"lmclass_word_t"
.LASF56:
	.string	"next"
.LASF90:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
