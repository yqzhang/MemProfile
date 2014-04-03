	.file	"dict2pid.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# dict2pid.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	ldiph_comsseq, @function
ldiph_comsseq:
.LFB2:
	.file 1 "dict2pid.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mdef, mdef
	movl	%esi, -44(%rbp)	# b, b
	movl	%edx, -48(%rbp)	# r, r
	.loc 1 70 0
	movq	$0, -8(%rbp)	#, g
	.loc 1 71 0
	movl	$0, -20(%rbp)	#, l
	jmp	.L2	#
.L4:
	.loc 1 72 0
	movl	-48(%rbp), %eax	# r, tmp78
	movsbl	%al, %ecx	# D.6105, D.6104
	movl	-20(%rbp), %eax	# l, tmp79
	movsbl	%al, %edx	# D.6105, D.6104
	movl	-44(%rbp), %eax	# b, tmp80
	movsbl	%al, %esi	# D.6105, D.6104
	movq	-40(%rbp), %rax	# mdef, tmp81
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp81,
	call	mdef_phone_id	#
	movl	%eax, -16(%rbp)	# tmp82, p
	.loc 1 74 0
	cmpl	$0, -16(%rbp)	#, p
	js	.L3	#,
	.loc 1 75 0
	movq	-40(%rbp), %rax	# mdef, tmp83
	movq	40(%rax), %rax	# mdef_7(D)->phone, D.6106
	movl	-16(%rbp), %edx	# p, tmp84
	movslq	%edx, %rdx	# tmp84, D.6107
	salq	$4, %rdx	#, D.6107
	addq	%rdx, %rax	# D.6107, D.6106
	movl	(%rax), %eax	# _21->ssid, tmp85
	movl	%eax, -12(%rbp)	# tmp85, ssid
	.loc 1 76 0
	movl	-12(%rbp), %edx	# ssid, tmp86
	movq	-8(%rbp), %rax	# g, tmp87
	movl	%edx, %esi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	glist_chkdup_int32	#
	testl	%eax, %eax	# D.6104
	jne	.L3	#,
	.loc 1 77 0
	movl	-12(%rbp), %edx	# ssid, tmp88
	movq	-8(%rbp), %rax	# g, tmp89
	movl	%edx, %esi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp90, g
.L3:
	.loc 1 71 0
	addl	$1, -20(%rbp)	#, l
.L2:
	.loc 1 71 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mdef, tmp91
	movl	(%rax), %eax	# mdef_7(D)->n_ciphone, D.6104
	cmpl	-20(%rbp), %eax	# l, D.6104
	jg	.L4	#,
	.loc 1 80 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, g
	jne	.L5	#,
	.loc 1 81 0
	movq	-40(%rbp), %rax	# mdef, tmp92
	movq	40(%rax), %rax	# mdef_7(D)->phone, D.6106
	movl	-44(%rbp), %edx	# b, tmp93
	movslq	%edx, %rdx	# tmp93, D.6107
	salq	$4, %rdx	#, D.6107
	addq	%rdx, %rax	# D.6107, D.6106
	movl	(%rax), %edx	# _29->ssid, D.6104
	movq	-8(%rbp), %rax	# g, tmp94
	movl	%edx, %esi	# D.6104,
	movq	%rax, %rdi	# tmp94,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp95, g
.L5:
	.loc 1 83 0
	movq	-8(%rbp), %rax	# g, D.6108
	.loc 1 84 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ldiph_comsseq, .-ldiph_comsseq
	.type	rdiph_comsseq, @function
rdiph_comsseq:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mdef, mdef
	movl	%esi, -44(%rbp)	# b, b
	movl	%edx, -48(%rbp)	# l, l
	.loc 1 97 0
	movq	$0, -8(%rbp)	#, g
	.loc 1 98 0
	movl	$0, -20(%rbp)	#, r
	jmp	.L8	#
.L10:
	.loc 1 99 0
	movl	-20(%rbp), %eax	# r, tmp78
	movsbl	%al, %ecx	# D.6110, D.6109
	movl	-48(%rbp), %eax	# l, tmp79
	movsbl	%al, %edx	# D.6110, D.6109
	movl	-44(%rbp), %eax	# b, tmp80
	movsbl	%al, %esi	# D.6110, D.6109
	movq	-40(%rbp), %rax	# mdef, tmp81
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp81,
	call	mdef_phone_id	#
	movl	%eax, -16(%rbp)	# tmp82, p
	.loc 1 101 0
	cmpl	$0, -16(%rbp)	#, p
	js	.L9	#,
	.loc 1 102 0
	movq	-40(%rbp), %rax	# mdef, tmp83
	movq	40(%rax), %rax	# mdef_7(D)->phone, D.6111
	movl	-16(%rbp), %edx	# p, tmp84
	movslq	%edx, %rdx	# tmp84, D.6112
	salq	$4, %rdx	#, D.6112
	addq	%rdx, %rax	# D.6112, D.6111
	movl	(%rax), %eax	# _21->ssid, tmp85
	movl	%eax, -12(%rbp)	# tmp85, ssid
	.loc 1 103 0
	movl	-12(%rbp), %edx	# ssid, tmp86
	movq	-8(%rbp), %rax	# g, tmp87
	movl	%edx, %esi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	glist_chkdup_int32	#
	testl	%eax, %eax	# D.6109
	jne	.L9	#,
	.loc 1 104 0
	movl	-12(%rbp), %edx	# ssid, tmp88
	movq	-8(%rbp), %rax	# g, tmp89
	movl	%edx, %esi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp90, g
.L9:
	.loc 1 98 0
	addl	$1, -20(%rbp)	#, r
.L8:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mdef, tmp91
	movl	(%rax), %eax	# mdef_7(D)->n_ciphone, D.6109
	cmpl	-20(%rbp), %eax	# r, D.6109
	jg	.L10	#,
	.loc 1 107 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, g
	jne	.L11	#,
	.loc 1 108 0
	movq	-40(%rbp), %rax	# mdef, tmp92
	movq	40(%rax), %rax	# mdef_7(D)->phone, D.6111
	movl	-44(%rbp), %edx	# b, tmp93
	movslq	%edx, %rdx	# tmp93, D.6112
	salq	$4, %rdx	#, D.6112
	addq	%rdx, %rax	# D.6112, D.6111
	movl	(%rax), %edx	# _29->ssid, D.6109
	movq	-8(%rbp), %rax	# g, tmp94
	movl	%edx, %esi	# D.6109,
	movq	%rax, %rdi	# tmp94,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp95, g
.L11:
	.loc 1 110 0
	movq	-8(%rbp), %rax	# g, D.6113
	.loc 1 111 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rdiph_comsseq, .-rdiph_comsseq
	.type	single_comsseq, @function
single_comsseq:
.LFB4:
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mdef, mdef
	movl	%esi, -44(%rbp)	# b, b
	.loc 1 124 0
	movq	$0, -8(%rbp)	#, g
	.loc 1 125 0
	movl	$0, -24(%rbp)	#, l
	jmp	.L14	#
.L18:
	.loc 1 126 0
	movl	$0, -20(%rbp)	#, r
	jmp	.L15	#
.L17:
	.loc 1 127 0
	movl	-20(%rbp), %eax	# r, tmp79
	movsbl	%al, %ecx	# D.6115, D.6114
	movl	-24(%rbp), %eax	# l, tmp80
	movsbl	%al, %edx	# D.6115, D.6114
	movl	-44(%rbp), %eax	# b, tmp81
	movsbl	%al, %esi	# D.6115, D.6114
	movq	-40(%rbp), %rax	# mdef, tmp82
	movl	$2, %r8d	#,
	movq	%rax, %rdi	# tmp82,
	call	mdef_phone_id	#
	movl	%eax, -16(%rbp)	# tmp83, p
	.loc 1 129 0
	cmpl	$0, -16(%rbp)	#, p
	js	.L16	#,
	.loc 1 130 0
	movq	-40(%rbp), %rax	# mdef, tmp84
	movq	40(%rax), %rax	# mdef_9(D)->phone, D.6116
	movl	-16(%rbp), %edx	# p, tmp85
	movslq	%edx, %rdx	# tmp85, D.6117
	salq	$4, %rdx	#, D.6117
	addq	%rdx, %rax	# D.6117, D.6116
	movl	(%rax), %eax	# _24->ssid, tmp86
	movl	%eax, -12(%rbp)	# tmp86, ssid
	.loc 1 131 0
	movl	-12(%rbp), %edx	# ssid, tmp87
	movq	-8(%rbp), %rax	# g, tmp88
	movl	%edx, %esi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	glist_chkdup_int32	#
	testl	%eax, %eax	# D.6114
	jne	.L16	#,
	.loc 1 132 0
	movl	-12(%rbp), %edx	# ssid, tmp89
	movq	-8(%rbp), %rax	# g, tmp90
	movl	%edx, %esi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp91, g
.L16:
	.loc 1 126 0
	addl	$1, -20(%rbp)	#, r
.L15:
	.loc 1 126 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mdef, tmp92
	movl	(%rax), %eax	# mdef_9(D)->n_ciphone, D.6114
	cmpl	-20(%rbp), %eax	# r, D.6114
	jg	.L17	#,
	.loc 1 125 0 is_stmt 1
	addl	$1, -24(%rbp)	#, l
.L14:
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mdef, tmp93
	movl	(%rax), %eax	# mdef_9(D)->n_ciphone, D.6114
	cmpl	-24(%rbp), %eax	# l, D.6114
	jg	.L18	#,
	.loc 1 136 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, g
	jne	.L19	#,
	.loc 1 137 0
	movq	-40(%rbp), %rax	# mdef, tmp94
	movq	40(%rax), %rax	# mdef_9(D)->phone, D.6116
	movl	-44(%rbp), %edx	# b, tmp95
	movslq	%edx, %rdx	# tmp95, D.6117
	salq	$4, %rdx	#, D.6117
	addq	%rdx, %rax	# D.6117, D.6116
	movl	(%rax), %edx	# _33->ssid, D.6114
	movq	-8(%rbp), %rax	# g, tmp96
	movl	%edx, %esi	# D.6114,
	movq	%rax, %rdi	# tmp96,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp97, g
.L19:
	.loc 1 139 0
	movq	-8(%rbp), %rax	# g, D.6118
	.loc 1 140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	single_comsseq, .-single_comsseq
	.type	single_lc_comsseq, @function
single_lc_comsseq:
.LFB5:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mdef, mdef
	movl	%esi, -44(%rbp)	# b, b
	movl	%edx, -48(%rbp)	# l, l
	.loc 1 153 0
	movq	$0, -8(%rbp)	#, g
	.loc 1 154 0
	movl	$0, -20(%rbp)	#, r
	jmp	.L22	#
.L24:
	.loc 1 155 0
	movl	-20(%rbp), %eax	# r, tmp78
	movsbl	%al, %ecx	# D.6120, D.6119
	movl	-48(%rbp), %eax	# l, tmp79
	movsbl	%al, %edx	# D.6120, D.6119
	movl	-44(%rbp), %eax	# b, tmp80
	movsbl	%al, %esi	# D.6120, D.6119
	movq	-40(%rbp), %rax	# mdef, tmp81
	movl	$2, %r8d	#,
	movq	%rax, %rdi	# tmp81,
	call	mdef_phone_id	#
	movl	%eax, -16(%rbp)	# tmp82, p
	.loc 1 157 0
	cmpl	$0, -16(%rbp)	#, p
	js	.L23	#,
	.loc 1 158 0
	movq	-40(%rbp), %rax	# mdef, tmp83
	movq	40(%rax), %rax	# mdef_7(D)->phone, D.6121
	movl	-16(%rbp), %edx	# p, tmp84
	movslq	%edx, %rdx	# tmp84, D.6122
	salq	$4, %rdx	#, D.6122
	addq	%rdx, %rax	# D.6122, D.6121
	movl	(%rax), %eax	# _21->ssid, tmp85
	movl	%eax, -12(%rbp)	# tmp85, ssid
	.loc 1 159 0
	movl	-12(%rbp), %edx	# ssid, tmp86
	movq	-8(%rbp), %rax	# g, tmp87
	movl	%edx, %esi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	glist_chkdup_int32	#
	testl	%eax, %eax	# D.6119
	jne	.L23	#,
	.loc 1 160 0
	movl	-12(%rbp), %edx	# ssid, tmp88
	movq	-8(%rbp), %rax	# g, tmp89
	movl	%edx, %esi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp90, g
.L23:
	.loc 1 154 0
	addl	$1, -20(%rbp)	#, r
.L22:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mdef, tmp91
	movl	(%rax), %eax	# mdef_7(D)->n_ciphone, D.6119
	cmpl	-20(%rbp), %eax	# r, D.6119
	jg	.L24	#,
	.loc 1 163 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, g
	jne	.L25	#,
	.loc 1 164 0
	movq	-40(%rbp), %rax	# mdef, tmp92
	movq	40(%rax), %rax	# mdef_7(D)->phone, D.6121
	movl	-44(%rbp), %edx	# b, tmp93
	movslq	%edx, %rdx	# tmp93, D.6122
	salq	$4, %rdx	#, D.6122
	addq	%rdx, %rax	# D.6122, D.6121
	movl	(%rax), %edx	# _29->ssid, D.6119
	movq	-8(%rbp), %rax	# g, tmp94
	movl	%edx, %esi	# D.6119,
	movq	%rax, %rdi	# tmp94,
	call	glist_add_int32	#
	movq	%rax, -8(%rbp)	# tmp95, g
.L25:
	.loc 1 166 0
	movq	-8(%rbp), %rax	# g, D.6123
	.loc 1 167 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	single_lc_comsseq, .-single_lc_comsseq
	.section	.rodata
.LC0:
	.string	"FATAL_ERROR"
.LC1:
	.string	"dict2pid.c"
.LC2:
	.string	"Panic: length(ssidlist)= %d\n"
	.align 8
.LC3:
	.string	"#Composite sseq limit(%d) reached; increase MAX_S3SENID\n"
	.text
	.type	ssidlist2comsseq, @function
ssidlist2comsseq:
.LFB6:
	.loc 1 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# g, g
	movq	%rsi, -80(%rbp)	# mdef, mdef
	movq	%rdx, -88(%rbp)	# dict2pid, dict2pid
	movq	%rcx, -96(%rbp)	# hs, hs
	movq	%r8, -104(%rbp)	# hp, hp
	.loc 1 182 0
	movq	-72(%rbp), %rax	# g, tmp165
	movq	%rax, %rdi	# tmp165,
	call	glist_count	#
	movl	%eax, -52(%rbp)	# tmp166, n
	.loc 1 183 0
	cmpl	$0, -52(%rbp)	#, n
	jg	.L28	#,
	.loc 1 184 0
	movl	$.LC0, %edx	#,
	movl	$184, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-52(%rbp), %eax	# n, tmp167
	movl	%eax, %esi	# tmp167,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L28:
	.loc 1 187 0
	movq	-80(%rbp), %rax	# mdef, tmp168
	movl	8(%rax), %eax	# mdef_9(D)->n_emit_state, D.6124
	cltq
	movl	$187, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6125,
	call	__ckd_calloc__	#
	movq	%rax, -32(%rbp)	# tmp169, sen
	.loc 1 188 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L29	#
.L30:
	.loc 1 189 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp171
	leaq	(%rdx,%rax), %rbx	#, D.6126
	movl	-52(%rbp), %eax	# n, tmp172
	addl	$1, %eax	#, D.6124
	cltq
	movl	$189, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6125,
	call	__ckd_calloc__	#
	movq	%rax, (%rbx)	# D.6127, *_17
	.loc 1 190 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp174
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_23, D.6128
	movw	$-1, (%rax)	#, *_24
	.loc 1 188 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L29:
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mdef, tmp175
	movl	8(%rax), %eax	# mdef_9(D)->n_emit_state, D.6124
	cmpl	-60(%rbp), %eax	# i, D.6124
	jg	.L30	#,
	.loc 1 193 0 is_stmt 1
	movq	-80(%rbp), %rax	# mdef, tmp176
	movl	8(%rax), %eax	# mdef_9(D)->n_emit_state, D.6124
	cltq
	movl	$193, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6125,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp177, comsenid
	.loc 1 195 0
	movq	-72(%rbp), %rax	# g, tmp178
	movq	%rax, -40(%rbp)	# tmp178, gn
	jmp	.L31	#
.L38:
	.loc 1 196 0
	movq	-40(%rbp), %rax	# gn, tmp179
	movl	(%rax), %eax	# gn_6->data.int32, tmp180
	movl	%eax, -48(%rbp)	# tmp180, ssid
	.loc 1 199 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L32	#
.L37:
	.loc 1 200 0
	movq	-80(%rbp), %rax	# mdef, tmp181
	movq	48(%rax), %rax	# mdef_9(D)->sseq, D.6126
	movl	-48(%rbp), %edx	# ssid, tmp182
	movslq	%edx, %rdx	# tmp182, D.6125
	salq	$3, %rdx	#, D.6125
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_36, D.6128
	movl	-60(%rbp), %edx	# i, tmp183
	movslq	%edx, %rdx	# tmp183, D.6125
	addq	%rdx, %rdx	# D.6125
	addq	%rdx, %rax	# D.6125, D.6128
	movzwl	(%rax), %eax	# *_40, D.6129
	cwtl
	movl	%eax, -44(%rbp)	# tmp184, s
	.loc 1 202 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L33	#
.L35:
	.loc 1 202 0 is_stmt 0 discriminator 1
	addl	$1, -56(%rbp)	#, j
.L33:
	movl	-60(%rbp), %eax	# i, tmp185
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp186
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_46, D.6128
	movl	-56(%rbp), %edx	# j, tmp187
	movslq	%edx, %rdx	# tmp187, D.6125
	addq	%rdx, %rdx	# D.6125
	addq	%rdx, %rax	# D.6125, D.6128
	movzwl	(%rax), %eax	# *_50, D.6129
	testw	%ax, %ax	# D.6129
	js	.L34	#,
	.loc 1 202 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp188
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp189
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_54, D.6128
	movl	-56(%rbp), %edx	# j, tmp190
	movslq	%edx, %rdx	# tmp190, D.6125
	addq	%rdx, %rdx	# D.6125
	addq	%rdx, %rax	# D.6125, D.6128
	movzwl	(%rax), %eax	# *_58, D.6129
	cwtl
	cmpl	-44(%rbp), %eax	# s, D.6124
	jne	.L35	#,
.L34:
	.loc 1 203 0 is_stmt 1
	movl	-60(%rbp), %eax	# i, tmp191
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp192
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_64, D.6128
	movl	-56(%rbp), %edx	# j, tmp193
	movslq	%edx, %rdx	# tmp193, D.6125
	addq	%rdx, %rdx	# D.6125
	addq	%rdx, %rax	# D.6125, D.6128
	movzwl	(%rax), %eax	# *_68, D.6129
	testw	%ax, %ax	# D.6129
	jns	.L36	#,
	.loc 1 204 0
	movl	-60(%rbp), %eax	# i, tmp194
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp195
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_72, D.6128
	movl	-56(%rbp), %edx	# j, tmp196
	movslq	%edx, %rdx	# tmp196, D.6125
	addq	%rdx, %rdx	# D.6125
	addq	%rax, %rdx	# D.6128, D.6128
	movl	-44(%rbp), %eax	# s, tmp197
	movw	%ax, (%rdx)	# D.6129, *_76
	.loc 1 205 0
	movl	-60(%rbp), %eax	# i, tmp198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp199
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_80, D.6128
	movl	-56(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, D.6130
	addq	$1, %rdx	#, D.6130
	addq	%rdx, %rdx	# D.6130
	addq	%rdx, %rax	# D.6130, D.6128
	movw	$-1, (%rax)	#, *_85
.L36:
	.loc 1 199 0
	addl	$1, -60(%rbp)	#, i
.L32:
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mdef, tmp201
	movl	8(%rax), %eax	# mdef_9(D)->n_emit_state, D.6124
	cmpl	-60(%rbp), %eax	# i, D.6124
	jg	.L37	#,
	.loc 1 195 0 is_stmt 1
	movq	-40(%rbp), %rax	# gn, tmp202
	movq	8(%rax), %rax	# gn_6->next, tmp203
	movq	%rax, -40(%rbp)	# tmp203, gn
.L31:
	.loc 1 195 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, gn
	jne	.L38	#,
	.loc 1 211 0 is_stmt 1
	movl	$0, -60(%rbp)	#, i
	jmp	.L39	#
.L44:
	.loc 1 212 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L40	#
.L41:
	.loc 1 212 0 is_stmt 0 discriminator 2
	addl	$1, -56(%rbp)	#, j
.L40:
	.loc 1 212 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp205
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_93, D.6128
	movl	-56(%rbp), %edx	# j, tmp206
	movslq	%edx, %rdx	# tmp206, D.6125
	addq	%rdx, %rdx	# D.6125
	addq	%rdx, %rax	# D.6125, D.6128
	movzwl	(%rax), %eax	# *_97, D.6129
	testw	%ax, %ax	# D.6129
	jns	.L41	#,
	.loc 1 215 0 is_stmt 1
	movq	-88(%rbp), %rax	# dict2pid, tmp207
	movl	48(%rax), %ecx	# dict2pid_100(D)->n_comstate, D.6124
	movl	-56(%rbp), %eax	# j, j.0
	addl	%eax, %eax	# D.6131
	movl	%eax, %edx	# D.6131, D.6124
	movl	-60(%rbp), %eax	# i, tmp208
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp209
	addq	%rsi, %rax	# D.6125, D.6126
	movq	(%rax), %rsi	# *_107, D.6128
	movq	-96(%rbp), %rax	# hs, tmp210
	movq	%rax, %rdi	# tmp210,
	call	hash_enter_bkey	#
	movl	%eax, -56(%rbp)	# tmp211, j
	.loc 1 216 0
	movq	-88(%rbp), %rax	# dict2pid, tmp212
	movl	48(%rax), %eax	# dict2pid_100(D)->n_comstate, D.6124
	cmpl	-56(%rbp), %eax	# j, D.6124
	jne	.L42	#,
	.loc 1 217 0
	movq	-88(%rbp), %rax	# dict2pid, tmp213
	movl	48(%rax), %eax	# dict2pid_100(D)->n_comstate, D.6124
	leal	1(%rax), %edx	#, D.6124
	movq	-88(%rbp), %rax	# dict2pid, tmp214
	movl	%edx, 48(%rax)	# D.6124, dict2pid_100(D)->n_comstate
	jmp	.L43	#
.L42:
	.loc 1 219 0
	movl	-60(%rbp), %eax	# i, tmp215
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6125
	movq	-32(%rbp), %rax	# sen, tmp216
	addq	%rdx, %rax	# D.6125, D.6126
	movq	(%rax), %rax	# *_116, D.6128
	movq	%rax, %rdi	# D.6128,
	call	ckd_free	#
.L43:
	.loc 1 221 0
	movl	-60(%rbp), %eax	# i, tmp217
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6125
	movq	-24(%rbp), %rax	# comsenid, tmp218
	addq	%rax, %rdx	# tmp218, D.6128
	movl	-56(%rbp), %eax	# j, tmp219
	movw	%ax, (%rdx)	# D.6129, *_120
	.loc 1 211 0
	addl	$1, -60(%rbp)	#, i
.L39:
	.loc 1 211 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mdef, tmp220
	movl	8(%rax), %eax	# mdef_9(D)->n_emit_state, D.6124
	cmpl	-60(%rbp), %eax	# i, D.6124
	jg	.L44	#,
	.loc 1 223 0 is_stmt 1
	movq	-32(%rbp), %rax	# sen, tmp221
	movq	%rax, %rdi	# tmp221,
	call	ckd_free	#
	.loc 1 226 0
	movq	-88(%rbp), %rax	# dict2pid, tmp222
	movl	52(%rax), %ecx	# dict2pid_100(D)->n_comsseq, D.6124
	movq	-80(%rbp), %rax	# mdef, tmp223
	movl	8(%rax), %eax	# mdef_9(D)->n_emit_state, D.6124
	addl	%eax, %eax	# D.6131
	movl	%eax, %edx	# D.6131, D.6124
	movq	-24(%rbp), %rsi	# comsenid, tmp224
	movq	-104(%rbp), %rax	# hp, tmp225
	movq	%rax, %rdi	# tmp225,
	call	hash_enter_bkey	#
	movl	%eax, -56(%rbp)	# tmp226, j
	.loc 1 228 0
	movq	-88(%rbp), %rax	# dict2pid, tmp227
	movl	52(%rax), %eax	# dict2pid_100(D)->n_comsseq, D.6124
	cmpl	-56(%rbp), %eax	# j, D.6124
	jne	.L45	#,
	.loc 1 229 0
	movq	-88(%rbp), %rax	# dict2pid, tmp228
	movl	52(%rax), %eax	# dict2pid_100(D)->n_comsseq, D.6124
	leal	1(%rax), %edx	#, D.6124
	movq	-88(%rbp), %rax	# dict2pid, tmp229
	movl	%edx, 52(%rax)	# D.6124, dict2pid_100(D)->n_comsseq
	.loc 1 230 0
	movq	-88(%rbp), %rax	# dict2pid, tmp230
	movl	52(%rax), %eax	# dict2pid_100(D)->n_comsseq, D.6124
	cmpl	$32765, %eax	#, D.6124
	jle	.L47	#,
	.loc 1 231 0
	movl	$.LC0, %edx	#,
	movl	$231, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-88(%rbp), %rax	# dict2pid, tmp231
	movl	52(%rax), %eax	# dict2pid_100(D)->n_comsseq, D.6124
	movl	%eax, %esi	# D.6124,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L47	#
.L45:
	.loc 1 234 0
	movq	-24(%rbp), %rax	# comsenid, tmp232
	movq	%rax, %rdi	# tmp232,
	call	ckd_free	#
.L47:
	.loc 1 236 0
	movl	-56(%rbp), %eax	# j, D.6132
	.loc 1 237 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ssidlist2comsseq, .-ssidlist2comsseq
	.section	.rodata
.LC4:
	.string	"INFO"
	.align 8
.LC5:
	.string	"Building PID tables for dictionary\n"
.LC6:
	.string	"Pronunciation-length(%s)= %d\n"
	.align 8
.LC7:
	.string	"%d composite states; %d composite sseq\n"
	.text
	.globl	dict2pid_build
	.type	dict2pid_build, @function
dict2pid_build:
.LFB7:
	.loc 1 242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# mdef, mdef
	movq	%rsi, -176(%rbp)	# dict, dict
	.loc 1 254 0
	movl	$.LC4, %edx	#,
	movl	$254, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 256 0
	movl	$256, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -88(%rbp)	# tmp366, dict2pid
	.loc 1 257 0
	movq	-176(%rbp), %rax	# dict, tmp367
	movl	52(%rax), %eax	# dict_22(D)->n_word, D.6137
	cltq
	movl	$257, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	-88(%rbp), %rdx	# dict2pid, tmp368
	movq	%rax, (%rdx)	# D.6139, dict2pid_21->internal
	.loc 1 258 0
	movq	-168(%rbp), %rax	# mdef, tmp369
	movl	(%rax), %edx	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp370
	movl	(%rax), %esi	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp371
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	movl	$261, %r9d	#,
	movl	$.LC1, %r8d	#,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# D.6137,
	call	__ckd_calloc_3d__	#
	movq	-88(%rbp), %rdx	# dict2pid, tmp372
	movq	%rax, 8(%rdx)	# D.6140, dict2pid_21->ldiph_lc
	.loc 1 262 0
	movq	-168(%rbp), %rax	# mdef, tmp373
	movl	(%rax), %esi	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp374
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	movl	$264, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# D.6137,
	call	__ckd_calloc_2d__	#
	movq	-88(%rbp), %rdx	# dict2pid, tmp375
	movq	%rax, 16(%rdx)	# D.6141, dict2pid_21->single_lc
	.loc 1 265 0
	movq	-88(%rbp), %rax	# dict2pid, tmp376
	movl	$0, 48(%rax)	#, dict2pid_21->n_comstate
	.loc 1 266 0
	movq	-88(%rbp), %rax	# dict2pid, tmp377
	movl	$0, 52(%rax)	#, dict2pid_21->n_comsseq
	.loc 1 268 0
	movq	-168(%rbp), %rax	# mdef, tmp378
	movl	(%rax), %edx	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp379
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	imull	%eax, %edx	# D.6137, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp380
	movl	8(%rax), %eax	# mdef_26(D)->n_emit_state, D.6137
	imull	%edx, %eax	# D.6137, D.6137
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.6137,
	call	hash_new	#
	movq	%rax, -80(%rbp)	# tmp381, hs
	.loc 1 269 0
	movq	-168(%rbp), %rax	# mdef, tmp382
	movl	(%rax), %edx	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp383
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	imull	%edx, %eax	# D.6137, D.6137
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.6137,
	call	hash_new	#
	movq	%rax, -72(%rbp)	# tmp384, hp
	.loc 1 271 0
	movl	$0, -124(%rbp)	#, w
	movl	$0, -148(%rbp)	#, n
	jmp	.L50	#
.L52:
	.loc 1 272 0
	movq	-176(%rbp), %rax	# dict, tmp385
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp386
	movslq	%eax, %rdx	# tmp386, D.6138
	movq	%rdx, %rax	# D.6138, tmp387
	salq	$2, %rax	#, tmp387
	addq	%rdx, %rax	# D.6138, tmp387
	salq	$3, %rax	#, tmp388
	addq	%rcx, %rax	# D.6142, D.6142
	movl	16(%rax), %eax	# _49->pronlen, tmp389
	movl	%eax, -120(%rbp)	# tmp389, pronlen
	.loc 1 273 0
	cmpl	$0, -120(%rbp)	#, pronlen
	jns	.L51	#,
	.loc 1 274 0
	movl	$.LC0, %edx	#,
	movl	$274, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-176(%rbp), %rax	# dict, tmp390
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp391
	movslq	%eax, %rdx	# tmp391, D.6138
	movq	%rdx, %rax	# D.6138, tmp392
	salq	$2, %rax	#, tmp392
	addq	%rdx, %rax	# D.6138, tmp392
	salq	$3, %rax	#, tmp393
	addq	%rcx, %rax	# D.6142, D.6142
	movq	(%rax), %rax	# _54->word, D.6143
	movl	-120(%rbp), %edx	# pronlen, tmp394
	movq	%rax, %rsi	# D.6143,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L51:
	.loc 1 275 0
	movl	-148(%rbp), %edx	# n, n.1
	movl	-120(%rbp), %eax	# pronlen, tmp395
	addl	%edx, %eax	# n.1, n.2
	movl	%eax, -148(%rbp)	# n.2, n
	.loc 1 271 0
	addl	$1, -124(%rbp)	#, w
.L50:
	.loc 1 271 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# dict, tmp396
	movl	52(%rax), %eax	# dict_22(D)->n_word, D.6137
	cmpl	-124(%rbp), %eax	# w, D.6137
	jg	.L52	#,
	.loc 1 278 0 is_stmt 1
	movl	-148(%rbp), %eax	# n, n.3
	cltq
	movl	$278, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	%rax, -112(%rbp)	# tmp397, internal
	.loc 1 281 0
	movq	-168(%rbp), %rax	# mdef, tmp398
	movl	(%rax), %esi	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp399
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	movl	$281, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# D.6137,
	call	__ckd_calloc_2d__	#
	movq	%rax, -64(%rbp)	# tmp400, ldiph
	.loc 1 282 0
	movq	-168(%rbp), %rax	# mdef, tmp401
	movl	(%rax), %esi	# mdef_26(D)->n_ciphone, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp402
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	movl	$282, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# D.6137,
	call	__ckd_calloc_2d__	#
	movq	%rax, -56(%rbp)	# tmp403, rdiph
	.loc 1 283 0
	movq	-168(%rbp), %rax	# mdef, tmp404
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	cltq
	movl	$283, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	%rax, -48(%rbp)	# tmp405, single
	.loc 1 284 0
	movl	$0, -136(%rbp)	#, b
	jmp	.L53	#
.L58:
	.loc 1 285 0
	movl	$0, -132(%rbp)	#, l
	jmp	.L54	#
.L57:
	.loc 1 286 0
	movl	$0, -128(%rbp)	#, r
	jmp	.L55	#
.L56:
	.loc 1 287 0 discriminator 2
	movq	-88(%rbp), %rax	# dict2pid, tmp406
	movq	8(%rax), %rax	# dict2pid_21->ldiph_lc, D.6144
	movl	-136(%rbp), %edx	# b, tmp407
	movslq	%edx, %rdx	# tmp407, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6144
	movq	(%rax), %rax	# *_80, D.6145
	movl	-128(%rbp), %edx	# r, tmp408
	movslq	%edx, %rdx	# tmp408, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_84, D.6146
	movl	-132(%rbp), %edx	# l, tmp409
	movslq	%edx, %rdx	# tmp409, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	$-1, (%rax)	#, *_88
	.loc 1 286 0 discriminator 2
	addl	$1, -128(%rbp)	#, r
.L55:
	.loc 1 286 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# mdef, tmp410
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	cmpl	-128(%rbp), %eax	# r, D.6137
	jg	.L56	#,
	.loc 1 289 0 is_stmt 1
	movq	-88(%rbp), %rax	# dict2pid, tmp411
	movq	16(%rax), %rax	# dict2pid_21->single_lc, D.6145
	movl	-136(%rbp), %edx	# b, tmp412
	movslq	%edx, %rdx	# tmp412, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_93, D.6146
	movl	-132(%rbp), %edx	# l, tmp413
	movslq	%edx, %rdx	# tmp413, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	$-1, (%rax)	#, *_97
	.loc 1 291 0
	movl	-136(%rbp), %eax	# b, tmp414
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-64(%rbp), %rax	# ldiph, tmp415
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_100, D.6146
	movl	-132(%rbp), %edx	# l, tmp416
	movslq	%edx, %rdx	# tmp416, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	$-1, (%rax)	#, *_104
	.loc 1 292 0
	movl	-136(%rbp), %eax	# b, tmp417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-56(%rbp), %rax	# rdiph, tmp418
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_107, D.6146
	movl	-132(%rbp), %edx	# l, tmp419
	movslq	%edx, %rdx	# tmp419, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	$-1, (%rax)	#, *_111
	.loc 1 285 0
	addl	$1, -132(%rbp)	#, l
.L54:
	.loc 1 285 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# mdef, tmp420
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	cmpl	-132(%rbp), %eax	# l, D.6137
	jg	.L57	#,
	.loc 1 294 0 is_stmt 1
	movl	-136(%rbp), %eax	# b, tmp421
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-48(%rbp), %rax	# single, tmp422
	addq	%rdx, %rax	# D.6138, D.6146
	movl	$-1, (%rax)	#, *_115
	.loc 1 284 0
	addl	$1, -136(%rbp)	#, b
.L53:
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# mdef, tmp423
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	cmpl	-136(%rbp), %eax	# b, D.6137
	jg	.L58	#,
	.loc 1 297 0 is_stmt 1
	movl	$0, -124(%rbp)	#, w
	jmp	.L59	#
.L71:
	.loc 1 298 0
	movq	-88(%rbp), %rax	# dict2pid, tmp424
	movq	(%rax), %rax	# dict2pid_21->internal, D.6145
	movl	-124(%rbp), %edx	# w, tmp425
	movslq	%edx, %rdx	# tmp425, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rax, %rdx	# D.6145, D.6145
	movq	-112(%rbp), %rax	# internal, tmp426
	movq	%rax, (%rdx)	# tmp426, *_122
	.loc 1 299 0
	movq	-176(%rbp), %rax	# dict, tmp427
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp428
	movslq	%eax, %rdx	# tmp428, D.6138
	movq	%rdx, %rax	# D.6138, tmp429
	salq	$2, %rax	#, tmp429
	addq	%rdx, %rax	# D.6138, tmp429
	salq	$3, %rax	#, tmp430
	addq	%rcx, %rax	# D.6142, D.6142
	movl	16(%rax), %eax	# _126->pronlen, tmp431
	movl	%eax, -120(%rbp)	# tmp431, pronlen
	.loc 1 301 0
	cmpl	$1, -120(%rbp)	#, pronlen
	jle	.L60	#,
	.loc 1 302 0
	movq	-176(%rbp), %rax	# dict, tmp432
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp433
	movslq	%eax, %rdx	# tmp433, D.6138
	movq	%rdx, %rax	# D.6138, tmp434
	salq	$2, %rax	#, tmp434
	addq	%rdx, %rax	# D.6138, tmp434
	salq	$3, %rax	#, tmp435
	addq	%rcx, %rax	# D.6142, D.6142
	movq	8(%rax), %rax	# _131->ciphone, D.6147
	movzbl	(%rax), %eax	# *_132, D.6148
	movsbl	%al, %eax	# D.6148, tmp436
	movl	%eax, -136(%rbp)	# tmp436, b
	.loc 1 303 0
	movq	-176(%rbp), %rax	# dict, tmp437
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp438
	movslq	%eax, %rdx	# tmp438, D.6138
	movq	%rdx, %rax	# D.6138, tmp439
	salq	$2, %rax	#, tmp439
	addq	%rdx, %rax	# D.6138, tmp439
	salq	$3, %rax	#, tmp440
	addq	%rcx, %rax	# D.6142, D.6142
	movq	8(%rax), %rax	# _138->ciphone, D.6147
	addq	$1, %rax	#, D.6147
	movzbl	(%rax), %eax	# *_140, D.6148
	movsbl	%al, %eax	# D.6148, tmp441
	movl	%eax, -128(%rbp)	# tmp441, r
	.loc 1 304 0
	movl	-136(%rbp), %eax	# b, tmp442
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-64(%rbp), %rax	# ldiph, tmp443
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_145, D.6146
	movl	-128(%rbp), %edx	# r, tmp444
	movslq	%edx, %rdx	# tmp444, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	(%rax), %eax	# *_149, D.6137
	testl	%eax, %eax	# D.6137
	jns	.L61	#,
	.loc 1 305 0
	movl	-128(%rbp), %edx	# r, tmp445
	movl	-136(%rbp), %ecx	# b, tmp446
	movq	-168(%rbp), %rax	# mdef, tmp447
	movl	%ecx, %esi	# tmp446,
	movq	%rax, %rdi	# tmp447,
	call	ldiph_comsseq	#
	movq	%rax, -40(%rbp)	# tmp448, g
	.loc 1 306 0
	movl	-136(%rbp), %eax	# b, tmp449
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-64(%rbp), %rax	# ldiph, tmp450
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_154, D.6146
	movl	-128(%rbp), %edx	# r, tmp451
	movslq	%edx, %rdx	# tmp451, D.6138
	salq	$2, %rdx	#, D.6138
	leaq	(%rax,%rdx), %rbx	#, D.6146
	movq	-72(%rbp), %rdi	# hp, tmp452
	movq	-80(%rbp), %rcx	# hs, tmp453
	movq	-88(%rbp), %rdx	# dict2pid, tmp454
	movq	-168(%rbp), %rsi	# mdef, tmp455
	movq	-40(%rbp), %rax	# g, tmp456
	movq	%rdi, %r8	# tmp452,
	movq	%rax, %rdi	# tmp456,
	call	ssidlist2comsseq	#
	movl	%eax, (%rbx)	# D.6137, *_158
	.loc 1 307 0
	movq	-40(%rbp), %rax	# g, tmp457
	movq	%rax, %rdi	# tmp457,
	call	glist_free	#
	.loc 1 309 0
	movl	$0, -132(%rbp)	#, l
	jmp	.L62	#
.L63:
	.loc 1 310 0 discriminator 2
	movl	-128(%rbp), %eax	# r, tmp458
	movsbl	%al, %ecx	# D.6148, D.6137
	movl	-132(%rbp), %eax	# l, tmp459
	movsbl	%al, %edx	# D.6148, D.6137
	movl	-136(%rbp), %eax	# b, tmp460
	movsbl	%al, %esi	# D.6148, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp461
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp461,
	call	mdef_phone_id_nearest	#
	movl	%eax, -116(%rbp)	# tmp462, p
	.loc 1 311 0 discriminator 2
	movq	-88(%rbp), %rax	# dict2pid, tmp463
	movq	8(%rax), %rax	# dict2pid_21->ldiph_lc, D.6144
	movl	-136(%rbp), %edx	# b, tmp464
	movslq	%edx, %rdx	# tmp464, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6144
	movq	(%rax), %rax	# *_172, D.6145
	movl	-128(%rbp), %edx	# r, tmp465
	movslq	%edx, %rdx	# tmp465, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_176, D.6146
	movl	-132(%rbp), %edx	# l, tmp466
	movslq	%edx, %rdx	# tmp466, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rax, %rdx	# D.6146, D.6146
	movq	-168(%rbp), %rax	# mdef, tmp467
	movq	40(%rax), %rax	# mdef_26(D)->phone, D.6149
	movl	-116(%rbp), %ecx	# p, tmp468
	movslq	%ecx, %rcx	# tmp468, D.6138
	salq	$4, %rcx	#, D.6138
	addq	%rcx, %rax	# D.6138, D.6149
	movl	(%rax), %eax	# _184->ssid, D.6137
	movl	%eax, (%rdx)	# D.6137, *_180
	.loc 1 309 0 discriminator 2
	addl	$1, -132(%rbp)	#, l
.L62:
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# mdef, tmp469
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	cmpl	-132(%rbp), %eax	# l, D.6137
	jg	.L63	#,
.L61:
	.loc 1 314 0 is_stmt 1
	movl	-136(%rbp), %eax	# b, tmp470
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-64(%rbp), %rax	# ldiph, tmp471
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_189, D.6146
	movl	-128(%rbp), %edx	# r, tmp472
	movslq	%edx, %rdx	# tmp472, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	(%rax), %edx	# *_193, D.6137
	movq	-112(%rbp), %rax	# internal, tmp473
	movl	%edx, (%rax)	# D.6137, *internal_1
	.loc 1 316 0
	movl	$1, -144(%rbp)	#, i
	jmp	.L64	#
.L65:
	.loc 1 317 0 discriminator 2
	movl	-136(%rbp), %eax	# b, tmp474
	movl	%eax, -132(%rbp)	# tmp474, l
	.loc 1 318 0 discriminator 2
	movl	-128(%rbp), %eax	# r, tmp475
	movl	%eax, -136(%rbp)	# tmp475, b
	.loc 1 319 0 discriminator 2
	movq	-176(%rbp), %rax	# dict, tmp476
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp477
	movslq	%eax, %rdx	# tmp477, D.6138
	movq	%rdx, %rax	# D.6138, tmp478
	salq	$2, %rax	#, tmp478
	addq	%rdx, %rax	# D.6138, tmp478
	salq	$3, %rax	#, tmp479
	addq	%rcx, %rax	# D.6142, D.6142
	movq	8(%rax), %rax	# _202->ciphone, D.6147
	movl	-144(%rbp), %edx	# i, tmp480
	movslq	%edx, %rdx	# tmp480, D.6150
	addq	$1, %rdx	#, D.6150
	addq	%rdx, %rax	# D.6150, D.6147
	movzbl	(%rax), %eax	# *_206, D.6148
	movsbl	%al, %eax	# D.6148, tmp481
	movl	%eax, -128(%rbp)	# tmp481, r
	.loc 1 321 0 discriminator 2
	movl	-128(%rbp), %eax	# r, tmp482
	movsbl	%al, %ecx	# D.6148, D.6137
	movl	-132(%rbp), %eax	# l, tmp483
	movsbl	%al, %edx	# D.6148, D.6137
	movl	-136(%rbp), %eax	# b, tmp484
	movsbl	%al, %esi	# D.6148, D.6137
	movq	-168(%rbp), %rax	# mdef, tmp485
	movl	$3, %r8d	#,
	movq	%rax, %rdi	# tmp485,
	call	mdef_phone_id_nearest	#
	movl	%eax, -116(%rbp)	# tmp486, p
	.loc 1 322 0 discriminator 2
	movl	-144(%rbp), %eax	# i, tmp487
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-112(%rbp), %rax	# internal, tmp488
	addq	%rax, %rdx	# tmp488, D.6146
	movq	-168(%rbp), %rax	# mdef, tmp489
	movq	40(%rax), %rax	# mdef_26(D)->phone, D.6149
	movl	-116(%rbp), %ecx	# p, tmp490
	movslq	%ecx, %rcx	# tmp490, D.6138
	salq	$4, %rcx	#, D.6138
	addq	%rcx, %rax	# D.6138, D.6149
	movl	(%rax), %eax	# _222->ssid, D.6137
	movl	%eax, (%rdx)	# D.6137, *_218
	.loc 1 316 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L64:
	.loc 1 316 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# pronlen, tmp491
	subl	$1, %eax	#, D.6137
	cmpl	-144(%rbp), %eax	# i, D.6137
	jg	.L65	#,
	.loc 1 325 0 is_stmt 1
	movl	-136(%rbp), %eax	# b, tmp492
	movl	%eax, -132(%rbp)	# tmp492, l
	.loc 1 326 0
	movl	-128(%rbp), %eax	# r, tmp493
	movl	%eax, -136(%rbp)	# tmp493, b
	.loc 1 327 0
	movl	-136(%rbp), %eax	# b, tmp494
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-56(%rbp), %rax	# rdiph, tmp495
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_229, D.6146
	movl	-132(%rbp), %edx	# l, tmp496
	movslq	%edx, %rdx	# tmp496, D.6138
	salq	$2, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6146
	movl	(%rax), %eax	# *_233, D.6137
	testl	%eax, %eax	# D.6137
	jns	.L66	#,
	.loc 1 328 0
	movl	-132(%rbp), %edx	# l, tmp497
	movl	-136(%rbp), %ecx	# b, tmp498
	movq	-168(%rbp), %rax	# mdef, tmp499
	movl	%ecx, %esi	# tmp498,
	movq	%rax, %rdi	# tmp499,
	call	rdiph_comsseq	#
	movq	%rax, -40(%rbp)	# tmp500, g
	.loc 1 329 0
	movl	-136(%rbp), %eax	# b, tmp501
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6138
	movq	-56(%rbp), %rax	# rdiph, tmp502
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_238, D.6146
	movl	-132(%rbp), %edx	# l, tmp503
	movslq	%edx, %rdx	# tmp503, D.6138
	salq	$2, %rdx	#, D.6138
	leaq	(%rax,%rdx), %rbx	#, D.6146
	movq	-72(%rbp), %rdi	# hp, tmp504
	movq	-80(%rbp), %rcx	# hs, tmp505
	movq	-88(%rbp), %rdx	# dict2pid, tmp506
	movq	-168(%rbp), %rsi	# mdef, tmp507
	movq	-40(%rbp), %rax	# g, tmp508
	movq	%rdi, %r8	# tmp504,
	movq	%rax, %rdi	# tmp508,
	call	ssidlist2comsseq	#
	movl	%eax, (%rbx)	# D.6137, *_242
	.loc 1 330 0
	movq	-40(%rbp), %rax	# g, tmp509
	movq	%rax, %rdi	# tmp509,
	call	glist_free	#
.L66:
	.loc 1 332 0
	movl	-120(%rbp), %eax	# pronlen, tmp510
	cltq
	salq	$2, %rax	#, D.6138
	leaq	-4(%rax), %rdx	#, D.6150
	movq	-112(%rbp), %rax	# internal, tmp511
	addq	%rax, %rdx	# tmp511, D.6146
	movl	-136(%rbp), %eax	# b, tmp512
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6138
	movq	-56(%rbp), %rax	# rdiph, tmp513
	addq	%rcx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_250, D.6146
	movl	-132(%rbp), %ecx	# l, tmp514
	movslq	%ecx, %rcx	# tmp514, D.6138
	salq	$2, %rcx	#, D.6138
	addq	%rcx, %rax	# D.6138, D.6146
	movl	(%rax), %eax	# *_254, D.6137
	movl	%eax, (%rdx)	# D.6137, *_247
	jmp	.L67	#
.L60:
	.loc 1 333 0
	cmpl	$1, -120(%rbp)	#, pronlen
	jne	.L67	#,
	.loc 1 334 0
	movq	-176(%rbp), %rax	# dict, tmp515
	movq	32(%rax), %rcx	# dict_22(D)->word, D.6142
	movl	-124(%rbp), %eax	# w, tmp516
	movslq	%eax, %rdx	# tmp516, D.6138
	movq	%rdx, %rax	# D.6138, tmp517
	salq	$2, %rax	#, tmp517
	addq	%rdx, %rax	# D.6138, tmp517
	salq	$3, %rax	#, tmp518
	addq	%rcx, %rax	# D.6142, D.6142
	movq	8(%rax), %rax	# _259->ciphone, D.6147
	movzbl	(%rax), %eax	# *_260, D.6148
	movsbl	%al, %eax	# D.6148, tmp519
	movl	%eax, -136(%rbp)	# tmp519, b
	.loc 1 335 0
	movl	-136(%rbp), %eax	# b, tmp520
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-48(%rbp), %rax	# single, tmp521
	addq	%rdx, %rax	# D.6138, D.6146
	movl	(%rax), %eax	# *_265, D.6137
	testl	%eax, %eax	# D.6137
	jns	.L68	#,
	.loc 1 336 0
	movl	-136(%rbp), %edx	# b, tmp522
	movq	-168(%rbp), %rax	# mdef, tmp523
	movl	%edx, %esi	# tmp522,
	movq	%rax, %rdi	# tmp523,
	call	single_comsseq	#
	movq	%rax, -40(%rbp)	# tmp524, g
	.loc 1 337 0
	movl	-136(%rbp), %eax	# b, tmp525
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-48(%rbp), %rax	# single, tmp526
	leaq	(%rdx,%rax), %rbx	#, D.6146
	movq	-72(%rbp), %rdi	# hp, tmp527
	movq	-80(%rbp), %rcx	# hs, tmp528
	movq	-88(%rbp), %rdx	# dict2pid, tmp529
	movq	-168(%rbp), %rsi	# mdef, tmp530
	movq	-40(%rbp), %rax	# g, tmp531
	movq	%rdi, %r8	# tmp527,
	movq	%rax, %rdi	# tmp531,
	call	ssidlist2comsseq	#
	movl	%eax, (%rbx)	# D.6137, *_270
	.loc 1 338 0
	movq	-40(%rbp), %rax	# g, tmp532
	movq	%rax, %rdi	# tmp532,
	call	glist_free	#
	.loc 1 340 0
	movl	$0, -132(%rbp)	#, l
	jmp	.L69	#
.L70:
	.loc 1 341 0 discriminator 2
	movl	-132(%rbp), %edx	# l, tmp533
	movl	-136(%rbp), %ecx	# b, tmp534
	movq	-168(%rbp), %rax	# mdef, tmp535
	movl	%ecx, %esi	# tmp534,
	movq	%rax, %rdi	# tmp535,
	call	single_lc_comsseq	#
	movq	%rax, -40(%rbp)	# tmp536, g
	.loc 1 342 0 discriminator 2
	movq	-88(%rbp), %rax	# dict2pid, tmp537
	movq	16(%rax), %rax	# dict2pid_21->single_lc, D.6145
	movl	-136(%rbp), %edx	# b, tmp538
	movslq	%edx, %rdx	# tmp538, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6145
	movq	(%rax), %rax	# *_278, D.6146
	movl	-132(%rbp), %edx	# l, tmp539
	movslq	%edx, %rdx	# tmp539, D.6138
	salq	$2, %rdx	#, D.6138
	leaq	(%rax,%rdx), %rbx	#, D.6146
	movq	-72(%rbp), %rdi	# hp, tmp540
	movq	-80(%rbp), %rcx	# hs, tmp541
	movq	-88(%rbp), %rdx	# dict2pid, tmp542
	movq	-168(%rbp), %rsi	# mdef, tmp543
	movq	-40(%rbp), %rax	# g, tmp544
	movq	%rdi, %r8	# tmp540,
	movq	%rax, %rdi	# tmp544,
	call	ssidlist2comsseq	#
	movl	%eax, (%rbx)	# D.6137, *_282
	.loc 1 343 0 discriminator 2
	movq	-40(%rbp), %rax	# g, tmp545
	movq	%rax, %rdi	# tmp545,
	call	glist_free	#
	.loc 1 340 0 discriminator 2
	addl	$1, -132(%rbp)	#, l
.L69:
	.loc 1 340 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# mdef, tmp546
	movl	(%rax), %eax	# mdef_26(D)->n_ciphone, D.6137
	cmpl	-132(%rbp), %eax	# l, D.6137
	jg	.L70	#,
.L68:
	.loc 1 346 0 is_stmt 1
	movl	-136(%rbp), %eax	# b, tmp547
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-48(%rbp), %rax	# single, tmp548
	addq	%rdx, %rax	# D.6138, D.6146
	movl	(%rax), %edx	# *_287, D.6137
	movq	-112(%rbp), %rax	# internal, tmp549
	movl	%edx, (%rax)	# D.6137, *internal_1
.L67:
	.loc 1 349 0
	movl	-120(%rbp), %eax	# pronlen, tmp550
	cltq
	salq	$2, %rax	#, D.6138
	addq	%rax, -112(%rbp)	# D.6138, internal
	.loc 1 297 0
	addl	$1, -124(%rbp)	#, w
.L59:
	.loc 1 297 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# dict, tmp551
	movl	52(%rax), %eax	# dict_22(D)->n_word, D.6137
	cmpl	-124(%rbp), %eax	# w, D.6137
	jg	.L71	#,
	.loc 1 352 0 is_stmt 1
	movq	-64(%rbp), %rax	# ldiph, tmp552
	movq	%rax, %rdi	# tmp552,
	call	ckd_free_2d	#
	.loc 1 353 0
	movq	-56(%rbp), %rax	# rdiph, tmp553
	movq	%rax, %rdi	# tmp553,
	call	ckd_free_2d	#
	.loc 1 354 0
	movq	-48(%rbp), %rax	# single, tmp554
	movq	%rax, %rdi	# tmp554,
	call	ckd_free	#
	.loc 1 357 0
	movq	-88(%rbp), %rax	# dict2pid, tmp555
	movl	48(%rax), %eax	# dict2pid_21->n_comstate, D.6137
	cltq
	movl	$357, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	%rax, -32(%rbp)	# tmp556, cslen
	.loc 1 358 0
	leaq	-148(%rbp), %rdx	#, tmp557
	movq	-80(%rbp), %rax	# hs, tmp558
	movq	%rdx, %rsi	# tmp557,
	movq	%rax, %rdi	# tmp558,
	call	hash_tolist	#
	movq	%rax, -40(%rbp)	# tmp559, g
	.loc 1 360 0
	movl	$0, -148(%rbp)	#, n
	.loc 1 361 0
	movq	-40(%rbp), %rax	# g, tmp560
	movq	%rax, -104(%rbp)	# tmp560, gn
	jmp	.L72	#
.L75:
	.loc 1 362 0
	movq	-104(%rbp), %rax	# gn, tmp561
	movq	(%rax), %rax	# gn_2->data.ptr, tmp562
	movq	%rax, -24(%rbp)	# tmp562, he
	.loc 1 363 0
	movq	-24(%rbp), %rax	# he, tmp563
	movq	(%rax), %rax	# he_298->key, tmp564
	movq	%rax, -96(%rbp)	# tmp564, sen
	.loc 1 364 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L73	#
.L74:
	.loc 1 364 0 is_stmt 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L73:
	.loc 1 364 0 discriminator 1
	movl	-144(%rbp), %eax	# i, tmp565
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6138
	movq	-96(%rbp), %rax	# sen, tmp566
	addq	%rdx, %rax	# D.6138, D.6151
	movzwl	(%rax), %eax	# *_303, D.6152
	testw	%ax, %ax	# D.6152
	jns	.L74	#,
	.loc 1 366 0 is_stmt 1
	movq	-24(%rbp), %rax	# he, tmp567
	movl	12(%rax), %eax	# he_298->val, D.6137
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-32(%rbp), %rax	# cslen, tmp568
	addq	%rdx, %rax	# D.6138, D.6153
	movl	-144(%rbp), %edx	# i, tmp569
	addl	$1, %edx	#, D.6137
	movl	%edx, (%rax)	# D.6137, *_309
	.loc 1 368 0
	movl	-144(%rbp), %eax	# i, tmp570
	leal	1(%rax), %edx	#, D.6137
	movl	-148(%rbp), %eax	# n, n.4
	addl	%edx, %eax	# D.6137, n.5
	movl	%eax, -148(%rbp)	# n.5, n
	.loc 1 361 0
	movq	-104(%rbp), %rax	# gn, tmp571
	movq	8(%rax), %rax	# gn_2->next, tmp572
	movq	%rax, -104(%rbp)	# tmp572, gn
.L72:
	.loc 1 361 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, gn
	jne	.L75	#,
	.loc 1 370 0 is_stmt 1
	movq	-88(%rbp), %rax	# dict2pid, tmp573
	movl	48(%rax), %eax	# dict2pid_21->n_comstate, D.6137
	cltq
	movl	$370, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	-88(%rbp), %rdx	# dict2pid, tmp574
	movq	%rax, 24(%rdx)	# D.6139, dict2pid_21->comstate
	.loc 1 371 0
	movl	-148(%rbp), %eax	# n, n.6
	cltq
	movl	$371, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	%rax, -96(%rbp)	# tmp575, sen
	.loc 1 372 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L76	#
.L77:
	.loc 1 373 0 discriminator 2
	movq	-88(%rbp), %rax	# dict2pid, tmp576
	movq	24(%rax), %rax	# dict2pid_21->comstate, D.6154
	movl	-144(%rbp), %edx	# i, tmp577
	movslq	%edx, %rdx	# tmp577, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rax, %rdx	# D.6154, D.6154
	movq	-96(%rbp), %rax	# sen, tmp578
	movq	%rax, (%rdx)	# tmp578, *_326
	.loc 1 374 0 discriminator 2
	movl	-144(%rbp), %eax	# i, tmp579
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-32(%rbp), %rax	# cslen, tmp580
	addq	%rdx, %rax	# D.6138, D.6153
	movl	(%rax), %eax	# *_329, D.6137
	cltq
	addq	%rax, %rax	# D.6138
	addq	%rax, -96(%rbp)	# D.6138, sen
	.loc 1 372 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L76:
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# dict2pid, tmp581
	movl	48(%rax), %eax	# dict2pid_21->n_comstate, D.6137
	cmpl	-144(%rbp), %eax	# i, D.6137
	jg	.L77	#,
	.loc 1 378 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp582
	movq	%rax, -104(%rbp)	# tmp582, gn
	jmp	.L78	#
.L81:
	.loc 1 379 0
	movq	-104(%rbp), %rax	# gn, tmp583
	movq	(%rax), %rax	# gn_3->data.ptr, tmp584
	movq	%rax, -24(%rbp)	# tmp584, he
	.loc 1 380 0
	movq	-24(%rbp), %rax	# he, tmp585
	movq	(%rax), %rax	# he_336->key, tmp586
	movq	%rax, -96(%rbp)	# tmp586, sen
	.loc 1 381 0
	movq	-24(%rbp), %rax	# he, tmp587
	movl	12(%rax), %eax	# he_336->val, tmp588
	movl	%eax, -144(%rbp)	# tmp588, i
	.loc 1 383 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L79	#
.L80:
	.loc 1 384 0 discriminator 2
	movq	-88(%rbp), %rax	# dict2pid, tmp589
	movq	24(%rax), %rax	# dict2pid_21->comstate, D.6154
	movl	-144(%rbp), %edx	# i, tmp590
	movslq	%edx, %rdx	# tmp590, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6154
	movq	(%rax), %rax	# *_347, D.6151
	movl	-140(%rbp), %edx	# j, tmp591
	movslq	%edx, %rdx	# tmp591, D.6138
	addq	%rdx, %rdx	# D.6138
	addq	%rax, %rdx	# D.6151, D.6151
	movl	-140(%rbp), %eax	# j, tmp592
	cltq
	leaq	(%rax,%rax), %rcx	#, D.6138
	movq	-96(%rbp), %rax	# sen, tmp593
	addq	%rcx, %rax	# D.6138, D.6151
	movzwl	(%rax), %eax	# *_354, D.6152
	movw	%ax, (%rdx)	# D.6152, *_351
	.loc 1 383 0 discriminator 2
	addl	$1, -140(%rbp)	#, j
.L79:
	.loc 1 383 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# i, tmp594
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6138
	movq	-32(%rbp), %rax	# cslen, tmp595
	addq	%rdx, %rax	# D.6138, D.6153
	movl	(%rax), %eax	# *_342, D.6137
	cmpl	-140(%rbp), %eax	# j, D.6137
	jg	.L80	#,
	.loc 1 387 0 is_stmt 1
	movq	-96(%rbp), %rax	# sen, tmp596
	movq	%rax, %rdi	# tmp596,
	call	ckd_free	#
	.loc 1 378 0
	movq	-104(%rbp), %rax	# gn, tmp597
	movq	8(%rax), %rax	# gn_3->next, tmp598
	movq	%rax, -104(%rbp)	# tmp598, gn
.L78:
	.loc 1 378 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, gn
	jne	.L81	#,
	.loc 1 389 0 is_stmt 1
	movq	-32(%rbp), %rax	# cslen, tmp599
	movq	%rax, %rdi	# tmp599,
	call	ckd_free	#
	.loc 1 390 0
	movq	-40(%rbp), %rax	# g, tmp600
	movq	%rax, %rdi	# tmp600,
	call	glist_free	#
	.loc 1 391 0
	movq	-80(%rbp), %rax	# hs, tmp601
	movq	%rax, %rdi	# tmp601,
	call	hash_free	#
	.loc 1 394 0
	movq	-88(%rbp), %rax	# dict2pid, tmp602
	movl	52(%rax), %eax	# dict2pid_21->n_comsseq, D.6137
	cltq
	movl	$394, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	-88(%rbp), %rdx	# dict2pid, tmp603
	movq	%rax, 32(%rdx)	# D.6139, dict2pid_21->comsseq
	.loc 1 395 0
	leaq	-148(%rbp), %rdx	#, tmp604
	movq	-72(%rbp), %rax	# hp, tmp605
	movq	%rdx, %rsi	# tmp604,
	movq	%rax, %rdi	# tmp605,
	call	hash_tolist	#
	movq	%rax, -40(%rbp)	# tmp606, g
	.loc 1 399 0
	movq	-40(%rbp), %rax	# g, tmp607
	movq	%rax, -104(%rbp)	# tmp607, gn
	jmp	.L82	#
.L83:
	.loc 1 400 0 discriminator 2
	movq	-104(%rbp), %rax	# gn, tmp608
	movq	(%rax), %rax	# gn_4->data.ptr, tmp609
	movq	%rax, -24(%rbp)	# tmp609, he
	.loc 1 401 0 discriminator 2
	movq	-24(%rbp), %rax	# he, tmp610
	movl	12(%rax), %eax	# he_363->val, tmp611
	movl	%eax, -144(%rbp)	# tmp611, i
	.loc 1 402 0 discriminator 2
	movq	-88(%rbp), %rax	# dict2pid, tmp612
	movq	32(%rax), %rax	# dict2pid_21->comsseq, D.6154
	movl	-144(%rbp), %edx	# i, tmp613
	movslq	%edx, %rdx	# tmp613, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rax, %rdx	# D.6154, D.6154
	movq	-24(%rbp), %rax	# he, tmp614
	movq	(%rax), %rax	# he_363->key, D.6155
	movq	%rax, (%rdx)	# D.6155, *_368
	.loc 1 399 0 discriminator 2
	movq	-104(%rbp), %rax	# gn, tmp615
	movq	8(%rax), %rax	# gn_4->next, tmp616
	movq	%rax, -104(%rbp)	# tmp616, gn
.L82:
	.loc 1 399 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, gn
	jne	.L83	#,
	.loc 1 404 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp617
	movq	%rax, %rdi	# tmp617,
	call	glist_free	#
	.loc 1 405 0
	movq	-72(%rbp), %rax	# hp, tmp618
	movq	%rax, %rdi	# tmp618,
	call	hash_free	#
	.loc 1 408 0
	movq	-88(%rbp), %rax	# dict2pid, tmp619
	movl	48(%rax), %eax	# dict2pid_21->n_comstate, D.6137
	cltq
	movl	$408, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6138,
	call	__ckd_calloc__	#
	movq	-88(%rbp), %rdx	# dict2pid, tmp620
	movq	%rax, 40(%rdx)	# D.6139, dict2pid_21->comwt
	.loc 1 409 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L84	#
.L87:
	.loc 1 410 0
	movq	-88(%rbp), %rax	# dict2pid, tmp621
	movq	24(%rax), %rax	# dict2pid_21->comstate, D.6154
	movl	-144(%rbp), %edx	# i, tmp622
	movslq	%edx, %rdx	# tmp622, D.6138
	salq	$3, %rdx	#, D.6138
	addq	%rdx, %rax	# D.6138, D.6154
	movq	(%rax), %rax	# *_379, tmp623
	movq	%rax, -96(%rbp)	# tmp623, sen
	.loc 1 412 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L85	#
.L86:
	.loc 1 412 0 is_stmt 0 discriminator 2
	addl	$1, -140(%rbp)	#, j
.L85:
	.loc 1 412 0 discriminator 1
	movl	-140(%rbp), %eax	# j, tmp624
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6138
	movq	-96(%rbp), %rax	# sen, tmp625
	addq	%rdx, %rax	# D.6138, D.6151
	movzwl	(%rax), %eax	# *_384, D.6152
	testw	%ax, %ax	# D.6152
	jns	.L86	#,
	.loc 1 418 0 is_stmt 1
	movq	-88(%rbp), %rax	# dict2pid, tmp626
	movq	40(%rax), %rax	# dict2pid_21->comwt, D.6153
	movl	-144(%rbp), %edx	# i, tmp627
	movslq	%edx, %rdx	# tmp627, D.6138
	salq	$2, %rdx	#, D.6138
	leaq	(%rax,%rdx), %rbx	#, D.6153
	cvtsi2sd	-140(%rbp), %xmm0	# j, D.6156
	call	logs3	#
	negl	%eax	# D.6137
	movl	%eax, (%rbx)	# D.6137, *_390
	.loc 1 409 0
	addl	$1, -144(%rbp)	#, i
.L84:
	.loc 1 409 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# dict2pid, tmp628
	movl	48(%rax), %eax	# dict2pid_21->n_comstate, D.6137
	cmpl	-144(%rbp), %eax	# i, D.6137
	jg	.L87	#,
	.loc 1 422 0 is_stmt 1
	movl	$.LC4, %edx	#,
	movl	$422, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-88(%rbp), %rax	# dict2pid, tmp629
	movl	52(%rax), %edx	# dict2pid_21->n_comsseq, D.6137
	movq	-88(%rbp), %rax	# dict2pid, tmp630
	movl	48(%rax), %eax	# dict2pid_21->n_comstate, D.6137
	movl	%eax, %esi	# D.6137,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 425 0
	movq	-88(%rbp), %rax	# dict2pid, D.6157
	.loc 1 426 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dict2pid_build, .-dict2pid_build
	.globl	dict2pid_comsenscr
	.type	dict2pid_comsenscr, @function
dict2pid_comsenscr:
.LFB8:
	.loc 1 430 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# d2p, d2p
	movq	%rsi, -48(%rbp)	# senscr, senscr
	movq	%rdx, -56(%rbp)	# comsenscr, comsenscr
	.loc 1 435 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L90	#
.L95:
	.loc 1 436 0
	movq	-40(%rbp), %rax	# d2p, tmp87
	movq	24(%rax), %rax	# d2p_6(D)->comstate, D.6163
	movl	-20(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.6164
	salq	$3, %rdx	#, D.6164
	addq	%rdx, %rax	# D.6164, D.6163
	movq	(%rax), %rax	# *_11, tmp89
	movq	%rax, -8(%rbp)	# tmp89, comstate
	.loc 1 438 0
	movq	-8(%rbp), %rax	# comstate, tmp90
	movzwl	(%rax), %eax	# *comstate_12, D.6165
	movswq	%ax, %rax	# D.6165, D.6164
	leaq	0(,%rax,4), %rdx	#, D.6164
	movq	-48(%rbp), %rax	# senscr, tmp91
	addq	%rdx, %rax	# D.6164, D.6166
	movl	(%rax), %eax	# *_17, tmp92
	movl	%eax, -12(%rbp)	# tmp92, best
	.loc 1 439 0
	movl	$1, -16(%rbp)	#, j
.L94:
	.loc 1 440 0
	movl	-16(%rbp), %eax	# j, tmp93
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6164
	movq	-8(%rbp), %rax	# comstate, tmp94
	addq	%rdx, %rax	# D.6164, D.6167
	movzwl	(%rax), %eax	# *_22, tmp95
	movw	%ax, -22(%rbp)	# tmp95, k
	.loc 1 441 0
	cmpw	$0, -22(%rbp)	#, k
	jns	.L91	#,
	.loc 1 442 0
	nop
	.loc 1 447 0
	movl	-20(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6164
	movq	-56(%rbp), %rax	# comsenscr, tmp100
	addq	%rax, %rdx	# tmp100, D.6166
	movq	-40(%rbp), %rax	# d2p, tmp101
	movq	40(%rax), %rax	# d2p_6(D)->comwt, D.6166
	movl	-20(%rbp), %ecx	# i, tmp102
	movslq	%ecx, %rcx	# tmp102, D.6164
	salq	$2, %rcx	#, D.6164
	addq	%rcx, %rax	# D.6164, D.6166
	movl	(%rax), %ecx	# *_31, D.6162
	movl	-12(%rbp), %eax	# best, tmp103
	addl	%ecx, %eax	# D.6162, D.6162
	movl	%eax, (%rdx)	# D.6162, *_27
	.loc 1 435 0
	addl	$1, -20(%rbp)	#, i
	jmp	.L90	#
.L91:
	.loc 1 443 0
	movswq	-22(%rbp), %rax	# k, D.6164
	leaq	0(,%rax,4), %rdx	#, D.6164
	movq	-48(%rbp), %rax	# senscr, tmp96
	addq	%rdx, %rax	# D.6164, D.6166
	movl	(%rax), %eax	# *_37, D.6162
	cmpl	-12(%rbp), %eax	# best, D.6162
	jle	.L93	#,
	.loc 1 444 0
	movswq	-22(%rbp), %rax	# k, D.6164
	leaq	0(,%rax,4), %rdx	#, D.6164
	movq	-48(%rbp), %rax	# senscr, tmp97
	addq	%rdx, %rax	# D.6164, D.6166
	movl	(%rax), %eax	# *_41, tmp98
	movl	%eax, -12(%rbp)	# tmp98, best
.L93:
	.loc 1 439 0
	addl	$1, -16(%rbp)	#, j
	.loc 1 445 0
	jmp	.L94	#
.L90:
	.loc 1 435 0 discriminator 1
	movq	-40(%rbp), %rax	# d2p, tmp104
	movl	48(%rax), %eax	# d2p_6(D)->n_comstate, D.6162
	cmpl	-20(%rbp), %eax	# i, D.6162
	jg	.L95	#,
	.loc 1 449 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	dict2pid_comsenscr, .-dict2pid_comsenscr
	.globl	dict2pid_comsseq2sen_active
	.type	dict2pid_comsseq2sen_active, @function
dict2pid_comsseq2sen_active:
.LFB9:
	.loc 1 453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# d2p, d2p
	movq	%rsi, -48(%rbp)	# mdef, mdef
	movq	%rdx, -56(%rbp)	# comssid, comssid
	movq	%rcx, -64(%rbp)	# sen, sen
	.loc 1 457 0
	movl	$0, -32(%rbp)	#, ss
	jmp	.L97	#
.L103:
	.loc 1 458 0
	movl	-32(%rbp), %eax	# ss, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6169
	movq	-56(%rbp), %rax	# comssid, tmp89
	addq	%rdx, %rax	# D.6169, D.6170
	movl	(%rax), %eax	# *_10, D.6168
	testl	%eax, %eax	# D.6168
	je	.L98	#,
	.loc 1 459 0
	movq	-40(%rbp), %rax	# d2p, tmp90
	movq	32(%rax), %rax	# d2p_5(D)->comsseq, D.6171
	movl	-32(%rbp), %edx	# ss, tmp91
	movslq	%edx, %rdx	# tmp91, D.6169
	salq	$3, %rdx	#, D.6169
	addq	%rdx, %rax	# D.6169, D.6171
	movq	(%rax), %rax	# *_15, tmp92
	movq	%rax, -16(%rbp)	# tmp92, csp
	.loc 1 461 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L99	#
.L102:
	.loc 1 462 0
	movl	-28(%rbp), %eax	# i, tmp93
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6169
	movq	-16(%rbp), %rax	# csp, tmp94
	addq	%rdx, %rax	# D.6169, D.6172
	movzwl	(%rax), %eax	# *_22, D.6173
	cwtl
	movl	%eax, -20(%rbp)	# tmp95, cs
	.loc 1 463 0
	movq	-40(%rbp), %rax	# d2p, tmp96
	movq	24(%rax), %rax	# d2p_5(D)->comstate, D.6171
	movl	-20(%rbp), %edx	# cs, tmp97
	movslq	%edx, %rdx	# tmp97, D.6169
	salq	$3, %rdx	#, D.6169
	addq	%rdx, %rax	# D.6169, D.6171
	movq	(%rax), %rax	# *_28, tmp98
	movq	%rax, -8(%rbp)	# tmp98, sp
	.loc 1 465 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L100	#
.L101:
	.loc 1 466 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp99
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6169
	movq	-8(%rbp), %rax	# sp, tmp100
	addq	%rdx, %rax	# D.6169, D.6172
	movzwl	(%rax), %eax	# *_37, D.6173
	movswq	%ax, %rax	# D.6173, D.6169
	leaq	0(,%rax,4), %rdx	#, D.6169
	movq	-64(%rbp), %rax	# sen, tmp101
	addq	%rdx, %rax	# D.6169, D.6170
	movl	$1, (%rax)	#, *_42
	.loc 1 465 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L100:
	.loc 1 465 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp102
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6169
	movq	-8(%rbp), %rax	# sp, tmp103
	addq	%rdx, %rax	# D.6169, D.6172
	movzwl	(%rax), %eax	# *_33, D.6173
	testw	%ax, %ax	# D.6173
	jns	.L101	#,
	.loc 1 461 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L99:
	.loc 1 461 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mdef, tmp104
	movl	8(%rax), %eax	# mdef_18(D)->n_emit_state, D.6168
	cmpl	-28(%rbp), %eax	# i, D.6168
	jg	.L102	#,
.L98:
	.loc 1 457 0 is_stmt 1
	addl	$1, -32(%rbp)	#, ss
.L97:
	.loc 1 457 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# d2p, tmp105
	movl	52(%rax), %eax	# d2p_5(D)->n_comsseq, D.6168
	cmpl	-32(%rbp), %eax	# ss, D.6168
	jg	.L103	#,
	.loc 1 470 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	dict2pid_comsseq2sen_active, .-dict2pid_comsseq2sen_active
	.section	.rodata
	.align 8
.LC8:
	.string	"# INTERNAL (wd comssid ssid ssid ... ssid comssid)\n"
.LC9:
	.string	"%30s "
.LC10:
	.string	" %5d"
.LC11:
	.string	"#\n"
.LC12:
	.string	"# LDIPH_LC (b r l ssid)\n"
.LC13:
	.string	"%6s %6s %6s %5d\n"
.LC14:
	.string	"# SINGLE_LC (b l comssid)\n"
.LC15:
	.string	"%6s %6s %5d\n"
.LC16:
	.string	"# SSEQ %d (senid senid ...)\n"
.LC17:
	.string	"%5d "
	.align 8
.LC18:
	.string	"# COMSSEQ %d (comstate comstate ...)\n"
	.align 8
.LC19:
	.string	"# COMSTATE %d (senid senid ...)\n"
.LC20:
	.string	"# END\n"
	.text
	.globl	dict2pid_dump
	.type	dict2pid_dump, @function
dict2pid_dump:
.LFB10:
	.loc 1 474 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)	# fp, fp
	movq	%rsi, -80(%rbp)	# d2p, d2p
	movq	%rdx, -88(%rbp)	# mdef, mdef
	movq	%rcx, -96(%rbp)	# dict, dict
	.loc 1 478 0
	movq	-72(%rbp), %rax	# fp, tmp189
	movq	%rax, %rcx	# tmp189,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 479 0
	movl	$0, -64(%rbp)	#, w
	jmp	.L105	#
.L108:
	.loc 1 480 0
	movq	-96(%rbp), %rax	# dict, tmp190
	movq	32(%rax), %rcx	# dict_16(D)->word, D.6175
	movl	-64(%rbp), %eax	# w, tmp191
	movslq	%eax, %rdx	# tmp191, D.6176
	movq	%rdx, %rax	# D.6176, tmp192
	salq	$2, %rax	#, tmp192
	addq	%rdx, %rax	# D.6176, tmp192
	salq	$3, %rax	#, tmp193
	addq	%rcx, %rax	# D.6175, D.6175
	movq	(%rax), %rdx	# _21->word, D.6177
	movq	-72(%rbp), %rax	# fp, tmp194
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp194,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 482 0
	movq	-96(%rbp), %rax	# dict, tmp195
	movq	32(%rax), %rcx	# dict_16(D)->word, D.6175
	movl	-64(%rbp), %eax	# w, tmp196
	movslq	%eax, %rdx	# tmp196, D.6176
	movq	%rdx, %rax	# D.6176, tmp197
	salq	$2, %rax	#, tmp197
	addq	%rdx, %rax	# D.6176, tmp197
	salq	$3, %rax	#, tmp198
	addq	%rcx, %rax	# D.6175, D.6175
	movl	16(%rax), %eax	# _26->pronlen, tmp199
	movl	%eax, -36(%rbp)	# tmp199, pronlen
	.loc 1 483 0
	movl	$0, -60(%rbp)	#, p
	jmp	.L106	#
.L107:
	.loc 1 484 0 discriminator 2
	movq	-80(%rbp), %rax	# d2p, tmp200
	movq	(%rax), %rax	# d2p_29(D)->internal, D.6178
	movl	-64(%rbp), %edx	# w, tmp201
	movslq	%edx, %rdx	# tmp201, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6178
	movq	(%rax), %rax	# *_33, D.6179
	movl	-60(%rbp), %edx	# p, tmp202
	movslq	%edx, %rdx	# tmp202, D.6176
	salq	$2, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6179
	movl	(%rax), %edx	# *_37, D.6174
	movq	-72(%rbp), %rax	# fp, tmp203
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp203,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 483 0 discriminator 2
	addl	$1, -60(%rbp)	#, p
.L106:
	.loc 1 483 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# p, tmp204
	cmpl	-36(%rbp), %eax	# pronlen, tmp204
	jl	.L107	#,
	.loc 1 485 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp205
	movq	%rax, %rsi	# tmp205,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 479 0
	addl	$1, -64(%rbp)	#, w
.L105:
	.loc 1 479 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# dict, tmp206
	movl	52(%rax), %eax	# dict_16(D)->n_word, D.6174
	cmpl	-64(%rbp), %eax	# w, D.6174
	jg	.L108	#,
	.loc 1 487 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp207
	movq	%rax, %rcx	# tmp207,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 489 0
	movq	-72(%rbp), %rax	# fp, tmp208
	movq	%rax, %rcx	# tmp208,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	.loc 1 490 0
	movl	$0, -48(%rbp)	#, b
	jmp	.L109	#
.L115:
	.loc 1 491 0
	movl	$0, -40(%rbp)	#, r
	jmp	.L110	#
.L114:
	.loc 1 492 0
	movl	$0, -44(%rbp)	#, l
	jmp	.L111	#
.L113:
	.loc 1 493 0
	movq	-80(%rbp), %rax	# d2p, tmp209
	movq	8(%rax), %rax	# d2p_29(D)->ldiph_lc, D.6180
	movl	-48(%rbp), %edx	# b, tmp210
	movslq	%edx, %rdx	# tmp210, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6180
	movq	(%rax), %rax	# *_51, D.6178
	movl	-40(%rbp), %edx	# r, tmp211
	movslq	%edx, %rdx	# tmp211, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6178
	movq	(%rax), %rax	# *_55, D.6179
	movl	-44(%rbp), %edx	# l, tmp212
	movslq	%edx, %rdx	# tmp212, D.6176
	salq	$2, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6179
	movl	(%rax), %eax	# *_59, D.6174
	testl	%eax, %eax	# D.6174
	js	.L112	#,
	.loc 1 498 0
	movq	-80(%rbp), %rax	# d2p, tmp213
	movq	8(%rax), %rax	# d2p_29(D)->ldiph_lc, D.6180
	movl	-48(%rbp), %edx	# b, tmp214
	movslq	%edx, %rdx	# tmp214, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6180
	movq	(%rax), %rax	# *_64, D.6178
	movl	-40(%rbp), %edx	# r, tmp215
	movslq	%edx, %rdx	# tmp215, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6178
	movq	(%rax), %rax	# *_68, D.6179
	movl	-44(%rbp), %edx	# l, tmp216
	movslq	%edx, %rdx	# tmp216, D.6176
	salq	$2, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6179
	.loc 1 494 0
	movl	(%rax), %r13d	# *_72, D.6174
	.loc 1 497 0
	movl	-44(%rbp), %eax	# l, tmp217
	.loc 1 494 0
	movsbl	%al, %edx	# D.6181, D.6174
	movq	-88(%rbp), %rax	# mdef, tmp218
	movl	%edx, %esi	# D.6174,
	movq	%rax, %rdi	# tmp218,
	call	mdef_ciphone_str	#
	movq	%rax, %r12	#, D.6182
	.loc 1 496 0
	movl	-40(%rbp), %eax	# r, tmp219
	.loc 1 494 0
	movsbl	%al, %edx	# D.6181, D.6174
	movq	-88(%rbp), %rax	# mdef, tmp220
	movl	%edx, %esi	# D.6174,
	movq	%rax, %rdi	# tmp220,
	call	mdef_ciphone_str	#
	movq	%rax, %rbx	#, D.6182
	.loc 1 495 0
	movl	-48(%rbp), %eax	# b, tmp221
	.loc 1 494 0
	movsbl	%al, %edx	# D.6181, D.6174
	movq	-88(%rbp), %rax	# mdef, tmp222
	movl	%edx, %esi	# D.6174,
	movq	%rax, %rdi	# tmp222,
	call	mdef_ciphone_str	#
	movq	%rax, %rdx	#, D.6182
	movq	-72(%rbp), %rax	# fp, tmp223
	movl	%r13d, %r9d	# D.6174,
	movq	%r12, %r8	# D.6182,
	movq	%rbx, %rcx	# D.6182,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp223,
	movl	$0, %eax	#,
	call	fprintf	#
.L112:
	.loc 1 492 0
	addl	$1, -44(%rbp)	#, l
.L111:
	.loc 1 492 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp224
	movl	(%rax), %eax	# mdef_42(D)->n_ciphone, D.6174
	cmpl	-44(%rbp), %eax	# l, D.6174
	jg	.L113	#,
	.loc 1 491 0 is_stmt 1
	addl	$1, -40(%rbp)	#, r
.L110:
	.loc 1 491 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp225
	movl	(%rax), %eax	# mdef_42(D)->n_ciphone, D.6174
	cmpl	-40(%rbp), %eax	# r, D.6174
	jg	.L114	#,
	.loc 1 490 0 is_stmt 1
	addl	$1, -48(%rbp)	#, b
.L109:
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp226
	movl	(%rax), %eax	# mdef_42(D)->n_ciphone, D.6174
	cmpl	-48(%rbp), %eax	# b, D.6174
	jg	.L115	#,
	.loc 1 502 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp227
	movq	%rax, %rcx	# tmp227,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 504 0
	movq	-72(%rbp), %rax	# fp, tmp228
	movq	%rax, %rcx	# tmp228,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	.loc 1 505 0
	movl	$0, -48(%rbp)	#, b
	jmp	.L116	#
.L120:
	.loc 1 506 0
	movl	$0, -44(%rbp)	#, l
	jmp	.L117	#
.L119:
	.loc 1 507 0
	movq	-80(%rbp), %rax	# d2p, tmp229
	movq	16(%rax), %rax	# d2p_29(D)->single_lc, D.6178
	movl	-48(%rbp), %edx	# b, tmp230
	movslq	%edx, %rdx	# tmp230, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6178
	movq	(%rax), %rax	# *_93, D.6179
	movl	-44(%rbp), %edx	# l, tmp231
	movslq	%edx, %rdx	# tmp231, D.6176
	salq	$2, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6179
	movl	(%rax), %eax	# *_97, D.6174
	testl	%eax, %eax	# D.6174
	js	.L118	#,
	.loc 1 511 0
	movq	-80(%rbp), %rax	# d2p, tmp232
	movq	16(%rax), %rax	# d2p_29(D)->single_lc, D.6178
	movl	-48(%rbp), %edx	# b, tmp233
	movslq	%edx, %rdx	# tmp233, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6178
	movq	(%rax), %rax	# *_102, D.6179
	movl	-44(%rbp), %edx	# l, tmp234
	movslq	%edx, %rdx	# tmp234, D.6176
	salq	$2, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6179
	.loc 1 508 0
	movl	(%rax), %r12d	# *_106, D.6174
	.loc 1 510 0
	movl	-44(%rbp), %eax	# l, tmp235
	.loc 1 508 0
	movsbl	%al, %edx	# D.6181, D.6174
	movq	-88(%rbp), %rax	# mdef, tmp236
	movl	%edx, %esi	# D.6174,
	movq	%rax, %rdi	# tmp236,
	call	mdef_ciphone_str	#
	movq	%rax, %rbx	#, D.6182
	.loc 1 509 0
	movl	-48(%rbp), %eax	# b, tmp237
	.loc 1 508 0
	movsbl	%al, %edx	# D.6181, D.6174
	movq	-88(%rbp), %rax	# mdef, tmp238
	movl	%edx, %esi	# D.6174,
	movq	%rax, %rdi	# tmp238,
	call	mdef_ciphone_str	#
	movq	%rax, %rdx	#, D.6182
	movq	-72(%rbp), %rax	# fp, tmp239
	movl	%r12d, %r8d	# D.6174,
	movq	%rbx, %rcx	# D.6182,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp239,
	movl	$0, %eax	#,
	call	fprintf	#
.L118:
	.loc 1 506 0
	addl	$1, -44(%rbp)	#, l
.L117:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp240
	movl	(%rax), %eax	# mdef_42(D)->n_ciphone, D.6174
	cmpl	-44(%rbp), %eax	# l, D.6174
	jg	.L119	#,
	.loc 1 505 0 is_stmt 1
	addl	$1, -48(%rbp)	#, b
.L116:
	.loc 1 505 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp241
	movl	(%rax), %eax	# mdef_42(D)->n_ciphone, D.6174
	cmpl	-48(%rbp), %eax	# b, D.6174
	jg	.L120	#,
	.loc 1 514 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp242
	movq	%rax, %rcx	# tmp242,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 516 0
	movq	-88(%rbp), %rax	# mdef, tmp243
	movl	56(%rax), %edx	# mdef_42(D)->n_sseq, D.6174
	movq	-72(%rbp), %rax	# fp, tmp244
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp244,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 517 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L121	#
.L124:
	.loc 1 518 0
	movl	-56(%rbp), %edx	# i, tmp245
	movq	-72(%rbp), %rax	# fp, tmp246
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp246,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 519 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L122	#
.L123:
	.loc 1 520 0 discriminator 2
	movq	-88(%rbp), %rax	# mdef, tmp247
	movq	48(%rax), %rax	# mdef_42(D)->sseq, D.6183
	movl	-56(%rbp), %edx	# i, tmp248
	movslq	%edx, %rdx	# tmp248, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6183
	movq	(%rax), %rax	# *_124, D.6184
	movl	-52(%rbp), %edx	# j, tmp249
	movslq	%edx, %rdx	# tmp249, D.6176
	addq	%rdx, %rdx	# D.6176
	addq	%rdx, %rax	# D.6176, D.6184
	movzwl	(%rax), %eax	# *_128, D.6185
	movswl	%ax, %edx	# D.6185, D.6174
	movq	-72(%rbp), %rax	# fp, tmp250
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp250,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 519 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L122:
	.loc 1 519 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp251
	movl	8(%rax), %eax	# mdef_42(D)->n_emit_state, D.6174
	cmpl	-52(%rbp), %eax	# j, D.6174
	jg	.L123	#,
	.loc 1 521 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp252
	movq	%rax, %rsi	# tmp252,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 517 0
	addl	$1, -56(%rbp)	#, i
.L121:
	.loc 1 517 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp253
	movl	56(%rax), %eax	# mdef_42(D)->n_sseq, D.6174
	cmpl	-56(%rbp), %eax	# i, D.6174
	jg	.L124	#,
	.loc 1 523 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp254
	movq	%rax, %rcx	# tmp254,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 525 0
	movq	-80(%rbp), %rax	# d2p, tmp255
	movl	52(%rax), %edx	# d2p_29(D)->n_comsseq, D.6174
	movq	-72(%rbp), %rax	# fp, tmp256
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp256,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 526 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L125	#
.L128:
	.loc 1 527 0
	movl	-56(%rbp), %edx	# i, tmp257
	movq	-72(%rbp), %rax	# fp, tmp258
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp258,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 528 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L126	#
.L127:
	.loc 1 529 0 discriminator 2
	movq	-80(%rbp), %rax	# d2p, tmp259
	movq	32(%rax), %rax	# d2p_29(D)->comsseq, D.6183
	movl	-56(%rbp), %edx	# i, tmp260
	movslq	%edx, %rdx	# tmp260, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6183
	movq	(%rax), %rax	# *_141, D.6184
	movl	-52(%rbp), %edx	# j, tmp261
	movslq	%edx, %rdx	# tmp261, D.6176
	addq	%rdx, %rdx	# D.6176
	addq	%rdx, %rax	# D.6176, D.6184
	movzwl	(%rax), %eax	# *_145, D.6185
	movswl	%ax, %edx	# D.6185, D.6174
	movq	-72(%rbp), %rax	# fp, tmp262
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp262,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 528 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L126:
	.loc 1 528 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# mdef, tmp263
	movl	8(%rax), %eax	# mdef_42(D)->n_emit_state, D.6174
	cmpl	-52(%rbp), %eax	# j, D.6174
	jg	.L127	#,
	.loc 1 530 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp264
	movq	%rax, %rsi	# tmp264,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 526 0
	addl	$1, -56(%rbp)	#, i
.L125:
	.loc 1 526 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# d2p, tmp265
	movl	52(%rax), %eax	# d2p_29(D)->n_comsseq, D.6174
	cmpl	-56(%rbp), %eax	# i, D.6174
	jg	.L128	#,
	.loc 1 532 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp266
	movq	%rax, %rcx	# tmp266,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 534 0
	movq	-80(%rbp), %rax	# d2p, tmp267
	movl	48(%rax), %edx	# d2p_29(D)->n_comstate, D.6174
	movq	-72(%rbp), %rax	# fp, tmp268
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp268,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 535 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L129	#
.L132:
	.loc 1 536 0
	movl	-56(%rbp), %edx	# i, tmp269
	movq	-72(%rbp), %rax	# fp, tmp270
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp270,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 537 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L130	#
.L131:
	.loc 1 538 0 discriminator 2
	movq	-80(%rbp), %rax	# d2p, tmp271
	movq	24(%rax), %rax	# d2p_29(D)->comstate, D.6183
	movl	-56(%rbp), %edx	# i, tmp272
	movslq	%edx, %rdx	# tmp272, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6183
	movq	(%rax), %rax	# *_166, D.6184
	movl	-52(%rbp), %edx	# j, tmp273
	movslq	%edx, %rdx	# tmp273, D.6176
	addq	%rdx, %rdx	# D.6176
	addq	%rdx, %rax	# D.6176, D.6184
	movzwl	(%rax), %eax	# *_170, D.6185
	movswl	%ax, %edx	# D.6185, D.6174
	movq	-72(%rbp), %rax	# fp, tmp274
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp274,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 537 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L130:
	.loc 1 537 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# d2p, tmp275
	movq	24(%rax), %rax	# d2p_29(D)->comstate, D.6183
	movl	-56(%rbp), %edx	# i, tmp276
	movslq	%edx, %rdx	# tmp276, D.6176
	salq	$3, %rdx	#, D.6176
	addq	%rdx, %rax	# D.6176, D.6183
	movq	(%rax), %rax	# *_157, D.6184
	movl	-52(%rbp), %edx	# j, tmp277
	movslq	%edx, %rdx	# tmp277, D.6176
	addq	%rdx, %rdx	# D.6176
	addq	%rdx, %rax	# D.6176, D.6184
	movzwl	(%rax), %eax	# *_161, D.6185
	testw	%ax, %ax	# D.6185
	jns	.L131	#,
	.loc 1 539 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp278
	movq	%rax, %rsi	# tmp278,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 535 0
	addl	$1, -56(%rbp)	#, i
.L129:
	.loc 1 535 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# d2p, tmp279
	movl	48(%rax), %eax	# d2p_29(D)->n_comstate, D.6174
	cmpl	-56(%rbp), %eax	# i, D.6174
	jg	.L132	#,
	.loc 1 541 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp280
	movq	%rax, %rcx	# tmp280,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 542 0
	movq	-72(%rbp), %rax	# fp, tmp281
	movq	%rax, %rcx	# tmp281,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
	.loc 1 544 0
	movq	-72(%rbp), %rax	# fp, tmp282
	movq	%rax, %rdi	# tmp282,
	call	fflush	#
	.loc 1 545 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	dict2pid_dump, .-dict2pid_dump
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "s3types.h"
	.file 10 "mdef.h"
	.file 11 "dict.h"
	.file 12 "dict2pid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xeb3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF155
	.byte	0x1
	.long	.LASF156
	.long	.LASF157
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
	.long	.LASF158
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
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
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
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0xe
	.long	.LASF159
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x34a
	.uleb128 0xf
	.string	"ptr"
	.byte	0x6
	.byte	0x49
	.long	0x8d
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x4b
	.long	0x2da
	.uleb128 0x10
	.long	.LASF56
	.byte	0x6
	.byte	0x4c
	.long	0x2f0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x4d
	.long	0x2fb
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x4e
	.long	0x306
	.uleb128 0x7
	.long	.LASF59
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.long	0x37a
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x4d
	.long	0x34a
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x4e
	.long	0x37a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x355
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x4f
	.long	0x355
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x50
	.long	0x396
	.uleb128 0x6
	.byte	0x8
	.long	0x380
	.uleb128 0x7
	.long	.LASF64
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3d9
	.uleb128 0x11
	.string	"key"
	.byte	0x8
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x8
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"val"
	.byte	0x8
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x5f
	.long	0x3d9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39c
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x60
	.long	0x39c
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x417
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x63
	.long	0x417
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x67
	.long	0x2e5
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3df
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x68
	.long	0x3ea
	.uleb128 0x2
	.long	.LASF70
	.byte	0x9
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF71
	.byte	0x9
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF72
	.byte	0x9
	.byte	0x57
	.long	0x433
	.uleb128 0x2
	.long	.LASF73
	.byte	0x9
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF74
	.byte	0x9
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF75
	.byte	0x9
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.byte	0x48
	.long	0x491
	.uleb128 0x14
	.long	.LASF76
	.sleb128 0
	.uleb128 0x14
	.long	.LASF77
	.sleb128 1
	.uleb128 0x14
	.long	.LASF78
	.sleb128 2
	.uleb128 0x14
	.long	.LASF79
	.sleb128 3
	.uleb128 0x14
	.long	.LASF80
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0xa
	.byte	0x4e
	.long	0x46a
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x54
	.long	0x4bd
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF84
	.byte	0xa
	.byte	0x58
	.long	0x49c
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x5e
	.long	0x516
	.uleb128 0x8
	.long	.LASF85
	.byte	0xa
	.byte	0x5f
	.long	0x43e
	.byte	0
	.uleb128 0x8
	.long	.LASF86
	.byte	0xa
	.byte	0x62
	.long	0x449
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xa
	.byte	0x63
	.long	0x428
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xa
	.byte	0x63
	.long	0x428
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xa
	.byte	0x63
	.long	0x428
	.byte	0xa
	.uleb128 0x8
	.long	.LASF87
	.byte	0xa
	.byte	0x64
	.long	0x491
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF88
	.byte	0xa
	.byte	0x65
	.long	0x4c8
	.uleb128 0x7
	.long	.LASF89
	.byte	0x10
	.byte	0xa
	.byte	0x6c
	.long	0x551
	.uleb128 0x11
	.string	"rc"
	.byte	0xa
	.byte	0x6d
	.long	0x428
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xa
	.byte	0x6e
	.long	0x433
	.byte	0x4
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x6f
	.long	0x551
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x521
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.byte	0x70
	.long	0x521
	.uleb128 0x7
	.long	.LASF91
	.byte	0x18
	.byte	0xa
	.byte	0x72
	.long	0x592
	.uleb128 0x11
	.string	"lc"
	.byte	0xa
	.byte	0x73
	.long	0x428
	.byte	0
	.uleb128 0x8
	.long	.LASF92
	.byte	0xa
	.byte	0x74
	.long	0x592
	.byte	0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x75
	.long	0x598
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x557
	.uleb128 0x6
	.byte	0x8
	.long	0x562
	.uleb128 0x2
	.long	.LASF93
	.byte	0xa
	.byte	0x76
	.long	0x562
	.uleb128 0x12
	.byte	0x68
	.byte	0xa
	.byte	0x7a
	.long	0x672
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0xa
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF96
	.byte	0xa
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0xa
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF98
	.byte	0xa
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF99
	.byte	0xa
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0x82
	.long	0x672
	.byte	0x18
	.uleb128 0x8
	.long	.LASF101
	.byte	0xa
	.byte	0x83
	.long	0x678
	.byte	0x20
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x84
	.long	0x67e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x85
	.long	0x684
	.byte	0x30
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x89
	.long	0x68a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x8c
	.long	0x690
	.byte	0x48
	.uleb128 0x8
	.long	.LASF107
	.byte	0xa
	.byte	0x8d
	.long	0x696
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xa
	.byte	0x8f
	.long	0x428
	.byte	0x58
	.uleb128 0x8
	.long	.LASF108
	.byte	0xa
	.byte	0x91
	.long	0x69c
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41d
	.uleb128 0x6
	.byte	0x8
	.long	0x4bd
	.uleb128 0x6
	.byte	0x8
	.long	0x516
	.uleb128 0x6
	.byte	0x8
	.long	0x68a
	.uleb128 0x6
	.byte	0x8
	.long	0x45f
	.uleb128 0x6
	.byte	0x8
	.long	0x428
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x6a2
	.uleb128 0x6
	.byte	0x8
	.long	0x6a8
	.uleb128 0x6
	.byte	0x8
	.long	0x59e
	.uleb128 0x2
	.long	.LASF109
	.byte	0xa
	.byte	0x96
	.long	0x5a9
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0x47
	.long	0x716
	.uleb128 0x8
	.long	.LASF110
	.byte	0xb
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xb
	.byte	0x49
	.long	0x690
	.byte	0x8
	.uleb128 0x8
	.long	.LASF111
	.byte	0xb
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xb
	.byte	0x4b
	.long	0x454
	.byte	0x14
	.uleb128 0x8
	.long	.LASF112
	.byte	0xb
	.byte	0x4c
	.long	0x454
	.byte	0x18
	.uleb128 0x8
	.long	.LASF113
	.byte	0xb
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF114
	.byte	0xb
	.byte	0x51
	.long	0x716
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x454
	.uleb128 0x2
	.long	.LASF115
	.byte	0xb
	.byte	0x52
	.long	0x6b9
	.uleb128 0x12
	.byte	0x58
	.byte	0xb
	.byte	0x54
	.long	0x7d7
	.uleb128 0x8
	.long	.LASF116
	.byte	0xb
	.byte	0x55
	.long	0x7d7
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xb
	.byte	0x56
	.long	0x672
	.byte	0x8
	.uleb128 0x8
	.long	.LASF117
	.byte	0xb
	.byte	0x57
	.long	0x7dd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF94
	.byte	0xb
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF110
	.byte	0xb
	.byte	0x59
	.long	0x7e3
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xb
	.byte	0x5a
	.long	0x672
	.byte	0x28
	.uleb128 0x8
	.long	.LASF118
	.byte	0xb
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF119
	.byte	0xb
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF120
	.byte	0xb
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF121
	.byte	0xb
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF122
	.byte	0xb
	.byte	0x5f
	.long	0x716
	.byte	0x40
	.uleb128 0x8
	.long	.LASF123
	.byte	0xb
	.byte	0x62
	.long	0x454
	.byte	0x48
	.uleb128 0x8
	.long	.LASF124
	.byte	0xb
	.byte	0x63
	.long	0x454
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF125
	.byte	0xb
	.byte	0x64
	.long	0x454
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6ae
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x71c
	.uleb128 0x2
	.long	.LASF126
	.byte	0xb
	.byte	0x65
	.long	0x727
	.uleb128 0x12
	.byte	0x38
	.byte	0xc
	.byte	0x63
	.long	0x85d
	.uleb128 0x8
	.long	.LASF127
	.byte	0xc
	.byte	0x64
	.long	0x85d
	.byte	0
	.uleb128 0x8
	.long	.LASF128
	.byte	0xc
	.byte	0x67
	.long	0x869
	.byte	0x8
	.uleb128 0x8
	.long	.LASF129
	.byte	0xc
	.byte	0x69
	.long	0x85d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF130
	.byte	0xc
	.byte	0x6c
	.long	0x684
	.byte	0x18
	.uleb128 0x8
	.long	.LASF131
	.byte	0xc
	.byte	0x6e
	.long	0x684
	.byte	0x20
	.uleb128 0x8
	.long	.LASF132
	.byte	0xc
	.byte	0x70
	.long	0x696
	.byte	0x28
	.uleb128 0x8
	.long	.LASF133
	.byte	0xc
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF134
	.byte	0xc
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x863
	.uleb128 0x6
	.byte	0x8
	.long	0x43e
	.uleb128 0x6
	.byte	0x8
	.long	0x85d
	.uleb128 0x2
	.long	.LASF135
	.byte	0xc
	.byte	0x74
	.long	0x7f4
	.uleb128 0x15
	.long	.LASF136
	.byte	0x1
	.byte	0x41
	.long	0x38b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f4
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0x41
	.long	0x7d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x41
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0x43
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x43
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x43
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.byte	0x44
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF137
	.byte	0x1
	.byte	0x5c
	.long	0x38b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x96e
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0x5c
	.long	0x7d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0x5c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.byte	0x5c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x5e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x5e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x5e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.byte	0x5f
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF138
	.byte	0x1
	.byte	0x77
	.long	0x38b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e8
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0x77
	.long	0x7d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0x77
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0x79
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x79
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x79
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x79
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.byte	0x7a
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF139
	.byte	0x1
	.byte	0x94
	.long	0x38b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xa62
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0x94
	.long	0x7d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0x94
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.byte	0x94
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x96
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x96
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x96
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.byte	0x97
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF140
	.byte	0x1
	.byte	0xad
	.long	0x43e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xb35
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.byte	0xad
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0xad
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.long	.LASF141
	.byte	0x1
	.byte	0xad
	.long	0xb35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"hs"
	.byte	0x1
	.byte	0xae
	.long	0x672
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"hp"
	.byte	0x1
	.byte	0xaf
	.long	0x672
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xb1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xb1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0xb1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xb1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0xb1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"sen"
	.byte	0x1
	.byte	0xb2
	.long	0x684
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF142
	.byte	0x1
	.byte	0xb3
	.long	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"gn"
	.byte	0x1
	.byte	0xb4
	.long	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x86f
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.byte	0xf1
	.long	0xb35
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9c
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0xf1
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x16
	.long	.LASF143
	.byte	0x1
	.byte	0xf1
	.long	0xc9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x19
	.long	.LASF141
	.byte	0x1
	.byte	0xf3
	.long	0xb35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0xf4
	.long	0x863
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x19
	.long	.LASF144
	.byte	0x1
	.byte	0xf4
	.long	0x85d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF145
	.byte	0x1
	.byte	0xf4
	.long	0x85d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF146
	.byte	0x1
	.byte	0xf4
	.long	0x863
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.byte	0xf5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x18
	.string	"hs"
	.byte	0x1
	.byte	0xf6
	.long	0x672
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"hp"
	.byte	0x1
	.byte	0xf6
	.long	0x672
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"g"
	.byte	0x1
	.byte	0xf7
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"gn"
	.byte	0x1
	.byte	0xf8
	.long	0x396
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"sen"
	.byte	0x1
	.byte	0xf9
	.long	0x68a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.string	"he"
	.byte	0x1
	.byte	0xfa
	.long	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF147
	.byte	0x1
	.byte	0xfb
	.long	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0xfc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7e9
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x1
	.value	0x1ad
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xd34
	.uleb128 0x1c
	.string	"d2p"
	.byte	0x1
	.value	0x1ad
	.long	0xb35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x1
	.value	0x1ad
	.long	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF149
	.byte	0x1
	.value	0x1ad
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1af
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.value	0x1af
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x1
	.value	0x1b0
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x1
	.value	0x1b1
	.long	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.value	0x1b1
	.long	0x45f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x1
	.value	0x1c4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xde4
	.uleb128 0x1c
	.string	"d2p"
	.byte	0x1
	.value	0x1c4
	.long	0xb35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.value	0x1c4
	.long	0x7d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF153
	.byte	0x1
	.value	0x1c4
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"sen"
	.byte	0x1
	.value	0x1c4
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"ss"
	.byte	0x1
	.value	0x1c6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"cs"
	.byte	0x1
	.value	0x1c6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.value	0x1c6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"csp"
	.byte	0x1
	.value	0x1c7
	.long	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"sp"
	.byte	0x1
	.value	0x1c7
	.long	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF154
	.byte	0x1
	.value	0x1d9
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb0
	.uleb128 0x1c
	.string	"fp"
	.byte	0x1
	.value	0x1d9
	.long	0xeb0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"d2p"
	.byte	0x1
	.value	0x1d9
	.long	0xb35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.value	0x1d9
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x1d9
	.long	0xc9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.string	"w"
	.byte	0x1
	.value	0x1db
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x1db
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.long	.LASF111
	.byte	0x1
	.value	0x1db
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1dc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.value	0x1dc
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.string	"b"
	.byte	0x1
	.value	0x1dc
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.value	0x1dc
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.value	0x1dc
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
.LASF99:
	.string	"n_tmat"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF32:
	.string	"_shortbuf"
.LASF7:
	.string	"size_t"
.LASF105:
	.string	"cd2cisen"
.LASF152:
	.string	"dict2pid_comsseq2sen_active"
.LASF66:
	.string	"table"
.LASF74:
	.string	"s3wid_t"
.LASF114:
	.string	"comp"
.LASF73:
	.string	"s3tmatid_t"
.LASF20:
	.string	"_IO_buf_base"
.LASF113:
	.string	"n_comp"
.LASF48:
	.string	"long long unsigned int"
.LASF60:
	.string	"data"
.LASF61:
	.string	"next"
.LASF97:
	.string	"n_ci_sen"
.LASF124:
	.string	"finishwid"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF67:
	.string	"size"
.LASF78:
	.string	"WORD_POSN_SINGLE"
.LASF27:
	.string	"_fileno"
.LASF150:
	.string	"best"
.LASF63:
	.string	"glist_t"
.LASF115:
	.string	"dictword_t"
.LASF129:
	.string	"single_lc"
.LASF77:
	.string	"WORD_POSN_END"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"gnode_s"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF89:
	.string	"ph_rc_s"
.LASF90:
	.string	"ph_rc_t"
.LASF50:
	.string	"double"
.LASF51:
	.string	"int32"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF159:
	.string	"anytype_s"
.LASF58:
	.string	"anytype_t"
.LASF54:
	.string	"uint32"
.LASF131:
	.string	"comsseq"
.LASF144:
	.string	"ldiph"
.LASF149:
	.string	"comsenscr"
.LASF37:
	.string	"__pad3"
.LASF86:
	.string	"tmat"
.LASF140:
	.string	"ssidlist2comsseq"
.LASF83:
	.string	"filler"
.LASF133:
	.string	"n_comstate"
.LASF94:
	.string	"n_ciphone"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF157:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF118:
	.string	"max_words"
.LASF85:
	.string	"ssid"
.LASF0:
	.string	"long unsigned int"
.LASF145:
	.string	"rdiph"
.LASF88:
	.string	"phone_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF84:
	.string	"ciphone_t"
.LASF82:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF55:
	.string	"uint8"
.LASF100:
	.string	"ciphone_ht"
.LASF121:
	.string	"filler_end"
.LASF2:
	.string	"short unsigned int"
.LASF53:
	.string	"int8"
.LASF22:
	.string	"_IO_save_base"
.LASF122:
	.string	"comp_head"
.LASF120:
	.string	"filler_start"
.LASF76:
	.string	"WORD_POSN_BEGIN"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF136:
	.string	"ldiph_comsseq"
.LASF87:
	.string	"wpos"
.LASF79:
	.string	"WORD_POSN_INTERNAL"
.LASF15:
	.string	"_IO_read_end"
.LASF56:
	.string	"float32"
.LASF10:
	.string	"sizetype"
.LASF126:
	.string	"dict_t"
.LASF119:
	.string	"n_word"
.LASF117:
	.string	"ciphone_str"
.LASF151:
	.string	"dict2pid_comsenscr"
.LASF142:
	.string	"comsenid"
.LASF104:
	.string	"n_sseq"
.LASF158:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF139:
	.string	"single_lc_comsseq"
.LASF128:
	.string	"ldiph_lc"
.LASF160:
	.string	"dict2pid_build"
.LASF8:
	.string	"__off_t"
.LASF156:
	.string	"dict2pid.c"
.LASF92:
	.string	"rclist"
.LASF49:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF125:
	.string	"silwid"
.LASF25:
	.string	"_markers"
.LASF123:
	.string	"startwid"
.LASF132:
	.string	"comwt"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"hash_entry_s"
.LASF65:
	.string	"hash_entry_t"
.LASF134:
	.string	"n_comsseq"
.LASF71:
	.string	"s3pid_t"
.LASF5:
	.string	"short int"
.LASF80:
	.string	"WORD_POSN_UNDEFINED"
.LASF137:
	.string	"rdiph_comsseq"
.LASF109:
	.string	"mdef_t"
.LASF31:
	.string	"_vtable_offset"
.LASF146:
	.string	"single"
.LASF12:
	.string	"FILE"
.LASF127:
	.string	"internal"
.LASF154:
	.string	"dict2pid_dump"
.LASF143:
	.string	"dict"
.LASF38:
	.string	"__pad4"
.LASF135:
	.string	"dict2pid_t"
.LASF68:
	.string	"nocase"
.LASF106:
	.string	"sen2cimap"
.LASF95:
	.string	"n_phone"
.LASF11:
	.string	"char"
.LASF153:
	.string	"comssid"
.LASF81:
	.string	"word_posn_t"
.LASF70:
	.string	"s3cipid_t"
.LASF44:
	.string	"_next"
.LASF110:
	.string	"word"
.LASF9:
	.string	"__off64_t"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF148:
	.string	"senscr"
.LASF96:
	.string	"n_emit_state"
.LASF103:
	.string	"sseq"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF98:
	.string	"n_sen"
.LASF69:
	.string	"hash_table_t"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF107:
	.string	"ciphone2n_cd_sen"
.LASF91:
	.string	"ph_lc_s"
.LASF93:
	.string	"ph_lc_t"
.LASF116:
	.string	"mdef"
.LASF57:
	.string	"float64"
.LASF155:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF141:
	.string	"dict2pid"
.LASF101:
	.string	"ciphone"
.LASF52:
	.string	"int16"
.LASF138:
	.string	"single_comsseq"
.LASF112:
	.string	"basewid"
.LASF108:
	.string	"wpos_ci_lclist"
.LASF72:
	.string	"s3ssid_t"
.LASF102:
	.string	"phone"
.LASF130:
	.string	"comstate"
.LASF17:
	.string	"_IO_write_base"
.LASF75:
	.string	"s3senid_t"
.LASF62:
	.string	"gnode_t"
.LASF147:
	.string	"cslen"
.LASF111:
	.string	"pronlen"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
