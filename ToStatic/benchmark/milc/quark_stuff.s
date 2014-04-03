	.file	"quark_stuff.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# quark_stuff.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 32
	.type	path_ind, @object
	.size	path_ind, 168
path_ind:
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.zero	4
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.zero	4
	.long	1
	.long	0
	.long	6
	.long	-1
	.long	-1
	.long	-1
	.zero	4
	.long	1
	.long	2
	.long	0
	.long	5
	.long	6
	.long	-1
	.zero	4
	.long	1
	.long	2
	.long	3
	.long	0
	.long	4
	.long	5
	.long	6
	.long	1
	.long	1
	.long	0
	.long	6
	.long	6
	.long	-1
	.zero	4
	.align 16
	.type	path_length_in, @object
	.size	path_length_in, 24
path_length_in:
	.long	1
	.long	3
	.long	3
	.long	5
	.long	7
	.long	5
	.align 4
	.type	quark_action_npaths, @object
	.size	quark_action_npaths, 4
quark_action_npaths:
	.long	6
	.align 32
	.type	path_coeff, @object
	.size	path_coeff, 48
path_coeff:
	.long	0
	.long	1071906816
	.long	1431655765
	.long	-1079683755
	.long	0
	.long	-1078984704
	.long	0
	.long	1066401792
	.long	1431655765
	.long	-1083878059
	.long	0
	.long	-1078984704
	.align 32
	.type	quark_action_description, @object
	.size	quark_action_description, 72
quark_action_description:
	.string	"\"O(a^2): couplings(pi)=0, Naik term, No O(a^2) errors, tadpole weights\""
	.comm	path_num,24,16
	.local	act_path_coeff
	.comm	act_path_coeff,48,32
	.comm	q_paths,33024,32
	.comm	num_q_paths,4,4
	.comm	num_basic_paths,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"path coefficients: npath  path_coeff  multiplicity"
	.align 8
.LC1:
	.string	"                    %d      %e     %d\n"
	.text
	.globl	make_path_table
	.type	make_path_table, @function
make_path_table:
.LFB2:
	.file 1 "quark_stuff.c"
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 107 0
	movl	this_node(%rip), %eax	# this_node, this_node.0
	testl	%eax, %eax	# this_node.0
	jne	.L2	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movl	$quark_action_description, %edi	#,
	call	puts	#
.L2:
	.loc 1 108 0 is_stmt 1
	movl	$0, num_q_paths(%rip)	#, num_q_paths
	.loc 1 109 0
	movl	$0, num_basic_paths(%rip)	#, num_basic_paths
	.loc 1 113 0
	movl	this_node(%rip), %eax	# this_node, this_node.1
	testl	%eax, %eax	# this_node.1
	jne	.L3	#,
	.loc 1 113 0 is_stmt 0 discriminator 1
	movl	$.LC0, %edi	#,
	call	puts	#
.L3:
	.loc 1 114 0 is_stmt 1
	movl	$0, -20(%rbp)	#, j
	jmp	.L4	#
.L8:
.LBB2:
	.loc 1 116 0
	movl	-20(%rbp), %eax	# j, tmp68
	cltq
	movq	path_coeff(,%rax,8), %rax	# path_coeff, tmp69
	movq	%rax, -8(%rbp)	# tmp69, this_coeff
	.loc 1 118 0
	movl	$1, -16(%rbp)	#, k
	jmp	.L5	#
.L6:
	.loc 1 118 0 is_stmt 0 discriminator 2
	movsd	u0(%rip), %xmm1	# u0, u0.2
	movsd	-8(%rbp), %xmm0	# this_coeff, tmp71
	divsd	%xmm1, %xmm0	# u0.2, tmp70
	movsd	%xmm0, -8(%rbp)	# tmp70, this_coeff
	addl	$1, -16(%rbp)	#, k
.L5:
	.loc 1 118 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp73
	cltq
	movl	path_length_in(,%rax,4), %eax	# path_length_in, D.6707
	cmpl	-16(%rbp), %eax	# k, D.6707
	jg	.L6	#,
	.loc 1 120 0 is_stmt 1
	movl	-20(%rbp), %eax	# j, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	-8(%rbp), %rax	# this_coeff, tmp76
	movq	%rax, act_path_coeff(,%rdx,8)	# tmp76, act_path_coeff
	.loc 1 121 0
	movl	-20(%rbp), %eax	# j, tmp78
	cltq
	movl	path_length_in(,%rax,4), %ecx	# path_length_in, D.6707
	movl	-20(%rbp), %eax	# j, tmp80
	cltq
	salq	$2, %rax	#, tmp82
	leaq	0(,%rax,8), %rdx	#, tmp83
	subq	%rax, %rdx	# tmp81, tmp83
	addq	$path_ind, %rdx	#, D.6708
	movq	-8(%rbp), %rax	# this_coeff, tmp84
	movq	%rax, -40(%rbp)	# tmp84, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# D.6707,
	movq	%rdx, %rdi	# D.6708,
	call	add_basic_path	#
	movl	%eax, -12(%rbp)	# tmp85, i
	.loc 1 123 0
	movl	this_node(%rip), %eax	# this_node, this_node.3
	testl	%eax, %eax	# this_node.3
	jne	.L7	#,
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %edx	# i, tmp86
	movq	-8(%rbp), %rax	# this_coeff, tmp87
	movl	-20(%rbp), %ecx	# j, tmp88
	movq	%rax, -40(%rbp)	# tmp87, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp88,
	movl	$.LC1, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L7:
.LBE2:
	.loc 1 114 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L4:
	.loc 1 114 0 is_stmt 0 discriminator 1
	movl	quark_action_npaths(%rip), %eax	# quark_action_npaths, quark_action_npaths.4
	cmpl	%eax, -20(%rbp)	# quark_action_npaths.4, j
	jl	.L8	#,
	.loc 1 126 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	make_path_table, .-make_path_table
	.section	.rodata
.LC2:
	.string	"OOPS: MAX_NUM too small"
	.text
	.globl	add_basic_path
	.type	add_basic_path, @function
add_basic_path:
.LFB3:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -136(%rbp)	# basic_vec, basic_vec
	movl	%esi, -140(%rbp)	# length, length
	movsd	%xmm0, -152(%rbp)	# coeff, coeff
	.loc 1 137 0
	movl	$0, -120(%rbp)	#, path_num
	.loc 1 143 0
	movl	$0, -64(%rbp)	#, perm
	jmp	.L10	#
.L44:
	.loc 1 144 0
	movl	$0, -60(%rbp)	#, perm
	jmp	.L11	#
.L43:
	.loc 1 145 0
	movl	$0, -56(%rbp)	#, perm
	jmp	.L12	#
.L42:
	.loc 1 146 0
	movl	$0, -52(%rbp)	#, perm
	jmp	.L13	#
.L41:
	.loc 1 147 0
	movl	-64(%rbp), %edx	# perm, D.6712
	movl	-60(%rbp), %eax	# perm, D.6712
	cmpl	%eax, %edx	# D.6712, D.6712
	je	.L14	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %edx	# perm, D.6712
	movl	-56(%rbp), %eax	# perm, D.6712
	cmpl	%eax, %edx	# D.6712, D.6712
	je	.L14	#,
	.loc 1 148 0 is_stmt 1
	movl	-64(%rbp), %edx	# perm, D.6712
	movl	-52(%rbp), %eax	# perm, D.6712
	cmpl	%eax, %edx	# D.6712, D.6712
	je	.L14	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %edx	# perm, D.6712
	movl	-56(%rbp), %eax	# perm, D.6712
	cmpl	%eax, %edx	# D.6712, D.6712
	je	.L14	#,
	.loc 1 149 0 is_stmt 1
	movl	-60(%rbp), %edx	# perm, D.6712
	movl	-52(%rbp), %eax	# perm, D.6712
	cmpl	%eax, %edx	# D.6712, D.6712
	je	.L14	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %edx	# perm, D.6712
	movl	-52(%rbp), %eax	# perm, D.6712
	cmpl	%eax, %edx	# D.6712, D.6712
	je	.L14	#,
	.loc 1 151 0 is_stmt 1
	movl	$0, -112(%rbp)	#, ir
	jmp	.L15	#
.L40:
	.loc 1 152 0
	movl	$0, -108(%rbp)	#, ir
	jmp	.L16	#
.L39:
	.loc 1 153 0
	movl	$0, -104(%rbp)	#, ir
	jmp	.L17	#
.L38:
	.loc 1 154 0
	movl	$0, -100(%rbp)	#, ir
	jmp	.L18	#
.L37:
	.loc 1 155 0
	movl	$0, -124(%rbp)	#, j
	jmp	.L19	#
.L21:
	.loc 1 156 0
	movl	-124(%rbp), %eax	# j, tmp127
	cltq
	movl	-64(%rbp,%rax,4), %edx	# perm, D.6712
	movl	-124(%rbp), %eax	# j, tmp129
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.6712, pp
	.loc 1 158 0
	movl	-124(%rbp), %eax	# j, tmp131
	cltq
	movl	-112(%rbp,%rax,4), %eax	# ir, D.6712
	cmpl	$1, %eax	#, D.6712
	jne	.L20	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# j, tmp133
	cltq
	movl	-32(%rbp,%rax,4), %eax	# pp, D.6712
	movl	$7, %edx	#, tmp134
	subl	%eax, %edx	# D.6712, D.6712
	movl	-124(%rbp), %eax	# j, tmp136
	cltq
	movl	%edx, -32(%rbp,%rax,4)	# D.6712, pp
.L20:
	.loc 1 159 0 is_stmt 1
	movl	$7, %eax	#, tmp137
	subl	-124(%rbp), %eax	# j, D.6712
	movl	%eax, %ecx	# D.6712, D.6712
	movl	-124(%rbp), %eax	# j, tmp139
	cltq
	movl	-32(%rbp,%rax,4), %eax	# pp, D.6712
	movl	$7, %edx	#, tmp140
	subl	%eax, %edx	# D.6712, D.6712
	movslq	%ecx, %rax	# D.6712, tmp141
	movl	%edx, -32(%rbp,%rax,4)	# D.6712, pp
	.loc 1 155 0
	addl	$1, -124(%rbp)	#, j
.L19:
	.loc 1 155 0 is_stmt 0 discriminator 1
	cmpl	$3, -124(%rbp)	#, j
	jle	.L21	#,
	.loc 1 162 0 is_stmt 1
	movl	$0, -124(%rbp)	#, j
	jmp	.L22	#
.L23:
	.loc 1 162 0 is_stmt 0 discriminator 2
	movl	-124(%rbp), %eax	# j, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6713
	movq	-136(%rbp), %rax	# basic_vec, tmp143
	addq	%rdx, %rax	# D.6713, D.6714
	movl	(%rax), %eax	# *_53, D.6712
	cltq
	movl	-32(%rbp,%rax,4), %edx	# pp, D.6712
	movl	-124(%rbp), %eax	# j, tmp146
	cltq
	movl	%edx, -96(%rbp,%rax,4)	# D.6712, vec
	addl	$1, -124(%rbp)	#, j
.L22:
	.loc 1 162 0 discriminator 1
	movl	-124(%rbp), %eax	# j, tmp147
	cmpl	-140(%rbp), %eax	# length, tmp147
	jl	.L23	#,
	.loc 1 163 0 is_stmt 1
	movl	-140(%rbp), %eax	# length, tmp148
	movl	%eax, -124(%rbp)	# tmp148, j
	jmp	.L24	#
.L25:
	.loc 1 163 0 is_stmt 0 discriminator 2
	movl	-124(%rbp), %eax	# j, tmp150
	cltq
	movl	$-1, -96(%rbp,%rax,4)	#, vec
	addl	$1, -124(%rbp)	#, j
.L24:
	.loc 1 163 0 discriminator 1
	cmpl	$6, -124(%rbp)	#, j
	jle	.L25	#,
	.loc 1 165 0 is_stmt 1
	movl	$0, -116(%rbp)	#, flag
	.loc 1 167 0
	movl	$0, -124(%rbp)	#, j
	jmp	.L26	#
.L29:
	.loc 1 168 0
	movl	-124(%rbp), %eax	# j, tmp152
	movslq	%eax, %rdx	# tmp152, tmp151
	movq	%rdx, %rax	# tmp151, tmp153
	addq	%rax, %rax	# tmp153
	addq	%rdx, %rax	# tmp151, tmp153
	salq	$4, %rax	#, tmp154
	leaq	q_paths(%rax), %rcx	#, D.6715
	leaq	-96(%rbp), %rax	#, tmp155
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# D.6715,
	movq	%rax, %rdi	# tmp155,
	call	is_path_equal	#
	movl	%eax, -116(%rbp)	# tmp156, flag
	.loc 1 169 0
	cmpl	$1, -116(%rbp)	#, flag
	jne	.L27	#,
	.loc 1 169 0 is_stmt 0 discriminator 1
	jmp	.L28	#
.L27:
	.loc 1 167 0 is_stmt 1
	addl	$1, -124(%rbp)	#, j
.L26:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.5
	cmpl	%eax, -124(%rbp)	# num_q_paths.5, j
	jl	.L29	#,
.L28:
	.loc 1 171 0 is_stmt 1
	cmpl	$0, -116(%rbp)	#, flag
	jne	.L30	#,
	.loc 1 172 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.6
	cmpl	$687, %eax	#, num_q_paths.6
	jle	.L31	#,
	.loc 1 173 0
	movl	this_node(%rip), %eax	# this_node, this_node.7
	testl	%eax, %eax	# this_node.7
	jne	.L32	#,
	.loc 1 173 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	call	puts	#
.L32:
	.loc 1 174 0 is_stmt 1
	movl	$0, %edi	#,
	call	exit	#
.L31:
	.loc 1 176 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.8
	movslq	%eax, %rdx	# num_q_paths.8, tmp157
	movq	%rdx, %rax	# tmp157, tmp158
	addq	%rax, %rax	# tmp158
	addq	%rdx, %rax	# tmp157, tmp158
	salq	$4, %rax	#, tmp159
	leaq	q_paths+16(%rax), %rdx	#, tmp160
	movl	-140(%rbp), %eax	# length, tmp161
	movl	%eax, 12(%rdx)	# tmp161, q_paths[num_q_paths.8_67].length
	.loc 1 177 0
	movl	$0, -124(%rbp)	#, j
	jmp	.L33	#
.L34:
	.loc 1 177 0 is_stmt 0 discriminator 2
	movl	num_q_paths(%rip), %edx	# num_q_paths, num_q_paths.9
	movl	-124(%rbp), %eax	# j, tmp163
	cltq
	movl	-96(%rbp,%rax,4), %ecx	# vec, D.6712
	movl	-124(%rbp), %eax	# j, tmp165
	movslq	%eax, %rsi	# tmp165, tmp164
	movslq	%edx, %rdx	# num_q_paths.9, tmp166
	movq	%rdx, %rax	# tmp166, tmp167
	addq	%rax, %rax	# tmp167
	addq	%rdx, %rax	# tmp166, tmp167
	salq	$2, %rax	#, tmp168
	addq	%rsi, %rax	# tmp164, tmp169
	movl	%ecx, q_paths(,%rax,4)	# D.6712, q_paths[num_q_paths.9_69].dir
	addl	$1, -124(%rbp)	#, j
.L33:
	.loc 1 177 0 discriminator 1
	cmpl	$6, -124(%rbp)	#, j
	jle	.L34	#,
	.loc 1 179 0 is_stmt 1
	movl	-112(%rbp), %eax	# ir, D.6712
	testl	%eax, %eax	# D.6712
	jne	.L35	#,
	.loc 1 180 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.10
	movslq	%eax, %rdx	# num_q_paths.10, tmp170
	movq	%rdx, %rax	# tmp170, tmp171
	addq	%rax, %rax	# tmp171
	addq	%rdx, %rax	# tmp170, tmp171
	salq	$4, %rax	#, tmp172
	leaq	q_paths+32(%rax), %rdx	#, tmp173
	movq	-152(%rbp), %rax	# coeff, tmp174
	movq	%rax, (%rdx)	# tmp174, q_paths[num_q_paths.10_73].coeff
	.loc 1 181 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.11
	movslq	%eax, %rdx	# num_q_paths.11, tmp175
	movq	%rdx, %rax	# tmp175, tmp176
	addq	%rax, %rax	# tmp176
	addq	%rdx, %rax	# tmp175, tmp176
	salq	$4, %rax	#, tmp177
	leaq	q_paths+32(%rax), %rdx	#, tmp178
	movabsq	$4607182418800017408, %rax	#, tmp179
	movq	%rax, 8(%rdx)	# tmp179, q_paths[num_q_paths.11_75].forwback
	jmp	.L36	#
.L35:
	.loc 1 184 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.12
	movsd	-152(%rbp), %xmm1	# coeff, tmp180
	movsd	.LC4(%rip), %xmm0	#, tmp181
	xorpd	%xmm1, %xmm0	# tmp180, D.6716
	movslq	%eax, %rdx	# num_q_paths.12, tmp182
	movq	%rdx, %rax	# tmp182, tmp183
	addq	%rax, %rax	# tmp183
	addq	%rdx, %rax	# tmp182, tmp183
	salq	$4, %rax	#, tmp184
	addq	$q_paths+32, %rax	#, tmp185
	movsd	%xmm0, (%rax)	# D.6716, q_paths[num_q_paths.12_76].coeff
	.loc 1 185 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.13
	movslq	%eax, %rdx	# num_q_paths.13, tmp186
	movq	%rdx, %rax	# tmp186, tmp187
	addq	%rax, %rax	# tmp187
	addq	%rdx, %rax	# tmp186, tmp187
	salq	$4, %rax	#, tmp188
	leaq	q_paths+32(%rax), %rdx	#, tmp189
	movabsq	$-4616189618054758400, %rax	#, tmp190
	movq	%rax, 8(%rdx)	# tmp190, q_paths[num_q_paths.13_78].forwback
.L36:
	.loc 1 187 0
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.14
	addl	$1, %eax	#, num_q_paths.15
	movl	%eax, num_q_paths(%rip)	# num_q_paths.15, num_q_paths
	.loc 1 188 0
	addl	$1, -120(%rbp)	#, path_num
.L30:
	.loc 1 154 0
	movl	-100(%rbp), %eax	# ir, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -100(%rbp)	# D.6712, ir
.L18:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# ir, D.6712
	cmpl	$1, %eax	#, D.6712
	jle	.L37	#,
	.loc 1 153 0 is_stmt 1
	movl	-104(%rbp), %eax	# ir, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -104(%rbp)	# D.6712, ir
.L17:
	.loc 1 153 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# ir, D.6712
	cmpl	$1, %eax	#, D.6712
	jle	.L38	#,
	.loc 1 152 0 is_stmt 1
	movl	-108(%rbp), %eax	# ir, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -108(%rbp)	# D.6712, ir
.L16:
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# ir, D.6712
	cmpl	$1, %eax	#, D.6712
	jle	.L39	#,
	.loc 1 151 0 is_stmt 1
	movl	-112(%rbp), %eax	# ir, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -112(%rbp)	# D.6712, ir
.L15:
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# ir, D.6712
	cmpl	$1, %eax	#, D.6712
	jle	.L40	#,
.L14:
	.loc 1 146 0 is_stmt 1
	movl	-52(%rbp), %eax	# perm, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -52(%rbp)	# D.6712, perm
.L13:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# perm, D.6712
	cmpl	$3, %eax	#, D.6712
	jle	.L41	#,
	.loc 1 145 0 is_stmt 1
	movl	-56(%rbp), %eax	# perm, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -56(%rbp)	# D.6712, perm
.L12:
	.loc 1 145 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# perm, D.6712
	cmpl	$3, %eax	#, D.6712
	jle	.L42	#,
	.loc 1 144 0 is_stmt 1
	movl	-60(%rbp), %eax	# perm, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -60(%rbp)	# D.6712, perm
.L11:
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# perm, D.6712
	cmpl	$3, %eax	#, D.6712
	jle	.L43	#,
	.loc 1 143 0 is_stmt 1
	movl	-64(%rbp), %eax	# perm, D.6712
	addl	$1, %eax	#, D.6712
	movl	%eax, -64(%rbp)	# D.6712, perm
.L10:
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# perm, D.6712
	cmpl	$3, %eax	#, D.6712
	jle	.L44	#,
	.loc 1 196 0 is_stmt 1
	movl	num_basic_paths(%rip), %eax	# num_basic_paths, num_basic_paths.16
	addl	$1, %eax	#, num_basic_paths.17
	movl	%eax, num_basic_paths(%rip)	# num_basic_paths.17, num_basic_paths
	.loc 1 197 0
	movl	-120(%rbp), %eax	# path_num, D.6712
	.loc 1 198 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	add_basic_path, .-add_basic_path
	.globl	path_transport
	.type	path_transport, @function
path_transport:
.LFB4:
	.loc 1 208 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)	# src, src
	movl	%esi, -88(%rbp)	# dest, dest
	movl	%edx, -92(%rbp)	# parity, parity
	movq	%rcx, -104(%rbp)	# dir, dir
	movl	%r8d, -96(%rbp)	# length, length
	.loc 1 217 0
	cmpl	$0, -96(%rbp)	#, length
	jle	.L47	#,
	.loc 1 218 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.18
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6718,
	call	calloc	#
	movq	%rax, -56(%rbp)	# tmp161, tmp_src
	.loc 1 219 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.19
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6718,
	call	calloc	#
	movq	%rax, -48(%rbp)	# tmp162, tmp_dest
	.loc 1 220 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.20
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6718,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp163, tmp_work
	.loc 1 222 0
	movl	-96(%rbp), %eax	# length, tmp167
	subl	$1, %eax	#, tmp166
	movl	%eax, -68(%rbp)	# tmp166, j
	jmp	.L48	#
.L85:
	.loc 1 224 0
	movl	-68(%rbp), %eax	# j, j.21
	andl	$1, %eax	#, D.6719
	testl	%eax, %eax	# D.6719
	jne	.L49	#,
	.loc 1 225 0
	movl	-92(%rbp), %eax	# parity, tmp168
	movl	%eax, -64(%rbp)	# tmp168, tmp_parity
	.loc 1 226 0
	movl	-64(%rbp), %eax	# tmp_parity, tmp_parity
	cmpl	$2, %eax	#, tmp_parity
	je	.L51	#,
	cmpl	$3, %eax	#, tmp_parity
	je	.L52	#,
	cmpl	$1, %eax	#, tmp_parity
	je	.L53	#,
	jmp	.L54	#
.L51:
	.loc 1 227 0
	movl	$1, -60(%rbp)	#, tmp_otherparity
	jmp	.L50	#
.L53:
	.loc 1 228 0
	movl	$2, -60(%rbp)	#, tmp_otherparity
	jmp	.L50	#
.L52:
	.loc 1 229 0
	movl	$3, -60(%rbp)	#, tmp_otherparity
	nop
.L50:
	jmp	.L54	#
.L49:
	.loc 1 233 0
	movl	-92(%rbp), %eax	# parity, tmp170
	movl	%eax, -60(%rbp)	# tmp170, tmp_otherparity
	.loc 1 234 0
	movl	-60(%rbp), %eax	# tmp_otherparity, tmp_otherparity
	cmpl	$2, %eax	#, tmp_otherparity
	je	.L55	#,
	cmpl	$3, %eax	#, tmp_otherparity
	je	.L56	#,
	cmpl	$1, %eax	#, tmp_otherparity
	je	.L57	#,
	jmp	.L54	#
.L55:
	.loc 1 235 0
	movl	$1, -64(%rbp)	#, tmp_parity
	jmp	.L54	#
.L57:
	.loc 1 236 0
	movl	$2, -64(%rbp)	#, tmp_parity
	jmp	.L54	#
.L56:
	.loc 1 237 0
	movl	$3, -64(%rbp)	#, tmp_parity
	nop
.L54:
	.loc 1 241 0
	movl	-96(%rbp), %eax	# length, tmp172
	subl	$1, %eax	#, D.6720
	cmpl	-68(%rbp), %eax	# j, D.6720
	jne	.L58	#,
	.loc 1 242 0
	cmpl	$1, -60(%rbp)	#, tmp_otherparity
	jne	.L59	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.22
	jmp	.L60	#
.L59:
	.loc 1 242 0 discriminator 2
	movl	$0, %eax	#, iftmp.22
.L60:
	.loc 1 242 0 discriminator 3
	movl	%eax, %ebx	# iftmp.22, i
	movq	lattice(%rip), %rax	# lattice, lattice.23
	movslq	%ebx, %rdx	# i, D.6718
	salq	$11, %rdx	#, D.6718
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L61	#
.L64:
	.loc 1 243 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6718
	movq	%rdx, %rax	# D.6718, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# D.6718, tmp173
	salq	$4, %rax	#, tmp174
	movq	%rax, %rdx	# tmp173, D.6718
	movq	-56(%rbp), %rax	# tmp_src, tmp175
	addq	%rdx, %rax	# D.6718, D.6721
	movl	-84(%rbp), %edx	# src, tmp176
	movslq	%edx, %rdx	# tmp176, D.6722
	addq	%r12, %rdx	# s, D.6721
	movq	(%rdx), %rcx	# *_72, tmp177
	movq	%rcx, (%rax)	# tmp177, *_69
	movq	8(%rdx), %rcx	# *_72, tmp178
	movq	%rcx, 8(%rax)	# tmp178, *_69
	movq	16(%rdx), %rcx	# *_72, tmp179
	movq	%rcx, 16(%rax)	# tmp179, *_69
	movq	24(%rdx), %rcx	# *_72, tmp180
	movq	%rcx, 24(%rax)	# tmp180, *_69
	movq	32(%rdx), %rcx	# *_72, tmp181
	movq	%rcx, 32(%rax)	# tmp181, *_69
	movq	40(%rdx), %rdx	# *_72, tmp182
	movq	%rdx, 40(%rax)	# tmp182, *_69
	.loc 1 242 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L61:
	.loc 1 242 0 is_stmt 0 discriminator 1
	cmpl	$2, -60(%rbp)	#, tmp_otherparity
	jne	.L62	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.24
	jmp	.L63	#
.L62:
	.loc 1 242 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.24
.L63:
	.loc 1 242 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.24
	jg	.L64	#,
.L58:
	.loc 1 247 0 is_stmt 1
	movl	-68(%rbp), %eax	# j, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6718
	movq	-104(%rbp), %rax	# dir, tmp184
	addq	%rdx, %rax	# D.6718, D.6723
	movl	(%rax), %eax	# *_78, D.6720
	cmpl	$3, %eax	#, D.6720
	jg	.L65	#,
	.loc 1 248 0
	movq	gen_pt(%rip), %rsi	# gen_pt, D.6724
	.loc 1 249 0
	movl	-68(%rbp), %eax	# j, tmp185
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6718
	movq	-104(%rbp), %rax	# dir, tmp186
	addq	%rdx, %rax	# D.6718, D.6723
	.loc 1 248 0
	movl	(%rax), %edx	# *_83, D.6720
	movl	-64(%rbp), %ecx	# tmp_parity, tmp187
	movq	-56(%rbp), %rax	# tmp_src, tmp188
	movq	%rsi, %r8	# D.6724,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp189, mtag0
	.loc 1 250 0
	movq	-32(%rbp), %rax	# mtag0, tmp190
	movq	%rax, %rdi	# tmp190,
	call	wait_gather	#
	.loc 1 251 0
	cmpl	$1, -64(%rbp)	#, tmp_parity
	jne	.L66	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.25
	jmp	.L67	#
.L66:
	.loc 1 251 0 discriminator 2
	movl	$0, %eax	#, iftmp.25
.L67:
	.loc 1 251 0 discriminator 3
	movl	%eax, %ebx	# iftmp.25, i
	movq	lattice(%rip), %rax	# lattice, lattice.26
	movslq	%ebx, %rdx	# i, D.6718
	salq	$11, %rdx	#, D.6718
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L68	#
.L71:
	.loc 1 252 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6718
	.loc 1 254 0 discriminator 2
	movq	%rdx, %rax	# D.6718, tmp191
	addq	%rax, %rax	# tmp191
	addq	%rdx, %rax	# D.6718, tmp191
	salq	$4, %rax	#, tmp192
	movq	%rax, %rdx	# tmp191, D.6718
	.loc 1 252 0 discriminator 2
	movq	-48(%rbp), %rax	# tmp_dest, tmp193
	leaq	(%rdx,%rax), %rsi	#, D.6721
	.loc 1 253 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6724
	movslq	%ebx, %rdx	# i, D.6718
	salq	$3, %rdx	#, D.6718
	addq	%rdx, %rax	# D.6718, D.6724
	.loc 1 252 0 discriminator 2
	movq	(%rax), %rcx	# *_101, D.6725
	movl	-68(%rbp), %eax	# j, tmp194
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6718
	movq	-104(%rbp), %rax	# dir, tmp195
	addq	%rdx, %rax	# D.6718, D.6723
	movl	(%rax), %eax	# *_105, D.6720
	movslq	%eax, %rdx	# D.6720, tmp196
	movq	%rdx, %rax	# tmp196, tmp197
	salq	$3, %rax	#, tmp197
	addq	%rdx, %rax	# tmp196, tmp197
	salq	$4, %rax	#, tmp198
	addq	$112, %rax	#, tmp199
	addq	%r12, %rax	# s, D.6726
	movq	%rsi, %rdx	# D.6721,
	movq	%rcx, %rsi	# D.6725,
	movq	%rax, %rdi	# D.6726,
	call	mult_su3_mat_vec	#
	.loc 1 251 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L68:
	.loc 1 251 0 is_stmt 0 discriminator 1
	cmpl	$2, -64(%rbp)	#, tmp_parity
	jne	.L69	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.27
	jmp	.L70	#
.L69:
	.loc 1 251 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.27
.L70:
	.loc 1 251 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.27
	jg	.L71	#,
	.loc 1 256 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag0, tmp200
	movq	%rax, %rdi	# tmp200,
	call	cleanup_gather	#
	jmp	.L72	#
.L65:
	.loc 1 260 0
	cmpl	$1, -60(%rbp)	#, tmp_otherparity
	jne	.L73	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.28
	jmp	.L74	#
.L73:
	.loc 1 260 0 discriminator 2
	movl	$0, %eax	#, iftmp.28
.L74:
	.loc 1 260 0 discriminator 3
	movl	%eax, %ebx	# iftmp.28, i
	movq	lattice(%rip), %rax	# lattice, lattice.29
	movslq	%ebx, %rdx	# i, D.6718
	salq	$11, %rdx	#, D.6718
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L75	#
.L78:
	.loc 1 261 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6718
	.loc 1 262 0 discriminator 2
	movq	%rdx, %rax	# D.6718, tmp201
	addq	%rax, %rax	# tmp201
	addq	%rdx, %rax	# D.6718, tmp201
	salq	$4, %rax	#, tmp202
	movq	%rax, %rdx	# tmp201, D.6718
	.loc 1 261 0 discriminator 2
	movq	-40(%rbp), %rax	# tmp_work, tmp203
	leaq	(%rdx,%rax), %rsi	#, D.6721
	movslq	%ebx, %rdx	# i, D.6718
	.loc 1 262 0 discriminator 2
	movq	%rdx, %rax	# D.6718, tmp204
	addq	%rax, %rax	# tmp204
	addq	%rdx, %rax	# D.6718, tmp204
	salq	$4, %rax	#, tmp205
	movq	%rax, %rdx	# tmp204, D.6718
	.loc 1 261 0 discriminator 2
	movq	-56(%rbp), %rax	# tmp_src, tmp206
	leaq	(%rdx,%rax), %rcx	#, D.6721
	movl	-68(%rbp), %eax	# j, tmp207
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6718
	movq	-104(%rbp), %rax	# dir, tmp208
	addq	%rdx, %rax	# D.6718, D.6723
	movl	(%rax), %eax	# *_127, D.6720
	movl	$7, %edx	#, tmp209
	subl	%eax, %edx	# D.6720, D.6720
	movl	%edx, %eax	# D.6720, D.6720
	movslq	%eax, %rdx	# D.6720, tmp210
	movq	%rdx, %rax	# tmp210, tmp211
	salq	$3, %rax	#, tmp211
	addq	%rdx, %rax	# tmp210, tmp211
	salq	$4, %rax	#, tmp212
	addq	$112, %rax	#, tmp213
	addq	%r12, %rax	# s, D.6726
	movq	%rsi, %rdx	# D.6721,
	movq	%rcx, %rsi	# D.6721,
	movq	%rax, %rdi	# D.6726,
	call	mult_adj_su3_mat_vec	#
	.loc 1 260 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L75:
	.loc 1 260 0 is_stmt 0 discriminator 1
	cmpl	$2, -60(%rbp)	#, tmp_otherparity
	jne	.L76	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.30
	jmp	.L77	#
.L76:
	.loc 1 260 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.30
.L77:
	.loc 1 260 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.30
	jg	.L78	#,
	.loc 1 264 0 is_stmt 1
	movq	gen_pt(%rip), %rsi	# gen_pt, D.6724
	.loc 1 265 0
	movl	-68(%rbp), %eax	# j, tmp214
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6718
	movq	-104(%rbp), %rax	# dir, tmp215
	addq	%rdx, %rax	# D.6718, D.6723
	.loc 1 264 0
	movl	(%rax), %edx	# *_136, D.6720
	movl	-64(%rbp), %ecx	# tmp_parity, tmp216
	movq	-40(%rbp), %rax	# tmp_work, tmp217
	movq	%rsi, %r8	# D.6724,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp217,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp218, mtag0
	.loc 1 266 0
	movq	-32(%rbp), %rax	# mtag0, tmp219
	movq	%rax, %rdi	# tmp219,
	call	wait_gather	#
	.loc 1 267 0
	cmpl	$1, -64(%rbp)	#, tmp_parity
	jne	.L79	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.31
	jmp	.L80	#
.L79:
	.loc 1 267 0 discriminator 2
	movl	$0, %eax	#, iftmp.31
.L80:
	.loc 1 267 0 discriminator 3
	movl	%eax, %ebx	# iftmp.31, i
	movq	lattice(%rip), %rax	# lattice, lattice.32
	movslq	%ebx, %rdx	# i, D.6718
	salq	$11, %rdx	#, D.6718
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L81	#
.L84:
	.loc 1 268 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6718
	movq	%rdx, %rax	# D.6718, tmp220
	addq	%rax, %rax	# tmp220
	addq	%rdx, %rax	# D.6718, tmp220
	salq	$4, %rax	#, tmp221
	movq	%rax, %rdx	# tmp220, D.6718
	movq	-48(%rbp), %rax	# tmp_dest, tmp222
	addq	%rax, %rdx	# tmp222, D.6721
	movq	gen_pt(%rip), %rax	# gen_pt, D.6724
	movslq	%ebx, %rcx	# i, D.6718
	salq	$3, %rcx	#, D.6718
	addq	%rcx, %rax	# D.6718, D.6724
	movq	(%rax), %rax	# *_154, D.6725
	movq	(%rax), %rcx	# MEM[(struct su3_vector *)_155], tmp223
	movq	%rcx, (%rdx)	# tmp223, *_150
	movq	8(%rax), %rcx	# MEM[(struct su3_vector *)_155], tmp224
	movq	%rcx, 8(%rdx)	# tmp224, *_150
	movq	16(%rax), %rcx	# MEM[(struct su3_vector *)_155], tmp225
	movq	%rcx, 16(%rdx)	# tmp225, *_150
	movq	24(%rax), %rcx	# MEM[(struct su3_vector *)_155], tmp226
	movq	%rcx, 24(%rdx)	# tmp226, *_150
	movq	32(%rax), %rcx	# MEM[(struct su3_vector *)_155], tmp227
	movq	%rcx, 32(%rdx)	# tmp227, *_150
	movq	40(%rax), %rax	# MEM[(struct su3_vector *)_155], tmp228
	movq	%rax, 40(%rdx)	# tmp228, *_150
	.loc 1 267 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L81:
	.loc 1 267 0 is_stmt 0 discriminator 1
	cmpl	$2, -64(%rbp)	#, tmp_parity
	jne	.L82	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.33
	jmp	.L83	#
.L82:
	.loc 1 267 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.33
.L83:
	.loc 1 267 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.33
	jg	.L84	#,
	.loc 1 270 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag0, tmp229
	movq	%rax, %rdi	# tmp229,
	call	cleanup_gather	#
.L72:
	.loc 1 274 0
	movq	-56(%rbp), %rax	# tmp_src, tmp230
	movq	%rax, -24(%rbp)	# tmp230, tmp_pt
	movq	-48(%rbp), %rax	# tmp_dest, tmp231
	movq	%rax, -56(%rbp)	# tmp231, tmp_src
	movq	-24(%rbp), %rax	# tmp_pt, tmp232
	movq	%rax, -48(%rbp)	# tmp232, tmp_dest
	.loc 1 222 0
	subl	$1, -68(%rbp)	#, j
.L48:
	.loc 1 222 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, j
	jns	.L85	#,
	.loc 1 277 0 is_stmt 1
	cmpl	$1, -92(%rbp)	#, parity
	jne	.L86	#,
	.loc 1 277 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.34
	jmp	.L87	#
.L86:
	.loc 1 277 0 discriminator 2
	movl	$0, %eax	#, iftmp.34
.L87:
	.loc 1 277 0 discriminator 3
	movl	%eax, %ebx	# iftmp.34, i
	movq	lattice(%rip), %rax	# lattice, lattice.35
	movslq	%ebx, %rdx	# i, D.6718
	salq	$11, %rdx	#, D.6718
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L88	#
.L91:
	.loc 1 278 0 is_stmt 1 discriminator 2
	movl	-88(%rbp), %eax	# dest, tmp233
	cltq
	leaq	(%r12,%rax), %rdx	#, D.6721
	movslq	%ebx, %rcx	# i, D.6718
	movq	%rcx, %rax	# D.6718, tmp234
	addq	%rax, %rax	# tmp234
	addq	%rcx, %rax	# D.6718, tmp234
	salq	$4, %rax	#, tmp235
	movq	%rax, %rcx	# tmp234, D.6718
	movq	-56(%rbp), %rax	# tmp_src, tmp236
	addq	%rcx, %rax	# D.6718, D.6721
	movq	(%rax), %rcx	# *_176, tmp237
	movq	%rcx, (%rdx)	# tmp237, *_173
	movq	8(%rax), %rcx	# *_176, tmp238
	movq	%rcx, 8(%rdx)	# tmp238, *_173
	movq	16(%rax), %rcx	# *_176, tmp239
	movq	%rcx, 16(%rdx)	# tmp239, *_173
	movq	24(%rax), %rcx	# *_176, tmp240
	movq	%rcx, 24(%rdx)	# tmp240, *_173
	movq	32(%rax), %rcx	# *_176, tmp241
	movq	%rcx, 32(%rdx)	# tmp241, *_173
	movq	40(%rax), %rax	# *_176, tmp242
	movq	%rax, 40(%rdx)	# tmp242, *_173
	.loc 1 277 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L88:
	.loc 1 277 0 is_stmt 0 discriminator 1
	cmpl	$2, -92(%rbp)	#, parity
	jne	.L89	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.36
	jmp	.L90	#
.L89:
	.loc 1 277 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.36
.L90:
	.loc 1 277 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.36
	jg	.L91	#,
	.loc 1 280 0 is_stmt 1
	movq	-56(%rbp), %rax	# tmp_src, tmp243
	movq	%rax, %rdi	# tmp243,
	call	free	#
	movq	-48(%rbp), %rax	# tmp_dest, tmp244
	movq	%rax, %rdi	# tmp244,
	call	free	#
	movq	-40(%rbp), %rax	# tmp_work, tmp245
	movq	%rax, %rdi	# tmp245,
	call	free	#
	jmp	.L46	#
.L47:
	.loc 1 282 0
	movl	-84(%rbp), %eax	# src, tmp246
	cmpl	-88(%rbp), %eax	# dest, tmp246
	je	.L46	#,
	.loc 1 283 0
	cmpl	$1, -92(%rbp)	#, parity
	jne	.L93	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.37
	jmp	.L94	#
.L93:
	.loc 1 283 0 discriminator 2
	movl	$0, %eax	#, iftmp.37
.L94:
	.loc 1 283 0 discriminator 3
	movl	%eax, %ebx	# iftmp.37, i
	movq	lattice(%rip), %rax	# lattice, lattice.38
	movslq	%ebx, %rdx	# i, D.6718
	salq	$11, %rdx	#, D.6718
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L95	#
.L98:
	.loc 1 284 0 is_stmt 1 discriminator 2
	movl	-88(%rbp), %eax	# dest, tmp247
	cltq
	addq	%r12, %rax	# s, D.6721
	movl	-84(%rbp), %edx	# src, tmp248
	movslq	%edx, %rdx	# tmp248, D.6722
	addq	%r12, %rdx	# s, D.6721
	movq	(%rdx), %rcx	# *_191, tmp249
	movq	%rcx, (%rax)	# tmp249, *_189
	movq	8(%rdx), %rcx	# *_191, tmp250
	movq	%rcx, 8(%rax)	# tmp250, *_189
	movq	16(%rdx), %rcx	# *_191, tmp251
	movq	%rcx, 16(%rax)	# tmp251, *_189
	movq	24(%rdx), %rcx	# *_191, tmp252
	movq	%rcx, 24(%rax)	# tmp252, *_189
	movq	32(%rdx), %rcx	# *_191, tmp253
	movq	%rcx, 32(%rax)	# tmp253, *_189
	movq	40(%rdx), %rdx	# *_191, tmp254
	movq	%rdx, 40(%rax)	# tmp254, *_189
	.loc 1 283 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L95:
	.loc 1 283 0 is_stmt 0 discriminator 1
	cmpl	$2, -92(%rbp)	#, parity
	jne	.L96	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.39
	jmp	.L97	#
.L96:
	.loc 1 283 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.39
.L97:
	.loc 1 283 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.39
	jg	.L98	#,
.L46:
	.loc 1 287 0 is_stmt 1
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	path_transport, .-path_transport
	.globl	path_transport_hwv
	.type	path_transport_hwv, @function
path_transport_hwv:
.LFB5:
	.loc 1 291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)	# src, src
	movl	%esi, -88(%rbp)	# dest, dest
	movl	%edx, -92(%rbp)	# parity, parity
	movq	%rcx, -104(%rbp)	# dir, dir
	movl	%r8d, -96(%rbp)	# length, length
	.loc 1 300 0
	cmpl	$0, -96(%rbp)	#, length
	jle	.L100	#,
	.loc 1 301 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.40
	cltq
	movl	$96, %esi	#,
	movq	%rax, %rdi	# D.6727,
	call	calloc	#
	movq	%rax, -56(%rbp)	# tmp161, tmp_src
	.loc 1 303 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.41
	cltq
	movl	$96, %esi	#,
	movq	%rax, %rdi	# D.6727,
	call	calloc	#
	movq	%rax, -48(%rbp)	# tmp162, tmp_dest
	.loc 1 305 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.42
	cltq
	movl	$96, %esi	#,
	movq	%rax, %rdi	# D.6727,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp163, tmp_work
	.loc 1 308 0
	movl	-96(%rbp), %eax	# length, tmp167
	subl	$1, %eax	#, tmp166
	movl	%eax, -68(%rbp)	# tmp166, j
	jmp	.L101	#
.L138:
	.loc 1 310 0
	movl	-68(%rbp), %eax	# j, j.43
	andl	$1, %eax	#, D.6728
	testl	%eax, %eax	# D.6728
	jne	.L102	#,
	.loc 1 311 0
	movl	-92(%rbp), %eax	# parity, tmp168
	movl	%eax, -64(%rbp)	# tmp168, tmp_parity
	.loc 1 312 0
	movl	-64(%rbp), %eax	# tmp_parity, tmp_parity
	cmpl	$2, %eax	#, tmp_parity
	je	.L104	#,
	cmpl	$3, %eax	#, tmp_parity
	je	.L105	#,
	cmpl	$1, %eax	#, tmp_parity
	je	.L106	#,
	jmp	.L107	#
.L104:
	.loc 1 313 0
	movl	$1, -60(%rbp)	#, tmp_otherparity
	jmp	.L103	#
.L106:
	.loc 1 314 0
	movl	$2, -60(%rbp)	#, tmp_otherparity
	jmp	.L103	#
.L105:
	.loc 1 315 0
	movl	$3, -60(%rbp)	#, tmp_otherparity
	nop
.L103:
	jmp	.L107	#
.L102:
	.loc 1 319 0
	movl	-92(%rbp), %eax	# parity, tmp170
	movl	%eax, -60(%rbp)	# tmp170, tmp_otherparity
	.loc 1 320 0
	movl	-60(%rbp), %eax	# tmp_otherparity, tmp_otherparity
	cmpl	$2, %eax	#, tmp_otherparity
	je	.L108	#,
	cmpl	$3, %eax	#, tmp_otherparity
	je	.L109	#,
	cmpl	$1, %eax	#, tmp_otherparity
	je	.L110	#,
	jmp	.L107	#
.L108:
	.loc 1 321 0
	movl	$1, -64(%rbp)	#, tmp_parity
	jmp	.L107	#
.L110:
	.loc 1 322 0
	movl	$2, -64(%rbp)	#, tmp_parity
	jmp	.L107	#
.L109:
	.loc 1 323 0
	movl	$3, -64(%rbp)	#, tmp_parity
	nop
.L107:
	.loc 1 327 0
	movl	-96(%rbp), %eax	# length, tmp172
	subl	$1, %eax	#, D.6729
	cmpl	-68(%rbp), %eax	# j, D.6729
	jne	.L111	#,
	.loc 1 328 0
	cmpl	$1, -60(%rbp)	#, tmp_otherparity
	jne	.L112	#,
	.loc 1 328 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.44
	jmp	.L113	#
.L112:
	.loc 1 328 0 discriminator 2
	movl	$0, %eax	#, iftmp.44
.L113:
	.loc 1 328 0 discriminator 3
	movl	%eax, %ebx	# iftmp.44, i
	movq	lattice(%rip), %rax	# lattice, lattice.45
	movslq	%ebx, %rdx	# i, D.6727
	salq	$11, %rdx	#, D.6727
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L114	#
.L117:
	.loc 1 329 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6727
	movq	%rdx, %rax	# D.6727, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# D.6727, tmp173
	salq	$5, %rax	#, tmp174
	movq	%rax, %rdx	# tmp173, D.6727
	movq	-56(%rbp), %rax	# tmp_src, tmp175
	addq	%rdx, %rax	# D.6727, D.6730
	movl	-84(%rbp), %edx	# src, tmp176
	movslq	%edx, %rdx	# tmp176, D.6731
	addq	%r12, %rdx	# s, D.6730
	movq	(%rdx), %rcx	# *_72, tmp177
	movq	%rcx, (%rax)	# tmp177, *_69
	movq	8(%rdx), %rcx	# *_72, tmp178
	movq	%rcx, 8(%rax)	# tmp178, *_69
	movq	16(%rdx), %rcx	# *_72, tmp179
	movq	%rcx, 16(%rax)	# tmp179, *_69
	movq	24(%rdx), %rcx	# *_72, tmp180
	movq	%rcx, 24(%rax)	# tmp180, *_69
	movq	32(%rdx), %rcx	# *_72, tmp181
	movq	%rcx, 32(%rax)	# tmp181, *_69
	movq	40(%rdx), %rcx	# *_72, tmp182
	movq	%rcx, 40(%rax)	# tmp182, *_69
	movq	48(%rdx), %rcx	# *_72, tmp183
	movq	%rcx, 48(%rax)	# tmp183, *_69
	movq	56(%rdx), %rcx	# *_72, tmp184
	movq	%rcx, 56(%rax)	# tmp184, *_69
	movq	64(%rdx), %rcx	# *_72, tmp185
	movq	%rcx, 64(%rax)	# tmp185, *_69
	movq	72(%rdx), %rcx	# *_72, tmp186
	movq	%rcx, 72(%rax)	# tmp186, *_69
	movq	80(%rdx), %rcx	# *_72, tmp187
	movq	%rcx, 80(%rax)	# tmp187, *_69
	movq	88(%rdx), %rdx	# *_72, tmp188
	movq	%rdx, 88(%rax)	# tmp188, *_69
	.loc 1 328 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L114:
	.loc 1 328 0 is_stmt 0 discriminator 1
	cmpl	$2, -60(%rbp)	#, tmp_otherparity
	jne	.L115	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.46
	jmp	.L116	#
.L115:
	.loc 1 328 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.46
.L116:
	.loc 1 328 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.46
	jg	.L117	#,
.L111:
	.loc 1 333 0 is_stmt 1
	movl	-68(%rbp), %eax	# j, tmp189
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6727
	movq	-104(%rbp), %rax	# dir, tmp190
	addq	%rdx, %rax	# D.6727, D.6732
	movl	(%rax), %eax	# *_78, D.6729
	cmpl	$3, %eax	#, D.6729
	jg	.L118	#,
	.loc 1 334 0
	movq	gen_pt(%rip), %rsi	# gen_pt, D.6733
	.loc 1 335 0
	movl	-68(%rbp), %eax	# j, tmp191
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6727
	movq	-104(%rbp), %rax	# dir, tmp192
	addq	%rdx, %rax	# D.6727, D.6732
	.loc 1 334 0
	movl	(%rax), %edx	# *_83, D.6729
	movl	-64(%rbp), %ecx	# tmp_parity, tmp193
	movq	-56(%rbp), %rax	# tmp_src, tmp194
	movq	%rsi, %r8	# D.6733,
	movl	$96, %esi	#,
	movq	%rax, %rdi	# tmp194,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp195, mtag0
	.loc 1 336 0
	movq	-32(%rbp), %rax	# mtag0, tmp196
	movq	%rax, %rdi	# tmp196,
	call	wait_gather	#
	.loc 1 337 0
	cmpl	$1, -64(%rbp)	#, tmp_parity
	jne	.L119	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.47
	jmp	.L120	#
.L119:
	.loc 1 337 0 discriminator 2
	movl	$0, %eax	#, iftmp.47
.L120:
	.loc 1 337 0 discriminator 3
	movl	%eax, %ebx	# iftmp.47, i
	movq	lattice(%rip), %rax	# lattice, lattice.48
	movslq	%ebx, %rdx	# i, D.6727
	salq	$11, %rdx	#, D.6727
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L121	#
.L124:
	.loc 1 338 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6727
	.loc 1 340 0 discriminator 2
	movq	%rdx, %rax	# D.6727, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# D.6727, tmp197
	salq	$5, %rax	#, tmp198
	movq	%rax, %rdx	# tmp197, D.6727
	.loc 1 338 0 discriminator 2
	movq	-48(%rbp), %rax	# tmp_dest, tmp199
	leaq	(%rdx,%rax), %rsi	#, D.6730
	.loc 1 339 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6733
	movslq	%ebx, %rdx	# i, D.6727
	salq	$3, %rdx	#, D.6727
	addq	%rdx, %rax	# D.6727, D.6733
	.loc 1 338 0 discriminator 2
	movq	(%rax), %rcx	# *_101, D.6734
	movl	-68(%rbp), %eax	# j, tmp200
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6727
	movq	-104(%rbp), %rax	# dir, tmp201
	addq	%rdx, %rax	# D.6727, D.6732
	movl	(%rax), %eax	# *_105, D.6729
	movslq	%eax, %rdx	# D.6729, tmp202
	movq	%rdx, %rax	# tmp202, tmp203
	salq	$3, %rax	#, tmp203
	addq	%rdx, %rax	# tmp202, tmp203
	salq	$4, %rax	#, tmp204
	addq	$112, %rax	#, tmp205
	addq	%r12, %rax	# s, D.6735
	movq	%rsi, %rdx	# D.6730,
	movq	%rcx, %rsi	# D.6734,
	movq	%rax, %rdi	# D.6735,
	call	mult_su3_mat_hwvec	#
	.loc 1 337 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L121:
	.loc 1 337 0 is_stmt 0 discriminator 1
	cmpl	$2, -64(%rbp)	#, tmp_parity
	jne	.L122	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.49
	jmp	.L123	#
.L122:
	.loc 1 337 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.49
.L123:
	.loc 1 337 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.49
	jg	.L124	#,
	.loc 1 342 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag0, tmp206
	movq	%rax, %rdi	# tmp206,
	call	cleanup_gather	#
	jmp	.L125	#
.L118:
	.loc 1 346 0
	cmpl	$1, -60(%rbp)	#, tmp_otherparity
	jne	.L126	#,
	.loc 1 346 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.50
	jmp	.L127	#
.L126:
	.loc 1 346 0 discriminator 2
	movl	$0, %eax	#, iftmp.50
.L127:
	.loc 1 346 0 discriminator 3
	movl	%eax, %ebx	# iftmp.50, i
	movq	lattice(%rip), %rax	# lattice, lattice.51
	movslq	%ebx, %rdx	# i, D.6727
	salq	$11, %rdx	#, D.6727
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L128	#
.L131:
	.loc 1 347 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6727
	.loc 1 348 0 discriminator 2
	movq	%rdx, %rax	# D.6727, tmp207
	addq	%rax, %rax	# tmp207
	addq	%rdx, %rax	# D.6727, tmp207
	salq	$5, %rax	#, tmp208
	movq	%rax, %rdx	# tmp207, D.6727
	.loc 1 347 0 discriminator 2
	movq	-40(%rbp), %rax	# tmp_work, tmp209
	leaq	(%rdx,%rax), %rsi	#, D.6730
	movslq	%ebx, %rdx	# i, D.6727
	.loc 1 348 0 discriminator 2
	movq	%rdx, %rax	# D.6727, tmp210
	addq	%rax, %rax	# tmp210
	addq	%rdx, %rax	# D.6727, tmp210
	salq	$5, %rax	#, tmp211
	movq	%rax, %rdx	# tmp210, D.6727
	.loc 1 347 0 discriminator 2
	movq	-56(%rbp), %rax	# tmp_src, tmp212
	leaq	(%rdx,%rax), %rcx	#, D.6730
	movl	-68(%rbp), %eax	# j, tmp213
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6727
	movq	-104(%rbp), %rax	# dir, tmp214
	addq	%rdx, %rax	# D.6727, D.6732
	movl	(%rax), %eax	# *_127, D.6729
	movl	$7, %edx	#, tmp215
	subl	%eax, %edx	# D.6729, D.6729
	movl	%edx, %eax	# D.6729, D.6729
	movslq	%eax, %rdx	# D.6729, tmp216
	movq	%rdx, %rax	# tmp216, tmp217
	salq	$3, %rax	#, tmp217
	addq	%rdx, %rax	# tmp216, tmp217
	salq	$4, %rax	#, tmp218
	addq	$112, %rax	#, tmp219
	addq	%r12, %rax	# s, D.6735
	movq	%rsi, %rdx	# D.6730,
	movq	%rcx, %rsi	# D.6730,
	movq	%rax, %rdi	# D.6735,
	call	mult_adj_su3_mat_hwvec	#
	.loc 1 346 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L128:
	.loc 1 346 0 is_stmt 0 discriminator 1
	cmpl	$2, -60(%rbp)	#, tmp_otherparity
	jne	.L129	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.52
	jmp	.L130	#
.L129:
	.loc 1 346 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.52
.L130:
	.loc 1 346 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.52
	jg	.L131	#,
	.loc 1 350 0 is_stmt 1
	movq	gen_pt(%rip), %rsi	# gen_pt, D.6733
	.loc 1 351 0
	movl	-68(%rbp), %eax	# j, tmp220
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6727
	movq	-104(%rbp), %rax	# dir, tmp221
	addq	%rdx, %rax	# D.6727, D.6732
	.loc 1 350 0
	movl	(%rax), %edx	# *_136, D.6729
	movl	-64(%rbp), %ecx	# tmp_parity, tmp222
	movq	-40(%rbp), %rax	# tmp_work, tmp223
	movq	%rsi, %r8	# D.6733,
	movl	$96, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp224, mtag0
	.loc 1 352 0
	movq	-32(%rbp), %rax	# mtag0, tmp225
	movq	%rax, %rdi	# tmp225,
	call	wait_gather	#
	.loc 1 353 0
	cmpl	$1, -64(%rbp)	#, tmp_parity
	jne	.L132	#,
	.loc 1 353 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.53
	jmp	.L133	#
.L132:
	.loc 1 353 0 discriminator 2
	movl	$0, %eax	#, iftmp.53
.L133:
	.loc 1 353 0 discriminator 3
	movl	%eax, %ebx	# iftmp.53, i
	movq	lattice(%rip), %rax	# lattice, lattice.54
	movslq	%ebx, %rdx	# i, D.6727
	salq	$11, %rdx	#, D.6727
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L134	#
.L137:
	.loc 1 354 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.6727
	movq	%rdx, %rax	# D.6727, tmp226
	addq	%rax, %rax	# tmp226
	addq	%rdx, %rax	# D.6727, tmp226
	salq	$5, %rax	#, tmp227
	movq	%rax, %rdx	# tmp226, D.6727
	movq	-48(%rbp), %rax	# tmp_dest, tmp228
	addq	%rax, %rdx	# tmp228, D.6730
	movq	gen_pt(%rip), %rax	# gen_pt, D.6733
	movslq	%ebx, %rcx	# i, D.6727
	salq	$3, %rcx	#, D.6727
	addq	%rcx, %rax	# D.6727, D.6733
	movq	(%rax), %rax	# *_154, D.6734
	movq	(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp229
	movq	%rcx, (%rdx)	# tmp229, *_150
	movq	8(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp230
	movq	%rcx, 8(%rdx)	# tmp230, *_150
	movq	16(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp231
	movq	%rcx, 16(%rdx)	# tmp231, *_150
	movq	24(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp232
	movq	%rcx, 24(%rdx)	# tmp232, *_150
	movq	32(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp233
	movq	%rcx, 32(%rdx)	# tmp233, *_150
	movq	40(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp234
	movq	%rcx, 40(%rdx)	# tmp234, *_150
	movq	48(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp235
	movq	%rcx, 48(%rdx)	# tmp235, *_150
	movq	56(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp236
	movq	%rcx, 56(%rdx)	# tmp236, *_150
	movq	64(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp237
	movq	%rcx, 64(%rdx)	# tmp237, *_150
	movq	72(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp238
	movq	%rcx, 72(%rdx)	# tmp238, *_150
	movq	80(%rax), %rcx	# MEM[(struct half_wilson_vector *)_155], tmp239
	movq	%rcx, 80(%rdx)	# tmp239, *_150
	movq	88(%rax), %rax	# MEM[(struct half_wilson_vector *)_155], tmp240
	movq	%rax, 88(%rdx)	# tmp240, *_150
	.loc 1 353 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L134:
	.loc 1 353 0 is_stmt 0 discriminator 1
	cmpl	$2, -64(%rbp)	#, tmp_parity
	jne	.L135	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.55
	jmp	.L136	#
.L135:
	.loc 1 353 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.55
.L136:
	.loc 1 353 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.55
	jg	.L137	#,
	.loc 1 356 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag0, tmp241
	movq	%rax, %rdi	# tmp241,
	call	cleanup_gather	#
.L125:
	.loc 1 360 0
	movq	-56(%rbp), %rax	# tmp_src, tmp242
	movq	%rax, -24(%rbp)	# tmp242, tmp_pt
	movq	-48(%rbp), %rax	# tmp_dest, tmp243
	movq	%rax, -56(%rbp)	# tmp243, tmp_src
	movq	-24(%rbp), %rax	# tmp_pt, tmp244
	movq	%rax, -48(%rbp)	# tmp244, tmp_dest
	.loc 1 308 0
	subl	$1, -68(%rbp)	#, j
.L101:
	.loc 1 308 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, j
	jns	.L138	#,
	.loc 1 363 0 is_stmt 1
	cmpl	$1, -92(%rbp)	#, parity
	jne	.L139	#,
	.loc 1 363 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.56
	jmp	.L140	#
.L139:
	.loc 1 363 0 discriminator 2
	movl	$0, %eax	#, iftmp.56
.L140:
	.loc 1 363 0 discriminator 3
	movl	%eax, %ebx	# iftmp.56, i
	movq	lattice(%rip), %rax	# lattice, lattice.57
	movslq	%ebx, %rdx	# i, D.6727
	salq	$11, %rdx	#, D.6727
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L141	#
.L144:
	.loc 1 364 0 is_stmt 1 discriminator 2
	movl	-88(%rbp), %eax	# dest, tmp245
	cltq
	addq	%r12, %rax	# s, D.6730
	movslq	%ebx, %rcx	# i, D.6727
	movq	%rcx, %rdx	# D.6727, tmp246
	addq	%rdx, %rdx	# tmp246
	addq	%rcx, %rdx	# D.6727, tmp246
	salq	$5, %rdx	#, tmp247
	movq	%rdx, %rcx	# tmp246, D.6727
	movq	-56(%rbp), %rdx	# tmp_src, tmp248
	addq	%rcx, %rdx	# D.6727, D.6730
	movq	(%rdx), %rcx	# *_176, tmp249
	movq	%rcx, (%rax)	# tmp249, *_173
	movq	8(%rdx), %rcx	# *_176, tmp250
	movq	%rcx, 8(%rax)	# tmp250, *_173
	movq	16(%rdx), %rcx	# *_176, tmp251
	movq	%rcx, 16(%rax)	# tmp251, *_173
	movq	24(%rdx), %rcx	# *_176, tmp252
	movq	%rcx, 24(%rax)	# tmp252, *_173
	movq	32(%rdx), %rcx	# *_176, tmp253
	movq	%rcx, 32(%rax)	# tmp253, *_173
	movq	40(%rdx), %rcx	# *_176, tmp254
	movq	%rcx, 40(%rax)	# tmp254, *_173
	movq	48(%rdx), %rcx	# *_176, tmp255
	movq	%rcx, 48(%rax)	# tmp255, *_173
	movq	56(%rdx), %rcx	# *_176, tmp256
	movq	%rcx, 56(%rax)	# tmp256, *_173
	movq	64(%rdx), %rcx	# *_176, tmp257
	movq	%rcx, 64(%rax)	# tmp257, *_173
	movq	72(%rdx), %rcx	# *_176, tmp258
	movq	%rcx, 72(%rax)	# tmp258, *_173
	movq	80(%rdx), %rcx	# *_176, tmp259
	movq	%rcx, 80(%rax)	# tmp259, *_173
	movq	88(%rdx), %rdx	# *_176, tmp260
	movq	%rdx, 88(%rax)	# tmp260, *_173
	.loc 1 363 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L141:
	.loc 1 363 0 is_stmt 0 discriminator 1
	cmpl	$2, -92(%rbp)	#, parity
	jne	.L142	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.58
	jmp	.L143	#
.L142:
	.loc 1 363 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.58
.L143:
	.loc 1 363 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.58
	jg	.L144	#,
	.loc 1 366 0 is_stmt 1
	movq	-56(%rbp), %rax	# tmp_src, tmp261
	movq	%rax, %rdi	# tmp261,
	call	free	#
	movq	-48(%rbp), %rax	# tmp_dest, tmp262
	movq	%rax, %rdi	# tmp262,
	call	free	#
	movq	-40(%rbp), %rax	# tmp_work, tmp263
	movq	%rax, %rdi	# tmp263,
	call	free	#
	jmp	.L99	#
.L100:
	.loc 1 368 0
	movl	-84(%rbp), %eax	# src, tmp264
	cmpl	-88(%rbp), %eax	# dest, tmp264
	je	.L99	#,
	.loc 1 369 0
	cmpl	$1, -92(%rbp)	#, parity
	jne	.L146	#,
	.loc 1 369 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.59
	jmp	.L147	#
.L146:
	.loc 1 369 0 discriminator 2
	movl	$0, %eax	#, iftmp.59
.L147:
	.loc 1 369 0 discriminator 3
	movl	%eax, %ebx	# iftmp.59, i
	movq	lattice(%rip), %rax	# lattice, lattice.60
	movslq	%ebx, %rdx	# i, D.6727
	salq	$11, %rdx	#, D.6727
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L148	#
.L151:
	.loc 1 370 0 is_stmt 1 discriminator 2
	movl	-88(%rbp), %eax	# dest, tmp265
	cltq
	addq	%r12, %rax	# s, D.6730
	.loc 1 371 0 discriminator 2
	movl	-84(%rbp), %edx	# src, tmp266
	movslq	%edx, %rdx	# tmp266, D.6731
	addq	%r12, %rdx	# s, D.6730
	.loc 1 370 0 discriminator 2
	movq	(%rdx), %rcx	# *_191, tmp267
	movq	%rcx, (%rax)	# tmp267, *_189
	movq	8(%rdx), %rcx	# *_191, tmp268
	movq	%rcx, 8(%rax)	# tmp268, *_189
	movq	16(%rdx), %rcx	# *_191, tmp269
	movq	%rcx, 16(%rax)	# tmp269, *_189
	movq	24(%rdx), %rcx	# *_191, tmp270
	movq	%rcx, 24(%rax)	# tmp270, *_189
	movq	32(%rdx), %rcx	# *_191, tmp271
	movq	%rcx, 32(%rax)	# tmp271, *_189
	movq	40(%rdx), %rcx	# *_191, tmp272
	movq	%rcx, 40(%rax)	# tmp272, *_189
	movq	48(%rdx), %rcx	# *_191, tmp273
	movq	%rcx, 48(%rax)	# tmp273, *_189
	movq	56(%rdx), %rcx	# *_191, tmp274
	movq	%rcx, 56(%rax)	# tmp274, *_189
	movq	64(%rdx), %rcx	# *_191, tmp275
	movq	%rcx, 64(%rax)	# tmp275, *_189
	movq	72(%rdx), %rcx	# *_191, tmp276
	movq	%rcx, 72(%rax)	# tmp276, *_189
	movq	80(%rdx), %rcx	# *_191, tmp277
	movq	%rcx, 80(%rax)	# tmp277, *_189
	movq	88(%rdx), %rdx	# *_191, tmp278
	movq	%rdx, 88(%rax)	# tmp278, *_189
	.loc 1 369 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L148:
	.loc 1 369 0 is_stmt 0 discriminator 1
	cmpl	$2, -92(%rbp)	#, parity
	jne	.L149	#,
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.61
	jmp	.L150	#
.L149:
	.loc 1 369 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.61
.L150:
	.loc 1 369 0 discriminator 3
	cmpl	%ebx, %eax	# i, iftmp.61
	jg	.L151	#,
.L99:
	.loc 1 374 0 is_stmt 1
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	path_transport_hwv, .-path_transport_hwv
	.section	.rodata
	.align 8
.LC6:
	.string	"BOTCH: load_longlinks needs phases in"
	.text
	.globl	load_longlinks
	.type	load_longlinks, @function
load_longlinks:
.LFB6:
	.loc 1 427 0
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
	.loc 1 438 0
	movl	phases_in(%rip), %eax	# phases_in, phases_in.62
	cmpl	$1, %eax	#, phases_in.62
	je	.L153	#,
	.loc 1 439 0
	movl	this_node(%rip), %eax	# this_node, this_node.63
	testl	%eax, %eax	# this_node.63
	jne	.L154	#,
	.loc 1 439 0 is_stmt 0 discriminator 1
	movl	$.LC6, %edi	#,
	call	puts	#
.L154:
	.loc 1 440 0 is_stmt 1
	movl	$0, %edi	#,
	call	terminate	#
.L153:
	.loc 1 442 0
	movl	$0, -52(%rbp)	#, dir
	jmp	.L155	#
.L174:
	.loc 1 444 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L156	#
.L157:
	.loc 1 446 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.64
	leal	0(,%rbx,4), %edx	#, D.6736
	movl	-52(%rbp), %eax	# dir, tmp96
	addl	%edx, %eax	# D.6736, D.6736
	movslq	%eax, %rdx	# D.6736, D.6737
	movq	%rdx, %rax	# D.6737, tmp97
	salq	$3, %rax	#, tmp97
	addq	%rdx, %rax	# D.6737, tmp97
	salq	$4, %rax	#, tmp98
	leaq	(%rcx,%rax), %r13	#, long1
	.loc 1 450 0 discriminator 2
	movq	%r13, %rdi	# long1,
	call	clear_su3mat	#
	.loc 1 444 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L156:
	.loc 1 444 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.65
	cmpl	%eax, %ebx	# sites_on_node.65, i
	jl	.L157	#,
	.loc 1 454 0 is_stmt 1
	movl	$0, -56(%rbp)	#, ipath
	jmp	.L158	#
.L173:
	.loc 1 456 0
	movl	$0, %ebx	#, i
	jmp	.L159	#
.L160:
	.loc 1 456 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# i, tmp99
	movl	$0, -48(%rbp,%rax,4)	#, disp
	addl	$1, %ebx	#, i
.L159:
	.loc 1 456 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L160	#,
	.loc 1 457 0 is_stmt 1
	movl	$0, %ebx	#, i
	jmp	.L161	#
.L164:
	.loc 1 458 0
	movslq	%ebx, %rcx	# i, tmp100
	movl	-56(%rbp), %eax	# ipath, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$2, %rax	#, tmp104
	addq	%rcx, %rax	# tmp100, tmp105
	movl	q_paths(,%rax,4), %eax	# q_paths[ipath_8].dir, D.6736
	cmpl	$3, %eax	#, D.6736
	jg	.L162	#,
	.loc 1 459 0
	movslq	%ebx, %rcx	# i, tmp106
	movl	-56(%rbp), %eax	# ipath, tmp108
	movslq	%eax, %rdx	# tmp108, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	salq	$2, %rax	#, tmp110
	addq	%rcx, %rax	# tmp106, tmp111
	movl	q_paths(,%rax,4), %eax	# q_paths[ipath_8].dir, D.6736
	movslq	%eax, %rdx	# D.6736, tmp112
	movl	-48(%rbp,%rdx,4), %edx	# disp, D.6736
	addl	$1, %edx	#, D.6736
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.6736, disp
	jmp	.L163	#
.L162:
	.loc 1 461 0
	movslq	%ebx, %rcx	# i, tmp114
	movl	-56(%rbp), %eax	# ipath, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	salq	$2, %rax	#, tmp118
	addq	%rcx, %rax	# tmp114, tmp119
	movl	q_paths(,%rax,4), %eax	# q_paths[ipath_8].dir, D.6736
	movl	$7, %edx	#, tmp120
	subl	%eax, %edx	# D.6736, D.6736
	movl	%edx, %eax	# D.6736, D.6736
	movslq	%eax, %rdx	# D.6736, tmp121
	movl	-48(%rbp,%rdx,4), %edx	# disp, D.6736
	subl	$1, %edx	#, D.6736
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.6736, disp
.L163:
	.loc 1 457 0
	addl	$1, %ebx	#, i
.L161:
	.loc 1 457 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# ipath, tmp124
	movslq	%eax, %rdx	# tmp124, tmp123
	movq	%rdx, %rax	# tmp123, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rdx, %rax	# tmp123, tmp125
	salq	$4, %rax	#, tmp126
	addq	$q_paths+16, %rax	#, tmp127
	movl	12(%rax), %eax	# q_paths[ipath_8].length, D.6736
	cmpl	%ebx, %eax	# i, D.6736
	jg	.L164	#,
	.loc 1 463 0 is_stmt 1
	movl	-52(%rbp), %eax	# dir, tmp129
	cltq
	movl	-48(%rbp,%rax,4), %eax	# disp, D.6736
	leal	3(%rax), %edx	#, D.6736
	movl	-52(%rbp), %eax	# dir, tmp131
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.6736, disp
	movl	$0, %ebx	#, i
	jmp	.L165	#
.L168:
	.loc 1 463 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# i, tmp132
	movl	-48(%rbp,%rax,4), %eax	# disp, D.6736
	testl	%eax, %eax	# D.6736
	je	.L166	#,
	.loc 1 463 0 discriminator 1
	jmp	.L167	#
.L166:
	.loc 1 463 0 discriminator 2
	addl	$1, %ebx	#, i
.L165:
	.loc 1 463 0 discriminator 1
	cmpl	$3, %ebx	#, i
	jle	.L168	#,
.L167:
	.loc 1 464 0 is_stmt 1
	cmpl	$3, %ebx	#, i
	jg	.L169	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	jmp	.L170	#
.L169:
	.loc 1 469 0 is_stmt 1
	movl	-56(%rbp), %eax	# ipath, tmp134
	movslq	%eax, %rdx	# tmp134, tmp133
	movq	%rdx, %rax	# tmp133, tmp135
	addq	%rax, %rax	# tmp135
	addq	%rdx, %rax	# tmp133, tmp135
	salq	$4, %rax	#, tmp136
	addq	$q_paths+16, %rax	#, tmp137
	movl	12(%rax), %ecx	# q_paths[ipath_8].length, D.6736
	movl	-56(%rbp), %eax	# ipath, tmp139
	movslq	%eax, %rdx	# tmp139, tmp138
	movq	%rdx, %rax	# tmp138, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# tmp138, tmp140
	salq	$4, %rax	#, tmp141
	addq	$q_paths, %rax	#, D.6738
	movl	%ecx, %esi	# D.6736,
	movq	%rax, %rdi	# D.6738,
	call	path_product	#
	.loc 1 470 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L171	#
.L172:
	.loc 1 471 0 discriminator 2
	leaq	1904(%r12), %rdx	#, D.6739
	leaq	1760(%r12), %rax	#, D.6739
	movq	%rdx, %rsi	# D.6739,
	movq	%rax, %rdi	# D.6739,
	call	su3_adjoint	#
	.loc 1 473 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.66
	leal	0(,%rbx,4), %edx	#, D.6736
	movl	-52(%rbp), %eax	# dir, tmp142
	addl	%edx, %eax	# D.6736, D.6736
	movslq	%eax, %rdx	# D.6736, D.6737
	movq	%rdx, %rax	# D.6737, tmp143
	salq	$3, %rax	#, tmp143
	addq	%rdx, %rax	# D.6737, tmp143
	salq	$4, %rax	#, tmp144
	leaq	(%rcx,%rax), %r13	#, long1
	.loc 1 478 0 discriminator 2
	movl	-56(%rbp), %eax	# ipath, tmp146
	movslq	%eax, %rdx	# tmp146, tmp145
	movq	%rdx, %rax	# tmp145, tmp147
	addq	%rax, %rax	# tmp147
	addq	%rdx, %rax	# tmp145, tmp147
	salq	$4, %rax	#, tmp148
	addq	$q_paths+32, %rax	#, tmp149
	movsd	(%rax), %xmm1	# q_paths[ipath_8].coeff, D.6740
	.loc 1 477 0 discriminator 2
	movsd	.LC4(%rip), %xmm0	#, tmp150
	xorpd	%xmm1, %xmm0	# D.6740, D.6740
	leaq	1904(%r12), %rax	#, D.6739
	movq	%r13, %rdx	# long1,
	movq	%rax, %rsi	# D.6739,
	movq	%r13, %rdi	# long1,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 470 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L171:
	.loc 1 470 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.67
	cmpl	%eax, %ebx	# sites_on_node.67, i
	jl	.L172	#,
.L170:
	.loc 1 454 0 is_stmt 1
	addl	$1, -56(%rbp)	#, ipath
.L158:
	.loc 1 454 0 is_stmt 0 discriminator 1
	movl	num_q_paths(%rip), %eax	# num_q_paths, num_q_paths.68
	cmpl	%eax, -56(%rbp)	# num_q_paths.68, ipath
	jl	.L173	#,
	.loc 1 442 0 is_stmt 1
	addl	$1, -52(%rbp)	#, dir
.L155:
	.loc 1 442 0 is_stmt 0 discriminator 1
	cmpl	$3, -52(%rbp)	#, dir
	jle	.L174	#,
	.loc 1 485 0 is_stmt 1
	movl	$1, valid_longlinks(%rip)	#, valid_longlinks
	.loc 1 490 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	load_longlinks, .-load_longlinks
	.section	.rodata
	.align 8
.LC7:
	.string	"BOTCH: load_fatlinks needs phases in"
	.text
	.globl	load_fatlinks
	.type	load_fatlinks, @function
load_fatlinks:
.LFB7:
	.loc 1 493 0
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
	.loc 1 510 0
	movl	phases_in(%rip), %eax	# phases_in, phases_in.69
	cmpl	$1, %eax	#, phases_in.69
	je	.L176	#,
	.loc 1 511 0
	movl	this_node(%rip), %eax	# this_node, this_node.70
	testl	%eax, %eax	# this_node.70
	jne	.L177	#,
	.loc 1 511 0 is_stmt 0 discriminator 1
	movl	$.LC7, %edi	#,
	call	puts	#
.L177:
	.loc 1 512 0 is_stmt 1
	movl	$0, %edi	#,
	call	terminate	#
.L176:
	.loc 1 564 0
	movsd	act_path_coeff(%rip), %xmm1	# act_path_coeff, D.6742
	movsd	act_path_coeff+40(%rip), %xmm2	# act_path_coeff, D.6742
	movsd	.LC8(%rip), %xmm0	#, tmp85
	mulsd	%xmm2, %xmm0	# D.6742, D.6742
	subsd	%xmm0, %xmm1	# D.6742, tmp86
	movapd	%xmm1, %xmm0	# tmp86, tmp86
	movsd	%xmm0, -40(%rbp)	# tmp86, one_link
	.loc 1 566 0
	movl	$0, -56(%rbp)	#, dir
	jmp	.L178	#
.L190:
	.loc 1 567 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L179	#
.L180:
	.loc 1 570 0 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.71
	leal	0(,%rbx,4), %edx	#, D.6743
	movl	-56(%rbp), %eax	# dir, tmp87
	addl	%edx, %eax	# D.6743, D.6743
	movslq	%eax, %rdx	# D.6743, D.6744
	movq	%rdx, %rax	# D.6744, tmp88
	salq	$3, %rax	#, tmp88
	addq	%rdx, %rax	# D.6744, tmp88
	salq	$4, %rax	#, tmp89
	leaq	(%rcx,%rax), %r13	#, fat1
	.loc 1 574 0 discriminator 2
	movl	-56(%rbp), %eax	# dir, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	salq	$3, %rax	#, tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	salq	$4, %rax	#, tmp93
	addq	$112, %rax	#, tmp94
	leaq	(%r12,%rax), %rdx	#, D.6745
	movq	-40(%rbp), %rax	# one_link, tmp95
	movq	%r13, %rsi	# fat1,
	movq	%rax, -72(%rbp)	# tmp95, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# D.6745,
	call	scalar_mult_su3_matrix	#
	.loc 1 567 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L179:
	.loc 1 567 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.72
	cmpl	%eax, %ebx	# sites_on_node.72, i
	jl	.L180	#,
	.loc 1 577 0 is_stmt 1
	movl	$0, -52(%rbp)	#, nu
	jmp	.L181	#
.L189:
	.loc 1 577 0 is_stmt 0 discriminator 2
	movl	-52(%rbp), %eax	# nu, tmp96
	cmpl	-56(%rbp), %eax	# dir, tmp96
	je	.L182	#,
	.loc 1 579 0 is_stmt 1
	movq	act_path_coeff+16(%rip), %rdx	# act_path_coeff, D.6742
	movq	lattice(%rip), %rsi	# lattice, lattice.73
	movl	-56(%rbp), %eax	# dir, tmp98
	movslq	%eax, %rcx	# tmp98, tmp97
	movq	%rcx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp99
	addq	%rcx, %rax	# tmp97, tmp99
	salq	$4, %rax	#, tmp100
	addq	$112, %rax	#, tmp101
	addq	%rsi, %rax	# lattice.73, D.6745
	movq	%rax, %rcx	# D.6745, D.6746
	movq	lattice(%rip), %rax	# lattice, lattice.74
	subq	%rax, %rcx	# lattice.75, D.6746
	movq	%rcx, %rax	# D.6746, D.6746
	movl	%eax, %ecx	# D.6746, D.6743
	movl	-52(%rbp), %esi	# nu, tmp102
	movl	-56(%rbp), %eax	# dir, tmp103
	movq	%rdx, -72(%rbp)	# D.6742, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	%esi, %edx	# tmp102,
	movl	%eax, %esi	# tmp103,
	movl	$1904, %edi	#,
	call	compute_gen_staple	#
	.loc 1 583 0
	movq	act_path_coeff+40(%rip), %rax	# act_path_coeff, D.6742
	movl	-52(%rbp), %edx	# nu, tmp104
	movl	-56(%rbp), %esi	# dir, tmp105
	movq	%rax, -72(%rbp)	# D.6742, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$1904, %ecx	#,
	movl	$-1, %edi	#,
	call	compute_gen_staple	#
	.loc 1 584 0
	movl	$0, -48(%rbp)	#, rho
	jmp	.L183	#
.L188:
	.loc 1 584 0 is_stmt 0 discriminator 2
	movl	-48(%rbp), %eax	# rho, tmp106
	cmpl	-56(%rbp), %eax	# dir, tmp106
	je	.L184	#,
	.loc 1 584 0 discriminator 1
	movl	-48(%rbp), %eax	# rho, tmp107
	cmpl	-52(%rbp), %eax	# nu, tmp107
	je	.L184	#,
	.loc 1 586 0 is_stmt 1
	movq	act_path_coeff+24(%rip), %rax	# act_path_coeff, D.6742
	movl	-48(%rbp), %edx	# rho, tmp108
	movl	-56(%rbp), %esi	# dir, tmp109
	movq	%rax, -72(%rbp)	# D.6742, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$1904, %ecx	#,
	movl	$1760, %edi	#,
	call	compute_gen_staple	#
	.loc 1 588 0
	movl	$0, -44(%rbp)	#, sig
	jmp	.L185	#
.L187:
	.loc 1 589 0
	movl	-44(%rbp), %eax	# sig, tmp110
	cmpl	-56(%rbp), %eax	# dir, tmp110
	je	.L186	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# sig, tmp111
	cmpl	-52(%rbp), %eax	# nu, tmp111
	je	.L186	#,
	movl	-44(%rbp), %eax	# sig, tmp112
	cmpl	-48(%rbp), %eax	# rho, tmp112
	je	.L186	#,
	.loc 1 591 0 is_stmt 1
	movq	act_path_coeff+32(%rip), %rax	# act_path_coeff, D.6742
	movl	-44(%rbp), %edx	# sig, tmp113
	movl	-56(%rbp), %esi	# dir, tmp114
	movq	%rax, -72(%rbp)	# D.6742, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	movl	$1760, %ecx	#,
	movl	$-1, %edi	#,
	call	compute_gen_staple	#
.L186:
	.loc 1 588 0
	addl	$1, -44(%rbp)	#, sig
.L185:
	.loc 1 588 0 is_stmt 0 discriminator 1
	cmpl	$3, -44(%rbp)	#, sig
	jle	.L187	#,
.L184:
	.loc 1 584 0 is_stmt 1 discriminator 2
	addl	$1, -48(%rbp)	#, rho
.L183:
	.loc 1 584 0 is_stmt 0 discriminator 1
	cmpl	$3, -48(%rbp)	#, rho
	jle	.L188	#,
.L182:
	.loc 1 577 0 is_stmt 1 discriminator 1
	addl	$1, -52(%rbp)	#, nu
.L181:
	cmpl	$3, -52(%rbp)	#, nu
	jle	.L189	#,
	.loc 1 566 0
	addl	$1, -56(%rbp)	#, dir
.L178:
	.loc 1 566 0 is_stmt 0 discriminator 1
	cmpl	$3, -56(%rbp)	#, dir
	jle	.L190	#,
	.loc 1 600 0 is_stmt 1
	movl	$1, valid_fatlinks(%rip)	#, valid_fatlinks
	.loc 1 605 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	load_fatlinks, .-load_fatlinks
	.globl	is_path_equal
	.type	is_path_equal, @function
is_path_equal:
.LFB8:
	.loc 1 610 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# path1, path1
	movq	%rsi, -24(%rbp)	# path2, path2
	movl	%edx, -28(%rbp)	# length, length
	.loc 1 612 0
	movl	$0, %ebx	#, i
	jmp	.L192	#
.L195:
	.loc 1 612 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rax	# i, D.6749
	leaq	0(,%rax,4), %rdx	#, D.6749
	movq	-16(%rbp), %rax	# path1, tmp70
	addq	%rdx, %rax	# D.6749, D.6750
	movl	(%rax), %edx	# *_8, D.6748
	movslq	%ebx, %rax	# i, D.6749
	leaq	0(,%rax,4), %rcx	#, D.6749
	movq	-24(%rbp), %rax	# path2, tmp71
	addq	%rcx, %rax	# D.6749, D.6750
	movl	(%rax), %eax	# *_13, D.6748
	cmpl	%eax, %edx	# D.6748, D.6748
	je	.L193	#,
	.loc 1 612 0 discriminator 1
	movl	$0, %eax	#, D.6748
	jmp	.L194	#
.L193:
	.loc 1 612 0 discriminator 2
	addl	$1, %ebx	#, i
.L192:
	.loc 1 612 0 discriminator 1
	cmpl	-28(%rbp), %ebx	# length, i
	jl	.L195	#,
	.loc 1 613 0 is_stmt 1
	movl	$1, %eax	#, D.6748
.L194:
	.loc 1 614 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	is_path_equal, .-is_path_equal
	.globl	eo_fermion_force
	.type	eo_fermion_force, @function
eo_fermion_force:
.LFB9:
	.loc 1 904 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$224, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movsd	%xmm0, -216(%rbp)	# eps, eps
	movl	%edi, -220(%rbp)	# nflavors, nflavors
	movl	%esi, -224(%rbp)	# x_off, x_off
	.loc 1 923 0
	cvtsi2sd	-220(%rbp), %xmm0	# nflavors, D.6751
	movsd	.LC9(%rip), %xmm1	#, tmp197
	divsd	%xmm1, %xmm0	# tmp197, D.6751
	addsd	%xmm0, %xmm0	# D.6751, D.6751
	mulsd	-216(%rbp), %xmm0	# eps, tmp198
	movsd	%xmm0, -184(%rbp)	# tmp198, ferm_epsilon
	.loc 1 926 0
	movsd	act_path_coeff(%rip), %xmm0	# act_path_coeff, D.6751
	mulsd	-184(%rbp), %xmm0	# ferm_epsilon, tmp199
	movsd	%xmm0, -176(%rbp)	# tmp199, OneLink
	.loc 1 927 0
	movsd	act_path_coeff+8(%rip), %xmm0	# act_path_coeff, D.6751
	mulsd	-184(%rbp), %xmm0	# ferm_epsilon, tmp200
	movsd	%xmm0, -168(%rbp)	# tmp200, Naik
	.loc 1 928 0
	movsd	act_path_coeff+16(%rip), %xmm0	# act_path_coeff, D.6751
	mulsd	-184(%rbp), %xmm0	# ferm_epsilon, tmp201
	movsd	%xmm0, -160(%rbp)	# tmp201, ThreeSt
	.loc 1 929 0
	movsd	act_path_coeff+24(%rip), %xmm0	# act_path_coeff, D.6751
	mulsd	-184(%rbp), %xmm0	# ferm_epsilon, tmp202
	movsd	%xmm0, -152(%rbp)	# tmp202, FiveSt
	.loc 1 930 0
	movsd	act_path_coeff+32(%rip), %xmm0	# act_path_coeff, D.6751
	mulsd	-184(%rbp), %xmm0	# ferm_epsilon, tmp203
	movsd	%xmm0, -144(%rbp)	# tmp203, SevenSt
	.loc 1 931 0
	movsd	act_path_coeff+40(%rip), %xmm0	# act_path_coeff, D.6751
	mulsd	-184(%rbp), %xmm0	# ferm_epsilon, tmp204
	movsd	%xmm0, -136(%rbp)	# tmp204, Lepage
	.loc 1 935 0
	movl	$0, -200(%rbp)	#, mu
	jmp	.L197	#
.L198:
	.loc 1 936 0 discriminator 2
	movl	-200(%rbp), %eax	# mu, tmp206
	cltq
	movl	$0, -112(%rbp,%rax,4)	#, DirectLinks
	.loc 1 935 0 discriminator 2
	addl	$1, -200(%rbp)	#, mu
.L197:
	.loc 1 935 0 is_stmt 0 discriminator 1
	cmpl	$7, -200(%rbp)	#, mu
	jle	.L198	#,
	.loc 1 939 0 is_stmt 1
	movl	$0, -200(%rbp)	#, mu
	jmp	.L199	#
.L200:
	.loc 1 940 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.76
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6752,
	call	calloc	#
	movq	%rax, %rdx	# tmp207, D.6753
	movl	-200(%rbp), %eax	# mu, tmp209
	cltq
	movq	%rdx, -80(%rbp,%rax,8)	# D.6753, tempvec
	.loc 1 939 0 discriminator 2
	addl	$1, -200(%rbp)	#, mu
.L199:
	.loc 1 939 0 is_stmt 0 discriminator 1
	cmpl	$7, -200(%rbp)	#, mu
	jle	.L200	#,
	.loc 1 943 0 is_stmt 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.77
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6752,
	call	calloc	#
	movq	%rax, -128(%rbp)	# tmp210, temp_x
	.loc 1 944 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L201	#
.L202:
	.loc 1 944 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp211
	addq	%rax, %rax	# tmp211
	addq	%rdx, %rax	# D.6752, tmp211
	salq	$4, %rax	#, tmp212
	movq	%rax, %rdx	# tmp211, D.6752
	movq	-128(%rbp), %rax	# temp_x, tmp213
	addq	%rdx, %rax	# D.6752, D.6754
	movl	-224(%rbp), %edx	# x_off, tmp214
	movslq	%edx, %rdx	# tmp214, D.6755
	addq	%r12, %rdx	# s, D.6754
	movq	(%rdx), %rcx	# *_52, tmp215
	movq	%rcx, (%rax)	# tmp215, *_49
	movq	8(%rdx), %rcx	# *_52, tmp216
	movq	%rcx, 8(%rax)	# tmp216, *_49
	movq	16(%rdx), %rcx	# *_52, tmp217
	movq	%rcx, 16(%rax)	# tmp217, *_49
	movq	24(%rdx), %rcx	# *_52, tmp218
	movq	%rcx, 24(%rax)	# tmp218, *_49
	movq	32(%rdx), %rcx	# *_52, tmp219
	movq	%rcx, 32(%rax)	# tmp219, *_49
	movq	40(%rdx), %rdx	# *_52, tmp220
	movq	%rdx, 40(%rax)	# tmp220, *_49
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L201:
	.loc 1 944 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.78
	cmpl	%eax, %ebx	# sites_on_node.78, i
	jl	.L202	#,
	.loc 1 946 0 is_stmt 1
	movl	$0, -188(%rbp)	#, sig
	jmp	.L203	#
.L225:
	.loc 1 948 0
	movl	$0, -200(%rbp)	#, mu
	jmp	.L204	#
.L224:
	.loc 1 948 0 is_stmt 0 discriminator 2
	movl	-200(%rbp), %eax	# mu, tmp221
	cmpl	-188(%rbp), %eax	# sig, tmp221
	je	.L205	#,
	.loc 1 948 0 discriminator 1
	movl	$7, %eax	#, tmp222
	subl	-188(%rbp), %eax	# sig, D.6756
	cmpl	-200(%rbp), %eax	# mu, D.6756
	je	.L205	#,
	.loc 1 950 0 is_stmt 1
	movl	$7, %eax	#, tmp223
	subl	-200(%rbp), %eax	# mu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-80(%rbp), %rcx	# tempvec, D.6754
	movq	-128(%rbp), %rax	# temp_x, tmp224
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# tmp224,
	call	u_shift_fermion	#
	.loc 1 951 0
	movq	-24(%rbp), %rcx	# tempvec, D.6754
	movq	-80(%rbp), %rax	# tempvec, D.6754
	movl	-188(%rbp), %edx	# sig, tmp225
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 952 0
	cmpl	$3, -188(%rbp)	#, sig
	jg	.L206	#,
	.loc 1 958 0
	movsd	-160(%rbp), %xmm1	# ThreeSt, tmp226
	movsd	.LC4(%rip), %xmm0	#, tmp227
	xorpd	%xmm1, %xmm0	# tmp226, D.6751
	movq	-80(%rbp), %rcx	# tempvec, D.6754
	movq	-24(%rbp), %rax	# tempvec, D.6754
	movl	-188(%rbp), %edx	# sig, tmp228
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	add_force_to_mom	#
.L206:
	.loc 1 960 0
	movl	$0, -196(%rbp)	#, nu
	jmp	.L207	#
.L218:
	.loc 1 960 0 is_stmt 0 discriminator 2
	movl	-196(%rbp), %eax	# nu, tmp229
	cmpl	-200(%rbp), %eax	# mu, tmp229
	je	.L208	#,
	.loc 1 960 0 discriminator 1
	movl	$7, %eax	#, tmp230
	subl	-200(%rbp), %eax	# mu, D.6756
	cmpl	-196(%rbp), %eax	# nu, D.6756
	je	.L208	#,
	movl	-196(%rbp), %eax	# nu, tmp231
	cmpl	-188(%rbp), %eax	# sig, tmp231
	je	.L208	#,
	.loc 1 961 0 is_stmt 1
	movl	$7, %eax	#, tmp232
	subl	-188(%rbp), %eax	# sig, D.6756
	cmpl	-196(%rbp), %eax	# nu, D.6756
	je	.L208	#,
	.loc 1 963 0
	movl	$7, %eax	#, tmp233
	subl	-196(%rbp), %eax	# nu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-72(%rbp), %rcx	# tempvec, D.6754
	movq	-80(%rbp), %rax	# tempvec, D.6754
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 964 0
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movq	-72(%rbp), %rax	# tempvec, D.6754
	movl	-188(%rbp), %edx	# sig, tmp234
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 965 0
	cmpl	$3, -188(%rbp)	#, sig
	jg	.L209	#,
	.loc 1 971 0
	movq	-72(%rbp), %rsi	# tempvec, D.6754
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movq	-152(%rbp), %rax	# FiveSt, tmp235
	movl	-188(%rbp), %edx	# sig, tmp236
	movq	%rax, -232(%rbp)	# tmp235, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	add_force_to_mom	#
.L209:
	.loc 1 973 0
	movl	$0, -192(%rbp)	#, rho
	jmp	.L210	#
.L215:
	.loc 1 973 0 is_stmt 0 discriminator 2
	movl	-192(%rbp), %eax	# rho, tmp237
	cmpl	-200(%rbp), %eax	# mu, tmp237
	je	.L211	#,
	.loc 1 973 0 discriminator 1
	movl	$7, %eax	#, tmp238
	subl	-200(%rbp), %eax	# mu, D.6756
	cmpl	-192(%rbp), %eax	# rho, D.6756
	je	.L211	#,
	movl	-192(%rbp), %eax	# rho, tmp239
	cmpl	-196(%rbp), %eax	# nu, tmp239
	je	.L211	#,
	.loc 1 974 0 is_stmt 1
	movl	$7, %eax	#, tmp240
	subl	-196(%rbp), %eax	# nu, D.6756
	cmpl	-192(%rbp), %eax	# rho, D.6756
	je	.L211	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# rho, tmp241
	cmpl	-188(%rbp), %eax	# sig, tmp241
	je	.L211	#,
	.loc 1 975 0 is_stmt 1
	movl	$7, %eax	#, tmp242
	subl	-188(%rbp), %eax	# sig, D.6756
	cmpl	-192(%rbp), %eax	# rho, D.6756
	je	.L211	#,
	.loc 1 977 0
	movl	$7, %eax	#, tmp243
	subl	-192(%rbp), %eax	# rho, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-64(%rbp), %rcx	# tempvec, D.6754
	movq	-72(%rbp), %rax	# tempvec, D.6754
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 979 0
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movq	-64(%rbp), %rax	# tempvec, D.6754
	movl	-188(%rbp), %edx	# sig, tmp244
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 980 0
	cmpl	$3, -188(%rbp)	#, sig
	jg	.L212	#,
	.loc 1 986 0
	movsd	-144(%rbp), %xmm1	# SevenSt, tmp245
	movsd	.LC4(%rip), %xmm0	#, tmp246
	xorpd	%xmm1, %xmm0	# tmp245, D.6751
	movq	-64(%rbp), %rcx	# tempvec, D.6754
	movq	-56(%rbp), %rax	# tempvec, D.6754
	movl	-188(%rbp), %edx	# sig, tmp247
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	add_force_to_mom	#
.L212:
	.loc 1 989 0
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movq	-56(%rbp), %rax	# tempvec, D.6754
	movl	-192(%rbp), %edx	# rho, tmp248
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 990 0
	movq	-48(%rbp), %r9	# tempvec, D.6754
	movq	-64(%rbp), %r8	# tempvec, D.6754
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movq	-72(%rbp), %rdx	# tempvec, D.6754
	movq	-144(%rbp), %rax	# SevenSt, tmp249
	movl	-188(%rbp), %esi	# sig, tmp250
	movl	-192(%rbp), %edi	# rho, tmp251
	movq	%rax, -232(%rbp)	# tmp249, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	call	side_link_force	#
	.loc 1 992 0
	movsd	-144(%rbp), %xmm0	# SevenSt, tmp253
	divsd	-152(%rbp), %xmm0	# FiveSt, tmp252
	movsd	%xmm0, -120(%rbp)	# tmp252, coeff
	.loc 1 993 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L213	#
.L214:
	.loc 1 995 0 discriminator 2
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	.loc 1 994 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6752
	.loc 1 995 0 discriminator 2
	movq	%rdx, %rax	# D.6752, tmp254
	addq	%rax, %rax	# tmp254
	addq	%rdx, %rax	# D.6752, tmp254
	salq	$4, %rax	#, tmp255
	.loc 1 994 0 discriminator 2
	leaq	(%rcx,%rax), %rdi	#, D.6754
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp256
	addq	%rax, %rax	# tmp256
	addq	%rdx, %rax	# D.6752, tmp256
	salq	$4, %rax	#, tmp257
	leaq	(%rcx,%rax), %rsi	#, D.6754
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp258
	addq	%rax, %rax	# tmp258
	addq	%rdx, %rax	# D.6752, tmp258
	salq	$4, %rax	#, tmp259
	addq	%rax, %rcx	# D.6752, D.6754
	movq	-120(%rbp), %rax	# coeff, tmp260
	movq	%rdi, %rdx	# D.6754,
	movq	%rax, -232(%rbp)	# tmp260, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	scalar_mult_add_su3_vector	#
	.loc 1 993 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L213:
	.loc 1 993 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.79
	cmpl	%eax, %ebx	# sites_on_node.79, i
	jl	.L214	#,
.L211:
	.loc 1 973 0 is_stmt 1 discriminator 2
	addl	$1, -192(%rbp)	#, rho
.L210:
	.loc 1 973 0 is_stmt 0 discriminator 1
	cmpl	$7, -192(%rbp)	#, rho
	jle	.L215	#,
	.loc 1 999 0 is_stmt 1
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movq	-32(%rbp), %rax	# tempvec, D.6754
	movl	-196(%rbp), %edx	# nu, tmp261
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 1000 0
	movq	-56(%rbp), %r8	# tempvec, D.6754
	movq	-72(%rbp), %rdi	# tempvec, D.6754
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movq	-80(%rbp), %rdx	# tempvec, D.6754
	movsd	-152(%rbp), %xmm1	# FiveSt, tmp262
	movsd	.LC4(%rip), %xmm0	#, tmp263
	xorpd	%xmm1, %xmm0	# tmp262, D.6751
	movl	-188(%rbp), %esi	# sig, tmp264
	movl	-196(%rbp), %eax	# nu, tmp265
	movq	%r8, %r9	# D.6754,
	movq	%rdi, %r8	# D.6754,
	movl	%eax, %edi	# tmp265,
	call	side_link_force	#
	.loc 1 1003 0
	movsd	-152(%rbp), %xmm0	# FiveSt, tmp267
	divsd	-160(%rbp), %xmm0	# ThreeSt, tmp266
	movsd	%xmm0, -120(%rbp)	# tmp266, coeff
	.loc 1 1004 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L216	#
.L217:
	.loc 1 1005 0 discriminator 2
	movq	-24(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp268
	addq	%rax, %rax	# tmp268
	addq	%rdx, %rax	# D.6752, tmp268
	salq	$4, %rax	#, tmp269
	leaq	(%rcx,%rax), %rdi	#, D.6754
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp270
	addq	%rax, %rax	# tmp270
	addq	%rdx, %rax	# D.6752, tmp270
	salq	$4, %rax	#, tmp271
	leaq	(%rcx,%rax), %rsi	#, D.6754
	movq	-24(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp272
	addq	%rax, %rax	# tmp272
	addq	%rdx, %rax	# D.6752, tmp272
	salq	$4, %rax	#, tmp273
	addq	%rax, %rcx	# D.6752, D.6754
	movq	-120(%rbp), %rax	# coeff, tmp274
	movq	%rdi, %rdx	# D.6754,
	movq	%rax, -232(%rbp)	# tmp274, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1004 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L216:
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.80
	cmpl	%eax, %ebx	# sites_on_node.80, i
	jl	.L217	#,
.L208:
	.loc 1 960 0 is_stmt 1 discriminator 2
	addl	$1, -196(%rbp)	#, nu
.L207:
	.loc 1 960 0 is_stmt 0 discriminator 1
	cmpl	$7, -196(%rbp)	#, nu
	jle	.L218	#,
	.loc 1 1010 0 is_stmt 1
	movl	$7, %eax	#, tmp275
	subl	-200(%rbp), %eax	# mu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-72(%rbp), %rcx	# tempvec, D.6754
	movq	-80(%rbp), %rax	# tempvec, D.6754
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 1011 0
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movq	-72(%rbp), %rax	# tempvec, D.6754
	movl	-188(%rbp), %edx	# sig, tmp276
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 1012 0
	cmpl	$3, -188(%rbp)	#, sig
	jg	.L219	#,
	.loc 1 1018 0
	movq	-72(%rbp), %rsi	# tempvec, D.6754
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movq	-136(%rbp), %rax	# Lepage, tmp277
	movl	-188(%rbp), %edx	# sig, tmp278
	movq	%rax, -232(%rbp)	# tmp277, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	add_force_to_mom	#
.L219:
	.loc 1 1021 0
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movq	-32(%rbp), %rax	# tempvec, D.6754
	movl	-200(%rbp), %edx	# mu, tmp279
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 1022 0
	movq	-56(%rbp), %r8	# tempvec, D.6754
	movq	-72(%rbp), %rdi	# tempvec, D.6754
	movq	-32(%rbp), %rcx	# tempvec, D.6754
	movq	-80(%rbp), %rdx	# tempvec, D.6754
	movsd	-136(%rbp), %xmm1	# Lepage, tmp280
	movsd	.LC4(%rip), %xmm0	#, tmp281
	xorpd	%xmm1, %xmm0	# tmp280, D.6751
	movl	-188(%rbp), %esi	# sig, tmp282
	movl	-200(%rbp), %eax	# mu, tmp283
	movq	%r8, %r9	# D.6754,
	movq	%rdi, %r8	# D.6754,
	movl	%eax, %edi	# tmp283,
	call	side_link_force	#
	.loc 1 1024 0
	movsd	-136(%rbp), %xmm0	# Lepage, tmp285
	divsd	-160(%rbp), %xmm0	# ThreeSt, tmp284
	movsd	%xmm0, -120(%rbp)	# tmp284, coeff
	.loc 1 1025 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L220	#
.L221:
	.loc 1 1026 0 discriminator 2
	movq	-24(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp286
	addq	%rax, %rax	# tmp286
	addq	%rdx, %rax	# D.6752, tmp286
	salq	$4, %rax	#, tmp287
	leaq	(%rcx,%rax), %rdi	#, D.6754
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp288
	addq	%rax, %rax	# tmp288
	addq	%rdx, %rax	# D.6752, tmp288
	salq	$4, %rax	#, tmp289
	leaq	(%rcx,%rax), %rsi	#, D.6754
	movq	-24(%rbp), %rcx	# tempvec, D.6754
	movslq	%ebx, %rdx	# i, D.6752
	movq	%rdx, %rax	# D.6752, tmp290
	addq	%rax, %rax	# tmp290
	addq	%rdx, %rax	# D.6752, tmp290
	salq	$4, %rax	#, tmp291
	addq	%rax, %rcx	# D.6752, D.6754
	movq	-120(%rbp), %rax	# coeff, tmp292
	movq	%rdi, %rdx	# D.6754,
	movq	%rax, -232(%rbp)	# tmp292, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1025 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L220:
	.loc 1 1025 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.81
	cmpl	%eax, %ebx	# sites_on_node.81, i
	jl	.L221	#,
	.loc 1 1030 0 is_stmt 1
	cmpl	$3, -200(%rbp)	#, mu
	jg	.L222	#,
	.loc 1 1031 0
	movq	-56(%rbp), %rcx	# tempvec, D.6754
	movq	-24(%rbp), %rax	# tempvec, D.6754
	movl	-200(%rbp), %edx	# mu, tmp293
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
.L222:
	.loc 1 1033 0
	movq	-56(%rbp), %r9	# tempvec, D.6754
	movq	-80(%rbp), %r8	# tempvec, D.6754
	movq	-24(%rbp), %rcx	# tempvec, D.6754
	movq	-128(%rbp), %rdx	# temp_x, tmp294
	movq	-160(%rbp), %rax	# ThreeSt, tmp295
	movl	-188(%rbp), %esi	# sig, tmp296
	movl	-200(%rbp), %edi	# mu, tmp297
	movq	%rax, -232(%rbp)	# tmp295, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	call	side_link_force	#
	.loc 1 1037 0
	movl	-200(%rbp), %eax	# mu, tmp299
	cltq
	movl	-112(%rbp,%rax,4), %eax	# DirectLinks, D.6756
	testl	%eax, %eax	# D.6756
	jne	.L205	#,
	.loc 1 1038 0
	movl	-200(%rbp), %eax	# mu, tmp301
	cltq
	movl	$1, -112(%rbp,%rax,4)	#, DirectLinks
	.loc 1 1039 0
	cmpl	$3, -200(%rbp)	#, mu
	jle	.L223	#,
	.loc 1 1044 0
	movl	$7, %eax	#, tmp302
	subl	-200(%rbp), %eax	# mu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-80(%rbp), %rcx	# tempvec, D.6754
	movq	-176(%rbp), %rax	# OneLink, tmp303
	movq	-128(%rbp), %rsi	# temp_x, tmp304
	movq	%rax, -232(%rbp)	# tmp303, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	add_force_to_mom	#
	.loc 1 1048 0
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movl	-200(%rbp), %edx	# mu, tmp305
	movq	-128(%rbp), %rax	# temp_x, tmp306
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# tmp306,
	call	u_shift_fermion	#
	.loc 1 1051 0
	movsd	-168(%rbp), %xmm1	# Naik, tmp307
	movsd	.LC4(%rip), %xmm0	#, tmp308
	xorpd	%xmm1, %xmm0	# tmp307, D.6751
	movl	$7, %eax	#, tmp309
	subl	-200(%rbp), %eax	# mu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movq	-72(%rbp), %rax	# tempvec, D.6754
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	add_force_to_mom	#
	.loc 1 1053 0
	movl	$7, %eax	#, tmp310
	subl	-200(%rbp), %eax	# mu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movq	-72(%rbp), %rax	# tempvec, D.6754
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# D.6754,
	call	u_shift_fermion	#
	.loc 1 1055 0
	movl	$7, %eax	#, tmp311
	subl	-200(%rbp), %eax	# mu, D.6756
	movl	%eax, %edx	# D.6756, D.6756
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movq	-168(%rbp), %rax	# Naik, tmp312
	movq	-128(%rbp), %rsi	# temp_x, tmp313
	movq	%rax, -232(%rbp)	# tmp312, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	add_force_to_mom	#
	jmp	.L205	#
.L223:
	.loc 1 1059 0
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movl	-200(%rbp), %edx	# mu, tmp314
	movq	-128(%rbp), %rax	# temp_x, tmp315
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# tmp315,
	call	u_shift_fermion	#
	.loc 1 1062 0
	movq	-72(%rbp), %rsi	# tempvec, D.6754
	movq	-48(%rbp), %rcx	# tempvec, D.6754
	movq	-168(%rbp), %rax	# Naik, tmp316
	movl	-200(%rbp), %edx	# mu, tmp317
	movq	%rax, -232(%rbp)	# tmp316, %sfp
	movsd	-232(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# D.6754,
	call	add_force_to_mom	#
.L205:
	.loc 1 948 0 discriminator 2
	addl	$1, -200(%rbp)	#, mu
.L204:
	.loc 1 948 0 is_stmt 0 discriminator 1
	cmpl	$7, -200(%rbp)	#, mu
	jle	.L224	#,
	.loc 1 946 0 is_stmt 1
	addl	$1, -188(%rbp)	#, sig
.L203:
	.loc 1 946 0 is_stmt 0 discriminator 1
	cmpl	$7, -188(%rbp)	#, sig
	jle	.L225	#,
	.loc 1 1070 0 is_stmt 1
	movq	-128(%rbp), %rax	# temp_x, tmp318
	movq	%rax, %rdi	# tmp318,
	call	free	#
	.loc 1 1071 0
	movl	$0, -200(%rbp)	#, mu
	jmp	.L226	#
.L227:
	.loc 1 1072 0 discriminator 2
	movl	-200(%rbp), %eax	# mu, tmp320
	cltq
	movq	-80(%rbp,%rax,8), %rax	# tempvec, D.6754
	movq	%rax, %rdi	# D.6754,
	call	free	#
	.loc 1 1071 0 discriminator 2
	addl	$1, -200(%rbp)	#, mu
.L226:
	.loc 1 1071 0 is_stmt 0 discriminator 1
	cmpl	$7, -200(%rbp)	#, mu
	jle	.L227	#,
	.loc 1 1079 0 is_stmt 1
	addq	$224, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	eo_fermion_force, .-eo_fermion_force
	.globl	eo_fermion_force_3f
	.type	eo_fermion_force_3f, @function
eo_fermion_force_3f:
.LFB10:
	.loc 1 1106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$368, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movsd	%xmm0, -344(%rbp)	# eps, eps
	movl	%edi, -348(%rbp)	# nflav1, nflav1
	movl	%esi, -352(%rbp)	# x1_off, x1_off
	movl	%edx, -356(%rbp)	# nflav2, nflav2
	movl	%ecx, -360(%rbp)	# x2_off, x2_off
	.loc 1 1129 0
	cvtsi2sd	-348(%rbp), %xmm0	# nflav1, D.6757
	movsd	.LC9(%rip), %xmm1	#, tmp316
	divsd	%xmm1, %xmm0	# tmp316, D.6757
	addsd	%xmm0, %xmm0	# D.6757, D.6757
	mulsd	-344(%rbp), %xmm0	# eps, tmp317
	movsd	%xmm0, -320(%rbp)	# tmp317, ferm_epsilon
	.loc 1 1130 0
	movsd	act_path_coeff(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -288(%rbp)	# D.6757, OneLink
	.loc 1 1131 0
	movsd	act_path_coeff+8(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -256(%rbp)	# D.6757, Naik
	movsd	-256(%rbp), %xmm1	# Naik, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp318
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -192(%rbp)	# D.6757, mNaik
	.loc 1 1132 0
	movsd	act_path_coeff+16(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -224(%rbp)	# D.6757, ThreeSt
	movsd	-224(%rbp), %xmm1	# ThreeSt, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp319
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -144(%rbp)	# D.6757, mThreeSt
	.loc 1 1133 0
	movsd	act_path_coeff+24(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -240(%rbp)	# D.6757, FiveSt
	movsd	-240(%rbp), %xmm1	# FiveSt, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp320
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -160(%rbp)	# D.6757, mFiveSt
	.loc 1 1134 0
	movsd	act_path_coeff+32(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -208(%rbp)	# D.6757, SevenSt
	movsd	-208(%rbp), %xmm1	# SevenSt, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp321
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -128(%rbp)	# D.6757, mSevenSt
	.loc 1 1135 0
	movsd	act_path_coeff+40(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -272(%rbp)	# D.6757, Lepage
	movsd	-272(%rbp), %xmm1	# Lepage, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp322
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -176(%rbp)	# D.6757, mLepage
	.loc 1 1137 0
	cvtsi2sd	-356(%rbp), %xmm0	# nflav2, D.6757
	movsd	.LC9(%rip), %xmm1	#, tmp323
	divsd	%xmm1, %xmm0	# tmp323, D.6757
	addsd	%xmm0, %xmm0	# D.6757, D.6757
	mulsd	-344(%rbp), %xmm0	# eps, tmp324
	movsd	%xmm0, -320(%rbp)	# tmp324, ferm_epsilon
	.loc 1 1138 0
	movsd	act_path_coeff(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -280(%rbp)	# D.6757, OneLink
	.loc 1 1139 0
	movsd	act_path_coeff+8(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -248(%rbp)	# D.6757, Naik
	movsd	-248(%rbp), %xmm1	# Naik, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp325
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -184(%rbp)	# D.6757, mNaik
	.loc 1 1140 0
	movsd	act_path_coeff+16(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -216(%rbp)	# D.6757, ThreeSt
	movsd	-216(%rbp), %xmm1	# ThreeSt, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp326
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -136(%rbp)	# D.6757, mThreeSt
	.loc 1 1141 0
	movsd	act_path_coeff+24(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -232(%rbp)	# D.6757, FiveSt
	movsd	-232(%rbp), %xmm1	# FiveSt, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp327
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -152(%rbp)	# D.6757, mFiveSt
	.loc 1 1142 0
	movsd	act_path_coeff+32(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -200(%rbp)	# D.6757, SevenSt
	movsd	-200(%rbp), %xmm1	# SevenSt, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp328
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -120(%rbp)	# D.6757, mSevenSt
	.loc 1 1143 0
	movsd	act_path_coeff+40(%rip), %xmm0	# act_path_coeff, D.6757
	mulsd	-320(%rbp), %xmm0	# ferm_epsilon, D.6757
	movsd	%xmm0, -264(%rbp)	# D.6757, Lepage
	movsd	-264(%rbp), %xmm1	# Lepage, D.6757
	movsd	.LC4(%rip), %xmm0	#, tmp329
	xorpd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -168(%rbp)	# D.6757, mLepage
	.loc 1 1147 0
	movl	$0, -336(%rbp)	#, mu
	jmp	.L229	#
.L230:
	.loc 1 1148 0 discriminator 2
	movl	-336(%rbp), %eax	# mu, tmp331
	cltq
	movl	$0, -112(%rbp,%rax,4)	#, DirectLinks
	.loc 1 1147 0 discriminator 2
	addl	$1, -336(%rbp)	#, mu
.L229:
	.loc 1 1147 0 is_stmt 0 discriminator 1
	cmpl	$7, -336(%rbp)	#, mu
	jle	.L230	#,
	.loc 1 1151 0 is_stmt 1
	movl	$0, -336(%rbp)	#, mu
	jmp	.L231	#
.L232:
	.loc 1 1153 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.82
	cltq
	movl	$96, %esi	#,
	movq	%rax, %rdi	# D.6758,
	call	calloc	#
	movq	%rax, %rdx	# tmp332, D.6759
	.loc 1 1152 0 discriminator 2
	movl	-336(%rbp), %eax	# mu, tmp334
	cltq
	movq	%rdx, -80(%rbp,%rax,8)	# D.6759, hwvec
	.loc 1 1151 0 discriminator 2
	addl	$1, -336(%rbp)	#, mu
.L231:
	.loc 1 1151 0 is_stmt 0 discriminator 1
	cmpl	$7, -336(%rbp)	#, mu
	jle	.L232	#,
	.loc 1 1157 0 is_stmt 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.83
	cltq
	.loc 1 1156 0
	movl	$96, %esi	#,
	movq	%rax, %rdi	# D.6758,
	call	calloc	#
	movq	%rax, -312(%rbp)	# tmp335, temp_x
	.loc 1 1158 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L233	#
.L234:
	.loc 1 1160 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp336
	addq	%rax, %rax	# tmp336
	addq	%rdx, %rax	# D.6758, tmp336
	salq	$5, %rax	#, tmp337
	movq	%rax, %rdx	# tmp336, D.6758
	movq	-312(%rbp), %rax	# temp_x, tmp338
	addq	%rdx, %rax	# D.6758, D.6760
	movl	-352(%rbp), %edx	# x1_off, tmp339
	movslq	%edx, %rdx	# tmp339, D.6761
	addq	%r12, %rdx	# s, D.6762
	movq	(%rdx), %rcx	# *_89, tmp340
	movq	%rcx, (%rax)	# tmp340, _86->h
	movq	8(%rdx), %rcx	# *_89, tmp341
	movq	%rcx, 8(%rax)	# tmp341, _86->h
	movq	16(%rdx), %rcx	# *_89, tmp342
	movq	%rcx, 16(%rax)	# tmp342, _86->h
	movq	24(%rdx), %rcx	# *_89, tmp343
	movq	%rcx, 24(%rax)	# tmp343, _86->h
	movq	32(%rdx), %rcx	# *_89, tmp344
	movq	%rcx, 32(%rax)	# tmp344, _86->h
	movq	40(%rdx), %rdx	# *_89, tmp345
	movq	%rdx, 40(%rax)	# tmp345, _86->h
	.loc 1 1161 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp346
	addq	%rax, %rax	# tmp346
	addq	%rdx, %rax	# D.6758, tmp346
	salq	$5, %rax	#, tmp347
	movq	%rax, %rdx	# tmp346, D.6758
	movq	-312(%rbp), %rax	# temp_x, tmp348
	addq	%rdx, %rax	# D.6758, D.6760
	movl	-360(%rbp), %edx	# x2_off, tmp349
	movslq	%edx, %rdx	# tmp349, D.6761
	addq	%r12, %rdx	# s, D.6762
	movq	(%rdx), %rcx	# *_95, tmp350
	movq	%rcx, 48(%rax)	# tmp350, _92->h
	movq	8(%rdx), %rcx	# *_95, tmp351
	movq	%rcx, 56(%rax)	# tmp351, _92->h
	movq	16(%rdx), %rcx	# *_95, tmp352
	movq	%rcx, 64(%rax)	# tmp352, _92->h
	movq	24(%rdx), %rcx	# *_95, tmp353
	movq	%rcx, 72(%rax)	# tmp353, _92->h
	movq	32(%rdx), %rcx	# *_95, tmp354
	movq	%rcx, 80(%rax)	# tmp354, _92->h
	movq	40(%rdx), %rdx	# *_95, tmp355
	movq	%rdx, 88(%rax)	# tmp355, _92->h
	.loc 1 1158 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L233:
	.loc 1 1158 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.84
	cmpl	%eax, %ebx	# sites_on_node.84, i
	jl	.L234	#,
	.loc 1 1164 0 is_stmt 1
	movl	$0, -324(%rbp)	#, sig
	jmp	.L235	#
.L257:
	.loc 1 1166 0
	movl	$0, -336(%rbp)	#, mu
	jmp	.L236	#
.L256:
	.loc 1 1166 0 is_stmt 0 discriminator 2
	movl	-336(%rbp), %eax	# mu, tmp356
	cmpl	-324(%rbp), %eax	# sig, tmp356
	je	.L237	#,
	.loc 1 1166 0 discriminator 1
	movl	$7, %eax	#, tmp357
	subl	-324(%rbp), %eax	# sig, D.6763
	cmpl	-336(%rbp), %eax	# mu, D.6763
	je	.L237	#,
	.loc 1 1168 0 is_stmt 1
	movl	$7, %eax	#, tmp358
	subl	-336(%rbp), %eax	# mu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-80(%rbp), %rcx	# hwvec, D.6760
	movq	-312(%rbp), %rax	# temp_x, tmp359
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# tmp359,
	call	u_shift_hw_fermion	#
	.loc 1 1169 0
	movq	-24(%rbp), %rcx	# hwvec, D.6760
	movq	-80(%rbp), %rax	# hwvec, D.6760
	movl	-324(%rbp), %edx	# sig, tmp360
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1170 0
	cmpl	$3, -324(%rbp)	#, sig
	jg	.L238	#,
	.loc 1 1176 0
	movq	-80(%rbp), %rsi	# hwvec, D.6760
	movq	-24(%rbp), %rax	# hwvec, D.6760
	leaq	-144(%rbp), %rcx	#, tmp361
	movl	-324(%rbp), %edx	# sig, tmp362
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
.L238:
	.loc 1 1178 0
	movl	$0, -332(%rbp)	#, nu
	jmp	.L239	#
.L250:
	.loc 1 1178 0 is_stmt 0 discriminator 2
	movl	-332(%rbp), %eax	# nu, tmp363
	cmpl	-336(%rbp), %eax	# mu, tmp363
	je	.L240	#,
	.loc 1 1178 0 discriminator 1
	movl	$7, %eax	#, tmp364
	subl	-336(%rbp), %eax	# mu, D.6763
	cmpl	-332(%rbp), %eax	# nu, D.6763
	je	.L240	#,
	movl	-332(%rbp), %eax	# nu, tmp365
	cmpl	-324(%rbp), %eax	# sig, tmp365
	je	.L240	#,
	.loc 1 1179 0 is_stmt 1
	movl	$7, %eax	#, tmp366
	subl	-324(%rbp), %eax	# sig, D.6763
	cmpl	-332(%rbp), %eax	# nu, D.6763
	je	.L240	#,
	.loc 1 1181 0
	movl	$7, %eax	#, tmp367
	subl	-332(%rbp), %eax	# nu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-72(%rbp), %rcx	# hwvec, D.6760
	movq	-80(%rbp), %rax	# hwvec, D.6760
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1182 0
	movq	-32(%rbp), %rcx	# hwvec, D.6760
	movq	-72(%rbp), %rax	# hwvec, D.6760
	movl	-324(%rbp), %edx	# sig, tmp368
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1183 0
	cmpl	$3, -324(%rbp)	#, sig
	jg	.L241	#,
	.loc 1 1189 0
	movq	-72(%rbp), %rsi	# hwvec, D.6760
	movq	-32(%rbp), %rax	# hwvec, D.6760
	leaq	-240(%rbp), %rcx	#, tmp369
	movl	-324(%rbp), %edx	# sig, tmp370
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
.L241:
	.loc 1 1191 0
	movl	$0, -328(%rbp)	#, rho
	jmp	.L242	#
.L247:
	.loc 1 1191 0 is_stmt 0 discriminator 2
	movl	-328(%rbp), %eax	# rho, tmp371
	cmpl	-336(%rbp), %eax	# mu, tmp371
	je	.L243	#,
	.loc 1 1191 0 discriminator 1
	movl	$7, %eax	#, tmp372
	subl	-336(%rbp), %eax	# mu, D.6763
	cmpl	-328(%rbp), %eax	# rho, D.6763
	je	.L243	#,
	movl	-328(%rbp), %eax	# rho, tmp373
	cmpl	-332(%rbp), %eax	# nu, tmp373
	je	.L243	#,
	.loc 1 1192 0 is_stmt 1
	movl	$7, %eax	#, tmp374
	subl	-332(%rbp), %eax	# nu, D.6763
	cmpl	-328(%rbp), %eax	# rho, D.6763
	je	.L243	#,
	.loc 1 1192 0 is_stmt 0 discriminator 1
	movl	-328(%rbp), %eax	# rho, tmp375
	cmpl	-324(%rbp), %eax	# sig, tmp375
	je	.L243	#,
	.loc 1 1193 0 is_stmt 1
	movl	$7, %eax	#, tmp376
	subl	-324(%rbp), %eax	# sig, D.6763
	cmpl	-328(%rbp), %eax	# rho, D.6763
	je	.L243	#,
	.loc 1 1195 0
	movl	$7, %eax	#, tmp377
	subl	-328(%rbp), %eax	# rho, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-64(%rbp), %rcx	# hwvec, D.6760
	movq	-72(%rbp), %rax	# hwvec, D.6760
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1197 0
	movq	-56(%rbp), %rcx	# hwvec, D.6760
	movq	-64(%rbp), %rax	# hwvec, D.6760
	movl	-324(%rbp), %edx	# sig, tmp378
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1198 0
	cmpl	$3, -324(%rbp)	#, sig
	jg	.L244	#,
	.loc 1 1204 0
	movq	-64(%rbp), %rsi	# hwvec, D.6760
	movq	-56(%rbp), %rax	# hwvec, D.6760
	leaq	-128(%rbp), %rcx	#, tmp379
	movl	-324(%rbp), %edx	# sig, tmp380
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
.L244:
	.loc 1 1207 0
	movq	-48(%rbp), %rcx	# hwvec, D.6760
	movq	-56(%rbp), %rax	# hwvec, D.6760
	movl	-328(%rbp), %edx	# rho, tmp381
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1208 0
	movq	-48(%rbp), %rdi	# hwvec, D.6760
	movq	-64(%rbp), %r9	# hwvec, D.6760
	movq	-56(%rbp), %r8	# hwvec, D.6760
	movq	-72(%rbp), %rcx	# hwvec, D.6760
	leaq	-208(%rbp), %rdx	#, tmp382
	movl	-324(%rbp), %esi	# sig, tmp383
	movl	-328(%rbp), %eax	# rho, tmp384
	movq	%rdi, (%rsp)	# D.6760,
	movl	%eax, %edi	# tmp384,
	call	side_link_3f_force	#
	.loc 1 1210 0
	movsd	-208(%rbp), %xmm0	# SevenSt, D.6757
	movsd	-240(%rbp), %xmm1	# FiveSt, D.6757
	divsd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -304(%rbp)	# D.6757, coeff
	.loc 1 1211 0
	movsd	-200(%rbp), %xmm0	# SevenSt, D.6757
	movsd	-232(%rbp), %xmm1	# FiveSt, D.6757
	divsd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -296(%rbp)	# D.6757, coeff
	.loc 1 1212 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L245	#
.L246:
	.loc 1 1216 0 discriminator 2
	movq	-32(%rbp), %rcx	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# D.6758, tmp385
	salq	$5, %rax	#, tmp386
	addq	%rcx, %rax	# D.6760, D.6760
	.loc 1 1214 0 discriminator 2
	movq	%rax, %rdi	# D.6760, D.6762
	movq	-304(%rbp), %rcx	# coeff, D.6757
	.loc 1 1215 0 discriminator 2
	movq	-48(%rbp), %rsi	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp387
	addq	%rax, %rax	# tmp387
	addq	%rdx, %rax	# D.6758, tmp387
	salq	$5, %rax	#, tmp388
	addq	%rsi, %rax	# D.6760, D.6760
	.loc 1 1214 0 discriminator 2
	movq	%rax, %rsi	# D.6760, D.6762
	movq	-32(%rbp), %r8	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp389
	addq	%rax, %rax	# tmp389
	addq	%rdx, %rax	# D.6758, tmp389
	salq	$5, %rax	#, tmp390
	addq	%r8, %rax	# D.6760, D.6760
	movq	%rdi, %rdx	# D.6762,
	movq	%rcx, -368(%rbp)	# D.6757, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	movq	%rax, %rdi	# D.6762,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1219 0 discriminator 2
	movq	-32(%rbp), %rcx	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp391
	addq	%rax, %rax	# tmp391
	addq	%rdx, %rax	# D.6758, tmp391
	salq	$5, %rax	#, tmp392
	addq	%rcx, %rax	# D.6760, D.6760
	.loc 1 1217 0 discriminator 2
	leaq	48(%rax), %rdi	#, D.6762
	movq	-296(%rbp), %rcx	# coeff, D.6757
	.loc 1 1218 0 discriminator 2
	movq	-48(%rbp), %rsi	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp393
	addq	%rax, %rax	# tmp393
	addq	%rdx, %rax	# D.6758, tmp393
	salq	$5, %rax	#, tmp394
	addq	%rsi, %rax	# D.6760, D.6760
	.loc 1 1217 0 discriminator 2
	leaq	48(%rax), %rsi	#, D.6762
	movq	-32(%rbp), %r8	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp395
	addq	%rax, %rax	# tmp395
	addq	%rdx, %rax	# D.6758, tmp395
	salq	$5, %rax	#, tmp396
	addq	%r8, %rax	# D.6760, D.6760
	addq	$48, %rax	#, D.6762
	movq	%rdi, %rdx	# D.6762,
	movq	%rcx, -368(%rbp)	# D.6757, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	movq	%rax, %rdi	# D.6762,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1212 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L245:
	.loc 1 1212 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.85
	cmpl	%eax, %ebx	# sites_on_node.85, i
	jl	.L246	#,
.L243:
	.loc 1 1191 0 is_stmt 1 discriminator 2
	addl	$1, -328(%rbp)	#, rho
.L242:
	.loc 1 1191 0 is_stmt 0 discriminator 1
	cmpl	$7, -328(%rbp)	#, rho
	jle	.L247	#,
	.loc 1 1224 0 is_stmt 1
	movq	-56(%rbp), %rcx	# hwvec, D.6760
	movq	-32(%rbp), %rax	# hwvec, D.6760
	movl	-332(%rbp), %edx	# nu, tmp397
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1225 0
	movq	-56(%rbp), %rdi	# hwvec, D.6760
	movq	-72(%rbp), %r9	# hwvec, D.6760
	movq	-32(%rbp), %r8	# hwvec, D.6760
	movq	-80(%rbp), %rcx	# hwvec, D.6760
	leaq	-160(%rbp), %rdx	#, tmp398
	movl	-324(%rbp), %esi	# sig, tmp399
	movl	-332(%rbp), %eax	# nu, tmp400
	movq	%rdi, (%rsp)	# D.6760,
	movl	%eax, %edi	# tmp400,
	call	side_link_3f_force	#
	.loc 1 1228 0
	movsd	-240(%rbp), %xmm0	# FiveSt, D.6757
	movsd	-224(%rbp), %xmm1	# ThreeSt, D.6757
	divsd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -304(%rbp)	# D.6757, coeff
	.loc 1 1229 0
	movsd	-232(%rbp), %xmm0	# FiveSt, D.6757
	movsd	-216(%rbp), %xmm1	# ThreeSt, D.6757
	divsd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -296(%rbp)	# D.6757, coeff
	.loc 1 1230 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L248	#
.L249:
	.loc 1 1234 0 discriminator 2
	movq	-24(%rbp), %rcx	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp401
	addq	%rax, %rax	# tmp401
	addq	%rdx, %rax	# D.6758, tmp401
	salq	$5, %rax	#, tmp402
	addq	%rcx, %rax	# D.6760, D.6760
	.loc 1 1232 0 discriminator 2
	movq	%rax, %rdi	# D.6760, D.6762
	movq	-304(%rbp), %rcx	# coeff, D.6757
	.loc 1 1233 0 discriminator 2
	movq	-56(%rbp), %rsi	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp403
	addq	%rax, %rax	# tmp403
	addq	%rdx, %rax	# D.6758, tmp403
	salq	$5, %rax	#, tmp404
	addq	%rsi, %rax	# D.6760, D.6760
	.loc 1 1232 0 discriminator 2
	movq	%rax, %rsi	# D.6760, D.6762
	movq	-24(%rbp), %r8	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp405
	addq	%rax, %rax	# tmp405
	addq	%rdx, %rax	# D.6758, tmp405
	salq	$5, %rax	#, tmp406
	addq	%r8, %rax	# D.6760, D.6760
	movq	%rdi, %rdx	# D.6762,
	movq	%rcx, -368(%rbp)	# D.6757, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	movq	%rax, %rdi	# D.6762,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1237 0 discriminator 2
	movq	-24(%rbp), %rcx	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp407
	addq	%rax, %rax	# tmp407
	addq	%rdx, %rax	# D.6758, tmp407
	salq	$5, %rax	#, tmp408
	addq	%rcx, %rax	# D.6760, D.6760
	.loc 1 1235 0 discriminator 2
	leaq	48(%rax), %rdi	#, D.6762
	movq	-296(%rbp), %rcx	# coeff, D.6757
	.loc 1 1236 0 discriminator 2
	movq	-56(%rbp), %rsi	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp409
	addq	%rax, %rax	# tmp409
	addq	%rdx, %rax	# D.6758, tmp409
	salq	$5, %rax	#, tmp410
	addq	%rsi, %rax	# D.6760, D.6760
	.loc 1 1235 0 discriminator 2
	leaq	48(%rax), %rsi	#, D.6762
	movq	-24(%rbp), %r8	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp411
	addq	%rax, %rax	# tmp411
	addq	%rdx, %rax	# D.6758, tmp411
	salq	$5, %rax	#, tmp412
	addq	%r8, %rax	# D.6760, D.6760
	addq	$48, %rax	#, D.6762
	movq	%rdi, %rdx	# D.6762,
	movq	%rcx, -368(%rbp)	# D.6757, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	movq	%rax, %rdi	# D.6762,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1230 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L248:
	.loc 1 1230 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.86
	cmpl	%eax, %ebx	# sites_on_node.86, i
	jl	.L249	#,
.L240:
	.loc 1 1178 0 is_stmt 1 discriminator 2
	addl	$1, -332(%rbp)	#, nu
.L239:
	.loc 1 1178 0 is_stmt 0 discriminator 1
	cmpl	$7, -332(%rbp)	#, nu
	jle	.L250	#,
	.loc 1 1243 0 is_stmt 1
	movl	$7, %eax	#, tmp413
	subl	-336(%rbp), %eax	# mu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-72(%rbp), %rcx	# hwvec, D.6760
	movq	-80(%rbp), %rax	# hwvec, D.6760
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1244 0
	movq	-32(%rbp), %rcx	# hwvec, D.6760
	movq	-72(%rbp), %rax	# hwvec, D.6760
	movl	-324(%rbp), %edx	# sig, tmp414
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1245 0
	cmpl	$3, -324(%rbp)	#, sig
	jg	.L251	#,
	.loc 1 1251 0
	movq	-72(%rbp), %rsi	# hwvec, D.6760
	movq	-32(%rbp), %rax	# hwvec, D.6760
	leaq	-272(%rbp), %rcx	#, tmp415
	movl	-324(%rbp), %edx	# sig, tmp416
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
.L251:
	.loc 1 1254 0
	movq	-56(%rbp), %rcx	# hwvec, D.6760
	movq	-32(%rbp), %rax	# hwvec, D.6760
	movl	-336(%rbp), %edx	# mu, tmp417
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1255 0
	movq	-56(%rbp), %rdi	# hwvec, D.6760
	movq	-72(%rbp), %r9	# hwvec, D.6760
	movq	-32(%rbp), %r8	# hwvec, D.6760
	movq	-80(%rbp), %rcx	# hwvec, D.6760
	leaq	-176(%rbp), %rdx	#, tmp418
	movl	-324(%rbp), %esi	# sig, tmp419
	movl	-336(%rbp), %eax	# mu, tmp420
	movq	%rdi, (%rsp)	# D.6760,
	movl	%eax, %edi	# tmp420,
	call	side_link_3f_force	#
	.loc 1 1257 0
	movsd	-272(%rbp), %xmm0	# Lepage, D.6757
	movsd	-224(%rbp), %xmm1	# ThreeSt, D.6757
	divsd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -304(%rbp)	# D.6757, coeff
	.loc 1 1258 0
	movsd	-264(%rbp), %xmm0	# Lepage, D.6757
	movsd	-216(%rbp), %xmm1	# ThreeSt, D.6757
	divsd	%xmm1, %xmm0	# D.6757, D.6757
	movsd	%xmm0, -296(%rbp)	# D.6757, coeff
	.loc 1 1259 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L252	#
.L253:
	.loc 1 1263 0 discriminator 2
	movq	-24(%rbp), %rcx	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp421
	addq	%rax, %rax	# tmp421
	addq	%rdx, %rax	# D.6758, tmp421
	salq	$5, %rax	#, tmp422
	addq	%rcx, %rax	# D.6760, D.6760
	.loc 1 1261 0 discriminator 2
	movq	%rax, %rdi	# D.6760, D.6762
	movq	-304(%rbp), %rcx	# coeff, D.6757
	.loc 1 1262 0 discriminator 2
	movq	-56(%rbp), %rsi	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp423
	addq	%rax, %rax	# tmp423
	addq	%rdx, %rax	# D.6758, tmp423
	salq	$5, %rax	#, tmp424
	addq	%rsi, %rax	# D.6760, D.6760
	.loc 1 1261 0 discriminator 2
	movq	%rax, %rsi	# D.6760, D.6762
	movq	-24(%rbp), %r8	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp425
	addq	%rax, %rax	# tmp425
	addq	%rdx, %rax	# D.6758, tmp425
	salq	$5, %rax	#, tmp426
	addq	%r8, %rax	# D.6760, D.6760
	movq	%rdi, %rdx	# D.6762,
	movq	%rcx, -368(%rbp)	# D.6757, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	movq	%rax, %rdi	# D.6762,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1266 0 discriminator 2
	movq	-24(%rbp), %rcx	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp427
	addq	%rax, %rax	# tmp427
	addq	%rdx, %rax	# D.6758, tmp427
	salq	$5, %rax	#, tmp428
	addq	%rcx, %rax	# D.6760, D.6760
	.loc 1 1264 0 discriminator 2
	leaq	48(%rax), %rdi	#, D.6762
	movq	-296(%rbp), %rcx	# coeff, D.6757
	.loc 1 1265 0 discriminator 2
	movq	-56(%rbp), %rsi	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp429
	addq	%rax, %rax	# tmp429
	addq	%rdx, %rax	# D.6758, tmp429
	salq	$5, %rax	#, tmp430
	addq	%rsi, %rax	# D.6760, D.6760
	.loc 1 1264 0 discriminator 2
	leaq	48(%rax), %rsi	#, D.6762
	movq	-24(%rbp), %r8	# hwvec, D.6760
	movslq	%ebx, %rdx	# i, D.6758
	movq	%rdx, %rax	# D.6758, tmp431
	addq	%rax, %rax	# tmp431
	addq	%rdx, %rax	# D.6758, tmp431
	salq	$5, %rax	#, tmp432
	addq	%r8, %rax	# D.6760, D.6760
	addq	$48, %rax	#, D.6762
	movq	%rdi, %rdx	# D.6762,
	movq	%rcx, -368(%rbp)	# D.6757, %sfp
	movsd	-368(%rbp), %xmm0	# %sfp,
	movq	%rax, %rdi	# D.6762,
	call	scalar_mult_add_su3_vector	#
	.loc 1 1259 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L252:
	.loc 1 1259 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.87
	cmpl	%eax, %ebx	# sites_on_node.87, i
	jl	.L253	#,
	.loc 1 1271 0 is_stmt 1
	cmpl	$3, -336(%rbp)	#, mu
	jg	.L254	#,
	.loc 1 1272 0
	movq	-56(%rbp), %rcx	# hwvec, D.6760
	movq	-24(%rbp), %rax	# hwvec, D.6760
	movl	-336(%rbp), %edx	# mu, tmp433
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
.L254:
	.loc 1 1274 0
	movq	-56(%rbp), %rdi	# hwvec, D.6760
	movq	-80(%rbp), %r9	# hwvec, D.6760
	movq	-24(%rbp), %r8	# hwvec, D.6760
	movq	-312(%rbp), %rcx	# temp_x, tmp434
	leaq	-224(%rbp), %rdx	#, tmp435
	movl	-324(%rbp), %esi	# sig, tmp436
	movl	-336(%rbp), %eax	# mu, tmp437
	movq	%rdi, (%rsp)	# D.6760,
	movl	%eax, %edi	# tmp437,
	call	side_link_3f_force	#
	.loc 1 1278 0
	movl	-336(%rbp), %eax	# mu, tmp439
	cltq
	movl	-112(%rbp,%rax,4), %eax	# DirectLinks, D.6763
	testl	%eax, %eax	# D.6763
	jne	.L237	#,
	.loc 1 1279 0
	movl	-336(%rbp), %eax	# mu, tmp441
	cltq
	movl	$1, -112(%rbp,%rax,4)	#, DirectLinks
	.loc 1 1280 0
	cmpl	$3, -336(%rbp)	#, mu
	jle	.L255	#,
	.loc 1 1285 0
	movl	$7, %eax	#, tmp442
	subl	-336(%rbp), %eax	# mu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-80(%rbp), %rax	# hwvec, D.6760
	leaq	-288(%rbp), %rcx	#, tmp443
	movq	-312(%rbp), %rsi	# temp_x, tmp444
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
	.loc 1 1289 0
	movq	-48(%rbp), %rcx	# hwvec, D.6760
	movl	-336(%rbp), %edx	# mu, tmp445
	movq	-312(%rbp), %rax	# temp_x, tmp446
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# tmp446,
	call	u_shift_hw_fermion	#
	.loc 1 1292 0
	movl	$7, %eax	#, tmp447
	subl	-336(%rbp), %eax	# mu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-48(%rbp), %rsi	# hwvec, D.6760
	movq	-72(%rbp), %rax	# hwvec, D.6760
	leaq	-192(%rbp), %rcx	#, tmp448
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
	.loc 1 1294 0
	movl	$7, %eax	#, tmp449
	subl	-336(%rbp), %eax	# mu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-48(%rbp), %rcx	# hwvec, D.6760
	movq	-72(%rbp), %rax	# hwvec, D.6760
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# D.6760,
	call	u_shift_hw_fermion	#
	.loc 1 1296 0
	movl	$7, %eax	#, tmp450
	subl	-336(%rbp), %eax	# mu, D.6763
	movl	%eax, %edx	# D.6763, D.6763
	movq	-48(%rbp), %rax	# hwvec, D.6760
	leaq	-256(%rbp), %rcx	#, tmp451
	movq	-312(%rbp), %rsi	# temp_x, tmp452
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
	jmp	.L237	#
.L255:
	.loc 1 1300 0
	movq	-48(%rbp), %rcx	# hwvec, D.6760
	movl	-336(%rbp), %edx	# mu, tmp453
	movq	-312(%rbp), %rax	# temp_x, tmp454
	movq	%rcx, %rsi	# D.6760,
	movq	%rax, %rdi	# tmp454,
	call	u_shift_hw_fermion	#
	.loc 1 1303 0
	movq	-72(%rbp), %rsi	# hwvec, D.6760
	movq	-48(%rbp), %rax	# hwvec, D.6760
	leaq	-256(%rbp), %rcx	#, tmp455
	movl	-336(%rbp), %edx	# mu, tmp456
	movq	%rax, %rdi	# D.6760,
	call	add_3f_force_to_mom	#
.L237:
	.loc 1 1166 0 discriminator 2
	addl	$1, -336(%rbp)	#, mu
.L236:
	.loc 1 1166 0 is_stmt 0 discriminator 1
	cmpl	$7, -336(%rbp)	#, mu
	jle	.L256	#,
	.loc 1 1164 0 is_stmt 1
	addl	$1, -324(%rbp)	#, sig
.L235:
	.loc 1 1164 0 is_stmt 0 discriminator 1
	cmpl	$7, -324(%rbp)	#, sig
	jle	.L257	#,
	.loc 1 1311 0 is_stmt 1
	movq	-312(%rbp), %rax	# temp_x, tmp457
	movq	%rax, %rdi	# tmp457,
	call	free	#
	.loc 1 1312 0
	movl	$0, -336(%rbp)	#, mu
	jmp	.L258	#
.L259:
	.loc 1 1313 0 discriminator 2
	movl	-336(%rbp), %eax	# mu, tmp459
	cltq
	movq	-80(%rbp,%rax,8), %rax	# hwvec, D.6760
	movq	%rax, %rdi	# D.6760,
	call	free	#
	.loc 1 1312 0 discriminator 2
	addl	$1, -336(%rbp)	#, mu
.L258:
	.loc 1 1312 0 is_stmt 0 discriminator 1
	cmpl	$7, -336(%rbp)	#, mu
	jle	.L259	#,
	.loc 1 1320 0 is_stmt 1
	addq	$368, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	eo_fermion_force_3f, .-eo_fermion_force_3f
	.globl	compute_gen_staple
	.type	compute_gen_staple, @function
compute_gen_staple:
.LFB11:
	.loc 1 1341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$360, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -356(%rbp)	# staple, staple
	movl	%esi, -360(%rbp)	# mu, mu
	movl	%edx, -364(%rbp)	# nu, nu
	movl	%ecx, -368(%rbp)	# link, link
	movsd	%xmm0, -376(%rbp)	# coef, coef
	.loc 1 1361 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6764
	movl	-364(%rbp), %edx	# nu, tmp154
	movl	-368(%rbp), %eax	# link, tmp155
	movq	%rcx, %r8	# D.6764,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movl	%eax, %edi	# tmp155,
	call	start_gather	#
	movq	%rax, -344(%rbp)	# tmp156, mtag0
	.loc 1 1362 0
	movq	gen_pt+8(%rip), %rcx	# gen_pt, D.6764
	movq	lattice(%rip), %rsi	# lattice, lattice.88
	movl	-364(%rbp), %eax	# nu, tmp158
	movslq	%eax, %rdx	# tmp158, tmp157
	movq	%rdx, %rax	# tmp157, tmp159
	salq	$3, %rax	#, tmp159
	addq	%rdx, %rax	# tmp157, tmp159
	salq	$4, %rax	#, tmp160
	addq	$112, %rax	#, tmp161
	addq	%rsi, %rax	# lattice.88, D.6765
	movq	%rax, %rdx	# D.6765, D.6766
	movq	lattice(%rip), %rax	# lattice, lattice.89
	subq	%rax, %rdx	# lattice.90, D.6766
	movq	%rdx, %rax	# D.6766, D.6766
	movl	-360(%rbp), %edx	# mu, tmp162
	movq	%rcx, %r8	# D.6764,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movl	%eax, %edi	# D.6767,
	call	start_gather	#
	movq	%rax, -336(%rbp)	# tmp163, mtag1
	.loc 1 1364 0
	movq	-344(%rbp), %rax	# mtag0, tmp164
	movq	%rax, %rdi	# tmp164,
	call	wait_gather	#
	.loc 1 1365 0
	movq	-336(%rbp), %rax	# mtag1, tmp165
	movq	%rax, %rdi	# tmp165,
	call	wait_gather	#
	.loc 1 1367 0
	cmpl	$-1, -356(%rbp)	#, staple
	je	.L261	#,
	.loc 1 1368 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L262	#
.L263:
	.loc 1 1370 0 discriminator 2
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rdx	# i, D.6768
	salq	$3, %rdx	#, D.6768
	addq	%rdx, %rax	# D.6768, D.6764
	.loc 1 1369 0 discriminator 2
	movq	(%rax), %rcx	# *_32, D.6769
	movq	gen_pt(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rdx	# i, D.6768
	salq	$3, %rdx	#, D.6768
	addq	%rdx, %rax	# D.6768, D.6764
	movq	(%rax), %rax	# *_37, D.6769
	leaq	-320(%rbp), %rdx	#, tmp166
	movq	%rcx, %rsi	# D.6769,
	movq	%rax, %rdi	# D.6769,
	call	mult_su3_na	#
	.loc 1 1371 0 discriminator 2
	movl	-356(%rbp), %eax	# staple, tmp167
	cltq
	leaq	(%r12,%rax), %rsi	#, D.6765
	movl	-364(%rbp), %eax	# nu, tmp169
	movslq	%eax, %rdx	# tmp169, tmp168
	movq	%rdx, %rax	# tmp168, tmp170
	salq	$3, %rax	#, tmp170
	addq	%rdx, %rax	# tmp168, tmp170
	salq	$4, %rax	#, tmp171
	addq	$112, %rax	#, tmp172
	leaq	(%r12,%rax), %rcx	#, D.6765
	leaq	-320(%rbp), %rax	#, tmp173
	movq	%rsi, %rdx	# D.6765,
	movq	%rax, %rsi	# tmp173,
	movq	%rcx, %rdi	# D.6765,
	call	mult_su3_nn	#
	.loc 1 1368 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L262:
	.loc 1 1368 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.91
	cmpl	%eax, %ebx	# sites_on_node.91, i
	jl	.L263	#,
	jmp	.L264	#
.L261:
	.loc 1 1375 0 is_stmt 1
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L265	#
.L266:
	.loc 1 1377 0 discriminator 2
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rdx	# i, D.6768
	salq	$3, %rdx	#, D.6768
	addq	%rdx, %rax	# D.6768, D.6764
	.loc 1 1376 0 discriminator 2
	movq	(%rax), %rcx	# *_50, D.6769
	movq	gen_pt(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rdx	# i, D.6768
	salq	$3, %rdx	#, D.6768
	addq	%rdx, %rax	# D.6768, D.6764
	movq	(%rax), %rax	# *_55, D.6769
	leaq	-320(%rbp), %rdx	#, tmp174
	movq	%rcx, %rsi	# D.6769,
	movq	%rax, %rdi	# D.6769,
	call	mult_su3_na	#
	.loc 1 1378 0 discriminator 2
	movl	-364(%rbp), %eax	# nu, tmp176
	movslq	%eax, %rdx	# tmp176, tmp175
	movq	%rdx, %rax	# tmp175, tmp177
	salq	$3, %rax	#, tmp177
	addq	%rdx, %rax	# tmp175, tmp177
	salq	$4, %rax	#, tmp178
	addq	$112, %rax	#, tmp179
	leaq	(%r12,%rax), %rcx	#, D.6765
	leaq	-176(%rbp), %rdx	#, tmp180
	leaq	-320(%rbp), %rax	#, tmp181
	movq	%rax, %rsi	# tmp181,
	movq	%rcx, %rdi	# D.6765,
	call	mult_su3_nn	#
	.loc 1 1380 0 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.92
	leal	0(,%rbx,4), %edx	#, D.6767
	movl	-360(%rbp), %eax	# mu, tmp182
	addl	%edx, %eax	# D.6767, D.6767
	movslq	%eax, %rdx	# D.6767, D.6768
	movq	%rdx, %rax	# D.6768, tmp183
	salq	$3, %rax	#, tmp183
	addq	%rdx, %rax	# D.6768, tmp183
	salq	$4, %rax	#, tmp184
	leaq	(%rcx,%rax), %r13	#, fat1
	.loc 1 1384 0 discriminator 2
	movq	-376(%rbp), %rax	# coef, tmp185
	leaq	-176(%rbp), %rcx	#, tmp186
	movq	%r13, %rdx	# fat1,
	movq	%rax, -384(%rbp)	# tmp185, %sfp
	movsd	-384(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp186,
	movq	%r13, %rdi	# fat1,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 1375 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L265:
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.93
	cmpl	%eax, %ebx	# sites_on_node.93, i
	jl	.L266	#,
.L264:
	.loc 1 1388 0 is_stmt 1
	movq	-344(%rbp), %rax	# mtag0, tmp187
	movq	%rax, %rdi	# tmp187,
	call	cleanup_gather	#
	.loc 1 1389 0
	movq	-336(%rbp), %rax	# mtag1, tmp188
	movq	%rax, %rdi	# tmp188,
	call	cleanup_gather	#
	.loc 1 1392 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.94
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.6768,
	call	calloc	#
	movq	%rax, -328(%rbp)	# tmp189, tempmat
	.loc 1 1393 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6764
	movq	lattice(%rip), %rsi	# lattice, lattice.95
	movl	-364(%rbp), %eax	# nu, tmp191
	movslq	%eax, %rdx	# tmp191, tmp190
	movq	%rdx, %rax	# tmp190, tmp192
	salq	$3, %rax	#, tmp192
	addq	%rdx, %rax	# tmp190, tmp192
	salq	$4, %rax	#, tmp193
	addq	$112, %rax	#, tmp194
	addq	%rsi, %rax	# lattice.95, D.6765
	movq	%rax, %rdx	# D.6765, D.6766
	movq	lattice(%rip), %rax	# lattice, lattice.96
	subq	%rax, %rdx	# lattice.97, D.6766
	movq	%rdx, %rax	# D.6766, D.6766
	movl	-360(%rbp), %edx	# mu, tmp195
	movq	%rcx, %r8	# D.6764,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movl	%eax, %edi	# D.6767,
	call	start_gather	#
	movq	%rax, -344(%rbp)	# tmp196, mtag0
	.loc 1 1395 0
	movq	-344(%rbp), %rax	# mtag0, tmp197
	movq	%rax, %rdi	# tmp197,
	call	wait_gather	#
	.loc 1 1396 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L267	#
.L268:
	.loc 1 1397 0 discriminator 2
	movl	-368(%rbp), %eax	# link, tmp198
	cltq
	leaq	(%r12,%rax), %rsi	#, D.6765
	movl	-364(%rbp), %eax	# nu, tmp200
	movslq	%eax, %rdx	# tmp200, tmp199
	movq	%rdx, %rax	# tmp199, tmp201
	salq	$3, %rax	#, tmp201
	addq	%rdx, %rax	# tmp199, tmp201
	salq	$4, %rax	#, tmp202
	addq	$112, %rax	#, tmp203
	leaq	(%r12,%rax), %rcx	#, D.6765
	leaq	-320(%rbp), %rax	#, tmp204
	movq	%rax, %rdx	# tmp204,
	movq	%rcx, %rdi	# D.6765,
	call	mult_su3_an	#
	.loc 1 1398 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6768
	movq	%rdx, %rax	# D.6768, tmp205
	salq	$3, %rax	#, tmp205
	addq	%rdx, %rax	# D.6768, tmp205
	salq	$4, %rax	#, tmp206
	movq	%rax, %rdx	# tmp205, D.6768
	movq	-328(%rbp), %rax	# tempmat, tmp207
	addq	%rax, %rdx	# tmp207, D.6765
	movq	gen_pt(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rcx	# i, D.6768
	salq	$3, %rcx	#, D.6768
	addq	%rcx, %rax	# D.6768, D.6764
	movq	(%rax), %rcx	# *_91, D.6769
	leaq	-320(%rbp), %rax	#, tmp208
	movq	%rcx, %rsi	# D.6769,
	movq	%rax, %rdi	# tmp208,
	call	mult_su3_nn	#
	.loc 1 1396 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L267:
	.loc 1 1396 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.98
	cmpl	%eax, %ebx	# sites_on_node.98, i
	jl	.L268	#,
	.loc 1 1400 0 is_stmt 1
	movq	-344(%rbp), %rax	# mtag0, tmp209
	movq	%rax, %rdi	# tmp209,
	call	cleanup_gather	#
	.loc 1 1401 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6764
	movl	$7, %eax	#, tmp210
	subl	-364(%rbp), %eax	# nu, D.6767
	movl	%eax, %edx	# D.6767, D.6767
	movq	-328(%rbp), %rax	# tempmat, tmp211
	movq	%rcx, %r8	# D.6764,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	start_gather_from_temp	#
	movq	%rax, -344(%rbp)	# tmp212, mtag0
	.loc 1 1403 0
	movq	-344(%rbp), %rax	# mtag0, tmp213
	movq	%rax, %rdi	# tmp213,
	call	wait_gather	#
	.loc 1 1405 0
	cmpl	$-1, -356(%rbp)	#, staple
	je	.L269	#,
	.loc 1 1406 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L270	#
.L271:
	.loc 1 1407 0 discriminator 2
	movl	-356(%rbp), %eax	# staple, tmp214
	cltq
	leaq	(%r12,%rax), %rdx	#, D.6765
	movq	gen_pt(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rcx	# i, D.6768
	salq	$3, %rcx	#, D.6768
	addq	%rcx, %rax	# D.6768, D.6764
	movq	(%rax), %rax	# *_106, D.6769
	movl	-356(%rbp), %ecx	# staple, tmp215
	movslq	%ecx, %rcx	# tmp215, D.6770
	addq	%r12, %rcx	# s, D.6765
	movq	%rax, %rsi	# D.6769,
	movq	%rcx, %rdi	# D.6765,
	call	add_su3_matrix	#
	.loc 1 1410 0 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.99
	leal	0(,%rbx,4), %edx	#, D.6767
	movl	-360(%rbp), %eax	# mu, tmp216
	addl	%edx, %eax	# D.6767, D.6767
	movslq	%eax, %rdx	# D.6767, D.6768
	movq	%rdx, %rax	# D.6768, tmp217
	salq	$3, %rax	#, tmp217
	addq	%rdx, %rax	# D.6768, tmp217
	salq	$4, %rax	#, tmp218
	leaq	(%rcx,%rax), %r13	#, fat1
	.loc 1 1414 0 discriminator 2
	movl	-356(%rbp), %eax	# staple, tmp219
	cltq
	leaq	(%r12,%rax), %rcx	#, D.6765
	movq	-376(%rbp), %rax	# coef, tmp220
	movq	%r13, %rdx	# fat1,
	movq	%rax, -384(%rbp)	# tmp220, %sfp
	movsd	-384(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# D.6765,
	movq	%r13, %rdi	# fat1,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 1406 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L270:
	.loc 1 1406 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.100
	cmpl	%eax, %ebx	# sites_on_node.100, i
	jl	.L271	#,
	jmp	.L272	#
.L269:
	.loc 1 1420 0 is_stmt 1
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L273	#
.L274:
	.loc 1 1422 0 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.101
	leal	0(,%rbx,4), %edx	#, D.6767
	movl	-360(%rbp), %eax	# mu, tmp221
	addl	%edx, %eax	# D.6767, D.6767
	movslq	%eax, %rdx	# D.6767, D.6768
	movq	%rdx, %rax	# D.6768, tmp222
	salq	$3, %rax	#, tmp222
	addq	%rdx, %rax	# D.6768, tmp222
	salq	$4, %rax	#, tmp223
	leaq	(%rcx,%rax), %r13	#, fat1
	.loc 1 1427 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6764
	movslq	%ebx, %rdx	# i, D.6768
	salq	$3, %rdx	#, D.6768
	addq	%rdx, %rax	# D.6768, D.6764
	.loc 1 1426 0 discriminator 2
	movq	(%rax), %rcx	# *_132, D.6769
	movq	-376(%rbp), %rax	# coef, tmp224
	movq	%r13, %rdx	# fat1,
	movq	%rax, -384(%rbp)	# tmp224, %sfp
	movsd	-384(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# D.6769,
	movq	%r13, %rdi	# fat1,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 1420 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L273:
	.loc 1 1420 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.102
	cmpl	%eax, %ebx	# sites_on_node.102, i
	jl	.L274	#,
.L272:
	.loc 1 1432 0 is_stmt 1
	movq	-328(%rbp), %rax	# tempmat, tmp225
	movq	%rax, %rdi	# tmp225,
	call	free	#
	.loc 1 1433 0
	movq	-344(%rbp), %rax	# mtag0, tmp226
	movq	%rax, %rdi	# tmp226,
	call	cleanup_gather	#
	.loc 1 1434 0
	addq	$360, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	compute_gen_staple, .-compute_gen_staple
	.globl	u_shift_fermion
	.type	u_shift_fermion, @function
u_shift_fermion:
.LFB12:
	.loc 1 1441 0
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
	movq	%rdi, -40(%rbp)	# src, src
	movq	%rsi, -48(%rbp)	# dest, dest
	movl	%edx, -52(%rbp)	# dir, dir
	.loc 1 1447 0
	cmpl	$3, -52(%rbp)	#, dir
	jg	.L276	#,
	.loc 1 1449 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6771
	movl	-52(%rbp), %edx	# dir, tmp93
	movq	-40(%rbp), %rax	# src, tmp94
	movq	%rcx, %r8	# D.6771,
	movl	$3, %ecx	#,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp95, mtag
	.loc 1 1451 0
	movq	-32(%rbp), %rax	# mtag, tmp96
	movq	%rax, %rdi	# tmp96,
	call	wait_gather	#
	.loc 1 1452 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L277	#
.L278:
	.loc 1 1453 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6772
	.loc 1 1454 0 discriminator 2
	movq	%rdx, %rax	# D.6772, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# D.6772, tmp97
	salq	$4, %rax	#, tmp98
	movq	%rax, %rdx	# tmp97, D.6772
	.loc 1 1453 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp99
	leaq	(%rdx,%rax), %rsi	#, D.6773
	movq	gen_pt(%rip), %rax	# gen_pt, D.6771
	movslq	%ebx, %rdx	# i, D.6772
	salq	$3, %rdx	#, D.6772
	addq	%rdx, %rax	# D.6772, D.6771
	movq	(%rax), %rcx	# *_21, D.6774
	movl	-52(%rbp), %eax	# dir, tmp101
	movslq	%eax, %rdx	# tmp101, tmp100
	movq	%rdx, %rax	# tmp100, tmp102
	salq	$3, %rax	#, tmp102
	addq	%rdx, %rax	# tmp100, tmp102
	salq	$4, %rax	#, tmp103
	addq	$112, %rax	#, tmp104
	addq	%r12, %rax	# s, D.6775
	movq	%rsi, %rdx	# D.6773,
	movq	%rcx, %rsi	# D.6774,
	movq	%rax, %rdi	# D.6775,
	call	mult_su3_mat_vec	#
	.loc 1 1452 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L277:
	.loc 1 1452 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.103
	cmpl	%eax, %ebx	# sites_on_node.103, i
	jl	.L278	#,
	.loc 1 1455 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag, tmp105
	movq	%rax, %rdi	# tmp105,
	call	cleanup_gather	#
	jmp	.L275	#
.L276:
	.loc 1 1459 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.104
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6772,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp106, tmpvec
	.loc 1 1460 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L280	#
.L281:
	.loc 1 1461 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6772
	movq	%rdx, %rax	# D.6772, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# D.6772, tmp107
	salq	$4, %rax	#, tmp108
	movq	%rax, %rdx	# tmp107, D.6772
	movq	-24(%rbp), %rax	# tmpvec, tmp109
	leaq	(%rdx,%rax), %rsi	#, D.6773
	movslq	%ebx, %rdx	# i, D.6772
	movq	%rdx, %rax	# D.6772, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.6772, tmp110
	salq	$4, %rax	#, tmp111
	movq	%rax, %rdx	# tmp110, D.6772
	movq	-40(%rbp), %rax	# src, tmp112
	leaq	(%rdx,%rax), %rcx	#, D.6773
	movl	$7, %eax	#, tmp113
	subl	-52(%rbp), %eax	# dir, D.6776
	movslq	%eax, %rdx	# D.6776, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	salq	$3, %rax	#, tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	salq	$4, %rax	#, tmp116
	addq	$112, %rax	#, tmp117
	addq	%r12, %rax	# s, D.6775
	movq	%rsi, %rdx	# D.6773,
	movq	%rcx, %rsi	# D.6773,
	movq	%rax, %rdi	# D.6775,
	call	mult_adj_su3_mat_vec	#
	.loc 1 1460 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L280:
	.loc 1 1460 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.105
	cmpl	%eax, %ebx	# sites_on_node.105, i
	jl	.L281	#,
	.loc 1 1462 0 is_stmt 1
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6771
	movl	-52(%rbp), %edx	# dir, tmp118
	movq	-24(%rbp), %rax	# tmpvec, tmp119
	movq	%rcx, %r8	# D.6771,
	movl	$3, %ecx	#,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp120, mtag
	.loc 1 1464 0
	movq	-32(%rbp), %rax	# mtag, tmp121
	movq	%rax, %rdi	# tmp121,
	call	wait_gather	#
	.loc 1 1466 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L282	#
.L283:
	.loc 1 1467 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6772
	movq	%rdx, %rax	# D.6772, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# D.6772, tmp122
	salq	$4, %rax	#, tmp123
	movq	%rax, %rdx	# tmp122, D.6772
	movq	-48(%rbp), %rax	# dest, tmp124
	addq	%rax, %rdx	# tmp124, D.6773
	movq	gen_pt(%rip), %rax	# gen_pt, D.6771
	movslq	%ebx, %rcx	# i, D.6772
	salq	$3, %rcx	#, D.6772
	addq	%rcx, %rax	# D.6772, D.6771
	movq	(%rax), %rax	# *_53, D.6774
	movq	(%rax), %rcx	# MEM[(struct su3_vector *)_54], tmp125
	movq	%rcx, (%rdx)	# tmp125, *_49
	movq	8(%rax), %rcx	# MEM[(struct su3_vector *)_54], tmp126
	movq	%rcx, 8(%rdx)	# tmp126, *_49
	movq	16(%rax), %rcx	# MEM[(struct su3_vector *)_54], tmp127
	movq	%rcx, 16(%rdx)	# tmp127, *_49
	movq	24(%rax), %rcx	# MEM[(struct su3_vector *)_54], tmp128
	movq	%rcx, 24(%rdx)	# tmp128, *_49
	movq	32(%rax), %rcx	# MEM[(struct su3_vector *)_54], tmp129
	movq	%rcx, 32(%rdx)	# tmp129, *_49
	movq	40(%rax), %rax	# MEM[(struct su3_vector *)_54], tmp130
	movq	%rax, 40(%rdx)	# tmp130, *_49
	.loc 1 1466 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L282:
	.loc 1 1466 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.106
	cmpl	%eax, %ebx	# sites_on_node.106, i
	jl	.L283	#,
	.loc 1 1468 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag, tmp131
	movq	%rax, %rdi	# tmp131,
	call	cleanup_gather	#
	.loc 1 1469 0
	movq	-24(%rbp), %rax	# tmpvec, tmp132
	movq	%rax, %rdi	# tmp132,
	call	free	#
.L275:
	.loc 1 1471 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	u_shift_fermion, .-u_shift_fermion
	.globl	u_shift_hw_fermion
	.type	u_shift_hw_fermion, @function
u_shift_hw_fermion:
.LFB13:
	.loc 1 1476 0
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
	movq	%rdi, -40(%rbp)	# src, src
	movq	%rsi, -48(%rbp)	# dest, dest
	movl	%edx, -52(%rbp)	# dir, dir
	.loc 1 1482 0
	cmpl	$3, -52(%rbp)	#, dir
	jg	.L285	#,
	.loc 1 1484 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6777
	movl	-52(%rbp), %edx	# dir, tmp93
	movq	-40(%rbp), %rax	# src, tmp94
	movq	%rcx, %r8	# D.6777,
	movl	$3, %ecx	#,
	movl	$96, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp95, mtag
	.loc 1 1486 0
	movq	-32(%rbp), %rax	# mtag, tmp96
	movq	%rax, %rdi	# tmp96,
	call	wait_gather	#
	.loc 1 1487 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L286	#
.L287:
	.loc 1 1488 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6778
	.loc 1 1489 0 discriminator 2
	movq	%rdx, %rax	# D.6778, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# D.6778, tmp97
	salq	$5, %rax	#, tmp98
	movq	%rax, %rdx	# tmp97, D.6778
	.loc 1 1488 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp99
	leaq	(%rdx,%rax), %rsi	#, D.6779
	.loc 1 1489 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6777
	movslq	%ebx, %rdx	# i, D.6778
	salq	$3, %rdx	#, D.6778
	addq	%rdx, %rax	# D.6778, D.6777
	.loc 1 1488 0 discriminator 2
	movq	(%rax), %rcx	# *_21, D.6780
	movl	-52(%rbp), %eax	# dir, tmp101
	movslq	%eax, %rdx	# tmp101, tmp100
	movq	%rdx, %rax	# tmp100, tmp102
	salq	$3, %rax	#, tmp102
	addq	%rdx, %rax	# tmp100, tmp102
	salq	$4, %rax	#, tmp103
	addq	$112, %rax	#, tmp104
	addq	%r12, %rax	# s, D.6781
	movq	%rsi, %rdx	# D.6779,
	movq	%rcx, %rsi	# D.6780,
	movq	%rax, %rdi	# D.6781,
	call	mult_su3_mat_hwvec	#
	.loc 1 1487 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L286:
	.loc 1 1487 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.107
	cmpl	%eax, %ebx	# sites_on_node.107, i
	jl	.L287	#,
	.loc 1 1490 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag, tmp105
	movq	%rax, %rdi	# tmp105,
	call	cleanup_gather	#
	jmp	.L284	#
.L285:
	.loc 1 1495 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.108
	cltq
	.loc 1 1494 0
	movl	$96, %esi	#,
	movq	%rax, %rdi	# D.6778,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp106, tmpvec
	.loc 1 1496 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L289	#
.L290:
	.loc 1 1497 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6778
	movq	%rdx, %rax	# D.6778, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# D.6778, tmp107
	salq	$5, %rax	#, tmp108
	movq	%rax, %rdx	# tmp107, D.6778
	movq	-24(%rbp), %rax	# tmpvec, tmp109
	leaq	(%rdx,%rax), %rsi	#, D.6779
	movslq	%ebx, %rdx	# i, D.6778
	movq	%rdx, %rax	# D.6778, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.6778, tmp110
	salq	$5, %rax	#, tmp111
	movq	%rax, %rdx	# tmp110, D.6778
	movq	-40(%rbp), %rax	# src, tmp112
	leaq	(%rdx,%rax), %rcx	#, D.6779
	movl	$7, %eax	#, tmp113
	subl	-52(%rbp), %eax	# dir, D.6782
	movslq	%eax, %rdx	# D.6782, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	salq	$3, %rax	#, tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	salq	$4, %rax	#, tmp116
	addq	$112, %rax	#, tmp117
	addq	%r12, %rax	# s, D.6781
	movq	%rsi, %rdx	# D.6779,
	movq	%rcx, %rsi	# D.6779,
	movq	%rax, %rdi	# D.6781,
	call	mult_adj_su3_mat_hwvec	#
	.loc 1 1496 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L289:
	.loc 1 1496 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.109
	cmpl	%eax, %ebx	# sites_on_node.109, i
	jl	.L290	#,
	.loc 1 1498 0 is_stmt 1
	movq	gen_pt(%rip), %rcx	# gen_pt, D.6777
	movl	-52(%rbp), %edx	# dir, tmp118
	movq	-24(%rbp), %rax	# tmpvec, tmp119
	movq	%rcx, %r8	# D.6777,
	movl	$3, %ecx	#,
	movl	$96, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	start_gather_from_temp	#
	movq	%rax, -32(%rbp)	# tmp120, mtag
	.loc 1 1500 0
	movq	-32(%rbp), %rax	# mtag, tmp121
	movq	%rax, %rdi	# tmp121,
	call	wait_gather	#
	.loc 1 1502 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L291	#
.L292:
	.loc 1 1503 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6778
	movq	%rdx, %rax	# D.6778, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# D.6778, tmp122
	salq	$5, %rax	#, tmp123
	movq	%rax, %rdx	# tmp122, D.6778
	movq	-48(%rbp), %rax	# dest, tmp124
	addq	%rax, %rdx	# tmp124, D.6779
	movq	gen_pt(%rip), %rax	# gen_pt, D.6777
	movslq	%ebx, %rcx	# i, D.6778
	salq	$3, %rcx	#, D.6778
	addq	%rcx, %rax	# D.6778, D.6777
	movq	(%rax), %rax	# *_53, D.6780
	movq	(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp125
	movq	%rcx, (%rdx)	# tmp125, *_49
	movq	8(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp126
	movq	%rcx, 8(%rdx)	# tmp126, *_49
	movq	16(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp127
	movq	%rcx, 16(%rdx)	# tmp127, *_49
	movq	24(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp128
	movq	%rcx, 24(%rdx)	# tmp128, *_49
	movq	32(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp129
	movq	%rcx, 32(%rdx)	# tmp129, *_49
	movq	40(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp130
	movq	%rcx, 40(%rdx)	# tmp130, *_49
	movq	48(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp131
	movq	%rcx, 48(%rdx)	# tmp131, *_49
	movq	56(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp132
	movq	%rcx, 56(%rdx)	# tmp132, *_49
	movq	64(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp133
	movq	%rcx, 64(%rdx)	# tmp133, *_49
	movq	72(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp134
	movq	%rcx, 72(%rdx)	# tmp134, *_49
	movq	80(%rax), %rcx	# MEM[(struct half_wilson_vector *)_54], tmp135
	movq	%rcx, 80(%rdx)	# tmp135, *_49
	movq	88(%rax), %rax	# MEM[(struct half_wilson_vector *)_54], tmp136
	movq	%rax, 88(%rdx)	# tmp136, *_49
	.loc 1 1502 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L291:
	.loc 1 1502 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.110
	cmpl	%eax, %ebx	# sites_on_node.110, i
	jl	.L292	#,
	.loc 1 1504 0 is_stmt 1
	movq	-32(%rbp), %rax	# mtag, tmp137
	movq	%rax, %rdi	# tmp137,
	call	cleanup_gather	#
	.loc 1 1505 0
	movq	-24(%rbp), %rax	# tmpvec, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free	#
.L284:
	.loc 1 1507 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	u_shift_hw_fermion, .-u_shift_hw_fermion
	.globl	add_force_to_mom
	.type	add_force_to_mom, @function
add_force_to_mom:
.LFB14:
	.loc 1 1511 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -328(%rbp)	# back, back
	movq	%rsi, -336(%rbp)	# forw, forw
	movl	%edx, -340(%rbp)	# dir, dir
	movsd	%xmm0, -352(%rbp)	# coeff, coeff
	.loc 1 1518 0
	cmpl	$3, -340(%rbp)	#, dir
	jle	.L294	#,
	.loc 1 1520 0
	movl	$7, %eax	#, tmp75
	subl	-340(%rbp), %eax	# dir, tmp74
	movl	%eax, -340(%rbp)	# tmp74, dir
	.loc 1 1521 0
	movsd	-352(%rbp), %xmm1	# coeff, tmp77
	movsd	.LC4(%rip), %xmm0	#, tmp78
	xorpd	%xmm1, %xmm0	# tmp77, tmp76
	movsd	%xmm0, -352(%rbp)	# tmp76, coeff
.L294:
	.loc 1 1523 0
	movl	$0, %r12d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L295	#
.L298:
	.loc 1 1524 0
	movzbl	8(%rbx), %eax	# s_3->parity, D.6783
	cmpb	$1, %al	#, D.6783
	jne	.L296	#,
	.loc 1 1525 0
	movsd	-352(%rbp), %xmm1	# coeff, tmp79
	movsd	.LC4(%rip), %xmm0	#, tmp80
	xorpd	%xmm0, %xmm1	# tmp80, tmp_coeff
	movsd	%xmm1, -360(%rbp)	# tmp_coeff, %sfp
	movq	-360(%rbp), %r13	# %sfp, tmp_coeff
	jmp	.L297	#
.L296:
	.loc 1 1527 0
	movq	-352(%rbp), %r13	# coeff, tmp_coeff
.L297:
	.loc 1 1528 0
	movl	-340(%rbp), %eax	# dir, tmp82
	movslq	%eax, %rdx	# tmp82, tmp81
	movq	%rdx, %rax	# tmp81, tmp83
	salq	$2, %rax	#, tmp83
	addq	%rdx, %rax	# tmp81, tmp83
	salq	$4, %rax	#, tmp84
	addq	$688, %rax	#, tmp85
	leaq	(%rbx,%rax), %rdx	#, D.6784
	leaq	-176(%rbp), %rax	#, tmp86
	movq	%rax, %rsi	# tmp86,
	movq	%rdx, %rdi	# D.6784,
	call	uncompress_anti_hermitian	#
	.loc 1 1529 0
	movslq	%r12d, %rdx	# i, D.6785
	movq	%rdx, %rax	# D.6785, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# D.6785, tmp87
	salq	$4, %rax	#, tmp88
	movq	%rax, %rdx	# tmp87, D.6785
	movq	-336(%rbp), %rax	# forw, tmp89
	leaq	(%rdx,%rax), %rsi	#, D.6786
	movslq	%r12d, %rdx	# i, D.6785
	movq	%rdx, %rax	# D.6785, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# D.6785, tmp90
	salq	$4, %rax	#, tmp91
	movq	%rax, %rdx	# tmp90, D.6785
	movq	-328(%rbp), %rax	# back, tmp92
	leaq	(%rdx,%rax), %rcx	#, D.6786
	leaq	-320(%rbp), %rax	#, tmp93
	movq	%rax, %rdx	# tmp93,
	movq	%rcx, %rdi	# D.6786,
	call	su3_projector	#
	.loc 1 1530 0
	leaq	-176(%rbp), %rdx	#, tmp94
	leaq	-320(%rbp), %rcx	#, tmp95
	leaq	-176(%rbp), %rax	#, tmp96
	movq	%r13, -360(%rbp)	# tmp_coeff, %sfp
	movsd	-360(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 1531 0
	movl	-340(%rbp), %eax	# dir, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$4, %rax	#, tmp100
	addq	$688, %rax	#, tmp101
	leaq	(%rbx,%rax), %rdx	#, D.6784
	leaq	-176(%rbp), %rax	#, tmp102
	movq	%rdx, %rsi	# D.6784,
	movq	%rax, %rdi	# tmp102,
	call	make_anti_hermitian	#
	.loc 1 1523 0
	addl	$1, %r12d	#, i
	addq	$2048, %rbx	#, s
.L295:
	.loc 1 1523 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.111
	cmpl	%eax, %r12d	# sites_on_node.111, i
	jl	.L298	#,
	.loc 1 1533 0 is_stmt 1
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	add_force_to_mom, .-add_force_to_mom
	.globl	add_3f_force_to_mom
	.type	add_3f_force_to_mom, @function
add_3f_force_to_mom:
.LFB15:
	.loc 1 1538 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$352, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -328(%rbp)	# back, back
	movq	%rsi, -336(%rbp)	# forw, forw
	movl	%edx, -340(%rbp)	# dir, dir
	movq	%rcx, -352(%rbp)	# coeff, coeff
	.loc 1 1545 0
	cmpl	$3, -340(%rbp)	#, dir
	jle	.L300	#,
	.loc 1 1547 0
	movl	$7, %eax	#, tmp99
	subl	-340(%rbp), %eax	# dir, tmp98
	movl	%eax, -340(%rbp)	# tmp98, dir
	.loc 1 1548 0
	movq	-352(%rbp), %rax	# coeff, tmp100
	movsd	(%rax), %xmm1	# *coeff_6(D), D.6787
	movsd	.LC4(%rip), %xmm0	#, tmp101
	xorpd	%xmm1, %xmm0	# D.6787, D.6787
	movq	-352(%rbp), %rax	# coeff, tmp102
	movsd	%xmm0, (%rax)	# D.6787, *coeff_6(D)
	.loc 1 1549 0
	movq	-352(%rbp), %rax	# coeff, tmp103
	addq	$8, %rax	#, D.6788
	movq	-352(%rbp), %rdx	# coeff, tmp104
	addq	$8, %rdx	#, D.6788
	movsd	(%rdx), %xmm1	# *_10, D.6787
	movsd	.LC4(%rip), %xmm0	#, tmp105
	xorpd	%xmm1, %xmm0	# D.6787, D.6787
	movsd	%xmm0, (%rax)	# D.6787, *_9
.L300:
	.loc 1 1551 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L301	#
.L304:
	.loc 1 1552 0
	movzbl	8(%r12), %eax	# s_2->parity, D.6789
	cmpb	$1, %al	#, D.6789
	jne	.L302	#,
	.loc 1 1554 0
	movq	-352(%rbp), %rax	# coeff, tmp106
	movsd	(%rax), %xmm1	# *coeff_6(D), D.6787
	movsd	.LC4(%rip), %xmm0	#, tmp107
	xorpd	%xmm1, %xmm0	# D.6787, D.6787
	movsd	%xmm0, -320(%rbp)	# D.6787, tmp_coeff
	.loc 1 1555 0
	movq	-352(%rbp), %rax	# coeff, tmp108
	addq	$8, %rax	#, D.6788
	movsd	(%rax), %xmm1	# *_19, D.6787
	movsd	.LC4(%rip), %xmm0	#, tmp109
	xorpd	%xmm1, %xmm0	# D.6787, D.6787
	movsd	%xmm0, -312(%rbp)	# D.6787, tmp_coeff
	jmp	.L303	#
.L302:
	.loc 1 1559 0
	movq	-352(%rbp), %rax	# coeff, tmp110
	movq	(%rax), %rax	# *coeff_6(D), D.6787
	movq	%rax, -320(%rbp)	# D.6787, tmp_coeff
	.loc 1 1560 0
	movq	-352(%rbp), %rax	# coeff, tmp111
	movq	8(%rax), %rax	# MEM[(double *)coeff_6(D) + 8B], D.6787
	movq	%rax, -312(%rbp)	# D.6787, tmp_coeff
.L303:
	.loc 1 1562 0
	movl	-340(%rbp), %eax	# dir, tmp113
	movslq	%eax, %rdx	# tmp113, tmp112
	movq	%rdx, %rax	# tmp112, tmp114
	salq	$2, %rax	#, tmp114
	addq	%rdx, %rax	# tmp112, tmp114
	salq	$4, %rax	#, tmp115
	addq	$688, %rax	#, tmp116
	leaq	(%r12,%rax), %rdx	#, D.6790
	leaq	-160(%rbp), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	movq	%rdx, %rdi	# D.6790,
	call	uncompress_anti_hermitian	#
	.loc 1 1563 0
	movslq	%ebx, %rdx	# i, D.6791
	movq	%rdx, %rax	# D.6791, tmp118
	addq	%rax, %rax	# tmp118
	addq	%rdx, %rax	# D.6791, tmp118
	salq	$5, %rax	#, tmp119
	movq	%rax, %rdx	# tmp118, D.6791
	movq	-336(%rbp), %rax	# forw, tmp120
	addq	%rdx, %rax	# D.6791, D.6792
	movq	%rax, %rcx	# D.6792, D.6793
	movslq	%ebx, %rdx	# i, D.6791
	movq	%rdx, %rax	# D.6791, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# D.6791, tmp121
	salq	$5, %rax	#, tmp122
	movq	%rax, %rdx	# tmp121, D.6791
	movq	-328(%rbp), %rax	# back, tmp123
	addq	%rdx, %rax	# D.6791, D.6792
	leaq	-304(%rbp), %rdx	#, tmp124
	movq	%rcx, %rsi	# D.6793,
	movq	%rax, %rdi	# D.6793,
	call	su3_projector	#
	.loc 1 1564 0
	movq	-320(%rbp), %rax	# tmp_coeff, D.6787
	leaq	-160(%rbp), %rdx	#, tmp125
	leaq	-304(%rbp), %rsi	#, tmp126
	leaq	-160(%rbp), %rcx	#, tmp127
	movq	%rax, -360(%rbp)	# D.6787, %sfp
	movsd	-360(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp127,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 1565 0
	movslq	%ebx, %rdx	# i, D.6791
	movq	%rdx, %rax	# D.6791, tmp128
	addq	%rax, %rax	# tmp128
	addq	%rdx, %rax	# D.6791, tmp128
	salq	$5, %rax	#, tmp129
	movq	%rax, %rdx	# tmp128, D.6791
	movq	-336(%rbp), %rax	# forw, tmp130
	addq	%rdx, %rax	# D.6791, D.6792
	leaq	48(%rax), %rsi	#, D.6793
	movslq	%ebx, %rdx	# i, D.6791
	movq	%rdx, %rax	# D.6791, tmp131
	addq	%rax, %rax	# tmp131
	addq	%rdx, %rax	# D.6791, tmp131
	salq	$5, %rax	#, tmp132
	movq	%rax, %rdx	# tmp131, D.6791
	movq	-328(%rbp), %rax	# back, tmp133
	addq	%rdx, %rax	# D.6791, D.6792
	leaq	48(%rax), %rcx	#, D.6793
	leaq	-304(%rbp), %rax	#, tmp134
	movq	%rax, %rdx	# tmp134,
	movq	%rcx, %rdi	# D.6793,
	call	su3_projector	#
	.loc 1 1566 0
	movq	-312(%rbp), %rax	# tmp_coeff, D.6787
	leaq	-160(%rbp), %rdx	#, tmp135
	leaq	-304(%rbp), %rsi	#, tmp136
	leaq	-160(%rbp), %rcx	#, tmp137
	movq	%rax, -360(%rbp)	# D.6787, %sfp
	movsd	-360(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp137,
	call	scalar_mult_add_su3_matrix	#
	.loc 1 1567 0
	movl	-340(%rbp), %eax	# dir, tmp139
	movslq	%eax, %rdx	# tmp139, tmp138
	movq	%rdx, %rax	# tmp138, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# tmp138, tmp140
	salq	$4, %rax	#, tmp141
	addq	$688, %rax	#, tmp142
	leaq	(%r12,%rax), %rdx	#, D.6790
	leaq	-160(%rbp), %rax	#, tmp143
	movq	%rdx, %rsi	# D.6790,
	movq	%rax, %rdi	# tmp143,
	call	make_anti_hermitian	#
	.loc 1 1551 0
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L301:
	.loc 1 1551 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.112
	cmpl	%eax, %ebx	# sites_on_node.112, i
	jl	.L304	#,
	.loc 1 1569 0 is_stmt 1
	addq	$352, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	add_3f_force_to_mom, .-add_3f_force_to_mom
	.globl	side_link_force
	.type	side_link_force, @function
side_link_force:
.LFB16:
	.loc 1 1581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -4(%rbp)	# mu, mu
	movl	%esi, -8(%rbp)	# nu, nu
	movsd	%xmm0, -16(%rbp)	# coeff, coeff
	movq	%rdx, -24(%rbp)	# Path, Path
	movq	%rcx, -32(%rbp)	# Path_nu, Path_nu
	movq	%r8, -40(%rbp)	# Path_mu, Path_mu
	movq	%r9, -48(%rbp)	# Path_numu, Path_numu
	.loc 1 1582 0
	cmpl	$3, -4(%rbp)	#, mu
	jg	.L306	#,
	.loc 1 1589 0
	cmpl	$3, -8(%rbp)	#, nu
	jg	.L307	#,
	.loc 1 1590 0
	movq	-16(%rbp), %rax	# coeff, tmp63
	movl	-4(%rbp), %edx	# mu, tmp64
	movq	-24(%rbp), %rsi	# Path, tmp65
	movq	-48(%rbp), %rcx	# Path_numu, tmp66
	movq	%rax, -56(%rbp)	# tmp63, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp66,
	call	add_force_to_mom	#
	jmp	.L305	#
.L307:
	.loc 1 1592 0
	movsd	-16(%rbp), %xmm1	# coeff, tmp67
	movsd	.LC4(%rip), %xmm0	#, tmp68
	xorpd	%xmm1, %xmm0	# tmp67, D.6794
	movl	$7, %eax	#, tmp69
	subl	-4(%rbp), %eax	# mu, D.6795
	movl	%eax, %edx	# D.6795, D.6795
	movq	-48(%rbp), %rcx	# Path_numu, tmp70
	movq	-24(%rbp), %rax	# Path, tmp71
	movq	%rcx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	add_force_to_mom	#
	jmp	.L305	#
.L306:
	.loc 1 1601 0
	cmpl	$3, -8(%rbp)	#, nu
	jg	.L310	#,
	.loc 1 1602 0
	movsd	-16(%rbp), %xmm1	# coeff, tmp72
	movsd	.LC4(%rip), %xmm0	#, tmp73
	xorpd	%xmm1, %xmm0	# tmp72, D.6794
	movl	-4(%rbp), %edx	# mu, tmp74
	movq	-40(%rbp), %rcx	# Path_mu, tmp75
	movq	-32(%rbp), %rax	# Path_nu, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	add_force_to_mom	#
	jmp	.L305	#
.L310:
	.loc 1 1604 0
	movl	$7, %eax	#, tmp77
	subl	-4(%rbp), %eax	# mu, D.6795
	movl	%eax, %edx	# D.6795, D.6795
	movq	-16(%rbp), %rax	# coeff, tmp78
	movq	-32(%rbp), %rsi	# Path_nu, tmp79
	movq	-40(%rbp), %rcx	# Path_mu, tmp80
	movq	%rax, -56(%rbp)	# tmp78, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp80,
	call	add_force_to_mom	#
.L305:
	.loc 1 1606 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	side_link_force, .-side_link_force
	.globl	side_link_3f_force
	.type	side_link_3f_force, @function
side_link_3f_force:
.LFB17:
	.loc 1 1614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# mu, mu
	movl	%esi, -24(%rbp)	# nu, nu
	movq	%rdx, -32(%rbp)	# coeff, coeff
	movq	%rcx, -40(%rbp)	# Path, Path
	movq	%r8, -48(%rbp)	# Path_nu, Path_nu
	movq	%r9, -56(%rbp)	# Path_mu, Path_mu
	.loc 1 1617 0
	movq	-32(%rbp), %rax	# coeff, tmp66
	movsd	(%rax), %xmm1	# *coeff_1(D), D.6796
	movsd	.LC4(%rip), %xmm0	#, tmp67
	xorpd	%xmm1, %xmm0	# D.6796, D.6796
	movsd	%xmm0, -16(%rbp)	# D.6796, m_coeff
	.loc 1 1618 0
	movq	-32(%rbp), %rax	# coeff, tmp68
	addq	$8, %rax	#, D.6797
	movsd	(%rax), %xmm1	# *_4, D.6796
	movsd	.LC4(%rip), %xmm0	#, tmp69
	xorpd	%xmm1, %xmm0	# D.6796, D.6796
	movsd	%xmm0, -8(%rbp)	# D.6796, m_coeff
	.loc 1 1620 0
	cmpl	$3, -20(%rbp)	#, mu
	jg	.L312	#,
	.loc 1 1627 0
	cmpl	$3, -24(%rbp)	#, nu
	jg	.L313	#,
	.loc 1 1628 0
	movq	-32(%rbp), %rcx	# coeff, tmp70
	movl	-20(%rbp), %edx	# mu, tmp71
	movq	-40(%rbp), %rax	# Path, tmp72
	movq	%rax, %rsi	# tmp72,
	movq	16(%rbp), %rdi	# Path_numu,
	call	add_3f_force_to_mom	#
	jmp	.L311	#
.L313:
	.loc 1 1630 0
	movl	$7, %eax	#, tmp73
	subl	-20(%rbp), %eax	# mu, D.6798
	movl	%eax, %edx	# D.6798, D.6798
	leaq	-16(%rbp), %rcx	#, tmp74
	movq	-40(%rbp), %rax	# Path, tmp75
	movq	16(%rbp), %rsi	# Path_numu,
	movq	%rax, %rdi	# tmp75,
	call	add_3f_force_to_mom	#
	jmp	.L311	#
.L312:
	.loc 1 1639 0
	cmpl	$3, -24(%rbp)	#, nu
	jg	.L316	#,
	.loc 1 1640 0
	leaq	-16(%rbp), %rcx	#, tmp76
	movl	-20(%rbp), %edx	# mu, tmp77
	movq	-56(%rbp), %rsi	# Path_mu, tmp78
	movq	-48(%rbp), %rax	# Path_nu, tmp79
	movq	%rax, %rdi	# tmp79,
	call	add_3f_force_to_mom	#
	jmp	.L311	#
.L316:
	.loc 1 1642 0
	movl	$7, %eax	#, tmp80
	subl	-20(%rbp), %eax	# mu, D.6798
	movl	%eax, %edx	# D.6798, D.6798
	movq	-32(%rbp), %rcx	# coeff, tmp81
	movq	-48(%rbp), %rsi	# Path_nu, tmp82
	movq	-56(%rbp), %rax	# Path_mu, tmp83
	movq	%rax, %rdi	# tmp83,
	call	add_3f_force_to_mom	#
.L311:
	.loc 1 1644 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	side_link_3f_force, .-side_link_3f_force
	.section	.rodata
	.align 16
.LC4:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC8:
	.long	0
	.long	1075314688
	.align 8
.LC9:
	.long	0
	.long	1074790400
	.text
.Letext0:
	.file 2 "random.h"
	.file 3 "./macros.h"
	.file 4 "./complex.h"
	.file 5 "./su3.h"
	.file 6 "./lattice.h"
	.file 7 "comdefs.h"
	.file 8 "./quark_action.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1245
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF145
	.byte	0x1
	.long	.LASF146
	.long	.LASF147
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
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
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x5
	.byte	0x58
	.byte	0x2
	.byte	0x6
	.long	0x121
	.uleb128 0x6
	.string	"r0"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"r1"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x6
	.string	"r2"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x6
	.string	"r3"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x6
	.string	"r4"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"r5"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x6
	.string	"r6"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0xa
	.long	0x94
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x2
	.byte	0xb
	.long	0x9b
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.byte	0x2a
	.long	0x57
	.uleb128 0x9
	.long	0x94
	.long	0x147
	.uleb128 0xa
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.byte	0x49
	.long	0x16e
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.byte	0x4a
	.long	0x94
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.byte	0x4b
	.long	0x94
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x4c
	.long	0x14d
	.uleb128 0x5
	.byte	0x90
	.byte	0x5
	.byte	0xe
	.long	0x18c
	.uleb128 0x6
	.string	"e"
	.byte	0x5
	.byte	0xe
	.long	0x18c
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x16e
	.long	0x1a2
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xe
	.long	0x179
	.uleb128 0x5
	.byte	0x30
	.byte	0x5
	.byte	0xf
	.long	0x1c0
	.uleb128 0x6
	.string	"c"
	.byte	0x5
	.byte	0xf
	.long	0x1c0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x16e
	.long	0x1d0
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xf
	.long	0x1ad
	.uleb128 0x5
	.byte	0x50
	.byte	0x5
	.byte	0x10
	.long	0x238
	.uleb128 0x6
	.string	"m01"
	.byte	0x5
	.byte	0x11
	.long	0x16e
	.byte	0
	.uleb128 0x6
	.string	"m02"
	.byte	0x5
	.byte	0x11
	.long	0x16e
	.byte	0x10
	.uleb128 0x6
	.string	"m12"
	.byte	0x5
	.byte	0x11
	.long	0x16e
	.byte	0x20
	.uleb128 0x7
	.long	.LASF24
	.byte	0x5
	.byte	0x11
	.long	0x94
	.byte	0x30
	.uleb128 0x7
	.long	.LASF25
	.byte	0x5
	.byte	0x11
	.long	0x94
	.byte	0x38
	.uleb128 0x7
	.long	.LASF26
	.byte	0x5
	.byte	0x11
	.long	0x94
	.byte	0x40
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x11
	.long	0x94
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.byte	0x11
	.long	0x1db
	.uleb128 0x9
	.long	0x1d0
	.long	0x253
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x60
	.byte	0x5
	.byte	0x2f
	.long	0x266
	.uleb128 0x6
	.string	"h"
	.byte	0x5
	.byte	0x2f
	.long	0x266
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x1d0
	.long	0x276
	.uleb128 0xa
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0x2f
	.long	0x253
	.uleb128 0xb
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x398
	.uleb128 0x6
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x6
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x6
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x7
	.long	.LASF30
	.byte	0x6
	.byte	0x24
	.long	0x72
	.byte	0x8
	.uleb128 0x7
	.long	.LASF31
	.byte	0x6
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.byte	0x29
	.long	0x121
	.byte	0x10
	.uleb128 0x7
	.long	.LASF33
	.byte	0x6
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x7
	.long	.LASF34
	.byte	0x6
	.byte	0x32
	.long	0x398
	.byte	0x70
	.uleb128 0xc
	.string	"mom"
	.byte	0x6
	.byte	0x3e
	.long	0x3a8
	.value	0x2b0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x6
	.byte	0x42
	.long	0x3b8
	.value	0x3f0
	.uleb128 0xc
	.string	"phi"
	.byte	0x6
	.byte	0x45
	.long	0x1d0
	.value	0x410
	.uleb128 0xd
	.long	.LASF36
	.byte	0x6
	.byte	0x46
	.long	0x1d0
	.value	0x440
	.uleb128 0xd
	.long	.LASF37
	.byte	0x6
	.byte	0x47
	.long	0x1d0
	.value	0x470
	.uleb128 0xc
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1d0
	.value	0x4a0
	.uleb128 0xc
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1d0
	.value	0x4d0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x6
	.byte	0x4a
	.long	0x1d0
	.value	0x500
	.uleb128 0xd
	.long	.LASF39
	.byte	0x6
	.byte	0x5d
	.long	0x243
	.value	0x530
	.uleb128 0xd
	.long	.LASF40
	.byte	0x6
	.byte	0x5f
	.long	0x243
	.value	0x5f0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.byte	0x60
	.long	0x1d0
	.value	0x6b0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x1a2
	.value	0x6e0
	.uleb128 0xd
	.long	.LASF43
	.byte	0x6
	.byte	0x62
	.long	0x1a2
	.value	0x770
	.byte	0
	.uleb128 0x9
	.long	0x1a2
	.long	0x3a8
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x238
	.long	0x3b8
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x94
	.long	0x3c8
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x63
	.long	0x281
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.long	0x40c
	.uleb128 0x7
	.long	.LASF45
	.byte	0x7
	.byte	0x37
	.long	0x57
	.byte	0
	.uleb128 0x7
	.long	.LASF46
	.byte	0x7
	.byte	0x39
	.long	0x57
	.byte	0x4
	.uleb128 0x7
	.long	.LASF47
	.byte	0x7
	.byte	0x3b
	.long	0x6c
	.byte	0x8
	.uleb128 0x7
	.long	.LASF48
	.byte	0x7
	.byte	0x40
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x7
	.byte	0x42
	.long	0x3d3
	.uleb128 0x5
	.byte	0x30
	.byte	0x1
	.byte	0x53
	.long	0x450
	.uleb128 0x6
	.string	"dir"
	.byte	0x1
	.byte	0x54
	.long	0x450
	.byte	0
	.uleb128 0x7
	.long	.LASF50
	.byte	0x1
	.byte	0x55
	.long	0x57
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF51
	.byte	0x1
	.byte	0x56
	.long	0x94
	.byte	0x20
	.uleb128 0x7
	.long	.LASF52
	.byte	0x1
	.byte	0x57
	.long	0x94
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	0x57
	.long	0x460
	.uleb128 0xa
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.byte	0x60
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c2
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x62
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x62
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x64
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.byte	0x73
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF76
	.byte	0x1
	.byte	0x82
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x575
	.uleb128 0x13
	.long	.LASF54
	.byte	0x1
	.byte	0x82
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x13
	.long	.LASF50
	.byte	0x1
	.byte	0x82
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x82
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x84
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.string	"pp"
	.byte	0x1
	.byte	0x84
	.long	0x575
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"ir"
	.byte	0x1
	.byte	0x84
	.long	0x585
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x85
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0x85
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xf
	.string	"vec"
	.byte	0x1
	.byte	0x86
	.long	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x87
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x9
	.long	0x57
	.long	0x585
	.uleb128 0xa
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x57
	.long	0x595
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF66
	.byte	0x1
	.byte	0xcf
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x686
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0xcf
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0xcf
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0xcf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x15
	.string	"dir"
	.byte	0x1
	.byte	0xd0
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.long	.LASF50
	.byte	0x1
	.byte	0xd0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xd1
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0xd2
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0xd3
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0xd4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0xd5
	.long	0x692
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0xd5
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0xd5
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1
	.byte	0xd6
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.byte	0xd7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0xd7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x3c8
	.uleb128 0x4
	.byte	0x8
	.long	0x40c
	.uleb128 0x4
	.byte	0x8
	.long	0x1d0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.value	0x122
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x799
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.value	0x122
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0x122
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.value	0x122
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.value	0x123
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.long	.LASF50
	.byte	0x1
	.value	0x123
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x124
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x125
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x1
	.value	0x126
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.value	0x127
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x1
	.value	0x128
	.long	0x799
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.value	0x128
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.value	0x128
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x129
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x12a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x12a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x276
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.value	0x1ab
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x813
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x1ac
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x1ad
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.value	0x1ae
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.string	"dir"
	.byte	0x1
	.value	0x1ae
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x1
	.value	0x1af
	.long	0x585
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.value	0x1b0
	.long	0x813
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x1a2
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.value	0x1ed
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8aa
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x1ee
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x1ef
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"dir"
	.byte	0x1
	.value	0x1f0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.value	0x1f1
	.long	0x813
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x19
	.string	"nu"
	.byte	0x1
	.value	0x1f3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.string	"rho"
	.byte	0x1
	.value	0x1f3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"sig"
	.byte	0x1
	.value	0x1f3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.value	0x1f4
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.value	0x262
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x906
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.value	0x262
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.value	0x262
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF50
	.byte	0x1
	.value	0x262
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x263
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x388
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5b
	.uleb128 0x17
	.string	"eps"
	.byte	0x1
	.value	0x388
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x18
	.long	.LASF81
	.byte	0x1
	.value	0x388
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x388
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x38d
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x38e
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"mu"
	.byte	0x1
	.value	0x38f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x19
	.string	"nu"
	.byte	0x1
	.value	0x38f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x19
	.string	"rho"
	.byte	0x1
	.value	0x38f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x19
	.string	"sig"
	.byte	0x1
	.value	0x38f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.value	0x390
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.value	0x391
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF51
	.byte	0x1
	.value	0x391
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.value	0x392
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x392
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.value	0x392
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.value	0x392
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.value	0x392
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x392
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.long	.LASF39
	.byte	0x1
	.value	0x393
	.long	0xa5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.value	0x394
	.long	0x692
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x9
	.long	0x692
	.long	0xa6b
	.uleb128 0xa
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x451
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc30
	.uleb128 0x17
	.string	"eps"
	.byte	0x1
	.value	0x451
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.value	0x451
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.value	0x451
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x452
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x452
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x458
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x459
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"mu"
	.byte	0x1
	.value	0x45a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x19
	.string	"nu"
	.byte	0x1
	.value	0x45a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x19
	.string	"rho"
	.byte	0x1
	.value	0x45a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x19
	.string	"sig"
	.byte	0x1
	.value	0x45a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.value	0x45b
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF51
	.byte	0x1
	.value	0x45c
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.value	0x45c
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.value	0x45d
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x45d
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.value	0x45d
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.value	0x45d
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.value	0x45d
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x45d
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.value	0x45e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1a
	.long	.LASF98
	.byte	0x1
	.value	0x45e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.value	0x45e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.value	0x45e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.value	0x45e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x45f
	.long	0xc30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.value	0x460
	.long	0x799
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x9
	.long	0x799
	.long	0xc40
	.uleb128 0xa
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.value	0x53c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd23
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.value	0x53c
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x53c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x17
	.string	"nu"
	.byte	0x1
	.value	0x53c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x18
	.long	.LASF34
	.byte	0x1
	.value	0x53d
	.long	0x12c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.value	0x53d
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.value	0x53e
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.value	0x53e
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x1
	.value	0x53f
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.value	0x53f
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x540
	.long	0x813
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x541
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x542
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.value	0x543
	.long	0x813
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.value	0x5a1
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xda6
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.value	0x5a1
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0x5a1
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.value	0x5a1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.value	0x5a2
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.value	0x5a3
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x5a4
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x5a5
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.value	0x5c3
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xe29
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.value	0x5c3
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0x5c4
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.value	0x5c4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.value	0x5c5
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.value	0x5c6
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x5c7
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x5c8
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x1
	.value	0x5e7
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xece
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.value	0x5e7
	.long	0x692
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x18
	.long	.LASF115
	.byte	0x1
	.value	0x5e7
	.long	0x692
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.value	0x5e7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.value	0x5e7
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x5e8
	.long	0x686
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x5e9
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.value	0x5ea
	.long	0x94
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x5ec
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.value	0x5ec
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x16
	.long	.LASF118
	.byte	0x1
	.value	0x601
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xf75
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.value	0x601
	.long	0x799
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x18
	.long	.LASF115
	.byte	0x1
	.value	0x602
	.long	0x799
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.value	0x602
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.value	0x602
	.long	0xf75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x603
	.long	0x686
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x604
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.value	0x605
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x607
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.value	0x607
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x94
	.uleb128 0x16
	.long	.LASF119
	.byte	0x1
	.value	0x62b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1001
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x62b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"nu"
	.byte	0x1
	.value	0x62b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.value	0x62b
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF120
	.byte	0x1
	.value	0x62c
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF121
	.byte	0x1
	.value	0x62c
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.value	0x62d
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.value	0x62d
	.long	0x692
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.long	.LASF124
	.byte	0x1
	.value	0x64a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1097
	.uleb128 0x17
	.string	"mu"
	.byte	0x1
	.value	0x64a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"nu"
	.byte	0x1
	.value	0x64a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.value	0x64a
	.long	0xf75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF120
	.byte	0x1
	.value	0x64b
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF121
	.byte	0x1
	.value	0x64c
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.value	0x64d
	.long	0x799
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.value	0x64e
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.value	0x64f
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.long	0x57
	.long	0x10ad
	.uleb128 0xa
	.long	0x65
	.byte	0x5
	.uleb128 0xa
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0x8
	.byte	0x16
	.long	0x1097
	.uleb128 0x9
	.byte	0x3
	.quad	path_ind
	.uleb128 0x9
	.long	0x57
	.long	0x10d2
	.uleb128 0xa
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	.LASF127
	.byte	0x8
	.byte	0x1e
	.long	0x10c2
	.uleb128 0x9
	.byte	0x3
	.quad	path_length_in
	.uleb128 0x11
	.long	.LASF128
	.byte	0x8
	.byte	0x1f
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	quark_action_npaths
	.uleb128 0x9
	.long	0x94
	.long	0x110c
	.uleb128 0xa
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	.LASF129
	.byte	0x8
	.byte	0x20
	.long	0x10fc
	.uleb128 0x9
	.byte	0x3
	.quad	path_coeff
	.uleb128 0x9
	.long	0x72
	.long	0x1131
	.uleb128 0xa
	.long	0x65
	.byte	0x47
	.byte	0
	.uleb128 0x11
	.long	.LASF130
	.byte	0x8
	.byte	0x29
	.long	0x1121
	.uleb128 0x9
	.byte	0x3
	.quad	quark_action_description
	.uleb128 0x11
	.long	.LASF131
	.byte	0x1
	.byte	0x49
	.long	0x10fc
	.uleb128 0x9
	.byte	0x3
	.quad	act_path_coeff
	.uleb128 0x1d
	.string	"u0"
	.byte	0x6
	.byte	0x79
	.long	0x94
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x6
	.byte	0x81
	.long	0x57
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x6
	.byte	0x87
	.long	0x57
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x6
	.byte	0x88
	.long	0x57
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x6
	.byte	0x8b
	.long	0x57
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x6
	.byte	0x8e
	.long	0x57
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x6
	.byte	0x8f
	.long	0x57
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x6
	.byte	0x9a
	.long	0x686
	.uleb128 0x9
	.long	0x147
	.long	0x11c2
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x6
	.byte	0x9f
	.long	0x11b2
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x6
	.byte	0xa3
	.long	0x813
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x6
	.byte	0xa4
	.long	0x813
	.uleb128 0x1f
	.long	.LASF56
	.byte	0x1
	.byte	0x47
	.long	0x10c2
	.uleb128 0x9
	.byte	0x3
	.quad	path_num
	.uleb128 0x9
	.long	0x417
	.long	0x1209
	.uleb128 0x20
	.long	0x65
	.value	0x2af
	.byte	0
	.uleb128 0x1f
	.long	.LASF142
	.byte	0x1
	.byte	0x58
	.long	0x11f8
	.uleb128 0x9
	.byte	0x3
	.quad	q_paths
	.uleb128 0x1f
	.long	.LASF143
	.byte	0x1
	.byte	0x59
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	num_q_paths
	.uleb128 0x1f
	.long	.LASF144
	.byte	0x1
	.byte	0x5a
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	num_basic_paths
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF100:
	.string	"mThreeSt"
.LASF140:
	.string	"t_longlink"
.LASF35:
	.string	"phase"
.LASF87:
	.string	"Naik"
.LASF115:
	.string	"forw"
.LASF147:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF93:
	.string	"nflav1"
.LASF95:
	.string	"nflav2"
.LASF134:
	.string	"even_sites_on_node"
.LASF3:
	.string	"unsigned int"
.LASF66:
	.string	"path_transport"
.LASF70:
	.string	"ipath"
.LASF21:
	.string	"complex"
.LASF128:
	.string	"quark_action_npaths"
.LASF125:
	.string	"m_coeff"
.LASF104:
	.string	"coef"
.LASF84:
	.string	"ferm_epsilon"
.LASF131:
	.string	"act_path_coeff"
.LASF60:
	.string	"tmp_src"
.LASF28:
	.string	"anti_hermitmat"
.LASF59:
	.string	"mtag0"
.LASF44:
	.string	"site"
.LASF138:
	.string	"lattice"
.LASF127:
	.string	"path_length_in"
.LASF114:
	.string	"back"
.LASF69:
	.string	"load_longlinks"
.LASF11:
	.string	"float"
.LASF91:
	.string	"temp_x"
.LASF90:
	.string	"SevenSt"
.LASF31:
	.string	"index"
.LASF86:
	.string	"Lepage"
.LASF10:
	.string	"long long unsigned int"
.LASF49:
	.string	"msg_tag"
.LASF43:
	.string	"staple"
.LASF116:
	.string	"tmp_coeff"
.LASF68:
	.string	"make_path_table"
.LASF139:
	.string	"gen_pt"
.LASF130:
	.string	"quark_action_description"
.LASF15:
	.string	"ic_state"
.LASF81:
	.string	"nflavors"
.LASF38:
	.string	"g_rand"
.LASF62:
	.string	"tmp_work"
.LASF51:
	.string	"coeff"
.LASF135:
	.string	"this_node"
.LASF80:
	.string	"eo_fermion_force"
.LASF99:
	.string	"mFiveSt"
.LASF30:
	.string	"parity"
.LASF107:
	.string	"mtag1"
.LASF55:
	.string	"perm"
.LASF122:
	.string	"Path_mu"
.LASF112:
	.string	"u_shift_hw_fermion"
.LASF136:
	.string	"valid_longlinks"
.LASF144:
	.string	"num_basic_paths"
.LASF23:
	.string	"su3_vector"
.LASF8:
	.string	"char"
.LASF96:
	.string	"x2_off"
.LASF89:
	.string	"ThreeSt"
.LASF47:
	.string	"msg_buf"
.LASF97:
	.string	"mNaik"
.LASF105:
	.string	"tmat1"
.LASF106:
	.string	"tmat2"
.LASF65:
	.string	"tmp_otherparity"
.LASF75:
	.string	"one_link"
.LASF121:
	.string	"Path_nu"
.LASF56:
	.string	"path_num"
.LASF27:
	.string	"space"
.LASF39:
	.string	"tempvec"
.LASF29:
	.string	"half_wilson_vector"
.LASF132:
	.string	"phases_in"
.LASF14:
	.string	"addend"
.LASF61:
	.string	"tmp_dest"
.LASF9:
	.string	"long long int"
.LASF46:
	.string	"msg_size"
.LASF48:
	.string	"msg_id"
.LASF63:
	.string	"tmp_pt"
.LASF133:
	.string	"sites_on_node"
.LASF16:
	.string	"scale"
.LASF74:
	.string	"fat1"
.LASF45:
	.string	"msg_node"
.LASF41:
	.string	"templongv1"
.LASF92:
	.string	"eo_fermion_force_3f"
.LASF52:
	.string	"forwback"
.LASF146:
	.string	"quark_stuff.c"
.LASF129:
	.string	"path_coeff"
.LASF32:
	.string	"site_prn"
.LASF83:
	.string	"DirectLinks"
.LASF108:
	.string	"tempmat"
.LASF26:
	.string	"m22im"
.LASF82:
	.string	"x_off"
.LASF76:
	.string	"add_basic_path"
.LASF145:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF101:
	.string	"mSevenSt"
.LASF25:
	.string	"m11im"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF40:
	.string	"templongvec"
.LASF24:
	.string	"m00im"
.LASF50:
	.string	"length"
.LASF53:
	.string	"this_coeff"
.LASF67:
	.string	"path_transport_hwv"
.LASF143:
	.string	"num_q_paths"
.LASF57:
	.string	"flag"
.LASF109:
	.string	"u_shift_fermion"
.LASF78:
	.string	"path1"
.LASF19:
	.string	"real"
.LASF64:
	.string	"tmp_parity"
.LASF13:
	.string	"multiplier"
.LASF94:
	.string	"x1_off"
.LASF124:
	.string	"side_link_3f_force"
.LASF7:
	.string	"sizetype"
.LASF72:
	.string	"long1"
.LASF0:
	.string	"long unsigned int"
.LASF85:
	.string	"OneLink"
.LASF118:
	.string	"add_3f_force_to_mom"
.LASF141:
	.string	"t_fatlink"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"tempmat1"
.LASF20:
	.string	"imag"
.LASF34:
	.string	"link"
.LASF18:
	.string	"field_offset"
.LASF142:
	.string	"q_paths"
.LASF123:
	.string	"Path_numu"
.LASF73:
	.string	"load_fatlinks"
.LASF37:
	.string	"cg_p"
.LASF102:
	.string	"hwvec"
.LASF17:
	.string	"double_prn"
.LASF117:
	.string	"tmat"
.LASF4:
	.string	"signed char"
.LASF110:
	.string	"tmpvec"
.LASF2:
	.string	"short unsigned int"
.LASF54:
	.string	"basic_vec"
.LASF71:
	.string	"disp"
.LASF111:
	.string	"mtag"
.LASF12:
	.string	"double"
.LASF79:
	.string	"path2"
.LASF119:
	.string	"side_link_force"
.LASF137:
	.string	"valid_fatlinks"
.LASF88:
	.string	"FiveSt"
.LASF103:
	.string	"compute_gen_staple"
.LASF98:
	.string	"mLepage"
.LASF113:
	.string	"add_force_to_mom"
.LASF58:
	.string	"dest"
.LASF36:
	.string	"resid"
.LASF22:
	.string	"su3_matrix"
.LASF120:
	.string	"Path"
.LASF126:
	.string	"path_ind"
.LASF33:
	.string	"space1"
.LASF77:
	.string	"is_path_equal"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
