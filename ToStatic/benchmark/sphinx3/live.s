	.file	"live.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# live.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
	.local	fe
	.comm	fe,8,8
	.comm	kb,8,8
	.local	kbcore
	.comm	kbcore,8,8
	.local	hmmdumpfp
	.comm	hmmdumpfp,8,8
	.local	maxwpf
	.comm	maxwpf,4,4
	.local	maxhistpf
	.comm	maxhistpf,4,4
	.local	maxhmmpf
	.comm	maxhmmpf,4,4
	.local	ptranskip
	.comm	ptranskip,4,4
	.local	parthyp
	.comm	parthyp,8,8
	.local	dummyframe
	.comm	dummyframe,8,8
	.section	.rodata
.LC0:
	.string	"live.c"
.LC1:
	.string	"-hmmdump"
.LC2:
	.string	"-maxwpf"
.LC3:
	.string	"-maxhistpf"
.LC4:
	.string	"-maxhmmpf"
.LC5:
	.string	"-ptranskip"
.LC6:
	.string	"-maxhyplen"
.LC7:
	.string	"-samprate"
.LC8:
	.string	"FATAL_ERROR"
	.align 8
.LC9:
	.string	"Sampling rate %s not supported. Must be 8000 or 16000\n"
.LC10:
	.string	"-lowerf"
.LC11:
	.string	"-upperf"
.LC12:
	.string	"-nfilt"
.LC13:
	.string	"-frate"
.LC14:
	.string	"-alpha"
.LC15:
	.string	"-nfft"
.LC16:
	.string	"-wlen"
	.align 8
.LC17:
	.string	"Front end initialization fe_init() failed\n"
.LC18:
	.string	"-maxcepvecs"
	.text
	.globl	live_initialize_decoder
	.type	live_initialize_decoder, @function
live_initialize_decoder:
.LFB2:
	.file 1 "live.c"
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# live_args, live_args
	.loc 1 87 0
	movq	-56(%rbp), %rax	# live_args, tmp101
	movq	%rax, %rdi	# tmp101,
	call	parse_args_file	#
	.loc 1 88 0
	call	unlimit	#
	.loc 1 89 0
	movl	$live_kb.6129, %edi	#,
	call	kb_init	#
	.loc 1 90 0
	movq	$live_kb.6129, kb(%rip)	#, kb
	.loc 1 91 0
	movq	kb(%rip), %rax	# kb, kb.0
	movq	(%rax), %rax	# kb.0_3->kbcore, kbcore.1
	movq	%rax, kbcore(%rip)	# kbcore.1, kbcore
	.loc 1 93 0
	movq	kb(%rip), %rbx	# kb, kb.2
	movl	$93, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$1, %esi	#,
	movl	$1000, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, 208(%rbx)	# D.6438, kb.2_5->uttid
	.loc 1 94 0
	movl	$.LC1, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_7], D.6440
	testl	%eax, %eax	# D.6440
	je	.L2	#,
	.loc 1 94 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, iftmp.3
	jmp	.L3	#
.L2:
	.loc 1 94 0 discriminator 2
	movl	$0, %eax	#, iftmp.3
.L3:
	.loc 1 94 0 discriminator 3
	movq	%rax, hmmdumpfp(%rip)	# iftmp.3, hmmdumpfp
	.loc 1 95 0 is_stmt 1 discriminator 3
	movl	$.LC2, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_11], maxwpf.4
	movl	%eax, maxwpf(%rip)	# maxwpf.4, maxwpf
	.loc 1 96 0 discriminator 3
	movl	$.LC3, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_13], maxhistpf.5
	movl	%eax, maxhistpf(%rip)	# maxhistpf.5, maxhistpf
	.loc 1 97 0 discriminator 3
	movl	$.LC4, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_15], maxhmmpf.6
	movl	%eax, maxhmmpf(%rip)	# maxhmmpf.6, maxhmmpf
	.loc 1 98 0 discriminator 3
	movl	$.LC5, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_17], ptranskip.7
	movl	%eax, ptranskip(%rip)	# ptranskip.7, ptranskip
	.loc 1 100 0 discriminator 3
	movl	$.LC6, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_19], tmp102
	movl	%eax, -40(%rbp)	# tmp102, maxhyplen
	.loc 1 101 0 discriminator 3
	movq	parthyp(%rip), %rax	# parthyp, parthyp.8
	testq	%rax, %rax	# parthyp.8
	jne	.L4	#,
	.loc 1 102 0
	movl	-40(%rbp), %eax	# maxhyplen, tmp103
	cltq
	movl	$102, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$24, %esi	#,
	movq	%rax, %rdi	# D.6441,
	call	__ckd_calloc__	#
	movq	%rax, parthyp(%rip)	# parthyp.9, parthyp
.L4:
	.loc 1 104 0
	movl	$104, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$120, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp104, fe_param
	.loc 1 105 0
	movl	$.LC7, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_25], tmp105
	movl	%eax, -36(%rbp)	# tmp105, samprate
	.loc 1 106 0
	cmpl	$8000, -36(%rbp)	#, samprate
	je	.L5	#,
	.loc 1 106 0 is_stmt 0 discriminator 1
	cmpl	$16000, -36(%rbp)	#, samprate
	je	.L5	#,
	.loc 1 107 0 is_stmt 1
	movl	$.LC8, %edx	#,
	movl	$107, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-36(%rbp), %eax	# samprate, tmp106
	movl	%eax, %esi	# tmp106,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L5:
	.loc 1 109 0
	cvtsi2ss	-36(%rbp), %xmm0	# samprate, D.6442
	movq	-24(%rbp), %rax	# fe_param, tmp107
	movss	%xmm0, (%rax)	# D.6442, fe_param_24->SAMPLING_RATE
	.loc 1 110 0
	movl	$.LC10, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(float32 *)_28], D.6442
	movq	-24(%rbp), %rdx	# fe_param, tmp108
	movl	%eax, 28(%rdx)	# D.6442, fe_param_24->LOWER_FILT_FREQ
	.loc 1 111 0
	movl	$.LC11, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(float32 *)_30], D.6442
	movq	-24(%rbp), %rdx	# fe_param, tmp109
	movl	%eax, 32(%rdx)	# D.6442, fe_param_24->UPPER_FILT_FREQ
	.loc 1 112 0
	movl	$.LC12, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_32], D.6440
	movq	-24(%rbp), %rax	# fe_param, tmp110
	movl	%edx, 20(%rax)	# D.6440, fe_param_24->NUM_FILTERS
	.loc 1 117 0
	movl	$.LC13, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_34], D.6440
	movq	-24(%rbp), %rax	# fe_param, tmp111
	movl	%edx, 4(%rax)	# D.6440, fe_param_24->FRAME_RATE
	.loc 1 120 0
	movl	$.LC14, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(float32 *)_36], D.6442
	movq	-24(%rbp), %rdx	# fe_param, tmp112
	movl	%eax, 36(%rdx)	# D.6442, fe_param_24->PRE_EMPHASIS_ALPHA
	.loc 1 121 0
	movl	$.LC15, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_38], D.6440
	movq	-24(%rbp), %rax	# fe_param, tmp113
	movl	%edx, 24(%rax)	# D.6440, fe_param_24->FFT_SIZE
	.loc 1 122 0
	movl	$.LC16, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(float32 *)_40], D.6442
	movq	-24(%rbp), %rdx	# fe_param, tmp114
	movl	%eax, 8(%rdx)	# D.6442, fe_param_24->WINDOW_LENGTH
	.loc 1 123 0
	movq	-24(%rbp), %rax	# fe_param, tmp115
	movl	$0, 116(%rax)	#, fe_param_24->doublebw
	.loc 1 125 0
	movq	-24(%rbp), %rax	# fe_param, tmp116
	movq	%rax, %rdi	# tmp116,
	call	fe_init	#
	movq	%rax, fe(%rip)	# fe.10, fe
	.loc 1 126 0
	movq	fe(%rip), %rax	# fe, fe.11
	testq	%rax, %rax	# fe.11
	jne	.L6	#,
	.loc 1 127 0
	movl	$.LC8, %edx	#,
	movl	$127, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L6:
	.loc 1 129 0
	movl	$.LC18, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_44], tmp117
	movl	%eax, -32(%rbp)	# tmp117, maxcepvecs
	.loc 1 130 0
	movq	kbcore(%rip), %rax	# kbcore, kbcore.12
	movq	(%rax), %rax	# kbcore.12_46->fcb, D.6443
	movl	8(%rax), %eax	# _47->cepsize, tmp118
	movl	%eax, -28(%rbp)	# tmp118, ceplen
	.loc 1 132 0
	movl	-28(%rbp), %eax	# ceplen, tmp119
	cltq
	movl	$132, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6441,
	call	__ckd_calloc__	#
	movq	%rax, dummyframe(%rip)	# dummyframe.13, dummyframe
	.loc 1 133 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	live_initialize_decoder, .-live_initialize_decoder
	.globl	live_free_memory
	.type	live_free_memory, @function
live_free_memory:
.LFB3:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 139 0
	movl	$0, %eax	#,
	call	parse_args_free	#
	.loc 1 140 0
	movq	fe(%rip), %rax	# fe, fe.14
	movq	%rax, %rdi	# fe.14,
	call	fe_close	#
	.loc 1 141 0
	movq	kb(%rip), %rax	# kb, kb.15
	movq	208(%rax), %rax	# kb.15_2->uttid, D.6463
	movq	%rax, %rdi	# D.6463,
	call	ckd_free	#
	.loc 1 142 0
	movq	kb(%rip), %rax	# kb, kb.16
	movq	%rax, %rdi	# kb.16,
	call	kb_free	#
	.loc 1 143 0
	movq	dummyframe(%rip), %rax	# dummyframe, dummyframe.17
	movq	%rax, %rdi	# dummyframe.17,
	call	ckd_free	#
	.loc 1 144 0
	movq	parthyp(%rip), %rax	# parthyp, parthyp.18
	movq	%rax, %rdi	# parthyp.18,
	call	ckd_free	#
	.loc 1 145 0
	movl	$0, %eax	#, D.6464
	.loc 1 146 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	live_free_memory, .-live_free_memory
	.globl	live_get_partialhyp
	.type	live_get_partialhyp, @function
live_get_partialhyp:
.LFB4:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# endutt, endutt
	.loc 1 166 0
	movq	kb(%rip), %rax	# kb, kb.19
	movq	(%rax), %rax	# kb.19_6->kbcore, D.6465
	movq	16(%rax), %rax	# _7->dict, tmp147
	movq	%rax, -40(%rbp)	# tmp147, dict
	.loc 1 167 0
	cmpl	$0, -68(%rbp)	#, endutt
	je	.L10	#,
	.loc 1 168 0
	movq	kb(%rip), %rax	# kb, kb.20
	movq	(%rax), %rdx	# kb.20_10->kbcore, D.6465
	movq	kb(%rip), %rax	# kb, kb.21
	movq	48(%rax), %rax	# kb.21_12->vithist, D.6466
	movq	%rdx, %rsi	# D.6465,
	movq	%rax, %rdi	# D.6466,
	call	vithist_utt_end	#
	movl	%eax, -56(%rbp)	# tmp148, id
	jmp	.L11	#
.L10:
	.loc 1 170 0
	movq	kb(%rip), %rax	# kb, kb.22
	movq	(%rax), %rdx	# kb.22_15->kbcore, D.6465
	movq	kb(%rip), %rax	# kb, kb.23
	movq	48(%rax), %rax	# kb.23_17->vithist, D.6466
	movq	%rdx, %rsi	# D.6465,
	movq	%rax, %rdi	# D.6466,
	call	vithist_partialutt_end	#
	movl	%eax, -56(%rbp)	# tmp149, id
.L11:
	.loc 1 172 0
	cmpl	$0, -56(%rbp)	#, id
	jle	.L12	#,
	.loc 1 173 0
	movq	kb(%rip), %rax	# kb, kb.24
	movq	48(%rax), %rax	# kb.24_20->vithist, D.6466
	movl	-56(%rbp), %edx	# id, tmp150
	movl	%edx, %esi	# tmp150,
	movq	%rax, %rdi	# D.6466,
	call	vithist_backtrace	#
	movq	%rax, -32(%rbp)	# tmp151, hyp
	.loc 1 175 0
	movq	-32(%rbp), %rax	# hyp, tmp152
	movq	%rax, -48(%rbp)	# tmp152, gn
	movl	$0, -52(%rbp)	#, nwds
	jmp	.L13	#
.L15:
	.loc 1 176 0
	movq	-48(%rbp), %rax	# gn, tmp153
	movq	(%rax), %rax	# gn_4->data.ptr, tmp154
	movq	%rax, -24(%rbp)	# tmp154, h
	.loc 1 177 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.25
	movl	-52(%rbp), %eax	# nwds, tmp155
	movslq	%eax, %rdx	# tmp155, D.6467
	movq	%rdx, %rax	# D.6467, tmp156
	addq	%rax, %rax	# tmp156
	addq	%rdx, %rax	# D.6467, tmp156
	salq	$3, %rax	#, tmp157
	addq	%rcx, %rax	# parthyp.25, D.6468
	movq	8(%rax), %rax	# _29->word, D.6469
	testq	%rax, %rax	# D.6469
	je	.L14	#,
	.loc 1 178 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.26
	movl	-52(%rbp), %eax	# nwds, tmp158
	movslq	%eax, %rdx	# tmp158, D.6467
	movq	%rdx, %rax	# D.6467, tmp159
	addq	%rax, %rax	# tmp159
	addq	%rdx, %rax	# D.6467, tmp159
	salq	$3, %rax	#, tmp160
	addq	%rcx, %rax	# parthyp.26, D.6468
	movq	8(%rax), %rax	# _34->word, D.6469
	movq	%rax, %rdi	# D.6469,
	call	ckd_free	#
	.loc 1 179 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.27
	movl	-52(%rbp), %eax	# nwds, tmp161
	movslq	%eax, %rdx	# tmp161, D.6467
	movq	%rdx, %rax	# D.6467, tmp162
	addq	%rax, %rax	# tmp162
	addq	%rdx, %rax	# D.6467, tmp162
	salq	$3, %rax	#, tmp163
	addq	%rcx, %rax	# parthyp.27, D.6468
	movq	$0, 8(%rax)	#, _39->word
.L14:
	.loc 1 181 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.28
	movl	-52(%rbp), %eax	# nwds, tmp164
	movslq	%eax, %rdx	# tmp164, D.6467
	movq	%rdx, %rax	# D.6467, tmp165
	addq	%rax, %rax	# tmp165
	addq	%rdx, %rax	# D.6467, tmp165
	salq	$3, %rax	#, tmp166
	leaq	(%rcx,%rax), %rbx	#, D.6468
	movq	-40(%rbp), %rax	# dict, tmp167
	movq	32(%rax), %rcx	# dict_8->word, D.6470
	movq	-24(%rbp), %rax	# h, tmp168
	movl	(%rax), %eax	# h_25->id, D.6471
	movslq	%eax, %rdx	# D.6471, D.6467
	movq	%rdx, %rax	# D.6467, tmp169
	salq	$2, %rax	#, tmp169
	addq	%rdx, %rax	# D.6467, tmp169
	salq	$3, %rax	#, tmp170
	addq	%rcx, %rax	# D.6470, D.6470
	movq	(%rax), %rax	# _48->word, D.6469
	movq	%rax, %rdi	# D.6469,
	call	strdup	#
	movq	%rax, 8(%rbx)	# D.6469, _43->word
	.loc 1 182 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.29
	movl	-52(%rbp), %eax	# nwds, tmp172
	movslq	%eax, %rdx	# tmp172, D.6467
	movq	%rdx, %rax	# D.6467, tmp173
	addq	%rax, %rax	# tmp173
	addq	%rdx, %rax	# D.6467, tmp173
	salq	$3, %rax	#, tmp174
	leaq	(%rcx,%rax), %rdx	#, D.6468
	movq	-24(%rbp), %rax	# h, tmp175
	movl	8(%rax), %eax	# h_25->sf, D.6471
	movl	%eax, 16(%rdx)	# D.6471, _54->sf
	.loc 1 183 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.30
	movl	-52(%rbp), %eax	# nwds, tmp176
	movslq	%eax, %rdx	# tmp176, D.6467
	movq	%rdx, %rax	# D.6467, tmp177
	addq	%rax, %rax	# tmp177
	addq	%rdx, %rax	# D.6467, tmp177
	salq	$3, %rax	#, tmp178
	leaq	(%rcx,%rax), %rdx	#, D.6468
	movq	-24(%rbp), %rax	# h, tmp179
	movl	12(%rax), %eax	# h_25->ef, D.6471
	movl	%eax, 20(%rdx)	# D.6471, _59->ef
	.loc 1 184 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.31
	movl	-52(%rbp), %eax	# nwds, tmp180
	movslq	%eax, %rdx	# tmp180, D.6467
	movq	%rdx, %rax	# D.6467, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.6467, tmp181
	salq	$3, %rax	#, tmp182
	leaq	(%rcx,%rax), %rdx	#, D.6468
	movq	-24(%rbp), %rax	# h, tmp183
	movl	16(%rax), %eax	# h_25->ascr, D.6471
	movl	%eax, (%rdx)	# D.6471, _64->ascr
	.loc 1 185 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.32
	movl	-52(%rbp), %eax	# nwds, tmp184
	movslq	%eax, %rdx	# tmp184, D.6467
	movq	%rdx, %rax	# D.6467, tmp185
	addq	%rax, %rax	# tmp185
	addq	%rdx, %rax	# D.6467, tmp185
	salq	$3, %rax	#, tmp186
	leaq	(%rcx,%rax), %rdx	#, D.6468
	movq	-24(%rbp), %rax	# h, tmp187
	movl	20(%rax), %eax	# h_25->lscr, D.6471
	movl	%eax, 4(%rdx)	# D.6471, _69->lscr
	.loc 1 175 0
	movq	-48(%rbp), %rax	# gn, tmp188
	movq	8(%rax), %rax	# gn_4->next, tmp189
	movq	%rax, -48(%rbp)	# tmp189, gn
	addl	$1, -52(%rbp)	#, nwds
.L13:
	.loc 1 175 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gn
	jne	.L15	#,
	.loc 1 187 0 is_stmt 1
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.33
	movl	-52(%rbp), %eax	# nwds, tmp190
	movslq	%eax, %rdx	# tmp190, D.6467
	movq	%rdx, %rax	# D.6467, tmp191
	addq	%rax, %rax	# tmp191
	addq	%rdx, %rax	# D.6467, tmp191
	salq	$3, %rax	#, tmp192
	addq	%rcx, %rax	# parthyp.33, D.6468
	movq	8(%rax), %rax	# _76->word, D.6469
	testq	%rax, %rax	# D.6469
	je	.L16	#,
	.loc 1 188 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.34
	movl	-52(%rbp), %eax	# nwds, tmp193
	movslq	%eax, %rdx	# tmp193, D.6467
	movq	%rdx, %rax	# D.6467, tmp194
	addq	%rax, %rax	# tmp194
	addq	%rdx, %rax	# D.6467, tmp194
	salq	$3, %rax	#, tmp195
	addq	%rcx, %rax	# parthyp.34, D.6468
	movq	8(%rax), %rax	# _81->word, D.6469
	movq	%rax, %rdi	# D.6469,
	call	ckd_free	#
	.loc 1 189 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.35
	movl	-52(%rbp), %eax	# nwds, tmp196
	movslq	%eax, %rdx	# tmp196, D.6467
	movq	%rdx, %rax	# D.6467, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# D.6467, tmp197
	salq	$3, %rax	#, tmp198
	addq	%rcx, %rax	# parthyp.35, D.6468
	movq	$0, 8(%rax)	#, _86->word
.L16:
	.loc 1 192 0
	movq	-32(%rbp), %rax	# hyp, tmp199
	movq	%rax, -48(%rbp)	# tmp199, gn
	jmp	.L17	#
.L19:
	.loc 1 193 0 discriminator 1
	movq	-48(%rbp), %rax	# gn, tmp200
	movq	(%rax), %rax	# gn_5->data.ptr, tmp201
	movq	%rax, -24(%rbp)	# tmp201, h
	.loc 1 194 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp202
	movq	%rax, %rdi	# tmp202,
	call	ckd_free	#
	.loc 1 192 0 discriminator 1
	movq	-48(%rbp), %rax	# gn, tmp203
	movq	8(%rax), %rax	# gn_5->next, tmp204
	movq	%rax, -48(%rbp)	# tmp204, gn
.L17:
	cmpq	$0, -48(%rbp)	#, gn
	je	.L18	#,
	.loc 1 192 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# gn, tmp205
	movq	8(%rax), %rax	# gn_5->next, D.6472
	testq	%rax, %rax	# D.6472
	jne	.L19	#,
.L18:
	.loc 1 196 0 is_stmt 1
	movq	-32(%rbp), %rax	# hyp, tmp206
	movq	%rax, %rdi	# tmp206,
	call	glist_free	#
	jmp	.L20	#
.L12:
	.loc 1 198 0
	movl	$0, -52(%rbp)	#, nwds
	.loc 1 199 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.36
	movl	-52(%rbp), %eax	# nwds, tmp207
	movslq	%eax, %rdx	# tmp207, D.6467
	movq	%rdx, %rax	# D.6467, tmp208
	addq	%rax, %rax	# tmp208
	addq	%rdx, %rax	# D.6467, tmp208
	salq	$3, %rax	#, tmp209
	addq	%rcx, %rax	# parthyp.36, D.6468
	movq	8(%rax), %rax	# _95->word, D.6469
	testq	%rax, %rax	# D.6469
	je	.L20	#,
	.loc 1 200 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.37
	movl	-52(%rbp), %eax	# nwds, tmp210
	movslq	%eax, %rdx	# tmp210, D.6467
	movq	%rdx, %rax	# D.6467, tmp211
	addq	%rax, %rax	# tmp211
	addq	%rdx, %rax	# D.6467, tmp211
	salq	$3, %rax	#, tmp212
	addq	%rcx, %rax	# parthyp.37, D.6468
	movq	8(%rax), %rax	# _100->word, D.6469
	movq	%rax, %rdi	# D.6469,
	call	ckd_free	#
	.loc 1 201 0
	movq	parthyp(%rip), %rcx	# parthyp, parthyp.38
	movl	-52(%rbp), %eax	# nwds, tmp213
	movslq	%eax, %rdx	# tmp213, D.6467
	movq	%rdx, %rax	# D.6467, tmp214
	addq	%rax, %rax	# tmp214
	addq	%rdx, %rax	# D.6467, tmp214
	salq	$3, %rax	#, tmp215
	addq	%rcx, %rax	# parthyp.38, D.6468
	movq	$0, 8(%rax)	#, _105->word
.L20:
	.loc 1 205 0
	movl	-52(%rbp), %eax	# nwds, D.6473
	.loc 1 206 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	live_get_partialhyp, .-live_get_partialhyp
	.globl	live_utt_set_uttid
	.type	live_utt_set_uttid, @function
live_utt_set_uttid:
.LFB5:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# uttname, uttname
	.loc 1 210 0
	movq	kb(%rip), %rax	# kb, kb.39
	movq	208(%rax), %rax	# kb.39_1->uttid, D.6474
	movq	-8(%rbp), %rdx	# uttname, tmp61
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# D.6474,
	call	strcpy	#
	.loc 1 211 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	live_utt_set_uttid, .-live_utt_set_uttid
	.globl	live_utt_decode_block
	.type	live_utt_decode_block, @function
live_utt_decode_block:
.LFB6:
	.loc 1 225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# samples, samples
	movl	%esi, -44(%rbp)	# nsamples, nsamples
	movl	%edx, -48(%rbp)	# live_endutt, live_endutt
	movq	%rcx, -56(%rbp)	# ohyp, ohyp
	.loc 1 231 0
	movl	$0, -20(%rbp)	#, nwds
	.loc 1 235 0
	movq	live_feat.6163(%rip), %rax	# live_feat, live_feat.40
	testq	%rax, %rax	# live_feat.40
	jne	.L24	#,
	.loc 1 236 0
	movq	kbcore(%rip), %rax	# kbcore, kbcore.41
	movq	(%rax), %rax	# kbcore.41_4->fcb, D.6475
	movl	$256, %esi	#,
	movq	%rax, %rdi	# D.6475,
	call	feat_array_alloc	#
	movq	%rax, live_feat.6163(%rip)	# live_feat.42, live_feat
.L24:
	.loc 1 238 0
	movl	live_begin_new_utt.6161(%rip), %eax	# live_begin_new_utt, live_begin_new_utt.43
	testl	%eax, %eax	# live_begin_new_utt.43
	je	.L25	#,
	.loc 1 239 0
	movq	fe(%rip), %rax	# fe, fe.44
	movq	%rax, %rdi	# fe.44,
	call	fe_start_utt	#
	.loc 1 240 0
	movq	kb(%rip), %rax	# kb, kb.45
	movq	%rax, %rdi	# kb.45,
	call	utt_begin	#
	.loc 1 241 0
	movl	$0, frmno.6162(%rip)	#, frmno
	.loc 1 242 0
	movq	kb(%rip), %rax	# kb, kb.46
	movl	$0, 64(%rax)	#, kb.46_10->nfr
	.loc 1 243 0
	movq	kb(%rip), %rax	# kb, kb.47
	movl	$0, 216(%rax)	#, kb.47_11->utt_hmm_eval
	.loc 1 244 0
	movq	kb(%rip), %rax	# kb, kb.48
	movl	$0, 220(%rax)	#, kb.48_12->utt_sen_eval
	.loc 1 245 0
	movq	kb(%rip), %rax	# kb, kb.49
	movl	$0, 224(%rax)	#, kb.49_13->utt_gau_eval
	.loc 1 246 0
	movl	$0, live_begin_new_utt.6161(%rip)	#, live_begin_new_utt
.L25:
	.loc 1 249 0
	movq	$0, -8(%rbp)	#, mfcbuf
	.loc 1 251 0
	movq	fe(%rip), %rax	# fe, fe.50
	leaq	-8(%rbp), %rcx	#, tmp96
	movl	-44(%rbp), %edx	# nsamples, tmp97
	movq	-40(%rbp), %rsi	# samples, tmp98
	movq	%rax, %rdi	# fe.50,
	call	fe_process_utt	#
	movl	%eax, -16(%rbp)	# tmp99, live_nfr
	.loc 1 252 0
	cmpl	$0, -48(%rbp)	#, live_endutt
	je	.L26	#,
	.loc 1 253 0
	movq	dummyframe(%rip), %rdx	# dummyframe, dummyframe.51
	movq	fe(%rip), %rax	# fe, fe.52
	movq	%rdx, %rsi	# dummyframe.51,
	movq	%rax, %rdi	# fe.52,
	call	fe_end_utt	#
.L26:
	.loc 1 267 0
	cmpl	$0, -16(%rbp)	#, live_nfr
	jle	.L27	#,
	.loc 1 269 0
	movq	live_feat.6163(%rip), %r8	# live_feat, live_feat.53
	movl	live_begin_new_utt.6161(%rip), %ecx	# live_begin_new_utt, live_begin_new_utt.54
	movq	-8(%rbp), %rsi	# mfcbuf, mfcbuf.55
	movq	kbcore(%rip), %rax	# kbcore, kbcore.56
	movq	(%rax), %rax	# kbcore.56_24->fcb, D.6475
	movl	-48(%rbp), %edi	# live_endutt, tmp100
	movl	-16(%rbp), %edx	# live_nfr, tmp101
	movq	%r8, %r9	# live_feat.53,
	movl	%edi, %r8d	# tmp100,
	movq	%rax, %rdi	# D.6475,
	call	feat_s2mfc2feat_block	#
	movl	%eax, -12(%rbp)	# tmp102, live_nfeatvec
	.loc 1 309 0
	movq	hmmdumpfp(%rip), %r8	# hmmdumpfp, hmmdumpfp.57
	movl	ptranskip(%rip), %edi	# ptranskip, ptranskip.58
	movl	maxhmmpf(%rip), %ecx	# maxhmmpf, maxhmmpf.59
	movl	maxhistpf(%rip), %r9d	# maxhistpf, maxhistpf.60
	movl	maxwpf(%rip), %r10d	# maxwpf, maxwpf.61
	movq	kb(%rip), %rdx	# kb, kb.62
	movq	live_feat.6163(%rip), %rax	# live_feat, live_feat.63
	movl	-12(%rbp), %esi	# live_nfeatvec, tmp103
	movq	%r8, 16(%rsp)	# hmmdumpfp.57,
	movl	%edi, 8(%rsp)	# ptranskip.58,
	movl	%ecx, (%rsp)	# maxhmmpf.59,
	movl	%r10d, %r8d	# maxwpf.61,
	movq	%rdx, %rcx	# kb.62,
	movl	$frmno.6162, %edx	#,
	movq	%rax, %rdi	# live_feat.63,
	call	utt_decode_block	#
	.loc 1 313 0
	movl	-48(%rbp), %eax	# live_endutt, tmp104
	movl	%eax, %edi	# tmp104,
	call	live_get_partialhyp	#
	movl	%eax, -20(%rbp)	# tmp105, nwds
	.loc 1 314 0
	movq	parthyp(%rip), %rdx	# parthyp, parthyp.64
	movq	-56(%rbp), %rax	# ohyp, tmp106
	movq	%rdx, (%rax)	# parthyp.64, *ohyp_36(D)
.L27:
	.loc 1 317 0
	cmpl	$0, -48(%rbp)	#, live_endutt
	je	.L28	#,
	.loc 1 318 0
	movl	$1, live_begin_new_utt.6161(%rip)	#, live_begin_new_utt
	.loc 1 319 0
	movq	kb(%rip), %rax	# kb, kb.65
	movq	kb(%rip), %rdx	# kb, kb.66
	movl	416(%rdx), %ecx	# kb.66_38->tot_fr, D.6476
	movq	kb(%rip), %rdx	# kb, kb.67
	movl	64(%rdx), %edx	# kb.67_40->nfr, D.6476
	addl	%ecx, %edx	# D.6476, D.6476
	movl	%edx, 416(%rax)	# D.6476, kb.65_37->tot_fr
	.loc 1 320 0
	movq	kb(%rip), %rax	# kb, kb.68
	movq	%rax, %rdi	# kb.68,
	call	utt_end	#
	jmp	.L29	#
.L28:
	.loc 1 323 0
	movl	$0, live_begin_new_utt.6161(%rip)	#, live_begin_new_utt
.L29:
	.loc 1 331 0
	cmpl	$0, -16(%rbp)	#, live_nfr
	jle	.L30	#,
	.loc 1 332 0
	movq	-8(%rbp), %rax	# mfcbuf, mfcbuf.69
	movq	%rax, %rdi	# mfcbuf.69,
	call	ckd_free_2d	#
.L30:
	.loc 1 336 0
	movl	-20(%rbp), %eax	# nwds, D.6477
	.loc 1 337 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	live_utt_decode_block, .-live_utt_decode_block
	.section	.rodata
.LC19:
	.string	"INFO"
	.align 8
.LC20:
	.string	"SUMMARY:  %d fr;  %d sen, %d gau/fr, %.2f xCPU [%.2f xOvrhd];  %d hmm/fr, %d wd/fr, %.2f xCPU;  \n"
.LC22:
	.string	"w"
.LC23:
	.string	"total_considered.out"
	.align 8
.LC24:
	.string	"fopen considered_total.out failed\n"
.LC25:
	.string	"%22d grand total considered\n"
	.text
	.globl	live_utt_summary
	.type	live_utt_summary, @function
live_utt_summary:
.LFB7:
	.loc 1 339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.LBB2:
	.loc 1 354 0
	movl	$.LC19, %edx	#,
	movl	$354, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 361 0
	movq	kb(%rip), %rax	# kb, kb.70
	movsd	448(%rax), %xmm1	# kb.70_1->tot_wd_exit, D.6478
	movq	kb(%rip), %rax	# kb, kb.71
	movl	416(%rax), %eax	# kb.71_3->tot_fr, D.6479
	cvtsi2sd	%eax, %xmm0	# D.6479, D.6478
	divsd	%xmm0, %xmm1	# D.6478, D.6478
	movapd	%xmm1, %xmm0	# D.6478, D.6478
	.loc 1 354 0
	cvttsd2si	%xmm0, %edi	# D.6478, D.6479
	.loc 1 360 0
	movq	kb(%rip), %rax	# kb, kb.72
	movsd	440(%rax), %xmm1	# kb.72_8->tot_hmm_eval, D.6478
	movq	kb(%rip), %rax	# kb, kb.73
	movl	416(%rax), %eax	# kb.73_10->tot_fr, D.6479
	cvtsi2sd	%eax, %xmm0	# D.6479, D.6478
	divsd	%xmm0, %xmm1	# D.6478, D.6478
	movapd	%xmm1, %xmm0	# D.6478, D.6478
	.loc 1 354 0
	cvttsd2si	%xmm0, %esi	# D.6478, D.6479
	.loc 1 357 0
	movq	kb(%rip), %rax	# kb, kb.74
	movsd	432(%rax), %xmm1	# kb.74_15->tot_gau_eval, D.6478
	movq	kb(%rip), %rax	# kb, kb.75
	movl	416(%rax), %eax	# kb.75_17->tot_fr, D.6479
	cvtsi2sd	%eax, %xmm0	# D.6479, D.6478
	divsd	%xmm0, %xmm1	# D.6478, D.6478
	movapd	%xmm1, %xmm0	# D.6478, D.6478
	.loc 1 354 0
	cvttsd2si	%xmm0, %ecx	# D.6478, D.6479
	.loc 1 356 0
	movq	kb(%rip), %rax	# kb, kb.76
	movsd	424(%rax), %xmm1	# kb.76_22->tot_sen_eval, D.6478
	movq	kb(%rip), %rax	# kb, kb.77
	movl	416(%rax), %eax	# kb.77_24->tot_fr, D.6479
	cvtsi2sd	%eax, %xmm0	# D.6479, D.6478
	divsd	%xmm0, %xmm1	# D.6478, D.6478
	movapd	%xmm1, %xmm0	# D.6478, D.6478
	.loc 1 354 0
	cvttsd2si	%xmm0, %edx	# D.6478, D.6479
	.loc 1 355 0
	movq	kb(%rip), %rax	# kb, kb.78
	.loc 1 354 0
	movl	416(%rax), %eax	# kb.78_29->tot_fr, D.6479
	xorpd	%xmm2, %xmm2	#
	movl	%edi, %r9d	# D.6479,
	movl	%esi, %r8d	# D.6479,
	xorpd	%xmm1, %xmm1	#
	xorpd	%xmm0, %xmm0	#
	movl	%eax, %esi	# D.6479,
	movl	$.LC20, %edi	#,
	movl	$3, %eax	#,
	call	_E__pr_info	#
	.loc 1 363 0
	movl	confp_open(%rip), %eax	# confp_open, confp_open.79
	testl	%eax, %eax	# confp_open.79
	je	.L33	#,
	.loc 1 363 0 is_stmt 0 discriminator 1
	movq	confp(%rip), %rax	# confp, confp.80
	movq	%rax, %rdi	# confp.80,
	call	fclose	#
.L33:
	.loc 1 364 0 is_stmt 1
	movl	$.LC22, %esi	#,
	movl	$.LC23, %edi	#,
	call	fopen	#
	movq	%rax, confp(%rip)	# confp.81, confp
	movq	confp(%rip), %rax	# confp, confp.82
	testq	%rax, %rax	# confp.82
	jne	.L34	#,
	.loc 1 365 0
	movl	$.LC8, %edx	#,
	movl	$365, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L34:
	.loc 1 367 0
	movq	tot_considered(%rip), %rdx	# tot_considered, tot_considered.83
	movq	confp(%rip), %rax	# confp, confp.84
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# confp.84,
	movl	$0, %eax	#,
	call	fprintf	#
.LBE2:
	.loc 1 383 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	live_utt_summary, .-live_utt_summary
	.local	live_kb.6129
	.comm	live_kb.6129,504,32
	.local	live_feat.6163
	.comm	live_feat.6163,8,8
	.data
	.align 4
	.type	live_begin_new_utt.6161, @object
	.size	live_begin_new_utt.6161, 4
live_begin_new_utt.6161:
	.long	1
	.local	frmno.6162
	.comm	frmno.6162,4,4
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "./libutil/profile.h"
	.file 10 "feat.h"
	.file 11 "cont_mgau.h"
	.file 12 "s3types.h"
	.file 13 "mdef.h"
	.file 14 "dict.h"
	.file 15 "dict2pid.h"
	.file 16 "fillpen.h"
	.file 17 "lmclass.h"
	.file 18 "lm.h"
	.file 19 "tmat.h"
	.file 20 "vector.h"
	.file 21 "subvq.h"
	.file 22 "gs.h"
	.file 23 "kbcore.h"
	.file 24 "hmm.h"
	.file 25 "hyp.h"
	.file 26 "vithist.h"
	.file 27 "ascr.h"
	.file 28 "lextree.h"
	.file 29 "beam.h"
	.file 30 "kb.h"
	.file 31 "new_fe.h"
	.file 32 "live.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2041
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF446
	.byte	0x1
	.long	.LASF447
	.long	.LASF448
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
	.long	.LASF449
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
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0xe
	.long	.LASF450
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x355
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
	.long	.LASF57
	.byte	0x6
	.byte	0x4c
	.long	0x2fb
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x4d
	.long	0x306
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x4e
	.long	0x311
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF60
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.long	0x38b
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x4d
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x4e
	.long	0x38b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x4f
	.long	0x366
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x50
	.long	0x3a7
	.uleb128 0x6
	.byte	0x8
	.long	0x391
	.uleb128 0x7
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3ea
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
	.long	.LASF62
	.byte	0x8
	.byte	0x5f
	.long	0x3ea
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ad
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x60
	.long	0x3ad
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x428
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x63
	.long	0x428
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x68
	.long	0x3fb
	.uleb128 0x12
	.byte	0x38
	.byte	0x9
	.byte	0x53
	.long	0x496
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x54
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x56
	.long	0x306
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x57
	.long	0x306
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x58
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x59
	.long	0x306
	.byte	0x20
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x5a
	.long	0x306
	.byte	0x28
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x5b
	.long	0x306
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x9
	.byte	0x5c
	.long	0x439
	.uleb128 0x7
	.long	.LASF79
	.byte	0x38
	.byte	0xa
	.byte	0x48
	.long	0x526
	.uleb128 0x8
	.long	.LASF71
	.byte	0xa
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x4d
	.long	0x526
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"cmn"
	.byte	0xa
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF85
	.byte	0xa
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0x11
	.string	"agc"
	.byte	0xa
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF86
	.byte	0xa
	.byte	0x54
	.long	0x553
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	0x541
	.uleb128 0x14
	.long	0x541
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x547
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a1
	.uleb128 0x6
	.byte	0x8
	.long	0x54d
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x52c
	.uleb128 0x2
	.long	.LASF87
	.byte	0xa
	.byte	0x5a
	.long	0x4a1
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0x5f
	.long	0x5a9
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x62
	.long	0x547
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xb
	.byte	0x63
	.long	0x547
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xb
	.byte	0x66
	.long	0x54d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x69
	.long	0x526
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF91
	.byte	0xb
	.byte	0x6c
	.long	0x564
	.uleb128 0x12
	.byte	0x30
	.byte	0xb
	.byte	0x74
	.long	0x61d
	.uleb128 0x8
	.long	.LASF92
	.byte	0xb
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF93
	.byte	0xb
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF94
	.byte	0xb
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF95
	.byte	0xb
	.byte	0x78
	.long	0x61d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF96
	.byte	0xb
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF97
	.byte	0xb
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF98
	.byte	0xb
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF99
	.byte	0xb
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a9
	.uleb128 0x2
	.long	.LASF100
	.byte	0xb
	.byte	0x81
	.long	0x5b4
	.uleb128 0x2
	.long	.LASF101
	.byte	0xc
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF102
	.byte	0xc
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF103
	.byte	0xc
	.byte	0x57
	.long	0x639
	.uleb128 0x2
	.long	.LASF104
	.byte	0xc
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF105
	.byte	0xc
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF106
	.byte	0xc
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF107
	.byte	0xc
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF108
	.byte	0xc
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x15
	.byte	0x4
	.byte	0xd
	.byte	0x48
	.long	0x6ad
	.uleb128 0x16
	.long	.LASF109
	.sleb128 0
	.uleb128 0x16
	.long	.LASF110
	.sleb128 1
	.uleb128 0x16
	.long	.LASF111
	.sleb128 2
	.uleb128 0x16
	.long	.LASF112
	.sleb128 3
	.uleb128 0x16
	.long	.LASF113
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0xd
	.byte	0x4e
	.long	0x686
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x54
	.long	0x6d9
	.uleb128 0x8
	.long	.LASF71
	.byte	0xd
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF115
	.byte	0xd
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF116
	.byte	0xd
	.byte	0x58
	.long	0x6b8
	.uleb128 0x12
	.byte	0x10
	.byte	0xd
	.byte	0x5e
	.long	0x732
	.uleb128 0x8
	.long	.LASF117
	.byte	0xd
	.byte	0x5f
	.long	0x644
	.byte	0
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x62
	.long	0x64f
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xd
	.byte	0x63
	.long	0x62e
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x63
	.long	0x62e
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x63
	.long	0x62e
	.byte	0xa
	.uleb128 0x8
	.long	.LASF119
	.byte	0xd
	.byte	0x64
	.long	0x6ad
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF120
	.byte	0xd
	.byte	0x65
	.long	0x6e4
	.uleb128 0x7
	.long	.LASF121
	.byte	0x10
	.byte	0xd
	.byte	0x6c
	.long	0x76d
	.uleb128 0x11
	.string	"rc"
	.byte	0xd
	.byte	0x6d
	.long	0x62e
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xd
	.byte	0x6e
	.long	0x639
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x6f
	.long	0x76d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x73d
	.uleb128 0x2
	.long	.LASF122
	.byte	0xd
	.byte	0x70
	.long	0x73d
	.uleb128 0x7
	.long	.LASF123
	.byte	0x18
	.byte	0xd
	.byte	0x72
	.long	0x7ae
	.uleb128 0x11
	.string	"lc"
	.byte	0xd
	.byte	0x73
	.long	0x62e
	.byte	0
	.uleb128 0x8
	.long	.LASF124
	.byte	0xd
	.byte	0x74
	.long	0x7ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x75
	.long	0x7b4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x773
	.uleb128 0x6
	.byte	0x8
	.long	0x77e
	.uleb128 0x2
	.long	.LASF125
	.byte	0xd
	.byte	0x76
	.long	0x77e
	.uleb128 0x12
	.byte	0x68
	.byte	0xd
	.byte	0x7a
	.long	0x88e
	.uleb128 0x8
	.long	.LASF126
	.byte	0xd
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF127
	.byte	0xd
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF128
	.byte	0xd
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF129
	.byte	0xd
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF130
	.byte	0xd
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF131
	.byte	0xd
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF132
	.byte	0xd
	.byte	0x82
	.long	0x88e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0x83
	.long	0x894
	.byte	0x20
	.uleb128 0x8
	.long	.LASF134
	.byte	0xd
	.byte	0x84
	.long	0x89a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF135
	.byte	0xd
	.byte	0x85
	.long	0x8a0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF136
	.byte	0xd
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF137
	.byte	0xd
	.byte	0x89
	.long	0x8a6
	.byte	0x40
	.uleb128 0x8
	.long	.LASF138
	.byte	0xd
	.byte	0x8c
	.long	0x8ac
	.byte	0x48
	.uleb128 0x8
	.long	.LASF139
	.byte	0xd
	.byte	0x8d
	.long	0x526
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xd
	.byte	0x8f
	.long	0x62e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF140
	.byte	0xd
	.byte	0x91
	.long	0x8b2
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x6
	.byte	0x8
	.long	0x6d9
	.uleb128 0x6
	.byte	0x8
	.long	0x732
	.uleb128 0x6
	.byte	0x8
	.long	0x8a6
	.uleb128 0x6
	.byte	0x8
	.long	0x67b
	.uleb128 0x6
	.byte	0x8
	.long	0x62e
	.uleb128 0x6
	.byte	0x8
	.long	0x8b8
	.uleb128 0x6
	.byte	0x8
	.long	0x8be
	.uleb128 0x6
	.byte	0x8
	.long	0x7ba
	.uleb128 0x2
	.long	.LASF141
	.byte	0xd
	.byte	0x96
	.long	0x7c5
	.uleb128 0x12
	.byte	0x28
	.byte	0xe
	.byte	0x47
	.long	0x92c
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF133
	.byte	0xe
	.byte	0x49
	.long	0x8ac
	.byte	0x8
	.uleb128 0x8
	.long	.LASF143
	.byte	0xe
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xe
	.byte	0x4b
	.long	0x65a
	.byte	0x14
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x4c
	.long	0x65a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF88
	.byte	0xe
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF145
	.byte	0xe
	.byte	0x51
	.long	0x92c
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x65a
	.uleb128 0x2
	.long	.LASF146
	.byte	0xe
	.byte	0x52
	.long	0x8cf
	.uleb128 0x12
	.byte	0x58
	.byte	0xe
	.byte	0x54
	.long	0x9ed
	.uleb128 0x8
	.long	.LASF147
	.byte	0xe
	.byte	0x55
	.long	0x9ed
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xe
	.byte	0x56
	.long	0x88e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF148
	.byte	0xe
	.byte	0x57
	.long	0x9f3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF126
	.byte	0xe
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x59
	.long	0x9f9
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xe
	.byte	0x5a
	.long	0x88e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF149
	.byte	0xe
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF150
	.byte	0xe
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF151
	.byte	0xe
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF152
	.byte	0xe
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF153
	.byte	0xe
	.byte	0x5f
	.long	0x92c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF154
	.byte	0xe
	.byte	0x62
	.long	0x65a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF155
	.byte	0xe
	.byte	0x63
	.long	0x65a
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF156
	.byte	0xe
	.byte	0x64
	.long	0x65a
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8c4
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x932
	.uleb128 0x2
	.long	.LASF157
	.byte	0xe
	.byte	0x65
	.long	0x93d
	.uleb128 0x12
	.byte	0x38
	.byte	0xf
	.byte	0x63
	.long	0xa73
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x64
	.long	0xa73
	.byte	0
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0x67
	.long	0xa7f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF160
	.byte	0xf
	.byte	0x69
	.long	0xa73
	.byte	0x10
	.uleb128 0x8
	.long	.LASF161
	.byte	0xf
	.byte	0x6c
	.long	0x8a0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF162
	.byte	0xf
	.byte	0x6e
	.long	0x8a0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF163
	.byte	0xf
	.byte	0x70
	.long	0x526
	.byte	0x28
	.uleb128 0x8
	.long	.LASF164
	.byte	0xf
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF165
	.byte	0xf
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa79
	.uleb128 0x6
	.byte	0x8
	.long	0x644
	.uleb128 0x6
	.byte	0x8
	.long	0xa73
	.uleb128 0x2
	.long	.LASF166
	.byte	0xf
	.byte	0x74
	.long	0xa0a
	.uleb128 0x12
	.byte	0x20
	.byte	0x10
	.byte	0x3e
	.long	0xac8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x10
	.byte	0x3f
	.long	0xac8
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x10
	.byte	0x41
	.long	0x526
	.byte	0x8
	.uleb128 0x11
	.string	"lw"
	.byte	0x10
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0x11
	.string	"wip"
	.byte	0x10
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9ff
	.uleb128 0x2
	.long	.LASF169
	.byte	0x10
	.byte	0x45
	.long	0xa90
	.uleb128 0x7
	.long	.LASF170
	.byte	0x18
	.byte	0x11
	.byte	0x42
	.long	0xb16
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF171
	.byte	0x11
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF172
	.byte	0x11
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x11
	.byte	0x47
	.long	0xb16
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xad9
	.uleb128 0x2
	.long	.LASF173
	.byte	0x11
	.byte	0x49
	.long	0xb16
	.uleb128 0x7
	.long	.LASF174
	.byte	0x18
	.byte	0x11
	.byte	0x4f
	.long	0xb58
	.uleb128 0x8
	.long	.LASF71
	.byte	0x11
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x11
	.byte	0x51
	.long	0xb1c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x11
	.byte	0x52
	.long	0xb58
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb27
	.uleb128 0x2
	.long	.LASF176
	.byte	0x11
	.byte	0x54
	.long	0xb58
	.uleb128 0x17
	.byte	0x4
	.byte	0x12
	.byte	0x4d
	.long	0xb84
	.uleb128 0xf
	.string	"f"
	.byte	0x12
	.byte	0x4e
	.long	0x2fb
	.uleb128 0xf
	.string	"l"
	.byte	0x12
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF177
	.byte	0x12
	.byte	0x50
	.long	0xb69
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x52
	.long	0xbc8
	.uleb128 0x8
	.long	.LASF171
	.byte	0x12
	.byte	0x53
	.long	0x65a
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x12
	.byte	0x57
	.long	0xb84
	.byte	0x4
	.uleb128 0x8
	.long	.LASF178
	.byte	0x12
	.byte	0x58
	.long	0xb84
	.byte	0x8
	.uleb128 0x8
	.long	.LASF179
	.byte	0x12
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF180
	.byte	0x12
	.byte	0x5a
	.long	0xb8f
	.uleb128 0x12
	.byte	0x8
	.byte	0x12
	.byte	0x5c
	.long	0xc0c
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x5d
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x12
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF182
	.byte	0x12
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF183
	.byte	0x12
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF184
	.byte	0x12
	.byte	0x61
	.long	0xbd3
	.uleb128 0x12
	.byte	0x4
	.byte	0x12
	.byte	0x63
	.long	0xc38
	.uleb128 0x11
	.string	"wid"
	.byte	0x12
	.byte	0x64
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x12
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF185
	.byte	0x12
	.byte	0x66
	.long	0xc17
	.uleb128 0x12
	.byte	0x10
	.byte	0x12
	.byte	0x6c
	.long	0xc63
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0x6d
	.long	0xc63
	.byte	0
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc0c
	.uleb128 0x2
	.long	.LASF187
	.byte	0x12
	.byte	0x70
	.long	0xc43
	.uleb128 0x7
	.long	.LASF188
	.byte	0x20
	.byte	0x12
	.byte	0x7a
	.long	0xcc7
	.uleb128 0x11
	.string	"w1"
	.byte	0x12
	.byte	0x7b
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0x7e
	.long	0xcc7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF178
	.byte	0x12
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF186
	.byte	0x12
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF62
	.byte	0x12
	.byte	0x81
	.long	0xccd
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc38
	.uleb128 0x6
	.byte	0x8
	.long	0xc74
	.uleb128 0x2
	.long	.LASF190
	.byte	0x12
	.byte	0x82
	.long	0xc74
	.uleb128 0x12
	.byte	0xc
	.byte	0x12
	.byte	0x88
	.long	0xcff
	.uleb128 0x8
	.long	.LASF191
	.byte	0x12
	.byte	0x89
	.long	0xcff
	.byte	0
	.uleb128 0x8
	.long	.LASF192
	.byte	0x12
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x665
	.long	0xd0f
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF193
	.byte	0x12
	.byte	0x8b
	.long	0xcde
	.uleb128 0x7
	.long	.LASF194
	.byte	0xf8
	.byte	0x12
	.byte	0xb4
	.long	0xf26
	.uleb128 0x8
	.long	.LASF195
	.byte	0x12
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF196
	.byte	0x12
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF197
	.byte	0x12
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF198
	.byte	0x12
	.byte	0xba
	.long	0x9f3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF199
	.byte	0x12
	.byte	0xbc
	.long	0x665
	.byte	0x18
	.uleb128 0x8
	.long	.LASF200
	.byte	0x12
	.byte	0xbd
	.long	0x665
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF201
	.byte	0x12
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF202
	.byte	0x12
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x12
	.byte	0xc2
	.long	0xf26
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x12
	.byte	0xc3
	.long	0xc63
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x12
	.byte	0xc4
	.long	0xcc7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF203
	.byte	0x12
	.byte	0xc5
	.long	0xf2c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF204
	.byte	0x12
	.byte	0xc6
	.long	0xf32
	.byte	0x48
	.uleb128 0x8
	.long	.LASF205
	.byte	0x12
	.byte	0xc8
	.long	0xf3e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF206
	.byte	0x12
	.byte	0xc9
	.long	0xf3e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF207
	.byte	0x12
	.byte	0xca
	.long	0xf3e
	.byte	0x60
	.uleb128 0x8
	.long	.LASF208
	.byte	0x12
	.byte	0xcb
	.long	0x526
	.byte	0x68
	.uleb128 0x8
	.long	.LASF209
	.byte	0x12
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF210
	.byte	0x12
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF211
	.byte	0x12
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x12
	.byte	0xd1
	.long	0xf44
	.byte	0x80
	.uleb128 0x8
	.long	.LASF212
	.byte	0x12
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF213
	.byte	0x12
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF214
	.byte	0x12
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0x11
	.string	"lw"
	.byte	0x12
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0x11
	.string	"wip"
	.byte	0x12
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF215
	.byte	0x12
	.byte	0xdd
	.long	0xf4a
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF216
	.byte	0x12
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF217
	.byte	0x12
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF218
	.byte	0x12
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF219
	.byte	0x12
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF220
	.byte	0x12
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF221
	.byte	0x12
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF222
	.byte	0x12
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF223
	.byte	0x12
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF224
	.byte	0x12
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF225
	.byte	0x12
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF226
	.byte	0x12
	.byte	0xef
	.long	0xf50
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF227
	.byte	0x12
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF228
	.byte	0x12
	.byte	0xf4
	.long	0xf56
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF229
	.byte	0x12
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF230
	.byte	0x12
	.byte	0xf6
	.long	0x526
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbc8
	.uleb128 0x6
	.byte	0x8
	.long	0xc69
	.uleb128 0x6
	.byte	0x8
	.long	0xf38
	.uleb128 0x6
	.byte	0x8
	.long	0xcd3
	.uleb128 0x6
	.byte	0x8
	.long	0xb84
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xd0f
	.uleb128 0x6
	.byte	0x8
	.long	0x665
	.uleb128 0x6
	.byte	0x8
	.long	0xb5e
	.uleb128 0x2
	.long	.LASF231
	.byte	0x12
	.byte	0xf8
	.long	0xd1a
	.uleb128 0x7
	.long	.LASF232
	.byte	0x10
	.byte	0x12
	.byte	0xfb
	.long	0xf8b
	.uleb128 0x8
	.long	.LASF71
	.byte	0x12
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x12
	.byte	0xfd
	.long	0xf8b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf5c
	.uleb128 0x2
	.long	.LASF233
	.byte	0x12
	.byte	0xfe
	.long	0xf67
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x4a
	.long	0xfc8
	.uleb128 0x11
	.string	"tp"
	.byte	0x13
	.byte	0x4b
	.long	0xfc8
	.byte	0
	.uleb128 0x8
	.long	.LASF131
	.byte	0x13
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF234
	.byte	0x13
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfce
	.uleb128 0x6
	.byte	0x8
	.long	0x526
	.uleb128 0x2
	.long	.LASF235
	.byte	0x13
	.byte	0x50
	.long	0xf9c
	.uleb128 0x12
	.byte	0x8
	.byte	0x14
	.byte	0x47
	.long	0xffc
	.uleb128 0x11
	.string	"r"
	.byte	0x14
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"c"
	.byte	0x14
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF236
	.byte	0x14
	.byte	0x4a
	.long	0xfdf
	.uleb128 0x12
	.byte	0x28
	.byte	0x14
	.byte	0xf0
	.long	0x1058
	.uleb128 0x8
	.long	.LASF237
	.byte	0x14
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x14
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF89
	.byte	0x14
	.byte	0xf3
	.long	0x547
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0x14
	.byte	0xf4
	.long	0x547
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0x14
	.byte	0xf5
	.long	0x54d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF96
	.byte	0x14
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF238
	.byte	0x14
	.byte	0xf8
	.long	0x1007
	.uleb128 0x12
	.byte	0x48
	.byte	0x15
	.byte	0x52
	.long	0x10e4
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0x53
	.long	0xffc
	.byte	0
	.uleb128 0x8
	.long	.LASF240
	.byte	0x15
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF241
	.byte	0x15
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF242
	.byte	0x15
	.byte	0x57
	.long	0xfce
	.byte	0x10
	.uleb128 0x8
	.long	.LASF243
	.byte	0x15
	.byte	0x58
	.long	0x10e4
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0x15
	.byte	0x59
	.long	0xfc8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF244
	.byte	0x15
	.byte	0x60
	.long	0x54d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF245
	.byte	0x15
	.byte	0x61
	.long	0xfce
	.byte	0x30
	.uleb128 0x8
	.long	.LASF246
	.byte	0x15
	.byte	0x63
	.long	0x526
	.byte	0x38
	.uleb128 0x8
	.long	.LASF247
	.byte	0x15
	.byte	0x64
	.long	0x526
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1058
	.uleb128 0x2
	.long	.LASF248
	.byte	0x15
	.byte	0x65
	.long	0x1063
	.uleb128 0x7
	.long	.LASF249
	.byte	0x38
	.byte	0x16
	.byte	0x3c
	.long	0x1179
	.uleb128 0x8
	.long	.LASF92
	.byte	0x16
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF250
	.byte	0x16
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF251
	.byte	0x16
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF252
	.byte	0x16
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF253
	.byte	0x16
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF254
	.byte	0x16
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF255
	.byte	0x16
	.byte	0x43
	.long	0x547
	.byte	0x18
	.uleb128 0x8
	.long	.LASF256
	.byte	0x16
	.byte	0x44
	.long	0x1179
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0x16
	.byte	0x45
	.long	0xf44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0x46
	.long	0x526
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x117f
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x2
	.long	.LASF257
	.byte	0x16
	.byte	0x47
	.long	0x10f5
	.uleb128 0x12
	.byte	0x68
	.byte	0x17
	.byte	0x50
	.long	0x123f
	.uleb128 0x11
	.string	"fcb"
	.byte	0x17
	.byte	0x51
	.long	0x123f
	.byte	0
	.uleb128 0x8
	.long	.LASF147
	.byte	0x17
	.byte	0x52
	.long	0x9ed
	.byte	0x8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x17
	.byte	0x53
	.long	0xac8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF258
	.byte	0x17
	.byte	0x54
	.long	0x1245
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x17
	.byte	0x55
	.long	0xf8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF259
	.byte	0x17
	.byte	0x56
	.long	0x124b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF260
	.byte	0x17
	.byte	0x57
	.long	0x1251
	.byte	0x30
	.uleb128 0x8
	.long	.LASF226
	.byte	0x17
	.byte	0x58
	.long	0xf50
	.byte	0x38
	.uleb128 0x8
	.long	.LASF95
	.byte	0x17
	.byte	0x59
	.long	0x1257
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x17
	.byte	0x5a
	.long	0x125d
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x17
	.byte	0x5b
	.long	0x1263
	.byte	0x50
	.uleb128 0x8
	.long	.LASF118
	.byte	0x17
	.byte	0x5c
	.long	0x1269
	.byte	0x58
	.uleb128 0x8
	.long	.LASF261
	.byte	0x17
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF262
	.byte	0x17
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x559
	.uleb128 0x6
	.byte	0x8
	.long	0xa85
	.uleb128 0x6
	.byte	0x8
	.long	0xf91
	.uleb128 0x6
	.byte	0x8
	.long	0xace
	.uleb128 0x6
	.byte	0x8
	.long	0x623
	.uleb128 0x6
	.byte	0x8
	.long	0x10ea
	.uleb128 0x6
	.byte	0x8
	.long	0x1185
	.uleb128 0x6
	.byte	0x8
	.long	0xfd4
	.uleb128 0x2
	.long	.LASF263
	.byte	0x17
	.byte	0x5f
	.long	0x1190
	.uleb128 0x12
	.byte	0x8
	.byte	0x18
	.byte	0x69
	.long	0x129b
	.uleb128 0x8
	.long	.LASF264
	.byte	0x18
	.byte	0x6a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF265
	.byte	0x18
	.byte	0x6b
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF266
	.byte	0x18
	.byte	0x6c
	.long	0x127a
	.uleb128 0x12
	.byte	0x28
	.byte	0x18
	.byte	0x6e
	.long	0x12e9
	.uleb128 0x8
	.long	.LASF267
	.byte	0x18
	.byte	0x6f
	.long	0x12e9
	.byte	0
	.uleb128 0x11
	.string	"in"
	.byte	0x18
	.byte	0x70
	.long	0x129b
	.byte	0x8
	.uleb128 0x11
	.string	"out"
	.byte	0x18
	.byte	0x71
	.long	0x129b
	.byte	0x10
	.uleb128 0x11
	.string	"tp"
	.byte	0x18
	.byte	0x72
	.long	0xfce
	.byte	0x18
	.uleb128 0x8
	.long	.LASF268
	.byte	0x18
	.byte	0x73
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x129b
	.uleb128 0x2
	.long	.LASF269
	.byte	0x18
	.byte	0x74
	.long	0x12a6
	.uleb128 0x12
	.byte	0x1c
	.byte	0x19
	.byte	0x3c
	.long	0x1354
	.uleb128 0x11
	.string	"id"
	.byte	0x19
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"sf"
	.byte	0x19
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"ef"
	.byte	0x19
	.byte	0x3f
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF271
	.byte	0x19
	.byte	0x40
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF192
	.byte	0x19
	.byte	0x41
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF272
	.byte	0x19
	.byte	0x42
	.long	0x2b9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF273
	.byte	0x19
	.byte	0x43
	.long	0x12fa
	.uleb128 0x12
	.byte	0x4
	.byte	0x1a
	.byte	0x50
	.long	0x1374
	.uleb128 0x8
	.long	.LASF191
	.byte	0x1a
	.byte	0x51
	.long	0x1374
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x665
	.long	0x1384
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x1a
	.byte	0x4f
	.long	0x1398
	.uleb128 0x10
	.long	.LASF274
	.byte	0x1a
	.byte	0x52
	.long	0x135f
	.byte	0
	.uleb128 0x2
	.long	.LASF275
	.byte	0x1a
	.byte	0x53
	.long	0x1384
	.uleb128 0x12
	.byte	0x24
	.byte	0x1a
	.byte	0x59
	.long	0x1422
	.uleb128 0x11
	.string	"wid"
	.byte	0x1a
	.byte	0x5a
	.long	0x65a
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x1a
	.byte	0x5b
	.long	0x670
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x1a
	.byte	0x5b
	.long	0x670
	.byte	0x6
	.uleb128 0x8
	.long	.LASF271
	.byte	0x1a
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF192
	.byte	0x1a
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF264
	.byte	0x1a
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF276
	.byte	0x1a
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1a
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF277
	.byte	0x1a
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1a
	.byte	0x62
	.long	0x1398
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF279
	.byte	0x1a
	.byte	0x63
	.long	0x13a3
	.uleb128 0x12
	.byte	0x18
	.byte	0x1a
	.byte	0x79
	.long	0x1465
	.uleb128 0x8
	.long	.LASF267
	.byte	0x1a
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1a
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x1a
	.byte	0x7c
	.long	0x1465
	.byte	0x8
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1a
	.byte	0x7d
	.long	0x39c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1422
	.uleb128 0x2
	.long	.LASF281
	.byte	0x1a
	.byte	0x7f
	.long	0x142d
	.uleb128 0x12
	.byte	0x40
	.byte	0x1a
	.byte	0x88
	.long	0x14f7
	.uleb128 0x8
	.long	.LASF282
	.byte	0x1a
	.byte	0x89
	.long	0x14f7
	.byte	0
	.uleb128 0x8
	.long	.LASF283
	.byte	0x1a
	.byte	0x8a
	.long	0x526
	.byte	0x8
	.uleb128 0x8
	.long	.LASF284
	.byte	0x1a
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF285
	.byte	0x1a
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1a
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1a
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF268
	.byte	0x1a
	.byte	0x94
	.long	0x526
	.byte	0x20
	.uleb128 0x8
	.long	.LASF288
	.byte	0x1a
	.byte	0x95
	.long	0x526
	.byte	0x28
	.uleb128 0x8
	.long	.LASF289
	.byte	0x1a
	.byte	0x97
	.long	0x14fd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF290
	.byte	0x1a
	.byte	0x98
	.long	0x39c
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1465
	.uleb128 0x6
	.byte	0x8
	.long	0x1503
	.uleb128 0x6
	.byte	0x8
	.long	0x146b
	.uleb128 0x2
	.long	.LASF291
	.byte	0x1a
	.byte	0x99
	.long	0x1476
	.uleb128 0x12
	.byte	0x10
	.byte	0x1b
	.byte	0x40
	.long	0x1535
	.uleb128 0x11
	.string	"sen"
	.byte	0x1b
	.byte	0x41
	.long	0x526
	.byte	0
	.uleb128 0x8
	.long	.LASF292
	.byte	0x1b
	.byte	0x42
	.long	0x526
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF293
	.byte	0x1b
	.byte	0x43
	.long	0x1514
	.uleb128 0x12
	.byte	0x50
	.byte	0x1c
	.byte	0x5e
	.long	0x15b4
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1c
	.byte	0x5f
	.long	0x12ef
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1c
	.byte	0x60
	.long	0x39c
	.byte	0x28
	.uleb128 0x11
	.string	"wid"
	.byte	0x1c
	.byte	0x61
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF168
	.byte	0x1c
	.byte	0x62
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF117
	.byte	0x1c
	.byte	0x63
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF294
	.byte	0x1c
	.byte	0x64
	.long	0xa79
	.byte	0x40
	.uleb128 0x11
	.string	"ci"
	.byte	0x1c
	.byte	0x66
	.long	0x62e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF295
	.byte	0x1c
	.byte	0x67
	.long	0x2cf
	.byte	0x49
	.uleb128 0x8
	.long	.LASF296
	.byte	0x1c
	.byte	0x68
	.long	0x670
	.byte	0x4a
	.byte	0
	.uleb128 0x2
	.long	.LASF297
	.byte	0x1c
	.byte	0x69
	.long	0x1540
	.uleb128 0x12
	.byte	0x10
	.byte	0x1c
	.byte	0x76
	.long	0x15df
	.uleb128 0x11
	.string	"lc"
	.byte	0x1c
	.byte	0x77
	.long	0x62e
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1c
	.byte	0x78
	.long	0x39c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF299
	.byte	0x1c
	.byte	0x7a
	.long	0x15bf
	.uleb128 0x12
	.byte	0x40
	.byte	0x1c
	.byte	0x7f
	.long	0x1677
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1c
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1c
	.byte	0x82
	.long	0x39c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1c
	.byte	0x83
	.long	0x1677
	.byte	0x10
	.uleb128 0x8
	.long	.LASF301
	.byte	0x1c
	.byte	0x85
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1c
	.byte	0x86
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF303
	.byte	0x1c
	.byte	0x87
	.long	0x167d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF304
	.byte	0x1c
	.byte	0x88
	.long	0x167d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF305
	.byte	0x1c
	.byte	0x8a
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF306
	.byte	0x1c
	.byte	0x8b
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF307
	.byte	0x1c
	.byte	0x8d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF308
	.byte	0x1c
	.byte	0x8e
	.long	0x2b9
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15df
	.uleb128 0x6
	.byte	0x8
	.long	0x1683
	.uleb128 0x6
	.byte	0x8
	.long	0x15b4
	.uleb128 0x2
	.long	.LASF309
	.byte	0x1c
	.byte	0x8f
	.long	0x15ea
	.uleb128 0x12
	.byte	0x10
	.byte	0x1d
	.byte	0x40
	.long	0x16cd
	.uleb128 0x8
	.long	.LASF310
	.byte	0x1d
	.byte	0x41
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1d
	.byte	0x42
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF311
	.byte	0x1d
	.byte	0x43
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1d
	.byte	0x44
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF312
	.byte	0x1d
	.byte	0x45
	.long	0x1694
	.uleb128 0x18
	.value	0x1f8
	.byte	0x1e
	.byte	0x56
	.long	0x1977
	.uleb128 0x8
	.long	.LASF313
	.byte	0x1e
	.byte	0x57
	.long	0x1977
	.byte	0
	.uleb128 0x8
	.long	.LASF314
	.byte	0x1e
	.byte	0x58
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF315
	.byte	0x1e
	.byte	0x59
	.long	0x197d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF316
	.byte	0x1e
	.byte	0x5a
	.long	0x197d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF317
	.byte	0x1e
	.byte	0x5b
	.long	0x197d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF318
	.byte	0x1e
	.byte	0x5c
	.long	0x2b9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF319
	.byte	0x1e
	.byte	0x5e
	.long	0x1989
	.byte	0x30
	.uleb128 0x8
	.long	.LASF320
	.byte	0x1e
	.byte	0x60
	.long	0x198f
	.byte	0x38
	.uleb128 0x11
	.string	"nfr"
	.byte	0x1e
	.byte	0x61
	.long	0x2b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF321
	.byte	0x1e
	.byte	0x63
	.long	0x526
	.byte	0x48
	.uleb128 0x8
	.long	.LASF322
	.byte	0x1e
	.byte	0x64
	.long	0x526
	.byte	0x50
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1e
	.byte	0x65
	.long	0x526
	.byte	0x58
	.uleb128 0x8
	.long	.LASF324
	.byte	0x1e
	.byte	0x66
	.long	0x526
	.byte	0x60
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1e
	.byte	0x67
	.long	0x2b9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF326
	.byte	0x1e
	.byte	0x68
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF327
	.byte	0x1e
	.byte	0x6a
	.long	0xfce
	.byte	0x70
	.uleb128 0x8
	.long	.LASF328
	.byte	0x1e
	.byte	0x6b
	.long	0x526
	.byte	0x78
	.uleb128 0x8
	.long	.LASF329
	.byte	0x1e
	.byte	0x6c
	.long	0x526
	.byte	0x80
	.uleb128 0x8
	.long	.LASF330
	.byte	0x1e
	.byte	0x6d
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF268
	.byte	0x1e
	.byte	0x6e
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF331
	.byte	0x1e
	.byte	0x6f
	.long	0x2b9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF271
	.byte	0x1e
	.byte	0x71
	.long	0x1995
	.byte	0x98
	.uleb128 0x8
	.long	.LASF332
	.byte	0x1e
	.byte	0x72
	.long	0x199b
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF333
	.byte	0x1e
	.byte	0x73
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF334
	.byte	0x1e
	.byte	0x74
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF335
	.byte	0x1e
	.byte	0x78
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF336
	.byte	0x1e
	.byte	0x7a
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF337
	.byte	0x1e
	.byte	0x7c
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1e
	.byte	0x7f
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1e
	.byte	0x80
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF340
	.byte	0x1e
	.byte	0x81
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF341
	.byte	0x1e
	.byte	0x82
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF342
	.byte	0x1e
	.byte	0x83
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF343
	.byte	0x1e
	.byte	0x84
	.long	0x8f
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1e
	.byte	0x86
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF345
	.byte	0x1e
	.byte	0x87
	.long	0x2b9
	.byte	0xdc
	.uleb128 0x8
	.long	.LASF346
	.byte	0x1e
	.byte	0x88
	.long	0x2b9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF347
	.byte	0x1e
	.byte	0x89
	.long	0x526
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF348
	.byte	0x1e
	.byte	0x8a
	.long	0x2b9
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF349
	.byte	0x1e
	.byte	0x8b
	.long	0x2b9
	.byte	0xf4
	.uleb128 0x8
	.long	.LASF350
	.byte	0x1e
	.byte	0x8d
	.long	0x496
	.byte	0xf8
	.uleb128 0x19
	.long	.LASF351
	.byte	0x1e
	.byte	0x8e
	.long	0x496
	.value	0x130
	.uleb128 0x19
	.long	.LASF352
	.byte	0x1e
	.byte	0x8f
	.long	0x496
	.value	0x168
	.uleb128 0x19
	.long	.LASF353
	.byte	0x1e
	.byte	0x90
	.long	0x2b9
	.value	0x1a0
	.uleb128 0x19
	.long	.LASF354
	.byte	0x1e
	.byte	0x91
	.long	0x306
	.value	0x1a8
	.uleb128 0x19
	.long	.LASF355
	.byte	0x1e
	.byte	0x92
	.long	0x306
	.value	0x1b0
	.uleb128 0x19
	.long	.LASF356
	.byte	0x1e
	.byte	0x93
	.long	0x306
	.value	0x1b8
	.uleb128 0x19
	.long	.LASF357
	.byte	0x1e
	.byte	0x94
	.long	0x306
	.value	0x1c0
	.uleb128 0x19
	.long	.LASF358
	.byte	0x1e
	.byte	0x95
	.long	0xf44
	.value	0x1c8
	.uleb128 0x19
	.long	.LASF359
	.byte	0x1e
	.byte	0x96
	.long	0xf44
	.value	0x1d0
	.uleb128 0x19
	.long	.LASF360
	.byte	0x1e
	.byte	0x98
	.long	0x19a1
	.value	0x1d8
	.uleb128 0x19
	.long	.LASF361
	.byte	0x1e
	.byte	0x99
	.long	0x2b9
	.value	0x1e0
	.uleb128 0x19
	.long	.LASF362
	.byte	0x1e
	.byte	0x9a
	.long	0x8f
	.value	0x1e8
	.uleb128 0x19
	.long	.LASF363
	.byte	0x1e
	.byte	0x9b
	.long	0x2b9
	.value	0x1f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x126f
	.uleb128 0x6
	.byte	0x8
	.long	0x1983
	.uleb128 0x6
	.byte	0x8
	.long	0x1689
	.uleb128 0x6
	.byte	0x8
	.long	0x1509
	.uleb128 0x6
	.byte	0x8
	.long	0x547
	.uleb128 0x6
	.byte	0x8
	.long	0x1535
	.uleb128 0x6
	.byte	0x8
	.long	0x16cd
	.uleb128 0x6
	.byte	0x8
	.long	0x19a7
	.uleb128 0x6
	.byte	0x8
	.long	0x1354
	.uleb128 0x2
	.long	.LASF364
	.byte	0x1e
	.byte	0x9c
	.long	0x16d8
	.uleb128 0x12
	.byte	0x78
	.byte	0x1f
	.byte	0x29
	.long	0x1ad5
	.uleb128 0x8
	.long	.LASF365
	.byte	0x1f
	.byte	0x2a
	.long	0x2ab
	.byte	0
	.uleb128 0x8
	.long	.LASF366
	.byte	0x1f
	.byte	0x2b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF367
	.byte	0x1f
	.byte	0x2c
	.long	0x2ab
	.byte	0x8
	.uleb128 0x8
	.long	.LASF368
	.byte	0x1f
	.byte	0x2d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF369
	.byte	0x1f
	.byte	0x2e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF370
	.byte	0x1f
	.byte	0x2f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF371
	.byte	0x1f
	.byte	0x30
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF372
	.byte	0x1f
	.byte	0x31
	.long	0x2ab
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF373
	.byte	0x1f
	.byte	0x32
	.long	0x2ab
	.byte	0x20
	.uleb128 0x8
	.long	.LASF374
	.byte	0x1f
	.byte	0x33
	.long	0x2ab
	.byte	0x24
	.uleb128 0x8
	.long	.LASF375
	.byte	0x1f
	.byte	0x35
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF376
	.byte	0x1f
	.byte	0x36
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF377
	.byte	0x1f
	.byte	0x37
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF378
	.byte	0x1f
	.byte	0x38
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF379
	.byte	0x1f
	.byte	0x39
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF380
	.byte	0x1f
	.byte	0x3a
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF381
	.byte	0x1f
	.byte	0x3b
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF382
	.byte	0x1f
	.byte	0x3c
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF383
	.byte	0x1f
	.byte	0x3d
	.long	0x2b9
	.byte	0x64
	.uleb128 0x8
	.long	.LASF384
	.byte	0x1f
	.byte	0x3e
	.long	0x2b9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF385
	.byte	0x1f
	.byte	0x3f
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF386
	.byte	0x1f
	.byte	0x40
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF387
	.byte	0x1f
	.byte	0x41
	.long	0x2b9
	.byte	0x74
	.byte	0
	.uleb128 0x2
	.long	.LASF388
	.byte	0x1f
	.byte	0x45
	.long	0x19b8
	.uleb128 0x12
	.byte	0x40
	.byte	0x1f
	.byte	0x48
	.long	0x1b6d
	.uleb128 0x8
	.long	.LASF389
	.byte	0x1f
	.byte	0x49
	.long	0x2ab
	.byte	0
	.uleb128 0x8
	.long	.LASF390
	.byte	0x1f
	.byte	0x4a
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF391
	.byte	0x1f
	.byte	0x4b
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF392
	.byte	0x1f
	.byte	0x4c
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF393
	.byte	0x1f
	.byte	0x4d
	.long	0x2ab
	.byte	0x10
	.uleb128 0x8
	.long	.LASF394
	.byte	0x1f
	.byte	0x4e
	.long	0x2ab
	.byte	0x14
	.uleb128 0x8
	.long	.LASF395
	.byte	0x1f
	.byte	0x4f
	.long	0x1b6d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF396
	.byte	0x1f
	.byte	0x50
	.long	0x1b6d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF397
	.byte	0x1f
	.byte	0x51
	.long	0x1b73
	.byte	0x28
	.uleb128 0x8
	.long	.LASF398
	.byte	0x1f
	.byte	0x52
	.long	0x526
	.byte	0x30
	.uleb128 0x8
	.long	.LASF399
	.byte	0x1f
	.byte	0x53
	.long	0x2b9
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b73
	.uleb128 0x6
	.byte	0x8
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF400
	.byte	0x1f
	.byte	0x54
	.long	0x1ae0
	.uleb128 0x12
	.byte	0x50
	.byte	0x1f
	.byte	0x57
	.long	0x1c41
	.uleb128 0x8
	.long	.LASF365
	.byte	0x1f
	.byte	0x58
	.long	0x2ab
	.byte	0
	.uleb128 0x8
	.long	.LASF366
	.byte	0x1f
	.byte	0x59
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF401
	.byte	0x1f
	.byte	0x5a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF367
	.byte	0x1f
	.byte	0x5b
	.long	0x2ab
	.byte	0xc
	.uleb128 0x8
	.long	.LASF402
	.byte	0x1f
	.byte	0x5c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF371
	.byte	0x1f
	.byte	0x5d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF368
	.byte	0x1f
	.byte	0x5e
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF369
	.byte	0x1f
	.byte	0x5f
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF374
	.byte	0x1f
	.byte	0x60
	.long	0x2ab
	.byte	0x20
	.uleb128 0x8
	.long	.LASF403
	.byte	0x1f
	.byte	0x61
	.long	0x1c41
	.byte	0x28
	.uleb128 0x8
	.long	.LASF404
	.byte	0x1f
	.byte	0x62
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF405
	.byte	0x1f
	.byte	0x63
	.long	0x1c47
	.byte	0x38
	.uleb128 0x8
	.long	.LASF406
	.byte	0x1f
	.byte	0x64
	.long	0x2b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF407
	.byte	0x1f
	.byte	0x65
	.long	0x2c4
	.byte	0x44
	.uleb128 0x8
	.long	.LASF408
	.byte	0x1f
	.byte	0x66
	.long	0x1c4d
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x6
	.byte	0x8
	.long	0x1b79
	.uleb128 0x6
	.byte	0x8
	.long	0x2b2
	.uleb128 0x2
	.long	.LASF409
	.byte	0x1f
	.byte	0x68
	.long	0x1b84
	.uleb128 0x12
	.byte	0x18
	.byte	0x20
	.byte	0x2e
	.long	0x1ca1
	.uleb128 0x8
	.long	.LASF271
	.byte	0x20
	.byte	0x2f
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF192
	.byte	0x20
	.byte	0x30
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF142
	.byte	0x20
	.byte	0x31
	.long	0x8f
	.byte	0x8
	.uleb128 0x11
	.string	"sf"
	.byte	0x20
	.byte	0x32
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"ef"
	.byte	0x20
	.byte	0x33
	.long	0x2b9
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.long	.LASF410
	.byte	0x20
	.byte	0x34
	.long	0x1c5e
	.uleb128 0x1a
	.long	.LASF420
	.byte	0x1
	.byte	0x50
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d34
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x1
	.byte	0x50
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF411
	.byte	0x1
	.byte	0x52
	.long	0x19ad
	.uleb128 0x9
	.byte	0x3
	.quad	live_kb.6129
	.uleb128 0x1c
	.long	.LASF412
	.byte	0x1
	.byte	0x53
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF413
	.byte	0x1
	.byte	0x53
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF414
	.byte	0x1
	.byte	0x53
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF415
	.byte	0x1
	.byte	0x53
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF416
	.byte	0x1
	.byte	0x54
	.long	0x1d34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1ad5
	.uleb128 0x1d
	.long	.LASF451
	.byte	0x1
	.byte	0x89
	.long	0x2b9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF423
	.byte	0x1
	.byte	0x9e
	.long	0x2b9
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dda
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x1
	.byte	0x9e
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.string	"id"
	.byte	0x1
	.byte	0xa0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF419
	.byte	0x1
	.byte	0xa0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.string	"hyp"
	.byte	0x1
	.byte	0xa1
	.long	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"gn"
	.byte	0x1
	.byte	0xa2
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"h"
	.byte	0x1
	.byte	0xa3
	.long	0x19a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x1
	.byte	0xa4
	.long	0xac8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1a
	.long	.LASF421
	.byte	0x1
	.byte	0xd0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e06
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x1
	.byte	0xd0
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF424
	.byte	0x1
	.byte	0xdf
	.long	0x2b9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed8
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x1
	.byte	0xdf
	.long	0x1c41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x1
	.byte	0xdf
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x1
	.byte	0xe0
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x1
	.byte	0xe0
	.long	0x1ed8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x1
	.byte	0xe2
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	live_begin_new_utt.6161
	.uleb128 0x1c
	.long	.LASF430
	.byte	0x1
	.byte	0xe3
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	frmno.6162
	.uleb128 0x1c
	.long	.LASF431
	.byte	0x1
	.byte	0xe4
	.long	0x198f
	.uleb128 0x9
	.byte	0x3
	.quad	live_feat.6163
	.uleb128 0x1c
	.long	.LASF432
	.byte	0x1
	.byte	0xe6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x1
	.byte	0xe6
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF419
	.byte	0x1
	.byte	0xe7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF434
	.byte	0x1
	.byte	0xe8
	.long	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1ede
	.uleb128 0x6
	.byte	0x8
	.long	0x1ca1
	.uleb128 0x20
	.long	.LASF452
	.byte	0x1
	.value	0x153
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f39
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x22
	.long	.LASF435
	.byte	0x1
	.value	0x15f
	.long	0x69
	.uleb128 0x22
	.long	.LASF436
	.byte	0x1
	.value	0x160
	.long	0xf44
	.uleb128 0x22
	.long	.LASF437
	.byte	0x1
	.value	0x161
	.long	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"fe"
	.byte	0x1
	.byte	0x3d
	.long	0x1f4d
	.uleb128 0x9
	.byte	0x3
	.quad	fe
	.uleb128 0x6
	.byte	0x8
	.long	0x1c53
	.uleb128 0x1c
	.long	.LASF313
	.byte	0x1
	.byte	0x45
	.long	0x1977
	.uleb128 0x9
	.byte	0x3
	.quad	kbcore
	.uleb128 0x1c
	.long	.LASF438
	.byte	0x1
	.byte	0x46
	.long	0xf44
	.uleb128 0x9
	.byte	0x3
	.quad	hmmdumpfp
	.uleb128 0x1c
	.long	.LASF439
	.byte	0x1
	.byte	0x47
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	maxwpf
	.uleb128 0x1c
	.long	.LASF440
	.byte	0x1
	.byte	0x48
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	maxhistpf
	.uleb128 0x1c
	.long	.LASF441
	.byte	0x1
	.byte	0x49
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	maxhmmpf
	.uleb128 0x1c
	.long	.LASF442
	.byte	0x1
	.byte	0x4a
	.long	0x2b9
	.uleb128 0x9
	.byte	0x3
	.quad	ptranskip
	.uleb128 0x1c
	.long	.LASF443
	.byte	0x1
	.byte	0x4c
	.long	0x1ede
	.uleb128 0x9
	.byte	0x3
	.quad	parthyp
	.uleb128 0x1c
	.long	.LASF444
	.byte	0x1
	.byte	0x4d
	.long	0x54d
	.uleb128 0x9
	.byte	0x3
	.quad	dummyframe
	.uleb128 0x23
	.long	.LASF445
	.byte	0x4
	.byte	0xaa
	.long	0x266
	.uleb128 0x24
	.string	"kb"
	.byte	0x1
	.byte	0x43
	.long	0x201a
	.uleb128 0x9
	.byte	0x3
	.quad	kb
	.uleb128 0x6
	.byte	0x8
	.long	0x19ad
	.uleb128 0x22
	.long	.LASF435
	.byte	0x1
	.value	0x15f
	.long	0x69
	.uleb128 0x22
	.long	.LASF436
	.byte	0x1
	.value	0x160
	.long	0xf44
	.uleb128 0x22
	.long	.LASF437
	.byte	0x1
	.value	0x161
	.long	0x62
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
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
.LASF435:
	.string	"tot_considered"
.LASF346:
	.string	"utt_gau_eval"
.LASF7:
	.string	"size_t"
.LASF251:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF404:
	.string	"NUM_OVERFLOW_SAMPS"
.LASF405:
	.string	"MEL_FB"
.LASF356:
	.string	"tot_hmm_eval"
.LASF135:
	.string	"sseq"
.LASF297:
	.string	"lextree_node_t"
.LASF206:
	.string	"tgprob"
.LASF186:
	.string	"used"
.LASF397:
	.string	"left_apex"
.LASF144:
	.string	"basewid"
.LASF422:
	.string	"uttname"
.LASF396:
	.string	"mel_cosine"
.LASF364:
	.string	"kb_t"
.LASF108:
	.string	"s3senid_t"
.LASF141:
	.string	"mdef_t"
.LASF298:
	.string	"root"
.LASF167:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF256:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF208:
	.string	"tg_segbase"
.LASF322:
	.string	"comssid_active"
.LASF384:
	.string	"is_single"
.LASF130:
	.string	"n_sen"
.LASF412:
	.string	"maxcepvecs"
.LASF292:
	.string	"comsen"
.LASF351:
	.string	"tm_srch"
.LASF162:
	.string	"comsseq"
.LASF357:
	.string	"tot_wd_exit"
.LASF17:
	.string	"_IO_write_base"
.LASF145:
	.string	"comp"
.LASF267:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF439:
	.string	"maxwpf"
.LASF218:
	.string	"n_bg_score"
.LASF272:
	.string	"type"
.LASF241:
	.string	"vqsize"
.LASF191:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF109:
	.string	"WORD_POSN_BEGIN"
.LASF340:
	.string	"pl_window_effective"
.LASF382:
	.string	"input_format"
.LASF100:
	.string	"mgau_model_t"
.LASF324:
	.string	"rec_sen_active"
.LASF53:
	.string	"int8"
.LASF84:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF216:
	.string	"n_bg_fill"
.LASF376:
	.string	"cepfile"
.LASF426:
	.string	"nsamples"
.LASF280:
	.string	"children"
.LASF287:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF428:
	.string	"ohyp"
.LASF95:
	.string	"mgau"
.LASF418:
	.string	"endutt"
.LASF383:
	.string	"is_batch"
.LASF228:
	.string	"lmclass"
.LASF305:
	.string	"n_active"
.LASF318:
	.string	"n_lextrans"
.LASF392:
	.string	"fft_size"
.LASF166:
	.string	"dict2pid_t"
.LASF80:
	.string	"cepsize"
.LASF92:
	.string	"n_mgau"
.LASF308:
	.string	"wbest"
.LASF378:
	.string	"wavdir"
.LASF410:
	.string	"partialhyp_t"
.LASF117:
	.string	"ssid"
.LASF248:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF427:
	.string	"live_endutt"
.LASF93:
	.string	"max_comp"
.LASF332:
	.string	"beam"
.LASF243:
	.string	"gautbl"
.LASF148:
	.string	"ciphone_str"
.LASF70:
	.string	"hash_table_t"
.LASF262:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF391:
	.string	"num_filters"
.LASF265:
	.string	"history"
.LASF413:
	.string	"maxhyplen"
.LASF320:
	.string	"feat"
.LASF213:
	.string	"bgoff"
.LASF133:
	.string	"ciphone"
.LASF118:
	.string	"tmat"
.LASF106:
	.string	"s3lmwid_t"
.LASF222:
	.string	"n_tg_score"
.LASF78:
	.string	"ptmr_t"
.LASF155:
	.string	"finishwid"
.LASF82:
	.string	"n_stream"
.LASF389:
	.string	"sampling_rate"
.LASF417:
	.string	"live_args"
.LASF223:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF266:
	.string	"hmm_state_t"
.LASF294:
	.string	"ssid_lc"
.LASF42:
	.string	"_IO_FILE"
.LASF406:
	.string	"START_FLAG"
.LASF314:
	.string	"n_lextree"
.LASF246:
	.string	"gauscore"
.LASF304:
	.string	"next_active"
.LASF120:
	.string	"phone_t"
.LASF275:
	.string	"vh_lmstate_t"
.LASF1:
	.string	"unsigned char"
.LASF163:
	.string	"comwt"
.LASF329:
	.string	"phn_heur_list"
.LASF185:
	.string	"tg_t"
.LASF187:
	.string	"membg_t"
.LASF164:
	.string	"n_comstate"
.LASF379:
	.string	"cepdir"
.LASF348:
	.string	"hmm_hist_bins"
.LASF407:
	.string	"PRIOR"
.LASF224:
	.string	"n_tgcache_hit"
.LASF264:
	.string	"score"
.LASF115:
	.string	"filler"
.LASF370:
	.string	"NUM_FILTERS"
.LASF154:
	.string	"startwid"
.LASF202:
	.string	"bg_seg_sz"
.LASF336:
	.string	"svq4svq"
.LASF67:
	.string	"table"
.LASF333:
	.string	"ds_ratio"
.LASF317:
	.string	"fillertree"
.LASF381:
	.string	"cepext"
.LASF11:
	.string	"char"
.LASF334:
	.string	"cond_ds"
.LASF442:
	.string	"ptranskip"
.LASF179:
	.string	"firstbg"
.LASF105:
	.string	"s3wid_t"
.LASF253:
	.string	"n_featlen"
.LASF90:
	.string	"mixw"
.LASF175:
	.string	"wordlist"
.LASF359:
	.string	"matchsegfp"
.LASF239:
	.string	"origsize"
.LASF232:
	.string	"lmset_s"
.LASF233:
	.string	"lmset_t"
.LASF449:
	.string	"_IO_lock_t"
.LASF151:
	.string	"filler_start"
.LASF368:
	.string	"FB_TYPE"
.LASF123:
	.string	"ph_lc_s"
.LASF125:
	.string	"ph_lc_t"
.LASF245:
	.string	"vqdist"
.LASF295:
	.string	"composite"
.LASF323:
	.string	"sen_active"
.LASF358:
	.string	"matchfp"
.LASF165:
	.string	"n_comsseq"
.LASF432:
	.string	"live_nfr"
.LASF168:
	.string	"prob"
.LASF440:
	.string	"maxhistpf"
.LASF299:
	.string	"lextree_lcroot_t"
.LASF274:
	.string	"lm3g"
.LASF14:
	.string	"_IO_read_ptr"
.LASF161:
	.string	"comstate"
.LASF136:
	.string	"n_sseq"
.LASF360:
	.string	"hyp_segs"
.LASF46:
	.string	"_pos"
.LASF121:
	.string	"ph_rc_s"
.LASF122:
	.string	"ph_rc_t"
.LASF273:
	.string	"hyp_t"
.LASF290:
	.string	"lwidlist"
.LASF97:
	.string	"frm_sen_eval"
.LASF152:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF431:
	.string	"live_feat"
.LASF347:
	.string	"hmm_hist"
.LASF394:
	.string	"upper_filt_freq"
.LASF160:
	.string	"single_lc"
.LASF425:
	.string	"samples"
.LASF401:
	.string	"FRAME_SHIFT"
.LASF137:
	.string	"cd2cisen"
.LASF169:
	.string	"fillpen_t"
.LASF205:
	.string	"bgprob"
.LASF355:
	.string	"tot_gau_eval"
.LASF102:
	.string	"s3pid_t"
.LASF229:
	.string	"n_lmclass"
.LASF301:
	.string	"n_lc"
.LASF303:
	.string	"active"
.LASF217:
	.string	"n_bg_inmem"
.LASF362:
	.string	"hyp_str"
.LASF450:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF261:
	.string	"n_lm"
.LASF375:
	.string	"wavfile"
.LASF34:
	.string	"_offset"
.LASF350:
	.string	"tm_sen"
.LASF220:
	.string	"n_tg_fill"
.LASF204:
	.string	"tginfo"
.LASF400:
	.string	"melfb_t"
.LASF235:
	.string	"tmat_t"
.LASF197:
	.string	"max_ug"
.LASF395:
	.string	"filter_coeffs"
.LASF447:
	.string	"live.c"
.LASF0:
	.string	"long unsigned int"
.LASF180:
	.string	"ug_t"
.LASF126:
	.string	"n_ciphone"
.LASF331:
	.string	"bestwordscore"
.LASF28:
	.string	"_flags2"
.LASF188:
	.string	"tginfo_s"
.LASF190:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF338:
	.string	"pl_window"
.LASF76:
	.string	"start_cpu"
.LASF293:
	.string	"ascr_t"
.LASF393:
	.string	"lower_filt_freq"
.LASF146:
	.string	"dictword_t"
.LASF249:
	.string	"gs_s"
.LASF257:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF270:
	.string	"vhid"
.LASF259:
	.string	"lmset"
.LASF423:
	.string	"live_get_partialhyp"
.LASF104:
	.string	"s3tmatid_t"
.LASF321:
	.string	"ssid_active"
.LASF451:
	.string	"live_free_memory"
.LASF227:
	.string	"dict_size"
.LASF337:
	.string	"ci_pbeam"
.LASF385:
	.string	"blocksize"
.LASF29:
	.string	"_old_offset"
.LASF221:
	.string	"n_tg_inmem"
.LASF114:
	.string	"word_posn_t"
.LASF416:
	.string	"fe_param"
.LASF211:
	.string	"n_tgbowt"
.LASF326:
	.string	"rec_bst_senscr"
.LASF302:
	.string	"n_node"
.LASF433:
	.string	"live_nfeatvec"
.LASF386:
	.string	"verbose"
.LASF170:
	.string	"lmclass_word_s"
.LASF173:
	.string	"lmclass_word_t"
.LASF361:
	.string	"hyp_seglen"
.LASF47:
	.string	"long long int"
.LASF441:
	.string	"maxhmmpf"
.LASF398:
	.string	"width"
.LASF237:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF158:
	.string	"internal"
.LASF140:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF388:
	.string	"param_t"
.LASF198:
	.string	"wordstr"
.LASF312:
	.string	"beam_t"
.LASF345:
	.string	"utt_sen_eval"
.LASF313:
	.string	"kbcore"
.LASF99:
	.string	"gau_type"
.LASF271:
	.string	"ascr"
.LASF269:
	.string	"hmm_t"
.LASF49:
	.string	"float"
.LASF138:
	.string	"sen2cimap"
.LASF252:
	.string	"n_density"
.LASF328:
	.string	"cache_best_list"
.LASF77:
	.string	"start_elapsed"
.LASF20:
	.string	"_IO_buf_base"
.LASF242:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF112:
	.string	"WORD_POSN_INTERNAL"
.LASF157:
	.string	"dict_t"
.LASF110:
	.string	"WORD_POSN_END"
.LASF193:
	.string	"lm_tgcache_entry_t"
.LASF414:
	.string	"samprate"
.LASF254:
	.string	"n_mbyte"
.LASF296:
	.string	"frame"
.LASF91:
	.string	"mgau_t"
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
.LASF45:
	.string	"_sbuf"
.LASF377:
	.string	"ctlfile"
.LASF72:
	.string	"t_cpu"
.LASF247:
	.string	"mgau_sl"
.LASF438:
	.string	"hmmdumpfp"
.LASF291:
	.string	"vithist_t"
.LASF448:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF132:
	.string	"ciphone_ht"
.LASF281:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF240:
	.string	"n_sv"
.LASF181:
	.string	"probid"
.LASF286:
	.string	"bghist"
.LASF75:
	.string	"t_tot_elapsed"
.LASF40:
	.string	"_mode"
.LASF349:
	.string	"hmm_hist_binsize"
.LASF335:
	.string	"gs4gs"
.LASF446:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF207:
	.string	"tgbowt"
.LASF192:
	.string	"lscr"
.LASF424:
	.string	"live_utt_decode_block"
.LASF319:
	.string	"vithist"
.LASF434:
	.string	"mfcbuf"
.LASF111:
	.string	"WORD_POSN_SINGLE"
.LASF309:
	.string	"lextree_t"
.LASF189:
	.string	"n_tg"
.LASF373:
	.string	"UPPER_FILT_FREQ"
.LASF147:
	.string	"mdef"
.LASF244:
	.string	"subvec"
.LASF341:
	.string	"pl_beam"
.LASF325:
	.string	"rec_bstcid"
.LASF236:
	.string	"arraysize_t"
.LASF315:
	.string	"ugtree"
.LASF142:
	.string	"word"
.LASF131:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF387:
	.string	"doublebw"
.LASF81:
	.string	"cepsize_used"
.LASF195:
	.string	"n_ug"
.LASF65:
	.string	"hash_entry_s"
.LASF66:
	.string	"hash_entry_t"
.LASF215:
	.string	"tgcache"
.LASF282:
	.string	"entry"
.LASF83:
	.string	"stream_len"
.LASF374:
	.string	"PRE_EMPHASIS_ALPHA"
.LASF156:
	.string	"silwid"
.LASF258:
	.string	"dict2pid"
.LASF353:
	.string	"tot_fr"
.LASF68:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF88:
	.string	"n_comp"
.LASF96:
	.string	"distfloor"
.LASF330:
	.string	"skip_count"
.LASF238:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF225:
	.string	"access_type"
.LASF101:
	.string	"s3cipid_t"
.LASF89:
	.string	"mean"
.LASF116:
	.string	"ciphone_t"
.LASF214:
	.string	"tgoff"
.LASF415:
	.string	"ceplen"
.LASF278:
	.string	"lmstate"
.LASF124:
	.string	"rclist"
.LASF343:
	.string	"uttid"
.LASF64:
	.string	"glist_t"
.LASF79:
	.string	"feat_s"
.LASF87:
	.string	"feat_t"
.LASF363:
	.string	"hyp_strlen"
.LASF283:
	.string	"frame_start"
.LASF85:
	.string	"varnorm"
.LASF452:
	.string	"live_utt_summary"
.LASF60:
	.string	"gnode_s"
.LASF63:
	.string	"gnode_t"
.LASF74:
	.string	"t_tot_cpu"
.LASF196:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF307:
	.string	"best"
.LASF32:
	.string	"_shortbuf"
.LASF316:
	.string	"ugtreeMulti"
.LASF409:
	.string	"fe_t"
.LASF194:
	.string	"lm_s"
.LASF231:
	.string	"lm_t"
.LASF171:
	.string	"dictwid"
.LASF159:
	.string	"ldiph_lc"
.LASF372:
	.string	"LOWER_FILT_FREQ"
.LASF306:
	.string	"n_next_active"
.LASF119:
	.string	"wpos"
.LASF86:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF279:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF134:
	.string	"phone"
.LASF201:
	.string	"log_bg_seg_sz"
.LASF411:
	.string	"live_kb"
.LASF153:
	.string	"comp_head"
.LASF129:
	.string	"n_ci_sen"
.LASF183:
	.string	"firsttg"
.LASF94:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF402:
	.string	"FRAME_SIZE"
.LASF199:
	.string	"startlwid"
.LASF250:
	.string	"n_feat"
.LASF366:
	.string	"FRAME_RATE"
.LASF390:
	.string	"num_cepstra"
.LASF177:
	.string	"lmlog_t"
.LASF71:
	.string	"name"
.LASF98:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF403:
	.string	"OVERFLOW_SAMPS"
.LASF284:
	.string	"n_entry"
.LASF445:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF429:
	.string	"live_begin_new_utt"
.LASF182:
	.string	"bowtid"
.LASF172:
	.string	"LOGprob"
.LASF139:
	.string	"ciphone2n_cd_sen"
.LASF289:
	.string	"lms2vh_root"
.LASF288:
	.string	"bestvh"
.LASF380:
	.string	"wavext"
.LASF107:
	.string	"s3frmid_t"
.LASF128:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF310:
	.string	"subvq"
.LASF311:
	.string	"ptrans"
.LASF408:
	.string	"HAMMING_WINDOW"
.LASF255:
	.string	"codeword"
.LASF342:
	.string	"wend_beam"
.LASF285:
	.string	"n_frm"
.LASF277:
	.string	"valid"
.LASF209:
	.string	"n_bgprob"
.LASF437:
	.string	"confp_open"
.LASF436:
	.string	"confp"
.LASF399:
	.string	"doublewide"
.LASF52:
	.string	"int16"
.LASF354:
	.string	"tot_sen_eval"
.LASF103:
	.string	"s3ssid_t"
.LASF260:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF210:
	.string	"n_tgprob"
.LASF73:
	.string	"t_elapsed"
.LASF420:
	.string	"live_initialize_decoder"
.LASF230:
	.string	"inclass_ugscore"
.LASF178:
	.string	"bowt"
.LASF234:
	.string	"n_state"
.LASF69:
	.string	"nocase"
.LASF174:
	.string	"lmclass_s"
.LASF176:
	.string	"lmclass_t"
.LASF444:
	.string	"dummyframe"
.LASF27:
	.string	"_fileno"
.LASF113:
	.string	"WORD_POSN_UNDEFINED"
.LASF149:
	.string	"max_words"
.LASF268:
	.string	"bestscore"
.LASF352:
	.string	"tm_ovrhd"
.LASF58:
	.string	"float64"
.LASF367:
	.string	"WINDOW_LENGTH"
.LASF226:
	.string	"dict2lmwid"
.LASF421:
	.string	"live_utt_set_uttid"
.LASF127:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF371:
	.string	"FFT_SIZE"
.LASF203:
	.string	"membg"
.LASF365:
	.string	"SAMPLING_RATE"
.LASF300:
	.string	"lcroot"
.LASF51:
	.string	"int32"
.LASF212:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF184:
	.string	"bg_t"
.LASF419:
	.string	"nwds"
.LASF327:
	.string	"cache_ci_senscr"
.LASF200:
	.string	"finishlwid"
.LASF150:
	.string	"n_word"
.LASF339:
	.string	"pl_window_start"
.LASF143:
	.string	"pronlen"
.LASF263:
	.string	"kbcore_t"
.LASF443:
	.string	"parthyp"
.LASF369:
	.string	"NUM_CEPSTRA"
.LASF276:
	.string	"pred"
.LASF62:
	.string	"next"
.LASF219:
	.string	"n_bg_bo"
.LASF61:
	.string	"data"
.LASF430:
	.string	"frmno"
.LASF55:
	.string	"uint16"
.LASF344:
	.string	"utt_hmm_eval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
