	.file	"dict.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# dict.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
.LC0:
	.string	"FATAL_ERROR"
.LC1:
	.string	"dict.c"
	.align 8
.LC2:
	.string	"Too many CIphones in dictionary; increase MAX_S3CIPID\n"
	.align 8
.LC3:
	.string	"hash_enter(local-phonetable, %s) failed\n"
	.text
	.type	dict_ciphone_id, @function
dict_ciphone_id:
.LFB2:
	.file 1 "dict.c"
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# d, d
	movq	%rsi, -48(%rbp)	# str, str
	.loc 1 74 0
	movq	-40(%rbp), %rax	# d, tmp86
	movq	(%rax), %rax	# d_2(D)->mdef, D.5677
	testq	%rax, %rax	# D.5677
	je	.L2	#,
	.loc 1 75 0
	movq	-40(%rbp), %rax	# d, tmp87
	movq	(%rax), %rax	# d_2(D)->mdef, D.5677
	movq	-48(%rbp), %rdx	# str, tmp88
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# D.5677,
	call	mdef_ciphone_id	#
	jmp	.L6	#
.L2:
	.loc 1 77 0
	movq	-40(%rbp), %rax	# d, tmp89
	movq	8(%rax), %rax	# d_2(D)->pht, D.5678
	leaq	-20(%rbp), %rdx	#, tmp90
	movq	-48(%rbp), %rcx	# str, tmp91
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.5678,
	call	hash_lookup	#
	testl	%eax, %eax	# D.5679
	jns	.L4	#,
	.loc 1 78 0
	movq	-40(%rbp), %rax	# d, tmp92
	movl	24(%rax), %eax	# d_2(D)->n_ciphone, D.5679
	leal	1(%rax), %ecx	#, D.5679
	movq	-40(%rbp), %rdx	# d, tmp93
	movl	%ecx, 24(%rdx)	# D.5679, d_2(D)->n_ciphone
	movl	%eax, -20(%rbp)	# id.0, id
	.loc 1 80 0
	movl	-20(%rbp), %eax	# id, id.1
	cmpl	$126, %eax	#, id.1
	jle	.L5	#,
	.loc 1 81 0
	movl	$.LC0, %edx	#,
	movl	$81, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L5:
	.loc 1 82 0
	movq	-40(%rbp), %rax	# d, tmp94
	movq	16(%rax), %rax	# d_2(D)->ciphone_str, D.5680
	movl	-20(%rbp), %edx	# id, id.2
	movslq	%edx, %rdx	# id.2, D.5681
	salq	$3, %rdx	#, D.5681
	leaq	(%rax,%rdx), %rbx	#, D.5680
	movq	-48(%rbp), %rax	# str, tmp95
	movl	$82, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	__ckd_salloc__	#
	movq	%rax, (%rbx)	# D.5682, *_17
	.loc 1 84 0
	movl	-20(%rbp), %edx	# id, id.3
	movq	-40(%rbp), %rax	# d, tmp96
	movq	16(%rax), %rax	# d_2(D)->ciphone_str, D.5680
	movl	-20(%rbp), %ecx	# id, id.4
	movslq	%ecx, %rcx	# id.4, D.5681
	salq	$3, %rcx	#, D.5681
	addq	%rcx, %rax	# D.5681, D.5680
	movq	(%rax), %rcx	# *_24, D.5682
	movq	-40(%rbp), %rax	# d, tmp97
	movq	8(%rax), %rax	# d_2(D)->pht, D.5678
	movq	%rcx, %rsi	# D.5682,
	movq	%rax, %rdi	# D.5678,
	call	hash_enter	#
	movl	-20(%rbp), %edx	# id, id.5
	cmpl	%edx, %eax	# id.5, D.5679
	je	.L4	#,
	.loc 1 85 0
	movl	$.LC0, %edx	#,
	movl	$85, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# str, tmp98
	movq	%rax, %rsi	# tmp98,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L4:
	.loc 1 87 0
	movl	-20(%rbp), %eax	# id, id.6
.L6:
	.loc 1 89 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	dict_ciphone_id, .-dict_ciphone_id
	.globl	dict_ciphone_str
	.type	dict_ciphone_str, @function
dict_ciphone_str:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movl	%esi, -12(%rbp)	# wid, wid
	movl	%edx, -16(%rbp)	# pos, pos
	.loc 1 98 0
	movq	-8(%rbp), %rax	# d, tmp84
	movq	(%rax), %rax	# d_2(D)->mdef, D.5688
	testq	%rax, %rax	# D.5688
	je	.L8	#,
	.loc 1 99 0
	movq	-8(%rbp), %rax	# d, tmp85
	movq	32(%rax), %rcx	# d_2(D)->word, D.5689
	movl	-12(%rbp), %eax	# wid, tmp86
	movslq	%eax, %rdx	# tmp86, D.5690
	movq	%rdx, %rax	# D.5690, tmp87
	salq	$2, %rax	#, tmp87
	addq	%rdx, %rax	# D.5690, tmp87
	salq	$3, %rax	#, tmp88
	addq	%rcx, %rax	# D.5689, D.5689
	movq	8(%rax), %rdx	# _8->ciphone, D.5691
	movl	-16(%rbp), %eax	# pos, tmp89
	cltq
	addq	%rdx, %rax	# D.5691, D.5691
	movzbl	(%rax), %eax	# *_12, D.5693
	movsbl	%al, %edx	# D.5693, D.5694
	movq	-8(%rbp), %rax	# d, tmp90
	movq	(%rax), %rax	# d_2(D)->mdef, D.5688
	movl	%edx, %esi	# D.5694,
	movq	%rax, %rdi	# D.5688,
	call	mdef_ciphone_str	#
	jmp	.L9	#
.L8:
	.loc 1 101 0
	movq	-8(%rbp), %rax	# d, tmp91
	movq	16(%rax), %rcx	# d_2(D)->ciphone_str, D.5695
	movq	-8(%rbp), %rax	# d, tmp92
	movq	32(%rax), %rsi	# d_2(D)->word, D.5689
	movl	-12(%rbp), %eax	# wid, tmp93
	movslq	%eax, %rdx	# tmp93, D.5690
	movq	%rdx, %rax	# D.5690, tmp94
	salq	$2, %rax	#, tmp94
	addq	%rdx, %rax	# D.5690, tmp94
	salq	$3, %rax	#, tmp95
	addq	%rsi, %rax	# D.5689, D.5689
	movq	8(%rax), %rdx	# _21->ciphone, D.5691
	movl	-16(%rbp), %eax	# pos, tmp96
	cltq
	addq	%rdx, %rax	# D.5691, D.5691
	movzbl	(%rax), %eax	# *_24, D.5693
	movsbq	%al, %rax	# D.5693, D.5690
	salq	$3, %rax	#, D.5690
	addq	%rcx, %rax	# D.5695, D.5695
	movq	(%rax), %rax	# *_28, D.5687
.L9:
	.loc 1 102 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dict_ciphone_str, .-dict_ciphone_str
	.section	.rodata
.LC4:
	.string	"ERROR"
	.align 8
.LC5:
	.string	"Dictionary full; add(%s) failed\n"
.LC6:
	.string	"Missing base word for: %s\n"
	.text
	.globl	dict_add_word
	.type	dict_add_word, @function
dict_add_word:
.LFB4:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# d, d
	movq	%rsi, -48(%rbp)	# word, word
	movq	%rdx, -56(%rbp)	# p, p
	movl	%ecx, -60(%rbp)	# np, np
	.loc 1 111 0
	movq	-40(%rbp), %rax	# d, tmp101
	movl	52(%rax), %edx	# d_2(D)->n_word, D.5697
	movq	-40(%rbp), %rax	# d, tmp102
	movl	48(%rax), %eax	# d_2(D)->max_words, D.5697
	cmpl	%eax, %edx	# D.5697, D.5697
	jl	.L11	#,
	.loc 1 112 0
	movl	$.LC4, %edx	#,
	movl	$112, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# word, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 113 0
	movl	$-1, %eax	#, D.5696
	jmp	.L19	#
.L11:
	.loc 1 116 0
	movq	-40(%rbp), %rax	# d, tmp104
	movq	32(%rax), %rcx	# d_2(D)->word, D.5698
	movq	-40(%rbp), %rax	# d, tmp105
	movl	52(%rax), %eax	# d_2(D)->n_word, D.5697
	movslq	%eax, %rdx	# D.5697, D.5699
	movq	%rdx, %rax	# D.5699, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# D.5699, tmp106
	salq	$3, %rax	#, tmp107
	addq	%rcx, %rax	# D.5698, tmp108
	movq	%rax, -8(%rbp)	# tmp108, wordp
	.loc 1 117 0
	movq	-48(%rbp), %rax	# word, tmp109
	movl	$117, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	__ckd_salloc__	#
	movq	-8(%rbp), %rdx	# wordp, tmp110
	movq	%rax, (%rdx)	# D.5700, wordp_11->word
	.loc 1 120 0
	movq	-40(%rbp), %rax	# d, tmp111
	movl	52(%rax), %edx	# d_2(D)->n_word, D.5697
	movq	-8(%rbp), %rax	# wordp, tmp112
	movq	(%rax), %rcx	# wordp_11->word, D.5700
	movq	-40(%rbp), %rax	# d, tmp113
	movq	40(%rax), %rax	# d_2(D)->ht, D.5701
	movq	%rcx, %rsi	# D.5700,
	movq	%rax, %rdi	# D.5701,
	call	hash_enter	#
	movq	-40(%rbp), %rdx	# d, tmp114
	movl	52(%rdx), %edx	# d_2(D)->n_word, D.5697
	cmpl	%edx, %eax	# D.5697, D.5697
	je	.L13	#,
	.loc 1 121 0
	movq	-8(%rbp), %rax	# wordp, tmp115
	movq	(%rax), %rax	# wordp_11->word, D.5700
	movq	%rax, %rdi	# D.5700,
	call	ckd_free	#
	.loc 1 122 0
	movl	$-1, %eax	#, D.5696
	jmp	.L19	#
.L13:
	.loc 1 126 0
	cmpq	$0, -56(%rbp)	#, p
	je	.L14	#,
	.loc 1 126 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, np
	jle	.L14	#,
	.loc 1 127 0 is_stmt 1
	movl	-60(%rbp), %eax	# np, tmp116
	cltq
	movl	$127, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.5699,
	call	__ckd_malloc__	#
	movq	-8(%rbp), %rdx	# wordp, tmp117
	movq	%rax, 8(%rdx)	# D.5702, wordp_11->ciphone
	.loc 1 128 0
	movl	-60(%rbp), %eax	# np, tmp118
	movslq	%eax, %rdx	# tmp118, D.5699
	movq	-8(%rbp), %rax	# wordp, tmp119
	movq	8(%rax), %rax	# wordp_11->ciphone, D.5703
	movq	-56(%rbp), %rcx	# p, tmp120
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# D.5703,
	call	memcpy	#
	.loc 1 129 0
	movq	-8(%rbp), %rax	# wordp, tmp121
	movl	-60(%rbp), %edx	# np, tmp122
	movl	%edx, 16(%rax)	# tmp122, wordp_11->pronlen
	jmp	.L15	#
.L14:
	.loc 1 131 0
	movq	-8(%rbp), %rax	# wordp, tmp123
	movq	$0, 8(%rax)	#, wordp_11->ciphone
	.loc 1 132 0
	movq	-8(%rbp), %rax	# wordp, tmp124
	movl	$0, 16(%rax)	#, wordp_11->pronlen
.L15:
	.loc 1 134 0
	movq	-8(%rbp), %rax	# wordp, tmp125
	movl	$-1, 20(%rax)	#, wordp_11->alt
	.loc 1 135 0
	movq	-40(%rbp), %rax	# d, tmp126
	movl	52(%rax), %edx	# d_2(D)->n_word, D.5697
	movq	-8(%rbp), %rax	# wordp, tmp127
	movl	%edx, 24(%rax)	# D.5697, wordp_11->basewid
	.loc 1 136 0
	movq	-8(%rbp), %rax	# wordp, tmp128
	movl	$0, 28(%rax)	#, wordp_11->n_comp
	.loc 1 137 0
	movq	-8(%rbp), %rax	# wordp, tmp129
	movq	$0, 32(%rax)	#, wordp_11->comp
	.loc 1 140 0
	movq	-48(%rbp), %rax	# word, tmp130
	movq	%rax, %rdi	# tmp130,
	call	dict_word2basestr	#
	movl	%eax, -16(%rbp)	# tmp131, len
	cmpl	$0, -16(%rbp)	#, len
	jle	.L16	#,
	.loc 1 142 0
	movq	-40(%rbp), %rax	# d, tmp132
	movq	40(%rax), %rax	# d_2(D)->ht, D.5701
	leaq	-20(%rbp), %rdx	#, tmp133
	movq	-48(%rbp), %rcx	# word, tmp134
	movq	%rcx, %rsi	# tmp134,
	movq	%rax, %rdi	# D.5701,
	call	hash_lookup	#
	testl	%eax, %eax	# D.5697
	jns	.L17	#,
	.loc 1 143 0
	movl	-16(%rbp), %eax	# len, tmp135
	movslq	%eax, %rdx	# tmp135, D.5704
	movq	-48(%rbp), %rax	# word, tmp136
	addq	%rdx, %rax	# D.5704, D.5700
	movb	$40, (%rax)	#, *_31
	.loc 1 144 0
	movl	$.LC0, %edx	#,
	movl	$144, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# word, tmp137
	movq	%rax, %rsi	# tmp137,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L18	#
.L17:
	.loc 1 146 0
	movl	-16(%rbp), %eax	# len, tmp138
	movslq	%eax, %rdx	# tmp138, D.5704
	movq	-48(%rbp), %rax	# word, tmp139
	addq	%rdx, %rax	# D.5704, D.5700
	movb	$40, (%rax)	#, *_33
.L18:
	.loc 1 149 0
	movl	-20(%rbp), %edx	# w, w.7
	movq	-8(%rbp), %rax	# wordp, tmp140
	movl	%edx, 24(%rax)	# w.7, wordp_11->basewid
	.loc 1 150 0
	movq	-40(%rbp), %rax	# d, tmp141
	movq	32(%rax), %rcx	# d_2(D)->word, D.5698
	movl	-20(%rbp), %eax	# w, w.8
	movslq	%eax, %rdx	# w.8, D.5699
	movq	%rdx, %rax	# D.5699, tmp142
	salq	$2, %rax	#, tmp142
	addq	%rdx, %rax	# D.5699, tmp142
	salq	$3, %rax	#, tmp143
	addq	%rcx, %rax	# D.5698, D.5698
	movl	20(%rax), %edx	# _39->alt, D.5697
	movq	-8(%rbp), %rax	# wordp, tmp144
	movl	%edx, 20(%rax)	# D.5697, wordp_11->alt
	.loc 1 151 0
	movq	-40(%rbp), %rax	# d, tmp145
	movq	32(%rax), %rcx	# d_2(D)->word, D.5698
	movl	-20(%rbp), %eax	# w, w.9
	movslq	%eax, %rdx	# w.9, D.5699
	movq	%rdx, %rax	# D.5699, tmp146
	salq	$2, %rax	#, tmp146
	addq	%rdx, %rax	# D.5699, tmp146
	salq	$3, %rax	#, tmp147
	leaq	(%rcx,%rax), %rdx	#, D.5698
	movq	-40(%rbp), %rax	# d, tmp148
	movl	52(%rax), %eax	# d_2(D)->n_word, D.5697
	movl	%eax, 20(%rdx)	# D.5697, _45->alt
.L16:
	.loc 1 154 0
	movq	-40(%rbp), %rax	# d, tmp149
	movl	52(%rax), %eax	# d_2(D)->n_word, D.5697
	leal	1(%rax), %ecx	#, D.5697
	movq	-40(%rbp), %rdx	# d, tmp150
	movl	%ecx, 52(%rdx)	# D.5697, d_2(D)->n_word
	movl	%eax, -12(%rbp)	# newwid.10, newwid
	.loc 1 156 0
	movl	-12(%rbp), %eax	# newwid, D.5696
.L19:
	.loc 1 157 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	dict_add_word, .-dict_add_word
	.section	.rodata
	.align 8
.LC7:
	.string	"str2words(%s) failed; Increase maxwd from %d\n"
	.align 8
.LC8:
	.string	"Line %d: No pronunciation for word %s; ignored\n"
	.align 8
.LC9:
	.string	"Line %d: Bad ciphone: %s; word %s ignored\n"
	.align 8
.LC10:
	.string	"Line %d: dict_add_word (%s) failed (duplicate?); ignored\n"
	.text
	.type	dict_read, @function
dict_read:
.LFB5:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$20552, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -20552(%rbp)	# fp, fp
	movq	%rsi, -20560(%rbp)	# d, d
	.loc 1 161 0
	movq	%fs:40, %rax	#, tmp115
	movq	%rax, -24(%rbp)	# tmp115, D.5714
	xorl	%eax, %eax	# tmp115
	.loc 1 168 0
	movl	$4092, -20532(%rbp)	#, maxwd
	.loc 1 169 0
	movl	-20532(%rbp), %eax	# maxwd, tmp81
	cltq
	movl	$169, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5708,
	call	__ckd_calloc__	#
	movq	%rax, -20520(%rbp)	# tmp82, wptr
	.loc 1 171 0
	movl	$0, -20540(%rbp)	#, lineno
	.loc 1 172 0
	jmp	.L21	#
.L30:
	.loc 1 173 0
	addl	$1, -20540(%rbp)	#, lineno
	.loc 1 174 0
	movzbl	-16416(%rbp), %eax	# line, D.5710
	cmpb	$35, %al	#, D.5710
	jne	.L22	#,
	.loc 1 175 0
	jmp	.L21	#
.L22:
	.loc 1 177 0
	movl	-20532(%rbp), %edx	# maxwd, tmp83
	movq	-20520(%rbp), %rcx	# wptr, tmp84
	leaq	-16416(%rbp), %rax	#, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	str2words	#
	movl	%eax, -20528(%rbp)	# tmp86, nwd
	cmpl	$0, -20528(%rbp)	#, nwd
	jns	.L23	#,
	.loc 1 178 0
	movl	$.LC0, %edx	#,
	movl	$178, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-20532(%rbp), %edx	# maxwd, tmp87
	leaq	-16416(%rbp), %rax	#, tmp88
	movq	%rax, %rsi	# tmp88,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L23:
	.loc 1 180 0
	cmpl	$0, -20528(%rbp)	#, nwd
	jne	.L24	#,
	.loc 1 181 0
	jmp	.L21	#
.L24:
	.loc 1 183 0
	cmpl	$1, -20528(%rbp)	#, nwd
	jne	.L25	#,
	.loc 1 184 0
	movl	$.LC4, %edx	#,
	movl	$184, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-20520(%rbp), %rax	# wptr, tmp89
	movq	(%rax), %rdx	# *wptr_5, D.5709
	movl	-20540(%rbp), %eax	# lineno, tmp90
	movl	%eax, %esi	# tmp90,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 185 0
	jmp	.L21	#
.L25:
	.loc 1 189 0
	movl	$1, -20536(%rbp)	#, i
	jmp	.L26	#
.L29:
	.loc 1 190 0
	movl	-20536(%rbp), %eax	# i, tmp91
	leal	-1(%rax), %ebx	#, D.5711
	movl	-20536(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5708
	movq	-20520(%rbp), %rax	# wptr, tmp93
	addq	%rdx, %rax	# D.5708, D.5712
	movq	(%rax), %rdx	# *_17, D.5709
	movq	-20560(%rbp), %rax	# d, tmp94
	movq	%rdx, %rsi	# D.5709,
	movq	%rax, %rdi	# tmp94,
	call	dict_ciphone_id	#
	movslq	%ebx, %rdx	# D.5711, tmp95
	movb	%al, -20512(%rbp,%rdx)	# D.5710, p
	.loc 1 191 0
	movl	-20536(%rbp), %eax	# i, tmp96
	subl	$1, %eax	#, D.5711
	cltq
	movzbl	-20512(%rbp,%rax), %eax	# p, D.5710
	testb	%al, %al	# D.5710
	jns	.L27	#,
	.loc 1 192 0
	movl	$.LC4, %edx	#,
	movl	$192, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-20520(%rbp), %rax	# wptr, tmp98
	movq	(%rax), %rcx	# *wptr_5, D.5709
	.loc 1 193 0
	movl	-20536(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5708
	movq	-20520(%rbp), %rax	# wptr, tmp100
	addq	%rdx, %rax	# D.5708, D.5712
	.loc 1 192 0
	movq	(%rax), %rdx	# *_26, D.5709
	movl	-20540(%rbp), %eax	# lineno, tmp101
	movl	%eax, %esi	# tmp101,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 194 0
	jmp	.L28	#
.L27:
	.loc 1 189 0
	addl	$1, -20536(%rbp)	#, i
.L26:
	.loc 1 189 0 is_stmt 0 discriminator 1
	movl	-20536(%rbp), %eax	# i, tmp102
	cmpl	-20528(%rbp), %eax	# nwd, tmp102
	jl	.L29	#,
.L28:
	.loc 1 198 0 is_stmt 1
	movl	-20536(%rbp), %eax	# i, tmp103
	cmpl	-20528(%rbp), %eax	# nwd, tmp103
	jne	.L21	#,
	.loc 1 199 0
	movl	-20528(%rbp), %eax	# nwd, tmp104
	leal	-1(%rax), %ecx	#, D.5711
	movq	-20520(%rbp), %rax	# wptr, tmp105
	movq	(%rax), %rsi	# *wptr_5, D.5709
	leaq	-20512(%rbp), %rdx	#, tmp106
	movq	-20560(%rbp), %rax	# d, tmp107
	movq	%rax, %rdi	# tmp107,
	call	dict_add_word	#
	movl	%eax, -20524(%rbp)	# tmp108, w
	.loc 1 200 0
	cmpl	$0, -20524(%rbp)	#, w
	jns	.L21	#,
	.loc 1 201 0
	movl	$.LC4, %edx	#,
	movl	$201, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-20520(%rbp), %rax	# wptr, tmp109
	movq	(%rax), %rdx	# *wptr_5, D.5709
	movl	-20540(%rbp), %eax	# lineno, tmp110
	movl	%eax, %esi	# tmp110,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L21:
	.loc 1 172 0 discriminator 1
	movq	-20552(%rbp), %rdx	# fp, tmp111
	leaq	-16416(%rbp), %rax	#, tmp112
	movl	$16384, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	fgets	#
	testq	%rax, %rax	# D.5709
	jne	.L30	#,
	.loc 1 206 0
	movq	-20520(%rbp), %rax	# wptr, tmp113
	movq	%rax, %rdi	# tmp113,
	call	ckd_free	#
	.loc 1 208 0
	movl	$0, %eax	#, D.5713
	.loc 1 209 0
	movq	-24(%rbp), %rbx	# D.5714, tmp116
	xorq	%fs:40, %rbx	#, tmp116
	je	.L32	#,
	call	__stack_chk_fail	#
.L32:
	addq	$20552, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	dict_read, .-dict_read
	.type	dict_comp_head, @function
dict_comp_head:
.LFB6:
	.loc 1 213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# d, d
	.loc 1 217 0
	movq	-24(%rbp), %rax	# d, tmp95
	movl	52(%rax), %eax	# d_3(D)->n_word, D.5721
	cltq
	movl	$217, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5722,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp96, comp_head
	.loc 1 219 0
	movl	$0, -12(%rbp)	#, w
	jmp	.L34	#
.L35:
	.loc 1 220 0 discriminator 2
	movl	-12(%rbp), %eax	# w, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5722
	movq	-8(%rbp), %rax	# comp_head, tmp98
	addq	%rdx, %rax	# D.5722, D.5723
	movl	$-1, (%rax)	#, *_11
	.loc 1 219 0 discriminator 2
	addl	$1, -12(%rbp)	#, w
.L34:
	.loc 1 219 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp99
	movl	52(%rax), %eax	# d_3(D)->n_word, D.5721
	cmpl	-12(%rbp), %eax	# w, D.5721
	jg	.L35	#,
	.loc 1 221 0 is_stmt 1
	movl	$0, -12(%rbp)	#, w
	jmp	.L36	#
.L38:
	.loc 1 222 0
	movq	-24(%rbp), %rax	# d, tmp100
	movq	32(%rax), %rcx	# d_3(D)->word, D.5724
	movl	-12(%rbp), %eax	# w, tmp101
	movslq	%eax, %rdx	# tmp101, D.5722
	movq	%rdx, %rax	# D.5722, tmp102
	salq	$2, %rax	#, tmp102
	addq	%rdx, %rax	# D.5722, tmp102
	salq	$3, %rax	#, tmp103
	addq	%rcx, %rax	# D.5724, D.5724
	movl	28(%rax), %eax	# _18->n_comp, D.5721
	testl	%eax, %eax	# D.5721
	jle	.L37	#,
	.loc 1 223 0
	movl	-12(%rbp), %eax	# w, tmp104
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5722
	movq	-8(%rbp), %rax	# comp_head, tmp105
	leaq	(%rdx,%rax), %rcx	#, D.5723
	movq	-24(%rbp), %rax	# d, tmp106
	movq	32(%rax), %rsi	# d_3(D)->word, D.5724
	movl	-12(%rbp), %eax	# w, tmp107
	movslq	%eax, %rdx	# tmp107, D.5722
	movq	%rdx, %rax	# D.5722, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# D.5722, tmp108
	salq	$3, %rax	#, tmp109
	addq	%rsi, %rax	# D.5724, D.5724
	movq	32(%rax), %rax	# _26->comp, D.5723
	movl	(%rax), %eax	# *_27, D.5721
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5722
	movq	-8(%rbp), %rax	# comp_head, tmp110
	addq	%rdx, %rax	# D.5722, D.5723
	movl	(%rax), %eax	# *_31, D.5721
	movl	%eax, (%rcx)	# D.5721, *_22
	.loc 1 224 0
	movq	-24(%rbp), %rax	# d, tmp111
	movq	32(%rax), %rcx	# d_3(D)->word, D.5724
	movl	-12(%rbp), %eax	# w, tmp112
	movslq	%eax, %rdx	# tmp112, D.5722
	movq	%rdx, %rax	# D.5722, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# D.5722, tmp113
	salq	$3, %rax	#, tmp114
	addq	%rcx, %rax	# D.5724, D.5724
	movq	32(%rax), %rax	# _36->comp, D.5723
	movl	(%rax), %eax	# *_37, D.5721
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5722
	movq	-8(%rbp), %rax	# comp_head, tmp115
	addq	%rax, %rdx	# tmp115, D.5723
	movl	-12(%rbp), %eax	# w, tmp116
	movl	%eax, (%rdx)	# tmp116, *_41
.L37:
	.loc 1 221 0
	addl	$1, -12(%rbp)	#, w
.L36:
	.loc 1 221 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp117
	movl	52(%rax), %eax	# d_3(D)->n_word, D.5721
	cmpl	-12(%rbp), %eax	# w, D.5721
	jg	.L38	#,
	.loc 1 228 0 is_stmt 1
	movq	-8(%rbp), %rax	# comp_head, D.5723
	.loc 1 229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	dict_comp_head, .-dict_comp_head
	.section	.rodata
	.align 8
.LC11:
	.string	"Bad compound word %s: leading or trailing separator\n"
	.align 8
.LC12:
	.string	"Compound special/filler word (%s) not allowed\n"
	.align 8
.LC13:
	.string	"Bad compound word %s: successive separators\n"
	.align 8
.LC14:
	.string	"Component word %s of %s not in dictionary\n"
	.text
	.type	dict_build_comp, @function
dict_build_comp:
.LFB7:
	.loc 1 240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$4184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -4184(%rbp)	# d, d
	movl	%esi, %eax	# sep, tmp96
	movb	%al, -4188(%rbp)	# tmp96, sep
	.loc 1 240 0
	movq	%fs:40, %rax	#, tmp146
	movq	%rax, -24(%rbp)	# tmp146, D.5734
	xorl	%eax, %eax	# tmp146
	.loc 1 247 0
	movl	$0, -4160(%rbp)	#, nc
	.loc 1 248 0
	movl	$0, -4164(%rbp)	#, w
	jmp	.L41	#
.L58:
	.loc 1 249 0
	movq	-4184(%rbp), %rax	# d, tmp97
	movq	32(%rax), %rcx	# d_12(D)->word, D.5726
	movq	-4184(%rbp), %rax	# d, tmp98
	movq	32(%rax), %rsi	# d_12(D)->word, D.5726
	movl	-4164(%rbp), %eax	# w, tmp99
	movslq	%eax, %rdx	# tmp99, D.5727
	movq	%rdx, %rax	# D.5727, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# D.5727, tmp100
	salq	$3, %rax	#, tmp101
	addq	%rsi, %rax	# D.5726, D.5726
	movl	24(%rax), %eax	# _18->basewid, D.5725
	movslq	%eax, %rdx	# D.5725, D.5727
	movq	%rdx, %rax	# D.5727, tmp102
	salq	$2, %rax	#, tmp102
	addq	%rdx, %rax	# D.5727, tmp102
	salq	$3, %rax	#, tmp103
	addq	%rcx, %rax	# D.5726, tmp104
	movq	%rax, -4136(%rbp)	# tmp104, wordp
	.loc 1 250 0
	movq	-4136(%rbp), %rax	# wordp, tmp105
	movq	(%rax), %rdx	# wordp_22->word, D.5728
	leaq	-4128(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# D.5728,
	movq	%rax, %rdi	# tmp106,
	call	strcpy	#
	.loc 1 251 0
	leaq	-4128(%rbp), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	strlen	#
	movl	%eax, -4148(%rbp)	# D.5727, l
	.loc 1 252 0
	movzbl	-4128(%rbp), %eax	# wd, D.5729
	cmpb	-4188(%rbp), %al	# sep, D.5729
	je	.L42	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	-4148(%rbp), %eax	# l, tmp108
	subl	$1, %eax	#, D.5725
	cltq
	movzbl	-4128(%rbp,%rax), %eax	# wd, D.5729
	cmpb	-4188(%rbp), %al	# sep, D.5729
	jne	.L43	#,
.L42:
	.loc 1 253 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$253, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-4136(%rbp), %rax	# wordp, tmp110
	movq	(%rax), %rax	# wordp_22->word, D.5728
	movq	%rax, %rsi	# D.5728,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L43:
	.loc 1 256 0
	movl	$1, -4152(%rbp)	#, n
	.loc 1 257 0
	movl	$1, -4156(%rbp)	#, i
	jmp	.L44	#
.L46:
	.loc 1 258 0
	movl	-4156(%rbp), %eax	# i, tmp112
	cltq
	movzbl	-4128(%rbp,%rax), %eax	# wd, D.5729
	cmpb	-4188(%rbp), %al	# sep, D.5729
	jne	.L45	#,
	.loc 1 259 0
	addl	$1, -4152(%rbp)	#, n
.L45:
	.loc 1 257 0
	addl	$1, -4156(%rbp)	#, i
.L44:
	.loc 1 257 0 is_stmt 0 discriminator 1
	movl	-4148(%rbp), %eax	# l, tmp113
	subl	$1, %eax	#, D.5725
	cmpl	-4156(%rbp), %eax	# i, D.5725
	jg	.L46	#,
	.loc 1 260 0 is_stmt 1
	cmpl	$1, -4152(%rbp)	#, n
	jne	.L47	#,
	.loc 1 261 0
	jmp	.L48	#
.L47:
	.loc 1 262 0
	addl	$1, -4160(%rbp)	#, nc
	.loc 1 264 0
	movq	-4184(%rbp), %rax	# d, tmp114
	movl	72(%rax), %eax	# d_12(D)->startwid, D.5725
	cmpl	-4164(%rbp), %eax	# w, D.5725
	je	.L49	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movq	-4184(%rbp), %rax	# d, tmp115
	movl	76(%rax), %eax	# d_12(D)->finishwid, D.5725
	cmpl	-4164(%rbp), %eax	# w, D.5725
	je	.L49	#,
	movl	-4164(%rbp), %edx	# w, tmp116
	movq	-4184(%rbp), %rax	# d, tmp117
	movl	%edx, %esi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.5725
	je	.L50	#,
.L49:
	.loc 1 265 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$265, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-4136(%rbp), %rax	# wordp, tmp118
	movq	(%rax), %rax	# wordp_22->word, D.5728
	movq	%rax, %rsi	# D.5728,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L50:
	.loc 1 268 0
	movq	-4136(%rbp), %rax	# wordp, tmp119
	movl	-4152(%rbp), %edx	# n, tmp120
	movl	%edx, 28(%rax)	# tmp120, wordp_22->n_comp
	.loc 1 269 0
	movl	-4152(%rbp), %eax	# n, tmp121
	cltq
	movl	$269, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5727,
	call	__ckd_calloc__	#
	movq	-4136(%rbp), %rdx	# wordp, tmp122
	movq	%rax, 32(%rdx)	# D.5730, wordp_22->comp
	.loc 1 272 0
	movl	$0, -4152(%rbp)	#, n
	.loc 1 273 0
	movl	$0, -4156(%rbp)	#, i
	jmp	.L51	#
.L57:
	.loc 1 274 0
	movl	-4156(%rbp), %eax	# i, tmp123
	movl	%eax, -4144(%rbp)	# tmp123, j
	jmp	.L52	#
.L54:
	.loc 1 274 0 is_stmt 0 discriminator 1
	addl	$1, -4156(%rbp)	#, i
.L52:
	movl	-4156(%rbp), %eax	# i, tmp124
	cmpl	-4148(%rbp), %eax	# l, tmp124
	jge	.L53	#,
	.loc 1 274 0 discriminator 2
	movl	-4156(%rbp), %eax	# i, tmp126
	cltq
	movzbl	-4128(%rbp,%rax), %eax	# wd, D.5729
	cmpb	-4188(%rbp), %al	# sep, D.5729
	jne	.L54	#,
.L53:
	.loc 1 275 0 is_stmt 1
	movl	-4144(%rbp), %eax	# j, tmp127
	cmpl	-4156(%rbp), %eax	# i, tmp127
	jne	.L55	#,
	.loc 1 276 0
	movl	$.LC0, %edx	#,
	movl	$276, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-4136(%rbp), %rax	# wordp, tmp128
	movq	(%rax), %rax	# wordp_22->word, D.5728
	movq	%rax, %rsi	# D.5728,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L55:
	.loc 1 278 0
	movl	-4156(%rbp), %eax	# i, tmp130
	cltq
	movb	$0, -4128(%rbp,%rax)	#, wd
	.loc 1 279 0
	movl	-4144(%rbp), %eax	# j, tmp131
	cltq
	leaq	-4128(%rbp), %rdx	#, tmp132
	addq	%rax, %rdx	# D.5731, D.5728
	movq	-4184(%rbp), %rax	# d, tmp133
	movq	%rdx, %rsi	# D.5728,
	movq	%rax, %rdi	# tmp133,
	call	dict_wordid	#
	movl	%eax, -4140(%rbp)	# tmp134, cwid
	.loc 1 280 0
	cmpl	$0, -4140(%rbp)	#, cwid
	jns	.L56	#,
	.loc 1 281 0
	movl	$.LC0, %edx	#,
	movl	$281, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-4136(%rbp), %rax	# wordp, tmp135
	movq	(%rax), %rax	# wordp_22->word, D.5728
	movl	-4144(%rbp), %edx	# j, tmp136
	movslq	%edx, %rdx	# tmp136, D.5731
	leaq	-4128(%rbp), %rcx	#, tmp137
	addq	%rdx, %rcx	# D.5731, D.5728
	movq	%rax, %rdx	# D.5728,
	movq	%rcx, %rsi	# D.5728,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L56:
	.loc 1 282 0
	movq	-4136(%rbp), %rax	# wordp, tmp138
	movq	32(%rax), %rax	# wordp_22->comp, D.5732
	movl	-4152(%rbp), %edx	# n, tmp139
	movslq	%edx, %rdx	# tmp139, D.5727
	salq	$2, %rdx	#, D.5727
	addq	%rax, %rdx	# D.5732, D.5732
	movl	-4140(%rbp), %eax	# cwid, tmp140
	movl	%eax, (%rdx)	# tmp140, *_59
	.loc 1 283 0
	addl	$1, -4152(%rbp)	#, n
	.loc 1 273 0
	addl	$1, -4156(%rbp)	#, i
.L51:
	.loc 1 273 0 is_stmt 0 discriminator 1
	movl	-4156(%rbp), %eax	# i, tmp141
	cmpl	-4148(%rbp), %eax	# l, tmp141
	jl	.L57	#,
.L48:
	.loc 1 248 0 is_stmt 1
	addl	$1, -4164(%rbp)	#, w
.L41:
	.loc 1 248 0 is_stmt 0 discriminator 1
	movq	-4184(%rbp), %rax	# d, tmp142
	movl	52(%rax), %eax	# d_12(D)->n_word, D.5725
	cmpl	-4164(%rbp), %eax	# w, D.5725
	jg	.L58	#,
	.loc 1 287 0 is_stmt 1
	cmpl	$0, -4160(%rbp)	#, nc
	jle	.L59	#,
	.loc 1 288 0
	movq	-4184(%rbp), %rax	# d, tmp143
	movq	%rax, %rdi	# tmp143,
	call	dict_comp_head	#
	movq	-4184(%rbp), %rdx	# d, tmp144
	movq	%rax, 64(%rdx)	# D.5732, d_12(D)->comp_head
.L59:
	.loc 1 290 0
	movl	-4160(%rbp), %eax	# nc, D.5733
	.loc 1 291 0
	movq	-24(%rbp), %rbx	# D.5734, tmp147
	xorq	%fs:40, %rbx	#, tmp147
	je	.L61	#,
	call	__stack_chk_fail	#
.L61:
	addq	$4184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dict_build_comp, .-dict_build_comp
	.section	.rodata
.LC15:
	.string	"No dictionary file\n"
.LC16:
	.string	"r"
.LC17:
	.string	"SYSTEM_ERROR"
.LC18:
	.string	"fopen(%s,r) failed\n"
	.align 8
.LC19:
	.string	"#Words in dictionaries (%d) exceeds limit (%d)\n"
.LC20:
	.string	"INFO"
.LC21:
	.string	"Reading main dictionary: %s\n"
.LC22:
	.string	"%d words read\n"
	.align 8
.LC23:
	.string	"Reading filler dictionary: %s\n"
.LC24:
	.string	"<s>"
.LC25:
	.string	"</s>"
.LC26:
	.string	"<sil>"
	.align 8
.LC27:
	.string	"Building compound words (separator = '%c')\n"
.LC28:
	.string	"%d compound words\n"
	.text
	.globl	dict_init
	.type	dict_init, @function
dict_init:
.LFB8:
	.loc 1 295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1112, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -1096(%rbp)	# mdef, mdef
	movq	%rsi, -1104(%rbp)	# dictfile, dictfile
	movq	%rdx, -1112(%rbp)	# fillerfile, fillerfile
	movl	%ecx, %eax	# comp_sep, tmp86
	movb	%al, -1116(%rbp)	# tmp86, comp_sep
	.loc 1 295 0
	movq	%fs:40, %rax	#, tmp142
	movq	%rax, -24(%rbp)	# tmp142, D.5746
	xorl	%eax, %eax	# tmp142
	.loc 1 301 0
	cmpq	$0, -1104(%rbp)	#, dictfile
	jne	.L63	#,
	.loc 1 302 0
	movl	$.LC0, %edx	#,
	movl	$302, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L63:
	.loc 1 309 0
	movq	-1104(%rbp), %rax	# dictfile, tmp87
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	fopen	#
	movq	%rax, -1072(%rbp)	# tmp88, fp
	cmpq	$0, -1072(%rbp)	#, fp
	jne	.L64	#,
	.loc 1 310 0
	movl	$.LC17, %edx	#,
	movl	$310, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-1104(%rbp), %rax	# dictfile, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
.L64:
	.loc 1 311 0
	movl	$0, -1084(%rbp)	#, n
	.loc 1 312 0
	jmp	.L65	#
.L66:
	.loc 1 313 0
	movzbl	-1056(%rbp), %eax	# line, D.5740
	cmpb	$35, %al	#, D.5740
	je	.L65	#,
	.loc 1 314 0
	addl	$1, -1084(%rbp)	#, n
.L65:
	.loc 1 312 0 discriminator 1
	movq	-1072(%rbp), %rdx	# fp, tmp90
	leaq	-1056(%rbp), %rax	#, tmp91
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	fgets	#
	testq	%rax, %rax	# D.5739
	jne	.L66	#,
	.loc 1 316 0
	movq	-1072(%rbp), %rax	# fp, tmp92
	movq	%rax, %rdi	# tmp92,
	call	rewind	#
	.loc 1 318 0
	movq	$0, -1080(%rbp)	#, fp2
	.loc 1 319 0
	cmpq	$0, -1112(%rbp)	#, fillerfile
	je	.L67	#,
	.loc 1 320 0
	movq	-1112(%rbp), %rax	# fillerfile, tmp93
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	fopen	#
	movq	%rax, -1080(%rbp)	# tmp94, fp2
	cmpq	$0, -1080(%rbp)	#, fp2
	jne	.L68	#,
	.loc 1 321 0
	movl	$.LC17, %edx	#,
	movl	$321, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-1112(%rbp), %rax	# fillerfile, tmp95
	movq	%rax, %rsi	# tmp95,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
	.loc 1 323 0
	jmp	.L69	#
.L68:
	jmp	.L69	#
.L70:
	.loc 1 324 0
	movzbl	-1056(%rbp), %eax	# line, D.5740
	cmpb	$35, %al	#, D.5740
	je	.L69	#,
	.loc 1 325 0
	addl	$1, -1084(%rbp)	#, n
.L69:
	.loc 1 323 0 discriminator 1
	movq	-1080(%rbp), %rdx	# fp2, tmp96
	leaq	-1056(%rbp), %rax	#, tmp97
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	fgets	#
	testq	%rax, %rax	# D.5739
	jne	.L70	#,
	.loc 1 327 0
	movq	-1080(%rbp), %rax	# fp2, tmp98
	movq	%rax, %rdi	# tmp98,
	call	rewind	#
.L67:
	.loc 1 334 0
	movl	$334, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$88, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -1064(%rbp)	# tmp99, d
	.loc 1 335 0
	movl	-1084(%rbp), %eax	# n, tmp100
	addl	$1024, %eax	#, D.5741
	movl	$2147483646, %edx	#, tmp101
	cmpl	$2147483646, %eax	#, D.5741
	cmovle	%eax, %edx	# D.5741,, D.5741
	movq	-1064(%rbp), %rax	# d, tmp102
	movl	%edx, 48(%rax)	# D.5741, d_17->max_words
	.loc 1 336 0
	cmpl	$2147483645, -1084(%rbp)	#, n
	jle	.L71	#,
	.loc 1 337 0
	movl	$.LC0, %edx	#,
	movl	$337, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-1084(%rbp), %eax	# n, tmp103
	movl	$2147483646, %edx	#,
	movl	%eax, %esi	# tmp103,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L71:
	.loc 1 339 0
	movq	-1064(%rbp), %rax	# d, tmp104
	movl	48(%rax), %eax	# d_17->max_words, D.5741
	cltq
	movl	$339, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$40, %esi	#,
	movq	%rax, %rdi	# D.5742,
	call	__ckd_calloc__	#
	movq	-1064(%rbp), %rdx	# d, tmp105
	movq	%rax, 32(%rdx)	# D.5743, d_17->word
	.loc 1 340 0
	movq	-1064(%rbp), %rax	# d, tmp106
	movl	$0, 52(%rax)	#, d_17->n_word
	.loc 1 341 0
	movq	-1064(%rbp), %rax	# d, tmp107
	movq	-1096(%rbp), %rdx	# mdef, tmp108
	movq	%rdx, (%rax)	# tmp108, d_17->mdef
	.loc 1 342 0
	cmpq	$0, -1096(%rbp)	#, mdef
	je	.L72	#,
	.loc 1 343 0
	movq	-1064(%rbp), %rax	# d, tmp109
	movq	$0, 8(%rax)	#, d_17->pht
	.loc 1 344 0
	movq	-1064(%rbp), %rax	# d, tmp110
	movq	$0, 16(%rax)	#, d_17->ciphone_str
	jmp	.L73	#
.L72:
	.loc 1 346 0
	movl	$1, %esi	#,
	movl	$128, %edi	#,
	call	hash_new	#
	movq	-1064(%rbp), %rdx	# d, tmp111
	movq	%rax, 8(%rdx)	# D.5744, d_17->pht
	.loc 1 347 0
	movl	$347, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movl	$128, %edi	#,
	call	__ckd_calloc__	#
	movq	-1064(%rbp), %rdx	# d, tmp112
	movq	%rax, 16(%rdx)	# D.5743, d_17->ciphone_str
.L73:
	.loc 1 349 0
	movq	-1064(%rbp), %rax	# d, tmp113
	movl	$0, 24(%rax)	#, d_17->n_ciphone
	.loc 1 352 0
	movq	-1064(%rbp), %rax	# d, tmp114
	movl	48(%rax), %eax	# d_17->max_words, D.5741
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.5741,
	call	hash_new	#
	movq	-1064(%rbp), %rdx	# d, tmp115
	movq	%rax, 40(%rdx)	# D.5744, d_17->ht
	.loc 1 355 0
	movq	-1064(%rbp), %rax	# d, tmp116
	movq	$0, 64(%rax)	#, d_17->comp_head
	.loc 1 358 0
	movl	$.LC20, %edx	#,
	movl	$358, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-1104(%rbp), %rax	# dictfile, tmp117
	movq	%rax, %rsi	# tmp117,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 359 0
	movq	-1064(%rbp), %rdx	# d, tmp118
	movq	-1072(%rbp), %rax	# fp, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	dict_read	#
	.loc 1 360 0
	movq	-1072(%rbp), %rax	# fp, tmp120
	movq	%rax, %rdi	# tmp120,
	call	fclose	#
	.loc 1 361 0
	movl	$.LC20, %edx	#,
	movl	$361, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-1064(%rbp), %rax	# d, tmp121
	movl	52(%rax), %eax	# d_17->n_word, D.5741
	movl	%eax, %esi	# D.5741,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 364 0
	movq	-1064(%rbp), %rax	# d, tmp122
	movl	52(%rax), %edx	# d_17->n_word, D.5741
	movq	-1064(%rbp), %rax	# d, tmp123
	movl	%edx, 56(%rax)	# D.5741, d_17->filler_start
	.loc 1 365 0
	cmpq	$0, -1112(%rbp)	#, fillerfile
	je	.L74	#,
	.loc 1 366 0
	movl	$.LC20, %edx	#,
	movl	$366, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-1112(%rbp), %rax	# fillerfile, tmp124
	movq	%rax, %rsi	# tmp124,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 367 0
	movq	-1064(%rbp), %rdx	# d, tmp125
	movq	-1080(%rbp), %rax	# fp2, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	dict_read	#
	.loc 1 368 0
	movq	-1080(%rbp), %rax	# fp2, tmp127
	movq	%rax, %rdi	# tmp127,
	call	fclose	#
	.loc 1 369 0
	movl	$.LC20, %edx	#,
	movl	$369, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-1064(%rbp), %rax	# d, tmp128
	movl	52(%rax), %edx	# d_17->n_word, D.5741
	movq	-1064(%rbp), %rax	# d, tmp129
	movl	56(%rax), %eax	# d_17->filler_start, D.5741
	subl	%eax, %edx	# D.5741, D.5741
	movl	%edx, %eax	# D.5741, D.5741
	movl	%eax, %esi	# D.5741,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L74:
	.loc 1 371 0
	movq	-1064(%rbp), %rax	# d, tmp130
	movl	52(%rax), %eax	# d_17->n_word, D.5741
	leal	-1(%rax), %edx	#, D.5741
	movq	-1064(%rbp), %rax	# d, tmp131
	movl	%edx, 60(%rax)	# D.5741, d_17->filler_end
	.loc 1 374 0
	movq	-1064(%rbp), %rax	# d, tmp132
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	dict_wordid	#
	movq	-1064(%rbp), %rdx	# d, tmp133
	movl	%eax, 72(%rdx)	# D.5741, d_17->startwid
	.loc 1 375 0
	movq	-1064(%rbp), %rax	# d, tmp134
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	dict_wordid	#
	movq	-1064(%rbp), %rdx	# d, tmp135
	movl	%eax, 76(%rdx)	# D.5741, d_17->finishwid
	.loc 1 376 0
	movq	-1064(%rbp), %rax	# d, tmp136
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	dict_wordid	#
	movq	-1064(%rbp), %rdx	# d, tmp137
	movl	%eax, 80(%rdx)	# D.5741, d_17->silwid
	.loc 1 387 0
	cmpb	$0, -1116(%rbp)	#, comp_sep
	je	.L75	#,
	.loc 1 388 0
	movl	$.LC20, %edx	#,
	movl	$388, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movsbl	-1116(%rbp), %eax	# comp_sep, D.5741
	movl	%eax, %esi	# D.5741,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 389 0
	movsbl	-1116(%rbp), %edx	# comp_sep, D.5741
	movq	-1064(%rbp), %rax	# d, tmp138
	movl	%edx, %esi	# D.5741,
	movq	%rax, %rdi	# tmp138,
	call	dict_build_comp	#
	movl	%eax, -1084(%rbp)	# tmp139, n
	.loc 1 390 0
	movl	$.LC20, %edx	#,
	movl	$390, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-1084(%rbp), %eax	# n, tmp140
	movl	%eax, %esi	# tmp140,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L75:
	.loc 1 393 0
	movq	-1064(%rbp), %rax	# d, D.5745
	.loc 1 394 0
	movq	-24(%rbp), %rbx	# D.5746, tmp143
	xorq	%fs:40, %rbx	#, tmp143
	je	.L77	#,
	call	__stack_chk_fail	#
.L77:
	addq	$1112, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	dict_init, .-dict_init
	.globl	dict_wordid
	.type	dict_wordid, @function
dict_wordid:
.LFB9:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# d, d
	movq	%rsi, -32(%rbp)	# word, word
	.loc 1 404 0
	movq	-24(%rbp), %rax	# d, tmp63
	movq	40(%rax), %rax	# d_2(D)->ht, D.5762
	leaq	-4(%rbp), %rdx	#, tmp64
	movq	-32(%rbp), %rcx	# word, tmp65
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# D.5762,
	call	hash_lookup	#
	testl	%eax, %eax	# D.5763
	jns	.L79	#,
	.loc 1 405 0
	movl	$-1, %eax	#, D.5761
	jmp	.L81	#
.L79:
	.loc 1 406 0
	movl	-4(%rbp), %eax	# w, D.5761
.L81:
	.loc 1 407 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	dict_wordid, .-dict_wordid
	.globl	_dict_basewid
	.type	_dict_basewid, @function
_dict_basewid:
.LFB10:
	.loc 1 411 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# d, d
	movl	%esi, -12(%rbp)	# w, w
	.loc 1 415 0
	movq	-8(%rbp), %rax	# d, tmp65
	movq	32(%rax), %rcx	# d_1(D)->word, D.5764
	movl	-12(%rbp), %eax	# w, tmp66
	movslq	%eax, %rdx	# tmp66, D.5765
	movq	%rdx, %rax	# D.5765, tmp67
	salq	$2, %rax	#, tmp67
	addq	%rdx, %rax	# D.5765, tmp67
	salq	$3, %rax	#, tmp68
	addq	%rcx, %rax	# D.5764, D.5764
	movl	24(%rax), %eax	# _6->basewid, D.5766
	.loc 1 416 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	_dict_basewid, .-_dict_basewid
	.globl	_dict_wordstr
	.type	_dict_wordstr, @function
_dict_wordstr:
.LFB11:
	.loc 1 420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# d, d
	movl	%esi, -12(%rbp)	# wid, wid
	.loc 1 424 0
	movq	-8(%rbp), %rax	# d, tmp65
	movq	32(%rax), %rcx	# d_1(D)->word, D.5767
	movl	-12(%rbp), %eax	# wid, tmp66
	movslq	%eax, %rdx	# tmp66, D.5768
	movq	%rdx, %rax	# D.5768, tmp67
	salq	$2, %rax	#, tmp67
	addq	%rdx, %rax	# D.5768, tmp67
	salq	$3, %rax	#, tmp68
	addq	%rcx, %rax	# D.5767, D.5767
	movq	(%rax), %rax	# _6->word, D.5769
	.loc 1 425 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	_dict_wordstr, .-_dict_wordstr
	.globl	_dict_nextalt
	.type	_dict_nextalt, @function
_dict_nextalt:
.LFB12:
	.loc 1 429 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# d, d
	movl	%esi, -12(%rbp)	# wid, wid
	.loc 1 433 0
	movq	-8(%rbp), %rax	# d, tmp65
	movq	32(%rax), %rcx	# d_1(D)->word, D.5770
	movl	-12(%rbp), %eax	# wid, tmp66
	movslq	%eax, %rdx	# tmp66, D.5771
	movq	%rdx, %rax	# D.5771, tmp67
	salq	$2, %rax	#, tmp67
	addq	%rdx, %rax	# D.5771, tmp67
	salq	$3, %rax	#, tmp68
	addq	%rcx, %rax	# D.5770, D.5770
	movl	20(%rax), %eax	# _6->alt, D.5772
	.loc 1 434 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	_dict_nextalt, .-_dict_nextalt
	.globl	dict_filler_word
	.type	dict_filler_word, @function
dict_filler_word:
.LFB13:
	.loc 1 438 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# d, d
	movl	%esi, -12(%rbp)	# w, w
	.loc 1 442 0
	movq	-8(%rbp), %rax	# d, tmp69
	movq	32(%rax), %rcx	# d_2(D)->word, D.5774
	movl	-12(%rbp), %eax	# w, tmp70
	movslq	%eax, %rdx	# tmp70, D.5775
	movq	%rdx, %rax	# D.5775, tmp71
	salq	$2, %rax	#, tmp71
	addq	%rdx, %rax	# D.5775, tmp71
	salq	$3, %rax	#, tmp72
	addq	%rcx, %rax	# D.5774, D.5774
	movl	24(%rax), %eax	# _7->basewid, tmp73
	movl	%eax, -12(%rbp)	# tmp73, w
	.loc 1 443 0
	movq	-8(%rbp), %rax	# d, tmp74
	movl	72(%rax), %eax	# d_2(D)->startwid, D.5776
	cmpl	-12(%rbp), %eax	# w, D.5776
	je	.L89	#,
	.loc 1 443 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# d, tmp75
	movl	76(%rax), %eax	# d_2(D)->finishwid, D.5776
	cmpl	-12(%rbp), %eax	# w, D.5776
	jne	.L90	#,
.L89:
	.loc 1 444 0 is_stmt 1
	movl	$0, %eax	#, D.5773
	jmp	.L91	#
.L90:
	.loc 1 445 0
	movq	-8(%rbp), %rax	# d, tmp76
	movl	56(%rax), %eax	# d_2(D)->filler_start, D.5776
	cmpl	-12(%rbp), %eax	# w, D.5776
	jg	.L92	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# d, tmp77
	movl	60(%rax), %eax	# d_2(D)->filler_end, D.5776
	cmpl	-12(%rbp), %eax	# w, D.5776
	jl	.L92	#,
	.loc 1 446 0 is_stmt 1
	movl	$1, %eax	#, D.5773
	jmp	.L91	#
.L92:
	.loc 1 447 0
	movl	$0, %eax	#, D.5773
.L91:
	.loc 1 448 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	dict_filler_word, .-dict_filler_word
	.globl	dict_wids2compwid
	.type	dict_wids2compwid, @function
dict_wids2compwid:
.LFB14:
	.loc 1 452 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# d, d
	movq	%rsi, -32(%rbp)	# wid, wid
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 456 0
	movq	-24(%rbp), %rax	# d, tmp93
	movq	64(%rax), %rax	# d_4(D)->comp_head, D.5778
	testq	%rax, %rax	# D.5778
	jne	.L94	#,
	.loc 1 457 0
	movl	$-1, %eax	#, D.5777
	jmp	.L95	#
.L94:
	.loc 1 461 0
	movq	-24(%rbp), %rax	# d, tmp94
	movq	64(%rax), %rdx	# d_4(D)->comp_head, D.5778
	movq	-32(%rbp), %rax	# wid, tmp95
	movl	(%rax), %eax	# *wid_8(D), D.5779
	cltq
	salq	$2, %rax	#, D.5780
	addq	%rdx, %rax	# D.5778, D.5778
	movl	(%rax), %eax	# *_12, tmp96
	movl	%eax, -8(%rbp)	# tmp96, w
	jmp	.L96	#
.L101:
	.loc 1 466 0
	movq	-24(%rbp), %rax	# d, tmp97
	movq	32(%rax), %rcx	# d_4(D)->word, D.5781
	movl	-8(%rbp), %eax	# w, tmp98
	movslq	%eax, %rdx	# tmp98, D.5780
	movq	%rdx, %rax	# D.5780, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# D.5780, tmp99
	salq	$3, %rax	#, tmp100
	addq	%rcx, %rax	# D.5781, D.5781
	movl	28(%rax), %eax	# _17->n_comp, D.5779
	cmpl	-36(%rbp), %eax	# len, D.5779
	jne	.L97	#,
	.loc 1 467 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L98	#
.L100:
	.loc 1 467 0 is_stmt 0 discriminator 1
	addl	$1, -4(%rbp)	#, i
.L98:
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-36(%rbp), %eax	# len, tmp101
	jge	.L99	#,
	.loc 1 467 0 discriminator 2
	movq	-24(%rbp), %rax	# d, tmp102
	movq	32(%rax), %rcx	# d_4(D)->word, D.5781
	movl	-8(%rbp), %eax	# w, tmp103
	movslq	%eax, %rdx	# tmp103, D.5780
	movq	%rdx, %rax	# D.5780, tmp104
	salq	$2, %rax	#, tmp104
	addq	%rdx, %rax	# D.5780, tmp104
	salq	$3, %rax	#, tmp105
	addq	%rcx, %rax	# D.5781, D.5781
	movq	32(%rax), %rax	# _24->comp, D.5778
	movl	-4(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, D.5780
	salq	$2, %rdx	#, D.5780
	addq	%rdx, %rax	# D.5780, D.5778
	movl	(%rax), %edx	# *_28, D.5779
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5780
	movq	-32(%rbp), %rax	# wid, tmp108
	addq	%rcx, %rax	# D.5780, D.5778
	movl	(%rax), %eax	# *_32, D.5779
	cmpl	%eax, %edx	# D.5779, D.5779
	je	.L100	#,
.L99:
	.loc 1 468 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp109
	cmpl	-36(%rbp), %eax	# len, tmp109
	jne	.L97	#,
	.loc 1 469 0
	movq	-24(%rbp), %rax	# d, tmp110
	movq	32(%rax), %rcx	# d_4(D)->word, D.5781
	movl	-8(%rbp), %eax	# w, tmp111
	movslq	%eax, %rdx	# tmp111, D.5780
	movq	%rdx, %rax	# D.5780, tmp112
	salq	$2, %rax	#, tmp112
	addq	%rdx, %rax	# D.5780, tmp112
	salq	$3, %rax	#, tmp113
	addq	%rcx, %rax	# D.5781, D.5781
	movl	24(%rax), %eax	# _38->basewid, D.5777
	jmp	.L95	#
.L97:
	.loc 1 461 0
	movq	-24(%rbp), %rax	# d, tmp114
	movq	64(%rax), %rax	# d_4(D)->comp_head, D.5778
	movl	-8(%rbp), %edx	# w, tmp115
	movslq	%edx, %rdx	# tmp115, D.5780
	salq	$2, %rdx	#, D.5780
	addq	%rdx, %rax	# D.5780, D.5778
	movl	(%rax), %eax	# *_43, tmp116
	movl	%eax, -8(%rbp)	# tmp116, w
.L96:
	.loc 1 461 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, w
	jns	.L101	#,
	.loc 1 473 0 is_stmt 1
	movl	$-1, %eax	#, D.5777
.L95:
	.loc 1 474 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	dict_wids2compwid, .-dict_wids2compwid
	.globl	dict_word2basestr
	.type	dict_word2basestr, @function
dict_word2basestr:
.LFB15:
	.loc 1 478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# word, word
	.loc 1 481 0
	movq	-24(%rbp), %rax	# word, tmp71
	movq	%rax, %rdi	# tmp71,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.5783, len
	.loc 1 482 0
	movl	-4(%rbp), %eax	# len, tmp72
	cltq
	leaq	-1(%rax), %rdx	#, D.5784
	movq	-24(%rbp), %rax	# word, tmp73
	addq	%rdx, %rax	# D.5784, D.5785
	movzbl	(%rax), %eax	# *_8, D.5786
	cmpb	$41, %al	#, D.5786
	jne	.L103	#,
	.loc 1 483 0
	movl	-4(%rbp), %eax	# len, tmp77
	subl	$2, %eax	#, tmp76
	movl	%eax, -8(%rbp)	# tmp76, i
	jmp	.L104	#
.L106:
	.loc 1 483 0 is_stmt 0 discriminator 1
	subl	$1, -8(%rbp)	#, i
.L104:
	cmpl	$0, -8(%rbp)	#, i
	jle	.L105	#,
	.loc 1 483 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp78
	movslq	%eax, %rdx	# tmp78, D.5784
	movq	-24(%rbp), %rax	# word, tmp79
	addq	%rdx, %rax	# D.5784, D.5785
	movzbl	(%rax), %eax	# *_12, D.5786
	cmpb	$40, %al	#, D.5786
	jne	.L106	#,
.L105:
	.loc 1 485 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, i
	jle	.L103	#,
	.loc 1 487 0
	movl	-8(%rbp), %eax	# i, tmp80
	movslq	%eax, %rdx	# tmp80, D.5784
	movq	-24(%rbp), %rax	# word, tmp81
	addq	%rdx, %rax	# D.5784, D.5785
	movb	$0, (%rax)	#, *_16
	.loc 1 488 0
	movl	-8(%rbp), %eax	# i, D.5782
	jmp	.L107	#
.L103:
	.loc 1 492 0
	movl	$-1, %eax	#, D.5782
.L107:
	.loc 1 493 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	dict_word2basestr, .-dict_word2basestr
	.globl	dict_free
	.type	dict_free, @function
dict_free:
.LFB16:
	.loc 1 500 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# d, d
	.loc 1 504 0
	cmpq	$0, -24(%rbp)	#, d
	je	.L108	#,
	.loc 1 506 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L110	#
.L114:
	.loc 1 507 0
	movq	-24(%rbp), %rax	# d, tmp90
	movq	32(%rax), %rcx	# d_3(D)->word, D.5788
	movl	-12(%rbp), %eax	# i, tmp91
	movslq	%eax, %rdx	# tmp91, D.5789
	movq	%rdx, %rax	# D.5789, tmp92
	salq	$2, %rax	#, tmp92
	addq	%rdx, %rax	# D.5789, tmp92
	salq	$3, %rax	#, tmp93
	addq	%rcx, %rax	# D.5788, tmp94
	movq	%rax, -8(%rbp)	# tmp94, word
	.loc 1 508 0
	movq	-8(%rbp), %rax	# word, tmp95
	movq	(%rax), %rax	# word_9->word, D.5790
	testq	%rax, %rax	# D.5790
	je	.L111	#,
	.loc 1 509 0
	movq	-8(%rbp), %rax	# word, tmp96
	movq	(%rax), %rax	# word_9->word, D.5790
	movq	%rax, %rdi	# D.5790,
	call	ckd_free	#
.L111:
	.loc 1 510 0
	movq	-8(%rbp), %rax	# word, tmp97
	movq	8(%rax), %rax	# word_9->ciphone, D.5791
	testq	%rax, %rax	# D.5791
	je	.L112	#,
	.loc 1 511 0
	movq	-8(%rbp), %rax	# word, tmp98
	movq	8(%rax), %rax	# word_9->ciphone, D.5791
	movq	%rax, %rdi	# D.5791,
	call	ckd_free	#
.L112:
	.loc 1 512 0
	movq	-8(%rbp), %rax	# word, tmp99
	movq	32(%rax), %rax	# word_9->comp, D.5792
	testq	%rax, %rax	# D.5792
	je	.L113	#,
	.loc 1 513 0
	movq	-8(%rbp), %rax	# word, tmp100
	movq	32(%rax), %rax	# word_9->comp, D.5792
	movq	%rax, %rdi	# D.5792,
	call	ckd_free	#
.L113:
	.loc 1 506 0
	addl	$1, -12(%rbp)	#, i
.L110:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp101
	movl	52(%rax), %eax	# d_3(D)->n_word, D.5787
	cmpl	-12(%rbp), %eax	# i, D.5787
	jg	.L114	#,
	.loc 1 516 0 is_stmt 1
	movq	-24(%rbp), %rax	# d, tmp102
	movq	32(%rax), %rax	# d_3(D)->word, D.5788
	testq	%rax, %rax	# D.5788
	je	.L115	#,
	.loc 1 517 0
	movq	-24(%rbp), %rax	# d, tmp103
	movq	32(%rax), %rax	# d_3(D)->word, D.5788
	movq	%rax, %rdi	# D.5788,
	call	ckd_free	#
.L115:
	.loc 1 518 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L116	#
.L118:
	.loc 1 519 0
	movq	-24(%rbp), %rax	# d, tmp104
	movq	16(%rax), %rax	# d_3(D)->ciphone_str, D.5793
	movl	-12(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, D.5789
	salq	$3, %rdx	#, D.5789
	addq	%rdx, %rax	# D.5789, D.5793
	movq	(%rax), %rax	# *_24, D.5790
	testq	%rax, %rax	# D.5790
	je	.L117	#,
	.loc 1 520 0
	movq	-24(%rbp), %rax	# d, tmp106
	movq	16(%rax), %rax	# d_3(D)->ciphone_str, D.5793
	movl	-12(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, D.5789
	salq	$3, %rdx	#, D.5789
	addq	%rdx, %rax	# D.5789, D.5793
	movq	(%rax), %rax	# *_29, D.5790
	movq	%rax, %rdi	# D.5790,
	call	ckd_free	#
.L117:
	.loc 1 518 0
	addl	$1, -12(%rbp)	#, i
.L116:
	.loc 1 518 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp108
	movl	24(%rax), %eax	# d_3(D)->n_ciphone, D.5787
	cmpl	-12(%rbp), %eax	# i, D.5787
	jg	.L118	#,
	.loc 1 522 0 is_stmt 1
	movq	-24(%rbp), %rax	# d, tmp109
	movq	64(%rax), %rax	# d_3(D)->comp_head, D.5792
	testq	%rax, %rax	# D.5792
	je	.L119	#,
	.loc 1 523 0
	movq	-24(%rbp), %rax	# d, tmp110
	movq	64(%rax), %rax	# d_3(D)->comp_head, D.5792
	movq	%rax, %rdi	# D.5792,
	call	ckd_free	#
.L119:
	.loc 1 524 0
	movq	-24(%rbp), %rax	# d, tmp111
	movq	16(%rax), %rax	# d_3(D)->ciphone_str, D.5793
	testq	%rax, %rax	# D.5793
	je	.L120	#,
	.loc 1 525 0
	movq	-24(%rbp), %rax	# d, tmp112
	movq	16(%rax), %rax	# d_3(D)->ciphone_str, D.5793
	movq	%rax, %rdi	# D.5793,
	call	ckd_free	#
.L120:
	.loc 1 526 0
	movq	-24(%rbp), %rax	# d, tmp113
	movq	8(%rax), %rax	# d_3(D)->pht, D.5794
	testq	%rax, %rax	# D.5794
	je	.L121	#,
	.loc 1 527 0
	movq	-24(%rbp), %rax	# d, tmp114
	movq	8(%rax), %rax	# d_3(D)->pht, D.5794
	movq	%rax, %rdi	# D.5794,
	call	hash_free	#
.L121:
	.loc 1 528 0
	movq	-24(%rbp), %rax	# d, tmp115
	movq	40(%rax), %rax	# d_3(D)->ht, D.5794
	testq	%rax, %rax	# D.5794
	je	.L122	#,
	.loc 1 529 0
	movq	-24(%rbp), %rax	# d, tmp116
	movq	40(%rax), %rax	# d_3(D)->ht, D.5794
	movq	%rax, %rdi	# D.5794,
	call	hash_free	#
.L122:
	.loc 1 530 0
	movq	-24(%rbp), %rax	# d, tmp117
	movq	%rax, %rdi	# tmp117,
	call	ckd_free	#
.L108:
	.loc 1 532 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	dict_free, .-dict_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/hash.h"
	.file 8 "s3types.h"
	.file 9 "mdef.h"
	.file 10 "dict.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd50
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF143
	.byte	0x1
	.long	.LASF144
	.long	.LASF145
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
	.long	.LASF146
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
	.byte	0x44
	.long	0x3f
	.uleb128 0x7
	.long	.LASF55
	.byte	0x18
	.byte	0x7
	.byte	0x58
	.long	0x322
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x7
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x7
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x5f
	.long	0x322
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x60
	.long	0x2e5
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x62
	.long	0x360
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x63
	.long	0x360
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x67
	.long	0x2da
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x328
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x68
	.long	0x333
	.uleb128 0x2
	.long	.LASF62
	.byte	0x8
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x57
	.long	0x37c
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.long	0x3da
	.uleb128 0x11
	.long	.LASF68
	.sleb128 0
	.uleb128 0x11
	.long	.LASF69
	.sleb128 1
	.uleb128 0x11
	.long	.LASF70
	.sleb128 2
	.uleb128 0x11
	.long	.LASF71
	.sleb128 3
	.uleb128 0x11
	.long	.LASF72
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x9
	.byte	0x4e
	.long	0x3b3
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x54
	.long	0x406
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x9
	.byte	0x58
	.long	0x3e5
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x5e
	.long	0x45f
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x5f
	.long	0x387
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x62
	.long	0x392
	.byte	0x4
	.uleb128 0xe
	.string	"ci"
	.byte	0x9
	.byte	0x63
	.long	0x371
	.byte	0x8
	.uleb128 0xe
	.string	"lc"
	.byte	0x9
	.byte	0x63
	.long	0x371
	.byte	0x9
	.uleb128 0xe
	.string	"rc"
	.byte	0x9
	.byte	0x63
	.long	0x371
	.byte	0xa
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x64
	.long	0x3da
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.byte	0x65
	.long	0x411
	.uleb128 0x7
	.long	.LASF81
	.byte	0x10
	.byte	0x9
	.byte	0x6c
	.long	0x49a
	.uleb128 0xe
	.string	"rc"
	.byte	0x9
	.byte	0x6d
	.long	0x371
	.byte	0
	.uleb128 0xe
	.string	"pid"
	.byte	0x9
	.byte	0x6e
	.long	0x37c
	.byte	0x4
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x6f
	.long	0x49a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x46a
	.uleb128 0x2
	.long	.LASF82
	.byte	0x9
	.byte	0x70
	.long	0x46a
	.uleb128 0x7
	.long	.LASF83
	.byte	0x18
	.byte	0x9
	.byte	0x72
	.long	0x4db
	.uleb128 0xe
	.string	"lc"
	.byte	0x9
	.byte	0x73
	.long	0x371
	.byte	0
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x74
	.long	0x4db
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x75
	.long	0x4e1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ab
	.uleb128 0x2
	.long	.LASF85
	.byte	0x9
	.byte	0x76
	.long	0x4ab
	.uleb128 0xf
	.byte	0x68
	.byte	0x9
	.byte	0x7a
	.long	0x5bb
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x82
	.long	0x5bb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x83
	.long	0x5c1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x84
	.long	0x5c7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x85
	.long	0x5cd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x89
	.long	0x5d3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x8c
	.long	0x5d9
	.byte	0x48
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x8d
	.long	0x5df
	.byte	0x50
	.uleb128 0xe
	.string	"sil"
	.byte	0x9
	.byte	0x8f
	.long	0x371
	.byte	0x58
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x91
	.long	0x5e5
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x6
	.byte	0x8
	.long	0x406
	.uleb128 0x6
	.byte	0x8
	.long	0x45f
	.uleb128 0x6
	.byte	0x8
	.long	0x5d3
	.uleb128 0x6
	.byte	0x8
	.long	0x3a8
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x5eb
	.uleb128 0x6
	.byte	0x8
	.long	0x5f1
	.uleb128 0x6
	.byte	0x8
	.long	0x4e7
	.uleb128 0x2
	.long	.LASF101
	.byte	0x9
	.byte	0x96
	.long	0x4f2
	.uleb128 0xf
	.byte	0x28
	.byte	0xa
	.byte	0x47
	.long	0x65f
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF93
	.byte	0xa
	.byte	0x49
	.long	0x5d9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0xe
	.string	"alt"
	.byte	0xa
	.byte	0x4b
	.long	0x39d
	.byte	0x14
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x4c
	.long	0x39d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x51
	.long	0x65f
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39d
	.uleb128 0x2
	.long	.LASF107
	.byte	0xa
	.byte	0x52
	.long	0x602
	.uleb128 0xf
	.byte	0x58
	.byte	0xa
	.byte	0x54
	.long	0x720
	.uleb128 0x8
	.long	.LASF108
	.byte	0xa
	.byte	0x55
	.long	0x720
	.byte	0
	.uleb128 0xe
	.string	"pht"
	.byte	0xa
	.byte	0x56
	.long	0x5bb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF109
	.byte	0xa
	.byte	0x57
	.long	0x726
	.byte	0x10
	.uleb128 0x8
	.long	.LASF86
	.byte	0xa
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x59
	.long	0x72c
	.byte	0x20
	.uleb128 0xe
	.string	"ht"
	.byte	0xa
	.byte	0x5a
	.long	0x5bb
	.byte	0x28
	.uleb128 0x8
	.long	.LASF110
	.byte	0xa
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF111
	.byte	0xa
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF112
	.byte	0xa
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF113
	.byte	0xa
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF114
	.byte	0xa
	.byte	0x5f
	.long	0x65f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF115
	.byte	0xa
	.byte	0x62
	.long	0x39d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF116
	.byte	0xa
	.byte	0x63
	.long	0x39d
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF117
	.byte	0xa
	.byte	0x64
	.long	0x39d
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5f7
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x665
	.uleb128 0x2
	.long	.LASF118
	.byte	0xa
	.byte	0x65
	.long	0x670
	.uleb128 0x12
	.long	.LASF123
	.byte	0x1
	.byte	0x46
	.long	0x371
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x786
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0x46
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.byte	0x46
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"id"
	.byte	0x1
	.byte	0x48
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x732
	.uleb128 0x15
	.long	.LASF119
	.byte	0x1
	.byte	0x5c
	.long	0x292
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d6
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0x5c
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"wid"
	.byte	0x1
	.byte	0x5c
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"pos"
	.byte	0x1
	.byte	0x5c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.byte	0x69
	.long	0x39d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x863
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0x69
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.byte	0x69
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x69
	.long	0x5d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"np"
	.byte	0x1
	.byte	0x69
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0x6b
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x6b
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.byte	0x6c
	.long	0x72c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0x6d
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.long	.LASF124
	.byte	0x1
	.byte	0xa0
	.long	0x2b9
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x91c
	.uleb128 0x13
	.string	"fp"
	.byte	0x1
	.byte	0xa0
	.long	0x91c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20568
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xa0
	.long	0x786
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20576
	.uleb128 0x17
	.long	.LASF125
	.byte	0x1
	.byte	0xa2
	.long	0x922
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x17
	.long	.LASF126
	.byte	0x1
	.byte	0xa2
	.long	0x726
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20536
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0xa3
	.long	0x933
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20528
	.uleb128 0x17
	.long	.LASF127
	.byte	0x1
	.byte	0xa4
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20556
	.uleb128 0x14
	.string	"nwd"
	.byte	0x1
	.byte	0xa4
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20544
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0xa5
	.long	0x39d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20540
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xa6
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20552
	.uleb128 0x17
	.long	.LASF128
	.byte	0x1
	.byte	0xa6
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20548
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x933
	.uleb128 0x18
	.long	0x86
	.value	0x3fff
	.byte	0
	.uleb128 0xb
	.long	0x371
	.long	0x944
	.uleb128 0x18
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x12
	.long	.LASF129
	.byte	0x1
	.byte	0xd4
	.long	0x65f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x98c
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xd4
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0xd6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0xd7
	.long	0x65f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF130
	.byte	0x1
	.byte	0xee
	.long	0x2b9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xa45
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xee
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4200
	.uleb128 0x13
	.string	"sep"
	.byte	0x1
	.byte	0xef
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4204
	.uleb128 0x14
	.string	"wd"
	.byte	0x1
	.byte	0xf1
	.long	0xa45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.byte	0xf2
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4180
	.uleb128 0x17
	.long	.LASF131
	.byte	0x1
	.byte	0xf2
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4156
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.byte	0xf3
	.long	0x72c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x14
	.string	"nc"
	.byte	0x1
	.byte	0xf4
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4176
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xf5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4172
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0xf5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x14
	.string	"l"
	.byte	0x1
	.byte	0xf5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4164
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xf5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xa56
	.uleb128 0x18
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x19
	.long	.LASF132
	.byte	0x1
	.value	0x126
	.long	0x786
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xb04
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x126
	.long	0x720
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.value	0x126
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.value	0x126
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x1
	.value	0x126
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.value	0x128
	.long	0x91c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x1b
	.string	"fp2"
	.byte	0x1
	.value	0x128
	.long	0x91c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x1b
	.string	"n"
	.byte	0x1
	.value	0x129
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.value	0x12a
	.long	0xb04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x12b
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xb15
	.uleb128 0x18
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.value	0x18d
	.long	0x39d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xb61
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x18d
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x18d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"w"
	.byte	0x1
	.value	0x18f
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x1
	.value	0x19a
	.long	0x39d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9e
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x19a
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.value	0x19a
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.value	0x1a3
	.long	0x8f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdd
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x1a3
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"wid"
	.byte	0x1
	.value	0x1a3
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x1ac
	.long	0x39d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1c
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x1ac
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"wid"
	.byte	0x1
	.value	0x1ac
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x1
	.value	0x1b5
	.long	0x2b9
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc59
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x1b5
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.value	0x1b5
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x1
	.value	0x1c3
	.long	0x39d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc1
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x1c3
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"wid"
	.byte	0x1
	.value	0x1c3
	.long	0x65f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x1c3
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"w"
	.byte	0x1
	.value	0x1c5
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF142
	.byte	0x1
	.value	0x1dd
	.long	0x2b9
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0f
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x1dd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1df
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.value	0x1df
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF147
	.byte	0x1
	.value	0x1f3
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x1f3
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1f5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.value	0x1f6
	.long	0x72c
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
.LASF112:
	.string	"filler_start"
.LASF32:
	.string	"_shortbuf"
.LASF117:
	.string	"silwid"
.LASF146:
	.string	"_IO_lock_t"
.LASF80:
	.string	"phone_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF63:
	.string	"s3pid_t"
.LASF134:
	.string	"fillerfile"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF56:
	.string	"next"
.LASF131:
	.string	"cwid"
.LASF13:
	.string	"_flags"
.LASF52:
	.string	"int16"
.LASF55:
	.string	"hash_entry_s"
.LASF57:
	.string	"hash_entry_t"
.LASF128:
	.string	"maxwd"
.LASF98:
	.string	"sen2cimap"
.LASF25:
	.string	"_markers"
.LASF127:
	.string	"lineno"
.LASF76:
	.string	"ciphone_t"
.LASF100:
	.string	"wpos_ci_lclist"
.LASF81:
	.string	"ph_rc_s"
.LASF82:
	.string	"ph_rc_t"
.LASF142:
	.string	"dict_word2basestr"
.LASF67:
	.string	"s3senid_t"
.LASF95:
	.string	"sseq"
.LASF86:
	.string	"n_ciphone"
.LASF104:
	.string	"basewid"
.LASF46:
	.string	"_pos"
.LASF99:
	.string	"ciphone2n_cd_sen"
.LASF24:
	.string	"_IO_save_end"
.LASF145:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"float"
.LASF51:
	.string	"int32"
.LASF48:
	.string	"long long unsigned int"
.LASF94:
	.string	"phone"
.LASF126:
	.string	"wptr"
.LASF103:
	.string	"pronlen"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF111:
	.string	"n_word"
.LASF92:
	.string	"ciphone_ht"
.LASF27:
	.string	"_fileno"
.LASF121:
	.string	"wordp"
.LASF129:
	.string	"dict_comp_head"
.LASF71:
	.string	"WORD_POSN_INTERNAL"
.LASF7:
	.string	"size_t"
.LASF138:
	.string	"_dict_wordstr"
.LASF16:
	.string	"_IO_read_base"
.LASF132:
	.string	"dict_init"
.LASF44:
	.string	"_next"
.LASF123:
	.string	"dict_ciphone_id"
.LASF77:
	.string	"ssid"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF116:
	.string	"finishwid"
.LASF64:
	.string	"s3ssid_t"
.LASF124:
	.string	"dict_read"
.LASF43:
	.string	"_IO_marker"
.LASF140:
	.string	"dict_filler_word"
.LASF14:
	.string	"_IO_read_ptr"
.LASF105:
	.string	"n_comp"
.LASF53:
	.string	"int8"
.LASF130:
	.string	"dict_build_comp"
.LASF110:
	.string	"max_words"
.LASF135:
	.string	"comp_sep"
.LASF61:
	.string	"hash_table_t"
.LASF141:
	.string	"dict_wids2compwid"
.LASF17:
	.string	"_IO_write_base"
.LASF87:
	.string	"n_phone"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF133:
	.string	"dictfile"
.LASF137:
	.string	"_dict_basewid"
.LASF75:
	.string	"filler"
.LASF72:
	.string	"WORD_POSN_UNDEFINED"
.LASF59:
	.string	"size"
.LASF113:
	.string	"filler_end"
.LASF93:
	.string	"ciphone"
.LASF70:
	.string	"WORD_POSN_SINGLE"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF60:
	.string	"nocase"
.LASF119:
	.string	"dict_ciphone_str"
.LASF84:
	.string	"rclist"
.LASF31:
	.string	"_vtable_offset"
.LASF66:
	.string	"s3wid_t"
.LASF143:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF83:
	.string	"ph_lc_s"
.LASF85:
	.string	"ph_lc_t"
.LASF91:
	.string	"n_tmat"
.LASF5:
	.string	"short int"
.LASF118:
	.string	"dict_t"
.LASF122:
	.string	"newwid"
.LASF6:
	.string	"long int"
.LASF136:
	.string	"dict_wordid"
.LASF58:
	.string	"table"
.LASF114:
	.string	"comp_head"
.LASF144:
	.string	"dict.c"
.LASF102:
	.string	"word"
.LASF101:
	.string	"mdef_t"
.LASF96:
	.string	"n_sseq"
.LASF74:
	.string	"name"
.LASF90:
	.string	"n_sen"
.LASF139:
	.string	"_dict_nextalt"
.LASF33:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF89:
	.string	"n_ci_sen"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF125:
	.string	"line"
.LASF108:
	.string	"mdef"
.LASF18:
	.string	"_IO_write_ptr"
.LASF65:
	.string	"s3tmatid_t"
.LASF107:
	.string	"dictword_t"
.LASF69:
	.string	"WORD_POSN_END"
.LASF62:
	.string	"s3cipid_t"
.LASF109:
	.string	"ciphone_str"
.LASF97:
	.string	"cd2cisen"
.LASF78:
	.string	"tmat"
.LASF8:
	.string	"__off_t"
.LASF73:
	.string	"word_posn_t"
.LASF88:
	.string	"n_emit_state"
.LASF4:
	.string	"signed char"
.LASF120:
	.string	"dict_add_word"
.LASF2:
	.string	"short unsigned int"
.LASF147:
	.string	"dict_free"
.LASF79:
	.string	"wpos"
.LASF54:
	.string	"uint8"
.LASF50:
	.string	"double"
.LASF68:
	.string	"WORD_POSN_BEGIN"
.LASF26:
	.string	"_chain"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF106:
	.string	"comp"
.LASF30:
	.string	"_cur_column"
.LASF115:
	.string	"startwid"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
