	.file	"tophits.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 tophits.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"tophits.c"
	.text
	.globl	AllocTophits
	.type	AllocTophits, @function
AllocTophits:
.LFB2:
	.file 1 "tophits.c"
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lumpsize, lumpsize
	.loc 1 82 0
	movl	$32, %edx	#,
	movl	$82, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp64, hitlist
	.loc 1 83 0
	movq	-8(%rbp), %rax	# hitlist, tmp65
	movq	$0, (%rax)	#, hitlist_1->hit
	.loc 1 84 0
	movl	-20(%rbp), %eax	# lumpsize, tmp66
	movslq	%eax, %rdx	# tmp66, D.7061
	movq	%rdx, %rax	# D.7061, tmp67
	addq	%rax, %rax	# tmp67
	addq	%rdx, %rax	# D.7061, tmp67
	salq	$2, %rax	#, tmp67
	addq	%rdx, %rax	# D.7061, tmp67
	salq	$3, %rax	#, tmp68
	movq	%rax, %rdx	# D.7061,
	movl	$84, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# hitlist, tmp69
	movq	%rax, 8(%rdx)	# D.7062, hitlist_1->unsrt
	.loc 1 85 0
	movq	-8(%rbp), %rax	# hitlist, tmp70
	movl	-20(%rbp), %edx	# lumpsize, tmp71
	movl	%edx, 16(%rax)	# tmp71, hitlist_1->alloc
	.loc 1 86 0
	movq	-8(%rbp), %rax	# hitlist, tmp72
	movl	$0, 20(%rax)	#, hitlist_1->num
	.loc 1 87 0
	movq	-8(%rbp), %rax	# hitlist, tmp73
	movl	-20(%rbp), %edx	# lumpsize, tmp74
	movl	%edx, 24(%rax)	# tmp74, hitlist_1->lump
	.loc 1 88 0
	movq	-8(%rbp), %rax	# hitlist, D.7063
	.loc 1 89 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	AllocTophits, .-AllocTophits
	.globl	GrowTophits
	.type	GrowTophits, @function
GrowTophits:
.LFB3:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# h, h
	.loc 1 93 0
	movq	-8(%rbp), %rax	# h, tmp69
	movl	16(%rax), %edx	# h_1(D)->alloc, D.7065
	movq	-8(%rbp), %rax	# h, tmp70
	movl	24(%rax), %eax	# h_1(D)->lump, D.7065
	addl	%edx, %eax	# D.7065, D.7065
	movslq	%eax, %rdx	# D.7065, D.7066
	movq	%rdx, %rax	# D.7066, tmp71
	addq	%rax, %rax	# tmp71
	addq	%rdx, %rax	# D.7066, tmp71
	salq	$2, %rax	#, tmp71
	addq	%rdx, %rax	# D.7066, tmp71
	salq	$3, %rax	#, tmp72
	movq	%rax, %rdx	# tmp71, D.7066
	movq	-8(%rbp), %rax	# h, tmp73
	movq	8(%rax), %rax	# h_1(D)->unsrt, D.7067
	movq	%rdx, %rcx	# D.7066,
	movq	%rax, %rdx	# D.7067,
	movl	$93, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-8(%rbp), %rdx	# h, tmp74
	movq	%rax, 8(%rdx)	# D.7068, h_1(D)->unsrt
	.loc 1 94 0
	movq	-8(%rbp), %rax	# h, tmp75
	movl	16(%rax), %edx	# h_1(D)->alloc, D.7065
	movq	-8(%rbp), %rax	# h, tmp76
	movl	24(%rax), %eax	# h_1(D)->lump, D.7065
	addl	%eax, %edx	# D.7065, D.7065
	movq	-8(%rbp), %rax	# h, tmp77
	movl	%edx, 16(%rax)	# D.7065, h_1(D)->alloc
	.loc 1 95 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	GrowTophits, .-GrowTophits
	.globl	FreeTophits
	.type	FreeTophits, @function
FreeTophits:
.LFB4:
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	.loc 1 100 0
	movl	$0, -4(%rbp)	#, pos
	jmp	.L5	#
.L10:
	.loc 1 102 0
	movq	-24(%rbp), %rax	# h, tmp103
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp104
	movslq	%eax, %rdx	# tmp104, D.7071
	movq	%rdx, %rax	# D.7071, tmp105
	addq	%rax, %rax	# tmp105
	addq	%rdx, %rax	# D.7071, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# D.7071, tmp105
	salq	$3, %rax	#, tmp106
	addq	%rcx, %rax	# D.7070, D.7070
	movq	96(%rax), %rax	# _8->ali, D.7072
	testq	%rax, %rax	# D.7072
	je	.L6	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp107
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp108
	movslq	%eax, %rdx	# tmp108, D.7071
	movq	%rdx, %rax	# D.7071, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# D.7071, tmp109
	salq	$2, %rax	#, tmp109
	addq	%rdx, %rax	# D.7071, tmp109
	salq	$3, %rax	#, tmp110
	addq	%rcx, %rax	# D.7070, D.7070
	movq	96(%rax), %rax	# _13->ali, D.7072
	movq	%rax, %rdi	# D.7072,
	call	FreeFancyAli	#
.L6:
	.loc 1 103 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp111
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp112
	movslq	%eax, %rdx	# tmp112, D.7071
	movq	%rdx, %rax	# D.7071, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# D.7071, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# D.7071, tmp113
	salq	$3, %rax	#, tmp114
	addq	%rcx, %rax	# D.7070, D.7070
	movq	40(%rax), %rax	# _18->name, D.7073
	testq	%rax, %rax	# D.7073
	je	.L7	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp115
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp116
	movslq	%eax, %rdx	# tmp116, D.7071
	movq	%rdx, %rax	# D.7071, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# D.7071, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# D.7071, tmp117
	salq	$3, %rax	#, tmp118
	addq	%rcx, %rax	# D.7070, D.7070
	movq	40(%rax), %rax	# _23->name, D.7073
	movq	%rax, %rdi	# D.7073,
	call	free	#
.L7:
	.loc 1 104 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp119
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp120
	movslq	%eax, %rdx	# tmp120, D.7071
	movq	%rdx, %rax	# D.7071, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# D.7071, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# D.7071, tmp121
	salq	$3, %rax	#, tmp122
	addq	%rcx, %rax	# D.7070, D.7070
	movq	48(%rax), %rax	# _28->acc, D.7073
	testq	%rax, %rax	# D.7073
	je	.L8	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp123
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp124
	movslq	%eax, %rdx	# tmp124, D.7071
	movq	%rdx, %rax	# D.7071, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rdx, %rax	# D.7071, tmp125
	salq	$2, %rax	#, tmp125
	addq	%rdx, %rax	# D.7071, tmp125
	salq	$3, %rax	#, tmp126
	addq	%rcx, %rax	# D.7070, D.7070
	movq	48(%rax), %rax	# _33->acc, D.7073
	movq	%rax, %rdi	# D.7073,
	call	free	#
.L8:
	.loc 1 105 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp127
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp128
	movslq	%eax, %rdx	# tmp128, D.7071
	movq	%rdx, %rax	# D.7071, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.7071, tmp129
	salq	$2, %rax	#, tmp129
	addq	%rdx, %rax	# D.7071, tmp129
	salq	$3, %rax	#, tmp130
	addq	%rcx, %rax	# D.7070, D.7070
	movq	56(%rax), %rax	# _38->desc, D.7073
	testq	%rax, %rax	# D.7073
	je	.L9	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp131
	movq	8(%rax), %rcx	# h_3(D)->unsrt, D.7070
	movl	-4(%rbp), %eax	# pos, tmp132
	movslq	%eax, %rdx	# tmp132, D.7071
	movq	%rdx, %rax	# D.7071, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# D.7071, tmp133
	salq	$2, %rax	#, tmp133
	addq	%rdx, %rax	# D.7071, tmp133
	salq	$3, %rax	#, tmp134
	addq	%rcx, %rax	# D.7070, D.7070
	movq	56(%rax), %rax	# _43->desc, D.7073
	movq	%rax, %rdi	# D.7073,
	call	free	#
.L9:
	.loc 1 100 0 is_stmt 1
	addl	$1, -4(%rbp)	#, pos
.L5:
	.loc 1 100 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp135
	movl	20(%rax), %eax	# h_3(D)->num, D.7069
	cmpl	-4(%rbp), %eax	# pos, D.7069
	jg	.L10	#,
	.loc 1 107 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp136
	movq	8(%rax), %rax	# h_3(D)->unsrt, D.7070
	movq	%rax, %rdi	# D.7070,
	call	free	#
	.loc 1 108 0
	movq	-24(%rbp), %rax	# h, tmp137
	movq	(%rax), %rax	# h_3(D)->hit, D.7074
	testq	%rax, %rax	# D.7074
	je	.L11	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp138
	movq	(%rax), %rax	# h_3(D)->hit, D.7074
	movq	%rax, %rdi	# D.7074,
	call	free	#
.L11:
	.loc 1 109 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free	#
	.loc 1 110 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FreeTophits, .-FreeTophits
	.globl	AllocFancyAli
	.type	AllocFancyAli, @function
AllocFancyAli:
.LFB5:
	.loc 1 114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 117 0
	movl	$72, %edx	#,
	movl	$117, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp67, ali
	.loc 1 118 0
	movq	-8(%rbp), %rax	# ali, tmp68
	movq	$0, 32(%rax)	#, ali_1->aseq
	movq	-8(%rbp), %rax	# ali, tmp69
	movq	32(%rax), %rdx	# ali_1->aseq, D.7075
	movq	-8(%rbp), %rax	# ali, tmp70
	movq	%rdx, 24(%rax)	# D.7075, ali_1->mline
	movq	-8(%rbp), %rax	# ali, tmp71
	movq	24(%rax), %rdx	# ali_1->mline, D.7075
	movq	-8(%rbp), %rax	# ali, tmp72
	movq	%rdx, 16(%rax)	# D.7075, ali_1->model
	movq	-8(%rbp), %rax	# ali, tmp73
	movq	16(%rax), %rdx	# ali_1->model, D.7075
	movq	-8(%rbp), %rax	# ali, tmp74
	movq	%rdx, 8(%rax)	# D.7075, ali_1->csline
	movq	-8(%rbp), %rax	# ali, tmp75
	movq	8(%rax), %rdx	# ali_1->csline, D.7075
	movq	-8(%rbp), %rax	# ali, tmp76
	movq	%rdx, (%rax)	# D.7075, ali_1->rfline
	.loc 1 119 0
	movq	-8(%rbp), %rax	# ali, tmp77
	movq	$0, 56(%rax)	#, ali_1->target
	movq	-8(%rbp), %rax	# ali, tmp78
	movq	56(%rax), %rdx	# ali_1->target, D.7075
	movq	-8(%rbp), %rax	# ali, tmp79
	movq	%rdx, 48(%rax)	# D.7075, ali_1->query
	.loc 1 120 0
	movq	-8(%rbp), %rax	# ali, tmp80
	movl	$0, 68(%rax)	#, ali_1->sqto
	movq	-8(%rbp), %rax	# ali, tmp81
	movl	68(%rax), %edx	# ali_1->sqto, D.7076
	movq	-8(%rbp), %rax	# ali, tmp82
	movl	%edx, 64(%rax)	# D.7076, ali_1->sqfrom
	.loc 1 121 0
	movq	-8(%rbp), %rax	# ali, D.7077
	.loc 1 122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	AllocFancyAli, .-AllocFancyAli
	.globl	FreeFancyAli
	.type	FreeFancyAli, @function
FreeFancyAli:
.LFB6:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ali, ali
	.loc 1 126 0
	cmpq	$0, -8(%rbp)	#, ali
	je	.L14	#,
	.loc 1 127 0
	movq	-8(%rbp), %rax	# ali, tmp73
	movq	(%rax), %rax	# ali_1(D)->rfline, D.7078
	testq	%rax, %rax	# D.7078
	je	.L16	#,
	.loc 1 127 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp74
	movq	(%rax), %rax	# ali_1(D)->rfline, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L16:
	.loc 1 128 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp75
	movq	8(%rax), %rax	# ali_1(D)->csline, D.7078
	testq	%rax, %rax	# D.7078
	je	.L17	#,
	.loc 1 128 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp76
	movq	8(%rax), %rax	# ali_1(D)->csline, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L17:
	.loc 1 129 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp77
	movq	16(%rax), %rax	# ali_1(D)->model, D.7078
	testq	%rax, %rax	# D.7078
	je	.L18	#,
	.loc 1 129 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp78
	movq	16(%rax), %rax	# ali_1(D)->model, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L18:
	.loc 1 130 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp79
	movq	24(%rax), %rax	# ali_1(D)->mline, D.7078
	testq	%rax, %rax	# D.7078
	je	.L19	#,
	.loc 1 130 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp80
	movq	24(%rax), %rax	# ali_1(D)->mline, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L19:
	.loc 1 131 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp81
	movq	32(%rax), %rax	# ali_1(D)->aseq, D.7078
	testq	%rax, %rax	# D.7078
	je	.L20	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp82
	movq	32(%rax), %rax	# ali_1(D)->aseq, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L20:
	.loc 1 132 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp83
	movq	48(%rax), %rax	# ali_1(D)->query, D.7078
	testq	%rax, %rax	# D.7078
	je	.L21	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp84
	movq	48(%rax), %rax	# ali_1(D)->query, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L21:
	.loc 1 133 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp85
	movq	56(%rax), %rax	# ali_1(D)->target, D.7078
	testq	%rax, %rax	# D.7078
	je	.L22	#,
	.loc 1 133 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ali, tmp86
	movq	56(%rax), %rax	# ali_1(D)->target, D.7078
	movq	%rax, %rdi	# D.7078,
	call	free	#
.L22:
	.loc 1 134 0 is_stmt 1
	movq	-8(%rbp), %rax	# ali, tmp87
	movq	%rax, %rdi	# tmp87,
	call	free	#
.L14:
	.loc 1 136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FreeFancyAli, .-FreeFancyAli
	.globl	RegisterHit
	.type	RegisterHit, @function
RegisterHit:
.LFB7:
	.loc 1 183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# h, h
	movsd	%xmm0, -32(%rbp)	# key, key
	movsd	%xmm1, -40(%rbp)	# pvalue, pvalue
	movss	%xmm2, -44(%rbp)	# score, score
	movsd	%xmm3, -56(%rbp)	# motherp, motherp
	movss	%xmm4, -48(%rbp)	# mothersc, mothersc
	movq	%rsi, -64(%rbp)	# name, name
	movq	%rdx, -72(%rbp)	# acc, acc
	movq	%rcx, -80(%rbp)	# desc, desc
	movl	%r8d, -84(%rbp)	# sqfrom, sqfrom
	movl	%r9d, -88(%rbp)	# sqto, sqto
	.loc 1 186 0
	movq	-24(%rbp), %rax	# h, tmp151
	movl	20(%rax), %edx	# h_1(D)->num, D.7079
	movq	-24(%rbp), %rax	# h, tmp152
	movl	16(%rax), %eax	# h_1(D)->alloc, D.7079
	cmpl	%eax, %edx	# D.7079, D.7079
	jne	.L24	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp153
	movq	%rax, %rdi	# tmp153,
	call	GrowTophits	#
.L24:
	.loc 1 188 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp154
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp155
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp156
	addq	%rax, %rax	# tmp156
	addq	%rdx, %rax	# D.7081, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.7081, tmp156
	salq	$3, %rax	#, tmp157
	leaq	(%rcx,%rax), %rbx	#, D.7080
	movq	-64(%rbp), %rax	# name, tmp158
	movq	%rax, %rdi	# tmp158,
	call	Strdup	#
	movq	%rax, 40(%rbx)	# D.7082, _8->name
	.loc 1 189 0
	movq	-24(%rbp), %rax	# h, tmp159
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp160
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp161
	addq	%rax, %rax	# tmp161
	addq	%rdx, %rax	# D.7081, tmp161
	salq	$2, %rax	#, tmp161
	addq	%rdx, %rax	# D.7081, tmp161
	salq	$3, %rax	#, tmp162
	leaq	(%rcx,%rax), %rbx	#, D.7080
	movq	-72(%rbp), %rax	# acc, tmp163
	movq	%rax, %rdi	# tmp163,
	call	Strdup	#
	movq	%rax, 48(%rbx)	# D.7082, _15->acc
	.loc 1 190 0
	movq	-24(%rbp), %rax	# h, tmp164
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp165
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp166
	addq	%rax, %rax	# tmp166
	addq	%rdx, %rax	# D.7081, tmp166
	salq	$2, %rax	#, tmp166
	addq	%rdx, %rax	# D.7081, tmp166
	salq	$3, %rax	#, tmp167
	leaq	(%rcx,%rax), %rbx	#, D.7080
	movq	-80(%rbp), %rax	# desc, tmp168
	movq	%rax, %rdi	# tmp168,
	call	Strdup	#
	movq	%rax, 56(%rbx)	# D.7082, _22->desc
	.loc 1 191 0
	movq	-24(%rbp), %rax	# h, tmp169
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp170
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp171
	addq	%rax, %rax	# tmp171
	addq	%rdx, %rax	# D.7081, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.7081, tmp171
	salq	$3, %rax	#, tmp172
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movq	-32(%rbp), %rax	# key, tmp173
	movq	%rax, (%rdx)	# tmp173, _29->sortkey
	.loc 1 192 0
	movq	-24(%rbp), %rax	# h, tmp174
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp175
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp176
	addq	%rax, %rax	# tmp176
	addq	%rdx, %rax	# D.7081, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# D.7081, tmp176
	salq	$3, %rax	#, tmp177
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movq	-40(%rbp), %rax	# pvalue, tmp178
	movq	%rax, 16(%rdx)	# tmp178, _35->pvalue
	.loc 1 193 0
	movq	-24(%rbp), %rax	# h, tmp179
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp180
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.7081, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# D.7081, tmp181
	salq	$3, %rax	#, tmp182
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	-44(%rbp), %eax	# score, tmp183
	movl	%eax, 8(%rdx)	# tmp183, _41->score
	.loc 1 194 0
	movq	-24(%rbp), %rax	# h, tmp184
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp185
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp186
	addq	%rax, %rax	# tmp186
	addq	%rdx, %rax	# D.7081, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.7081, tmp186
	salq	$3, %rax	#, tmp187
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movq	-56(%rbp), %rax	# motherp, tmp188
	movq	%rax, 32(%rdx)	# tmp188, _47->motherp
	.loc 1 195 0
	movq	-24(%rbp), %rax	# h, tmp189
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp190
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp191
	addq	%rax, %rax	# tmp191
	addq	%rdx, %rax	# D.7081, tmp191
	salq	$2, %rax	#, tmp191
	addq	%rdx, %rax	# D.7081, tmp191
	salq	$3, %rax	#, tmp192
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	-48(%rbp), %eax	# mothersc, tmp193
	movl	%eax, 24(%rdx)	# tmp193, _53->mothersc
	.loc 1 196 0
	movq	-24(%rbp), %rax	# h, tmp194
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp195
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp196
	addq	%rax, %rax	# tmp196
	addq	%rdx, %rax	# D.7081, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# D.7081, tmp196
	salq	$3, %rax	#, tmp197
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	-84(%rbp), %eax	# sqfrom, tmp198
	movl	%eax, 64(%rdx)	# tmp198, _59->sqfrom
	.loc 1 197 0
	movq	-24(%rbp), %rax	# h, tmp199
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp200
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp201
	addq	%rax, %rax	# tmp201
	addq	%rdx, %rax	# D.7081, tmp201
	salq	$2, %rax	#, tmp201
	addq	%rdx, %rax	# D.7081, tmp201
	salq	$3, %rax	#, tmp202
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	-88(%rbp), %eax	# sqto, tmp203
	movl	%eax, 68(%rdx)	# tmp203, _65->sqto
	.loc 1 198 0
	movq	-24(%rbp), %rax	# h, tmp204
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp205
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp206
	addq	%rax, %rax	# tmp206
	addq	%rdx, %rax	# D.7081, tmp206
	salq	$2, %rax	#, tmp206
	addq	%rdx, %rax	# D.7081, tmp206
	salq	$3, %rax	#, tmp207
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	16(%rbp), %eax	# sqlen, tmp208
	movl	%eax, 72(%rdx)	# tmp208, _71->sqlen
	.loc 1 199 0
	movq	-24(%rbp), %rax	# h, tmp209
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp210
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp211
	addq	%rax, %rax	# tmp211
	addq	%rdx, %rax	# D.7081, tmp211
	salq	$2, %rax	#, tmp211
	addq	%rdx, %rax	# D.7081, tmp211
	salq	$3, %rax	#, tmp212
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	24(%rbp), %eax	# hmmfrom, tmp213
	movl	%eax, 76(%rdx)	# tmp213, _77->hmmfrom
	.loc 1 200 0
	movq	-24(%rbp), %rax	# h, tmp214
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp215
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp216
	addq	%rax, %rax	# tmp216
	addq	%rdx, %rax	# D.7081, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# D.7081, tmp216
	salq	$3, %rax	#, tmp217
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	32(%rbp), %eax	# hmmto, tmp218
	movl	%eax, 80(%rdx)	# tmp218, _83->hmmto
	.loc 1 201 0
	movq	-24(%rbp), %rax	# h, tmp219
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp220
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp221
	addq	%rax, %rax	# tmp221
	addq	%rdx, %rax	# D.7081, tmp221
	salq	$2, %rax	#, tmp221
	addq	%rdx, %rax	# D.7081, tmp221
	salq	$3, %rax	#, tmp222
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	40(%rbp), %eax	# hmmlen, tmp223
	movl	%eax, 84(%rdx)	# tmp223, _89->hmmlen
	.loc 1 202 0
	movq	-24(%rbp), %rax	# h, tmp224
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp225
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp226
	addq	%rax, %rax	# tmp226
	addq	%rdx, %rax	# D.7081, tmp226
	salq	$2, %rax	#, tmp226
	addq	%rdx, %rax	# D.7081, tmp226
	salq	$3, %rax	#, tmp227
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	48(%rbp), %eax	# domidx, tmp228
	movl	%eax, 88(%rdx)	# tmp228, _95->domidx
	.loc 1 203 0
	movq	-24(%rbp), %rax	# h, tmp229
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp230
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp231
	addq	%rax, %rax	# tmp231
	addq	%rdx, %rax	# D.7081, tmp231
	salq	$2, %rax	#, tmp231
	addq	%rdx, %rax	# D.7081, tmp231
	salq	$3, %rax	#, tmp232
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movl	56(%rbp), %eax	# ndom, tmp233
	movl	%eax, 92(%rdx)	# tmp233, _101->ndom
	.loc 1 204 0
	movq	-24(%rbp), %rax	# h, tmp234
	movq	8(%rax), %rcx	# h_1(D)->unsrt, D.7080
	movq	-24(%rbp), %rax	# h, tmp235
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	movslq	%eax, %rdx	# D.7079, D.7081
	movq	%rdx, %rax	# D.7081, tmp236
	addq	%rax, %rax	# tmp236
	addq	%rdx, %rax	# D.7081, tmp236
	salq	$2, %rax	#, tmp236
	addq	%rdx, %rax	# D.7081, tmp236
	salq	$3, %rax	#, tmp237
	leaq	(%rcx,%rax), %rdx	#, D.7080
	movq	64(%rbp), %rax	# ali, tmp238
	movq	%rax, 96(%rdx)	# tmp238, _107->ali
	.loc 1 205 0
	movq	-24(%rbp), %rax	# h, tmp239
	movl	20(%rax), %eax	# h_1(D)->num, D.7079
	leal	1(%rax), %edx	#, D.7079
	movq	-24(%rbp), %rax	# h, tmp240
	movl	%edx, 20(%rax)	# D.7079, h_1(D)->num
	.loc 1 206 0
	nop
	.loc 1 207 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	RegisterHit, .-RegisterHit
	.globl	GetRankedHit
	.type	GetRankedHit, @function
GetRankedHit:
.LFB8:
	.loc 1 228 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# h, h
	movl	%esi, -12(%rbp)	# rank, rank
	movq	%rdx, -24(%rbp)	# r_pvalue, r_pvalue
	movq	%rcx, -32(%rbp)	# r_score, r_score
	movq	%r8, -40(%rbp)	# r_motherp, r_motherp
	movq	%r9, -48(%rbp)	# r_mothersc, r_mothersc
	.loc 1 229 0
	cmpq	$0, -24(%rbp)	#, r_pvalue
	je	.L27	#,
	.loc 1 229 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp155
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp156
	movslq	%edx, %rdx	# tmp156, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_7, D.7085
	movq	16(%rax), %rax	# _8->pvalue, D.7086
	movq	-24(%rbp), %rdx	# r_pvalue, tmp157
	movq	%rax, (%rdx)	# D.7086, *r_pvalue_1(D)
.L27:
	.loc 1 230 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, r_score
	je	.L28	#,
	.loc 1 230 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp158
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp159
	movslq	%edx, %rdx	# tmp159, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_14, D.7085
	movl	8(%rax), %eax	# _15->score, D.7087
	movq	-32(%rbp), %rdx	# r_score, tmp160
	movl	%eax, (%rdx)	# D.7087, *r_score_10(D)
.L28:
	.loc 1 231 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, r_motherp
	je	.L29	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp161
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp162
	movslq	%edx, %rdx	# tmp162, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_21, D.7085
	movq	32(%rax), %rax	# _22->motherp, D.7086
	movq	-40(%rbp), %rdx	# r_motherp, tmp163
	movq	%rax, (%rdx)	# D.7086, *r_motherp_17(D)
.L29:
	.loc 1 232 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, r_mothersc
	je	.L30	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp164
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp165
	movslq	%edx, %rdx	# tmp165, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_28, D.7085
	movl	24(%rax), %eax	# _29->mothersc, D.7087
	movq	-48(%rbp), %rdx	# r_mothersc, tmp166
	movl	%eax, (%rdx)	# D.7087, *r_mothersc_24(D)
.L30:
	.loc 1 233 0 is_stmt 1
	cmpq	$0, 16(%rbp)	#, r_name
	je	.L31	#,
	.loc 1 233 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp167
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp168
	movslq	%edx, %rdx	# tmp168, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_35, D.7085
	movq	40(%rax), %rdx	# _36->name, D.7088
	movq	16(%rbp), %rax	# r_name, tmp169
	movq	%rdx, (%rax)	# D.7088, *r_name_31(D)
.L31:
	.loc 1 234 0 is_stmt 1
	cmpq	$0, 24(%rbp)	#, r_acc
	je	.L32	#,
	.loc 1 234 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp170
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp171
	movslq	%edx, %rdx	# tmp171, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_42, D.7085
	movq	48(%rax), %rdx	# _43->acc, D.7088
	movq	24(%rbp), %rax	# r_acc, tmp172
	movq	%rdx, (%rax)	# D.7088, *r_acc_38(D)
.L32:
	.loc 1 235 0 is_stmt 1
	cmpq	$0, 32(%rbp)	#, r_desc
	je	.L33	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp173
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp174
	movslq	%edx, %rdx	# tmp174, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_49, D.7085
	movq	56(%rax), %rdx	# _50->desc, D.7088
	movq	32(%rbp), %rax	# r_desc, tmp175
	movq	%rdx, (%rax)	# D.7088, *r_desc_45(D)
.L33:
	.loc 1 236 0 is_stmt 1
	cmpq	$0, 40(%rbp)	#, r_sqfrom
	je	.L34	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp176
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp177
	movslq	%edx, %rdx	# tmp177, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_56, D.7085
	movl	64(%rax), %edx	# _57->sqfrom, D.7089
	movq	40(%rbp), %rax	# r_sqfrom, tmp178
	movl	%edx, (%rax)	# D.7089, *r_sqfrom_52(D)
.L34:
	.loc 1 237 0 is_stmt 1
	cmpq	$0, 48(%rbp)	#, r_sqto
	je	.L35	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp179
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp180
	movslq	%edx, %rdx	# tmp180, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_63, D.7085
	movl	68(%rax), %edx	# _64->sqto, D.7089
	movq	48(%rbp), %rax	# r_sqto, tmp181
	movl	%edx, (%rax)	# D.7089, *r_sqto_59(D)
.L35:
	.loc 1 238 0 is_stmt 1
	cmpq	$0, 56(%rbp)	#, r_sqlen
	je	.L36	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp182
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp183
	movslq	%edx, %rdx	# tmp183, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_70, D.7085
	movl	72(%rax), %edx	# _71->sqlen, D.7089
	movq	56(%rbp), %rax	# r_sqlen, tmp184
	movl	%edx, (%rax)	# D.7089, *r_sqlen_66(D)
.L36:
	.loc 1 239 0 is_stmt 1
	cmpq	$0, 64(%rbp)	#, r_hmmfrom
	je	.L37	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp185
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp186
	movslq	%edx, %rdx	# tmp186, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_77, D.7085
	movl	76(%rax), %edx	# _78->hmmfrom, D.7089
	movq	64(%rbp), %rax	# r_hmmfrom, tmp187
	movl	%edx, (%rax)	# D.7089, *r_hmmfrom_73(D)
.L37:
	.loc 1 240 0 is_stmt 1
	cmpq	$0, 72(%rbp)	#, r_hmmto
	je	.L38	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp188
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp189
	movslq	%edx, %rdx	# tmp189, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_84, D.7085
	movl	80(%rax), %edx	# _85->hmmto, D.7089
	movq	72(%rbp), %rax	# r_hmmto, tmp190
	movl	%edx, (%rax)	# D.7089, *r_hmmto_80(D)
.L38:
	.loc 1 241 0 is_stmt 1
	cmpq	$0, 80(%rbp)	#, r_hmmlen
	je	.L39	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp191
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp192
	movslq	%edx, %rdx	# tmp192, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_91, D.7085
	movl	84(%rax), %edx	# _92->hmmlen, D.7089
	movq	80(%rbp), %rax	# r_hmmlen, tmp193
	movl	%edx, (%rax)	# D.7089, *r_hmmlen_87(D)
.L39:
	.loc 1 242 0 is_stmt 1
	cmpq	$0, 88(%rbp)	#, r_domidx
	je	.L40	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp194
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp195
	movslq	%edx, %rdx	# tmp195, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_98, D.7085
	movl	88(%rax), %edx	# _99->domidx, D.7089
	movq	88(%rbp), %rax	# r_domidx, tmp196
	movl	%edx, (%rax)	# D.7089, *r_domidx_94(D)
.L40:
	.loc 1 243 0 is_stmt 1
	cmpq	$0, 96(%rbp)	#, r_ndom
	je	.L41	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp197
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp198
	movslq	%edx, %rdx	# tmp198, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_105, D.7085
	movl	92(%rax), %edx	# _106->ndom, D.7089
	movq	96(%rbp), %rax	# r_ndom, tmp199
	movl	%edx, (%rax)	# D.7089, *r_ndom_101(D)
.L41:
	.loc 1 244 0 is_stmt 1
	cmpq	$0, 104(%rbp)	#, r_ali
	je	.L26	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# h, tmp200
	movq	(%rax), %rax	# h_2(D)->hit, D.7083
	movl	-12(%rbp), %edx	# rank, tmp201
	movslq	%edx, %rdx	# tmp201, D.7084
	salq	$3, %rdx	#, D.7084
	addq	%rdx, %rax	# D.7084, D.7083
	movq	(%rax), %rax	# *_112, D.7085
	movq	96(%rax), %rdx	# _113->ali, D.7090
	movq	104(%rbp), %rax	# r_ali, tmp202
	movq	%rdx, (%rax)	# D.7090, *r_ali_108(D)
.L26:
	.loc 1 245 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	GetRankedHit, .-GetRankedHit
	.globl	TophitsMaxName
	.type	TophitsMaxName, @function
TophitsMaxName:
.LFB9:
	.loc 1 254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	.loc 1 258 0
	movl	$0, -8(%rbp)	#, maxlen
	.loc 1 259 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L44	#
.L46:
	.loc 1 261 0
	movq	-24(%rbp), %rax	# h, tmp68
	movq	8(%rax), %rcx	# h_6(D)->unsrt, D.7092
	movl	-12(%rbp), %eax	# i, tmp69
	movslq	%eax, %rdx	# tmp69, D.7093
	movq	%rdx, %rax	# D.7093, tmp70
	addq	%rax, %rax	# tmp70
	addq	%rdx, %rax	# D.7093, tmp70
	salq	$2, %rax	#, tmp70
	addq	%rdx, %rax	# D.7093, tmp70
	salq	$3, %rax	#, tmp71
	addq	%rcx, %rax	# D.7092, D.7092
	movq	40(%rax), %rax	# _11->name, D.7094
	movq	%rax, %rdi	# D.7094,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.7093, len
	.loc 1 262 0
	movl	-4(%rbp), %eax	# len, tmp72
	cmpl	-8(%rbp), %eax	# maxlen, tmp72
	jle	.L45	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# len, tmp73
	movl	%eax, -8(%rbp)	# tmp73, maxlen
.L45:
	.loc 1 259 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L44:
	.loc 1 259 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp74
	movl	20(%rax), %eax	# h_6(D)->num, D.7091
	cmpl	-12(%rbp), %eax	# i, D.7091
	jg	.L46	#,
	.loc 1 264 0 is_stmt 1
	movl	-8(%rbp), %eax	# maxlen, D.7091
	.loc 1 265 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	TophitsMaxName, .-TophitsMaxName
	.globl	hit_comparison
	.type	hit_comparison, @function
hit_comparison:
.LFB10:
	.loc 1 277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vh1, vh1
	movq	%rsi, -32(%rbp)	# vh2, vh2
	.loc 1 279 0
	movq	-24(%rbp), %rax	# vh1, tmp67
	movq	(%rax), %rax	# MEM[(struct hit_s * *)vh1_2(D)], tmp68
	movq	%rax, -16(%rbp)	# tmp68, h1
	.loc 1 280 0
	movq	-32(%rbp), %rax	# vh2, tmp69
	movq	(%rax), %rax	# MEM[(struct hit_s * *)vh2_4(D)], tmp70
	movq	%rax, -8(%rbp)	# tmp70, h2
	.loc 1 282 0
	movq	-16(%rbp), %rax	# h1, tmp71
	movsd	(%rax), %xmm1	# h1_3->sortkey, D.7096
	movq	-8(%rbp), %rax	# h2, tmp72
	movsd	(%rax), %xmm0	# h2_5->sortkey, D.7096
	ucomisd	%xmm1, %xmm0	# D.7096, D.7096
	jbe	.L59	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7095
	jmp	.L51	#
.L59:
	.loc 1 283 0 is_stmt 1
	movq	-16(%rbp), %rax	# h1, tmp73
	movsd	(%rax), %xmm0	# h1_3->sortkey, D.7096
	movq	-8(%rbp), %rax	# h2, tmp74
	movsd	(%rax), %xmm1	# h2_5->sortkey, D.7096
	ucomisd	%xmm1, %xmm0	# D.7096, D.7096
	jbe	.L60	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.7095
	jmp	.L51	#
.L60:
	.loc 1 284 0 is_stmt 1
	movq	-16(%rbp), %rax	# h1, tmp75
	movsd	(%rax), %xmm0	# h1_3->sortkey, D.7096
	movq	-8(%rbp), %rax	# h2, tmp76
	movsd	(%rax), %xmm1	# h2_5->sortkey, D.7096
	ucomisd	%xmm1, %xmm0	# D.7096, D.7096
	jp	.L54	#,
	ucomisd	%xmm1, %xmm0	# D.7096, D.7096
	jne	.L54	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7095
	jmp	.L51	#
.L54:
	.loc 1 286 0 is_stmt 1
	movl	$0, %eax	#, D.7095
.L51:
	.loc 1 287 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	hit_comparison, .-hit_comparison
	.globl	FullSortTophits
	.type	FullSortTophits, @function
FullSortTophits:
.LFB11:
	.loc 1 290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	.loc 1 296 0
	movq	-24(%rbp), %rax	# h, tmp76
	movl	20(%rax), %eax	# h_2(D)->num, D.7097
	testl	%eax, %eax	# D.7097
	jne	.L62	#,
	.loc 1 296 0 is_stmt 0 discriminator 1
	jmp	.L61	#
.L62:
	.loc 1 300 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp77
	movl	20(%rax), %eax	# h_2(D)->num, D.7097
	cltq
	salq	$3, %rax	#, D.7098
	movq	%rax, %rdx	# D.7098,
	movl	$300, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# h, tmp78
	movq	%rax, (%rdx)	# D.7099, h_2(D)->hit
	.loc 1 301 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L64	#
.L65:
	.loc 1 302 0 discriminator 2
	movq	-24(%rbp), %rax	# h, tmp79
	movq	(%rax), %rax	# h_2(D)->hit, D.7100
	movl	-4(%rbp), %edx	# i, tmp80
	movslq	%edx, %rdx	# tmp80, D.7098
	salq	$3, %rdx	#, D.7098
	leaq	(%rax,%rdx), %rcx	#, D.7100
	movq	-24(%rbp), %rax	# h, tmp81
	movq	8(%rax), %rsi	# h_2(D)->unsrt, D.7101
	movl	-4(%rbp), %eax	# i, tmp82
	movslq	%eax, %rdx	# tmp82, D.7098
	movq	%rdx, %rax	# D.7098, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rdx, %rax	# D.7098, tmp83
	salq	$2, %rax	#, tmp83
	addq	%rdx, %rax	# D.7098, tmp83
	salq	$3, %rax	#, tmp84
	addq	%rsi, %rax	# D.7101, D.7101
	movq	%rax, (%rcx)	# D.7101, *_13
	.loc 1 301 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L64:
	.loc 1 301 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp85
	movl	20(%rax), %eax	# h_2(D)->num, D.7097
	cmpl	-4(%rbp), %eax	# i, D.7097
	jg	.L65	#,
	.loc 1 306 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp86
	movl	20(%rax), %eax	# h_2(D)->num, D.7097
	cmpl	$1, %eax	#, D.7097
	jle	.L61	#,
	.loc 1 307 0
	movq	-24(%rbp), %rax	# h, tmp87
	movl	20(%rax), %esi	# h_2(D)->num, D.7097
	movq	-24(%rbp), %rax	# h, tmp88
	movq	(%rax), %rax	# h_2(D)->hit, D.7100
	movl	$hit_comparison, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.7100,
	movl	$0, %eax	#,
	call	specqsort	#
.L61:
	.loc 1 308 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	FullSortTophits, .-FullSortTophits
	.section	.rodata
.LC1:
	.string	"tophits_s report:"
	.align 8
.LC2:
	.string	"     Total hits:           %d\n"
	.align 8
.LC3:
	.string	"     Satisfying E cutoff:  %d\n"
	.align 8
.LC4:
	.string	"     Total memory:         %dK\n"
	.text
	.globl	TophitsReport
	.type	TophitsReport, @function
TophitsReport:
.LFB12:
	.loc 1 329 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	movsd	%xmm0, -32(%rbp)	# E, E
	movl	%esi, -36(%rbp)	# nseq, nseq
	.loc 1 338 0
	movq	-24(%rbp), %rax	# h, tmp200
	movl	16(%rax), %eax	# h_15(D)->alloc, D.7102
	cltq
	imull	$104, %eax, %eax	#, D.7104, D.7104
	addl	$32, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
	.loc 1 339 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L67	#
.L78:
	.loc 1 341 0
	movq	-24(%rbp), %rax	# h, tmp201
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp202
	movslq	%eax, %rdx	# tmp202, D.7103
	movq	%rdx, %rax	# D.7103, tmp203
	addq	%rax, %rax	# tmp203
	addq	%rdx, %rax	# D.7103, tmp203
	salq	$2, %rax	#, tmp203
	addq	%rdx, %rax	# D.7103, tmp203
	salq	$3, %rax	#, tmp204
	addq	%rcx, %rax	# D.7105, D.7105
	movq	40(%rax), %rax	# _27->name, D.7106
	testq	%rax, %rax	# D.7106
	je	.L68	#,
	.loc 1 342 0
	movq	-24(%rbp), %rax	# h, tmp205
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp206
	movslq	%eax, %rdx	# tmp206, D.7103
	movq	%rdx, %rax	# D.7103, tmp207
	addq	%rax, %rax	# tmp207
	addq	%rdx, %rax	# D.7103, tmp207
	salq	$2, %rax	#, tmp207
	addq	%rdx, %rax	# D.7103, tmp207
	salq	$3, %rax	#, tmp208
	addq	%rcx, %rax	# D.7105, D.7105
	movq	40(%rax), %rax	# _32->name, D.7106
	movq	%rax, %rdi	# D.7106,
	call	strlen	#
	movl	%eax, %edx	# D.7103, D.7104
	movl	-12(%rbp), %eax	# memused, memused.0
	addl	%edx, %eax	# D.7104, D.7104
	addl	$1, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
.L68:
	.loc 1 343 0
	movq	-24(%rbp), %rax	# h, tmp209
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp210
	movslq	%eax, %rdx	# tmp210, D.7103
	movq	%rdx, %rax	# D.7103, tmp211
	addq	%rax, %rax	# tmp211
	addq	%rdx, %rax	# D.7103, tmp211
	salq	$2, %rax	#, tmp211
	addq	%rdx, %rax	# D.7103, tmp211
	salq	$3, %rax	#, tmp212
	addq	%rcx, %rax	# D.7105, D.7105
	movq	48(%rax), %rax	# _43->acc, D.7106
	testq	%rax, %rax	# D.7106
	je	.L69	#,
	.loc 1 344 0
	movq	-24(%rbp), %rax	# h, tmp213
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp214
	movslq	%eax, %rdx	# tmp214, D.7103
	movq	%rdx, %rax	# D.7103, tmp215
	addq	%rax, %rax	# tmp215
	addq	%rdx, %rax	# D.7103, tmp215
	salq	$2, %rax	#, tmp215
	addq	%rdx, %rax	# D.7103, tmp215
	salq	$3, %rax	#, tmp216
	addq	%rcx, %rax	# D.7105, D.7105
	movq	48(%rax), %rax	# _48->acc, D.7106
	movq	%rax, %rdi	# D.7106,
	call	strlen	#
	movl	%eax, %edx	# D.7103, D.7104
	movl	-12(%rbp), %eax	# memused, memused.1
	addl	%edx, %eax	# D.7104, D.7104
	addl	$1, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
.L69:
	.loc 1 345 0
	movq	-24(%rbp), %rax	# h, tmp217
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp218
	movslq	%eax, %rdx	# tmp218, D.7103
	movq	%rdx, %rax	# D.7103, tmp219
	addq	%rax, %rax	# tmp219
	addq	%rdx, %rax	# D.7103, tmp219
	salq	$2, %rax	#, tmp219
	addq	%rdx, %rax	# D.7103, tmp219
	salq	$3, %rax	#, tmp220
	addq	%rcx, %rax	# D.7105, D.7105
	movq	56(%rax), %rax	# _59->desc, D.7106
	testq	%rax, %rax	# D.7106
	je	.L70	#,
	.loc 1 346 0
	movq	-24(%rbp), %rax	# h, tmp221
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp222
	movslq	%eax, %rdx	# tmp222, D.7103
	movq	%rdx, %rax	# D.7103, tmp223
	addq	%rax, %rax	# tmp223
	addq	%rdx, %rax	# D.7103, tmp223
	salq	$2, %rax	#, tmp223
	addq	%rdx, %rax	# D.7103, tmp223
	salq	$3, %rax	#, tmp224
	addq	%rcx, %rax	# D.7105, D.7105
	movq	56(%rax), %rax	# _64->desc, D.7106
	movq	%rax, %rdi	# D.7106,
	call	strlen	#
	movl	%eax, %edx	# D.7103, D.7104
	movl	-12(%rbp), %eax	# memused, memused.2
	addl	%edx, %eax	# D.7104, D.7104
	addl	$1, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
.L70:
	.loc 1 347 0
	movq	-24(%rbp), %rax	# h, tmp225
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp226
	movslq	%eax, %rdx	# tmp226, D.7103
	movq	%rdx, %rax	# D.7103, tmp227
	addq	%rax, %rax	# tmp227
	addq	%rdx, %rax	# D.7103, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# D.7103, tmp227
	salq	$3, %rax	#, tmp228
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _75->ali, D.7107
	testq	%rax, %rax	# D.7107
	je	.L71	#,
	.loc 1 349 0
	movl	-12(%rbp), %eax	# memused, memused.3
	addl	$72, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
	.loc 1 350 0
	movl	$0, -8(%rbp)	#, x
	.loc 1 351 0
	movq	-24(%rbp), %rax	# h, tmp229
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp230
	movslq	%eax, %rdx	# tmp230, D.7103
	movq	%rdx, %rax	# D.7103, tmp231
	addq	%rax, %rax	# tmp231
	addq	%rdx, %rax	# D.7103, tmp231
	salq	$2, %rax	#, tmp231
	addq	%rdx, %rax	# D.7103, tmp231
	salq	$3, %rax	#, tmp232
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _84->ali, D.7107
	movq	(%rax), %rax	# _85->rfline, D.7106
	testq	%rax, %rax	# D.7106
	je	.L72	#,
	.loc 1 351 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, x
.L72:
	.loc 1 352 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp233
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp234
	movslq	%eax, %rdx	# tmp234, D.7103
	movq	%rdx, %rax	# D.7103, tmp235
	addq	%rax, %rax	# tmp235
	addq	%rdx, %rax	# D.7103, tmp235
	salq	$2, %rax	#, tmp235
	addq	%rdx, %rax	# D.7103, tmp235
	salq	$3, %rax	#, tmp236
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _91->ali, D.7107
	movq	8(%rax), %rax	# _92->csline, D.7106
	testq	%rax, %rax	# D.7106
	je	.L73	#,
	.loc 1 352 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, x
.L73:
	.loc 1 353 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp237
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp238
	movslq	%eax, %rdx	# tmp238, D.7103
	movq	%rdx, %rax	# D.7103, tmp239
	addq	%rax, %rax	# tmp239
	addq	%rdx, %rax	# D.7103, tmp239
	salq	$2, %rax	#, tmp239
	addq	%rdx, %rax	# D.7103, tmp239
	salq	$3, %rax	#, tmp240
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _98->ali, D.7107
	movq	16(%rax), %rax	# _99->model, D.7106
	testq	%rax, %rax	# D.7106
	je	.L74	#,
	.loc 1 353 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, x
.L74:
	.loc 1 354 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp241
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp242
	movslq	%eax, %rdx	# tmp242, D.7103
	movq	%rdx, %rax	# D.7103, tmp243
	addq	%rax, %rax	# tmp243
	addq	%rdx, %rax	# D.7103, tmp243
	salq	$2, %rax	#, tmp243
	addq	%rdx, %rax	# D.7103, tmp243
	salq	$3, %rax	#, tmp244
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _105->ali, D.7107
	movq	24(%rax), %rax	# _106->mline, D.7106
	testq	%rax, %rax	# D.7106
	je	.L75	#,
	.loc 1 354 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, x
.L75:
	.loc 1 355 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp245
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp246
	movslq	%eax, %rdx	# tmp246, D.7103
	movq	%rdx, %rax	# D.7103, tmp247
	addq	%rax, %rax	# tmp247
	addq	%rdx, %rax	# D.7103, tmp247
	salq	$2, %rax	#, tmp247
	addq	%rdx, %rax	# D.7103, tmp247
	salq	$3, %rax	#, tmp248
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _112->ali, D.7107
	movq	32(%rax), %rax	# _113->aseq, D.7106
	testq	%rax, %rax	# D.7106
	je	.L76	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, x
.L76:
	.loc 1 356 0 is_stmt 1
	movq	-24(%rbp), %rax	# h, tmp249
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp250
	movslq	%eax, %rdx	# tmp250, D.7103
	movq	%rdx, %rax	# D.7103, tmp251
	addq	%rax, %rax	# tmp251
	addq	%rdx, %rax	# D.7103, tmp251
	salq	$2, %rax	#, tmp251
	addq	%rdx, %rax	# D.7103, tmp251
	salq	$3, %rax	#, tmp252
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _119->ali, D.7107
	movl	40(%rax), %eax	# _120->len, D.7102
	addl	$1, %eax	#, D.7102
	imull	-8(%rbp), %eax	# x, D.7102
	addl	%eax, -12(%rbp)	# D.7102, memused
	.loc 1 358 0
	movq	-24(%rbp), %rax	# h, tmp253
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp254
	movslq	%eax, %rdx	# tmp254, D.7103
	movq	%rdx, %rax	# D.7103, tmp255
	addq	%rax, %rax	# tmp255
	addq	%rdx, %rax	# D.7103, tmp255
	salq	$2, %rax	#, tmp255
	addq	%rdx, %rax	# D.7103, tmp255
	salq	$3, %rax	#, tmp256
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _128->ali, D.7107
	movq	48(%rax), %rax	# _129->query, D.7106
	testq	%rax, %rax	# D.7106
	je	.L77	#,
	.loc 1 359 0
	movq	-24(%rbp), %rax	# h, tmp257
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp258
	movslq	%eax, %rdx	# tmp258, D.7103
	movq	%rdx, %rax	# D.7103, tmp259
	addq	%rax, %rax	# tmp259
	addq	%rdx, %rax	# D.7103, tmp259
	salq	$2, %rax	#, tmp259
	addq	%rdx, %rax	# D.7103, tmp259
	salq	$3, %rax	#, tmp260
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _134->ali, D.7107
	movq	48(%rax), %rax	# _135->query, D.7106
	movq	%rax, %rdi	# D.7106,
	call	strlen	#
	movl	%eax, %edx	# D.7103, D.7104
	movl	-12(%rbp), %eax	# memused, memused.4
	addl	%edx, %eax	# D.7104, D.7104
	addl	$1, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
.L77:
	.loc 1 360 0
	movq	-24(%rbp), %rax	# h, tmp261
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp262
	movslq	%eax, %rdx	# tmp262, D.7103
	movq	%rdx, %rax	# D.7103, tmp263
	addq	%rax, %rax	# tmp263
	addq	%rdx, %rax	# D.7103, tmp263
	salq	$2, %rax	#, tmp263
	addq	%rdx, %rax	# D.7103, tmp263
	salq	$3, %rax	#, tmp264
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _146->ali, D.7107
	movq	56(%rax), %rax	# _147->target, D.7106
	testq	%rax, %rax	# D.7106
	je	.L71	#,
	.loc 1 361 0
	movq	-24(%rbp), %rax	# h, tmp265
	movq	8(%rax), %rcx	# h_15(D)->unsrt, D.7105
	movl	-16(%rbp), %eax	# i, tmp266
	movslq	%eax, %rdx	# tmp266, D.7103
	movq	%rdx, %rax	# D.7103, tmp267
	addq	%rax, %rax	# tmp267
	addq	%rdx, %rax	# D.7103, tmp267
	salq	$2, %rax	#, tmp267
	addq	%rdx, %rax	# D.7103, tmp267
	salq	$3, %rax	#, tmp268
	addq	%rcx, %rax	# D.7105, D.7105
	movq	96(%rax), %rax	# _152->ali, D.7107
	movq	56(%rax), %rax	# _153->target, D.7106
	movq	%rax, %rdi	# D.7106,
	call	strlen	#
	movl	%eax, %edx	# D.7103, D.7104
	movl	-12(%rbp), %eax	# memused, memused.5
	addl	%edx, %eax	# D.7104, D.7104
	addl	$1, %eax	#, D.7104
	movl	%eax, -12(%rbp)	# D.7104, memused
.L71:
	.loc 1 339 0
	addl	$1, -16(%rbp)	#, i
.L67:
	.loc 1 339 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp269
	movl	20(%rax), %eax	# h_15(D)->num, D.7102
	cmpl	-16(%rbp), %eax	# i, D.7102
	jg	.L78	#,
	.loc 1 367 0 is_stmt 1
	movl	$0, -4(%rbp)	#, n
	.loc 1 368 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L79	#
.L83:
	.loc 1 370 0
	movq	-24(%rbp), %rax	# h, tmp270
	movq	(%rax), %rax	# h_15(D)->hit, D.7108
	movl	-16(%rbp), %edx	# i, tmp271
	movslq	%edx, %rdx	# tmp271, D.7103
	salq	$3, %rdx	#, D.7103
	addq	%rdx, %rax	# D.7103, D.7108
	movq	(%rax), %rax	# *_168, D.7105
	movsd	16(%rax), %xmm1	# _169->pvalue, D.7109
	cvtsi2sd	-36(%rbp), %xmm0	# nseq, D.7109
	mulsd	%xmm1, %xmm0	# D.7109, D.7109
	ucomisd	-32(%rbp), %xmm0	# E, D.7109
	jb	.L85	#,
	.loc 1 370 0 is_stmt 0 discriminator 1
	jmp	.L82	#
.L85:
	.loc 1 371 0 is_stmt 1
	addl	$1, -4(%rbp)	#, n
	.loc 1 368 0
	addl	$1, -16(%rbp)	#, i
.L79:
	.loc 1 368 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp272
	movl	20(%rax), %eax	# h_15(D)->num, D.7102
	cmpl	-16(%rbp), %eax	# i, D.7102
	jg	.L83	#,
.L82:
	.loc 1 376 0 is_stmt 1
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 377 0
	movq	-24(%rbp), %rax	# h, tmp273
	movl	20(%rax), %eax	# h_15(D)->num, D.7102
	movl	%eax, %esi	# D.7102,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 378 0
	movl	-4(%rbp), %eax	# n, tmp274
	movl	%eax, %esi	# tmp274,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 379 0
	movl	-12(%rbp), %ecx	# memused, tmp275
	movl	$274877907, %edx	#, tmp277
	movl	%ecx, %eax	# tmp275, tmp280
	imull	%edx	# tmp277
	sarl	$6, %edx	#, tmp278
	movl	%ecx, %eax	# tmp275, tmp279
	sarl	$31, %eax	#, tmp279
	subl	%eax, %edx	# tmp279, D.7102
	movl	%edx, %eax	# D.7102, D.7102
	movl	%eax, %esi	# D.7102,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 380 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	TophitsReport, .-TophitsReport
.Letext0:
	.file 2 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x745
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF73
	.byte	0x1
	.long	.LASF74
	.long	.LASF75
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x49
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.long	0xa1
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x8
	.long	0x73
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0x6
	.long	.LASF22
	.byte	0x48
	.byte	0x2
	.value	0x1bf
	.long	0x13e
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.value	0x1c0
	.long	0x73
	.byte	0
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.value	0x1c1
	.long	0x73
	.byte	0x8
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.value	0x1c2
	.long	0x73
	.byte	0x10
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.value	0x1c3
	.long	0x73
	.byte	0x18
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.value	0x1c4
	.long	0x73
	.byte	0x20
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.value	0x1c5
	.long	0x42
	.byte	0x28
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.value	0x1c6
	.long	0x73
	.byte	0x30
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.value	0x1c7
	.long	0x73
	.byte	0x38
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.value	0x1c8
	.long	0x42
	.byte	0x40
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.value	0x1c9
	.long	0x42
	.byte	0x44
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x68
	.byte	0x2
	.value	0x1d6
	.long	0x229
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.value	0x1d7
	.long	0x80
	.byte	0
	.uleb128 0x7
	.long	.LASF25
	.byte	0x2
	.value	0x1d8
	.long	0x79
	.byte	0x8
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.value	0x1d9
	.long	0x80
	.byte	0x10
	.uleb128 0x7
	.long	.LASF27
	.byte	0x2
	.value	0x1da
	.long	0x79
	.byte	0x18
	.uleb128 0x7
	.long	.LASF28
	.byte	0x2
	.value	0x1db
	.long	0x80
	.byte	0x20
	.uleb128 0x7
	.long	.LASF29
	.byte	0x2
	.value	0x1dc
	.long	0x73
	.byte	0x28
	.uleb128 0x8
	.string	"acc"
	.byte	0x2
	.value	0x1dd
	.long	0x73
	.byte	0x30
	.uleb128 0x7
	.long	.LASF30
	.byte	0x2
	.value	0x1de
	.long	0x73
	.byte	0x38
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.value	0x1df
	.long	0x42
	.byte	0x40
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.value	0x1e0
	.long	0x42
	.byte	0x44
	.uleb128 0x7
	.long	.LASF31
	.byte	0x2
	.value	0x1e1
	.long	0x42
	.byte	0x48
	.uleb128 0x7
	.long	.LASF32
	.byte	0x2
	.value	0x1e2
	.long	0x42
	.byte	0x4c
	.uleb128 0x7
	.long	.LASF33
	.byte	0x2
	.value	0x1e3
	.long	0x42
	.byte	0x50
	.uleb128 0x7
	.long	.LASF34
	.byte	0x2
	.value	0x1e4
	.long	0x42
	.byte	0x54
	.uleb128 0x7
	.long	.LASF35
	.byte	0x2
	.value	0x1e5
	.long	0x42
	.byte	0x58
	.uleb128 0x7
	.long	.LASF36
	.byte	0x2
	.value	0x1e6
	.long	0x42
	.byte	0x5c
	.uleb128 0x8
	.string	"ali"
	.byte	0x2
	.value	0x1e7
	.long	0x229
	.byte	0x60
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xae
	.uleb128 0x6
	.long	.LASF37
	.byte	0x20
	.byte	0x2
	.value	0x1f1
	.long	0x27e
	.uleb128 0x8
	.string	"hit"
	.byte	0x2
	.value	0x1f2
	.long	0x27e
	.byte	0
	.uleb128 0x7
	.long	.LASF38
	.byte	0x2
	.value	0x1f3
	.long	0x284
	.byte	0x8
	.uleb128 0x7
	.long	.LASF39
	.byte	0x2
	.value	0x1f4
	.long	0x42
	.byte	0x10
	.uleb128 0x8
	.string	"num"
	.byte	0x2
	.value	0x1f5
	.long	0x42
	.byte	0x14
	.uleb128 0x7
	.long	.LASF40
	.byte	0x2
	.value	0x1f6
	.long	0x42
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x284
	.uleb128 0x4
	.byte	0x8
	.long	0x13e
	.uleb128 0x9
	.long	.LASF45
	.byte	0x1
	.byte	0x4e
	.long	0x2c8
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.byte	0x4e
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF44
	.byte	0x1
	.byte	0x50
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x22f
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.byte	0x5b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f8
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0x5b
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x61
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x330
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0x61
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"pos"
	.byte	0x1
	.byte	0x63
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x1
	.byte	0x71
	.long	0x229
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x360
	.uleb128 0xe
	.string	"ali"
	.byte	0x1
	.byte	0x73
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x1
	.byte	0x7c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x38c
	.uleb128 0xd
	.string	"ali"
	.byte	0x1
	.byte	0x7c
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x1
	.byte	0xb0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aa
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0xb0
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"key"
	.byte	0x1
	.byte	0xb0
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0xb1
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0xb1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0xb1
	.long	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0xb1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0xb2
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.string	"acc"
	.byte	0x1
	.byte	0xb2
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0xb2
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0xb3
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0xb3
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0xb3
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.byte	0xb4
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0xb4
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0xb4
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.byte	0xb5
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.byte	0xb5
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xd
	.string	"ali"
	.byte	0x1
	.byte	0xb6
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.byte	0
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.byte	0xdc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c6
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0xdc
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF50
	.byte	0x1
	.byte	0xdc
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LASF51
	.byte	0x1
	.byte	0xdd
	.long	0x5c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF52
	.byte	0x1
	.byte	0xdd
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF53
	.byte	0x1
	.byte	0xde
	.long	0x5c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF54
	.byte	0x1
	.byte	0xde
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.byte	0xdf
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF56
	.byte	0x1
	.byte	0xdf
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.long	.LASF57
	.byte	0x1
	.byte	0xdf
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.long	.LASF58
	.byte	0x1
	.byte	0xe0
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xa
	.long	.LASF59
	.byte	0x1
	.byte	0xe0
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1
	.byte	0xe0
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1
	.byte	0xe1
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0xa
	.long	.LASF62
	.byte	0x1
	.byte	0xe1
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0xa
	.long	.LASF63
	.byte	0x1
	.byte	0xe1
	.long	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0xa
	.long	.LASF64
	.byte	0x1
	.byte	0xe2
	.long	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0xa
	.long	.LASF65
	.byte	0x1
	.byte	0xe2
	.long	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0xa
	.long	.LASF66
	.byte	0x1
	.byte	0xe3
	.long	0x5cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 88
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x80
	.uleb128 0x4
	.byte	0x8
	.long	0x229
	.uleb128 0x9
	.long	.LASF67
	.byte	0x1
	.byte	0xfd
	.long	0x42
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x62a
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0xfd
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xff
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.value	0x100
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.value	0x100
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.value	0x114
	.long	0x42
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x687
	.uleb128 0x13
	.string	"vh1"
	.byte	0x1
	.value	0x114
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"vh2"
	.byte	0x1
	.value	0x114
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"h1"
	.byte	0x1
	.value	0x117
	.long	0x284
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"h2"
	.byte	0x1
	.value	0x118
	.long	0x284
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.value	0x121
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ce
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.value	0x121
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x123
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.value	0x133
	.long	0x42
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.value	0x148
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.value	0x148
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"E"
	.byte	0x1
	.value	0x148
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.value	0x148
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x14a
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LASF72
	.byte	0x1
	.value	0x14b
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x14c
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.value	0x14d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
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
.LASF9:
	.string	"float"
.LASF53:
	.string	"r_motherp"
.LASF63:
	.string	"r_hmmlen"
.LASF14:
	.string	"csline"
.LASF61:
	.string	"r_hmmfrom"
.LASF31:
	.string	"sqlen"
.LASF19:
	.string	"target"
.LASF7:
	.string	"short int"
.LASF1:
	.string	"sizetype"
.LASF27:
	.string	"mothersc"
.LASF23:
	.string	"hit_s"
.LASF55:
	.string	"r_name"
.LASF12:
	.string	"long long unsigned int"
.LASF69:
	.string	"hit_comparison"
.LASF42:
	.string	"GrowTophits"
.LASF66:
	.string	"r_ali"
.LASF52:
	.string	"r_score"
.LASF26:
	.string	"pvalue"
.LASF32:
	.string	"hmmfrom"
.LASF74:
	.string	"tophits.c"
.LASF24:
	.string	"sortkey"
.LASF71:
	.string	"nseq"
.LASF50:
	.string	"rank"
.LASF51:
	.string	"r_pvalue"
.LASF45:
	.string	"AllocTophits"
.LASF21:
	.string	"sqto"
.LASF5:
	.string	"unsigned int"
.LASF75:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"long long int"
.LASF76:
	.string	"specqsort"
.LASF65:
	.string	"r_ndom"
.LASF8:
	.string	"long int"
.LASF44:
	.string	"hitlist"
.LASF13:
	.string	"rfline"
.LASF29:
	.string	"name"
.LASF20:
	.string	"sqfrom"
.LASF4:
	.string	"unsigned char"
.LASF59:
	.string	"r_sqto"
.LASF73:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF62:
	.string	"r_hmmto"
.LASF6:
	.string	"signed char"
.LASF25:
	.string	"score"
.LASF72:
	.string	"memused"
.LASF58:
	.string	"r_sqfrom"
.LASF22:
	.string	"fancyali_s"
.LASF33:
	.string	"hmmto"
.LASF37:
	.string	"tophit_s"
.LASF68:
	.string	"maxlen"
.LASF47:
	.string	"FreeFancyAli"
.LASF2:
	.string	"short unsigned int"
.LASF3:
	.string	"char"
.LASF40:
	.string	"lump"
.LASF36:
	.string	"ndom"
.LASF38:
	.string	"unsrt"
.LASF57:
	.string	"r_desc"
.LASF46:
	.string	"AllocFancyAli"
.LASF28:
	.string	"motherp"
.LASF18:
	.string	"query"
.LASF60:
	.string	"r_sqlen"
.LASF56:
	.string	"r_acc"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF77:
	.string	"TophitsReport"
.LASF49:
	.string	"GetRankedHit"
.LASF48:
	.string	"RegisterHit"
.LASF67:
	.string	"TophitsMaxName"
.LASF35:
	.string	"domidx"
.LASF15:
	.string	"model"
.LASF16:
	.string	"mline"
.LASF54:
	.string	"r_mothersc"
.LASF64:
	.string	"r_domidx"
.LASF17:
	.string	"aseq"
.LASF39:
	.string	"alloc"
.LASF41:
	.string	"lumpsize"
.LASF70:
	.string	"FullSortTophits"
.LASF34:
	.string	"hmmlen"
.LASF30:
	.string	"desc"
.LASF43:
	.string	"FreeTophits"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
