	.file	"types.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 types.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"0x"
.LC1:
	.string	"0X"
	.text
	.globl	IsInt
	.type	IsInt, @function
IsInt:
.LFB2:
	.file 1 "types.c"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 33 0
	movl	$0, -4(%rbp)	#, hex
	.loc 1 35 0
	cmpq	$0, -24(%rbp)	#, s
	jne	.L2	#,
	.loc 1 35 0 is_stmt 0 discriminator 1
	movl	$6, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5897
	jmp	.L3	#
.L2:
	.loc 1 38 0 is_stmt 1
	jmp	.L4	#
.L5:
	.loc 1 38 0 is_stmt 0 discriminator 2
	addq	$1, -24(%rbp)	#, s
.L4:
	.loc 1 38 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_11, D.5899
	movq	-24(%rbp), %rax	# s, tmp101
	movzbl	(%rax), %eax	# *s_1, D.5900
	movsbq	%al, %rax	# D.5900, D.5901
	addq	%rax, %rax	# D.5901
	addq	%rdx, %rax	# D.5899, D.5899
	movzwl	(%rax), %eax	# *_16, D.5902
	movzwl	%ax, %eax	# D.5902, D.5897
	andl	$8192, %eax	#, D.5897
	testl	%eax, %eax	# D.5897
	jne	.L5	#,
	.loc 1 40 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp102
	movzbl	(%rax), %eax	# *s_1, D.5900
	cmpb	$45, %al	#, D.5900
	je	.L6	#,
	.loc 1 40 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp103
	movzbl	(%rax), %eax	# *s_1, D.5900
	cmpb	$43, %al	#, D.5900
	jne	.L7	#,
.L6:
	.loc 1 40 0 discriminator 1
	addq	$1, -24(%rbp)	#, s
.L7:
	.loc 1 42 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp104
	movl	$2, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	strncmp	#
	testl	%eax, %eax	# D.5897
	jne	.L8	#,
	.loc 1 42 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp105
	movq	%rax, %rdi	# tmp105,
	call	strlen	#
	cmpl	$2, %eax	#, D.5897
	jg	.L9	#,
.L8:
	.loc 1 43 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp106
	movl	$2, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	strncmp	#
	.loc 1 42 0 discriminator 2
	testl	%eax, %eax	# D.5897
	jne	.L10	#,
	.loc 1 43 0
	movq	-24(%rbp), %rax	# s, tmp107
	movq	%rax, %rdi	# tmp107,
	call	strlen	#
	cmpl	$2, %eax	#, D.5897
	jle	.L10	#,
.L9:
	.loc 1 45 0
	addq	$2, -24(%rbp)	#, s
	.loc 1 46 0
	movl	$1, -4(%rbp)	#, hex
	jmp	.L11	#
.L10:
	.loc 1 48 0
	movq	-24(%rbp), %rax	# s, tmp108
	movzbl	(%rax), %eax	# *s_2, D.5900
	cmpb	$48, %al	#, D.5900
	jne	.L11	#,
	.loc 1 48 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen	#
	cmpl	$1, %eax	#, D.5897
	jle	.L11	#,
	.loc 1 49 0 is_stmt 1
	addq	$1, -24(%rbp)	#, s
.L11:
	.loc 1 51 0
	cmpl	$0, -4(%rbp)	#, hex
	jne	.L12	#,
	.loc 1 52 0
	jmp	.L13	#
.L15:
	.loc 1 54 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_37, D.5899
	movq	-24(%rbp), %rax	# s, tmp110
	movzbl	(%rax), %eax	# *s_4, D.5900
	movsbq	%al, %rax	# D.5900, D.5901
	addq	%rax, %rax	# D.5901
	addq	%rdx, %rax	# D.5899, D.5899
	movzwl	(%rax), %eax	# *_42, D.5902
	movzwl	%ax, %eax	# D.5902, D.5897
	andl	$2048, %eax	#, D.5897
	testl	%eax, %eax	# D.5897
	jne	.L14	#,
	.loc 1 54 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5897
	jmp	.L3	#
.L14:
	.loc 1 55 0 is_stmt 1
	addq	$1, -24(%rbp)	#, s
.L13:
	.loc 1 52 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp111
	movzbl	(%rax), %eax	# *s_4, D.5900
	testb	%al, %al	# D.5900
	jne	.L15	#,
	jmp	.L16	#
.L12:
	.loc 1 58 0
	jmp	.L17	#
.L19:
	.loc 1 60 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_49, D.5899
	movq	-24(%rbp), %rax	# s, tmp112
	movzbl	(%rax), %eax	# *s_5, D.5900
	movsbq	%al, %rax	# D.5900, D.5901
	addq	%rax, %rax	# D.5901
	addq	%rdx, %rax	# D.5899, D.5899
	movzwl	(%rax), %eax	# *_54, D.5902
	movzwl	%ax, %eax	# D.5902, D.5897
	andl	$4096, %eax	#, D.5897
	testl	%eax, %eax	# D.5897
	jne	.L18	#,
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5897
	jmp	.L3	#
.L18:
	.loc 1 61 0 is_stmt 1
	addq	$1, -24(%rbp)	#, s
.L17:
	.loc 1 58 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp113
	movzbl	(%rax), %eax	# *s_5, D.5900
	testb	%al, %al	# D.5900
	jne	.L19	#,
.L16:
	.loc 1 64 0
	movl	$1, %eax	#, D.5897
.L3:
	.loc 1 65 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	IsInt, .-IsInt
	.globl	IsReal
	.type	IsReal, @function
IsReal:
.LFB3:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 76 0
	movl	$0, -12(%rbp)	#, gotdecimal
	.loc 1 77 0
	movl	$0, -8(%rbp)	#, gotexp
	.loc 1 78 0
	movl	$0, -4(%rbp)	#, gotreal
	.loc 1 80 0
	cmpq	$0, -24(%rbp)	#, s
	jne	.L21	#,
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5905
	jmp	.L22	#
.L21:
	.loc 1 82 0 is_stmt 1
	jmp	.L23	#
.L24:
	.loc 1 82 0 is_stmt 0 discriminator 2
	addq	$1, -24(%rbp)	#, s
.L23:
	.loc 1 82 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_17, D.5907
	movq	-24(%rbp), %rax	# s, tmp104
	movzbl	(%rax), %eax	# *s_1, D.5908
	movsbq	%al, %rax	# D.5908, D.5909
	addq	%rax, %rax	# D.5909
	addq	%rdx, %rax	# D.5907, D.5907
	movzwl	(%rax), %eax	# *_22, D.5910
	movzwl	%ax, %eax	# D.5910, D.5905
	andl	$8192, %eax	#, D.5905
	testl	%eax, %eax	# D.5905
	jne	.L24	#,
	.loc 1 83 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp105
	movzbl	(%rax), %eax	# *s_1, D.5908
	cmpb	$45, %al	#, D.5908
	je	.L25	#,
	.loc 1 83 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp106
	movzbl	(%rax), %eax	# *s_1, D.5908
	cmpb	$43, %al	#, D.5908
	jne	.L26	#,
.L25:
	.loc 1 83 0 discriminator 1
	addq	$1, -24(%rbp)	#, s
	.loc 1 89 0 is_stmt 1 discriminator 1
	jmp	.L27	#
.L26:
	.loc 1 89 0 is_stmt 0
	jmp	.L27	#
.L37:
	.loc 1 91 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_31, D.5907
	movq	-24(%rbp), %rax	# s, tmp107
	movzbl	(%rax), %eax	# *s_3, D.5908
	movsbq	%al, %rax	# D.5908, D.5909
	addq	%rax, %rax	# D.5909
	addq	%rdx, %rax	# D.5907, D.5907
	movzwl	(%rax), %eax	# *_36, D.5910
	movzwl	%ax, %eax	# D.5910, D.5905
	andl	$2048, %eax	#, D.5905
	testl	%eax, %eax	# D.5905
	je	.L28	#,
	.loc 1 92 0
	addl	$1, -4(%rbp)	#, gotreal
	jmp	.L29	#
.L28:
	.loc 1 93 0
	movq	-24(%rbp), %rax	# s, tmp108
	movzbl	(%rax), %eax	# *s_3, D.5908
	cmpb	$46, %al	#, D.5908
	jne	.L30	#,
	.loc 1 95 0
	cmpl	$0, -12(%rbp)	#, gotdecimal
	je	.L31	#,
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5905
	jmp	.L22	#
.L31:
	.loc 1 96 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, gotexp
	je	.L32	#,
	.loc 1 96 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5905
	jmp	.L22	#
.L32:
	.loc 1 97 0 is_stmt 1
	addl	$1, -12(%rbp)	#, gotdecimal
	jmp	.L29	#
.L30:
	.loc 1 99 0
	movq	-24(%rbp), %rax	# s, tmp109
	movzbl	(%rax), %eax	# *s_3, D.5908
	cmpb	$101, %al	#, D.5908
	je	.L33	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp110
	movzbl	(%rax), %eax	# *s_3, D.5908
	cmpb	$69, %al	#, D.5908
	jne	.L34	#,
.L33:
	.loc 1 101 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, gotexp
	je	.L35	#,
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5905
	jmp	.L22	#
.L35:
	.loc 1 102 0 is_stmt 1 discriminator 2
	addl	$1, -8(%rbp)	#, gotexp
	.loc 1 101 0 discriminator 2
	jmp	.L29	#
.L34:
	.loc 1 104 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_47, D.5907
	movq	-24(%rbp), %rax	# s, tmp111
	movzbl	(%rax), %eax	# *s_3, D.5908
	movsbq	%al, %rax	# D.5908, D.5909
	addq	%rax, %rax	# D.5909
	addq	%rdx, %rax	# D.5907, D.5907
	movzwl	(%rax), %eax	# *_52, D.5910
	movzwl	%ax, %eax	# D.5910, D.5905
	andl	$8192, %eax	#, D.5905
	testl	%eax, %eax	# D.5905
	je	.L29	#,
	.loc 1 105 0
	jmp	.L36	#
.L29:
	.loc 1 107 0
	addq	$1, -24(%rbp)	#, s
.L27:
	.loc 1 89 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp112
	movzbl	(%rax), %eax	# *s_3, D.5908
	testb	%al, %al	# D.5908
	jne	.L37	#,
.L36:
	.loc 1 110 0
	jmp	.L38	#
.L39:
	.loc 1 110 0 is_stmt 0 discriminator 2
	addq	$1, -24(%rbp)	#, s
.L38:
	.loc 1 110 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_59, D.5907
	movq	-24(%rbp), %rax	# s, tmp113
	movzbl	(%rax), %eax	# *s_4, D.5908
	movsbq	%al, %rax	# D.5908, D.5909
	addq	%rax, %rax	# D.5909
	addq	%rdx, %rax	# D.5907, D.5907
	movzwl	(%rax), %eax	# *_64, D.5910
	movzwl	%ax, %eax	# D.5910, D.5905
	andl	$8192, %eax	#, D.5905
	testl	%eax, %eax	# D.5905
	jne	.L39	#,
	.loc 1 111 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp114
	movzbl	(%rax), %eax	# *s_4, D.5908
	testb	%al, %al	# D.5908
	jne	.L40	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, gotreal
	je	.L40	#,
	movl	$1, %eax	#, D.5905
	jmp	.L22	#
.L40:
	.loc 1 112 0 is_stmt 1
	movl	$0, %eax	#, D.5905
.L22:
	.loc 1 113 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	IsReal, .-IsReal
	.globl	Byteswap
	.type	Byteswap, @function
Byteswap:
.LFB4:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# swap, swap
	movl	%esi, -28(%rbp)	# nbytes, nbytes
	.loc 1 138 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L42	#
.L43:
	.loc 1 140 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp73
	movl	-28(%rbp), %edx	# nbytes, tmp74
	subl	%eax, %edx	# tmp73, D.5911
	movl	%edx, %eax	# D.5911, D.5911
	cltq
	leaq	-1(%rax), %rdx	#, D.5912
	movq	-24(%rbp), %rax	# swap, tmp75
	addq	%rdx, %rax	# D.5912, D.5913
	movzbl	(%rax), %eax	# *_9, tmp76
	movb	%al, -5(%rbp)	# tmp76, byte
	.loc 1 141 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp77
	movl	-28(%rbp), %edx	# nbytes, tmp78
	subl	%eax, %edx	# tmp77, D.5911
	movl	%edx, %eax	# D.5911, D.5911
	cltq
	leaq	-1(%rax), %rdx	#, D.5912
	movq	-24(%rbp), %rax	# swap, tmp79
	addq	%rax, %rdx	# tmp79, D.5913
	movl	-4(%rbp), %eax	# x, tmp80
	movslq	%eax, %rcx	# tmp80, D.5912
	movq	-24(%rbp), %rax	# swap, tmp81
	addq	%rcx, %rax	# D.5912, D.5913
	movzbl	(%rax), %eax	# *_16, D.5914
	movb	%al, (%rdx)	# D.5914, *_14
	.loc 1 142 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp82
	movslq	%eax, %rdx	# tmp82, D.5912
	movq	-24(%rbp), %rax	# swap, tmp83
	addq	%rax, %rdx	# tmp83, D.5913
	movzbl	-5(%rbp), %eax	# byte, tmp84
	movb	%al, (%rdx)	# tmp84, *_19
	.loc 1 138 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L42:
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# nbytes, tmp85
	movl	%eax, %edx	# tmp85, tmp86
	shrl	$31, %edx	#, tmp86
	addl	%edx, %eax	# tmp86, tmp87
	sarl	%eax	# tmp88
	cmpl	-4(%rbp), %eax	# x, D.5911
	jg	.L43	#,
	.loc 1 144 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Byteswap, .-Byteswap
	.globl	sre_ntoh16
	.type	sre_ntoh16, @function
sre_ntoh16:
.LFB5:
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# netshort, tmp61
	movw	%ax, -4(%rbp)	# tmp61, netshort
	.loc 1 169 0
	movzwl	-4(%rbp), %eax	# netshort, D.5915
	.loc 1 174 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sre_ntoh16, .-sre_ntoh16
	.globl	sre_ntoh32
	.type	sre_ntoh32, @function
sre_ntoh32:
.LFB6:
	.loc 1 177 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# netlong, netlong
	.loc 1 179 0
	movl	-4(%rbp), %eax	# netlong, D.5916
	.loc 1 184 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sre_ntoh32, .-sre_ntoh32
	.globl	sre_hton16
	.type	sre_hton16, @function
sre_hton16:
.LFB7:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# hostshort, tmp61
	movw	%ax, -4(%rbp)	# tmp61, hostshort
	.loc 1 189 0
	movzwl	-4(%rbp), %eax	# hostshort, D.5917
	.loc 1 194 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sre_hton16, .-sre_hton16
	.globl	sre_hton32
	.type	sre_hton32, @function
sre_hton32:
.LFB8:
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# hostlong, hostlong
	.loc 1 199 0
	movl	-4(%rbp), %eax	# hostlong, D.5918
	.loc 1 204 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sre_hton32, .-sre_hton32
	.globl	sre_ntoh64
	.type	sre_ntoh64, @function
sre_ntoh64:
.LFB9:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# net_int64, net_int64
	.loc 1 211 0
	movq	-8(%rbp), %rax	# net_int64, D.5919
	.loc 1 216 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sre_ntoh64, .-sre_ntoh64
	.globl	sre_hton64
	.type	sre_hton64, @function
sre_hton64:
.LFB10:
	.loc 1 219 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# host_int64, host_int64
	.loc 1 221 0
	movq	-8(%rbp), %rax	# host_int64, D.5920
	.loc 1 226 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sre_hton64, .-sre_hton64
.Letext0:
	.file 2 "squid.h"
	.file 3 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x322
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.long	.LASF49
	.long	.LASF50
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x30
	.long	0xd5
	.uleb128 0x6
	.long	.LASF9
	.sleb128 256
	.uleb128 0x6
	.long	.LASF10
	.sleb128 512
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1024
	.uleb128 0x6
	.long	.LASF12
	.sleb128 2048
	.uleb128 0x6
	.long	.LASF13
	.sleb128 4096
	.uleb128 0x6
	.long	.LASF14
	.sleb128 8192
	.uleb128 0x6
	.long	.LASF15
	.sleb128 16384
	.uleb128 0x6
	.long	.LASF16
	.sleb128 32768
	.uleb128 0x6
	.long	.LASF17
	.sleb128 1
	.uleb128 0x6
	.long	.LASF18
	.sleb128 2
	.uleb128 0x6
	.long	.LASF19
	.sleb128 4
	.uleb128 0x6
	.long	.LASF20
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF22
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF25
	.byte	0x2
	.byte	0x28
	.long	0x3b
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.byte	0x29
	.long	0x57
	.uleb128 0x7
	.long	.LASF27
	.byte	0x2
	.byte	0x2a
	.long	0xea
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0x1f
	.long	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e
	.uleb128 0x9
	.string	"s"
	.byte	0x1
	.byte	0x1f
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"hex"
	.byte	0x1
	.byte	0x21
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.byte	0x4a
	.long	0x42
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a6
	.uleb128 0x9
	.string	"s"
	.byte	0x1
	.byte	0x4a
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x4c
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x4d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x4e
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.byte	0x85
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.byte	0x85
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF34
	.byte	0x1
	.byte	0x85
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0x87
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x88
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0xa6
	.long	0xf1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.byte	0xa6
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0xb0
	.long	0xfc
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x25a
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0xb0
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.byte	0xba
	.long	0xf1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x28a
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0xba
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0xc4
	.long	0xfc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ba
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0xc4
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x1
	.byte	0xd0
	.long	0x107
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ea
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.byte	0xd0
	.long	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0xda
	.long	0x107
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0xda
	.long	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF52
	.byte	0x2
	.byte	0x3b
	.long	0x42
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xf
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
.LASF23:
	.string	"long long int"
.LASF37:
	.string	"netshort"
.LASF12:
	.string	"_ISdigit"
.LASF18:
	.string	"_IScntrl"
.LASF42:
	.string	"sre_hton32"
.LASF25:
	.string	"sqd_uint16"
.LASF2:
	.string	"short unsigned int"
.LASF33:
	.string	"swap"
.LASF26:
	.string	"sqd_uint32"
.LASF40:
	.string	"sre_hton16"
.LASF35:
	.string	"byte"
.LASF46:
	.string	"sre_hton64"
.LASF16:
	.string	"_ISgraph"
.LASF15:
	.string	"_ISprint"
.LASF17:
	.string	"_ISblank"
.LASF44:
	.string	"sre_ntoh64"
.LASF21:
	.string	"float"
.LASF39:
	.string	"netlong"
.LASF49:
	.string	"types.c"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"_ISxdigit"
.LASF11:
	.string	"_ISalpha"
.LASF4:
	.string	"unsigned char"
.LASF22:
	.string	"double"
.LASF7:
	.string	"short int"
.LASF50:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF43:
	.string	"hostlong"
.LASF45:
	.string	"net_int64"
.LASF41:
	.string	"hostshort"
.LASF5:
	.string	"unsigned int"
.LASF3:
	.string	"char"
.LASF47:
	.string	"host_int64"
.LASF31:
	.string	"gotexp"
.LASF20:
	.string	"_ISalnum"
.LASF1:
	.string	"sizetype"
.LASF52:
	.string	"squid_errno"
.LASF10:
	.string	"_ISlower"
.LASF51:
	.string	"Byteswap"
.LASF29:
	.string	"IsReal"
.LASF27:
	.string	"sqd_uint64"
.LASF48:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF19:
	.string	"_ISpunct"
.LASF14:
	.string	"_ISspace"
.LASF36:
	.string	"sre_ntoh16"
.LASF8:
	.string	"long int"
.LASF38:
	.string	"sre_ntoh32"
.LASF32:
	.string	"gotreal"
.LASF6:
	.string	"signed char"
.LASF28:
	.string	"IsInt"
.LASF34:
	.string	"nbytes"
.LASF9:
	.string	"_ISupper"
.LASF24:
	.string	"long long unsigned int"
.LASF30:
	.string	"gotdecimal"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
