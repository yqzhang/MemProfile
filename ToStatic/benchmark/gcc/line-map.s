	.file	"line-map.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 line-map.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	init_line_maps
	.type	init_line_maps, @function
init_line_maps:
.LFB2:
	.file 1 "line-map.c"
	.loc 1 36 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# set, set
	.loc 1 37 0
	movq	-8(%rbp), %rax	# set, tmp59
	movq	$0, (%rax)	#, set_1(D)->maps
	.loc 1 38 0
	movq	-8(%rbp), %rax	# set, tmp60
	movl	$0, 8(%rax)	#, set_1(D)->allocated
	.loc 1 39 0
	movq	-8(%rbp), %rax	# set, tmp61
	movl	$0, 12(%rax)	#, set_1(D)->used
	.loc 1 40 0
	movq	-8(%rbp), %rax	# set, tmp62
	movl	$-1, 16(%rax)	#, set_1(D)->last_listed
	.loc 1 41 0
	movq	-8(%rbp), %rax	# set, tmp63
	movb	$0, 24(%rax)	#, set_1(D)->trace_includes
	.loc 1 42 0
	movq	-8(%rbp), %rax	# set, tmp64
	movl	$0, 20(%rax)	#, set_1(D)->depth
	.loc 1 43 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_line_maps, .-init_line_maps
	.section	.rodata
	.align 8
.LC0:
	.string	"line-map.c: file \"%s\" entered but not left\n"
	.text
	.globl	free_line_maps
	.type	free_line_maps, @function
free_line_maps:
.LFB3:
	.loc 1 50 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	.loc 1 51 0
	movq	-24(%rbp), %rax	# set, tmp73
	movq	(%rax), %rax	# set_2(D)->maps, D.6944
	testq	%rax, %rax	# D.6944
	je	.L2	#,
.LBB2:
	.loc 1 57 0
	movq	-24(%rbp), %rax	# set, tmp74
	movq	(%rax), %rcx	# set_2(D)->maps, D.6944
	movq	-24(%rbp), %rax	# set, tmp75
	movl	12(%rax), %eax	# set_2(D)->used, D.6945
	movl	%eax, %edx	# D.6945, D.6946
	movq	%rdx, %rax	# D.6946, tmp76
	addq	%rax, %rax	# tmp76
	addq	%rdx, %rax	# D.6946, tmp76
	salq	$3, %rax	#, tmp77
	subq	$24, %rax	#, D.6947
	addq	%rcx, %rax	# D.6944, tmp78
	movq	%rax, -8(%rbp)	# tmp78, map
	jmp	.L4	#
.L5:
	.loc 1 59 0
	movq	-8(%rbp), %rax	# map, tmp79
	movq	(%rax), %rdx	# map_1->to_file, D.6949
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.0,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 58 0
	movq	-24(%rbp), %rax	# set, tmp80
	movq	(%rax), %rcx	# set_2(D)->maps, D.6944
	movq	-8(%rbp), %rax	# map, tmp81
	movl	16(%rax), %eax	# map_1->included_from, D.6948
	movslq	%eax, %rdx	# D.6948, D.6946
	movq	%rdx, %rax	# D.6946, tmp82
	addq	%rax, %rax	# tmp82
	addq	%rdx, %rax	# D.6946, tmp82
	salq	$3, %rax	#, tmp83
	addq	%rcx, %rax	# D.6944, tmp84
	movq	%rax, -8(%rbp)	# tmp84, map
.L4:
	.loc 1 57 0 discriminator 1
	movq	-8(%rbp), %rax	# map, tmp85
	movl	16(%rax), %eax	# map_1->included_from, D.6948
	testl	%eax, %eax	# D.6948
	jns	.L5	#,
	.loc 1 62 0
	movq	-24(%rbp), %rax	# set, tmp86
	movq	(%rax), %rax	# set_2(D)->maps, D.6944
	movq	%rax, %rdi	# D.6944,
	call	free	#
.L2:
.LBE2:
	.loc 1 64 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	free_line_maps, .-free_line_maps
	.section	.rodata
	.align 8
.LC1:
	.string	"line-map.c: file \"%s\" left but not entered\n"
	.text
	.globl	add_line_map
	.type	add_line_map, @function
add_line_map:
.LFB4:
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# set, set
	movl	%esi, -44(%rbp)	# reason, reason
	movl	%edx, -48(%rbp)	# sysp, sysp
	movl	%ecx, -52(%rbp)	# from_line, from_line
	movq	%r8, -64(%rbp)	# to_file, to_file
	movl	%r9d, -56(%rbp)	# to_line, to_line
	.loc 1 84 0
	movq	-40(%rbp), %rax	# set, tmp121
	movl	12(%rax), %eax	# set_9(D)->used, D.6951
	testl	%eax, %eax	# D.6951
	je	.L7	#,
	.loc 1 84 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# set, tmp122
	movq	(%rax), %rcx	# set_9(D)->maps, D.6952
	movq	-40(%rbp), %rax	# set, tmp123
	movl	12(%rax), %eax	# set_9(D)->used, D.6951
	subl	$1, %eax	#, D.6951
	movl	%eax, %edx	# D.6951, D.6953
	movq	%rdx, %rax	# D.6953, tmp124
	addq	%rax, %rax	# tmp124
	addq	%rdx, %rax	# D.6953, tmp124
	salq	$3, %rax	#, tmp125
	addq	%rcx, %rax	# D.6952, D.6952
	movl	12(%rax), %eax	# _16->from_line, D.6951
	cmpl	-52(%rbp), %eax	# from_line, D.6951
	jbe	.L7	#,
	.loc 1 85 0 is_stmt 1
	call	abort	#
.L7:
	.loc 1 87 0
	movq	-40(%rbp), %rax	# set, tmp126
	movl	12(%rax), %edx	# set_9(D)->used, D.6951
	movq	-40(%rbp), %rax	# set, tmp127
	movl	8(%rax), %eax	# set_9(D)->allocated, D.6951
	cmpl	%eax, %edx	# D.6951, D.6951
	jne	.L8	#,
	.loc 1 89 0
	movq	-40(%rbp), %rax	# set, tmp128
	movl	8(%rax), %eax	# set_9(D)->allocated, D.6951
	subl	$-128, %eax	#, D.6951
	leal	(%rax,%rax), %edx	#, D.6951
	movq	-40(%rbp), %rax	# set, tmp129
	movl	%edx, 8(%rax)	# D.6951, set_9(D)->allocated
	.loc 1 91 0
	movq	-40(%rbp), %rax	# set, tmp130
	movl	8(%rax), %eax	# set_9(D)->allocated, D.6951
	movl	%eax, %edx	# D.6951, D.6953
	movq	%rdx, %rax	# D.6953, tmp131
	addq	%rax, %rax	# tmp131
	addq	%rdx, %rax	# D.6953, tmp131
	salq	$3, %rax	#, tmp132
	movq	%rax, %rdx	# tmp131, D.6953
	movq	-40(%rbp), %rax	# set, tmp133
	movq	(%rax), %rax	# set_9(D)->maps, D.6952
	movq	%rdx, %rsi	# D.6953,
	movq	%rax, %rdi	# D.6952,
	call	xrealloc	#
	.loc 1 90 0
	movq	-40(%rbp), %rdx	# set, tmp134
	movq	%rax, (%rdx)	# D.6954, set_9(D)->maps
.L8:
	.loc 1 94 0
	movq	-40(%rbp), %rax	# set, tmp135
	movq	(%rax), %rsi	# set_9(D)->maps, D.6952
	movq	-40(%rbp), %rax	# set, tmp136
	movl	12(%rax), %eax	# set_9(D)->used, D.6951
	leal	1(%rax), %ecx	#, D.6951
	movq	-40(%rbp), %rdx	# set, tmp137
	movl	%ecx, 12(%rdx)	# D.6951, set_9(D)->used
	movl	%eax, %edx	# D.6951, D.6953
	movq	%rdx, %rax	# D.6953, tmp138
	addq	%rax, %rax	# tmp138
	addq	%rdx, %rax	# D.6953, tmp138
	salq	$3, %rax	#, tmp139
	addq	%rsi, %rax	# D.6952, tmp140
	movq	%rax, -8(%rbp)	# tmp140, map
	.loc 1 98 0
	movq	-40(%rbp), %rax	# set, tmp141
	movl	20(%rax), %eax	# set_9(D)->depth, D.6951
	testl	%eax, %eax	# D.6951
	jne	.L9	#,
	.loc 1 99 0
	movl	$0, -44(%rbp)	#, reason
	jmp	.L10	#
.L9:
	.loc 1 100 0
	cmpl	$1, -44(%rbp)	#, reason
	jne	.L10	#,
.LBB3:
	.loc 1 105 0
	movq	-8(%rbp), %rax	# map, tmp142
	subq	$24, %rax	#, D.6952
	movl	16(%rax), %eax	# _42->included_from, D.6955
	testl	%eax, %eax	# D.6955
	jns	.L11	#,
	.loc 1 107 0
	movb	$1, -17(%rbp)	#, error
	.loc 1 108 0
	movl	$2, -44(%rbp)	#, reason
	.loc 1 109 0
	movq	-8(%rbp), %rax	# map, tmp146
	subq	$24, %rax	#, tmp145
	movq	%rax, -16(%rbp)	# tmp145, from
	jmp	.L12	#
.L11:
	.loc 1 113 0
	movq	-40(%rbp), %rax	# set, tmp147
	movq	(%rax), %rcx	# set_9(D)->maps, D.6952
	movq	-8(%rbp), %rax	# map, tmp148
	subq	$24, %rax	#, D.6952
	movl	16(%rax), %eax	# _48->included_from, D.6955
	movslq	%eax, %rdx	# D.6955, D.6953
	movq	%rdx, %rax	# D.6953, tmp149
	addq	%rax, %rax	# tmp149
	addq	%rdx, %rax	# D.6953, tmp149
	salq	$3, %rax	#, tmp150
	addq	%rcx, %rax	# D.6952, tmp151
	movq	%rax, -16(%rbp)	# tmp151, from
	.loc 1 114 0
	cmpq	$0, -64(%rbp)	#, to_file
	je	.L13	#,
	.loc 1 114 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# from, tmp152
	movq	(%rax), %rax	# from_52->to_file, D.6956
	movq	-64(%rbp), %rdx	# to_file, tmp153
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# D.6956,
	call	strcmp	#
	testl	%eax, %eax	# D.6955
	je	.L13	#,
	.loc 1 114 0 discriminator 3
	movl	$1, %eax	#, iftmp.1
	jmp	.L14	#
.L13:
	.loc 1 114 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L14:
	.loc 1 114 0 discriminator 4
	movb	%al, -17(%rbp)	# iftmp.1, error
	andb	$1, -17(%rbp)	#, error
.L12:
	.loc 1 119 0 is_stmt 1
	cmpb	$0, -17(%rbp)	#, error
	je	.L15	#,
	.loc 1 120 0
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movq	-64(%rbp), %rdx	# to_file, tmp154
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# stderr.2,
	movl	$0, %eax	#,
	call	fprintf	#
.L15:
	.loc 1 124 0
	cmpb	$0, -17(%rbp)	#, error
	jne	.L16	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, to_file
	jne	.L10	#,
.L16:
	.loc 1 126 0 is_stmt 1
	movq	-16(%rbp), %rax	# from, tmp155
	movq	(%rax), %rax	# from_6->to_file, tmp156
	movq	%rax, -64(%rbp)	# tmp156, to_file
	.loc 1 127 0
	movq	-16(%rbp), %rax	# from, tmp157
	addq	$24, %rax	#, D.6952
	movl	12(%rax), %edx	# _60->from_line, D.6951
	movq	-16(%rbp), %rax	# from, tmp158
	movl	8(%rax), %eax	# from_6->to_line, D.6951
	addl	%eax, %edx	# D.6951, D.6951
	movq	-16(%rbp), %rax	# from, tmp159
	movl	12(%rax), %eax	# from_6->from_line, D.6951
	subl	%eax, %edx	# D.6951, tmp160
	movl	%edx, %eax	# tmp160, tmp160
	movl	%eax, -56(%rbp)	# tmp160, to_line
	.loc 1 128 0
	movq	-16(%rbp), %rax	# from, tmp161
	movzbl	21(%rax), %eax	# from_6->sysp, D.6957
	movzbl	%al, %eax	# D.6957, tmp162
	movl	%eax, -48(%rbp)	# tmp162, sysp
.L10:
.LBE3:
	.loc 1 132 0
	movl	-44(%rbp), %eax	# reason, tmp163
	movl	%eax, %edx	# tmp163, D.6957
	movq	-8(%rbp), %rax	# map, tmp164
	movb	%dl, 20(%rax)	# D.6957, map_35->reason
	.loc 1 133 0
	movl	-48(%rbp), %eax	# sysp, tmp165
	movl	%eax, %edx	# tmp165, D.6957
	movq	-8(%rbp), %rax	# map, tmp166
	movb	%dl, 21(%rax)	# D.6957, map_35->sysp
	.loc 1 134 0
	movq	-8(%rbp), %rax	# map, tmp167
	movl	-52(%rbp), %edx	# from_line, tmp168
	movl	%edx, 12(%rax)	# tmp168, map_35->from_line
	.loc 1 135 0
	movq	-8(%rbp), %rax	# map, tmp169
	movq	-64(%rbp), %rdx	# to_file, tmp170
	movq	%rdx, (%rax)	# tmp170, map_35->to_file
	.loc 1 136 0
	movq	-8(%rbp), %rax	# map, tmp171
	movl	-56(%rbp), %edx	# to_line, tmp172
	movl	%edx, 8(%rax)	# tmp172, map_35->to_line
	.loc 1 138 0
	cmpl	$0, -44(%rbp)	#, reason
	jne	.L17	#,
	.loc 1 140 0
	movq	-40(%rbp), %rax	# set, tmp173
	movl	20(%rax), %eax	# set_9(D)->depth, D.6951
	leal	1(%rax), %edx	#, D.6951
	movq	-40(%rbp), %rax	# set, tmp174
	movl	%edx, 20(%rax)	# D.6951, set_9(D)->depth
	.loc 1 141 0
	movq	-40(%rbp), %rax	# set, tmp175
	movl	12(%rax), %eax	# set_9(D)->used, D.6951
	subl	$2, %eax	#, D.6951
	movl	%eax, %edx	# D.6951, D.6955
	movq	-8(%rbp), %rax	# map, tmp176
	movl	%edx, 16(%rax)	# D.6955, map_35->included_from
	.loc 1 142 0
	movq	-40(%rbp), %rax	# set, tmp177
	movzbl	24(%rax), %eax	# set_9(D)->trace_includes, D.6958
	testb	%al, %al	# D.6958
	je	.L19	#,
	.loc 1 143 0
	movq	-8(%rbp), %rdx	# map, tmp178
	movq	-40(%rbp), %rax	# set, tmp179
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	trace_include	#
	jmp	.L19	#
.L17:
	.loc 1 145 0
	cmpl	$2, -44(%rbp)	#, reason
	jne	.L20	#,
	.loc 1 146 0
	movq	-8(%rbp), %rax	# map, tmp180
	subq	$24, %rax	#, D.6952
	movl	16(%rax), %edx	# _76->included_from, D.6955
	movq	-8(%rbp), %rax	# map, tmp181
	movl	%edx, 16(%rax)	# D.6955, map_35->included_from
	jmp	.L19	#
.L20:
	.loc 1 147 0
	cmpl	$1, -44(%rbp)	#, reason
	jne	.L19	#,
	.loc 1 149 0
	movq	-40(%rbp), %rax	# set, tmp182
	movl	20(%rax), %eax	# set_9(D)->depth, D.6951
	leal	-1(%rax), %edx	#, D.6951
	movq	-40(%rbp), %rax	# set, tmp183
	movl	%edx, 20(%rax)	# D.6951, set_9(D)->depth
	.loc 1 150 0
	movq	-40(%rbp), %rax	# set, tmp184
	movq	(%rax), %rcx	# set_9(D)->maps, D.6952
	movq	-8(%rbp), %rax	# map, tmp185
	subq	$24, %rax	#, D.6952
	movl	16(%rax), %eax	# _81->included_from, D.6955
	movslq	%eax, %rdx	# D.6955, D.6953
	movq	%rdx, %rax	# D.6953, tmp186
	addq	%rax, %rax	# tmp186
	addq	%rdx, %rax	# D.6953, tmp186
	salq	$3, %rax	#, tmp187
	addq	%rcx, %rax	# D.6952, D.6952
	movl	16(%rax), %edx	# _85->included_from, D.6955
	movq	-8(%rbp), %rax	# map, tmp188
	movl	%edx, 16(%rax)	# D.6955, map_35->included_from
.L19:
	.loc 1 153 0
	movq	-8(%rbp), %rax	# map, D.6959
	.loc 1 154 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_line_map, .-add_line_map
	.globl	lookup_line
	.type	lookup_line, @function
lookup_line:
.LFB5:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	movl	%esi, -28(%rbp)	# line, line
	.loc 1 166 0
	movl	$0, -12(%rbp)	#, mn
	movq	-24(%rbp), %rax	# set, tmp71
	movl	12(%rax), %eax	# set_4(D)->used, tmp72
	movl	%eax, -8(%rbp)	# tmp72, mx
	.loc 1 168 0
	cmpl	$0, -8(%rbp)	#, mx
	jne	.L23	#,
	.loc 1 169 0
	call	abort	#
.L23:
	.loc 1 171 0
	jmp	.L24	#
.L26:
	.loc 1 173 0
	movl	-8(%rbp), %eax	# mx, tmp73
	movl	-12(%rbp), %edx	# mn, tmp74
	addl	%edx, %eax	# tmp74, D.6961
	shrl	%eax	# tmp75
	movl	%eax, -4(%rbp)	# tmp75, md
	.loc 1 174 0
	movq	-24(%rbp), %rax	# set, tmp76
	movq	(%rax), %rcx	# set_4(D)->maps, D.6962
	movl	-4(%rbp), %edx	# md, D.6963
	movq	%rdx, %rax	# D.6963, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# D.6963, tmp77
	salq	$3, %rax	#, tmp78
	addq	%rcx, %rax	# D.6962, D.6962
	movl	12(%rax), %eax	# _12->from_line, D.6961
	cmpl	-28(%rbp), %eax	# line, D.6961
	jbe	.L25	#,
	.loc 1 175 0
	movl	-4(%rbp), %eax	# md, tmp79
	movl	%eax, -8(%rbp)	# tmp79, mx
	jmp	.L24	#
.L25:
	.loc 1 177 0
	movl	-4(%rbp), %eax	# md, tmp80
	movl	%eax, -12(%rbp)	# tmp80, mn
.L24:
	.loc 1 171 0 discriminator 1
	movl	-12(%rbp), %eax	# mn, tmp81
	movl	-8(%rbp), %edx	# mx, tmp82
	subl	%eax, %edx	# tmp81, D.6961
	movl	%edx, %eax	# D.6961, D.6961
	cmpl	$1, %eax	#, D.6961
	ja	.L26	#,
	.loc 1 180 0
	movq	-24(%rbp), %rax	# set, tmp83
	movq	(%rax), %rcx	# set_4(D)->maps, D.6962
	movl	-12(%rbp), %edx	# mn, D.6963
	movq	%rdx, %rax	# D.6963, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# D.6963, tmp84
	salq	$3, %rax	#, tmp85
	addq	%rcx, %rax	# D.6962, D.6964
	.loc 1 181 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	lookup_line, .-lookup_line
	.section	.rodata
.LC2:
	.string	"In file included from %s:%u"
.LC3:
	.string	",\n                 from %s:%u"
.LC4:
	.string	":\n"
	.text
	.globl	print_containing_files
	.type	print_containing_files, @function
print_containing_files:
.LFB6:
	.loc 1 191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# set, set
	movq	%rsi, -16(%rbp)	# map, map
	.loc 1 192 0
	movq	-16(%rbp), %rax	# map, tmp91
	movl	16(%rax), %eax	# map_2(D)->included_from, D.6965
	testl	%eax, %eax	# D.6965
	js	.L29	#,
	.loc 1 192 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# set, tmp92
	movl	16(%rax), %edx	# set_4(D)->last_listed, D.6965
	movq	-16(%rbp), %rax	# map, tmp93
	movl	16(%rax), %eax	# map_2(D)->included_from, D.6965
	cmpl	%eax, %edx	# D.6965, D.6965
	jne	.L30	#,
.L29:
	.loc 1 193 0 is_stmt 1
	jmp	.L28	#
.L30:
	.loc 1 195 0
	movq	-16(%rbp), %rax	# map, tmp94
	movl	16(%rax), %edx	# map_2(D)->included_from, D.6965
	movq	-8(%rbp), %rax	# set, tmp95
	movl	%edx, 16(%rax)	# D.6965, set_4(D)->last_listed
	.loc 1 196 0
	movq	-8(%rbp), %rax	# set, tmp96
	movq	(%rax), %rcx	# set_4(D)->maps, D.6966
	movq	-16(%rbp), %rax	# map, tmp97
	movl	16(%rax), %eax	# map_2(D)->included_from, D.6965
	movslq	%eax, %rdx	# D.6965, D.6967
	movq	%rdx, %rax	# D.6967, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# D.6967, tmp98
	salq	$3, %rax	#, tmp99
	addq	%rcx, %rax	# D.6966, tmp100
	movq	%rax, -16(%rbp)	# tmp100, map
	.loc 1 199 0
	movq	-16(%rbp), %rax	# map, tmp101
	addq	$24, %rax	#, D.6968
	movl	12(%rax), %edx	# _13->from_line, D.6969
	movq	-16(%rbp), %rax	# map, tmp102
	movl	8(%rax), %eax	# map_12->to_line, D.6969
	addl	%eax, %edx	# D.6969, D.6969
	movq	-16(%rbp), %rax	# map, tmp103
	movl	12(%rax), %eax	# map_12->from_line, D.6969
	subl	%eax, %edx	# D.6969, D.6969
	movl	%edx, %eax	# D.6969, D.6969
	.loc 1 198 0
	leal	-1(%rax), %ecx	#, D.6969
	movq	-16(%rbp), %rax	# map, tmp104
	movq	(%rax), %rdx	# map_12->to_file, D.6970
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# stderr.3,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 201 0
	jmp	.L32	#
.L33:
	.loc 1 203 0
	movq	-8(%rbp), %rax	# set, tmp105
	movq	(%rax), %rcx	# set_4(D)->maps, D.6966
	movq	-16(%rbp), %rax	# map, tmp106
	movl	16(%rax), %eax	# map_1->included_from, D.6965
	movslq	%eax, %rdx	# D.6965, D.6967
	movq	%rdx, %rax	# D.6967, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# D.6967, tmp107
	salq	$3, %rax	#, tmp108
	addq	%rcx, %rax	# D.6966, tmp109
	movq	%rax, -16(%rbp)	# tmp109, map
	.loc 1 217 0
	movq	-16(%rbp), %rax	# map, tmp110
	addq	$24, %rax	#, D.6968
	movl	12(%rax), %edx	# _28->from_line, D.6969
	movq	-16(%rbp), %rax	# map, tmp111
	movl	8(%rax), %eax	# map_27->to_line, D.6969
	addl	%eax, %edx	# D.6969, D.6969
	movq	-16(%rbp), %rax	# map, tmp112
	movl	12(%rax), %eax	# map_27->from_line, D.6969
	subl	%eax, %edx	# D.6969, D.6969
	movl	%edx, %eax	# D.6969, D.6969
	.loc 1 216 0
	leal	-1(%rax), %ecx	#, D.6969
	movq	-16(%rbp), %rax	# map, tmp113
	movq	(%rax), %rdx	# map_27->to_file, D.6970
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# stderr.4,
	movl	$0, %eax	#,
	call	fprintf	#
.L32:
	.loc 1 201 0 discriminator 1
	movq	-16(%rbp), %rax	# map, tmp114
	movl	16(%rax), %eax	# map_1->included_from, D.6965
	testl	%eax, %eax	# D.6965
	jns	.L33	#,
	.loc 1 220 0
	movq	stderr(%rip), %rax	# stderr, stderr.5
	movq	%rax, %rcx	# stderr.5,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
.L28:
	.loc 1 221 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	print_containing_files, .-print_containing_files
	.section	.rodata
.LC5:
	.string	" %s\n"
	.text
	.type	trace_include, @function
trace_include:
.LFB7:
	.loc 1 229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	movq	%rsi, -32(%rbp)	# map, map
	.loc 1 230 0
	movq	-24(%rbp), %rax	# set, tmp62
	movl	20(%rax), %eax	# set_2(D)->depth, tmp63
	movl	%eax, -4(%rbp)	# tmp63, i
	.loc 1 232 0
	jmp	.L35	#
.L36:
	.loc 1 233 0
	movq	stderr(%rip), %rax	# stderr, stderr.6
	movq	%rax, %rsi	# stderr.6,
	movl	$46, %edi	#,
	call	_IO_putc	#
.L35:
	.loc 1 232 0 discriminator 1
	subl	$1, -4(%rbp)	#, i
	cmpl	$0, -4(%rbp)	#, i
	jne	.L36	#,
	.loc 1 234 0
	movq	-32(%rbp), %rax	# map, tmp64
	movq	(%rax), %rdx	# map_6(D)->to_file, D.6974
	movq	stderr(%rip), %rax	# stderr, stderr.7
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# stderr.7,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 235 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	trace_include, .-trace_include
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "line-map.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5af
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF74
	.byte	0x1
	.long	.LASF75
	.long	.LASF76
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
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x79
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x6b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x84
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0xe
	.long	.LASF78
	.byte	0x4
	.byte	0x5
	.byte	0x1f
	.long	0x2bf
	.uleb128 0xf
	.long	.LASF48
	.sleb128 0
	.uleb128 0xf
	.long	.LASF49
	.sleb128 1
	.uleb128 0xf
	.long	.LASF50
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF51
	.byte	0x18
	.byte	0x5
	.byte	0x29
	.long	0x317
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x2b
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0x2e
	.long	0x2d
	.byte	0x10
	.uleb128 0x10
	.long	.LASF67
	.byte	0x5
	.byte	0x2f
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0x30
	.long	0x5d
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.long	.LASF57
	.byte	0x20
	.byte	0x5
	.byte	0x34
	.long	0x36c
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0x36
	.long	0x36c
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0x37
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x5
	.byte	0x38
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF61
	.byte	0x5
	.byte	0x3d
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0x40
	.long	0x3b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF63
	.byte	0x5
	.byte	0x43
	.long	0x372
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF64
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x22
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a5
	.uleb128 0x12
	.string	"set"
	.byte	0x1
	.byte	0x23
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x30
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f7
	.uleb128 0x12
	.string	"set"
	.byte	0x1
	.byte	0x31
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x15
	.string	"map"
	.byte	0x1
	.byte	0x35
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.byte	0x4a
	.long	0x4ac
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ac
	.uleb128 0x12
	.string	"set"
	.byte	0x1
	.byte	0x4b
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x4c
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.byte	0x4d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0x4e
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF52
	.byte	0x1
	.byte	0x4f
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x50
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"map"
	.byte	0x1
	.byte	0x52
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.byte	0x66
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x67
	.long	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b2
	.uleb128 0xd
	.long	0x2bf
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.byte	0xa2
	.long	0x4ac
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x51c
	.uleb128 0x12
	.string	"set"
	.byte	0x1
	.byte	0xa3
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.byte	0xa4
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"md"
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"mn"
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"mx"
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0xbc
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x556
	.uleb128 0x12
	.string	"set"
	.byte	0x1
	.byte	0xbd
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"map"
	.byte	0x1
	.byte	0xbe
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF79
	.byte	0x1
	.byte	0xe2
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x59c
	.uleb128 0x12
	.string	"set"
	.byte	0x1
	.byte	0xe3
	.long	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"map"
	.byte	0x1
	.byte	0xe4
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a2
	.uleb128 0xd
	.long	0x317
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x6
	.byte	0xaa
	.long	0x25b
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
.LASF28:
	.string	"_old_offset"
.LASF58:
	.string	"maps"
.LASF23:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF78:
	.string	"lc_reason"
.LASF0:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF56:
	.string	"sysp"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF71:
	.string	"lookup_line"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF49:
	.string	"LC_LEAVE"
.LASF57:
	.string	"line_maps"
.LASF51:
	.string	"line_map"
.LASF55:
	.string	"included_from"
.LASF76:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF47:
	.string	"long long int"
.LASF59:
	.string	"allocated"
.LASF32:
	.string	"_lock"
.LASF67:
	.string	"reason"
.LASF2:
	.string	"long int"
.LASF29:
	.string	"_cur_column"
.LASF45:
	.string	"_pos"
.LASF48:
	.string	"LC_ENTER"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF35:
	.string	"__pad2"
.LASF63:
	.string	"trace_includes"
.LASF4:
	.string	"unsigned char"
.LASF73:
	.string	"print_containing_files"
.LASF37:
	.string	"__pad4"
.LASF74:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF52:
	.string	"to_file"
.LASF6:
	.string	"signed char"
.LASF46:
	.string	"long long unsigned int"
.LASF54:
	.string	"from_line"
.LASF61:
	.string	"last_listed"
.LASF60:
	.string	"used"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF72:
	.string	"line"
.LASF50:
	.string	"LC_RENAME"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"to_line"
.LASF20:
	.string	"_IO_buf_end"
.LASF70:
	.string	"add_line_map"
.LASF79:
	.string	"trace_include"
.LASF11:
	.string	"char"
.LASF66:
	.string	"free_line_maps"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF36:
	.string	"__pad3"
.LASF64:
	.string	"_Bool"
.LASF38:
	.string	"__pad5"
.LASF62:
	.string	"depth"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"stderr"
.LASF75:
	.string	"line-map.c"
.LASF3:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF9:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF65:
	.string	"init_line_maps"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF30:
	.string	"_vtable_offset"
.LASF69:
	.string	"error"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF1:
	.string	"unsigned int"
.LASF68:
	.string	"from"
.LASF77:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
