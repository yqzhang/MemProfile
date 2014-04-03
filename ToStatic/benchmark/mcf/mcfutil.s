	.file	"mcfutil.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 mcfutil.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
	.globl	refresh_neighbour_lists
	.type	refresh_neighbour_lists, @function
refresh_neighbour_lists:
.LFB2:
	.file 1 "mcfutil.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# net, net
	.loc 1 39 0
	movq	-40(%rbp), %rax	# net, tmp65
	movq	552(%rax), %rax	# net_3(D)->nodes, tmp66
	movq	%rax, -24(%rbp)	# tmp66, node
	.loc 1 40 0
	movq	-40(%rbp), %rax	# net, tmp67
	movq	560(%rax), %rax	# net_3(D)->stop_nodes, tmp68
	movq	%rax, -8(%rbp)	# tmp68, stop
	jmp	.L2	#
.L3:
	.loc 1 42 0 discriminator 2
	movq	-24(%rbp), %rax	# node, tmp69
	movq	$0, 64(%rax)	#, node_1->firstin
	.loc 1 43 0 discriminator 2
	movq	-24(%rbp), %rax	# node, tmp70
	movq	$0, 56(%rax)	#, node_1->firstout
	.loc 1 40 0 discriminator 2
	addq	$104, -24(%rbp)	#, node
.L2:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# node, tmp71
	cmpq	-8(%rbp), %rax	# stop, tmp71
	jb	.L3	#,
	.loc 1 46 0 is_stmt 1
	movq	-40(%rbp), %rax	# net, tmp72
	movq	568(%rax), %rax	# net_3(D)->arcs, tmp73
	movq	%rax, -16(%rbp)	# tmp73, arc
	.loc 1 47 0
	movq	-40(%rbp), %rax	# net, tmp74
	movq	576(%rax), %rax	# net_3(D)->stop_arcs, tmp75
	movq	%rax, -8(%rbp)	# tmp75, stop
	jmp	.L4	#
.L5:
	.loc 1 49 0 discriminator 2
	movq	-16(%rbp), %rax	# arc, tmp76
	movq	8(%rax), %rax	# arc_2->tail, D.4908
	movq	56(%rax), %rdx	# _9->firstout, D.4909
	movq	-16(%rbp), %rax	# arc, tmp77
	movq	%rdx, 32(%rax)	# D.4909, arc_2->nextout
	.loc 1 50 0 discriminator 2
	movq	-16(%rbp), %rax	# arc, tmp78
	movq	8(%rax), %rax	# arc_2->tail, D.4908
	movq	-16(%rbp), %rdx	# arc, tmp79
	movq	%rdx, 56(%rax)	# tmp79, _11->firstout
	.loc 1 51 0 discriminator 2
	movq	-16(%rbp), %rax	# arc, tmp80
	movq	16(%rax), %rax	# arc_2->head, D.4908
	movq	64(%rax), %rdx	# _12->firstin, D.4909
	movq	-16(%rbp), %rax	# arc, tmp81
	movq	%rdx, 40(%rax)	# D.4909, arc_2->nextin
	.loc 1 52 0 discriminator 2
	movq	-16(%rbp), %rax	# arc, tmp82
	movq	16(%rax), %rax	# arc_2->head, D.4908
	movq	-16(%rbp), %rdx	# arc, tmp83
	movq	%rdx, 64(%rax)	# tmp83, _14->firstin
	.loc 1 47 0 discriminator 2
	addq	$64, -16(%rbp)	#, arc
.L4:
	.loc 1 47 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# arc, tmp84
	cmpq	-8(%rbp), %rax	# stop, tmp84
	jb	.L5	#,
	.loc 1 55 0 is_stmt 1
	nop
	.loc 1 56 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	refresh_neighbour_lists, .-refresh_neighbour_lists
	.globl	refresh_potential
	.type	refresh_potential, @function
refresh_potential:
.LFB3:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# net, net
	.loc 1 75 0
	movq	-40(%rbp), %rax	# net, tmp73
	movq	552(%rax), %rax	# net_10(D)->nodes, tmp74
	movq	%rax, -8(%rbp)	# tmp74, root
	.loc 1 76 0
	movq	$0, -16(%rbp)	#, checksum
	.loc 1 79 0
	movq	-8(%rbp), %rax	# root, tmp75
	movq	$-100000000, (%rax)	#, root_11->potential
	.loc 1 80 0
	movq	-8(%rbp), %rax	# root, tmp76
	movq	16(%rax), %rax	# root_11->child, tmp77
	movq	%rax, -32(%rbp)	# tmp77, node
	movq	-32(%rbp), %rax	# node, tmp78
	movq	%rax, -24(%rbp)	# tmp78, tmp
	.loc 1 81 0
	jmp	.L8	#
.L16:
	.loc 1 83 0
	jmp	.L9	#
.L12:
	.loc 1 85 0
	movq	-32(%rbp), %rax	# node, tmp79
	movl	8(%rax), %eax	# node_1->orientation, D.4910
	cmpl	$1, %eax	#, D.4910
	jne	.L10	#,
	.loc 1 86 0
	movq	-32(%rbp), %rax	# node, tmp80
	movq	48(%rax), %rax	# node_1->basic_arc, D.4911
	movq	(%rax), %rdx	# _16->cost, D.4912
	movq	-32(%rbp), %rax	# node, tmp81
	movq	24(%rax), %rax	# node_1->pred, D.4913
	movq	(%rax), %rax	# _18->potential, D.4912
	addq	%rax, %rdx	# D.4912, D.4912
	movq	-32(%rbp), %rax	# node, tmp82
	movq	%rdx, (%rax)	# D.4912, node_1->potential
	jmp	.L11	#
.L10:
	.loc 1 89 0
	movq	-32(%rbp), %rax	# node, tmp83
	movq	24(%rax), %rax	# node_1->pred, D.4913
	movq	(%rax), %rdx	# _21->potential, D.4912
	movq	-32(%rbp), %rax	# node, tmp84
	movq	48(%rax), %rax	# node_1->basic_arc, D.4911
	movq	(%rax), %rax	# _23->cost, D.4912
	subq	%rax, %rdx	# D.4912, D.4912
	movq	-32(%rbp), %rax	# node, tmp85
	movq	%rdx, (%rax)	# D.4912, node_1->potential
	.loc 1 90 0
	addq	$1, -16(%rbp)	#, checksum
.L11:
	.loc 1 93 0
	movq	-32(%rbp), %rax	# node, tmp86
	movq	%rax, -24(%rbp)	# tmp86, tmp
	.loc 1 94 0
	movq	-32(%rbp), %rax	# node, tmp87
	movq	16(%rax), %rax	# node_1->child, tmp88
	movq	%rax, -32(%rbp)	# tmp88, node
.L9:
	.loc 1 83 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, node
	jne	.L12	#,
	.loc 1 97 0
	movq	-24(%rbp), %rax	# tmp, tmp89
	movq	%rax, -32(%rbp)	# tmp89, node
	.loc 1 99 0
	jmp	.L13	#
.L15:
	.loc 1 101 0
	movq	-32(%rbp), %rax	# node, tmp90
	movq	32(%rax), %rax	# node_2->sibling, tmp91
	movq	%rax, -24(%rbp)	# tmp91, tmp
	.loc 1 102 0
	cmpq	$0, -24(%rbp)	#, tmp
	je	.L14	#,
	.loc 1 104 0
	movq	-24(%rbp), %rax	# tmp, tmp92
	movq	%rax, -32(%rbp)	# tmp92, node
	.loc 1 105 0
	jmp	.L8	#
.L14:
	.loc 1 108 0
	movq	-32(%rbp), %rax	# node, tmp93
	movq	24(%rax), %rax	# node_2->pred, tmp94
	movq	%rax, -32(%rbp)	# tmp94, node
.L13:
	.loc 1 99 0 discriminator 1
	movq	-32(%rbp), %rax	# node, tmp95
	movq	24(%rax), %rax	# node_2->pred, D.4913
	testq	%rax, %rax	# D.4913
	jne	.L15	#,
.L8:
	.loc 1 81 0 discriminator 1
	movq	-32(%rbp), %rax	# node, tmp96
	cmpq	-8(%rbp), %rax	# root, tmp96
	jne	.L16	#,
	.loc 1 112 0
	movq	-16(%rbp), %rax	# checksum, D.4912
	.loc 1 113 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	refresh_potential, .-refresh_potential
	.globl	flow_cost
	.type	flow_cost, @function
flow_cost:
.LFB4:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# net, net
	.loc 1 132 0
	movq	$0, -24(%rbp)	#, fleet
	.loc 1 133 0
	movq	$0, -16(%rbp)	#, operational_cost
	.loc 1 136 0
	movq	-56(%rbp), %rax	# net, tmp80
	movq	576(%rax), %rax	# net_10(D)->stop_arcs, tmp81
	movq	%rax, -8(%rbp)	# tmp81, stop
	.loc 1 137 0
	movq	-56(%rbp), %rax	# net, tmp82
	movq	568(%rax), %rax	# net_10(D)->arcs, tmp83
	movq	%rax, -40(%rbp)	# tmp83, arc
	jmp	.L19	#
.L22:
	.loc 1 139 0
	movq	-40(%rbp), %rax	# arc, tmp84
	movl	24(%rax), %eax	# arc_1->ident, D.4914
	cmpl	$2, %eax	#, D.4914
	jne	.L20	#,
	.loc 1 140 0
	movq	-40(%rbp), %rax	# arc, tmp85
	movq	$1, 48(%rax)	#, arc_1->flow
	jmp	.L21	#
.L20:
	.loc 1 142 0
	movq	-40(%rbp), %rax	# arc, tmp86
	movq	$0, 48(%rax)	#, arc_1->flow
.L21:
	.loc 1 137 0
	addq	$64, -40(%rbp)	#, arc
.L19:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arc, tmp87
	cmpq	-8(%rbp), %rax	# stop, tmp87
	jne	.L22	#,
	.loc 1 145 0 is_stmt 1
	movq	-56(%rbp), %rax	# net, tmp88
	movq	560(%rax), %rax	# net_10(D)->stop_nodes, tmp89
	movq	%rax, -8(%rbp)	# tmp89, stop
	.loc 1 146 0
	movq	-56(%rbp), %rax	# net, tmp90
	movq	552(%rax), %rax	# net_10(D)->nodes, tmp91
	movq	%rax, -32(%rbp)	# tmp91, node
	addq	$104, -32(%rbp)	#, node
	jmp	.L23	#
.L24:
	.loc 1 147 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp92
	movq	48(%rax), %rax	# node_3->basic_arc, D.4915
	movq	-32(%rbp), %rdx	# node, tmp93
	movq	80(%rdx), %rdx	# node_3->flow, D.4916
	movq	%rdx, 48(%rax)	# D.4916, _18->flow
	.loc 1 146 0 discriminator 2
	addq	$104, -32(%rbp)	#, node
.L23:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# node, tmp94
	cmpq	-8(%rbp), %rax	# stop, tmp94
	jne	.L24	#,
	.loc 1 149 0 is_stmt 1
	movq	-56(%rbp), %rax	# net, tmp95
	movq	576(%rax), %rax	# net_10(D)->stop_arcs, tmp96
	movq	%rax, -8(%rbp)	# tmp96, stop
	.loc 1 150 0
	movq	-56(%rbp), %rax	# net, tmp97
	movq	568(%rax), %rax	# net_10(D)->arcs, tmp98
	movq	%rax, -40(%rbp)	# tmp98, arc
	jmp	.L25	#
.L29:
	.loc 1 152 0
	movq	-40(%rbp), %rax	# arc, tmp99
	movq	48(%rax), %rax	# arc_2->flow, D.4916
	testq	%rax, %rax	# D.4916
	je	.L26	#,
	.loc 1 154 0
	movq	-40(%rbp), %rax	# arc, tmp100
	movq	8(%rax), %rax	# arc_2->tail, D.4917
	movl	96(%rax), %eax	# _24->number, D.4914
	testl	%eax, %eax	# D.4914
	jns	.L27	#,
	.loc 1 154 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arc, tmp101
	movq	16(%rax), %rax	# arc_2->head, D.4917
	movl	96(%rax), %eax	# _26->number, D.4914
	testl	%eax, %eax	# D.4914
	jg	.L26	#,
.L27:
	.loc 1 156 0 is_stmt 1
	movq	-40(%rbp), %rax	# arc, tmp102
	movq	8(%rax), %rax	# arc_2->tail, D.4917
	movl	96(%rax), %eax	# _28->number, D.4914
	testl	%eax, %eax	# D.4914
	jne	.L28	#,
	.loc 1 158 0
	movq	-40(%rbp), %rax	# arc, tmp103
	movq	(%rax), %rdx	# arc_2->cost, D.4916
	movq	-56(%rbp), %rax	# net, tmp104
	movq	528(%rax), %rax	# net_10(D)->bigM, D.4916
	subq	%rax, %rdx	# D.4916, D.4916
	movq	%rdx, %rax	# D.4916, D.4916
	addq	%rax, -16(%rbp)	# D.4916, operational_cost
	.loc 1 159 0
	addq	$1, -24(%rbp)	#, fleet
	jmp	.L26	#
.L28:
	.loc 1 162 0
	movq	-40(%rbp), %rax	# arc, tmp105
	movq	(%rax), %rax	# arc_2->cost, D.4916
	addq	%rax, -16(%rbp)	# D.4916, operational_cost
.L26:
	.loc 1 150 0
	addq	$64, -40(%rbp)	#, arc
.L25:
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arc, tmp106
	cmpq	-8(%rbp), %rax	# stop, tmp106
	jne	.L29	#,
	.loc 1 168 0 is_stmt 1
	cvtsi2sdq	-24(%rbp), %xmm1	# fleet, D.4918
	movq	-56(%rbp), %rax	# net, tmp107
	movq	528(%rax), %rax	# net_10(D)->bigM, D.4916
	cvtsi2sdq	%rax, %xmm0	# D.4916, D.4918
	mulsd	%xmm0, %xmm1	# D.4918, D.4918
	cvtsi2sdq	-16(%rbp), %xmm0	# operational_cost, D.4918
	addsd	%xmm1, %xmm0	# D.4918, D.4918
	movsd	%xmm0, -64(%rbp)	# D.4918, %sfp
	movq	-64(%rbp), %rax	# %sfp, <retval>
	.loc 1 169 0
	movq	%rax, -64(%rbp)	# <retval>, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	flow_cost, .-flow_cost
	.globl	flow_org_cost
	.type	flow_org_cost, @function
flow_org_cost:
.LFB5:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# net, net
	.loc 1 191 0
	movq	$0, -24(%rbp)	#, fleet
	.loc 1 192 0
	movq	$0, -16(%rbp)	#, operational_cost
	.loc 1 195 0
	movq	-56(%rbp), %rax	# net, tmp80
	movq	576(%rax), %rax	# net_10(D)->stop_arcs, tmp81
	movq	%rax, -8(%rbp)	# tmp81, stop
	.loc 1 196 0
	movq	-56(%rbp), %rax	# net, tmp82
	movq	568(%rax), %rax	# net_10(D)->arcs, tmp83
	movq	%rax, -40(%rbp)	# tmp83, arc
	jmp	.L32	#
.L35:
	.loc 1 198 0
	movq	-40(%rbp), %rax	# arc, tmp84
	movl	24(%rax), %eax	# arc_1->ident, D.4920
	cmpl	$2, %eax	#, D.4920
	jne	.L33	#,
	.loc 1 199 0
	movq	-40(%rbp), %rax	# arc, tmp85
	movq	$1, 48(%rax)	#, arc_1->flow
	jmp	.L34	#
.L33:
	.loc 1 201 0
	movq	-40(%rbp), %rax	# arc, tmp86
	movq	$0, 48(%rax)	#, arc_1->flow
.L34:
	.loc 1 196 0
	addq	$64, -40(%rbp)	#, arc
.L32:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arc, tmp87
	cmpq	-8(%rbp), %rax	# stop, tmp87
	jne	.L35	#,
	.loc 1 204 0 is_stmt 1
	movq	-56(%rbp), %rax	# net, tmp88
	movq	560(%rax), %rax	# net_10(D)->stop_nodes, tmp89
	movq	%rax, -8(%rbp)	# tmp89, stop
	.loc 1 205 0
	movq	-56(%rbp), %rax	# net, tmp90
	movq	552(%rax), %rax	# net_10(D)->nodes, tmp91
	movq	%rax, -32(%rbp)	# tmp91, node
	addq	$104, -32(%rbp)	#, node
	jmp	.L36	#
.L37:
	.loc 1 206 0 discriminator 2
	movq	-32(%rbp), %rax	# node, tmp92
	movq	48(%rax), %rax	# node_3->basic_arc, D.4921
	movq	-32(%rbp), %rdx	# node, tmp93
	movq	80(%rdx), %rdx	# node_3->flow, D.4922
	movq	%rdx, 48(%rax)	# D.4922, _18->flow
	.loc 1 205 0 discriminator 2
	addq	$104, -32(%rbp)	#, node
.L36:
	.loc 1 205 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# node, tmp94
	cmpq	-8(%rbp), %rax	# stop, tmp94
	jne	.L37	#,
	.loc 1 208 0 is_stmt 1
	movq	-56(%rbp), %rax	# net, tmp95
	movq	576(%rax), %rax	# net_10(D)->stop_arcs, tmp96
	movq	%rax, -8(%rbp)	# tmp96, stop
	.loc 1 209 0
	movq	-56(%rbp), %rax	# net, tmp97
	movq	568(%rax), %rax	# net_10(D)->arcs, tmp98
	movq	%rax, -40(%rbp)	# tmp98, arc
	jmp	.L38	#
.L42:
	.loc 1 211 0
	movq	-40(%rbp), %rax	# arc, tmp99
	movq	48(%rax), %rax	# arc_2->flow, D.4922
	testq	%rax, %rax	# D.4922
	je	.L39	#,
	.loc 1 213 0
	movq	-40(%rbp), %rax	# arc, tmp100
	movq	8(%rax), %rax	# arc_2->tail, D.4923
	movl	96(%rax), %eax	# _24->number, D.4920
	testl	%eax, %eax	# D.4920
	jns	.L40	#,
	.loc 1 213 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arc, tmp101
	movq	16(%rax), %rax	# arc_2->head, D.4923
	movl	96(%rax), %eax	# _26->number, D.4920
	testl	%eax, %eax	# D.4920
	jg	.L39	#,
.L40:
	.loc 1 215 0 is_stmt 1
	movq	-40(%rbp), %rax	# arc, tmp102
	movq	8(%rax), %rax	# arc_2->tail, D.4923
	movl	96(%rax), %eax	# _28->number, D.4920
	testl	%eax, %eax	# D.4920
	jne	.L41	#,
	.loc 1 217 0
	movq	-40(%rbp), %rax	# arc, tmp103
	movq	56(%rax), %rdx	# arc_2->org_cost, D.4922
	movq	-56(%rbp), %rax	# net, tmp104
	movq	528(%rax), %rax	# net_10(D)->bigM, D.4922
	subq	%rax, %rdx	# D.4922, D.4922
	movq	%rdx, %rax	# D.4922, D.4922
	addq	%rax, -16(%rbp)	# D.4922, operational_cost
	.loc 1 218 0
	addq	$1, -24(%rbp)	#, fleet
	jmp	.L39	#
.L41:
	.loc 1 221 0
	movq	-40(%rbp), %rax	# arc, tmp105
	movq	56(%rax), %rax	# arc_2->org_cost, D.4922
	addq	%rax, -16(%rbp)	# D.4922, operational_cost
.L39:
	.loc 1 209 0
	addq	$64, -40(%rbp)	#, arc
.L38:
	.loc 1 209 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arc, tmp106
	cmpq	-8(%rbp), %rax	# stop, tmp106
	jne	.L42	#,
	.loc 1 226 0 is_stmt 1
	cvtsi2sdq	-24(%rbp), %xmm1	# fleet, D.4924
	movq	-56(%rbp), %rax	# net, tmp107
	movq	528(%rax), %rax	# net_10(D)->bigM, D.4922
	cvtsi2sdq	%rax, %xmm0	# D.4922, D.4924
	mulsd	%xmm0, %xmm1	# D.4924, D.4924
	cvtsi2sdq	-16(%rbp), %xmm0	# operational_cost, D.4924
	addsd	%xmm1, %xmm0	# D.4924, D.4924
	movsd	%xmm0, -64(%rbp)	# D.4924, %sfp
	movq	-64(%rbp), %rax	# %sfp, <retval>
	.loc 1 227 0
	movq	%rax, -64(%rbp)	# <retval>, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	flow_org_cost, .-flow_org_cost
	.section	.rodata
.LC0:
	.string	"PRIMAL NETWORK SIMPLEX: "
	.align 8
.LC1:
	.string	"artificial arc with nonzero flow, node %d (%ld)\n"
	.align 8
.LC2:
	.string	"basis primal infeasible (%ld)\n"
	.text
	.globl	primal_feasible
	.type	primal_feasible, @function
primal_feasible:
.LFB6:
	.loc 1 244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# net, net
	.loc 1 247 0
	movq	-56(%rbp), %rax	# net, tmp68
	movq	584(%rax), %rax	# net_3(D)->dummy_arcs, tmp69
	movq	%rax, -40(%rbp)	# tmp69, dummy
	.loc 1 248 0
	movq	-56(%rbp), %rax	# net, tmp70
	movq	592(%rax), %rax	# net_3(D)->stop_dummy, tmp71
	movq	%rax, -32(%rbp)	# tmp71, stop_dummy
	.loc 1 253 0
	movq	-56(%rbp), %rax	# net, tmp72
	movq	552(%rax), %rax	# net_3(D)->nodes, tmp73
	movq	%rax, -48(%rbp)	# tmp73, node
	.loc 1 254 0
	movq	-56(%rbp), %rax	# net, tmp74
	movq	560(%rax), %rax	# net_3(D)->stop_nodes, tmp75
	movq	%rax, -24(%rbp)	# tmp75, stop
	.loc 1 256 0
	addq	$104, -48(%rbp)	#, node
	jmp	.L45	#
.L51:
	.loc 1 258 0
	movq	-48(%rbp), %rax	# node, tmp76
	movq	48(%rax), %rax	# node_1->basic_arc, tmp77
	movq	%rax, -16(%rbp)	# tmp77, arc
	.loc 1 259 0
	movq	-48(%rbp), %rax	# node, tmp78
	movq	80(%rax), %rax	# node_1->flow, tmp79
	movq	%rax, -8(%rbp)	# tmp79, flow
	.loc 1 260 0
	movq	-16(%rbp), %rax	# arc, tmp80
	cmpq	-40(%rbp), %rax	# dummy, tmp80
	jb	.L46	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# arc, tmp81
	cmpq	-32(%rbp), %rax	# stop_dummy, tmp81
	jae	.L46	#,
	.loc 1 262 0 is_stmt 1
	movq	-8(%rbp), %rax	# flow, tmp83
	cqto
	movq	%rdx, %rax	# tmp82, D.4925
	xorq	-8(%rbp), %rax	# flow, D.4925
	subq	%rdx, %rax	# tmp82, D.4925
	movq	-56(%rbp), %rdx	# net, tmp84
	movq	512(%rdx), %rdx	# net_3(D)->feas_tol, D.4925
	cmpq	%rdx, %rax	# D.4925, D.4925
	jle	.L47	#,
	.loc 1 264 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 265 0
	movq	-48(%rbp), %rax	# node, tmp85
	movl	96(%rax), %eax	# node_1->number, D.4926
	movq	-8(%rbp), %rdx	# flow, tmp86
	movl	%eax, %esi	# D.4926,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 262 0
	jmp	.L48	#
.L47:
	.loc 1 262 0 is_stmt 0 discriminator 1
	jmp	.L48	#
.L46:
	.loc 1 271 0 is_stmt 1
	movq	-56(%rbp), %rax	# net, tmp87
	movq	512(%rax), %rax	# net_3(D)->feas_tol, D.4925
	negq	%rax	# D.4925
	cmpq	-8(%rbp), %rax	# flow, D.4925
	jg	.L49	#,
	.loc 1 272 0
	movq	-8(%rbp), %rax	# flow, tmp88
	leaq	-1(%rax), %rdx	#, D.4925
	movq	-56(%rbp), %rax	# net, tmp89
	movq	512(%rax), %rax	# net_3(D)->feas_tol, D.4925
	cmpq	%rax, %rdx	# D.4925, D.4925
	jle	.L48	#,
.L49:
	.loc 1 274 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 275 0
	movq	-8(%rbp), %rax	# flow, tmp90
	movq	%rax, %rsi	# tmp90,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 276 0
	movq	-56(%rbp), %rax	# net, tmp91
	movq	$0, 488(%rax)	#, net_3(D)->feasible
	.loc 1 277 0
	movl	$1, %eax	#, D.4925
	jmp	.L50	#
.L48:
	.loc 1 256 0
	addq	$104, -48(%rbp)	#, node
.L45:
	.loc 1 256 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# node, tmp92
	cmpq	-24(%rbp), %rax	# stop, tmp92
	jb	.L51	#,
	.loc 1 282 0 is_stmt 1
	movq	-56(%rbp), %rax	# net, tmp93
	movq	$1, 488(%rax)	#, net_3(D)->feasible
	.loc 1 284 0
	movl	$0, %eax	#, D.4925
.L50:
	.loc 1 285 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	primal_feasible, .-primal_feasible
	.section	.rodata
.LC3:
	.string	"DUAL NETWORK SIMPLEX: "
.LC4:
	.string	"basis dual infeasible\n"
	.text
	.globl	dual_feasible
	.type	dual_feasible, @function
dual_feasible:
.LFB7:
	.loc 1 302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# net, net
	.loc 1 304 0
	movq	-40(%rbp), %rax	# net, tmp73
	movq	576(%rax), %rax	# net_3(D)->stop_arcs, tmp74
	movq	%rax, -16(%rbp)	# tmp74, stop
	.loc 1 309 0
	movq	-40(%rbp), %rax	# net, tmp75
	movq	568(%rax), %rax	# net_3(D)->arcs, tmp76
	movq	%rax, -24(%rbp)	# tmp76, arc
	jmp	.L53	#
.L61:
	.loc 1 311 0
	movq	-24(%rbp), %rax	# arc, tmp77
	movq	(%rax), %rdx	# arc_1->cost, D.4930
	movq	-24(%rbp), %rax	# arc, tmp78
	movq	8(%rax), %rax	# arc_1->tail, D.4931
	movq	(%rax), %rax	# _7->potential, D.4930
	subq	%rax, %rdx	# D.4930, D.4930
	.loc 1 312 0
	movq	-24(%rbp), %rax	# arc, tmp79
	movq	16(%rax), %rax	# arc_1->head, D.4931
	movq	(%rax), %rax	# _10->potential, D.4930
	.loc 1 311 0
	addq	%rdx, %rax	# D.4930, tmp80
	movq	%rax, -8(%rbp)	# tmp80, red_cost
	.loc 1 313 0
	movq	-24(%rbp), %rax	# arc, tmp81
	movl	24(%rax), %eax	# arc_1->ident, D.4932
	testl	%eax, %eax	# D.4932
	js	.L63	#,
	cmpl	$1, %eax	#, D.4932
	jle	.L55	#,
	cmpl	$2, %eax	#, D.4932
	je	.L56	#,
	.loc 1 350 0
	jmp	.L63	#
.L55:
	.loc 1 329 0
	movq	-40(%rbp), %rax	# net, tmp82
	movq	512(%rax), %rax	# net_3(D)->feas_tol, D.4930
	negq	%rax	# D.4930
	cmpq	-8(%rbp), %rax	# red_cost, D.4930
	jle	.L57	#,
	.loc 1 334 0
	jmp	.L58	#
.L57:
	.loc 1 337 0
	jmp	.L59	#
.L56:
	.loc 1 339 0
	movq	-40(%rbp), %rax	# net, tmp83
	movq	512(%rax), %rax	# net_3(D)->feas_tol, D.4930
	cmpq	-8(%rbp), %rax	# red_cost, D.4930
	jge	.L60	#,
	.loc 1 344 0
	jmp	.L58	#
.L60:
	.loc 1 347 0
	jmp	.L59	#
.L63:
	.loc 1 350 0
	nop
.L59:
	.loc 1 309 0
	addq	$64, -24(%rbp)	#, arc
.L53:
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arc, tmp84
	cmpq	-16(%rbp), %rax	# stop, tmp84
	jb	.L61	#,
	.loc 1 354 0 is_stmt 1
	movl	$0, %eax	#, D.4930
	jmp	.L62	#
.L58:
	.loc 1 357 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rcx	# stderr.0,
	movl	$22, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 358 0
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	%rax, %rcx	# stderr.1,
	movl	$22, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	.loc 1 359 0
	movl	$1, %eax	#, D.4930
.L62:
	.loc 1 360 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dual_feasible, .-dual_feasible
	.globl	getfree
	.type	getfree, @function
getfree:
.LFB8:
	.loc 1 376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# net, net
	.loc 1 377 0
	movq	-8(%rbp), %rax	# net, tmp70
	movq	552(%rax), %rax	# net_1(D)->nodes, D.4935
	testq	%rax, %rax	# D.4935
	je	.L65	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# net, tmp71
	movq	552(%rax), %rax	# net_1(D)->nodes, D.4935
	movq	%rax, %rdi	# D.4935,
	call	free	#
.L65:
	.loc 1 378 0 is_stmt 1
	movq	-8(%rbp), %rax	# net, tmp72
	movq	568(%rax), %rax	# net_1(D)->arcs, D.4936
	testq	%rax, %rax	# D.4936
	je	.L66	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# net, tmp73
	movq	568(%rax), %rax	# net_1(D)->arcs, D.4936
	movq	%rax, %rdi	# D.4936,
	call	free	#
.L66:
	.loc 1 379 0 is_stmt 1
	movq	-8(%rbp), %rax	# net, tmp74
	movq	584(%rax), %rax	# net_1(D)->dummy_arcs, D.4936
	testq	%rax, %rax	# D.4936
	je	.L67	#,
	.loc 1 379 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# net, tmp75
	movq	584(%rax), %rax	# net_1(D)->dummy_arcs, D.4936
	movq	%rax, %rdi	# D.4936,
	call	free	#
.L67:
	.loc 1 380 0 is_stmt 1
	movq	-8(%rbp), %rax	# net, tmp76
	movq	$0, 560(%rax)	#, net_1(D)->stop_nodes
	movq	-8(%rbp), %rax	# net, tmp77
	movq	560(%rax), %rdx	# net_1(D)->stop_nodes, D.4935
	movq	-8(%rbp), %rax	# net, tmp78
	movq	%rdx, 552(%rax)	# D.4935, net_1(D)->nodes
	.loc 1 381 0
	movq	-8(%rbp), %rax	# net, tmp79
	movq	$0, 576(%rax)	#, net_1(D)->stop_arcs
	movq	-8(%rbp), %rax	# net, tmp80
	movq	576(%rax), %rdx	# net_1(D)->stop_arcs, D.4936
	movq	-8(%rbp), %rax	# net, tmp81
	movq	%rdx, 568(%rax)	# D.4936, net_1(D)->arcs
	.loc 1 382 0
	movq	-8(%rbp), %rax	# net, tmp82
	movq	$0, 592(%rax)	#, net_1(D)->stop_dummy
	movq	-8(%rbp), %rax	# net, tmp83
	movq	592(%rax), %rdx	# net_1(D)->stop_dummy, D.4936
	movq	-8(%rbp), %rax	# net, tmp84
	movq	%rdx, 584(%rax)	# D.4936, net_1(D)->dummy_arcs
	.loc 1 384 0
	movl	$0, %eax	#, D.4937
	.loc 1 385 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	getfree, .-getfree
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "defines.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8a8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF119
	.byte	0x1
	.long	.LASF120
	.long	.LASF121
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
	.long	0x62
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
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
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
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF122
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x44
	.long	0x69
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x45
	.long	0x69
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x63
	.long	0x2c4
	.uleb128 0x7
	.long	.LASF53
	.byte	0x68
	.byte	0x5
	.byte	0x6b
	.long	0x379
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0x6d
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0x6e
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0x6f
	.long	0x379
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0x70
	.long	0x379
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0x71
	.long	0x379
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0x72
	.long	0x379
	.byte	0x28
	.uleb128 0x8
	.long	.LASF60
	.byte	0x5
	.byte	0x73
	.long	0x402
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x5
	.byte	0x74
	.long	0x402
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0x74
	.long	0x402
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x5
	.byte	0x75
	.long	0x402
	.byte	0x48
	.uleb128 0x8
	.long	.LASF64
	.byte	0x5
	.byte	0x76
	.long	0x2a3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF65
	.byte	0x5
	.byte	0x77
	.long	0x69
	.byte	0x58
	.uleb128 0x8
	.long	.LASF66
	.byte	0x5
	.byte	0x78
	.long	0x62
	.byte	0x60
	.uleb128 0x8
	.long	.LASF67
	.byte	0x5
	.byte	0x79
	.long	0x62
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x5
	.byte	0x64
	.long	0x384
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF69
	.byte	0x5
	.byte	0x66
	.long	0x395
	.uleb128 0xd
	.string	"arc"
	.byte	0x40
	.byte	0x5
	.byte	0x7e
	.long	0x402
	.uleb128 0x8
	.long	.LASF70
	.byte	0x5
	.byte	0x80
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x5
	.byte	0x81
	.long	0x379
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x5
	.byte	0x81
	.long	0x379
	.byte	0x10
	.uleb128 0x8
	.long	.LASF73
	.byte	0x5
	.byte	0x82
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF74
	.byte	0x5
	.byte	0x83
	.long	0x402
	.byte	0x20
	.uleb128 0x8
	.long	.LASF75
	.byte	0x5
	.byte	0x83
	.long	0x402
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x5
	.byte	0x84
	.long	0x2a3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF76
	.byte	0x5
	.byte	0x85
	.long	0x2ae
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x5
	.byte	0x67
	.long	0x40d
	.uleb128 0x6
	.byte	0x8
	.long	0x395
	.uleb128 0xe
	.long	.LASF78
	.value	0x270
	.byte	0x5
	.byte	0x8a
	.long	0x5a1
	.uleb128 0x8
	.long	.LASF79
	.byte	0x5
	.byte	0x8c
	.long	0x5a1
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x5
	.byte	0x8d
	.long	0x5a1
	.byte	0xc8
	.uleb128 0xf
	.string	"n"
	.byte	0x5
	.byte	0x8e
	.long	0x69
	.value	0x190
	.uleb128 0x10
	.long	.LASF81
	.byte	0x5
	.byte	0x8e
	.long	0x69
	.value	0x198
	.uleb128 0x10
	.long	.LASF82
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1a0
	.uleb128 0xf
	.string	"m"
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF83
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF85
	.byte	0x5
	.byte	0x90
	.long	0x69
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF86
	.byte	0x5
	.byte	0x90
	.long	0x69
	.value	0x1c8
	.uleb128 0x10
	.long	.LASF87
	.byte	0x5
	.byte	0x92
	.long	0x69
	.value	0x1d0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x5
	.byte	0x93
	.long	0x69
	.value	0x1d8
	.uleb128 0x10
	.long	.LASF89
	.byte	0x5
	.byte	0x94
	.long	0x69
	.value	0x1e0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x5
	.byte	0x95
	.long	0x69
	.value	0x1e8
	.uleb128 0xf
	.string	"eps"
	.byte	0x5
	.byte	0x96
	.long	0x69
	.value	0x1f0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x5
	.byte	0x97
	.long	0x69
	.value	0x1f8
	.uleb128 0x10
	.long	.LASF92
	.byte	0x5
	.byte	0x98
	.long	0x69
	.value	0x200
	.uleb128 0x10
	.long	.LASF93
	.byte	0x5
	.byte	0x99
	.long	0x69
	.value	0x208
	.uleb128 0x10
	.long	.LASF94
	.byte	0x5
	.byte	0x9a
	.long	0x69
	.value	0x210
	.uleb128 0x10
	.long	.LASF95
	.byte	0x5
	.byte	0x9b
	.long	0x28e
	.value	0x218
	.uleb128 0x10
	.long	.LASF96
	.byte	0x5
	.byte	0x9c
	.long	0x2ae
	.value	0x220
	.uleb128 0x10
	.long	.LASF97
	.byte	0x5
	.byte	0x9d
	.long	0x379
	.value	0x228
	.uleb128 0x10
	.long	.LASF98
	.byte	0x5
	.byte	0x9d
	.long	0x379
	.value	0x230
	.uleb128 0x10
	.long	.LASF99
	.byte	0x5
	.byte	0x9e
	.long	0x402
	.value	0x238
	.uleb128 0x10
	.long	.LASF100
	.byte	0x5
	.byte	0x9e
	.long	0x402
	.value	0x240
	.uleb128 0x10
	.long	.LASF101
	.byte	0x5
	.byte	0x9f
	.long	0x402
	.value	0x248
	.uleb128 0x10
	.long	.LASF102
	.byte	0x5
	.byte	0x9f
	.long	0x402
	.value	0x250
	.uleb128 0x10
	.long	.LASF103
	.byte	0x5
	.byte	0xa0
	.long	0x69
	.value	0x258
	.uleb128 0x10
	.long	.LASF104
	.byte	0x5
	.byte	0xa1
	.long	0x69
	.value	0x260
	.uleb128 0x10
	.long	.LASF105
	.byte	0x5
	.byte	0xa2
	.long	0x69
	.value	0x268
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x5b1
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x5
	.byte	0xa3
	.long	0x413
	.uleb128 0x11
	.long	.LASF123
	.byte	0x1
	.byte	0x1c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x612
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0x1c
	.long	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0x22
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"arc"
	.byte	0x1
	.byte	0x23
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.byte	0x24
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b1
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0x44
	.long	0x69
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x68c
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0x44
	.long	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0x4a
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.byte	0x4a
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF108
	.byte	0x1
	.byte	0x4b
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF105
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x15
	.long	.LASF110
	.byte	0x1
	.byte	0x7a
	.long	0x28e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x703
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0x7a
	.long	0x612
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"arc"
	.byte	0x1
	.byte	0x80
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0x81
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.byte	0x82
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF111
	.byte	0x1
	.byte	0x84
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF112
	.byte	0x1
	.byte	0x85
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x15
	.long	.LASF113
	.byte	0x1
	.byte	0xb5
	.long	0x28e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x77a
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0xb5
	.long	0x612
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"arc"
	.byte	0x1
	.byte	0xbb
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0xbc
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.byte	0xbd
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF111
	.byte	0x1
	.byte	0xbf
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF112
	.byte	0x1
	.byte	0xc0
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.long	.LASF114
	.byte	0x1
	.byte	0xef
	.long	0x69
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ff
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0xef
	.long	0x612
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.byte	0xf5
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0xf6
	.long	0x618
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF115
	.byte	0x1
	.byte	0xf7
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.byte	0xf8
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"arc"
	.byte	0x1
	.byte	0xf9
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0xfa
	.long	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF116
	.byte	0x1
	.value	0x129
	.long	0x69
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x86e
	.uleb128 0x18
	.string	"net"
	.byte	0x1
	.value	0x129
	.long	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"arc"
	.byte	0x1
	.value	0x12f
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.value	0x130
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x131
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x1
	.value	0x164
	.quad	.L58
	.byte	0
	.uleb128 0x17
	.long	.LASF118
	.byte	0x1
	.value	0x171
	.long	0x69
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a0
	.uleb128 0x18
	.string	"net"
	.byte	0x1
	.value	0x172
	.long	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF125
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x1c
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
.LASF31:
	.string	"_shortbuf"
.LASF122:
	.string	"_IO_lock_t"
.LASF125:
	.string	"stderr"
.LASF20:
	.string	"_IO_buf_end"
.LASF97:
	.string	"nodes"
.LASF109:
	.string	"refresh_potential"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"_flags"
.LASF72:
	.string	"head"
.LASF93:
	.string	"pert_val"
.LASF115:
	.string	"dummy"
.LASF120:
	.string	"mcfutil.c"
.LASF24:
	.string	"_markers"
.LASF57:
	.string	"pred"
.LASF90:
	.string	"feasible"
.LASF63:
	.string	"arc_tmp"
.LASF55:
	.string	"orientation"
.LASF50:
	.string	"flow_t"
.LASF45:
	.string	"_pos"
.LASF98:
	.string	"stop_nodes"
.LASF112:
	.string	"operational_cost"
.LASF23:
	.string	"_IO_save_end"
.LASF107:
	.string	"stop"
.LASF46:
	.string	"float"
.LASF105:
	.string	"checksum"
.LASF117:
	.string	"red_cost"
.LASF89:
	.string	"perturbed"
.LASF49:
	.string	"long long unsigned int"
.LASF102:
	.string	"stop_dummy"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF56:
	.string	"child"
.LASF67:
	.string	"time"
.LASF26:
	.string	"_fileno"
.LASF58:
	.string	"sibling"
.LASF87:
	.string	"primal_unbounded"
.LASF7:
	.string	"size_t"
.LASF15:
	.string	"_IO_read_base"
.LASF43:
	.string	"_next"
.LASF99:
	.string	"arcs"
.LASF70:
	.string	"cost"
.LASF114:
	.string	"primal_feasible"
.LASF83:
	.string	"m_org"
.LASF76:
	.string	"org_cost"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF42:
	.string	"_IO_marker"
.LASF118:
	.string	"getfree"
.LASF13:
	.string	"_IO_read_ptr"
.LASF73:
	.string	"ident"
.LASF60:
	.string	"basic_arc"
.LASF68:
	.string	"node_p"
.LASF52:
	.string	"node_t"
.LASF51:
	.string	"cost_t"
.LASF110:
	.string	"flow_cost"
.LASF86:
	.string	"max_new_m"
.LASF16:
	.string	"_IO_write_base"
.LASF48:
	.string	"long long int"
.LASF21:
	.string	"_IO_save_base"
.LASF65:
	.string	"depth"
.LASF111:
	.string	"fleet"
.LASF77:
	.string	"arc_p"
.LASF69:
	.string	"arc_t"
.LASF123:
	.string	"refresh_neighbour_lists"
.LASF95:
	.string	"optcost"
.LASF75:
	.string	"nextin"
.LASF100:
	.string	"stop_arcs"
.LASF124:
	.string	"DUAL_INFEAS"
.LASF116:
	.string	"dual_feasible"
.LASF62:
	.string	"firstin"
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
.LASF94:
	.string	"bigM"
.LASF30:
	.string	"_vtable_offset"
.LASF88:
	.string	"dual_unbounded"
.LASF85:
	.string	"max_residual_new_m"
.LASF64:
	.string	"flow"
.LASF119:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF108:
	.string	"root"
.LASF84:
	.string	"m_impl"
.LASF14:
	.string	"_IO_read_end"
.LASF79:
	.string	"inputfile"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF92:
	.string	"feas_tol"
.LASF61:
	.string	"firstout"
.LASF53:
	.string	"node"
.LASF80:
	.string	"clustfile"
.LASF81:
	.string	"n_trips"
.LASF78:
	.string	"network"
.LASF66:
	.string	"number"
.LASF32:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF96:
	.string	"ignore_impl"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF59:
	.string	"sibling_prev"
.LASF113:
	.string	"flow_org_cost"
.LASF74:
	.string	"nextout"
.LASF1:
	.string	"unsigned char"
.LASF104:
	.string	"bound_exchanges"
.LASF44:
	.string	"_sbuf"
.LASF17:
	.string	"_IO_write_ptr"
.LASF71:
	.string	"tail"
.LASF101:
	.string	"dummy_arcs"
.LASF82:
	.string	"max_m"
.LASF121:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF103:
	.string	"iterations"
.LASF106:
	.string	"network_t"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF47:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF91:
	.string	"opt_tol"
.LASF54:
	.string	"potential"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
