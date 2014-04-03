	.file	"rtp.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 rtp.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	CurrentRTPTimestamp
	.bss
	.align 4
	.type	CurrentRTPTimestamp, @object
	.size	CurrentRTPTimestamp, 4
CurrentRTPTimestamp:
	.zero	4
	.globl	CurrentRTPSequenceNumber
	.align 4
	.type	CurrentRTPSequenceNumber, @object
	.size	CurrentRTPSequenceNumber, 4
CurrentRTPSequenceNumber:
	.zero	4
	.comm	f,8,8
	.text
	.globl	ComposeRTPPacket
	.type	ComposeRTPPacket, @function
ComposeRTPPacket:
.LFB2:
	.file 1 "rtp.c"
	.loc 1 72 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 87 0
	movq	-8(%rbp), %rax	# p, tmp106
	movq	56(%rax), %rax	# p_1(D)->packet, D.4438
	movq	-8(%rbp), %rdx	# p, tmp107
	movl	(%rdx), %edx	# p_1(D)->v, D.4439
	movl	%edx, %ecx	# D.4439, D.4440
	.loc 1 88 0
	movq	-8(%rbp), %rdx	# p, tmp108
	movl	4(%rdx), %edx	# p_1(D)->p, D.4439
	.loc 1 87 0
	sall	$2, %edx	#, D.4440
	orl	%edx, %ecx	# D.4440, D.4440
	.loc 1 89 0
	movq	-8(%rbp), %rdx	# p, tmp109
	movl	8(%rdx), %edx	# p_1(D)->x, D.4439
	.loc 1 87 0
	sall	$3, %edx	#, D.4440
	orl	%edx, %ecx	# D.4440, D.4440
	.loc 1 90 0
	movq	-8(%rbp), %rdx	# p, tmp110
	movl	12(%rdx), %edx	# p_1(D)->cc, D.4439
	.loc 1 87 0
	sall	$4, %edx	#, D.4440
	orl	%ecx, %edx	# D.4440, D.4440
	movb	%dl, (%rax)	# D.4440, *_2
	.loc 1 91 0
	movq	-8(%rbp), %rax	# p, tmp111
	movq	56(%rax), %rax	# p_1(D)->packet, D.4438
	leaq	1(%rax), %rdx	#, D.4438
	movq	-8(%rbp), %rax	# p, tmp112
	movl	16(%rax), %eax	# p_1(D)->m, D.4439
	movl	%eax, %ecx	# D.4439, D.4440
	.loc 1 92 0
	movq	-8(%rbp), %rax	# p, tmp113
	movl	20(%rax), %eax	# p_1(D)->pt, D.4439
	.loc 1 91 0
	addl	%eax, %eax	# D.4440
	orl	%ecx, %eax	# D.4440, D.4440
	movb	%al, (%rdx)	# D.4440, *_18
	.loc 1 93 0
	movq	-8(%rbp), %rax	# p, tmp114
	movq	56(%rax), %rax	# p_1(D)->packet, D.4438
	leaq	2(%rax), %rdx	#, D.4438
	movq	-8(%rbp), %rax	# p, tmp115
	movl	24(%rax), %eax	# p_1(D)->seq, D.4439
	movb	%al, (%rdx)	# D.4440, *_26
	.loc 1 94 0
	movq	-8(%rbp), %rax	# p, tmp116
	movq	56(%rax), %rax	# p_1(D)->packet, D.4438
	leaq	3(%rax), %rdx	#, D.4438
	movq	-8(%rbp), %rax	# p, tmp117
	movl	24(%rax), %eax	# p_1(D)->seq, D.4439
	shrl	$8, %eax	#, D.4439
	movb	%al, (%rdx)	# D.4440, *_30
	.loc 1 96 0
	movq	-8(%rbp), %rax	# p, tmp118
	leaq	28(%rax), %rcx	#, D.4441
	movq	-8(%rbp), %rax	# p, tmp119
	movq	56(%rax), %rax	# p_1(D)->packet, D.4438
	addq	$4, %rax	#, D.4438
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# D.4441,
	movq	%rax, %rdi	# D.4438,
	call	memcpy	#
	.loc 1 97 0
	movq	-8(%rbp), %rax	# p, tmp120
	leaq	32(%rax), %rcx	#, D.4441
	movq	-8(%rbp), %rax	# p, tmp121
	movq	56(%rax), %rax	# p_1(D)->packet, D.4438
	addq	$8, %rax	#, D.4438
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# D.4441,
	movq	%rax, %rdi	# D.4438,
	call	memcpy	#
	.loc 1 101 0
	movq	-8(%rbp), %rax	# p, tmp122
	movl	48(%rax), %eax	# p_1(D)->paylen, D.4439
	movl	%eax, %edx	# D.4439, D.4442
	movq	-8(%rbp), %rax	# p, tmp123
	movq	40(%rax), %rax	# p_1(D)->payload, D.4438
	movq	-8(%rbp), %rcx	# p, tmp124
	movq	56(%rcx), %rcx	# p_1(D)->packet, D.4438
	addq	$12, %rcx	#, D.4438
	movq	%rax, %rsi	# D.4438,
	movq	%rcx, %rdi	# D.4438,
	call	memcpy	#
	.loc 1 102 0
	movq	-8(%rbp), %rax	# p, tmp125
	movl	48(%rax), %eax	# p_1(D)->paylen, D.4439
	leal	12(%rax), %edx	#, D.4439
	movq	-8(%rbp), %rax	# p, tmp126
	movl	%edx, 64(%rax)	# D.4439, p_1(D)->packlen
	.loc 1 103 0
	movl	$0, %eax	#, D.4443
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ComposeRTPPacket, .-ComposeRTPPacket
	.globl	WriteRTPPacket
	.type	WriteRTPPacket, @function
WriteRTPPacket:
.LFB3:
	.loc 1 132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movq	%rsi, -32(%rbp)	# f, f
	.loc 1 133 0
	movl	$-1, -4(%rbp)	#, intime
	.loc 1 139 0
	movq	-24(%rbp), %rax	# p, tmp68
	leaq	64(%rax), %rdi	#, D.4445
	movq	-32(%rbp), %rax	# f, tmp69
	movq	%rax, %rcx	# tmp69,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	cmpq	$1, %rax	#, D.4446
	je	.L4	#,
	.loc 1 140 0
	movl	$-1, %eax	#, D.4444
	jmp	.L8	#
.L4:
	.loc 1 141 0
	movq	-32(%rbp), %rdx	# f, tmp70
	leaq	-4(%rbp), %rax	#, tmp71
	movq	%rdx, %rcx	# tmp70,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	fwrite	#
	cmpq	$1, %rax	#, D.4446
	je	.L6	#,
	.loc 1 142 0
	movl	$-1, %eax	#, D.4444
	jmp	.L8	#
.L6:
	.loc 1 143 0
	movq	-24(%rbp), %rax	# p, tmp72
	movl	64(%rax), %eax	# p_2(D)->packlen, D.4447
	movl	%eax, %esi	# D.4447, D.4446
	movq	-24(%rbp), %rax	# p, tmp73
	movq	56(%rax), %rax	# p_2(D)->packet, D.4448
	movq	-32(%rbp), %rdx	# f, tmp74
	movq	%rdx, %rcx	# tmp74,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.4448,
	call	fwrite	#
	cmpq	$1, %rax	#, D.4446
	je	.L7	#,
	.loc 1 144 0
	movl	$-1, %eax	#, D.4444
	jmp	.L8	#
.L7:
	.loc 1 145 0
	movl	$0, %eax	#, D.4444
.L8:
	.loc 1 146 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WriteRTPPacket, .-WriteRTPPacket
	.section	.rodata
.LC0:
	.string	"RTPWriteNALU-1"
.LC1:
	.string	"RTPWriteNALU-2"
.LC2:
	.string	"RTPWriteNALU-3"
	.align 8
.LC3:
	.string	"Cannot compose RTP packet, exit"
	.align 8
.LC4:
	.string	"Cannot write %d bytes of RTP packet to outfile, exit\n"
	.text
	.globl	WriteRTPNALU
	.type	WriteRTPNALU, @function
WriteRTPNALU:
.LFB4:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# n, n
	.loc 1 180 0
	movq	-24(%rbp), %rax	# n, tmp99
	movq	24(%rax), %rax	# n_1(D)->buf, D.4449
	.loc 1 181 0
	movq	-24(%rbp), %rdx	# n, tmp100
	movl	20(%rdx), %edx	# n_1(D)->forbidden_bit, D.4450
	sall	$7, %edx	#, D.4450
	.loc 1 180 0
	movl	%edx, %ecx	# D.4450, D.4451
	.loc 1 182 0
	movq	-24(%rbp), %rdx	# n, tmp101
	movl	16(%rdx), %edx	# n_1(D)->nal_reference_idc, D.4450
	sall	$5, %edx	#, D.4450
	.loc 1 180 0
	orl	%edx, %ecx	# D.4451, D.4451
	.loc 1 183 0
	movq	-24(%rbp), %rdx	# n, tmp102
	movl	12(%rdx), %edx	# n_1(D)->nal_unit_type, D.4450
	.loc 1 180 0
	orl	%ecx, %edx	# D.4451, D.4451
	movb	%dl, (%rax)	# D.4452, *_2
	.loc 1 186 0
	movl	$72, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp103, p
	cmpq	$0, -8(%rbp)	#, p
	jne	.L10	#,
	.loc 1 187 0
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L10:
	.loc 1 188 0
	movl	$65508, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp104, D.4453
	movq	-8(%rbp), %rax	# p, tmp105
	movq	%rdx, 56(%rax)	# D.4453, p_14->packet
	movq	-8(%rbp), %rax	# p, tmp106
	movq	56(%rax), %rax	# p_14->packet, D.4449
	testq	%rax, %rax	# D.4449
	jne	.L11	#,
	.loc 1 189 0
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L11:
	.loc 1 190 0
	movl	$65508, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp107, D.4453
	movq	-8(%rbp), %rax	# p, tmp108
	movq	%rdx, 40(%rax)	# D.4453, p_14->payload
	movq	-8(%rbp), %rax	# p, tmp109
	movq	40(%rax), %rax	# p_14->payload, D.4449
	testq	%rax, %rax	# D.4449
	jne	.L12	#,
	.loc 1 191 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L12:
	.loc 1 193 0
	movq	-8(%rbp), %rax	# p, tmp110
	movl	$2, (%rax)	#, p_14->v
	.loc 1 194 0
	movq	-8(%rbp), %rax	# p, tmp111
	movl	$0, 4(%rax)	#, p_14->p
	.loc 1 195 0
	movq	-8(%rbp), %rax	# p, tmp112
	movl	$0, 8(%rax)	#, p_14->x
	.loc 1 196 0
	movq	-8(%rbp), %rax	# p, tmp113
	movl	$0, 12(%rax)	#, p_14->cc
	.loc 1 197 0
	movq	-24(%rbp), %rax	# n, tmp114
	movl	(%rax), %eax	# n_1(D)->startcodeprefix_len, D.4450
	cmpl	$4, %eax	#, D.4450
	sete	%al	#, D.4454
	movzbl	%al, %edx	# D.4454, D.4455
	movq	-8(%rbp), %rax	# p, tmp115
	movl	%edx, 16(%rax)	# D.4455, p_14->m
	.loc 1 203 0
	movq	-8(%rbp), %rax	# p, tmp116
	movl	$105, 20(%rax)	#, p_14->pt
	.loc 1 204 0
	movl	CurrentRTPSequenceNumber(%rip), %eax	# CurrentRTPSequenceNumber, CurrentRTPSequenceNumber.0
	leal	1(%rax), %edx	#, CurrentRTPSequenceNumber.2
	movl	%edx, CurrentRTPSequenceNumber(%rip)	# CurrentRTPSequenceNumber.2, CurrentRTPSequenceNumber
	movl	%eax, %edx	# CurrentRTPSequenceNumber.1, CurrentRTPSequenceNumber.3
	movq	-8(%rbp), %rax	# p, tmp117
	movl	%edx, 24(%rax)	# CurrentRTPSequenceNumber.3, p_14->seq
	.loc 1 205 0
	movl	CurrentRTPTimestamp(%rip), %eax	# CurrentRTPTimestamp, CurrentRTPTimestamp.4
	movl	%eax, %edx	# CurrentRTPTimestamp.4, CurrentRTPTimestamp.5
	movq	-8(%rbp), %rax	# p, tmp118
	movl	%edx, 28(%rax)	# CurrentRTPTimestamp.5, p_14->timestamp
	.loc 1 206 0
	movq	-8(%rbp), %rax	# p, tmp119
	movl	$305419896, 32(%rax)	#, p_14->ssrc
	.loc 1 207 0
	movq	-24(%rbp), %rax	# n, tmp120
	movl	4(%rax), %edx	# n_1(D)->len, D.4455
	movq	-8(%rbp), %rax	# p, tmp121
	movl	%edx, 48(%rax)	# D.4455, p_14->paylen
	.loc 1 208 0
	movq	-24(%rbp), %rax	# n, tmp122
	movl	4(%rax), %eax	# n_1(D)->len, D.4455
	movl	%eax, %edx	# D.4455, D.4456
	movq	-24(%rbp), %rax	# n, tmp123
	movq	24(%rax), %rcx	# n_1(D)->buf, D.4449
	movq	-8(%rbp), %rax	# p, tmp124
	movq	40(%rax), %rax	# p_14->payload, D.4449
	movq	%rcx, %rsi	# D.4449,
	movq	%rax, %rdi	# D.4449,
	call	memcpy	#
	.loc 1 213 0
	movq	-8(%rbp), %rax	# p, tmp125
	movq	%rax, %rdi	# tmp125,
	call	ComposeRTPPacket	#
	testl	%eax, %eax	# D.4450
	jns	.L13	#,
	.loc 1 215 0
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 216 0
	movl	$-1, %edi	#,
	call	exit	#
.L13:
	.loc 1 218 0
	movq	f(%rip), %rdx	# f, f.6
	movq	-8(%rbp), %rax	# p, tmp126
	movq	%rdx, %rsi	# f.6,
	movq	%rax, %rdi	# tmp126,
	call	WriteRTPPacket	#
	testl	%eax, %eax	# D.4450
	jns	.L14	#,
	.loc 1 220 0
	movq	-8(%rbp), %rax	# p, tmp127
	movl	64(%rax), %eax	# p_14->packlen, D.4455
	movl	%eax, %esi	# D.4455,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 221 0
	movl	$-1, %edi	#,
	call	exit	#
.L14:
	.loc 1 223 0
	movq	-8(%rbp), %rax	# p, tmp128
	movq	56(%rax), %rax	# p_14->packet, D.4449
	movq	%rax, %rdi	# D.4449,
	call	free	#
	.loc 1 224 0
	movq	-8(%rbp), %rax	# p, tmp129
	movq	40(%rax), %rax	# p_14->payload, D.4449
	movq	%rax, %rdi	# D.4449,
	call	free	#
	.loc 1 225 0
	movq	-8(%rbp), %rax	# p, tmp130
	movq	%rax, %rdi	# tmp130,
	call	free	#
	.loc 1 226 0
	movq	-24(%rbp), %rax	# n, tmp131
	movl	4(%rax), %eax	# n_1(D)->len, D.4455
	sall	$3, %eax	#, D.4455
	.loc 1 227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	WriteRTPNALU, .-WriteRTPNALU
	.globl	RTPUpdateTimestamp
	.type	RTPUpdateTimestamp, @function
RTPUpdateTimestamp:
.LFB5:
	.loc 1 246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# tr, tr
	.loc 1 250 0
	movl	oldtr.4297(%rip), %eax	# oldtr, oldtr.7
	cmpl	$-1, %eax	#, oldtr.7
	jne	.L17	#,
	.loc 1 252 0
	movl	$0, CurrentRTPTimestamp(%rip)	#, CurrentRTPTimestamp
	.loc 1 254 0
	movl	$0, oldtr.4297(%rip)	#, oldtr
	.loc 1 255 0
	jmp	.L16	#
.L17:
	.loc 1 268 0
	movl	oldtr.4297(%rip), %eax	# oldtr, oldtr.8
	movl	-20(%rbp), %edx	# tr, tmp67
	subl	%eax, %edx	# oldtr.8, tmp66
	movl	%edx, %eax	# tmp66, tmp66
	movl	%eax, -4(%rbp)	# tmp66, delta
	.loc 1 270 0
	cmpl	$-10, -4(%rbp)	#, delta
	jge	.L19	#,
	.loc 1 271 0
	addl	$256, -4(%rbp)	#, delta
.L19:
	.loc 1 273 0
	movl	-4(%rbp), %eax	# delta, tmp68
	imull	$1000, %eax, %edx	#, tmp68, D.4462
	movl	CurrentRTPTimestamp(%rip), %eax	# CurrentRTPTimestamp, CurrentRTPTimestamp.9
	addl	%edx, %eax	# D.4462, CurrentRTPTimestamp.10
	movl	%eax, CurrentRTPTimestamp(%rip)	# CurrentRTPTimestamp.10, CurrentRTPTimestamp
	.loc 1 274 0
	movl	-20(%rbp), %eax	# tr, tmp69
	movl	%eax, oldtr.4297(%rip)	# tmp69, oldtr
.L16:
	.loc 1 275 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	RTPUpdateTimestamp, .-RTPUpdateTimestamp
	.section	.rodata
.LC5:
	.string	"wb"
	.align 8
.LC6:
	.string	"Fatal: cannot open bitstream file '%s', exit (-1)\n"
	.text
	.globl	OpenRTPFile
	.type	OpenRTPFile, @function
OpenRTPFile:
.LFB6:
	.loc 1 293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# Filename, Filename
	.loc 1 294 0
	movq	-8(%rbp), %rax	# Filename, tmp61
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	fopen	#
	movq	%rax, f(%rip)	# f.11, f
	movq	f(%rip), %rax	# f, f.12
	testq	%rax, %rax	# f.12
	jne	.L20	#,
	.loc 1 296 0
	movq	-8(%rbp), %rax	# Filename, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 297 0
	movl	$-1, %edi	#,
	call	exit	#
.L20:
	.loc 1 299 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	OpenRTPFile, .-OpenRTPFile
	.globl	CloseRTPFile
	.type	CloseRTPFile, @function
CloseRTPFile:
.LFB7:
	.loc 1 314 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 315 0
	movq	f(%rip), %rax	# f, f.13
	movq	%rax, %rdi	# f.13,
	call	fclose	#
	.loc 1 316 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	CloseRTPFile, .-CloseRTPFile
	.data
	.align 4
	.type	oldtr.4297, @object
	.size	oldtr.4297, 4
oldtr.4297:
	.long	-1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "defines.h"
	.file 7 "nalucommon.h"
	.file 8 "rtp.h"
	.file 9 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x59e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF85
	.byte	0x1
	.long	.LASF86
	.long	.LASF87
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xb5
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x236
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x109
	.long	0x26e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10b
	.long	0x274
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x119
	.long	0x27a
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x11d
	.long	0x28a
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x137
	.long	0x290
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF88
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x26e
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x26e
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa3
	.long	0x274
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23d
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0x95
	.long	0x28a
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x236
	.uleb128 0xb
	.long	0x95
	.long	0x2a0
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x1e
	.long	0x46
	.uleb128 0x6
	.byte	0x8
	.long	0x2a0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x9b
	.long	0x2f0
	.uleb128 0xe
	.long	.LASF50
	.sleb128 0
	.uleb128 0xe
	.long	.LASF51
	.sleb128 1
	.uleb128 0xe
	.long	.LASF52
	.sleb128 2
	.uleb128 0xe
	.long	.LASF53
	.sleb128 3
	.uleb128 0xe
	.long	.LASF54
	.sleb128 4
	.uleb128 0xe
	.long	.LASF55
	.sleb128 5
	.uleb128 0xe
	.long	.LASF56
	.sleb128 6
	.uleb128 0xe
	.long	.LASF57
	.sleb128 7
	.uleb128 0xe
	.long	.LASF58
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF59
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF60
	.uleb128 0xf
	.byte	0x20
	.byte	0x7
	.byte	0x28
	.long	0x35b
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x2a
	.long	0x3f
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x7
	.byte	0x2b
	.long	0x54
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x2c
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x2d
	.long	0x3f
	.byte	0xc
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x2e
	.long	0x3f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x2f
	.long	0x3f
	.byte	0x14
	.uleb128 0x10
	.string	"buf"
	.byte	0x7
	.byte	0x30
	.long	0x2ab
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x31
	.long	0x2fe
	.uleb128 0xf
	.byte	0x48
	.byte	0x8
	.byte	0x1d
	.long	0x401
	.uleb128 0x10
	.string	"v"
	.byte	0x8
	.byte	0x1f
	.long	0x54
	.byte	0
	.uleb128 0x10
	.string	"p"
	.byte	0x8
	.byte	0x20
	.long	0x54
	.byte	0x4
	.uleb128 0x10
	.string	"x"
	.byte	0x8
	.byte	0x21
	.long	0x54
	.byte	0x8
	.uleb128 0x10
	.string	"cc"
	.byte	0x8
	.byte	0x22
	.long	0x54
	.byte	0xc
	.uleb128 0x10
	.string	"m"
	.byte	0x8
	.byte	0x24
	.long	0x54
	.byte	0x10
	.uleb128 0x10
	.string	"pt"
	.byte	0x8
	.byte	0x25
	.long	0x54
	.byte	0x14
	.uleb128 0x10
	.string	"seq"
	.byte	0x8
	.byte	0x26
	.long	0x54
	.byte	0x18
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x28
	.long	0x54
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x29
	.long	0x54
	.byte	0x20
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x2a
	.long	0x2ab
	.byte	0x28
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x2b
	.long	0x54
	.byte	0x30
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x2c
	.long	0x2ab
	.byte	0x38
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x2d
	.long	0x54
	.byte	0x40
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x8
	.byte	0x2e
	.long	0x366
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x43a
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x46
	.long	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x401
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.byte	0x82
	.long	0x3f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x488
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x82
	.long	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x82
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0x85
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x11
	.long	.LASF76
	.byte	0x1
	.byte	0xac
	.long	0x3f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c8
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0xac
	.long	0x4c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0xae
	.long	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x35b
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0xf5
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x51c
	.uleb128 0x12
	.string	"tr"
	.byte	0x1
	.byte	0xf5
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0xf7
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.byte	0xf8
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	oldtr.4297
	.byte	0
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.value	0x124
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x54a
	.uleb128 0x17
	.long	.LASF82
	.byte	0x1
	.value	0x124
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.value	0x139
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.byte	0x22
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	CurrentRTPTimestamp
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.byte	0x24
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	CurrentRTPSequenceNumber
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0x27
	.long	0x488
	.uleb128 0x9
	.byte	0x3
	.quad	f
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
.LASF53:
	.string	"BITS_INTER_MB"
.LASF67:
	.string	"timestamp"
.LASF44:
	.string	"_IO_FILE"
.LASF20:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"RTPUpdateTimestamp"
.LASF26:
	.string	"_IO_save_end"
.LASF21:
	.string	"_IO_write_end"
.LASF76:
	.string	"WriteRTPNALU"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF50:
	.string	"BITS_HEADER"
.LASF10:
	.string	"sizetype"
.LASF36:
	.string	"_offset"
.LASF81:
	.string	"OpenRTPFile"
.LASF78:
	.string	"delta"
.LASF82:
	.string	"Filename"
.LASF15:
	.string	"_flags"
.LASF75:
	.string	"WriteRTPPacket"
.LASF22:
	.string	"_IO_buf_base"
.LASF61:
	.string	"startcodeprefix_len"
.LASF27:
	.string	"_markers"
.LASF17:
	.string	"_IO_read_end"
.LASF77:
	.string	"intime"
.LASF71:
	.string	"packet"
.LASF64:
	.string	"nal_reference_idc"
.LASF89:
	.string	"CloseRTPFile"
.LASF86:
	.string	"rtp.c"
.LASF60:
	.string	"float"
.LASF12:
	.string	"long long int"
.LASF35:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"RTPpacket_t"
.LASF63:
	.string	"nal_unit_type"
.LASF32:
	.string	"_cur_column"
.LASF48:
	.string	"_pos"
.LASF54:
	.string	"BITS_CBP_MB"
.LASF49:
	.string	"byte"
.LASF47:
	.string	"_sbuf"
.LASF72:
	.string	"packlen"
.LASF58:
	.string	"MAX_BITCOUNTER_MB"
.LASF1:
	.string	"unsigned char"
.LASF84:
	.string	"CurrentRTPSequenceNumber"
.LASF68:
	.string	"ssrc"
.LASF85:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF65:
	.string	"forbidden_bit"
.LASF3:
	.string	"unsigned int"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF31:
	.string	"_old_offset"
.LASF19:
	.string	"_IO_write_base"
.LASF43:
	.string	"_unused2"
.LASF74:
	.string	"ComposeRTPPacket"
.LASF16:
	.string	"_IO_read_ptr"
.LASF33:
	.string	"_vtable_offset"
.LASF23:
	.string	"_IO_buf_end"
.LASF87:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"char"
.LASF46:
	.string	"_next"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF55:
	.string	"BITS_COEFF_Y_MB"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF52:
	.string	"BITS_MB_MODE"
.LASF66:
	.string	"NALU_t"
.LASF59:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF28:
	.string	"_chain"
.LASF79:
	.string	"oldtr"
.LASF57:
	.string	"BITS_DELTA_QUANT_MB"
.LASF70:
	.string	"paylen"
.LASF25:
	.string	"_IO_backup_base"
.LASF51:
	.string	"BITS_TOTAL_MB"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF62:
	.string	"max_size"
.LASF83:
	.string	"CurrentRTPTimestamp"
.LASF24:
	.string	"_IO_save_base"
.LASF29:
	.string	"_fileno"
.LASF14:
	.string	"FILE"
.LASF56:
	.string	"BITS_COEFF_UV_MB"
.LASF69:
	.string	"payload"
.LASF88:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
