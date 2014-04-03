	.file	"setup.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# setup.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	gf,8,8
	.comm	par_buf,640,32
	.section	.rodata
.LC0:
	.string	"Made lattice"
.LC1:
	.string	"Made nn gathers"
.LC2:
	.string	"Made 3nn gathers"
.LC3:
	.string	"Finished setup"
	.text
	.globl	setup
	.type	setup, @function
setup:
.LFB2:
	.file 1 "setup.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 45 0
	movl	$0, %eax	#,
	call	initial_set	#
	movl	%eax, -4(%rbp)	# tmp73, prompt
	.loc 1 47 0
	movl	$0, %eax	#,
	call	mynode	#
	movl	volume(%rip), %edx	# volume, volume.0
	addl	%eax, %edx	# D.5424, D.5424
	movl	iseed(%rip), %eax	# iseed, iseed.1
	movl	%eax, %esi	# iseed.1,
	movl	$node_prn, %edi	#,
	call	initialize_prn	#
	.loc 1 49 0
	call	setup_layout	#
	.loc 1 51 0
	movl	$0, %eax	#,
	call	make_lattice	#
	.loc 1 52 0
	movl	this_node(%rip), %eax	# this_node, this_node.2
	testl	%eax, %eax	# this_node.2
	jne	.L2	#,
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	$.LC0, %edi	#,
	call	puts	#
.L2:
	.loc 1 52 0 discriminator 2
	movq	stdout(%rip), %rax	# stdout, stdout.3
	movq	%rax, %rdi	# stdout.3,
	call	fflush	#
	.loc 1 55 0 is_stmt 1 discriminator 2
	movl	$0, %eax	#,
	call	make_nn_gathers	#
	.loc 1 56 0 discriminator 2
	movl	this_node(%rip), %eax	# this_node, this_node.4
	testl	%eax, %eax	# this_node.4
	jne	.L3	#,
	.loc 1 56 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	puts	#
.L3:
	.loc 1 56 0 discriminator 2
	movq	stdout(%rip), %rax	# stdout, stdout.5
	movq	%rax, %rdi	# stdout.5,
	call	fflush	#
	.loc 1 59 0 is_stmt 1 discriminator 2
	movl	$0, %eax	#,
	call	make_3n_gathers	#
	.loc 1 60 0 discriminator 2
	movl	this_node(%rip), %eax	# this_node, this_node.6
	testl	%eax, %eax	# this_node.6
	jne	.L4	#,
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	call	puts	#
.L4:
	.loc 1 60 0 discriminator 2
	movq	stdout(%rip), %rax	# stdout, stdout.7
	movq	%rax, %rdi	# stdout.7,
	call	fflush	#
	.loc 1 62 0 is_stmt 1 discriminator 2
	movl	$0, %eax	#,
	call	phaseset	#
	.loc 1 64 0 discriminator 2
	movl	this_node(%rip), %eax	# this_node, this_node.8
	testl	%eax, %eax	# this_node.8
	jne	.L5	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	call	puts	#
.L5:
	.loc 1 64 0 discriminator 2
	movq	stdout(%rip), %rax	# stdout, stdout.9
	movq	%rax, %rdi	# stdout.9,
	call	fflush	#
	.loc 1 65 0 is_stmt 1 discriminator 2
	movl	-4(%rbp), %eax	# prompt, D.5424
	.loc 1 66 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	setup, .-setup
	.section	.rodata
.LC4:
	.string	"SU3 with improved KS action"
	.align 8
.LC5:
	.string	"Microcanonical simulation with refreshing"
.LC6:
	.string	"MIMD version 6"
.LC7:
	.string	"Machine = %s, with %d nodes\n"
.LC8:
	.string	"R algorithm"
.LC9:
	.string	"nflavors"
.LC10:
	.string	"nx"
.LC11:
	.string	"ny"
.LC12:
	.string	"nz"
.LC13:
	.string	"nt"
.LC14:
	.string	"iseed"
	.text
	.globl	initial_set
	.type	initial_set, @function
initial_set:
.LFB3:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 73 0
	movl	$0, %eax	#,
	call	mynode	#
	testl	%eax, %eax	# D.5429
	jne	.L8	#,
	.loc 1 75 0
	movl	$.LC4, %edi	#,
	call	puts	#
	.loc 1 76 0
	movl	$.LC5, %edi	#,
	call	puts	#
	.loc 1 77 0
	movl	$.LC6, %edi	#,
	call	puts	#
	.loc 1 78 0
	movl	$0, %eax	#,
	call	numnodes	#
	movl	%eax, %ebx	#, D.5429
	movl	$0, %eax	#,
	call	machine_type	#
	movl	%ebx, %edx	# D.5429,
	movq	%rax, %rsi	# D.5430,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 85 0
	movl	$.LC8, %edi	#,
	call	puts	#
	.loc 1 90 0
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	get_prompt	#
	movl	%eax, -20(%rbp)	# tmp93, status
	.loc 1 91 0
	cmpl	$0, -20(%rbp)	#, status
	jne	.L9	#,
	.loc 1 91 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, prompt.10
	movl	$par_buf+24, %edx	#,
	movl	$.LC9, %esi	#,
	movl	%eax, %edi	# prompt.10,
	call	get_i	#
	addl	%eax, -20(%rbp)	# D.5429, status
.L9:
	.loc 1 98 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, status
	jne	.L10	#,
	.loc 1 98 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, prompt.11
	movl	$par_buf+4, %edx	#,
	movl	$.LC10, %esi	#,
	movl	%eax, %edi	# prompt.11,
	call	get_i	#
	addl	%eax, -20(%rbp)	# D.5429, status
.L10:
	.loc 1 99 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, status
	jne	.L11	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, prompt.12
	movl	$par_buf+8, %edx	#,
	movl	$.LC11, %esi	#,
	movl	%eax, %edi	# prompt.12,
	call	get_i	#
	addl	%eax, -20(%rbp)	# D.5429, status
.L11:
	.loc 1 100 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, status
	jne	.L12	#,
	.loc 1 100 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, prompt.13
	movl	$par_buf+12, %edx	#,
	movl	$.LC12, %esi	#,
	movl	%eax, %edi	# prompt.13,
	call	get_i	#
	addl	%eax, -20(%rbp)	# D.5429, status
.L12:
	.loc 1 101 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, status
	jne	.L13	#,
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, prompt.14
	movl	$par_buf+16, %edx	#,
	movl	$.LC13, %esi	#,
	movl	%eax, %edi	# prompt.14,
	call	get_i	#
	addl	%eax, -20(%rbp)	# D.5429, status
.L13:
	.loc 1 102 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, status
	jne	.L14	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# prompt, prompt.15
	movl	$par_buf+20, %edx	#,
	movl	$.LC14, %esi	#,
	movl	%eax, %edi	# prompt.15,
	call	get_i	#
	addl	%eax, -20(%rbp)	# D.5429, status
.L14:
	.loc 1 104 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, status
	jle	.L15	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movl	$1, par_buf(%rip)	#, par_buf.stopflag
	jmp	.L8	#
.L15:
	.loc 1 104 0 discriminator 2
	movl	$0, par_buf(%rip)	#, par_buf.stopflag
.L8:
	.loc 1 108 0 is_stmt 1
	movl	$640, %esi	#,
	movl	$par_buf, %edi	#,
	call	broadcast_bytes	#
	.loc 1 110 0
	movl	par_buf(%rip), %eax	# par_buf.stopflag, D.5429
	testl	%eax, %eax	# D.5429
	je	.L16	#,
	.loc 1 111 0
	movl	$0, %edi	#,
	call	normal_exit	#
.L16:
	.loc 1 113 0
	movl	par_buf+4(%rip), %eax	# par_buf.nx, nx.16
	movl	%eax, nx(%rip)	# nx.16, nx
	.loc 1 114 0
	movl	par_buf+8(%rip), %eax	# par_buf.ny, ny.17
	movl	%eax, ny(%rip)	# ny.17, ny
	.loc 1 115 0
	movl	par_buf+12(%rip), %eax	# par_buf.nz, nz.18
	movl	%eax, nz(%rip)	# nz.18, nz
	.loc 1 116 0
	movl	par_buf+16(%rip), %eax	# par_buf.nt, nt.19
	movl	%eax, nt(%rip)	# nt.19, nt
	.loc 1 117 0
	movl	par_buf+20(%rip), %eax	# par_buf.iseed, iseed.20
	movl	%eax, iseed(%rip)	# iseed.20, iseed
	.loc 1 118 0
	movl	par_buf+24(%rip), %eax	# par_buf.nflavors, nflavors.21
	movl	%eax, nflavors(%rip)	# nflavors.21, nflavors
	.loc 1 120 0
	movl	$0, %eax	#,
	call	mynode	#
	movl	%eax, this_node(%rip)	# this_node.22, this_node
	.loc 1 121 0
	movl	$0, %eax	#,
	call	numnodes	#
	movl	%eax, number_of_nodes(%rip)	# number_of_nodes.23, number_of_nodes
	.loc 1 122 0
	movl	nx(%rip), %edx	# nx, nx.24
	movl	ny(%rip), %eax	# ny, ny.25
	imull	%eax, %edx	# ny.25, D.5429
	movl	nz(%rip), %eax	# nz, nz.26
	imull	%eax, %edx	# nz.26, D.5429
	movl	nt(%rip), %eax	# nt, nt.27
	imull	%edx, %eax	# D.5429, volume.28
	movl	%eax, volume(%rip)	# volume.28, volume
	.loc 1 123 0
	movl	$0, total_iters(%rip)	#, total_iters
	.loc 1 124 0
	movl	-24(%rbp), %eax	# prompt, D.5429
	.loc 1 125 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	initial_set, .-initial_set
	.section	.rodata
.LC15:
	.string	"\n"
.LC16:
	.string	"warms"
.LC17:
	.string	"trajecs"
.LC18:
	.string	"traj_between_meas"
.LC19:
	.string	"beta"
.LC20:
	.string	"mass"
.LC21:
	.string	"u0"
.LC22:
	.string	"microcanonical_time_step"
.LC23:
	.string	"steps_per_trajectory"
.LC24:
	.string	"max_cg_iterations"
.LC25:
	.string	"error_per_site"
.LC26:
	.string	"error_for_propagator"
	.text
	.globl	readin
	.type	readin, @function
readin:
.LFB4:
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# prompt, prompt
	.loc 1 136 0
	movl	this_node(%rip), %eax	# this_node, this_node.29
	testl	%eax, %eax	# this_node.29
	jne	.L19	#,
	.loc 1 138 0
	movl	$.LC15, %edi	#,
	call	puts	#
	.loc 1 139 0
	movl	$0, -12(%rbp)	#, status
	.loc 1 142 0
	cmpl	$0, -12(%rbp)	#, status
	jne	.L20	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp99
	movl	$par_buf+28, %edx	#,
	movl	$.LC16, %esi	#,
	movl	%eax, %edi	# tmp99,
	call	get_i	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L20:
	.loc 1 143 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L21	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp100
	movl	$par_buf+32, %edx	#,
	movl	$.LC17, %esi	#,
	movl	%eax, %edi	# tmp100,
	call	get_i	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L21:
	.loc 1 146 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L22	#,
	.loc 1 147 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp101
	movl	$par_buf+40, %edx	#,
	movl	$.LC18, %esi	#,
	movl	%eax, %edi	# tmp101,
	call	get_i	#
	.loc 1 146 0 discriminator 1
	addl	%eax, -12(%rbp)	# D.5442, status
.L22:
	.loc 1 151 0
	cmpl	$0, -12(%rbp)	#, status
	jne	.L23	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp102
	movl	$par_buf+48, %edx	#,
	movl	$.LC19, %esi	#,
	movl	%eax, %edi	# tmp102,
	call	get_f	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L23:
	.loc 1 152 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L24	#,
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp103
	movl	$par_buf+56, %edx	#,
	movl	$.LC20, %esi	#,
	movl	%eax, %edi	# tmp103,
	call	get_f	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L24:
	.loc 1 153 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L25	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp104
	movl	$par_buf+64, %edx	#,
	movl	$.LC21, %esi	#,
	movl	%eax, %edi	# tmp104,
	call	get_f	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L25:
	.loc 1 156 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L26	#,
	.loc 1 157 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp105
	movl	$par_buf+96, %edx	#,
	movl	$.LC22, %esi	#,
	movl	%eax, %edi	# tmp105,
	call	get_f	#
	.loc 1 156 0 discriminator 1
	addl	%eax, -12(%rbp)	# D.5442, status
.L26:
	.loc 1 160 0
	cmpl	$0, -12(%rbp)	#, status
	jne	.L27	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp106
	movl	$par_buf+36, %edx	#,
	movl	$.LC23, %esi	#,
	movl	%eax, %edi	# tmp106,
	call	get_i	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L27:
	.loc 1 163 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L28	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp107
	movl	$par_buf+72, %edx	#,
	movl	$.LC24, %esi	#,
	movl	%eax, %edi	# tmp107,
	call	get_i	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L28:
	.loc 1 166 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L29	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	leaq	-8(%rbp), %rdx	#, tmp108
	movl	-20(%rbp), %eax	# prompt, tmp109
	movl	$.LC25, %esi	#,
	movl	%eax, %edi	# tmp109,
	call	get_f	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L29:
	.loc 1 167 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L30	#,
	.loc 1 167 0 is_stmt 0 discriminator 1
	movsd	-8(%rbp), %xmm1	# x, x.30
	movsd	-8(%rbp), %xmm0	# x, x.31
	mulsd	%xmm1, %xmm0	# x.30, D.5443
	movsd	%xmm0, par_buf+80(%rip)	# D.5443, par_buf.rsqmin
.L30:
	.loc 1 171 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L31	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	leaq	-8(%rbp), %rdx	#, tmp110
	movl	-20(%rbp), %eax	# prompt, tmp111
	movl	$.LC26, %esi	#,
	movl	%eax, %edi	# tmp111,
	call	get_f	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L31:
	.loc 1 172 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L32	#,
	.loc 1 172 0 is_stmt 0 discriminator 1
	movsd	-8(%rbp), %xmm1	# x, x.32
	movsd	-8(%rbp), %xmm0	# x, x.33
	mulsd	%xmm1, %xmm0	# x.32, D.5443
	movsd	%xmm0, par_buf+88(%rip)	# D.5443, par_buf.rsqprop
.L32:
	.loc 1 182 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L33	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp112
	movl	$par_buf+124, %edx	#,
	movl	$par_buf+116, %esi	#,
	movl	%eax, %edi	# tmp112,
	call	ask_starting_lattice	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L33:
	.loc 1 186 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jne	.L34	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# prompt, tmp113
	movl	$par_buf+380, %edx	#,
	movl	$par_buf+120, %esi	#,
	movl	%eax, %edi	# tmp113,
	call	ask_ending_lattice	#
	addl	%eax, -12(%rbp)	# D.5442, status
.L34:
	.loc 1 189 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, status
	jle	.L35	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	movl	$1, par_buf(%rip)	#, par_buf.stopflag
	jmp	.L19	#
.L35:
	.loc 1 189 0 discriminator 2
	movl	$0, par_buf(%rip)	#, par_buf.stopflag
.L19:
	.loc 1 193 0 is_stmt 1
	movl	$640, %esi	#,
	movl	$par_buf, %edi	#,
	call	broadcast_bytes	#
	.loc 1 195 0
	movl	par_buf(%rip), %eax	# par_buf.stopflag, D.5442
	testl	%eax, %eax	# D.5442
	je	.L36	#,
	.loc 1 196 0
	movl	$0, %edi	#,
	call	normal_exit	#
.L36:
	.loc 1 198 0
	movl	par_buf+28(%rip), %eax	# par_buf.warms, warms.34
	movl	%eax, warms(%rip)	# warms.34, warms
	.loc 1 199 0
	movl	par_buf+32(%rip), %eax	# par_buf.trajecs, trajecs.35
	movl	%eax, trajecs(%rip)	# trajecs.35, trajecs
	.loc 1 200 0
	movl	par_buf+36(%rip), %eax	# par_buf.steps, steps.36
	movl	%eax, steps(%rip)	# steps.36, steps
	.loc 1 201 0
	movl	par_buf+40(%rip), %eax	# par_buf.propinterval, propinterval.37
	movl	%eax, propinterval(%rip)	# propinterval.37, propinterval
	.loc 1 202 0
	movl	par_buf+72(%rip), %eax	# par_buf.niter, niter.38
	movl	%eax, niter(%rip)	# niter.38, niter
	.loc 1 203 0
	movq	par_buf+80(%rip), %rax	# par_buf.rsqmin, rsqmin.39
	movq	%rax, rsqmin(%rip)	# rsqmin.39, rsqmin
	.loc 1 204 0
	movq	par_buf+88(%rip), %rax	# par_buf.rsqprop, rsqprop.40
	movq	%rax, rsqprop(%rip)	# rsqprop.40, rsqprop
	.loc 1 205 0
	movq	par_buf+96(%rip), %rax	# par_buf.epsilon, epsilon.41
	movq	%rax, epsilon(%rip)	# epsilon.41, epsilon
	.loc 1 206 0
	movq	par_buf+48(%rip), %rax	# par_buf.beta, beta.42
	movq	%rax, beta(%rip)	# beta.42, beta
	.loc 1 207 0
	movq	par_buf+56(%rip), %rax	# par_buf.mass, mass.43
	movq	%rax, mass(%rip)	# mass.43, mass
	.loc 1 208 0
	movq	par_buf+64(%rip), %rax	# par_buf.u0, u0.44
	movq	%rax, u0(%rip)	# u0.44, u0
	.loc 1 214 0
	movl	par_buf+116(%rip), %eax	# par_buf.startflag, startflag.45
	movl	%eax, startflag(%rip)	# startflag.45, startflag
	.loc 1 215 0
	movl	par_buf+120(%rip), %eax	# par_buf.saveflag, saveflag.46
	movl	%eax, saveflag(%rip)	# saveflag.46, saveflag
	.loc 1 216 0
	movl	$par_buf+124, %esi	#,
	movl	$startfile, %edi	#,
	call	strcpy	#
	.loc 1 217 0
	movl	$par_buf+380, %esi	#,
	movl	$savefile, %edi	#,
	call	strcpy	#
	.loc 1 220 0
	movl	startflag(%rip), %eax	# startflag, startflag.47
	cmpl	$10, %eax	#, startflag.47
	jne	.L37	#,
	.loc 1 221 0
	movl	$0, %edi	#,
	call	rephase	#
.L37:
	.loc 1 223 0
	movl	startflag(%rip), %eax	# startflag, startflag.48
	movl	$startfile, %esi	#,
	movl	%eax, %edi	# startflag.48,
	call	reload_lattice	#
	movq	%rax, startlat_p(%rip)	# startlat_p.49, startlat_p
	.loc 1 225 0
	movl	$0, valid_longlinks(%rip)	#, valid_longlinks
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.50
	movl	%eax, valid_fatlinks(%rip)	# valid_longlinks.50, valid_fatlinks
	.loc 1 226 0
	movl	$0, phases_in(%rip)	#, phases_in
	.loc 1 227 0
	movl	$1, %edi	#,
	call	rephase	#
	.loc 1 230 0
	movl	$0, %eax	#,
	call	make_loop_table	#
	.loc 1 232 0
	movl	$0, %eax	#,
	call	make_path_table	#
	.loc 1 234 0
	movl	$0, %eax	#, D.5442
	.loc 1 235 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	readin, .-readin
	.globl	make_3n_gathers
	.type	make_3n_gathers, @function
make_3n_gathers:
.LFB5:
	.loc 1 241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 245 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L40	#
.L41:
	.loc 1 246 0 discriminator 2
	leaq	-4(%rbp), %rax	#, tmp62
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp62,
	movl	$third_neighbor, %edi	#,
	call	make_gather	#
	.loc 1 245 0 discriminator 2
	movl	-4(%rbp), %eax	# i, i.51
	addl	$1, %eax	#, i.52
	movl	%eax, -4(%rbp)	# i.52, i
.L40:
	.loc 1 245 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, i.53
	cmpl	$3, %eax	#, i.53
	jle	.L41	#,
	.loc 1 253 0 is_stmt 1
	movl	$8, %edi	#,
	call	sort_eight_neighborlists	#
	.loc 1 254 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	make_3n_gathers, .-make_3n_gathers
	.section	.rodata
.LC27:
	.string	"third_neighb: bad direction"
	.text
	.globl	third_neighbor
	.type	third_neighbor, @function
third_neighbor:
.LFB6:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movl	%edx, -28(%rbp)	# z, z
	movl	%ecx, -32(%rbp)	# t, t
	movq	%r8, -40(%rbp)	# dirpt, dirpt
	movl	%r9d, -44(%rbp)	# FB, FB
	.loc 1 266 0
	cmpl	$1, -44(%rbp)	#, FB
	jne	.L43	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# dirpt, tmp97
	movl	(%rax), %eax	# *dirpt_3(D), iftmp.54
	jmp	.L44	#
.L43:
	.loc 1 266 0 discriminator 2
	movq	-40(%rbp), %rax	# dirpt, tmp98
	movl	(%rax), %eax	# *dirpt_3(D), D.5456
	movl	$7, %edx	#, tmp99
	subl	%eax, %edx	# D.5456, iftmp.54
	movl	%edx, %eax	# iftmp.54, iftmp.54
.L44:
	.loc 1 266 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.54, dir
	.loc 1 267 0 is_stmt 1 discriminator 3
	movq	16(%rbp), %rax	# xp, tmp100
	movl	-20(%rbp), %edx	# x, tmp101
	movl	%edx, (%rax)	# tmp101, *xp_8(D)
	movq	24(%rbp), %rax	# yp, tmp102
	movl	-24(%rbp), %edx	# y, tmp103
	movl	%edx, (%rax)	# tmp103, *yp_10(D)
	movq	32(%rbp), %rax	# zp, tmp104
	movl	-28(%rbp), %edx	# z, tmp105
	movl	%edx, (%rax)	# tmp105, *zp_12(D)
	movq	40(%rbp), %rax	# tp, tmp106
	movl	-32(%rbp), %edx	# t, tmp107
	movl	%edx, (%rax)	# tmp107, *tp_14(D)
	.loc 1 268 0 discriminator 3
	cmpl	$7, -4(%rbp)	#, dir
	ja	.L45	#,
	movl	-4(%rbp), %eax	# dir, tmp108
	movq	.L47(,%rax,8), %rax	#, tmp109
	jmp	*%rax	# tmp109
	.section	.rodata
	.align 8
	.align 4
.L47:
	.quad	.L46
	.quad	.L48
	.quad	.L49
	.quad	.L50
	.quad	.L51
	.quad	.L52
	.quad	.L53
	.quad	.L54
	.text
.L46:
	.loc 1 269 0
	movl	-20(%rbp), %eax	# x, tmp110
	addl	$3, %eax	#, D.5456
	movl	nx(%rip), %ecx	# nx, nx.55
	cltd
	idivl	%ecx	# nx.55
	movq	16(%rbp), %rax	# xp, tmp113
	movl	%edx, (%rax)	# D.5456, *xp_8(D)
	jmp	.L42	#
.L54:
	.loc 1 270 0
	movl	nx(%rip), %eax	# nx, nx.56
	leal	0(,%rax,4), %edx	#, D.5456
	movl	-20(%rbp), %eax	# x, tmp114
	addl	%edx, %eax	# D.5456, D.5456
	subl	$3, %eax	#, D.5456
	movl	nx(%rip), %ecx	# nx, nx.57
	cltd
	idivl	%ecx	# nx.57
	movq	16(%rbp), %rax	# xp, tmp117
	movl	%edx, (%rax)	# D.5456, *xp_8(D)
	jmp	.L42	#
.L48:
	.loc 1 271 0
	movl	-24(%rbp), %eax	# y, tmp118
	addl	$3, %eax	#, D.5456
	movl	ny(%rip), %ecx	# ny, ny.58
	cltd
	idivl	%ecx	# ny.58
	movq	24(%rbp), %rax	# yp, tmp121
	movl	%edx, (%rax)	# D.5456, *yp_10(D)
	jmp	.L42	#
.L53:
	.loc 1 272 0
	movl	ny(%rip), %eax	# ny, ny.59
	leal	0(,%rax,4), %edx	#, D.5456
	movl	-24(%rbp), %eax	# y, tmp122
	addl	%edx, %eax	# D.5456, D.5456
	subl	$3, %eax	#, D.5456
	movl	ny(%rip), %ecx	# ny, ny.60
	cltd
	idivl	%ecx	# ny.60
	movq	24(%rbp), %rax	# yp, tmp125
	movl	%edx, (%rax)	# D.5456, *yp_10(D)
	jmp	.L42	#
.L49:
	.loc 1 273 0
	movl	-28(%rbp), %eax	# z, tmp126
	addl	$3, %eax	#, D.5456
	movl	nz(%rip), %ecx	# nz, nz.61
	cltd
	idivl	%ecx	# nz.61
	movq	32(%rbp), %rax	# zp, tmp129
	movl	%edx, (%rax)	# D.5456, *zp_12(D)
	jmp	.L42	#
.L52:
	.loc 1 274 0
	movl	nz(%rip), %eax	# nz, nz.62
	leal	0(,%rax,4), %edx	#, D.5456
	movl	-28(%rbp), %eax	# z, tmp130
	addl	%edx, %eax	# D.5456, D.5456
	subl	$3, %eax	#, D.5456
	movl	nz(%rip), %ecx	# nz, nz.63
	cltd
	idivl	%ecx	# nz.63
	movq	32(%rbp), %rax	# zp, tmp133
	movl	%edx, (%rax)	# D.5456, *zp_12(D)
	jmp	.L42	#
.L50:
	.loc 1 275 0
	movl	-32(%rbp), %eax	# t, tmp134
	addl	$3, %eax	#, D.5456
	movl	nt(%rip), %ecx	# nt, nt.64
	cltd
	idivl	%ecx	# nt.64
	movq	40(%rbp), %rax	# tp, tmp137
	movl	%edx, (%rax)	# D.5456, *tp_14(D)
	jmp	.L42	#
.L51:
	.loc 1 276 0
	movl	nt(%rip), %eax	# nt, nt.65
	leal	0(,%rax,4), %edx	#, D.5456
	movl	-32(%rbp), %eax	# t, tmp138
	addl	%edx, %eax	# D.5456, D.5456
	subl	$3, %eax	#, D.5456
	movl	nt(%rip), %ecx	# nt, nt.66
	cltd
	idivl	%ecx	# nt.66
	movq	40(%rbp), %rax	# tp, tmp141
	movl	%edx, (%rax)	# D.5456, *tp_14(D)
	jmp	.L42	#
.L45:
	.loc 1 277 0
	movl	$.LC27, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	exit	#
.L42:
	.loc 1 279 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	third_neighbor, .-third_neighbor
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "random.h"
	.file 7 "int32type.h"
	.file 8 "io_lat.h"
	.file 9 "params.h"
	.file 10 "lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x931
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0x1
	.long	.LASF114
	.long	.LASF115
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8c
	.long	0x77
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x8d
	.long	0x77
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x54
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
	.long	0x4d
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x96
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x96
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x96
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x96
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x96
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x96
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x96
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x96
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
	.long	0x4d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x4d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x7e
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
	.long	0x69
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
	.long	0x89
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x94
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x94
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x94
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x94
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
	.long	0x4d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF116
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
	.long	0x4d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x54
	.long	0x27c
	.uleb128 0xc
	.long	0x3f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x54
	.long	0x292
	.uleb128 0xc
	.long	0x3f
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d
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
	.uleb128 0xd
	.byte	0x58
	.byte	0x6
	.byte	0x6
	.long	0x33a
	.uleb128 0xe
	.string	"r0"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0xa
	.long	0x2ad
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0xb
	.long	0x2b4
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x1f
	.long	0x4d
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x20
	.long	0x62
	.uleb128 0xd
	.byte	0x5c
	.byte	0x8
	.byte	0x41
	.long	0x3a0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x42
	.long	0x345
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x43
	.long	0x3a0
	.byte	0x4
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x47
	.long	0x3b0
	.byte	0x44
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x48
	.long	0x345
	.byte	0x54
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x4a
	.long	0x345
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	0x54
	.long	0x3b0
	.uleb128 0xc
	.long	0x3f
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x345
	.long	0x3c0
	.uleb128 0xc
	.long	0x3f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x50
	.long	0x35b
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x60
	.long	0x3ec
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x61
	.long	0x350
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x62
	.long	0x350
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x63
	.long	0x3cb
	.uleb128 0xd
	.byte	0x38
	.byte	0x8
	.byte	0xfe
	.long	0x459
	.uleb128 0xe
	.string	"fp"
	.byte	0x8
	.byte	0xff
	.long	0x459
	.byte	0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.value	0x100
	.long	0x45f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF68
	.byte	0x8
	.value	0x101
	.long	0x96
	.byte	0x10
	.uleb128 0x9
	.long	.LASF69
	.byte	0x8
	.value	0x102
	.long	0x4d
	.byte	0x18
	.uleb128 0x9
	.long	.LASF70
	.byte	0x8
	.value	0x103
	.long	0x465
	.byte	0x20
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.value	0x105
	.long	0x4d
	.byte	0x28
	.uleb128 0x9
	.long	.LASF72
	.byte	0x8
	.value	0x107
	.long	0x3ec
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x3c0
	.uleb128 0x6
	.byte	0x8
	.long	0x345
	.uleb128 0xf
	.long	.LASF73
	.byte	0x8
	.value	0x108
	.long	0x3f7
	.uleb128 0x10
	.value	0x280
	.byte	0x9
	.byte	0x7
	.long	0x5a9
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x8
	.long	0x4d
	.byte	0
	.uleb128 0xe
	.string	"nx"
	.byte	0x9
	.byte	0xa
	.long	0x4d
	.byte	0x4
	.uleb128 0xe
	.string	"ny"
	.byte	0x9
	.byte	0xa
	.long	0x4d
	.byte	0x8
	.uleb128 0xe
	.string	"nz"
	.byte	0x9
	.byte	0xa
	.long	0x4d
	.byte	0xc
	.uleb128 0xe
	.string	"nt"
	.byte	0x9
	.byte	0xa
	.long	0x4d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0xb
	.long	0x4d
	.byte	0x14
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0xc
	.long	0x4d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0xe
	.long	0x4d
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0xf
	.long	0x4d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x10
	.long	0x4d
	.byte	0x24
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x11
	.long	0x4d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0x12
	.long	0x2ad
	.byte	0x30
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0x12
	.long	0x2ad
	.byte	0x38
	.uleb128 0xe
	.string	"u0"
	.byte	0x9
	.byte	0x13
	.long	0x2ad
	.byte	0x40
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x14
	.long	0x4d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x15
	.long	0x2ad
	.byte	0x50
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x15
	.long	0x2ad
	.byte	0x58
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x16
	.long	0x2ad
	.byte	0x60
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x17
	.long	0x4d
	.byte	0x68
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x17
	.long	0x4d
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x17
	.long	0x4d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x18
	.long	0x4d
	.byte	0x74
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x19
	.long	0x4d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x1a
	.long	0x5a9
	.byte	0x7c
	.uleb128 0x11
	.long	.LASF93
	.byte	0x9
	.byte	0x1a
	.long	0x5a9
	.value	0x17c
	.byte	0
	.uleb128 0xb
	.long	0x54
	.long	0x5b9
	.uleb128 0xc
	.long	0x3f
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF94
	.byte	0x9
	.byte	0x1b
	.long	0x477
	.uleb128 0x12
	.long	.LASF95
	.byte	0x1
	.byte	0x27
	.long	0x4d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x612
	.uleb128 0x13
	.long	.LASF96
	.byte	0x1
	.byte	0x28
	.long	0x4d
	.long	0x5f6
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.byte	0x29
	.long	0x603
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.long	.LASF97
	.byte	0x1
	.byte	0x2a
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF96
	.byte	0x1
	.byte	0x46
	.long	0x4d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x650
	.uleb128 0x16
	.long	.LASF97
	.byte	0x1
	.byte	0x47
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.byte	0x47
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x17
	.long	.LASF117
	.byte	0x1
	.byte	0x80
	.long	0x4d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x69a
	.uleb128 0x18
	.long	.LASF97
	.byte	0x1
	.byte	0x80
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.byte	0x84
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x85
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.byte	0xf1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fe
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xf2
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.byte	0xf3
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x292
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x292
	.uleb128 0x1c
	.long	0x292
	.uleb128 0x1c
	.long	0x292
	.uleb128 0x1c
	.long	0x292
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.value	0x104
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b5
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x104
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.value	0x104
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"z"
	.byte	0x1
	.value	0x104
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.value	0x104
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF101
	.byte	0x1
	.value	0x104
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"FB"
	.byte	0x1
	.value	0x104
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.string	"xp"
	.byte	0x1
	.value	0x104
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"yp"
	.byte	0x1
	.value	0x104
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.string	"zp"
	.byte	0x1
	.value	0x104
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"tp"
	.byte	0x1
	.value	0x104
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.string	"dir"
	.byte	0x1
	.value	0x109
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF102
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x22
	.string	"nx"
	.byte	0xa
	.byte	0x74
	.long	0x4d
	.uleb128 0x22
	.string	"ny"
	.byte	0xa
	.byte	0x74
	.long	0x4d
	.uleb128 0x22
	.string	"nz"
	.byte	0xa
	.byte	0x74
	.long	0x4d
	.uleb128 0x22
	.string	"nt"
	.byte	0xa
	.byte	0x74
	.long	0x4d
	.uleb128 0x21
	.long	.LASF103
	.byte	0xa
	.byte	0x75
	.long	0x4d
	.uleb128 0x21
	.long	.LASF75
	.byte	0xa
	.byte	0x76
	.long	0x4d
	.uleb128 0x21
	.long	.LASF77
	.byte	0xa
	.byte	0x77
	.long	0x4d
	.uleb128 0x21
	.long	.LASF78
	.byte	0xa
	.byte	0x77
	.long	0x4d
	.uleb128 0x21
	.long	.LASF79
	.byte	0xa
	.byte	0x77
	.long	0x4d
	.uleb128 0x21
	.long	.LASF83
	.byte	0xa
	.byte	0x77
	.long	0x4d
	.uleb128 0x21
	.long	.LASF80
	.byte	0xa
	.byte	0x77
	.long	0x4d
	.uleb128 0x21
	.long	.LASF76
	.byte	0xa
	.byte	0x77
	.long	0x4d
	.uleb128 0x21
	.long	.LASF86
	.byte	0xa
	.byte	0x78
	.long	0x2ad
	.uleb128 0x21
	.long	.LASF81
	.byte	0xa
	.byte	0x79
	.long	0x2ad
	.uleb128 0x21
	.long	.LASF82
	.byte	0xa
	.byte	0x79
	.long	0x2ad
	.uleb128 0x22
	.string	"u0"
	.byte	0xa
	.byte	0x79
	.long	0x2ad
	.uleb128 0x21
	.long	.LASF84
	.byte	0xa
	.byte	0x7a
	.long	0x2ad
	.uleb128 0x21
	.long	.LASF85
	.byte	0xa
	.byte	0x7a
	.long	0x2ad
	.uleb128 0x21
	.long	.LASF90
	.byte	0xa
	.byte	0x7b
	.long	0x4d
	.uleb128 0x21
	.long	.LASF91
	.byte	0xa
	.byte	0x7d
	.long	0x4d
	.uleb128 0x21
	.long	.LASF92
	.byte	0xa
	.byte	0x7f
	.long	0x5a9
	.uleb128 0x21
	.long	.LASF93
	.byte	0xa
	.byte	0x7f
	.long	0x5a9
	.uleb128 0x21
	.long	.LASF104
	.byte	0xa
	.byte	0x80
	.long	0x4d
	.uleb128 0x21
	.long	.LASF105
	.byte	0xa
	.byte	0x81
	.long	0x4d
	.uleb128 0x21
	.long	.LASF106
	.byte	0xa
	.byte	0x8a
	.long	0x4d
	.uleb128 0x21
	.long	.LASF107
	.byte	0xa
	.byte	0x8b
	.long	0x4d
	.uleb128 0x21
	.long	.LASF108
	.byte	0xa
	.byte	0x8e
	.long	0x4d
	.uleb128 0x21
	.long	.LASF109
	.byte	0xa
	.byte	0x8f
	.long	0x4d
	.uleb128 0x21
	.long	.LASF110
	.byte	0xa
	.byte	0x91
	.long	0x8fa
	.uleb128 0x6
	.byte	0x8
	.long	0x46b
	.uleb128 0x21
	.long	.LASF111
	.byte	0xa
	.byte	0x95
	.long	0x33a
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.byte	0x19
	.long	0x8fa
	.uleb128 0x9
	.byte	0x3
	.quad	gf
	.uleb128 0x24
	.long	.LASF112
	.byte	0x1
	.byte	0x25
	.long	0x5b9
	.uleb128 0x9
	.byte	0x3
	.quad	par_buf
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
.LASF94:
	.string	"params"
.LASF32:
	.string	"_shortbuf"
.LASF116:
	.string	"_IO_lock_t"
.LASF61:
	.string	"header_bytes"
.LASF115:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF21:
	.string	"_IO_buf_end"
.LASF19:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF13:
	.string	"_flags"
.LASF72:
	.string	"check"
.LASF25:
	.string	"_markers"
.LASF60:
	.string	"dims"
.LASF78:
	.string	"trajecs"
.LASF46:
	.string	"_pos"
.LASF102:
	.string	"stdout"
.LASF24:
	.string	"_IO_save_end"
.LASF79:
	.string	"steps"
.LASF103:
	.string	"volume"
.LASF49:
	.string	"float"
.LASF69:
	.string	"byterevflag"
.LASF74:
	.string	"stopflag"
.LASF104:
	.string	"total_iters"
.LASF93:
	.string	"savefile"
.LASF48:
	.string	"long long unsigned int"
.LASF106:
	.string	"number_of_nodes"
.LASF71:
	.string	"parallel"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF99:
	.string	"make_3n_gathers"
.LASF97:
	.string	"prompt"
.LASF9:
	.string	"size_t"
.LASF53:
	.string	"ic_state"
.LASF16:
	.string	"_IO_read_base"
.LASF114:
	.string	"setup.c"
.LASF107:
	.string	"this_node"
.LASF58:
	.string	"magic_number"
.LASF44:
	.string	"_next"
.LASF101:
	.string	"dirpt"
.LASF86:
	.string	"epsilon"
.LASF108:
	.string	"valid_longlinks"
.LASF89:
	.string	"n_sources"
.LASF3:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF112:
	.string	"par_buf"
.LASF68:
	.string	"filename"
.LASF43:
	.string	"_IO_marker"
.LASF87:
	.string	"source_start"
.LASF14:
	.string	"_IO_read_ptr"
.LASF62:
	.string	"order"
.LASF111:
	.string	"node_prn"
.LASF98:
	.string	"status"
.LASF105:
	.string	"phases_in"
.LASF52:
	.string	"addend"
.LASF17:
	.string	"_IO_write_base"
.LASF75:
	.string	"iseed"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF92:
	.string	"startfile"
.LASF67:
	.string	"header"
.LASF110:
	.string	"startlat_p"
.LASF85:
	.string	"rsqprop"
.LASF76:
	.string	"nflavors"
.LASF73:
	.string	"gauge_file"
.LASF54:
	.string	"scale"
.LASF63:
	.string	"gauge_header"
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
.LASF82:
	.string	"mass"
.LASF56:
	.string	"int32type"
.LASF31:
	.string	"_vtable_offset"
.LASF113:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF80:
	.string	"propinterval"
.LASF91:
	.string	"saveflag"
.LASF57:
	.string	"u_int32type"
.LASF96:
	.string	"initial_set"
.LASF51:
	.string	"multiplier"
.LASF33:
	.string	"_lock"
.LASF1:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF77:
	.string	"warms"
.LASF84:
	.string	"rsqmin"
.LASF4:
	.string	"unsigned char"
.LASF95:
	.string	"setup"
.LASF65:
	.string	"sum29"
.LASF45:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF81:
	.string	"beta"
.LASF70:
	.string	"rank2rcv"
.LASF55:
	.string	"double_prn"
.LASF59:
	.string	"time_stamp"
.LASF64:
	.string	"sum31"
.LASF100:
	.string	"third_neighbor"
.LASF10:
	.string	"__off_t"
.LASF117:
	.string	"readin"
.LASF6:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF83:
	.string	"niter"
.LASF50:
	.string	"double"
.LASF88:
	.string	"source_inc"
.LASF26:
	.string	"_chain"
.LASF109:
	.string	"valid_fatlinks"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF66:
	.string	"gauge_check"
.LASF30:
	.string	"_cur_column"
.LASF90:
	.string	"startflag"
.LASF11:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
