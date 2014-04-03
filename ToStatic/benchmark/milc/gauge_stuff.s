	.file	"gauge_stuff.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# gauge_stuff.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	gauge_action_description,128,32
	.globl	gauge_action_nloops
	.data
	.align 4
	.type	gauge_action_nloops, @object
	.size	gauge_action_nloops, 4
gauge_action_nloops:
	.long	3
	.globl	gauge_action_nreps
	.align 4
	.type	gauge_action_nreps, @object
	.size	gauge_action_nreps, 4
gauge_action_nreps:
	.long	1
	.comm	loop_length,12,4
	.comm	loop_num,12,4
	.comm	loop_ind,72,32
	.comm	loop_table,1152,32
	.comm	loop_coeff,24,16
	.comm	loop_char,64,32
	.comm	loop_expect,384,32
	.section	.rodata
	.align 8
.LC6:
	.string	"Symanzik 1x1 + 1x2 + 1x1x1 action"
.LC7:
	.string	"OOPS: MAX_NUM too small"
	.align 8
.LC8:
	.string	"loop coefficients: nloop rep loop_coeff  multiplicity"
	.align 8
.LC9:
	.string	"                    %d %d      %e     %d\n"
	.text
	.globl	make_loop_table
	.type	make_loop_table, @function
make_loop_table:
.LFB2:
	.file 1 "gauge_stuff.c"
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	.file 2 "./gauge_action.h"
	.loc 2 18 0
	movl	$0, -128(%rbp)	#, j
	jmp	.L2	#
.L5:
	.loc 2 19 0
	movl	-128(%rbp), %eax	# j, tmp134
	cltq
	movl	$0, loop_num(,%rax,4)	#, loop_num
	.loc 2 20 0
	movl	-128(%rbp), %eax	# j, tmp136
	cltq
	movl	loop_length_in.5006(,%rax,4), %edx	# loop_length_in, D.5526
	movl	-128(%rbp), %eax	# j, tmp138
	cltq
	movl	%edx, loop_length(,%rax,4)	# D.5526, loop_length
	.loc 2 21 0
	movl	$0, -132(%rbp)	#, i
	jmp	.L3	#
.L4:
	.loc 2 22 0 discriminator 2
	movl	-132(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, tmp139
	movl	-128(%rbp), %eax	# j, tmp142
	cltq
	addq	%rax, %rdx	# tmp141, tmp143
	movl	$0, %eax	#, tmp144
	movq	%rax, loop_coeff(,%rdx,8)	# tmp144, loop_coeff
	.loc 2 21 0 discriminator 2
	addl	$1, -132(%rbp)	#, i
.L3:
	.loc 2 21 0 is_stmt 0 discriminator 1
	cmpl	$0, -132(%rbp)	#, i
	jle	.L4	#,
	.loc 2 18 0 is_stmt 1
	addl	$1, -128(%rbp)	#, j
.L2:
	.loc 2 18 0 is_stmt 0 discriminator 1
	cmpl	$2, -128(%rbp)	#, j
	jle	.L5	#,
	.loc 2 27 0 is_stmt 1
	movabsq	$4607182418800017408, %rax	#, tmp145
	movq	%rax, loop_coeff(%rip)	# tmp145, loop_coeff
	.loc 2 28 0
	movsd	u0(%rip), %xmm1	# u0, u0.0
	movsd	.LC2(%rip), %xmm0	#, tmp146
	mulsd	%xmm1, %xmm0	# u0.0, D.5527
	movsd	u0(%rip), %xmm1	# u0, u0.1
	mulsd	%xmm1, %xmm0	# u0.1, D.5527
	movsd	.LC3(%rip), %xmm1	#, tmp147
	divsd	%xmm0, %xmm1	# D.5527, D.5527
	movsd	%xmm1, -152(%rbp)	# D.5527, %sfp
	movq	u0(%rip), %rax	# u0, u0.2
	movq	%rax, -160(%rbp)	# u0.2, %sfp
	movsd	-160(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	.LC4(%rip), %xmm1	#, tmp148
	mulsd	%xmm1, %xmm0	# tmp148, D.5527
	movsd	.LC1(%rip), %xmm1	#, tmp149
	movapd	%xmm1, %xmm2	# tmp149, D.5527
	subsd	%xmm0, %xmm2	# D.5527, D.5527
	movapd	%xmm2, %xmm0	# D.5527, D.5527
	mulsd	-152(%rbp), %xmm0	# %sfp, D.5527
	movsd	%xmm0, loop_coeff+8(%rip)	# D.5527, loop_coeff
	.loc 2 29 0
	movsd	u0(%rip), %xmm1	# u0, u0.3
	movsd	u0(%rip), %xmm0	# u0, u0.4
	mulsd	%xmm1, %xmm0	# u0.3, D.5527
	movsd	.LC1(%rip), %xmm1	#, tmp150
	divsd	%xmm0, %xmm1	# D.5527, D.5527
	movapd	%xmm1, %xmm0	# D.5527, D.5527
	movsd	.LC5(%rip), %xmm1	#, tmp151
	mulsd	%xmm1, %xmm0	# tmp151, D.5527
	movsd	%xmm0, -152(%rbp)	# D.5527, %sfp
	movq	u0(%rip), %rax	# u0, u0.5
	movq	%rax, -160(%rbp)	# u0.5, %sfp
	movsd	-160(%rbp), %xmm0	# %sfp,
	call	log	#
	mulsd	-152(%rbp), %xmm0	# %sfp, D.5527
	movsd	%xmm0, loop_coeff+16(%rip)	# D.5527, loop_coeff
	.loc 2 30 0
	movabsq	$7600508685868684066, %rax	#, tmp224
	movq	%rax, gauge_action_description(%rip)	# tmp224, MEM[(void *)&gauge_action_description]
	movabsq	$2317981830054223979, %rax	#, tmp225
	movq	%rax, gauge_action_description+8(%rip)	# tmp225, MEM[(void *)&gauge_action_description]
	movabsq	$8660738928006035505, %rax	#, tmp226
	movq	%rax, gauge_action_description+16(%rip)	# tmp226, MEM[(void *)&gauge_action_description]
	movabsq	$7598807740083959857, %rax	#, tmp227
	movq	%rax, gauge_action_description+24(%rip)	# tmp227, MEM[(void *)&gauge_action_description]
	movl	$2256495, gauge_action_description+32(%rip)	#, MEM[(void *)&gauge_action_description]
	.loc 2 31 0
	movl	this_node(%rip), %eax	# this_node, this_node.6
	testl	%eax, %eax	# this_node.6
	jne	.L6	#,
	.loc 2 31 0 is_stmt 0 discriminator 1
	movl	$.LC6, %edi	#,
	call	puts	#
.L6:
	.loc 1 67 0 is_stmt 1
	movl	$0, -136(%rbp)	#, iloop
	jmp	.L7	#
.L38:
	.loc 1 68 0
	movl	-136(%rbp), %eax	# iloop, tmp154
	cltq
	movl	loop_length(,%rax,4), %eax	# loop_length, tmp155
	movl	%eax, -116(%rbp)	# tmp155, length
	.loc 1 69 0
	movl	$0, -124(%rbp)	#, count
	.loc 1 71 0
	movl	$0, -64(%rbp)	#, perm
	jmp	.L8	#
.L37:
	.loc 1 72 0
	movl	$0, -60(%rbp)	#, perm
	jmp	.L9	#
.L36:
	.loc 1 73 0
	movl	$0, -56(%rbp)	#, perm
	jmp	.L10	#
.L35:
	.loc 1 74 0
	movl	$0, -52(%rbp)	#, perm
	jmp	.L11	#
.L34:
	.loc 1 75 0
	movl	-64(%rbp), %edx	# perm, D.5526
	movl	-60(%rbp), %eax	# perm, D.5526
	cmpl	%eax, %edx	# D.5526, D.5526
	je	.L12	#,
	.loc 1 75 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %edx	# perm, D.5526
	movl	-56(%rbp), %eax	# perm, D.5526
	cmpl	%eax, %edx	# D.5526, D.5526
	je	.L12	#,
	.loc 1 76 0 is_stmt 1
	movl	-64(%rbp), %edx	# perm, D.5526
	movl	-52(%rbp), %eax	# perm, D.5526
	cmpl	%eax, %edx	# D.5526, D.5526
	je	.L12	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %edx	# perm, D.5526
	movl	-56(%rbp), %eax	# perm, D.5526
	cmpl	%eax, %edx	# D.5526, D.5526
	je	.L12	#,
	.loc 1 77 0 is_stmt 1
	movl	-60(%rbp), %edx	# perm, D.5526
	movl	-52(%rbp), %eax	# perm, D.5526
	cmpl	%eax, %edx	# D.5526, D.5526
	je	.L12	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %edx	# perm, D.5526
	movl	-52(%rbp), %eax	# perm, D.5526
	cmpl	%eax, %edx	# D.5526, D.5526
	je	.L12	#,
	.loc 1 79 0 is_stmt 1
	movl	$0, -112(%rbp)	#, ir
	jmp	.L13	#
.L33:
	.loc 1 80 0
	movl	$0, -108(%rbp)	#, ir
	jmp	.L14	#
.L32:
	.loc 1 81 0
	movl	$0, -104(%rbp)	#, ir
	jmp	.L15	#
.L31:
	.loc 1 82 0
	movl	$0, -100(%rbp)	#, ir
	jmp	.L16	#
.L30:
	.loc 1 83 0
	movl	$0, -128(%rbp)	#, j
	jmp	.L17	#
.L19:
	.loc 1 84 0
	movl	-128(%rbp), %eax	# j, tmp157
	cltq
	movl	-64(%rbp,%rax,4), %edx	# perm, D.5526
	movl	-128(%rbp), %eax	# j, tmp159
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.5526, pp
	.loc 1 86 0
	movl	-128(%rbp), %eax	# j, tmp161
	cltq
	movl	-112(%rbp,%rax,4), %eax	# ir, D.5526
	cmpl	$1, %eax	#, D.5526
	jne	.L18	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp163
	cltq
	movl	-32(%rbp,%rax,4), %eax	# pp, D.5526
	movl	$7, %edx	#, tmp164
	subl	%eax, %edx	# D.5526, D.5526
	movl	-128(%rbp), %eax	# j, tmp166
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.5526, pp
.L18:
	.loc 1 87 0 is_stmt 1
	movl	$7, %eax	#, tmp167
	subl	-128(%rbp), %eax	# j, D.5526
	movl	%eax, %ecx	# D.5526, D.5526
	movl	-128(%rbp), %eax	# j, tmp169
	cltq
	movl	-32(%rbp,%rax,4), %eax	# pp, D.5526
	movl	$7, %edx	#, tmp170
	subl	%eax, %edx	# D.5526, D.5526
	movslq	%ecx, %rax	# D.5526, tmp171
	movl	%edx, -32(%rbp,%rax,4)	# D.5526, pp
	.loc 1 83 0
	addl	$1, -128(%rbp)	#, j
.L17:
	.loc 1 83 0 is_stmt 0 discriminator 1
	cmpl	$3, -128(%rbp)	#, j
	jle	.L19	#,
	.loc 1 90 0 is_stmt 1
	movl	$0, -128(%rbp)	#, j
	jmp	.L20	#
.L21:
	.loc 1 90 0 is_stmt 0 discriminator 2
	movl	-128(%rbp), %eax	# j, tmp173
	movslq	%eax, %rcx	# tmp173, tmp172
	movl	-136(%rbp), %eax	# iloop, tmp175
	movslq	%eax, %rdx	# tmp175, tmp174
	movq	%rdx, %rax	# tmp174, tmp176
	addq	%rax, %rax	# tmp176
	addq	%rdx, %rax	# tmp174, tmp176
	addq	%rax, %rax	# tmp177
	addq	%rcx, %rax	# tmp172, tmp178
	movl	loop_ind.5005(,%rax,4), %eax	# loop_ind, D.5526
	cltq
	movl	-32(%rbp,%rax,4), %edx	# pp, D.5526
	movl	-128(%rbp), %eax	# j, tmp181
	cltq
	movl	%edx, -96(%rbp,%rax,4)	# D.5526, vec
	addl	$1, -128(%rbp)	#, j
.L20:
	.loc 1 90 0 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp182
	cmpl	-116(%rbp), %eax	# length, tmp182
	jl	.L21	#,
	.loc 1 92 0 is_stmt 1
	movl	-116(%rbp), %edx	# length, tmp183
	leaq	-140(%rbp), %rcx	#, tmp184
	leaq	-96(%rbp), %rax	#, tmp185
	movq	%rcx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp185,
	call	char_num	#
	.loc 1 93 0
	movl	$0, -120(%rbp)	#, flag
	.loc 1 95 0
	movl	$0, -128(%rbp)	#, j
	jmp	.L22	#
.L24:
	.loc 1 95 0 is_stmt 0 discriminator 2
	movl	-128(%rbp), %eax	# j, tmp187
	cltq
	movl	loop_char(,%rax,4), %edx	# loop_char, D.5526
	movl	-140(%rbp), %eax	# chr, chr.7
	cmpl	%eax, %edx	# chr.7, D.5526
	jne	.L23	#,
	.loc 1 95 0 discriminator 1
	movl	$1, -120(%rbp)	#, flag
.L23:
	.loc 1 95 0 discriminator 2
	addl	$1, -128(%rbp)	#, j
.L22:
	.loc 1 95 0 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp188
	cmpl	-124(%rbp), %eax	# count, tmp188
	jl	.L24	#,
	.loc 1 96 0 is_stmt 1
	cmpl	$0, -120(%rbp)	#, flag
	jne	.L25	#,
	.loc 1 97 0
	movl	-140(%rbp), %edx	# chr, chr.8
	movl	-124(%rbp), %eax	# count, tmp190
	cltq
	movl	%edx, loop_char(,%rax,4)	# chr.8, loop_char
	.loc 1 98 0
	movl	$0, -128(%rbp)	#, j
	jmp	.L26	#
.L27:
	.loc 1 99 0 discriminator 2
	movl	-128(%rbp), %eax	# j, tmp192
	cltq
	movl	-96(%rbp,%rax,4), %esi	# vec, D.5526
	movl	-128(%rbp), %eax	# j, tmp194
	movslq	%eax, %rdi	# tmp194, tmp193
	movl	-136(%rbp), %eax	# iloop, tmp196
	cltq
	movl	-124(%rbp), %edx	# count, tmp198
	movslq	%edx, %rcx	# tmp198, tmp197
	movq	%rax, %rdx	# tmp195, tmp199
	addq	%rdx, %rdx	# tmp199
	addq	%rax, %rdx	# tmp195, tmp199
	movq	%rdx, %rax	# tmp199, tmp200
	salq	$5, %rax	#, tmp200
	movq	%rax, %rdx	# tmp200, tmp199
	movq	%rcx, %rax	# tmp197, tmp201
	addq	%rax, %rax	# tmp201
	addq	%rcx, %rax	# tmp197, tmp201
	addq	%rax, %rax	# tmp202
	addq	%rdx, %rax	# tmp199, tmp203
	addq	%rdi, %rax	# tmp193, tmp204
	movl	%esi, loop_table(,%rax,4)	# D.5526, loop_table
	.loc 1 98 0 discriminator 2
	addl	$1, -128(%rbp)	#, j
.L26:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp205
	cmpl	-116(%rbp), %eax	# length, tmp205
	jl	.L27	#,
	.loc 1 100 0 is_stmt 1
	addl	$1, -124(%rbp)	#, count
.L25:
	.loc 1 103 0
	cmpl	$16, -124(%rbp)	#, count
	jle	.L28	#,
	.loc 1 104 0
	movl	this_node(%rip), %eax	# this_node, this_node.9
	testl	%eax, %eax	# this_node.9
	jne	.L29	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movl	$.LC7, %edi	#,
	call	puts	#
.L29:
	.loc 1 105 0 is_stmt 1
	movl	$0, %edi	#,
	call	exit	#
.L28:
	.loc 1 107 0
	movl	-136(%rbp), %eax	# iloop, tmp207
	cltq
	movl	-124(%rbp), %edx	# count, tmp208
	movl	%edx, loop_num(,%rax,4)	# tmp208, loop_num
	.loc 1 82 0
	movl	-100(%rbp), %eax	# ir, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -100(%rbp)	# D.5526, ir
.L16:
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# ir, D.5526
	cmpl	$1, %eax	#, D.5526
	jle	.L30	#,
	.loc 1 81 0 is_stmt 1
	movl	-104(%rbp), %eax	# ir, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -104(%rbp)	# D.5526, ir
.L15:
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# ir, D.5526
	cmpl	$1, %eax	#, D.5526
	jle	.L31	#,
	.loc 1 80 0 is_stmt 1
	movl	-108(%rbp), %eax	# ir, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -108(%rbp)	# D.5526, ir
.L14:
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# ir, D.5526
	cmpl	$1, %eax	#, D.5526
	jle	.L32	#,
	.loc 1 79 0 is_stmt 1
	movl	-112(%rbp), %eax	# ir, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -112(%rbp)	# D.5526, ir
.L13:
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# ir, D.5526
	cmpl	$1, %eax	#, D.5526
	jle	.L33	#,
.L12:
	.loc 1 74 0 is_stmt 1
	movl	-52(%rbp), %eax	# perm, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -52(%rbp)	# D.5526, perm
.L11:
	.loc 1 74 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# perm, D.5526
	cmpl	$3, %eax	#, D.5526
	jle	.L34	#,
	.loc 1 73 0 is_stmt 1
	movl	-56(%rbp), %eax	# perm, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -56(%rbp)	# D.5526, perm
.L10:
	.loc 1 73 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# perm, D.5526
	cmpl	$3, %eax	#, D.5526
	jle	.L35	#,
	.loc 1 72 0 is_stmt 1
	movl	-60(%rbp), %eax	# perm, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -60(%rbp)	# D.5526, perm
.L9:
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# perm, D.5526
	cmpl	$3, %eax	#, D.5526
	jle	.L36	#,
	.loc 1 71 0 is_stmt 1
	movl	-64(%rbp), %eax	# perm, D.5526
	addl	$1, %eax	#, D.5526
	movl	%eax, -64(%rbp)	# D.5526, perm
.L8:
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# perm, D.5526
	cmpl	$3, %eax	#, D.5526
	jle	.L37	#,
	.loc 1 67 0 is_stmt 1
	addl	$1, -136(%rbp)	#, iloop
.L7:
	.loc 1 67 0 is_stmt 0 discriminator 1
	cmpl	$2, -136(%rbp)	#, iloop
	jle	.L38	#,
	.loc 1 115 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.10
	testl	%eax, %eax	# this_node.10
	jne	.L39	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi	#,
	call	puts	#
.L39:
	.loc 1 116 0 is_stmt 1
	movl	$0, -132(%rbp)	#, i
	jmp	.L40	#
.L44:
	.loc 1 116 0 is_stmt 0 discriminator 2
	movl	$0, -128(%rbp)	#, j
	jmp	.L41	#
.L43:
	.loc 1 117 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.11
	testl	%eax, %eax	# this_node.11
	jne	.L42	#,
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp210
	cltq
	movl	loop_num(,%rax,4), %ecx	# loop_num, D.5526
	movl	-132(%rbp), %eax	# i, tmp212
	movslq	%eax, %rdx	# tmp212, tmp211
	movl	-128(%rbp), %eax	# j, tmp214
	cltq
	addq	%rdx, %rax	# tmp211, tmp215
	movq	loop_coeff(,%rax,8), %rax	# loop_coeff, D.5527
	movl	-132(%rbp), %edx	# i, tmp216
	movl	-128(%rbp), %esi	# j, tmp217
	movq	%rax, -152(%rbp)	# D.5527, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movl	$.LC9, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L42:
	.loc 1 116 0 is_stmt 1
	addl	$1, -128(%rbp)	#, j
.L41:
	.loc 1 116 0 is_stmt 0 discriminator 1
	cmpl	$2, -128(%rbp)	#, j
	jle	.L43	#,
	.loc 1 116 0 discriminator 2
	addl	$1, -132(%rbp)	#, i
.L40:
	.loc 1 116 0 discriminator 1
	cmpl	$0, -132(%rbp)	#, i
	jle	.L44	#,
	.loc 1 121 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	make_loop_table, .-make_loop_table
	.globl	char_num
	.type	char_num, @function
char_num:
.LFB3:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# dig, dig
	movq	%rsi, -64(%rbp)	# chr, chr
	movl	%edx, -68(%rbp)	# length, length
	.loc 1 133 0
	movl	$1, -44(%rbp)	#, tenl
	.loc 1 134 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L46	#
.L47:
	.loc 1 134 0 is_stmt 0 discriminator 2
	movl	-44(%rbp), %edx	# tenl, tmp99
	movl	%edx, %eax	# tmp99, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# tmp99, tmp100
	addl	%eax, %eax	# tmp101
	movl	%eax, -44(%rbp)	# tmp100, tenl
	addl	$1, -48(%rbp)	#, j
.L46:
	.loc 1 134 0 discriminator 1
	movl	-68(%rbp), %eax	# length, tmp102
	subl	$1, %eax	#, D.5533
	cmpl	-48(%rbp), %eax	# j, D.5533
	jg	.L47	#,
	.loc 1 136 0 is_stmt 1
	movl	-68(%rbp), %eax	# length, tmp103
	cltq
	salq	$2, %rax	#, D.5534
	leaq	-4(%rax), %rdx	#, D.5535
	movq	-56(%rbp), %rax	# dig, tmp104
	addq	%rdx, %rax	# D.5535, D.5536
	movl	(%rax), %edx	# *_21, D.5533
	movq	-64(%rbp), %rax	# chr, tmp105
	movl	%edx, (%rax)	# D.5533, *chr_23(D)
	.loc 1 137 0
	movl	-68(%rbp), %eax	# length, tmp109
	subl	$2, %eax	#, tmp108
	movl	%eax, -48(%rbp)	# tmp108, j
	jmp	.L48	#
.L49:
	.loc 1 137 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# chr, tmp110
	movl	(%rax), %edx	# *chr_23(D), D.5533
	movl	%edx, %eax	# D.5533, tmp111
	sall	$2, %eax	#, tmp111
	addl	%edx, %eax	# D.5533, tmp111
	addl	%eax, %eax	# tmp112
	movl	%eax, %edx	# tmp111, D.5533
	movl	-48(%rbp), %eax	# j, tmp113
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5534
	movq	-56(%rbp), %rax	# dig, tmp114
	addq	%rcx, %rax	# D.5534, D.5536
	movl	(%rax), %eax	# *_29, D.5533
	addl	%eax, %edx	# D.5533, D.5533
	movq	-64(%rbp), %rax	# chr, tmp115
	movl	%edx, (%rax)	# D.5533, *chr_23(D)
	subl	$1, -48(%rbp)	#, j
.L48:
	.loc 1 137 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, j
	jns	.L49	#,
	.loc 1 140 0 is_stmt 1
	movq	-64(%rbp), %rax	# chr, tmp116
	movl	(%rax), %eax	# *chr_23(D), tmp117
	movl	%eax, -40(%rbp)	# tmp117, old
	.loc 1 141 0
	movl	-68(%rbp), %eax	# length, tmp121
	subl	$1, %eax	#, tmp120
	movl	%eax, -48(%rbp)	# tmp120, j
	jmp	.L50	#
.L52:
	.loc 1 142 0
	movl	-48(%rbp), %eax	# j, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5534
	movq	-56(%rbp), %rax	# dig, tmp123
	addq	%rdx, %rax	# D.5534, D.5536
	movl	(%rax), %eax	# *_37, D.5533
	imull	-44(%rbp), %eax	# tenl, D.5533
	movl	-40(%rbp), %edx	# old, tmp127
	subl	%eax, %edx	# D.5533, tmp126
	movl	%edx, %eax	# tmp126, tmp126
	movl	%eax, -36(%rbp)	# tmp126, newv
	.loc 1 143 0
	movl	-36(%rbp), %edx	# newv, tmp128
	movl	%edx, %eax	# tmp128, tmp129
	sall	$2, %eax	#, tmp129
	addl	%edx, %eax	# tmp128, tmp129
	addl	%eax, %eax	# tmp130
	movl	%eax, %edx	# tmp129, D.5533
	movl	-48(%rbp), %eax	# j, tmp131
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5534
	movq	-56(%rbp), %rax	# dig, tmp132
	addq	%rcx, %rax	# D.5534, D.5536
	movl	(%rax), %eax	# *_44, D.5533
	addl	%edx, %eax	# D.5533, tmp133
	movl	%eax, -36(%rbp)	# tmp133, newv
	.loc 1 144 0
	movq	-64(%rbp), %rax	# chr, tmp134
	movl	(%rax), %eax	# *chr_23(D), D.5533
	cmpl	-36(%rbp), %eax	# newv, D.5533
	jle	.L51	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# chr, tmp135
	movl	-36(%rbp), %edx	# newv, tmp136
	movl	%edx, (%rax)	# tmp136, *chr_23(D)
.L51:
	.loc 1 145 0 is_stmt 1
	movl	-36(%rbp), %eax	# newv, tmp137
	movl	%eax, -40(%rbp)	# tmp137, old
	.loc 1 141 0
	subl	$1, -48(%rbp)	#, j
.L50:
	.loc 1 141 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, j
	jg	.L52	#,
	.loc 1 148 0 is_stmt 1
	movl	$0, -48(%rbp)	#, j
	jmp	.L53	#
.L54:
	.loc 1 148 0 is_stmt 0 discriminator 2
	movl	-48(%rbp), %eax	# j, tmp138
	movl	-68(%rbp), %edx	# length, tmp139
	subl	%eax, %edx	# tmp138, D.5533
	movl	%edx, %eax	# D.5533, D.5533
	cltq
	salq	$2, %rax	#, D.5534
	leaq	-4(%rax), %rdx	#, D.5535
	movq	-56(%rbp), %rax	# dig, tmp140
	addq	%rdx, %rax	# D.5535, D.5536
	movl	(%rax), %eax	# *_55, D.5533
	movl	$7, %edx	#, tmp141
	subl	%eax, %edx	# D.5533, D.5533
	movl	-48(%rbp), %eax	# j, tmp143
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.5533, bdig
	addl	$1, -48(%rbp)	#, j
.L53:
	.loc 1 148 0 discriminator 1
	movl	-48(%rbp), %eax	# j, tmp144
	cmpl	-68(%rbp), %eax	# length, tmp144
	jl	.L54	#,
	.loc 1 149 0 is_stmt 1
	movl	-68(%rbp), %eax	# length, tmp145
	subl	$1, %eax	#, D.5533
	cltq
	movl	-32(%rbp,%rax,4), %eax	# bdig, tmp147
	movl	%eax, -40(%rbp)	# tmp147, old
	.loc 1 150 0
	movl	-68(%rbp), %eax	# length, tmp151
	subl	$2, %eax	#, tmp150
	movl	%eax, -48(%rbp)	# tmp150, j
	jmp	.L55	#
.L56:
	.loc 1 150 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %edx	# old, tmp152
	movl	%edx, %eax	# tmp152, tmp153
	sall	$2, %eax	#, tmp153
	addl	%edx, %eax	# tmp152, tmp153
	addl	%eax, %eax	# tmp154
	movl	%eax, %edx	# tmp153, D.5533
	movl	-48(%rbp), %eax	# j, tmp156
	cltq
	movl	-32(%rbp,%rax,4), %eax	# bdig, D.5533
	addl	%edx, %eax	# D.5533, tmp157
	movl	%eax, -40(%rbp)	# tmp157, old
	subl	$1, -48(%rbp)	#, j
.L55:
	.loc 1 150 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, j
	jns	.L56	#,
	.loc 1 151 0 is_stmt 1
	movq	-64(%rbp), %rax	# chr, tmp158
	movl	(%rax), %eax	# *chr_23(D), D.5533
	cmpl	-40(%rbp), %eax	# old, D.5533
	jle	.L57	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# chr, tmp159
	movl	-40(%rbp), %edx	# old, tmp160
	movl	%edx, (%rax)	# tmp160, *chr_23(D)
.L57:
	.loc 1 152 0 is_stmt 1
	movl	-68(%rbp), %eax	# length, tmp164
	subl	$1, %eax	#, tmp163
	movl	%eax, -48(%rbp)	# tmp163, j
	jmp	.L58	#
.L60:
	.loc 1 153 0
	movl	-48(%rbp), %eax	# j, tmp166
	cltq
	movl	-32(%rbp,%rax,4), %eax	# bdig, D.5533
	imull	-44(%rbp), %eax	# tenl, D.5533
	movl	-40(%rbp), %edx	# old, tmp170
	subl	%eax, %edx	# D.5533, tmp169
	movl	%edx, %eax	# tmp169, tmp169
	movl	%eax, -36(%rbp)	# tmp169, newv
	.loc 1 154 0
	movl	-36(%rbp), %edx	# newv, tmp171
	movl	%edx, %eax	# tmp171, tmp172
	sall	$2, %eax	#, tmp172
	addl	%edx, %eax	# tmp171, tmp172
	addl	%eax, %eax	# tmp173
	movl	%eax, %edx	# tmp172, D.5533
	movl	-48(%rbp), %eax	# j, tmp175
	cltq
	movl	-32(%rbp,%rax,4), %eax	# bdig, D.5533
	addl	%edx, %eax	# D.5533, tmp176
	movl	%eax, -36(%rbp)	# tmp176, newv
	.loc 1 155 0
	movq	-64(%rbp), %rax	# chr, tmp177
	movl	(%rax), %eax	# *chr_23(D), D.5533
	cmpl	-36(%rbp), %eax	# newv, D.5533
	jle	.L59	#,
	.loc 1 155 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# chr, tmp178
	movl	-36(%rbp), %edx	# newv, tmp179
	movl	%edx, (%rax)	# tmp179, *chr_23(D)
.L59:
	.loc 1 156 0 is_stmt 1
	movl	-36(%rbp), %eax	# newv, tmp180
	movl	%eax, -40(%rbp)	# tmp180, old
	.loc 1 152 0
	subl	$1, -48(%rbp)	#, j
.L58:
	.loc 1 152 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, j
	jg	.L60	#,
	.loc 1 158 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	char_num, .-char_num
	.globl	imp_gauge_action
	.type	imp_gauge_action, @function
imp_gauge_action:
.LFB4:
	.loc 1 160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 172 0
	movl	$0, %eax	#, tmp73
	movq	%rax, -64(%rbp)	# tmp73, g_action
	.loc 1 175 0
	movl	$0, -72(%rbp)	#, iloop
	jmp	.L62	#
.L69:
	.loc 1 176 0
	movl	-72(%rbp), %eax	# iloop, tmp75
	cltq
	movl	loop_length(,%rax,4), %eax	# loop_length, tmp76
	movl	%eax, -68(%rbp)	# tmp76, length
	.loc 1 178 0
	movl	$0, -76(%rbp)	#, ln
	jmp	.L63	#
.L68:
	.loc 1 180 0
	movl	-76(%rbp), %eax	# ln, tmp78
	cltq
	movq	%rax, %rdx	# tmp77, tmp79
	addq	%rdx, %rdx	# tmp79
	addq	%rax, %rdx	# tmp77, tmp79
	leaq	0(,%rdx,8), %rax	#, tmp80
	movq	%rax, %rdx	# tmp80, tmp79
	movl	-72(%rbp), %eax	# iloop, tmp82
	movslq	%eax, %rcx	# tmp82, tmp81
	movq	%rcx, %rax	# tmp81, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rcx, %rax	# tmp81, tmp83
	salq	$7, %rax	#, tmp84
	addq	%rdx, %rax	# tmp79, tmp85
	leaq	loop_table(%rax), %rdx	#, D.5538
	movl	-68(%rbp), %eax	# length, tmp86
	movl	%eax, %esi	# tmp86,
	movq	%rdx, %rdi	# D.5538,
	call	path_product	#
	.loc 1 182 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L64	#
.L67:
	.loc 1 183 0
	leaq	1760(%rbx), %rax	#, D.5539
	movq	%rax, %rdi	# D.5539,
	call	trace_su3	#
	movsd	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp87
	movsd	%xmm1, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rdx	# %sfp, tmp88
	movq	%rax, -32(%rbp)	# tmp87, trace
	movq	%rdx, -24(%rbp)	# tmp88, trace
	.loc 1 184 0
	movsd	-32(%rbp), %xmm1	# trace.real, D.5540
	movsd	.LC10(%rip), %xmm0	#, tmp90
	subsd	%xmm1, %xmm0	# D.5540, tmp89
	movsd	%xmm0, -40(%rbp)	# tmp89, action
	.loc 1 186 0
	movl	-72(%rbp), %eax	# iloop, tmp92
	cltq
	movsd	loop_coeff(,%rax,8), %xmm0	# loop_coeff, D.5540
	mulsd	-40(%rbp), %xmm0	# action, tmp93
	movsd	%xmm0, -48(%rbp)	# tmp93, total_action
	.loc 1 187 0
	movq	-40(%rbp), %rax	# action, tmp94
	movq	%rax, -56(%rbp)	# tmp94, act2
	.loc 1 188 0
	movl	$1, -80(%rbp)	#, rep
	jmp	.L65	#
.L66:
	.loc 1 189 0 discriminator 2
	movsd	-56(%rbp), %xmm0	# act2, tmp96
	mulsd	-40(%rbp), %xmm0	# action, tmp95
	movsd	%xmm0, -56(%rbp)	# tmp95, act2
	.loc 1 190 0 discriminator 2
	movl	-80(%rbp), %eax	# rep, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movl	-72(%rbp), %eax	# iloop, tmp100
	cltq
	addq	%rdx, %rax	# tmp97, tmp101
	movsd	loop_coeff(,%rax,8), %xmm0	# loop_coeff, D.5540
	mulsd	-56(%rbp), %xmm0	# act2, D.5540
	movsd	-48(%rbp), %xmm1	# total_action, tmp103
	addsd	%xmm1, %xmm0	# tmp103, tmp102
	movsd	%xmm0, -48(%rbp)	# tmp102, total_action
	.loc 1 188 0 discriminator 2
	addl	$1, -80(%rbp)	#, rep
.L65:
	.loc 1 188 0 is_stmt 0 discriminator 1
	cmpl	$0, -80(%rbp)	#, rep
	jle	.L66	#,
	.loc 1 193 0 is_stmt 1
	movsd	-64(%rbp), %xmm0	# g_action, g_action.12
	addsd	-48(%rbp), %xmm0	# total_action, g_action.13
	movsd	%xmm0, -64(%rbp)	# g_action.13, g_action
	.loc 1 182 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L64:
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.14
	cmpl	%eax, %r12d	# sites_on_node.14, i
	jl	.L67	#,
	.loc 1 178 0 is_stmt 1
	addl	$1, -76(%rbp)	#, ln
.L63:
	.loc 1 178 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# iloop, tmp105
	cltq
	movl	loop_num(,%rax,4), %eax	# loop_num, D.5537
	cmpl	-76(%rbp), %eax	# ln, D.5537
	jg	.L68	#,
	.loc 1 175 0 is_stmt 1
	addl	$1, -72(%rbp)	#, iloop
.L62:
	.loc 1 175 0 is_stmt 0 discriminator 1
	cmpl	$2, -72(%rbp)	#, iloop
	jle	.L69	#,
	.loc 1 199 0 is_stmt 1
	leaq	-64(%rbp), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	g_doublesum	#
	.loc 1 200 0
	movq	-64(%rbp), %rax	# g_action, D.5540
	.loc 1 201 0
	movq	%rax, -88(%rbp)	# <retval>, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	imp_gauge_action, .-imp_gauge_action
	.globl	imp_gauge_force
	.type	imp_gauge_force, @function
imp_gauge_force:
.LFB5:
	.loc 1 205 0
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
	subq	$432, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movsd	%xmm0, -440(%rbp)	# eps, eps
	movl	%edi, -444(%rbp)	# mom_off, mom_off
	.loc 1 227 0
	movsd	beta(%rip), %xmm0	# beta, beta.15
	mulsd	-440(%rbp), %xmm0	# eps, D.5541
	movsd	.LC10(%rip), %xmm1	#, tmp109
	divsd	%xmm1, %xmm0	# tmp109, eb3
	movsd	%xmm0, -456(%rbp)	# eb3, %sfp
	.loc 1 230 0
	movl	$0, %r13d	#, dir
	jmp	.L72	#
.L101:
	.loc 1 232 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L73	#
.L78:
	.loc 1 232 0 is_stmt 0 discriminator 2
	movl	$0, -420(%rbp)	#, j
	jmp	.L74	#
.L77:
	movl	$0, -416(%rbp)	#, k
	jmp	.L75	#
.L76:
	.loc 1 233 0 is_stmt 1 discriminator 2
	movl	-416(%rbp), %eax	# k, tmp111
	movslq	%eax, %rcx	# tmp111, tmp110
	movl	-420(%rbp), %eax	# j, tmp113
	movslq	%eax, %rdx	# tmp113, tmp112
	movq	%rdx, %rax	# tmp112, tmp114
	addq	%rax, %rax	# tmp114
	addq	%rdx, %rax	# tmp112, tmp114
	addq	%rcx, %rax	# tmp110, tmp115
	addq	$119, %rax	#, tmp116
	salq	$4, %rax	#, tmp117
	leaq	(%rbx,%rax), %r14	#, tmp118
	xorpd	%xmm1, %xmm1	#
	xorpd	%xmm0, %xmm0	#
	call	cmplx	#
	movsd	%xmm0, -464(%rbp)	#, %sfp
	movq	-464(%rbp), %rax	# %sfp, tmp119
	movsd	%xmm1, -464(%rbp)	#, %sfp
	movq	-464(%rbp), %rdx	# %sfp, tmp120
	movq	%rax, (%r14)	# tmp119, st_5->staple.e
	movq	%rdx, 8(%r14)	# tmp120, st_5->staple.e
	.loc 1 232 0 discriminator 2
	addl	$1, -416(%rbp)	#, k
.L75:
	.loc 1 232 0 is_stmt 0 discriminator 1
	cmpl	$2, -416(%rbp)	#, k
	jle	.L76	#,
	.loc 1 232 0 discriminator 3
	addl	$1, -420(%rbp)	#, j
.L74:
	.loc 1 232 0 discriminator 1
	cmpl	$2, -420(%rbp)	#, j
	jle	.L77	#,
	.loc 1 232 0 discriminator 3
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L73:
	.loc 1 232 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.16
	cmpl	%eax, %r12d	# sites_on_node.16, i
	jl	.L78	#,
	.loc 1 236 0 is_stmt 1
	movl	$0, -404(%rbp)	#, ncount
	.loc 1 237 0
	movl	$0, -408(%rbp)	#, iloop
	jmp	.L79	#
.L98:
	.loc 1 238 0
	movl	-408(%rbp), %eax	# iloop, tmp122
	cltq
	movl	loop_length(,%rax,4), %eax	# loop_length, tmp123
	movl	%eax, -400(%rbp)	# tmp123, length
	.loc 1 239 0
	movl	$0, -412(%rbp)	#, ln
	jmp	.L80	#
.L97:
	.loc 1 243 0
	movl	$0, -416(%rbp)	#, k
	jmp	.L81	#
.L84:
	.loc 1 244 0
	movl	-416(%rbp), %eax	# k, tmp125
	movslq	%eax, %rsi	# tmp125, tmp124
	movl	-408(%rbp), %eax	# iloop, tmp127
	cltq
	movl	-412(%rbp), %edx	# ln, tmp129
	movslq	%edx, %rcx	# tmp129, tmp128
	movq	%rax, %rdx	# tmp126, tmp130
	addq	%rdx, %rdx	# tmp130
	addq	%rax, %rdx	# tmp126, tmp130
	movq	%rdx, %rax	# tmp130, tmp131
	salq	$5, %rax	#, tmp131
	movq	%rax, %rdx	# tmp131, tmp130
	movq	%rcx, %rax	# tmp128, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rcx, %rax	# tmp128, tmp132
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# tmp130, tmp134
	addq	%rsi, %rax	# tmp124, tmp135
	movl	loop_table(,%rax,4), %eax	# loop_table, D.5542
	cmpl	$3, %eax	#, D.5542
	jg	.L82	#,
	.loc 1 245 0
	movl	-416(%rbp), %eax	# k, tmp137
	movslq	%eax, %rsi	# tmp137, tmp136
	movl	-408(%rbp), %eax	# iloop, tmp139
	cltq
	movl	-412(%rbp), %edx	# ln, tmp141
	movslq	%edx, %rcx	# tmp141, tmp140
	movq	%rax, %rdx	# tmp138, tmp142
	addq	%rdx, %rdx	# tmp142
	addq	%rax, %rdx	# tmp138, tmp142
	movq	%rdx, %rax	# tmp142, tmp143
	salq	$5, %rax	#, tmp143
	movq	%rax, %rdx	# tmp143, tmp142
	movq	%rcx, %rax	# tmp140, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rcx, %rax	# tmp140, tmp144
	addq	%rax, %rax	# tmp145
	addq	%rdx, %rax	# tmp142, tmp146
	addq	%rsi, %rax	# tmp136, tmp147
	movl	loop_table(,%rax,4), %eax	# loop_table, D.5542
	leal	(%rax,%r13), %edx	#, D.5542
	movl	%edx, %eax	# D.5542, tmp148
	sarl	$31, %eax	#, tmp148
	shrl	$30, %eax	#, tmp149
	addl	%eax, %edx	# tmp149, tmp150
	andl	$3, %edx	#, tmp151
	subl	%eax, %edx	# tmp149, tmp152
	movl	%edx, %eax	# tmp152, tmp152
	movl	%eax, %edx	# tmp152, D.5542
	movl	-416(%rbp), %eax	# k, tmp154
	cltq
	movl	%edx, -384(%rbp,%rax,4)	# D.5542, dirs
	jmp	.L83	#
.L82:
	.loc 1 248 0
	movl	-416(%rbp), %eax	# k, tmp156
	movslq	%eax, %rsi	# tmp156, tmp155
	movl	-408(%rbp), %eax	# iloop, tmp158
	cltq
	movl	-412(%rbp), %edx	# ln, tmp160
	movslq	%edx, %rcx	# tmp160, tmp159
	movq	%rax, %rdx	# tmp157, tmp161
	addq	%rdx, %rdx	# tmp161
	addq	%rax, %rdx	# tmp157, tmp161
	movq	%rdx, %rax	# tmp161, tmp162
	salq	$5, %rax	#, tmp162
	movq	%rax, %rdx	# tmp162, tmp161
	movq	%rcx, %rax	# tmp159, tmp163
	addq	%rax, %rax	# tmp163
	addq	%rcx, %rax	# tmp159, tmp163
	addq	%rax, %rax	# tmp164
	addq	%rdx, %rax	# tmp161, tmp165
	addq	%rsi, %rax	# tmp155, tmp166
	movl	loop_table(,%rax,4), %eax	# loop_table, D.5542
	movl	$7, %edx	#, tmp167
	subl	%eax, %edx	# D.5542, D.5542
	movl	%edx, %eax	# D.5542, D.5542
	leal	(%rax,%r13), %edx	#, D.5542
	movl	%edx, %eax	# D.5542, tmp168
	sarl	$31, %eax	#, tmp168
	shrl	$30, %eax	#, tmp169
	addl	%eax, %edx	# tmp169, tmp170
	andl	$3, %edx	#, tmp171
	subl	%eax, %edx	# tmp169, tmp172
	movl	%edx, %eax	# tmp172, tmp172
	movl	$7, %edx	#, tmp173
	subl	%eax, %edx	# D.5542, D.5542
	movl	-416(%rbp), %eax	# k, tmp175
	cltq
	movl	%edx, -384(%rbp,%rax,4)	# D.5542, dirs
.L83:
	.loc 1 243 0
	addl	$1, -416(%rbp)	#, k
.L81:
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	-416(%rbp), %eax	# k, tmp176
	cmpl	-400(%rbp), %eax	# length, tmp176
	jl	.L84	#,
	.loc 1 253 0 is_stmt 1
	movl	-400(%rbp), %eax	# length, tmp180
	subl	$1, %eax	#, tmp179
	movl	%eax, -396(%rbp)	# tmp179, path_length
	.loc 1 258 0
	movl	$0, -416(%rbp)	#, k
	jmp	.L85	#
.L96:
	.loc 1 258 0 is_stmt 0 discriminator 2
	movl	-416(%rbp), %eax	# k, tmp182
	cltq
	movl	-384(%rbp,%rax,4), %eax	# dirs, D.5542
	cmpl	%r13d, %eax	# dir, D.5542
	je	.L86	#,
	.loc 1 258 0 discriminator 1
	movl	-416(%rbp), %eax	# k, tmp184
	cltq
	movl	-384(%rbp,%rax,4), %eax	# dirs, D.5542
	movl	$7, %edx	#, tmp185
	subl	%r13d, %edx	# dir, D.5542
	cmpl	%edx, %eax	# D.5542, D.5542
	jne	.L87	#,
.L86:
	.loc 1 259 0 is_stmt 1
	movl	-416(%rbp), %eax	# k, tmp187
	cltq
	movl	-384(%rbp,%rax,4), %eax	# dirs, D.5542
	cmpl	$3, %eax	#, D.5542
	jg	.L88	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	movl	$0, -420(%rbp)	#, j
	jmp	.L89	#
.L90:
	.loc 1 260 0 is_stmt 1 discriminator 2
	movl	-420(%rbp), %eax	# j, tmp188
	movl	-416(%rbp), %edx	# k, tmp189
	addl	%edx, %eax	# tmp189, D.5542
	addl	$1, %eax	#, D.5542
	cltd
	idivl	-400(%rbp)	# length
	movl	%edx, %eax	# tmp190, D.5542
	cltq
	movl	-384(%rbp,%rax,4), %edx	# dirs, D.5542
	movl	-420(%rbp), %eax	# j, tmp194
	cltq
	movl	%edx, -352(%rbp,%rax,4)	# D.5542, path_dir
	.loc 1 259 0 discriminator 2
	addl	$1, -420(%rbp)	#, j
.L89:
	.loc 1 259 0 is_stmt 0 discriminator 1
	movl	-420(%rbp), %eax	# j, tmp195
	cmpl	-396(%rbp), %eax	# path_length, tmp195
	jl	.L90	#,
.L88:
	.loc 1 262 0 is_stmt 1
	movl	-416(%rbp), %eax	# k, tmp197
	cltq
	movl	-384(%rbp,%rax,4), %eax	# dirs, D.5542
	cmpl	$3, %eax	#, D.5542
	jle	.L91	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	$0, -420(%rbp)	#, j
	jmp	.L92	#
.L93:
	.loc 1 263 0 is_stmt 1 discriminator 2
	movl	-396(%rbp), %eax	# path_length, tmp198
	subl	$1, %eax	#, D.5542
	subl	-420(%rbp), %eax	# j, D.5542
	movl	%eax, %ecx	# D.5542, D.5542
	.loc 1 264 0 discriminator 2
	movl	-420(%rbp), %eax	# j, tmp199
	movl	-416(%rbp), %edx	# k, tmp200
	addl	%edx, %eax	# tmp200, D.5542
	addl	$1, %eax	#, D.5542
	cltd
	idivl	-400(%rbp)	# length
	movl	%edx, %eax	# tmp201, D.5542
	cltq
	movl	-384(%rbp,%rax,4), %eax	# dirs, D.5542
	movl	$7, %edx	#, tmp204
	subl	%eax, %edx	# D.5542, D.5542
	.loc 1 263 0 discriminator 2
	movslq	%ecx, %rax	# D.5542, tmp205
	movl	%edx, -352(%rbp,%rax,4)	# D.5542, path_dir
	.loc 1 262 0 discriminator 2
	addl	$1, -420(%rbp)	#, j
.L92:
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	-420(%rbp), %eax	# j, tmp206
	cmpl	-396(%rbp), %eax	# path_length, tmp206
	jl	.L93	#,
.L91:
	.loc 1 267 0 is_stmt 1
	movl	-396(%rbp), %edx	# path_length, tmp207
	leaq	-352(%rbp), %rax	#, tmp208
	movl	%edx, %esi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	path_product	#
	.loc 1 274 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L94	#
.L95:
	.loc 1 275 0
	leaq	1760(%rbx), %rax	#, D.5543
	leaq	-320(%rbp), %rdx	#, tmp209
	movq	%rdx, %rsi	# tmp209,
	movq	%rax, %rdi	# D.5543,
	call	su3_adjoint	#
	.loc 1 277 0
	movl	-408(%rbp), %eax	# iloop, tmp211
	cltq
	movq	loop_coeff(,%rax,8), %rax	# loop_coeff, tmp212
	movq	%rax, -392(%rbp)	# tmp212, new_term
	.loc 1 293 0
	leaq	1904(%rbx), %rdx	#, D.5543
	leaq	1904(%rbx), %rcx	#, D.5543
	movq	-392(%rbp), %rax	# new_term, tmp213
	leaq	-320(%rbp), %rsi	#, tmp214
	movq	%rax, -464(%rbp)	# tmp213, %sfp
	movsd	-464(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.5543,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 274 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L94:
	.loc 1 274 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.18
	cmpl	%eax, %r12d	# sites_on_node.18, i
	jl	.L95	#,
	.loc 1 298 0 is_stmt 1
	addl	$1, -404(%rbp)	#, ncount
.L87:
	.loc 1 258 0 discriminator 1
	addl	$1, -416(%rbp)	#, k
.L85:
	movl	-416(%rbp), %eax	# k, tmp215
	cmpl	-400(%rbp), %eax	# length, tmp215
	jl	.L96	#,
	.loc 1 239 0
	addl	$1, -412(%rbp)	#, ln
.L80:
	.loc 1 239 0 is_stmt 0 discriminator 1
	movl	-408(%rbp), %eax	# iloop, tmp217
	cltq
	movl	loop_num(,%rax,4), %eax	# loop_num, D.5542
	cmpl	-412(%rbp), %eax	# ln, D.5542
	jg	.L97	#,
	.loc 1 237 0 is_stmt 1
	addl	$1, -408(%rbp)	#, iloop
.L79:
	.loc 1 237 0 is_stmt 0 discriminator 1
	cmpl	$2, -408(%rbp)	#, iloop
	jle	.L98	#,
	.loc 1 305 0 is_stmt 1
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, st
	jmp	.L99	#
.L100:
	.loc 1 306 0 discriminator 2
	leaq	1904(%rbx), %rcx	#, D.5543
	movslq	%r13d, %rdx	# dir, tmp218
	movq	%rdx, %rax	# tmp218, tmp219
	salq	$3, %rax	#, tmp219
	addq	%rdx, %rax	# tmp218, tmp219
	salq	$4, %rax	#, tmp220
	addq	$112, %rax	#, tmp221
	leaq	(%rbx,%rax), %rdi	#, D.5543
	leaq	-320(%rbp), %rax	#, tmp222
	movq	%rax, %rdx	# tmp222,
	movq	%rcx, %rsi	# D.5543,
	call	mult_su3_na	#
	.loc 1 307 0 discriminator 2
	movl	-444(%rbp), %eax	# mom_off, tmp223
	cltq
	leaq	(%rbx,%rax), %r14	#, momentum
	.loc 1 308 0 discriminator 2
	movslq	%r13d, %rdx	# dir, D.5545
	movq	%rdx, %rax	# D.5545, tmp224
	salq	$2, %rax	#, tmp224
	addq	%rdx, %rax	# D.5545, tmp224
	salq	$4, %rax	#, tmp225
	leaq	(%r14,%rax), %rdx	#, D.5546
	leaq	-176(%rbp), %rax	#, tmp226
	movq	%rax, %rsi	# tmp226,
	movq	%rdx, %rdi	# D.5546,
	call	uncompress_anti_hermitian	#
	.loc 1 309 0 discriminator 2
	leaq	1904(%rbx), %rdx	#, D.5543
	leaq	-320(%rbp), %rcx	#, tmp227
	leaq	-176(%rbp), %rax	#, tmp228
	movsd	-456(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	scalar_mult_sub_su3_matrix	#
	.loc 1 311 0 discriminator 2
	movslq	%r13d, %rdx	# dir, D.5545
	movq	%rdx, %rax	# D.5545, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# D.5545, tmp229
	salq	$4, %rax	#, tmp230
	leaq	(%r14,%rax), %rdx	#, D.5546
	leaq	1904(%rbx), %rax	#, D.5543
	movq	%rdx, %rsi	# D.5546,
	movq	%rax, %rdi	# D.5543,
	call	make_anti_hermitian	#
	.loc 1 305 0 discriminator 2
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, st
.L99:
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.19
	cmpl	%eax, %r12d	# sites_on_node.19, i
	jl	.L100	#,
	.loc 1 230 0 is_stmt 1
	addl	$1, %r13d	#, dir
.L72:
	.loc 1 230 0 is_stmt 0 discriminator 1
	cmpl	$3, %r13d	#, dir
	jle	.L101	#,
	.loc 1 318 0 is_stmt 1
	addq	$432, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	imp_gauge_force, .-imp_gauge_force
	.section	.rodata
.LC11:
	.string	"PLAQ:\t%f\t%f\n"
.LC12:
	.string	"P_LOOP:\t%e\t%e\n"
.LC13:
	.string	"G_LOOP:  %d  %d  %d   "
.LC14:
	.string	"\t%e"
.LC15:
	.string	"\t( "
.LC16:
	.string	"%d "
.LC17:
	.string	" )"
.LC18:
	.string	"GACTION: %e\n"
	.text
	.globl	g_measure
	.type	g_measure, @function
g_measure:
.LFB6:
	.loc 1 325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 337 0
	leaq	-80(%rbp), %rdx	#, tmp102
	leaq	-88(%rbp), %rax	#, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	d_plaquette	#
	.loc 1 338 0
	movl	this_node(%rip), %eax	# this_node, this_node.20
	testl	%eax, %eax	# this_node.20
	jne	.L103	#,
	.loc 1 338 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx	# st_plaquette, st_plaquette.21
	movq	-88(%rbp), %rax	# ss_plaquette, ss_plaquette.22
	movq	%rdx, -120(%rbp)	# st_plaquette.21, %sfp
	movsd	-120(%rbp), %xmm1	# %sfp,
	movq	%rax, -120(%rbp)	# ss_plaquette.22, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	$.LC11, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
.L103:
	.loc 1 340 0 is_stmt 1
	call	ploop	#
	movsd	%xmm0, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rax	# %sfp, tmp104
	movsd	%xmm1, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rdx	# %sfp, tmp105
	movq	%rax, -48(%rbp)	# tmp104, p_loop
	movq	%rdx, -40(%rbp)	# tmp105, p_loop
	.loc 1 341 0
	movl	this_node(%rip), %eax	# this_node, this_node.23
	testl	%eax, %eax	# this_node.23
	jne	.L104	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# p_loop.imag, D.5547
	movq	-48(%rbp), %rax	# p_loop.real, D.5547
	movq	%rdx, -120(%rbp)	# D.5547, %sfp
	movsd	-120(%rbp), %xmm1	# %sfp,
	movq	%rax, -120(%rbp)	# D.5547, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	$.LC12, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
.L104:
	.loc 1 344 0 is_stmt 1
	movl	$0, %eax	#, tmp106
	movq	%rax, -72(%rbp)	# tmp106, total_action
	.loc 1 345 0
	movl	$0, -108(%rbp)	#, iloop
	jmp	.L105	#
.L123:
	.loc 1 346 0
	movl	-108(%rbp), %eax	# iloop, tmp108
	cltq
	movl	loop_length(,%rax,4), %eax	# loop_length, tmp109
	movl	%eax, -100(%rbp)	# tmp109, length
	.loc 1 348 0
	movl	$0, -112(%rbp)	#, ln
	jmp	.L106	#
.L122:
	.loc 1 350 0
	movl	-112(%rbp), %eax	# ln, tmp111
	cltq
	movq	%rax, %rdx	# tmp110, tmp112
	addq	%rdx, %rdx	# tmp112
	addq	%rax, %rdx	# tmp110, tmp112
	leaq	0(,%rdx,8), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113, tmp112
	movl	-108(%rbp), %eax	# iloop, tmp115
	movslq	%eax, %rcx	# tmp115, tmp114
	movq	%rcx, %rax	# tmp114, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rcx, %rax	# tmp114, tmp116
	salq	$7, %rax	#, tmp117
	addq	%rdx, %rax	# tmp112, tmp118
	leaq	loop_table(%rax), %rdx	#, D.5549
	movl	-100(%rbp), %eax	# length, tmp119
	movl	%eax, %esi	# tmp119,
	movq	%rdx, %rdi	# D.5549,
	call	path_product	#
	.loc 1 352 0
	movl	$0, -104(%rbp)	#, rep
	jmp	.L107	#
.L108:
	.loc 1 352 0 is_stmt 0 discriminator 2
	movl	-104(%rbp), %eax	# rep, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movl	$0, %eax	#, tmp122
	movq	%rax, -96(%rbp,%rdx,8)	# tmp122, average
	addl	$1, -104(%rbp)	#, rep
.L107:
	.loc 1 352 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, rep
	jle	.L108	#,
	.loc 1 353 0 is_stmt 1
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L109	#
.L112:
	.loc 1 354 0
	leaq	1760(%r12), %rax	#, D.5550
	movq	%rax, %rdi	# D.5550,
	call	trace_su3	#
	movsd	%xmm0, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rax	# %sfp, tmp123
	movsd	%xmm1, -120(%rbp)	#, %sfp
	movq	-120(%rbp), %rdx	# %sfp, tmp124
	movq	%rax, -32(%rbp)	# tmp123, trace
	movq	%rdx, -24(%rbp)	# tmp124, trace
	.loc 1 355 0
	movsd	-96(%rbp), %xmm1	# average, D.5547
	movsd	-32(%rbp), %xmm0	# trace.real, D.5547
	addsd	%xmm1, %xmm0	# D.5547, D.5547
	movsd	%xmm0, -96(%rbp)	# D.5547, average
	.loc 1 356 0
	movsd	-32(%rbp), %xmm1	# trace.real, D.5547
	movsd	.LC10(%rip), %xmm0	#, tmp126
	subsd	%xmm1, %xmm0	# D.5547, tmp125
	movsd	%xmm0, -56(%rbp)	# tmp125, action
	.loc 1 357 0
	movl	-108(%rbp), %eax	# iloop, tmp128
	cltq
	movsd	loop_coeff(,%rax,8), %xmm0	# loop_coeff, D.5547
	mulsd	-56(%rbp), %xmm0	# action, D.5547
	movsd	-72(%rbp), %xmm1	# total_action, total_action.24
	addsd	%xmm1, %xmm0	# total_action.24, total_action.25
	movsd	%xmm0, -72(%rbp)	# total_action.25, total_action
	.loc 1 359 0
	movq	-56(%rbp), %rax	# action, tmp129
	movq	%rax, -64(%rbp)	# tmp129, act2
	.loc 1 360 0
	movl	$1, -104(%rbp)	#, rep
	jmp	.L110	#
.L111:
	.loc 1 361 0 discriminator 2
	movsd	-64(%rbp), %xmm0	# act2, tmp131
	mulsd	-56(%rbp), %xmm0	# action, tmp130
	movsd	%xmm0, -64(%rbp)	# tmp130, act2
	.loc 1 362 0 discriminator 2
	movl	-104(%rbp), %eax	# rep, tmp133
	cltq
	movsd	-96(%rbp,%rax,8), %xmm0	# average, D.5547
	addsd	-64(%rbp), %xmm0	# act2, D.5547
	movl	-104(%rbp), %eax	# rep, tmp135
	cltq
	movsd	%xmm0, -96(%rbp,%rax,8)	# D.5547, average
	.loc 1 363 0 discriminator 2
	movl	-104(%rbp), %eax	# rep, tmp137
	movslq	%eax, %rdx	# tmp137, tmp136
	movl	-108(%rbp), %eax	# iloop, tmp139
	cltq
	addq	%rdx, %rax	# tmp136, tmp140
	movsd	loop_coeff(,%rax,8), %xmm0	# loop_coeff, D.5547
	mulsd	-64(%rbp), %xmm0	# act2, D.5547
	movsd	-72(%rbp), %xmm1	# total_action, total_action.26
	addsd	%xmm1, %xmm0	# total_action.26, total_action.27
	movsd	%xmm0, -72(%rbp)	# total_action.27, total_action
	.loc 1 360 0 discriminator 2
	addl	$1, -104(%rbp)	#, rep
.L110:
	.loc 1 360 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, rep
	jle	.L111	#,
	.loc 1 353 0 is_stmt 1
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L109:
	.loc 1 353 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.28
	cmpl	%eax, %ebx	# sites_on_node.28, i
	jl	.L112	#,
	.loc 1 366 0 is_stmt 1
	leaq	-96(%rbp), %rax	#, tmp141
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	g_vecdoublesum	#
	.loc 1 368 0
	movl	this_node(%rip), %eax	# this_node, this_node.29
	testl	%eax, %eax	# this_node.29
	jne	.L113	#,
	.loc 1 368 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %ecx	# length, tmp142
	movl	-112(%rbp), %edx	# ln, tmp143
	movl	-108(%rbp), %eax	# iloop, tmp144
	movl	%eax, %esi	# tmp144,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L113:
	.loc 1 369 0 is_stmt 1
	movl	$0, -104(%rbp)	#, rep
	jmp	.L114	#
.L116:
	.loc 1 369 0 is_stmt 0 discriminator 2
	movl	this_node(%rip), %eax	# this_node, this_node.30
	testl	%eax, %eax	# this_node.30
	jne	.L115	#,
	.loc 1 369 0 discriminator 1
	movl	-104(%rbp), %eax	# rep, tmp146
	cltq
	movsd	-96(%rbp,%rax,8), %xmm1	# average, D.5547
	movl	volume(%rip), %eax	# volume, volume.31
	cvtsi2sd	%eax, %xmm0	# volume.31, D.5547
	divsd	%xmm0, %xmm1	# D.5547, D.5547
	movapd	%xmm1, %xmm0	# D.5547, D.5547
	movl	$.LC14, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L115:
	.loc 1 369 0 discriminator 2
	addl	$1, -104(%rbp)	#, rep
.L114:
	.loc 1 369 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, rep
	jle	.L116	#,
	.loc 1 370 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.32
	testl	%eax, %eax	# this_node.32
	jne	.L117	#,
	.loc 1 370 0 is_stmt 0 discriminator 1
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L117:
	.loc 1 371 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L118	#
.L120:
	.loc 1 371 0 is_stmt 0 discriminator 2
	movl	this_node(%rip), %eax	# this_node, this_node.33
	testl	%eax, %eax	# this_node.33
	jne	.L119	#,
	.loc 1 371 0 discriminator 1
	movslq	%ebx, %rsi	# i, tmp147
	movl	-108(%rbp), %eax	# iloop, tmp149
	cltq
	movl	-112(%rbp), %edx	# ln, tmp151
	movslq	%edx, %rcx	# tmp151, tmp150
	movq	%rax, %rdx	# tmp148, tmp152
	addq	%rdx, %rdx	# tmp152
	addq	%rax, %rdx	# tmp148, tmp152
	movq	%rdx, %rax	# tmp152, tmp153
	salq	$5, %rax	#, tmp153
	movq	%rax, %rdx	# tmp153, tmp152
	movq	%rcx, %rax	# tmp150, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rcx, %rax	# tmp150, tmp154
	addq	%rax, %rax	# tmp155
	addq	%rdx, %rax	# tmp152, tmp156
	addq	%rsi, %rax	# tmp147, tmp157
	movl	loop_table(,%rax,4), %eax	# loop_table, D.5548
	movl	%eax, %esi	# D.5548,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L119:
	.loc 1 371 0 discriminator 2
	addl	$1, %ebx	#, i
.L118:
	.loc 1 371 0 discriminator 1
	cmpl	-100(%rbp), %ebx	# length, i
	jl	.L120	#,
	.loc 1 372 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.34
	testl	%eax, %eax	# this_node.34
	jne	.L121	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movl	$.LC17, %edi	#,
	call	puts	#
.L121:
	.loc 1 348 0 is_stmt 1
	addl	$1, -112(%rbp)	#, ln
.L106:
	.loc 1 348 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# iloop, tmp159
	cltq
	movl	loop_num(,%rax,4), %eax	# loop_num, D.5548
	cmpl	-112(%rbp), %eax	# ln, D.5548
	jg	.L122	#,
	.loc 1 345 0 is_stmt 1
	addl	$1, -108(%rbp)	#, iloop
.L105:
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, iloop
	jle	.L123	#,
	.loc 1 375 0 is_stmt 1
	leaq	-72(%rbp), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	g_doublesum	#
	.loc 1 376 0
	movl	this_node(%rip), %eax	# this_node, this_node.35
	testl	%eax, %eax	# this_node.35
	jne	.L124	#,
	.loc 1 376 0 is_stmt 0 discriminator 1
	movsd	-72(%rbp), %xmm1	# total_action, total_action.36
	movl	volume(%rip), %eax	# volume, volume.37
	cvtsi2sd	%eax, %xmm0	# volume.37, D.5547
	divsd	%xmm0, %xmm1	# D.5547, D.5547
	movapd	%xmm1, %xmm0	# D.5547, D.5547
	movl	$.LC18, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L124:
	.loc 1 379 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.38
	testl	%eax, %eax	# this_node.38
	jne	.L102	#,
	.loc 1 379 0 is_stmt 0 discriminator 1
	movq	stdout(%rip), %rax	# stdout, stdout.39
	movq	%rax, %rdi	# stdout.39,
	call	fflush	#
.L102:
	.loc 1 381 0 is_stmt 1
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	g_measure, .-g_measure
	.section	.rodata
.LC19:
	.string	",  L = %d )\n"
	.text
	.globl	printpath
	.type	printpath, @function
printpath:
.LFB7:
	.loc 1 383 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# path, path
	movl	%esi, -28(%rbp)	# length, length
	.loc 1 385 0
	movl	this_node(%rip), %eax	# this_node, this_node.40
	testl	%eax, %eax	# this_node.40
	jne	.L127	#,
	.loc 1 385 0 is_stmt 0 discriminator 1
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L127:
	.loc 1 386 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L128	#
.L130:
	.loc 1 386 0 is_stmt 0 discriminator 2
	movl	this_node(%rip), %eax	# this_node, this_node.41
	testl	%eax, %eax	# this_node.41
	jne	.L129	#,
	.loc 1 386 0 discriminator 1
	movslq	%ebx, %rax	# i, D.5559
	leaq	0(,%rax,4), %rdx	#, D.5559
	movq	-24(%rbp), %rax	# path, tmp67
	addq	%rdx, %rax	# D.5559, D.5560
	movl	(%rax), %eax	# *_9, D.5561
	movl	%eax, %esi	# D.5561,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L129:
	.loc 1 386 0 discriminator 2
	addl	$1, %ebx	#, i
.L128:
	.loc 1 386 0 discriminator 1
	cmpl	-28(%rbp), %ebx	# length, i
	jl	.L130	#,
	.loc 1 387 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.42
	testl	%eax, %eax	# this_node.42
	jne	.L126	#,
	.loc 1 387 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# length, tmp68
	movl	%eax, %esi	# tmp68,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L126:
	.loc 1 388 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	printpath, .-printpath
	.data
	.align 4
	.type	loop_length_in.5006, @object
	.size	loop_length_in.5006, 12
loop_length_in.5006:
	.long	4
	.long	6
	.long	6
	.align 32
	.type	loop_ind.5005, @object
	.size	loop_ind.5005, 72
loop_ind.5005:
	.long	0
	.long	1
	.long	7
	.long	6
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	1
	.long	7
	.long	7
	.long	6
	.long	0
	.long	1
	.long	2
	.long	7
	.long	6
	.long	5
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1077149696
	.align 8
.LC3:
	.long	0
	.long	-1074790400
	.align 8
.LC4:
	.long	54975581
	.long	1071909752
	.align 8
.LC5:
	.long	2693803488
	.long	1067856376
	.align 8
.LC10:
	.long	0
	.long	1074266112
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "complex.h"
	.file 7 "random.h"
	.file 8 "su3.h"
	.file 9 "macros.h"
	.file 10 "./lattice.h"
	.file 11 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc5d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF131
	.byte	0x1
	.long	.LASF132
	.long	.LASF133
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
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
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF134
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa7
	.long	0x62
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
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x49
	.long	0x2ca
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0x4a
	.long	0x2a2
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x4b
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x4c
	.long	0x2a9
	.uleb128 0xd
	.byte	0x58
	.byte	0x7
	.byte	0x6
	.long	0x35b
	.uleb128 0xe
	.string	"r0"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x7
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF53
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0xa
	.long	0x2a2
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0xb
	.long	0x2d5
	.uleb128 0xd
	.byte	0x90
	.byte	0x8
	.byte	0xe
	.long	0x379
	.uleb128 0xe
	.string	"e"
	.byte	0x8
	.byte	0xe
	.long	0x379
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2ca
	.long	0x38f
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x8
	.byte	0xe
	.long	0x366
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0xf
	.long	0x3ad
	.uleb128 0xe
	.string	"c"
	.byte	0x8
	.byte	0xf
	.long	0x3ad
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2ca
	.long	0x3bd
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x8
	.byte	0xf
	.long	0x39a
	.uleb128 0xd
	.byte	0x50
	.byte	0x8
	.byte	0x10
	.long	0x425
	.uleb128 0xe
	.string	"m01"
	.byte	0x8
	.byte	0x11
	.long	0x2ca
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x8
	.byte	0x11
	.long	0x2ca
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x8
	.byte	0x11
	.long	0x2ca
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x11
	.long	0x2a2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x11
	.long	0x2a2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x11
	.long	0x2a2
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x11
	.long	0x2a2
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x11
	.long	0x3c8
	.uleb128 0xb
	.long	0x3bd
	.long	0x440
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x2a
	.long	0x62
	.uleb128 0xf
	.value	0x800
	.byte	0xa
	.byte	0x1f
	.long	0x562
	.uleb128 0xe
	.string	"x"
	.byte	0xa
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0xa
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0xa
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0xa
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF66
	.byte	0xa
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0xa
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF68
	.byte	0xa
	.byte	0x29
	.long	0x35b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF69
	.byte	0xa
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF70
	.byte	0xa
	.byte	0x32
	.long	0x562
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0xa
	.byte	0x3e
	.long	0x572
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF71
	.byte	0xa
	.byte	0x42
	.long	0x582
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0xa
	.byte	0x45
	.long	0x3bd
	.value	0x410
	.uleb128 0x11
	.long	.LASF72
	.byte	0xa
	.byte	0x46
	.long	0x3bd
	.value	0x440
	.uleb128 0x11
	.long	.LASF73
	.byte	0xa
	.byte	0x47
	.long	0x3bd
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0xa
	.byte	0x48
	.long	0x3bd
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0xa
	.byte	0x49
	.long	0x3bd
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF74
	.byte	0xa
	.byte	0x4a
	.long	0x3bd
	.value	0x500
	.uleb128 0x11
	.long	.LASF75
	.byte	0xa
	.byte	0x5d
	.long	0x430
	.value	0x530
	.uleb128 0x11
	.long	.LASF76
	.byte	0xa
	.byte	0x5f
	.long	0x430
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF77
	.byte	0xa
	.byte	0x60
	.long	0x3bd
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF78
	.byte	0xa
	.byte	0x62
	.long	0x38f
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF79
	.byte	0xa
	.byte	0x62
	.long	0x38f
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x38f
	.long	0x572
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x425
	.long	0x582
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2a2
	.long	0x592
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0xa
	.byte	0x63
	.long	0x44b
	.uleb128 0x12
	.long	.LASF108
	.byte	0x1
	.byte	0x36
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x69e
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x38
	.long	0x69e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"pp"
	.byte	0x1
	.byte	0x38
	.long	0x69e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"ir"
	.byte	0x1
	.byte	0x38
	.long	0x6ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0x39
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x13
	.long	.LASF83
	.byte	0x1
	.byte	0x39
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x39
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x39
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x14
	.string	"chr"
	.byte	0x1
	.byte	0x39
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x14
	.string	"vec"
	.byte	0x1
	.byte	0x3a
	.long	0x6be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x3b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x13
	.long	.LASF85
	.byte	0x1
	.byte	0x3b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0x3c
	.long	0x673
	.uleb128 0x16
	.long	0x287
	.uleb128 0x16
	.long	0x287
	.uleb128 0x16
	.long	0x62
	.byte	0
	.uleb128 0x13
	.long	.LASF86
	.byte	0x2
	.byte	0xb
	.long	0x6ce
	.uleb128 0x9
	.byte	0x3
	.quad	loop_ind.5005
	.uleb128 0x13
	.long	.LASF87
	.byte	0x2
	.byte	0x10
	.long	0x6e4
	.uleb128 0x9
	.byte	0x3
	.quad	loop_length_in.5006
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x6ae
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x6be
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x6ce
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x6e4
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x6f4
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.byte	0x7f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x783
	.uleb128 0x18
	.string	"dig"
	.byte	0x1
	.byte	0x7f
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"chr"
	.byte	0x1
	.byte	0x7f
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x7f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x80
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF88
	.byte	0x1
	.byte	0x81
	.long	0x6be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1
	.byte	0x81
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF90
	.byte	0x1
	.byte	0x81
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"old"
	.byte	0x1
	.byte	0x81
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.byte	0xa0
	.long	0x2a2
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x83e
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.string	"rep"
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xa3
	.long	0x83e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.byte	0xa4
	.long	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF94
	.byte	0x1
	.byte	0xa5
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF95
	.byte	0x1
	.byte	0xa6
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF96
	.byte	0x1
	.byte	0xa6
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF97
	.byte	0x1
	.byte	0xa6
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0xa7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.string	"ln"
	.byte	0x1
	.byte	0xaa
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x13
	.long	.LASF83
	.byte	0x1
	.byte	0xaa
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x592
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.byte	0xcd
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x981
	.uleb128 0x18
	.string	"eps"
	.byte	0x1
	.byte	0xcd
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.byte	0xcd
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xce
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.string	"dir"
	.byte	0x1
	.byte	0xce
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"st"
	.byte	0x1
	.byte	0xcf
	.long	0x83e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF100
	.byte	0x1
	.byte	0xd0
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.byte	0xd0
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1c
	.string	"eb3"
	.byte	0x1
	.byte	0xd1
	.long	0x2a2
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.byte	0xd2
	.long	0x981
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0xd7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0xd7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x13
	.long	.LASF103
	.byte	0x1
	.byte	0xd8
	.long	0x6be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0xd8
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x13
	.long	.LASF104
	.byte	0x1
	.byte	0xd9
	.long	0x6be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x13
	.long	.LASF105
	.byte	0x1
	.byte	0xd9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x14
	.string	"ln"
	.byte	0x1
	.byte	0xdb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x13
	.long	.LASF83
	.byte	0x1
	.byte	0xdb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x1d
	.long	.LASF95
	.byte	0x1
	.byte	0xdc
	.long	0x2a2
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x1
	.byte	0xdc
	.long	0x2a2
	.uleb128 0x13
	.long	.LASF106
	.byte	0x1
	.byte	0xdc
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.byte	0xde
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x425
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x145
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7b
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.value	0x146
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF111
	.byte	0x1
	.value	0x146
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF112
	.byte	0x1
	.value	0x147
	.long	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x148
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x149
	.long	0x83e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF93
	.byte	0x1
	.value	0x14a
	.long	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x1
	.value	0x14b
	.long	0xa7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.long	.LASF95
	.byte	0x1
	.value	0x14b
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x14b
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.long	.LASF97
	.byte	0x1
	.value	0x14b
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.value	0x14c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x20
	.string	"ln"
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.long	.LASF83
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x20
	.string	"rep"
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0xb
	.long	0x2a2
	.long	0xa8b
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.value	0x17f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xad4
	.uleb128 0x22
	.long	.LASF115
	.byte	0x1
	.value	0x17f
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF82
	.byte	0x1
	.value	0x17f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x180
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.long	.LASF116
	.byte	0xb
	.byte	0xa9
	.long	0x25b
	.uleb128 0x23
	.long	.LASF117
	.byte	0xa
	.byte	0x75
	.long	0x62
	.uleb128 0x23
	.long	.LASF118
	.byte	0xa
	.byte	0x79
	.long	0x2a2
	.uleb128 0x24
	.string	"u0"
	.byte	0xa
	.byte	0x79
	.long	0x2a2
	.uleb128 0x23
	.long	.LASF119
	.byte	0xa
	.byte	0x87
	.long	0x62
	.uleb128 0x23
	.long	.LASF120
	.byte	0xa
	.byte	0x8b
	.long	0x62
	.uleb128 0x23
	.long	.LASF121
	.byte	0xa
	.byte	0x9a
	.long	0x83e
	.uleb128 0xb
	.long	0x95
	.long	0xb30
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x25
	.long	.LASF122
	.byte	0x1
	.byte	0x1f
	.long	0xb20
	.uleb128 0x9
	.byte	0x3
	.quad	gauge_action_description
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.byte	0x20
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	gauge_action_nloops
	.uleb128 0x25
	.long	.LASF124
	.byte	0x1
	.byte	0x21
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	gauge_action_nreps
	.uleb128 0x25
	.long	.LASF125
	.byte	0x1
	.byte	0x22
	.long	0x6e4
	.uleb128 0x9
	.byte	0x3
	.quad	loop_length
	.uleb128 0x25
	.long	.LASF126
	.byte	0x1
	.byte	0x23
	.long	0x6e4
	.uleb128 0x9
	.byte	0x3
	.quad	loop_num
	.uleb128 0x25
	.long	.LASF86
	.byte	0x1
	.byte	0x26
	.long	0x6ce
	.uleb128 0x9
	.byte	0x3
	.quad	loop_ind
	.uleb128 0xb
	.long	0x62
	.long	0xbca
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x25
	.long	.LASF127
	.byte	0x1
	.byte	0x29
	.long	0xbae
	.uleb128 0x9
	.byte	0x3
	.quad	loop_table
	.uleb128 0xb
	.long	0x2a2
	.long	0xbf5
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF128
	.byte	0x1
	.byte	0x2c
	.long	0xbdf
	.uleb128 0x9
	.byte	0x3
	.quad	loop_coeff
	.uleb128 0xb
	.long	0x62
	.long	0xc1a
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x25
	.long	.LASF129
	.byte	0x1
	.byte	0x2f
	.long	0xc0a
	.uleb128 0x9
	.byte	0x3
	.quad	loop_char
	.uleb128 0xb
	.long	0x2a2
	.long	0xc4b
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x25
	.long	.LASF130
	.byte	0x1
	.byte	0x32
	.long	0xc2f
	.uleb128 0x9
	.byte	0x3
	.quad	loop_expect
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
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
.LASF90:
	.string	"newv"
.LASF31:
	.string	"_shortbuf"
.LASF134:
	.string	"_IO_lock_t"
.LASF94:
	.string	"g_action"
.LASF108:
	.string	"make_loop_table"
.LASF71:
	.string	"phase"
.LASF133:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF20:
	.string	"_IO_buf_end"
.LASF104:
	.string	"path_dir"
.LASF99:
	.string	"mom_off"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF83:
	.string	"iloop"
.LASF114:
	.string	"printpath"
.LASF12:
	.string	"_flags"
.LASF70:
	.string	"link"
.LASF24:
	.string	"_markers"
.LASF110:
	.string	"ss_plaquette"
.LASF125:
	.string	"loop_length"
.LASF64:
	.string	"anti_hermitmat"
.LASF80:
	.string	"site"
.LASF89:
	.string	"tenl"
.LASF121:
	.string	"lattice"
.LASF45:
	.string	"_pos"
.LASF116:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF117:
	.string	"volume"
.LASF48:
	.string	"float"
.LASF84:
	.string	"count"
.LASF67:
	.string	"index"
.LASF47:
	.string	"long long unsigned int"
.LASF106:
	.string	"new_term"
.LASF93:
	.string	"trace"
.LASF111:
	.string	"st_plaquette"
.LASF79:
	.string	"staple"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF26:
	.string	"_fileno"
.LASF7:
	.string	"size_t"
.LASF55:
	.string	"ic_state"
.LASF74:
	.string	"g_rand"
.LASF15:
	.string	"_IO_read_base"
.LASF120:
	.string	"this_node"
.LASF128:
	.string	"loop_coeff"
.LASF43:
	.string	"_next"
.LASF66:
	.string	"parity"
.LASF81:
	.string	"perm"
.LASF97:
	.string	"total_action"
.LASF115:
	.string	"path"
.LASF59:
	.string	"su3_vector"
.LASF11:
	.string	"char"
.LASF112:
	.string	"p_loop"
.LASF39:
	.string	"_mode"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF101:
	.string	"tmat2"
.LASF63:
	.string	"space"
.LASF75:
	.string	"tempvec"
.LASF96:
	.string	"act2"
.LASF54:
	.string	"addend"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF103:
	.string	"dirs"
.LASF21:
	.string	"_IO_save_base"
.LASF86:
	.string	"loop_ind"
.LASF130:
	.string	"loop_expect"
.LASF119:
	.string	"sites_on_node"
.LASF56:
	.string	"scale"
.LASF127:
	.string	"loop_table"
.LASF77:
	.string	"templongv1"
.LASF109:
	.string	"g_measure"
.LASF124:
	.string	"gauge_action_nreps"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF30:
	.string	"_vtable_offset"
.LASF122:
	.string	"gauge_action_description"
.LASF68:
	.string	"site_prn"
.LASF123:
	.string	"gauge_action_nloops"
.LASF100:
	.string	"tmat1"
.LASF105:
	.string	"path_length"
.LASF91:
	.string	"char_num"
.LASF62:
	.string	"m22im"
.LASF131:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"_IO_read_end"
.LASF61:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF76:
	.string	"templongvec"
.LASF60:
	.string	"m00im"
.LASF82:
	.string	"length"
.LASF85:
	.string	"flag"
.LASF95:
	.string	"action"
.LASF129:
	.string	"loop_char"
.LASF52:
	.string	"complex"
.LASF88:
	.string	"bdig"
.LASF50:
	.string	"real"
.LASF53:
	.string	"multiplier"
.LASF32:
	.string	"_lock"
.LASF92:
	.string	"imp_gauge_action"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF98:
	.string	"imp_gauge_force"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"_sbuf"
.LASF78:
	.string	"tempmat1"
.LASF51:
	.string	"imag"
.LASF17:
	.string	"_IO_write_ptr"
.LASF65:
	.string	"field_offset"
.LASF118:
	.string	"beta"
.LASF73:
	.string	"cg_p"
.LASF57:
	.string	"double_prn"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF113:
	.string	"average"
.LASF87:
	.string	"loop_length_in"
.LASF2:
	.string	"short unsigned int"
.LASF102:
	.string	"momentum"
.LASF132:
	.string	"gauge_stuff.c"
.LASF49:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF107:
	.string	"ncount"
.LASF126:
	.string	"loop_num"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF72:
	.string	"resid"
.LASF58:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF69:
	.string	"space1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
