	.file	"rtlanal.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 rtlanal.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	target_flags,4,4
	.globl	rtx_unstable_p
	.type	rtx_unstable_p, @function
rtx_unstable_p:
.LFB2:
	.file 1 "rtlanal.c"
	.loc 1 50 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 51 0
	movq	-40(%rbp), %rax	# x, tmp93
	movzwl	(%rax), %eax	# x_5(D)->code, D.13432
	movzwl	%ax, %eax	# D.13432, tmp94
	movl	%eax, -12(%rbp)	# tmp94, code
	.loc 1 55 0
	movl	-12(%rbp), %eax	# code, tmp96
	subl	$41, %eax	#, tmp95
	cmpl	$30, %eax	#, tmp95
	ja	.L25	#,
	movl	%eax, %eax	# tmp95, tmp97
	movq	.L4(,%rax,8), %rax	#, tmp98
	jmp	*%rax	# tmp98
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L5
	.quad	.L5
	.quad	.L5
	.quad	.L25
	.quad	.L5
	.quad	.L25
	.quad	.L25
	.quad	.L6
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L25
	.quad	.L7
	.quad	.L5
	.quad	.L5
	.quad	.L25
	.quad	.L5
	.quad	.L8
	.text
.L7:
	.loc 1 58 0
	movq	-40(%rbp), %rax	# x, tmp99
	movzbl	3(%rax), %eax	# *x_5(D), D.13433
	andl	$4, %eax	#, D.13433
	testb	%al, %al	# D.13433
	je	.L9	#,
	.loc 1 58 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp100
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.13434
	movq	%rax, %rdi	# D.13434,
	call	rtx_unstable_p	#
	testl	%eax, %eax	# D.13431
	je	.L10	#,
.L9:
	.loc 1 58 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L11	#
.L10:
	.loc 1 58 0 discriminator 3
	movl	$0, %eax	#, iftmp.0
.L11:
	.loc 1 58 0 discriminator 4
	jmp	.L12	#
.L8:
	.loc 1 61 0 is_stmt 1
	movl	$1, %eax	#, D.13431
	jmp	.L12	#
.L5:
	.loc 1 70 0
	movl	$0, %eax	#, D.13431
	jmp	.L12	#
.L6:
	.loc 1 74 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.13434
	cmpq	-40(%rbp), %rax	# x, D.13434
	je	.L13	#,
	.loc 1 74 0 is_stmt 0 discriminator 1
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.13434
	cmpq	-40(%rbp), %rax	# x, D.13434
	je	.L13	#,
	.loc 1 76 0 is_stmt 1
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.13434
	cmpq	-40(%rbp), %rax	# x, D.13434
	jne	.L14	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.13435
	testb	%al, %al	# D.13435
	jne	.L13	#,
.L14:
	.loc 1 77 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp101
	movzbl	3(%rax), %eax	# *x_5(D), D.13433
	andl	$4, %eax	#, D.13433
	testb	%al, %al	# D.13433
	je	.L15	#,
.L13:
	.loc 1 78 0
	movl	$0, %eax	#, D.13431
	jmp	.L12	#
.L15:
	.loc 1 83 0
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.1
	cmpq	%rax, -40(%rbp)	# pic_offset_table_rtx.1, x
	jne	.L16	#,
	.loc 1 84 0
	movl	$0, %eax	#, D.13431
	jmp	.L12	#
.L16:
	.loc 1 86 0
	movl	$1, %eax	#, D.13431
	jmp	.L12	#
.L3:
	.loc 1 89 0
	movq	-40(%rbp), %rax	# x, tmp102
	movzbl	3(%rax), %eax	# *x_5(D), D.13433
	andl	$8, %eax	#, D.13433
	testb	%al, %al	# D.13433
	je	.L2	#,
	.loc 1 90 0
	movl	$1, %eax	#, D.13431
	jmp	.L12	#
.L2:
.L25:
	.loc 1 95 0
	nop
	.loc 1 98 0
	movl	-12(%rbp), %eax	# code, code.2
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp104
	movq	%rax, -8(%rbp)	# tmp104, fmt
	.loc 1 99 0
	movl	-12(%rbp), %eax	# code, code.3
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13433
	movzbl	%al, %eax	# D.13433, D.13431
	subl	$1, %eax	#, tmp106
	movl	%eax, -20(%rbp)	# tmp106, i
	jmp	.L17	#
.L23:
	.loc 1 100 0
	movl	-20(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, D.13436
	movq	-8(%rbp), %rax	# fmt, tmp108
	addq	%rdx, %rax	# D.13436, D.13437
	movzbl	(%rax), %eax	# *_37, D.13435
	cmpb	$101, %al	#, D.13435
	jne	.L18	#,
	.loc 1 102 0
	movq	-40(%rbp), %rax	# x, tmp109
	movl	-20(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtx, D.13434
	movq	%rax, %rdi	# D.13434,
	call	rtx_unstable_p	#
	testl	%eax, %eax	# D.13431
	je	.L19	#,
	.loc 1 103 0
	movl	$1, %eax	#, D.13431
	jmp	.L12	#
.L18:
	.loc 1 105 0
	movl	-20(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, D.13436
	movq	-8(%rbp), %rax	# fmt, tmp113
	addq	%rdx, %rax	# D.13436, D.13437
	movzbl	(%rax), %eax	# *_43, D.13435
	cmpb	$69, %al	#, D.13435
	jne	.L19	#,
.LBB2:
	.loc 1 108 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L20	#
.L22:
	.loc 1 109 0
	movq	-40(%rbp), %rax	# x, tmp114
	movl	-20(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.13438
	movl	-16(%rbp), %edx	# j, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movq	8(%rax,%rdx,8), %rax	# _48->elem, D.13434
	movq	%rax, %rdi	# D.13434,
	call	rtx_unstable_p	#
	testl	%eax, %eax	# D.13431
	je	.L21	#,
	.loc 1 110 0
	movl	$1, %eax	#, D.13431
	jmp	.L12	#
.L21:
	.loc 1 108 0
	addl	$1, -16(%rbp)	#, j
.L20:
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp119
	movl	-20(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.13438
	movl	(%rax), %eax	# _46->num_elem, D.13431
	cmpl	-16(%rbp), %eax	# j, D.13431
	jg	.L22	#,
.L19:
.LBE2:
	.loc 1 99 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L17:
	.loc 1 99 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L23	#,
	.loc 1 113 0 is_stmt 1
	movl	$0, %eax	#, D.13431
.L12:
	.loc 1 114 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rtx_unstable_p, .-rtx_unstable_p
	.globl	rtx_varies_p
	.type	rtx_varies_p, @function
rtx_varies_p:
.LFB3:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# for_alias, for_alias
	.loc 1 128 0
	movq	-40(%rbp), %rax	# x, tmp96
	movzwl	(%rax), %eax	# x_6(D)->code, D.13440
	movzwl	%ax, %eax	# D.13440, tmp97
	movl	%eax, -12(%rbp)	# tmp97, code
	.loc 1 132 0
	movl	-12(%rbp), %eax	# code, tmp99
	subl	$41, %eax	#, tmp98
	cmpl	$94, %eax	#, tmp98
	ja	.L54	#,
	movl	%eax, %eax	# tmp98, tmp100
	movq	.L29(,%rax,8), %rax	#, tmp101
	jmp	*%rax	# tmp101
	.section	.rodata
	.align 8
	.align 4
.L29:
	.quad	.L28
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L54
	.quad	.L30
	.quad	.L54
	.quad	.L54
	.quad	.L31
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L32
	.quad	.L30
	.quad	.L30
	.quad	.L54
	.quad	.L54
	.quad	.L33
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L34
	.text
.L32:
	.loc 1 135 0
	movq	-40(%rbp), %rax	# x, tmp102
	movzbl	3(%rax), %eax	# *x_6(D), D.13441
	andl	$4, %eax	#, D.13441
	testb	%al, %al	# D.13441
	je	.L35	#,
	.loc 1 135 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp103
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13442
	movl	-44(%rbp), %edx	# for_alias, tmp104
	movl	%edx, %esi	# tmp104,
	movq	%rax, %rdi	# D.13442,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.13439
	je	.L36	#,
.L35:
	.loc 1 135 0 discriminator 1
	movl	$1, %eax	#, iftmp.4
	jmp	.L37	#
.L36:
	.loc 1 135 0 discriminator 3
	movl	$0, %eax	#, iftmp.4
.L37:
	.loc 1 135 0 discriminator 4
	jmp	.L38	#
.L33:
	.loc 1 138 0 is_stmt 1
	movl	$1, %eax	#, D.13439
	jmp	.L38	#
.L30:
	.loc 1 146 0
	movl	$0, %eax	#, D.13439
	jmp	.L38	#
.L31:
	.loc 1 153 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.13442
	cmpq	-40(%rbp), %rax	# x, D.13442
	je	.L39	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.13442
	cmpq	-40(%rbp), %rax	# x, D.13442
	je	.L39	#,
	.loc 1 155 0 is_stmt 1
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.13442
	cmpq	-40(%rbp), %rax	# x, D.13442
	jne	.L40	#,
	.loc 1 155 0 is_stmt 0 discriminator 1
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.13443
	testb	%al, %al	# D.13443
	je	.L40	#,
.L39:
	.loc 1 156 0 is_stmt 1
	movl	$0, %eax	#, D.13439
	jmp	.L38	#
.L40:
	.loc 1 157 0
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.5
	cmpq	%rax, -40(%rbp)	# pic_offset_table_rtx.5, x
	jne	.L41	#,
	.loc 1 166 0
	movl	$0, %eax	#, D.13439
	jmp	.L38	#
.L41:
	.loc 1 167 0
	movl	$1, %eax	#, D.13439
	jmp	.L38	#
.L34:
	.loc 1 174 0
	cmpl	$0, -44(%rbp)	#, for_alias
	jne	.L42	#,
	.loc 1 173 0
	movq	-40(%rbp), %rax	# x, tmp105
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13442
	movl	-44(%rbp), %edx	# for_alias, tmp106
	movl	%edx, %esi	# tmp106,
	movq	%rax, %rdi	# D.13442,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.13439
	jne	.L43	#,
.L42:
	.loc 1 174 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp107
	movq	16(%rax), %rax	# x_6(D)->fld[1].rtx, D.13442
	movl	-44(%rbp), %edx	# for_alias, tmp108
	movl	%edx, %esi	# tmp108,
	movq	%rax, %rdi	# D.13442,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.13439
	je	.L44	#,
.L43:
	.loc 1 174 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.6
	jmp	.L45	#
.L44:
	.loc 1 174 0 discriminator 3
	movl	$0, %eax	#, iftmp.6
.L45:
	.loc 1 173 0 is_stmt 1
	jmp	.L38	#
.L28:
	.loc 1 177 0
	movq	-40(%rbp), %rax	# x, tmp109
	movzbl	3(%rax), %eax	# *x_6(D), D.13441
	andl	$8, %eax	#, D.13441
	testb	%al, %al	# D.13441
	je	.L27	#,
	.loc 1 178 0
	movl	$1, %eax	#, D.13439
	jmp	.L38	#
.L27:
.L54:
	.loc 1 183 0
	nop
	.loc 1 186 0
	movl	-12(%rbp), %eax	# code, code.7
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp111
	movq	%rax, -8(%rbp)	# tmp111, fmt
	.loc 1 187 0
	movl	-12(%rbp), %eax	# code, code.8
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13441
	movzbl	%al, %eax	# D.13441, D.13439
	subl	$1, %eax	#, tmp113
	movl	%eax, -20(%rbp)	# tmp113, i
	jmp	.L46	#
.L52:
	.loc 1 188 0
	movl	-20(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, D.13444
	movq	-8(%rbp), %rax	# fmt, tmp115
	addq	%rdx, %rax	# D.13444, D.13445
	movzbl	(%rax), %eax	# *_44, D.13443
	cmpb	$101, %al	#, D.13443
	jne	.L47	#,
	.loc 1 190 0
	movq	-40(%rbp), %rax	# x, tmp116
	movl	-20(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtx, D.13442
	movl	-44(%rbp), %edx	# for_alias, tmp119
	movl	%edx, %esi	# tmp119,
	movq	%rax, %rdi	# D.13442,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.13439
	je	.L48	#,
	.loc 1 191 0
	movl	$1, %eax	#, D.13439
	jmp	.L38	#
.L47:
	.loc 1 193 0
	movl	-20(%rbp), %eax	# i, tmp120
	movslq	%eax, %rdx	# tmp120, D.13444
	movq	-8(%rbp), %rax	# fmt, tmp121
	addq	%rdx, %rax	# D.13444, D.13445
	movzbl	(%rax), %eax	# *_50, D.13443
	cmpb	$69, %al	#, D.13443
	jne	.L48	#,
.LBB3:
	.loc 1 196 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L49	#
.L51:
	.loc 1 197 0
	movq	-40(%rbp), %rax	# x, tmp122
	movl	-20(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, tmp123
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtvec, D.13446
	movl	-16(%rbp), %edx	# j, tmp126
	movslq	%edx, %rdx	# tmp126, tmp125
	movq	8(%rax,%rdx,8), %rax	# _55->elem, D.13442
	movl	-44(%rbp), %edx	# for_alias, tmp127
	movl	%edx, %esi	# tmp127,
	movq	%rax, %rdi	# D.13442,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.13439
	je	.L50	#,
	.loc 1 198 0
	movl	$1, %eax	#, D.13439
	jmp	.L38	#
.L50:
	.loc 1 196 0
	addl	$1, -16(%rbp)	#, j
.L49:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp128
	movl	-20(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, tmp129
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtvec, D.13446
	movl	(%rax), %eax	# _53->num_elem, D.13439
	cmpl	-16(%rbp), %eax	# j, D.13439
	jg	.L51	#,
.L48:
.LBE3:
	.loc 1 187 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L46:
	.loc 1 187 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L52	#,
	.loc 1 201 0 is_stmt 1
	movl	$0, %eax	#, D.13439
.L38:
	.loc 1 202 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rtx_varies_p, .-rtx_varies_p
	.globl	rtx_addr_can_trap_p
	.type	rtx_addr_can_trap_p, @function
rtx_addr_can_trap_p:
.LFB4:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 210 0
	movq	-24(%rbp), %rax	# x, tmp96
	movzwl	(%rax), %eax	# x_3(D)->code, D.13448
	movzwl	%ax, %eax	# D.13448, tmp97
	movl	%eax, -4(%rbp)	# tmp97, code
	.loc 1 212 0
	movl	-4(%rbp), %eax	# code, tmp99
	subl	$58, %eax	#, tmp98
	cmpl	$77, %eax	#, tmp98
	ja	.L74	#,
	movl	%eax, %eax	# tmp98, tmp100
	movq	.L58(,%rax,8), %rax	#, tmp101
	jmp	*%rax	# tmp101
	.section	.rodata
	.align 8
	.align 4
.L58:
	.quad	.L57
	.quad	.L74
	.quad	.L74
	.quad	.L59
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L60
	.quad	.L61
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L62
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L64
	.quad	.L63
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L74
	.quad	.L64
	.text
.L61:
	.loc 1 215 0
	movq	-24(%rbp), %rax	# x, tmp102
	movzbl	3(%rax), %eax	# *x_3(D), tmp105
	shrb	$6, %al	#, D.13449
	andl	$1, %eax	#, D.13449
	movzbl	%al, %eax	# D.13449, D.13447
	jmp	.L65	#
.L60:
	.loc 1 218 0
	movl	$0, %eax	#, D.13447
	jmp	.L65	#
.L59:
	.loc 1 222 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.13450
	cmpq	-24(%rbp), %rax	# x, D.13450
	je	.L66	#,
	.loc 1 222 0 is_stmt 0 discriminator 1
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.13450
	cmpq	-24(%rbp), %rax	# x, D.13450
	je	.L66	#,
	.loc 1 223 0 is_stmt 1
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.13450
	cmpq	-24(%rbp), %rax	# x, D.13450
	je	.L66	#,
	.loc 1 225 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.13450
	cmpq	-24(%rbp), %rax	# x, D.13450
	jne	.L67	#,
	.loc 1 225 0 is_stmt 0 discriminator 1
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.13451
	testb	%al, %al	# D.13451
	je	.L67	#,
.L66:
	.loc 1 226 0 is_stmt 1
	movl	$0, %eax	#, D.13447
	jmp	.L65	#
.L67:
	.loc 1 228 0
	movq	-24(%rbp), %rax	# x, tmp106
	movl	8(%rax), %eax	# x_3(D)->fld[0].rtuint, D.13452
	cmpl	$52, %eax	#, D.13452
	jbe	.L68	#,
	.loc 1 229 0
	movq	-24(%rbp), %rax	# x, tmp107
	movl	8(%rax), %eax	# x_3(D)->fld[0].rtuint, D.13452
	cmpl	$57, %eax	#, D.13452
	ja	.L68	#,
	.loc 1 230 0
	movl	$0, %eax	#, D.13447
	jmp	.L65	#
.L68:
	.loc 1 231 0
	movl	$1, %eax	#, D.13447
	jmp	.L65	#
.L57:
	.loc 1 234 0
	movq	-24(%rbp), %rax	# x, tmp108
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.13450
	movq	%rax, %rdi	# D.13450,
	call	rtx_addr_can_trap_p	#
	jmp	.L65	#
.L62:
	.loc 1 240 0
	movq	-24(%rbp), %rax	# x, tmp109
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.13450
	movq	%rax, %rdi	# D.13450,
	call	rtx_addr_can_trap_p	#
	testl	%eax, %eax	# D.13447
	jne	.L69	#,
	.loc 1 241 0
	movq	-24(%rbp), %rax	# x, tmp110
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _23->code, D.13448
	cmpw	$54, %ax	#, D.13448
	je	.L70	#,
.L69:
	.loc 1 242 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp111
	movq	8(%rax), %rdx	# x_3(D)->fld[0].rtx, D.13450
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.10
	.loc 1 240 0 discriminator 1
	cmpq	%rax, %rdx	# pic_offset_table_rtx.10, D.13450
	jne	.L71	#,
	.loc 1 243 0
	movq	-24(%rbp), %rax	# x, tmp112
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _27->code, D.13448
	cmpw	$67, %ax	#, D.13448
	je	.L70	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp113
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _29->code, D.13448
	cmpw	$68, %ax	#, D.13448
	je	.L70	#,
	movq	-24(%rbp), %rax	# x, tmp114
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _31->code, D.13448
	cmpw	$54, %ax	#, D.13448
	je	.L70	#,
	movq	-24(%rbp), %rax	# x, tmp115
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _33->code, D.13448
	cmpw	$55, %ax	#, D.13448
	je	.L70	#,
	movq	-24(%rbp), %rax	# x, tmp116
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _35->code, D.13448
	cmpw	$58, %ax	#, D.13448
	je	.L70	#,
	movq	-24(%rbp), %rax	# x, tmp117
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _37->code, D.13448
	cmpw	$134, %ax	#, D.13448
	je	.L70	#,
	movq	-24(%rbp), %rax	# x, tmp118
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _39->code, D.13448
	cmpw	$56, %ax	#, D.13448
	je	.L70	#,
	movq	-24(%rbp), %rax	# x, tmp119
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movzwl	(%rax), %eax	# _41->code, D.13448
	cmpw	$140, %ax	#, D.13448
	je	.L70	#,
.L71:
	.loc 1 240 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.9
	jmp	.L72	#
.L70:
	.loc 1 240 0 is_stmt 0
	movl	$0, %eax	#, iftmp.9
.L72:
	.loc 1 240 0 discriminator 3
	jmp	.L65	#
.L64:
	.loc 1 247 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp120
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.13450
	movq	%rax, %rdi	# D.13450,
	call	rtx_addr_can_trap_p	#
	jmp	.L65	#
.L63:
	.loc 1 254 0
	movq	-24(%rbp), %rax	# x, tmp121
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.13450
	movq	%rax, %rdi	# D.13450,
	call	rtx_addr_can_trap_p	#
	jmp	.L65	#
.L74:
	.loc 1 257 0
	nop
	.loc 1 261 0
	movl	$1, %eax	#, D.13447
.L65:
	.loc 1 262 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	rtx_addr_can_trap_p, .-rtx_addr_can_trap_p
	.globl	rtx_addr_varies_p
	.type	rtx_addr_varies_p, @function
rtx_addr_varies_p:
.LFB5:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# for_alias, for_alias
	.loc 1 279 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L76	#,
	.loc 1 280 0
	movl	$0, %eax	#, D.13453
	jmp	.L77	#
.L76:
	.loc 1 282 0
	movq	-40(%rbp), %rax	# x, tmp83
	movzwl	(%rax), %eax	# x_5(D)->code, D.13454
	movzwl	%ax, %eax	# D.13454, tmp84
	movl	%eax, -12(%rbp)	# tmp84, code
	.loc 1 283 0
	cmpl	$66, -12(%rbp)	#, code
	jne	.L78	#,
	.loc 1 284 0
	movq	-40(%rbp), %rax	# x, tmp85
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.13455
	cmpb	$51, %al	#, D.13455
	je	.L79	#,
	.loc 1 284 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp86
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.13456
	movl	-44(%rbp), %edx	# for_alias, tmp87
	movl	%edx, %esi	# tmp87,
	movq	%rax, %rdi	# D.13456,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.13453
	je	.L80	#,
.L79:
	.loc 1 284 0 discriminator 1
	movl	$1, %eax	#, iftmp.11
	jmp	.L81	#
.L80:
	.loc 1 284 0 discriminator 3
	movl	$0, %eax	#, iftmp.11
.L81:
	.loc 1 284 0 discriminator 4
	jmp	.L77	#
.L78:
	.loc 1 286 0 is_stmt 1
	movl	-12(%rbp), %eax	# code, code.12
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp89
	movq	%rax, -8(%rbp)	# tmp89, fmt
	.loc 1 287 0
	movl	-12(%rbp), %eax	# code, code.13
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13455
	movzbl	%al, %eax	# D.13455, D.13453
	subl	$1, %eax	#, tmp91
	movl	%eax, -20(%rbp)	# tmp91, i
	jmp	.L82	#
.L88:
	.loc 1 288 0
	movl	-20(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, D.13457
	movq	-8(%rbp), %rax	# fmt, tmp93
	addq	%rdx, %rax	# D.13457, D.13458
	movzbl	(%rax), %eax	# *_23, D.13459
	cmpb	$101, %al	#, D.13459
	jne	.L83	#,
	.loc 1 290 0
	movq	-40(%rbp), %rax	# x, tmp94
	movl	-20(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtx, D.13456
	movl	-44(%rbp), %edx	# for_alias, tmp97
	movl	%edx, %esi	# tmp97,
	movq	%rax, %rdi	# D.13456,
	call	rtx_addr_varies_p	#
	testl	%eax, %eax	# D.13453
	je	.L84	#,
	.loc 1 291 0
	movl	$1, %eax	#, D.13453
	jmp	.L77	#
.L83:
	.loc 1 293 0
	movl	-20(%rbp), %eax	# i, tmp98
	movslq	%eax, %rdx	# tmp98, D.13457
	movq	-8(%rbp), %rax	# fmt, tmp99
	addq	%rdx, %rax	# D.13457, D.13458
	movzbl	(%rax), %eax	# *_29, D.13459
	cmpb	$69, %al	#, D.13459
	jne	.L84	#,
.LBB4:
	.loc 1 296 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L85	#
.L87:
	.loc 1 297 0
	movq	-40(%rbp), %rax	# x, tmp100
	movl	-20(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.13460
	movl	-16(%rbp), %edx	# j, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# _34->elem, D.13456
	movl	-44(%rbp), %edx	# for_alias, tmp105
	movl	%edx, %esi	# tmp105,
	movq	%rax, %rdi	# D.13456,
	call	rtx_addr_varies_p	#
	testl	%eax, %eax	# D.13453
	je	.L86	#,
	.loc 1 298 0
	movl	$1, %eax	#, D.13453
	jmp	.L77	#
.L86:
	.loc 1 296 0
	addl	$1, -16(%rbp)	#, j
.L85:
	.loc 1 296 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp106
	movl	-20(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtvec, D.13460
	movl	(%rax), %eax	# _32->num_elem, D.13453
	cmpl	-16(%rbp), %eax	# j, D.13453
	jg	.L87	#,
.L84:
.LBE4:
	.loc 1 287 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L82:
	.loc 1 287 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L88	#,
	.loc 1 300 0 is_stmt 1
	movl	$0, %eax	#, D.13453
.L77:
	.loc 1 301 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	rtx_addr_varies_p, .-rtx_addr_varies_p
	.globl	get_integer_term
	.type	get_integer_term, @function
get_integer_term:
.LFB6:
	.loc 1 311 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 312 0
	movq	-8(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# x_3(D)->code, D.13462
	cmpw	$58, %ax	#, D.13462
	jne	.L90	#,
	.loc 1 313 0
	movq	-8(%rbp), %rax	# x, tmp72
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, tmp73
	movq	%rax, -8(%rbp)	# tmp73, x
.L90:
	.loc 1 315 0
	movq	-8(%rbp), %rax	# x, tmp74
	movzwl	(%rax), %eax	# x_1->code, D.13462
	cmpw	$76, %ax	#, D.13462
	jne	.L91	#,
	.loc 1 316 0
	movq	-8(%rbp), %rax	# x, tmp75
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.13463
	movzwl	(%rax), %eax	# _7->code, D.13462
	cmpw	$54, %ax	#, D.13462
	jne	.L91	#,
	.loc 1 317 0
	movq	-8(%rbp), %rax	# x, tmp76
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.13463
	movq	8(%rax), %rax	# _9->fld[0].rtwint, D.13461
	negq	%rax	# D.13461
	jmp	.L92	#
.L91:
	.loc 1 318 0
	movq	-8(%rbp), %rax	# x, tmp77
	movzwl	(%rax), %eax	# x_1->code, D.13462
	cmpw	$75, %ax	#, D.13462
	jne	.L93	#,
	.loc 1 319 0
	movq	-8(%rbp), %rax	# x, tmp78
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.13463
	movzwl	(%rax), %eax	# _13->code, D.13462
	cmpw	$54, %ax	#, D.13462
	jne	.L93	#,
	.loc 1 320 0
	movq	-8(%rbp), %rax	# x, tmp79
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.13463
	movq	8(%rax), %rax	# _15->fld[0].rtwint, D.13461
	jmp	.L92	#
.L93:
	.loc 1 321 0
	movl	$0, %eax	#, D.13461
.L92:
	.loc 1 322 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_integer_term, .-get_integer_term
	.globl	get_related_value
	.type	get_related_value, @function
get_related_value:
.LFB7:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 332 0
	movq	-8(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# x_2(D)->code, D.13465
	cmpw	$58, %ax	#, D.13465
	je	.L95	#,
	.loc 1 333 0
	movl	$0, %eax	#, D.13464
	jmp	.L96	#
.L95:
	.loc 1 334 0
	movq	-8(%rbp), %rax	# x, tmp69
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, x
	.loc 1 335 0
	movq	-8(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# x_5->code, D.13465
	cmpw	$75, %ax	#, D.13465
	jne	.L97	#,
	.loc 1 336 0
	movq	-8(%rbp), %rax	# x, tmp72
	movq	16(%rax), %rax	# x_5->fld[1].rtx, D.13466
	movzwl	(%rax), %eax	# _7->code, D.13465
	cmpw	$54, %ax	#, D.13465
	jne	.L97	#,
	.loc 1 337 0
	movq	-8(%rbp), %rax	# x, tmp73
	movq	8(%rax), %rax	# x_5->fld[0].rtx, D.13464
	jmp	.L96	#
.L97:
	.loc 1 338 0
	movq	-8(%rbp), %rax	# x, tmp74
	movzwl	(%rax), %eax	# x_5->code, D.13465
	cmpw	$76, %ax	#, D.13465
	jne	.L98	#,
	.loc 1 339 0
	movq	-8(%rbp), %rax	# x, tmp75
	movq	16(%rax), %rax	# x_5->fld[1].rtx, D.13466
	movzwl	(%rax), %eax	# _11->code, D.13465
	cmpw	$54, %ax	#, D.13465
	jne	.L98	#,
	.loc 1 340 0
	movq	-8(%rbp), %rax	# x, tmp76
	movq	8(%rax), %rax	# x_5->fld[0].rtx, D.13464
	jmp	.L96	#
.L98:
	.loc 1 341 0
	movl	$0, %eax	#, D.13464
.L96:
	.loc 1 342 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	get_related_value, .-get_related_value
	.globl	get_jump_table_offset
	.type	get_jump_table_offset, @function
get_jump_table_offset:
.LFB8:
	.loc 1 355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# insn, insn
	movq	%rsi, -96(%rbp)	# earliest, earliest
	.loc 1 366 0
	movq	-88(%rbp), %rax	# insn, insn.14
	movzwl	(%rax), %eax	# insn.14_23->code, D.13468
	cmpw	$33, %ax	#, D.13468
	jne	.L100	#,
	.loc 1 367 0
	movq	-88(%rbp), %rax	# insn, insn.15
	movq	64(%rax), %rax	# insn.15_25->fld[7].rtx, tmp116
	movq	%rax, -24(%rbp)	# tmp116, label
	cmpq	$0, -24(%rbp)	#, label
	je	.L100	#,
	.loc 1 368 0
	movq	-24(%rbp), %rax	# label, tmp117
	movq	24(%rax), %rax	# label_26->fld[2].rtx, tmp118
	movq	%rax, -16(%rbp)	# tmp118, table
	cmpq	$0, -16(%rbp)	#, table
	je	.L100	#,
	.loc 1 369 0
	movq	-16(%rbp), %rax	# table, tmp119
	movzwl	(%rax), %eax	# table_27->code, D.13468
	cmpw	$33, %ax	#, D.13468
	jne	.L100	#,
	.loc 1 370 0
	movq	-16(%rbp), %rax	# table, tmp120
	movq	32(%rax), %rax	# table_27->fld[3].rtx, D.13469
	movzwl	(%rax), %eax	# _29->code, D.13468
	cmpw	$44, %ax	#, D.13468
	je	.L101	#,
	.loc 1 371 0
	movq	-16(%rbp), %rax	# table, tmp121
	movq	32(%rax), %rax	# table_27->fld[3].rtx, D.13469
	movzwl	(%rax), %eax	# _31->code, D.13468
	cmpw	$45, %ax	#, D.13468
	jne	.L100	#,
.L101:
	.loc 1 372 0
	movq	-88(%rbp), %rax	# insn, insn.17
	movzwl	(%rax), %eax	# insn.17_33->code, D.13468
	movzwl	%ax, %eax	# D.13468, D.13470
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13471
	cmpb	$105, %al	#, D.13471
	jne	.L102	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, insn.19
	movq	32(%rax), %rax	# insn.19_37->fld[3].rtx, D.13469
	movzwl	(%rax), %eax	# _38->code, D.13468
	cmpw	$47, %ax	#, D.13468
	jne	.L103	#,
	.loc 1 372 0 discriminator 3
	movq	-88(%rbp), %rax	# insn, insn.20
	movq	32(%rax), %rax	# insn.20_40->fld[3].rtx, iftmp.18
	jmp	.L105	#
.L103:
	.loc 1 372 0 discriminator 4
	movq	-88(%rbp), %rax	# insn, insn.21
	movq	32(%rax), %rdx	# insn.21_42->fld[3].rtx, D.13469
	movq	-88(%rbp), %rax	# insn, insn.22
	movq	%rdx, %rsi	# D.13469,
	movq	%rax, %rdi	# insn.22,
	call	single_set_2	#
	jmp	.L105	#
.L102:
	.loc 1 372 0 discriminator 2
	movl	$0, %eax	#, iftmp.16
.L105:
	.loc 1 372 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.16, set
	cmpq	$0, -8(%rbp)	#, set
	jne	.L106	#,
.L100:
	.loc 1 373 0 is_stmt 1
	movl	$0, %eax	#, D.13467
	jmp	.L148	#
.L106:
	.loc 1 375 0
	movq	-8(%rbp), %rax	# set, tmp123
	movq	16(%rax), %rax	# set_48->fld[1].rtx, tmp124
	movq	%rax, -56(%rbp)	# tmp124, x
	.loc 1 379 0
	movq	-56(%rbp), %rax	# x, tmp125
	movzwl	(%rax), %eax	# x_49->code, D.13468
	cmpw	$72, %ax	#, D.13468
	jne	.L108	#,
	.loc 1 380 0
	movq	-56(%rbp), %rax	# x, tmp126
	movq	24(%rax), %rax	# x_49->fld[2].rtx, D.13469
	movzwl	(%rax), %eax	# _51->code, D.13468
	cmpw	$67, %ax	#, D.13468
	jne	.L108	#,
	.loc 1 381 0
	movq	-56(%rbp), %rax	# x, tmp127
	movq	16(%rax), %rax	# x_49->fld[1].rtx, tmp128
	movq	%rax, -56(%rbp)	# tmp128, x
.L108:
	.loc 1 384 0
	movq	$0, -48(%rbp)	#, old_x
	jmp	.L109	#
.L111:
	.loc 1 385 0
	movq	-56(%rbp), %rax	# x, tmp129
	movq	%rax, -48(%rbp)	# tmp129, old_x
	leaq	-88(%rbp), %rsi	#, tmp130
	movq	-56(%rbp), %rax	# x, tmp131
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp131,
	call	find_last_value	#
	movq	%rax, -56(%rbp)	# tmp132, x
.L109:
	.loc 1 384 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp133
	movzwl	(%rax), %eax	# x_2->code, D.13468
	cmpw	$61, %ax	#, D.13468
	jne	.L110	#,
	.loc 1 384 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp134
	cmpq	-48(%rbp), %rax	# old_x, tmp134
	jne	.L111	#,
.L110:
	.loc 1 391 0 is_stmt 1
	movq	-16(%rbp), %rax	# table, tmp135
	movq	32(%rax), %rax	# table_27->fld[3].rtx, D.13469
	movzwl	(%rax), %eax	# _58->code, D.13468
	cmpw	$45, %ax	#, D.13468
	jne	.L112	#,
	.loc 1 392 0
	movq	-56(%rbp), %rax	# x, tmp136
	movzwl	(%rax), %eax	# x_2->code, D.13468
	cmpw	$75, %ax	#, D.13468
	je	.L113	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp137
	movzwl	(%rax), %eax	# x_2->code, D.13468
	cmpw	$76, %ax	#, D.13468
	jne	.L112	#,
.L113:
	.loc 1 394 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L114	#
.L120:
	.loc 1 396 0
	movq	-88(%rbp), %rax	# insn, insn.23
	movq	%rax, -64(%rbp)	# insn.23, old_insn
	.loc 1 397 0
	movq	-56(%rbp), %rax	# x, tmp138
	movl	-68(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, tmp139
	movq	8(%rax,%rdx,8), %rax	# x_2->fld[i_17].rtx, tmp141
	movq	%rax, -40(%rbp)	# tmp141, y
	.loc 1 399 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.13469
	cmpq	-40(%rbp), %rax	# y, D.13469
	je	.L115	#,
	.loc 1 399 0 is_stmt 0 discriminator 1
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.24
	cmpq	%rax, -40(%rbp)	# pic_offset_table_rtx.24, y
	je	.L115	#,
	.loc 1 402 0 is_stmt 1
	movq	$0, -32(%rbp)	#, old_y
	jmp	.L116	#
.L118:
	.loc 1 403 0
	movq	-40(%rbp), %rax	# y, tmp142
	movq	%rax, -32(%rbp)	# tmp142, old_y
	leaq	-64(%rbp), %rsi	#, tmp143
	movq	-40(%rbp), %rax	# y, tmp144
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp144,
	call	find_last_value	#
	movq	%rax, -40(%rbp)	# tmp145, y
.L116:
	.loc 1 402 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp146
	movzwl	(%rax), %eax	# y_13->code, D.13468
	cmpw	$61, %ax	#, D.13468
	jne	.L117	#,
	.loc 1 402 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# y, tmp147
	cmpq	-32(%rbp), %rax	# old_y, tmp147
	jne	.L118	#,
.L117:
	.loc 1 406 0 is_stmt 1
	movq	-40(%rbp), %rax	# y, tmp148
	movzwl	(%rax), %eax	# y_13->code, D.13468
	cmpw	$67, %ax	#, D.13468
	jne	.L119	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp149
	movq	8(%rax), %rax	# y_13->fld[0].rtx, D.13469
	cmpq	-24(%rbp), %rax	# label, D.13469
	jne	.L119	#,
	.loc 1 407 0 is_stmt 1
	jmp	.L115	#
.L119:
	.loc 1 394 0
	addl	$1, -68(%rbp)	#, i
.L114:
	.loc 1 394 0 is_stmt 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, i
	jle	.L120	#,
.L115:
	.loc 1 410 0 is_stmt 1
	cmpl	$1, -68(%rbp)	#, i
	jle	.L121	#,
	.loc 1 411 0
	movl	$0, %eax	#, D.13467
	jmp	.L148	#
.L121:
	.loc 1 413 0
	movl	$1, %eax	#, tmp150
	subl	-68(%rbp), %eax	# i, D.13470
	movl	%eax, %edx	# D.13470, D.13470
	movq	-56(%rbp), %rax	# x, tmp151
	movslq	%edx, %rdx	# D.13470, tmp152
	movq	8(%rax,%rdx,8), %rax	# x_2->fld[_75].rtx, tmp153
	movq	%rax, -56(%rbp)	# tmp153, x
	.loc 1 415 0
	movq	$0, -48(%rbp)	#, old_x
	jmp	.L122	#
.L123:
	.loc 1 416 0
	movq	-56(%rbp), %rax	# x, tmp154
	movq	%rax, -48(%rbp)	# tmp154, old_x
	leaq	-88(%rbp), %rsi	#, tmp155
	movq	-56(%rbp), %rax	# x, tmp156
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp156,
	call	find_last_value	#
	movq	%rax, -56(%rbp)	# tmp157, x
.L122:
	.loc 1 415 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp158
	movzwl	(%rax), %eax	# x_3->code, D.13468
	cmpw	$61, %ax	#, D.13468
	jne	.L112	#,
	.loc 1 415 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp159
	cmpq	-48(%rbp), %rax	# old_x, tmp159
	jne	.L123	#,
.L112:
	.loc 1 421 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp160
	movzwl	(%rax), %eax	# x_4->code, D.13468
	cmpw	$120, %ax	#, D.13468
	je	.L124	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp161
	movzwl	(%rax), %eax	# x_4->code, D.13468
	cmpw	$121, %ax	#, D.13468
	jne	.L125	#,
.L124:
	.loc 1 423 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp162
	movq	8(%rax), %rax	# x_4->fld[0].rtx, tmp163
	movq	%rax, -56(%rbp)	# tmp163, x
	.loc 1 425 0
	movq	$0, -48(%rbp)	#, old_x
	jmp	.L126	#
.L127:
	.loc 1 426 0
	movq	-56(%rbp), %rax	# x, tmp164
	movq	%rax, -48(%rbp)	# tmp164, old_x
	leaq	-88(%rbp), %rsi	#, tmp165
	movq	-56(%rbp), %rax	# x, tmp166
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp166,
	call	find_last_value	#
	movq	%rax, -56(%rbp)	# tmp167, x
.L126:
	.loc 1 425 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp168
	movzwl	(%rax), %eax	# x_5->code, D.13468
	cmpw	$61, %ax	#, D.13468
	jne	.L125	#,
	.loc 1 425 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp169
	cmpq	-48(%rbp), %rax	# old_x, tmp169
	jne	.L127	#,
.L125:
	.loc 1 431 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp170
	movzwl	(%rax), %eax	# x_6->code, D.13468
	cmpw	$66, %ax	#, D.13468
	je	.L128	#,
	.loc 1 432 0
	movl	$0, %eax	#, D.13467
	jmp	.L148	#
.L128:
	.loc 1 435 0
	movq	-56(%rbp), %rax	# x, tmp171
	movq	8(%rax), %rax	# x_6->fld[0].rtx, tmp172
	movq	%rax, -56(%rbp)	# tmp172, x
	.loc 1 437 0
	movq	$0, -48(%rbp)	#, old_x
	jmp	.L129	#
.L131:
	.loc 1 438 0
	movq	-56(%rbp), %rax	# x, tmp173
	movq	%rax, -48(%rbp)	# tmp173, old_x
	leaq	-88(%rbp), %rsi	#, tmp174
	movq	-56(%rbp), %rax	# x, tmp175
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp175,
	call	find_last_value	#
	movq	%rax, -56(%rbp)	# tmp176, x
.L129:
	.loc 1 437 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp177
	movzwl	(%rax), %eax	# x_7->code, D.13468
	cmpw	$61, %ax	#, D.13468
	jne	.L130	#,
	.loc 1 437 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp178
	cmpq	-48(%rbp), %rax	# old_x, tmp178
	jne	.L131	#,
.L130:
	.loc 1 442 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp179
	movzwl	(%rax), %eax	# x_7->code, D.13468
	cmpw	$75, %ax	#, D.13468
	je	.L132	#,
	.loc 1 443 0
	movl	$0, %eax	#, D.13467
	jmp	.L148	#
.L132:
	.loc 1 449 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L133	#
.L140:
	.loc 1 451 0
	movq	-88(%rbp), %rax	# insn, insn.25
	movq	%rax, -64(%rbp)	# insn.25, old_insn
	.loc 1 452 0
	movq	-56(%rbp), %rax	# x, tmp180
	movl	-68(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, tmp181
	movq	8(%rax,%rdx,8), %rax	# x_7->fld[i_18].rtx, tmp183
	movq	%rax, -40(%rbp)	# tmp183, y
	.loc 1 454 0
	movq	$0, -32(%rbp)	#, old_y
	jmp	.L134	#
.L136:
	.loc 1 455 0
	movq	-40(%rbp), %rax	# y, tmp184
	movq	%rax, -32(%rbp)	# tmp184, old_y
	leaq	-64(%rbp), %rsi	#, tmp185
	movq	-40(%rbp), %rax	# y, tmp186
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp186,
	call	find_last_value	#
	movq	%rax, -40(%rbp)	# tmp187, y
.L134:
	.loc 1 454 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp188
	movzwl	(%rax), %eax	# y_14->code, D.13468
	cmpw	$61, %ax	#, D.13468
	jne	.L135	#,
	.loc 1 454 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# y, tmp189
	cmpq	-32(%rbp), %rax	# old_y, tmp189
	jne	.L136	#,
.L135:
	.loc 1 458 0 is_stmt 1
	movq	-40(%rbp), %rax	# y, tmp190
	movzwl	(%rax), %eax	# y_14->code, D.13468
	cmpw	$58, %ax	#, D.13468
	je	.L137	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# y, tmp191
	movzwl	(%rax), %eax	# y_14->code, D.13468
	cmpw	$67, %ax	#, D.13468
	jne	.L138	#,
.L137:
	.loc 1 459 0 is_stmt 1
	movq	-40(%rbp), %rdx	# y, tmp192
	movq	-24(%rbp), %rax	# label, tmp193
	movq	%rdx, %rsi	# tmp192,
	movq	%rax, %rdi	# tmp193,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.13470
	je	.L138	#,
	.loc 1 460 0
	jmp	.L139	#
.L138:
	.loc 1 449 0
	addl	$1, -68(%rbp)	#, i
.L133:
	.loc 1 449 0 is_stmt 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, i
	jle	.L140	#,
.L139:
	.loc 1 463 0 is_stmt 1
	cmpl	$1, -68(%rbp)	#, i
	jle	.L141	#,
	.loc 1 464 0
	movl	$0, %eax	#, D.13467
	jmp	.L148	#
.L141:
	.loc 1 466 0
	movl	$1, %eax	#, tmp194
	subl	-68(%rbp), %eax	# i, D.13470
	movl	%eax, %edx	# D.13470, D.13470
	movq	-56(%rbp), %rax	# x, tmp195
	movslq	%edx, %rdx	# D.13470, tmp196
	movq	8(%rax,%rdx,8), %rax	# x_7->fld[_109].rtx, tmp197
	movq	%rax, -56(%rbp)	# tmp197, x
	.loc 1 469 0
	movq	-56(%rbp), %rax	# x, tmp198
	movzwl	(%rax), %eax	# x_110->code, D.13468
	cmpw	$75, %ax	#, D.13468
	je	.L142	#,
	.loc 1 469 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp199
	movzwl	(%rax), %eax	# x_110->code, D.13468
	cmpw	$76, %ax	#, D.13468
	jne	.L143	#,
.L142:
	.loc 1 470 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L144	#
.L146:
	.loc 1 471 0
	movq	-56(%rbp), %rax	# x, tmp200
	movl	-68(%rbp), %edx	# i, tmp202
	movslq	%edx, %rdx	# tmp202, tmp201
	movq	8(%rax,%rdx,8), %rdx	# x_110->fld[i_19].rtx, D.13469
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.26
	cmpq	%rax, %rdx	# pic_offset_table_rtx.26, D.13469
	jne	.L145	#,
	.loc 1 473 0
	movl	$1, %eax	#, tmp203
	subl	-68(%rbp), %eax	# i, D.13470
	movl	%eax, %edx	# D.13470, D.13470
	movq	-56(%rbp), %rax	# x, tmp204
	movslq	%edx, %rdx	# D.13470, tmp205
	movq	8(%rax,%rdx,8), %rax	# x_110->fld[_116].rtx, tmp206
	movq	%rax, -56(%rbp)	# tmp206, x
	.loc 1 474 0
	jmp	.L143	#
.L145:
	.loc 1 470 0
	addl	$1, -68(%rbp)	#, i
.L144:
	.loc 1 470 0 is_stmt 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, i
	jle	.L146	#,
.L143:
	.loc 1 477 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, earliest
	je	.L147	#,
	.loc 1 478 0
	movq	-88(%rbp), %rdx	# insn, insn.27
	movq	-96(%rbp), %rax	# earliest, tmp207
	movq	%rdx, (%rax)	# insn.27, *earliest_119(D)
.L147:
	.loc 1 481 0
	movq	-56(%rbp), %rax	# x, D.13467
.L148:
	.loc 1 482 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_jump_table_offset, .-get_jump_table_offset
	.globl	count_occurrences
	.type	count_occurrences, @function
count_occurrences:
.LFB9:
	.loc 1 491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# find, find
	movl	%edx, -52(%rbp)	# count_dest, count_dest
	.loc 1 497 0
	movq	-40(%rbp), %rax	# x, tmp80
	cmpq	-48(%rbp), %rax	# find, tmp80
	jne	.L150	#,
	.loc 1 498 0
	movl	$1, %eax	#, D.13472
	jmp	.L151	#
.L150:
	.loc 1 500 0
	movq	-40(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_8(D)->code, D.13473
	movzwl	%ax, %eax	# D.13473, tmp82
	movl	%eax, -12(%rbp)	# tmp82, code
	.loc 1 502 0
	movl	-12(%rbp), %eax	# code, tmp84
	subl	$36, %eax	#, tmp83
	cmpl	$33, %eax	#, tmp83
	ja	.L167	#,
	movl	%eax, %eax	# tmp83, tmp85
	movq	.L154(,%rax,8), %rax	#, tmp86
	jmp	*%rax	# tmp86
	.section	.rodata
	.align 8
	.align 4
.L154:
	.quad	.L153
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L155
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L153
	.quad	.L153
	.quad	.L153
	.quad	.L167
	.quad	.L167
	.quad	.L153
	.quad	.L167
	.quad	.L153
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L167
	.quad	.L156
	.quad	.L167
	.quad	.L153
	.quad	.L153
	.text
.L153:
	.loc 1 512 0
	movl	$0, %eax	#, D.13472
	jmp	.L151	#
.L156:
	.loc 1 515 0
	movq	-48(%rbp), %rax	# find, tmp87
	movzwl	(%rax), %eax	# find_9(D)->code, D.13473
	cmpw	$66, %ax	#, D.13473
	jne	.L157	#,
	.loc 1 515 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# find, tmp88
	movq	-40(%rbp), %rax	# x, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13472
	je	.L157	#,
	.loc 1 516 0 is_stmt 1
	movl	$1, %eax	#, D.13472
	jmp	.L151	#
.L157:
	.loc 1 517 0
	jmp	.L158	#
.L155:
	.loc 1 520 0
	movq	-40(%rbp), %rax	# x, tmp90
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.13474
	cmpq	-48(%rbp), %rax	# find, D.13474
	jne	.L159	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, count_dest
	jne	.L159	#,
	.loc 1 521 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp91
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.13474
	movl	-52(%rbp), %edx	# count_dest, tmp92
	movq	-48(%rbp), %rcx	# find, tmp93
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.13474,
	call	count_occurrences	#
	jmp	.L151	#
.L159:
	.loc 1 522 0
	jmp	.L158	#
.L167:
	.loc 1 525 0
	nop
.L158:
	.loc 1 528 0
	movl	-12(%rbp), %eax	# code, code.28
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp95
	movq	%rax, -8(%rbp)	# tmp95, format_ptr
	.loc 1 529 0
	movl	$0, -16(%rbp)	#, count
	.loc 1 531 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L160	#
.L166:
	.loc 1 533 0
	movq	-8(%rbp), %rax	# format_ptr, format_ptr.29
	leaq	1(%rax), %rdx	#, tmp96
	movq	%rdx, -8(%rbp)	# tmp96, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.29_28, D.13476
	movsbl	%al, %eax	# D.13476, D.13472
	cmpl	$69, %eax	#, D.13472
	je	.L162	#,
	cmpl	$101, %eax	#, D.13472
	jne	.L161	#,
	.loc 1 536 0
	movq	-40(%rbp), %rax	# x, tmp97
	movl	-24(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtx, D.13474
	movl	-52(%rbp), %edx	# count_dest, tmp100
	movq	-48(%rbp), %rcx	# find, tmp101
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# D.13474,
	call	count_occurrences	#
	addl	%eax, -16(%rbp)	# D.13472, count
	.loc 1 537 0
	jmp	.L161	#
.L162:
	.loc 1 540 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L164	#
.L165:
	.loc 1 541 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp102
	movl	-24(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtvec, D.13477
	movl	-20(%rbp), %edx	# j, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# _38->elem, D.13474
	movl	-52(%rbp), %edx	# count_dest, tmp107
	movq	-48(%rbp), %rcx	# find, tmp108
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# D.13474,
	call	count_occurrences	#
	addl	%eax, -16(%rbp)	# D.13472, count
	.loc 1 540 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L164:
	.loc 1 540 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp109
	movl	-24(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtvec, D.13477
	movl	(%rax), %eax	# _36->num_elem, D.13472
	cmpl	-20(%rbp), %eax	# j, D.13472
	jg	.L165	#,
	.loc 1 542 0 is_stmt 1
	nop
.L161:
	.loc 1 531 0
	addl	$1, -24(%rbp)	#, i
.L160:
	.loc 1 531 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# code, code.30
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13475
	movzbl	%al, %eax	# D.13475, D.13472
	cmpl	-24(%rbp), %eax	# i, D.13472
	jg	.L166	#,
	.loc 1 545 0 is_stmt 1
	movl	-16(%rbp), %eax	# count, D.13472
.L151:
	.loc 1 546 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	count_occurrences, .-count_occurrences
	.globl	reg_mentioned_p
	.type	reg_mentioned_p, @function
reg_mentioned_p:
.LFB10:
	.loc 1 555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# reg, reg
	movq	%rsi, -48(%rbp)	# in, in
	.loc 1 560 0
	cmpq	$0, -48(%rbp)	#, in
	jne	.L169	#,
	.loc 1 561 0
	movl	$0, %eax	#, D.13478
	jmp	.L170	#
.L169:
	.loc 1 563 0
	movq	-40(%rbp), %rax	# reg, tmp93
	cmpq	-48(%rbp), %rax	# in, tmp93
	jne	.L171	#,
	.loc 1 564 0
	movl	$1, %eax	#, D.13478
	jmp	.L170	#
.L171:
	.loc 1 566 0
	movq	-48(%rbp), %rax	# in, tmp94
	movzwl	(%rax), %eax	# in_6(D)->code, D.13479
	cmpw	$67, %ax	#, D.13479
	jne	.L172	#,
	.loc 1 567 0
	movq	-48(%rbp), %rax	# in, tmp95
	movq	8(%rax), %rax	# in_6(D)->fld[0].rtx, D.13480
	cmpq	-40(%rbp), %rax	# reg, D.13480
	sete	%al	#, D.13481
	movzbl	%al, %eax	# D.13481, D.13478
	jmp	.L170	#
.L172:
	.loc 1 569 0
	movq	-48(%rbp), %rax	# in, tmp96
	movzwl	(%rax), %eax	# in_6(D)->code, D.13479
	movzwl	%ax, %eax	# D.13479, tmp97
	movl	%eax, -12(%rbp)	# tmp97, code
	.loc 1 571 0
	movl	-12(%rbp), %eax	# code, tmp99
	subl	$54, %eax	#, tmp98
	cmpl	$15, %eax	#, tmp98
	ja	.L192	#,
	movl	%eax, %eax	# tmp98, tmp100
	movq	.L175(,%rax,8), %rax	#, tmp101
	jmp	*%rax	# tmp101
	.section	.rodata
	.align 8
	.align 4
.L175:
	.quad	.L174
	.quad	.L176
	.quad	.L176
	.quad	.L192
	.quad	.L192
	.quad	.L177
	.quad	.L192
	.quad	.L178
	.quad	.L177
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L177
	.text
.L178:
	.loc 1 575 0
	movq	-40(%rbp), %rax	# reg, tmp102
	movzwl	(%rax), %eax	# reg_8(D)->code, D.13479
	cmpw	$61, %ax	#, D.13479
	jne	.L179	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# in, tmp103
	movl	8(%rax), %edx	# in_6(D)->fld[0].rtuint, D.13482
	movq	-40(%rbp), %rax	# reg, tmp104
	movl	8(%rax), %eax	# reg_8(D)->fld[0].rtuint, D.13482
	cmpl	%eax, %edx	# D.13482, D.13482
	jne	.L179	#,
	.loc 1 575 0 discriminator 3
	movl	$1, %eax	#, iftmp.31
	jmp	.L180	#
.L179:
	.loc 1 575 0 discriminator 2
	movl	$0, %eax	#, iftmp.31
.L180:
	.loc 1 575 0 discriminator 4
	jmp	.L170	#
.L177:
	.loc 1 582 0 is_stmt 1
	movl	$0, %eax	#, D.13478
	jmp	.L170	#
.L174:
	.loc 1 585 0
	movq	-40(%rbp), %rax	# reg, tmp105
	movzwl	(%rax), %eax	# reg_8(D)->code, D.13479
	cmpw	$54, %ax	#, D.13479
	jne	.L181	#,
	.loc 1 585 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# in, tmp106
	movq	8(%rax), %rdx	# in_6(D)->fld[0].rtwint, D.13483
	movq	-40(%rbp), %rax	# reg, tmp107
	movq	8(%rax), %rax	# reg_8(D)->fld[0].rtwint, D.13483
	cmpq	%rax, %rdx	# D.13483, D.13483
	jne	.L181	#,
	.loc 1 585 0 discriminator 3
	movl	$1, %eax	#, iftmp.32
	jmp	.L182	#
.L181:
	.loc 1 585 0 discriminator 2
	movl	$0, %eax	#, iftmp.32
.L182:
	.loc 1 585 0 discriminator 4
	jmp	.L170	#
.L176:
	.loc 1 590 0 is_stmt 1
	movl	$0, %eax	#, D.13478
	jmp	.L170	#
.L192:
	.loc 1 593 0
	nop
	.loc 1 596 0
	movq	-40(%rbp), %rax	# reg, tmp108
	movzwl	(%rax), %eax	# reg_8(D)->code, D.13479
	movzwl	%ax, %eax	# D.13479, D.13482
	cmpl	-12(%rbp), %eax	# code, D.13482
	jne	.L183	#,
	.loc 1 596 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# in, tmp109
	movq	-40(%rbp), %rax	# reg, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13478
	je	.L183	#,
	.loc 1 597 0 is_stmt 1
	movl	$1, %eax	#, D.13478
	jmp	.L170	#
.L183:
	.loc 1 599 0
	movl	-12(%rbp), %eax	# code, code.33
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp112
	movq	%rax, -8(%rbp)	# tmp112, fmt
	.loc 1 601 0
	movl	-12(%rbp), %eax	# code, code.34
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13484
	movzbl	%al, %eax	# D.13484, D.13478
	subl	$1, %eax	#, tmp114
	movl	%eax, -20(%rbp)	# tmp114, i
	jmp	.L184	#
.L190:
	.loc 1 603 0
	movl	-20(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, D.13485
	movq	-8(%rbp), %rax	# fmt, tmp116
	addq	%rdx, %rax	# D.13485, D.13486
	movzbl	(%rax), %eax	# *_41, D.13487
	cmpb	$69, %al	#, D.13487
	jne	.L185	#,
.LBB5:
	.loc 1 606 0
	movq	-48(%rbp), %rax	# in, tmp117
	movl	-20(%rbp), %edx	# i, tmp119
	movslq	%edx, %rdx	# tmp119, tmp118
	movq	8(%rax,%rdx,8), %rax	# in_6(D)->fld[i_1].rtvec, D.13488
	movl	(%rax), %eax	# _43->num_elem, D.13478
	subl	$1, %eax	#, tmp120
	movl	%eax, -16(%rbp)	# tmp120, j
	jmp	.L186	#
.L188:
	.loc 1 607 0
	movq	-48(%rbp), %rax	# in, tmp121
	movl	-20(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, tmp122
	movq	8(%rax,%rdx,8), %rax	# in_6(D)->fld[i_1].rtvec, D.13488
	movl	-16(%rbp), %edx	# j, tmp125
	movslq	%edx, %rdx	# tmp125, tmp124
	movq	8(%rax,%rdx,8), %rdx	# _46->elem, D.13480
	movq	-40(%rbp), %rax	# reg, tmp126
	movq	%rdx, %rsi	# D.13480,
	movq	%rax, %rdi	# tmp126,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.13478
	je	.L187	#,
	.loc 1 608 0
	movl	$1, %eax	#, D.13478
	jmp	.L170	#
.L187:
	.loc 1 606 0
	subl	$1, -16(%rbp)	#, j
.L186:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L188	#,
.LBE5:
	jmp	.L189	#
.L185:
	.loc 1 610 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, D.13485
	movq	-8(%rbp), %rax	# fmt, tmp128
	addq	%rdx, %rax	# D.13485, D.13486
	movzbl	(%rax), %eax	# *_52, D.13487
	cmpb	$101, %al	#, D.13487
	jne	.L189	#,
	.loc 1 611 0
	movq	-48(%rbp), %rax	# in, tmp129
	movl	-20(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	movq	8(%rax,%rdx,8), %rdx	# in_6(D)->fld[i_1].rtx, D.13480
	movq	-40(%rbp), %rax	# reg, tmp132
	movq	%rdx, %rsi	# D.13480,
	movq	%rax, %rdi	# tmp132,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.13478
	je	.L189	#,
	.loc 1 612 0
	movl	$1, %eax	#, D.13478
	jmp	.L170	#
.L189:
	.loc 1 601 0
	subl	$1, -20(%rbp)	#, i
.L184:
	.loc 1 601 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L190	#,
	.loc 1 614 0 is_stmt 1
	movl	$0, %eax	#, D.13478
.L170:
	.loc 1 615 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	reg_mentioned_p, .-reg_mentioned_p
	.globl	no_labels_between_p
	.type	no_labels_between_p, @function
no_labels_between_p:
.LFB11:
	.loc 1 623 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# beg, beg
	movq	%rsi, -32(%rbp)	# end, end
	.loc 1 625 0
	movq	-24(%rbp), %rax	# beg, tmp62
	cmpq	-32(%rbp), %rax	# end, tmp62
	jne	.L194	#,
	.loc 1 626 0
	movl	$0, %eax	#, D.13489
	jmp	.L195	#
.L194:
	.loc 1 627 0
	movq	-24(%rbp), %rax	# beg, tmp63
	movq	24(%rax), %rax	# beg_3(D)->fld[2].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	jmp	.L196	#
.L198:
	.loc 1 628 0
	movq	-8(%rbp), %rax	# p, tmp65
	movzwl	(%rax), %eax	# p_1->code, D.13490
	cmpw	$36, %ax	#, D.13490
	jne	.L197	#,
	.loc 1 629 0
	movl	$0, %eax	#, D.13489
	jmp	.L195	#
.L197:
	.loc 1 627 0
	movq	-8(%rbp), %rax	# p, tmp66
	movq	24(%rax), %rax	# p_1->fld[2].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p
.L196:
	.loc 1 627 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp68
	cmpq	-32(%rbp), %rax	# end, tmp68
	jne	.L198	#,
	.loc 1 630 0 is_stmt 1
	movl	$1, %eax	#, D.13489
.L195:
	.loc 1 631 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	no_labels_between_p, .-no_labels_between_p
	.globl	no_jumps_between_p
	.type	no_jumps_between_p, @function
no_jumps_between_p:
.LFB12:
	.loc 1 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# beg, beg
	movq	%rsi, -32(%rbp)	# end, end
	.loc 1 641 0
	movq	-24(%rbp), %rax	# beg, tmp62
	movq	24(%rax), %rax	# beg_3(D)->fld[2].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, p
	jmp	.L200	#
.L203:
	.loc 1 642 0
	movq	-8(%rbp), %rax	# p, tmp64
	movzwl	(%rax), %eax	# p_1->code, D.13492
	cmpw	$33, %ax	#, D.13492
	jne	.L201	#,
	.loc 1 643 0
	movl	$0, %eax	#, D.13491
	jmp	.L202	#
.L201:
	.loc 1 641 0
	movq	-8(%rbp), %rax	# p, tmp65
	movq	24(%rax), %rax	# p_1->fld[2].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, p
.L200:
	.loc 1 641 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp67
	cmpq	-32(%rbp), %rax	# end, tmp67
	jne	.L203	#,
	.loc 1 644 0 is_stmt 1
	movl	$1, %eax	#, D.13491
.L202:
	.loc 1 645 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	no_jumps_between_p, .-no_jumps_between_p
	.globl	reg_used_between_p
	.type	reg_used_between_p, @function
reg_used_between_p:
.LFB13:
	.loc 1 653 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# from_insn, from_insn
	movq	%rdx, -40(%rbp)	# to_insn, to_insn
	.loc 1 656 0
	movq	-32(%rbp), %rax	# from_insn, tmp69
	cmpq	-40(%rbp), %rax	# to_insn, tmp69
	jne	.L205	#,
	.loc 1 657 0
	movl	$0, %eax	#, D.13493
	jmp	.L206	#
.L205:
	.loc 1 659 0
	movq	-32(%rbp), %rax	# from_insn, tmp70
	movq	24(%rax), %rax	# from_insn_3(D)->fld[2].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, insn
	jmp	.L207	#
.L210:
	.loc 1 660 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_1->code, D.13494
	movzwl	%ax, %eax	# D.13494, D.13493
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13495
	cmpb	$105, %al	#, D.13495
	jne	.L208	#,
	.loc 1 661 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.13496
	movq	-24(%rbp), %rax	# reg, tmp75
	movq	%rdx, %rsi	# D.13496,
	movq	%rax, %rdi	# tmp75,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13493
	jne	.L209	#,
	.loc 1 662 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movzwl	(%rax), %eax	# insn_1->code, D.13494
	cmpw	$34, %ax	#, D.13494
	jne	.L208	#,
	.loc 1 663 0
	movq	-24(%rbp), %rdx	# reg, tmp77
	movq	-8(%rbp), %rax	# insn, tmp78
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	find_reg_fusage	#
	testl	%eax, %eax	# D.13493
	jne	.L209	#,
	.loc 1 664 0
	movq	-24(%rbp), %rdx	# reg, tmp79
	movq	-8(%rbp), %rax	# insn, tmp80
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	find_reg_fusage	#
	testl	%eax, %eax	# D.13493
	je	.L208	#,
.L209:
	.loc 1 665 0
	movl	$1, %eax	#, D.13493
	jmp	.L206	#
.L208:
	.loc 1 659 0
	movq	-8(%rbp), %rax	# insn, tmp81
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp82
	movq	%rax, -8(%rbp)	# tmp82, insn
.L207:
	.loc 1 659 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp83
	cmpq	-40(%rbp), %rax	# to_insn, tmp83
	jne	.L210	#,
	.loc 1 666 0 is_stmt 1
	movl	$0, %eax	#, D.13493
.L206:
	.loc 1 667 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	reg_used_between_p, .-reg_used_between_p
	.globl	reg_referenced_p
	.type	reg_referenced_p, @function
reg_referenced_p:
.LFB14:
	.loc 1 677 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# body, body
	.loc 1 680 0
	movq	-48(%rbp), %rax	# body, tmp130
	movzwl	(%rax), %eax	# body_9(D)->code, D.13498
	movzwl	%ax, %eax	# D.13498, D.13499
	subl	$38, %eax	#, tmp131
	cmpl	$34, %eax	#, tmp131
	ja	.L212	#,
	movl	%eax, %eax	# tmp131, tmp132
	movq	.L214(,%rax,8), %rax	#, tmp133
	jmp	*%rax	# tmp133
	.section	.rodata
	.align 8
	.align 4
.L214:
	.quad	.L213
	.quad	.L215
	.quad	.L212
	.quad	.L216
	.quad	.L217
	.quad	.L217
	.quad	.L212
	.quad	.L212
	.quad	.L218
	.quad	.L219
	.quad	.L220
	.quad	.L221
	.quad	.L220
	.quad	.L212
	.quad	.L222
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L220
	.text
.L219:
	.loc 1 683 0
	movq	-48(%rbp), %rax	# body, tmp134
	movq	16(%rax), %rdx	# body_9(D)->fld[1].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp135
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp135,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13497
	je	.L223	#,
	.loc 1 684 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L223:
	.loc 1 689 0
	movq	-48(%rbp), %rax	# body, tmp136
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movzwl	(%rax), %eax	# _16->code, D.13498
	cmpw	$69, %ax	#, D.13498
	je	.L225	#,
	.loc 1 690 0
	movq	-48(%rbp), %rax	# body, tmp137
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movzwl	(%rax), %eax	# _18->code, D.13498
	cmpw	$59, %ax	#, D.13498
	je	.L225	#,
	.loc 1 691 0
	movq	-48(%rbp), %rax	# body, tmp138
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movzwl	(%rax), %eax	# _20->code, D.13498
	cmpw	$61, %ax	#, D.13498
	je	.L225	#,
	.loc 1 692 0
	movq	-48(%rbp), %rax	# body, tmp139
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movzwl	(%rax), %eax	# _22->code, D.13498
	cmpw	$63, %ax	#, D.13498
	jne	.L226	#,
	.loc 1 693 0
	movq	-48(%rbp), %rax	# body, tmp140
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movq	8(%rax), %rax	# _24->fld[0].rtx, D.13500
	movzwl	(%rax), %eax	# _25->code, D.13498
	cmpw	$61, %ax	#, D.13498
	jne	.L226	#,
	.loc 1 694 0
	movq	-48(%rbp), %rax	# body, tmp141
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movq	8(%rax), %rax	# _27->fld[0].rtx, D.13500
	movzbl	2(%rax), %eax	# _28->mode, D.13501
	movzbl	%al, %eax	# D.13501, D.13497
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13501
	.loc 1 695 0
	movzbl	%al, %edx	# D.13501, D.13497
	movl	target_flags(%rip), %eax	# target_flags, target_flags.36
	andl	$33554432, %eax	#, D.13497
	testl	%eax, %eax	# D.13497
	je	.L227	#,
	.loc 1 695 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.35
	jmp	.L228	#
.L227:
	.loc 1 695 0 discriminator 2
	movl	$3, %eax	#, iftmp.35
.L228:
	.loc 1 695 0 discriminator 3
	addl	%edx, %eax	# D.13497, D.13497
	movl	target_flags(%rip), %edx	# target_flags, target_flags.38
	andl	$33554432, %edx	#, D.13497
	testl	%edx, %edx	# D.13497
	je	.L229	#,
	.loc 1 695 0 discriminator 1
	movl	$8, %ebx	#, iftmp.37
	jmp	.L230	#
.L229:
	.loc 1 695 0 discriminator 2
	movl	$4, %ebx	#, iftmp.37
.L230:
	.loc 1 695 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.37
	movl	%eax, %ecx	# tmp143, D.13497
	.loc 1 696 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# body, tmp145
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movzbl	2(%rax), %eax	# _43->mode, D.13501
	movzbl	%al, %eax	# D.13501, D.13497
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13501
	.loc 1 697 0 discriminator 3
	movzbl	%al, %edx	# D.13501, D.13497
	movl	target_flags(%rip), %eax	# target_flags, target_flags.40
	andl	$33554432, %eax	#, D.13497
	testl	%eax, %eax	# D.13497
	je	.L231	#,
	.loc 1 697 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.39
	jmp	.L232	#
.L231:
	.loc 1 697 0 discriminator 2
	movl	$3, %eax	#, iftmp.39
.L232:
	.loc 1 697 0 discriminator 3
	addl	%edx, %eax	# D.13497, D.13497
	movl	target_flags(%rip), %edx	# target_flags, target_flags.42
	andl	$33554432, %edx	#, D.13497
	testl	%edx, %edx	# D.13497
	je	.L233	#,
	.loc 1 697 0 discriminator 1
	movl	$8, %ebx	#, iftmp.41
	jmp	.L234	#
.L233:
	.loc 1 697 0 discriminator 2
	movl	$4, %ebx	#, iftmp.41
.L234:
	.loc 1 697 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.41
	.loc 1 692 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.13497, D.13497
	je	.L225	#,
.L226:
	.loc 1 698 0
	movq	-48(%rbp), %rax	# body, tmp149
	movq	8(%rax), %rdx	# body_9(D)->fld[0].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp150
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp150,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13497
	je	.L225	#,
	.loc 1 699 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L225:
	.loc 1 700 0
	movl	$0, %eax	#, D.13497
	jmp	.L224	#
.L216:
	.loc 1 703 0
	movq	-48(%rbp), %rax	# body, tmp151
	movq	32(%rax), %rax	# body_9(D)->fld[3].rtvec, D.13502
	movl	(%rax), %eax	# _62->num_elem, D.13497
	subl	$1, %eax	#, tmp152
	movl	%eax, -20(%rbp)	# tmp152, i
	jmp	.L235	#
.L237:
	.loc 1 704 0
	movq	-48(%rbp), %rax	# body, tmp153
	movq	32(%rax), %rax	# body_9(D)->fld[3].rtvec, D.13502
	movl	-20(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	movq	8(%rax,%rdx,8), %rdx	# _65->elem, D.13500
	movq	-40(%rbp), %rax	# x, tmp156
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp156,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13497
	je	.L236	#,
	.loc 1 705 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L236:
	.loc 1 703 0
	subl	$1, -20(%rbp)	#, i
.L235:
	.loc 1 703 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L237	#,
	.loc 1 706 0 is_stmt 1
	movl	$0, %eax	#, D.13497
	jmp	.L224	#
.L220:
	.loc 1 711 0
	movq	-48(%rbp), %rdx	# body, tmp157
	movq	-40(%rbp), %rax	# x, tmp158
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	reg_overlap_mentioned_p	#
	jmp	.L224	#
.L222:
	.loc 1 714 0
	movq	-48(%rbp), %rax	# body, tmp159
	movq	8(%rax), %rdx	# body_9(D)->fld[0].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp160
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp160,
	call	reg_overlap_mentioned_p	#
	jmp	.L224	#
.L218:
	.loc 1 717 0
	movq	-48(%rbp), %rax	# body, tmp161
	movq	8(%rax), %rdx	# body_9(D)->fld[0].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp162
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp162,
	call	reg_overlap_mentioned_p	#
	jmp	.L224	#
.L217:
	.loc 1 721 0
	movq	-48(%rbp), %rax	# body, tmp163
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.13502
	movl	(%rax), %eax	# _76->num_elem, D.13497
	subl	$1, %eax	#, tmp164
	movl	%eax, -20(%rbp)	# tmp164, i
	jmp	.L238	#
.L240:
	.loc 1 722 0
	movq	-48(%rbp), %rax	# body, tmp165
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.13502
	movl	-20(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, tmp166
	movq	8(%rax,%rdx,8), %rdx	# _79->elem, D.13500
	movq	-40(%rbp), %rax	# x, tmp168
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp168,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13497
	je	.L239	#,
	.loc 1 723 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L239:
	.loc 1 721 0
	subl	$1, -20(%rbp)	#, i
.L238:
	.loc 1 721 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L240	#,
	.loc 1 724 0 is_stmt 1
	movl	$0, %eax	#, D.13497
	jmp	.L224	#
.L215:
	.loc 1 727 0
	movq	-48(%rbp), %rax	# body, tmp169
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.13502
	movl	(%rax), %eax	# _85->num_elem, D.13497
	subl	$1, %eax	#, tmp170
	movl	%eax, -20(%rbp)	# tmp170, i
	jmp	.L241	#
.L243:
	.loc 1 728 0
	movq	-48(%rbp), %rax	# body, tmp171
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtvec, D.13502
	movl	-20(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, tmp172
	movq	8(%rax,%rdx,8), %rdx	# _88->elem, D.13500
	movq	-40(%rbp), %rax	# x, tmp174
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp174,
	call	reg_referenced_p	#
	testl	%eax, %eax	# D.13497
	je	.L242	#,
	.loc 1 729 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L242:
	.loc 1 727 0
	subl	$1, -20(%rbp)	#, i
.L241:
	.loc 1 727 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L243	#,
	.loc 1 730 0 is_stmt 1
	movl	$0, %eax	#, D.13497
	jmp	.L224	#
.L221:
	.loc 1 733 0
	movq	-48(%rbp), %rax	# body, tmp175
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movzwl	(%rax), %eax	# _94->code, D.13498
	cmpw	$66, %ax	#, D.13498
	jne	.L244	#,
	.loc 1 734 0
	movq	-48(%rbp), %rax	# body, tmp176
	movq	8(%rax), %rax	# body_9(D)->fld[0].rtx, D.13500
	movq	8(%rax), %rdx	# _96->fld[0].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp177
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp177,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13497
	je	.L244	#,
	.loc 1 735 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L244:
	.loc 1 736 0
	movl	$0, %eax	#, D.13497
	jmp	.L224	#
.L213:
	.loc 1 739 0
	movq	-48(%rbp), %rax	# body, tmp178
	movq	8(%rax), %rdx	# body_9(D)->fld[0].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp179
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp179,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13497
	je	.L245	#,
	.loc 1 740 0
	movl	$1, %eax	#, D.13497
	jmp	.L224	#
.L245:
	.loc 1 741 0
	movq	-48(%rbp), %rax	# body, tmp180
	movq	16(%rax), %rdx	# body_9(D)->fld[1].rtx, D.13500
	movq	-40(%rbp), %rax	# x, tmp181
	movq	%rdx, %rsi	# D.13500,
	movq	%rax, %rdi	# tmp181,
	call	reg_referenced_p	#
	jmp	.L224	#
.L212:
	.loc 1 744 0
	movl	$0, %eax	#, D.13497
.L224:
	.loc 1 746 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	reg_referenced_p, .-reg_referenced_p
	.globl	reg_referenced_between_p
	.type	reg_referenced_between_p, @function
reg_referenced_between_p:
.LFB15:
	.loc 1 755 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# from_insn, from_insn
	movq	%rdx, -40(%rbp)	# to_insn, to_insn
	.loc 1 758 0
	movq	-32(%rbp), %rax	# from_insn, tmp68
	cmpq	-40(%rbp), %rax	# to_insn, tmp68
	jne	.L247	#,
	.loc 1 759 0
	movl	$0, %eax	#, D.13503
	jmp	.L248	#
.L247:
	.loc 1 761 0
	movq	-32(%rbp), %rax	# from_insn, tmp69
	movq	24(%rax), %rax	# from_insn_3(D)->fld[2].rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, insn
	jmp	.L249	#
.L252:
	.loc 1 762 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_1->code, D.13504
	movzwl	%ax, %eax	# D.13504, D.13503
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13505
	cmpb	$105, %al	#, D.13505
	jne	.L250	#,
	.loc 1 763 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.13506
	movq	-24(%rbp), %rax	# reg, tmp74
	movq	%rdx, %rsi	# D.13506,
	movq	%rax, %rdi	# tmp74,
	call	reg_referenced_p	#
	testl	%eax, %eax	# D.13503
	jne	.L251	#,
	.loc 1 764 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_1->code, D.13504
	cmpw	$34, %ax	#, D.13504
	jne	.L250	#,
	.loc 1 765 0
	movq	-24(%rbp), %rdx	# reg, tmp76
	movq	-8(%rbp), %rax	# insn, tmp77
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	find_reg_fusage	#
	testl	%eax, %eax	# D.13503
	je	.L250	#,
.L251:
	.loc 1 766 0
	movl	$1, %eax	#, D.13503
	jmp	.L248	#
.L250:
	.loc 1 761 0
	movq	-8(%rbp), %rax	# insn, tmp78
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp79
	movq	%rax, -8(%rbp)	# tmp79, insn
.L249:
	.loc 1 761 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp80
	cmpq	-40(%rbp), %rax	# to_insn, tmp80
	jne	.L252	#,
	.loc 1 767 0 is_stmt 1
	movl	$0, %eax	#, D.13503
.L248:
	.loc 1 768 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	reg_referenced_between_p, .-reg_referenced_between_p
	.globl	reg_set_between_p
	.type	reg_set_between_p, @function
reg_set_between_p:
.LFB16:
	.loc 1 776 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# from_insn, from_insn
	movq	%rdx, -40(%rbp)	# to_insn, to_insn
	.loc 1 779 0
	movq	-32(%rbp), %rax	# from_insn, tmp65
	cmpq	-40(%rbp), %rax	# to_insn, tmp65
	jne	.L254	#,
	.loc 1 780 0
	movl	$0, %eax	#, D.13507
	jmp	.L255	#
.L254:
	.loc 1 782 0
	movq	-32(%rbp), %rax	# from_insn, tmp66
	movq	24(%rax), %rax	# from_insn_3(D)->fld[2].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
	jmp	.L256	#
.L258:
	.loc 1 783 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_1->code, D.13508
	movzwl	%ax, %eax	# D.13508, D.13507
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13509
	cmpb	$105, %al	#, D.13509
	jne	.L257	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx	# insn, tmp70
	movq	-24(%rbp), %rax	# reg, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	reg_set_p	#
	testl	%eax, %eax	# D.13507
	je	.L257	#,
	.loc 1 784 0 is_stmt 1
	movl	$1, %eax	#, D.13507
	jmp	.L255	#
.L257:
	.loc 1 782 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp73
	movq	%rax, -8(%rbp)	# tmp73, insn
.L256:
	.loc 1 782 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp74
	cmpq	-40(%rbp), %rax	# to_insn, tmp74
	jne	.L258	#,
	.loc 1 785 0 is_stmt 1
	movl	$0, %eax	#, D.13507
.L255:
	.loc 1 786 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	reg_set_between_p, .-reg_set_between_p
	.globl	reg_set_p
	.type	reg_set_p, @function
reg_set_p:
.LFB17:
	.loc 1 792 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 793 0
	movq	-32(%rbp), %rax	# insn, tmp71
	movq	%rax, -8(%rbp)	# tmp71, body
	.loc 1 797 0
	movq	-32(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_2(D)->code, D.13511
	movzwl	%ax, %eax	# D.13511, D.13510
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13512
	cmpb	$105, %al	#, D.13512
	jne	.L260	#,
	.loc 1 800 0
	movq	-32(%rbp), %rax	# insn, tmp74
	movzwl	(%rax), %eax	# insn_2(D)->code, D.13511
	.loc 1 799 0
	cmpw	$34, %ax	#, D.13511
	jne	.L261	#,
	.loc 1 807 0
	movq	-24(%rbp), %rax	# reg, tmp75
	movzwl	(%rax), %eax	# reg_8(D)->code, D.13511
	.loc 1 800 0
	cmpw	$61, %ax	#, D.13511
	jne	.L262	#,
	.loc 1 808 0
	movq	-24(%rbp), %rax	# reg, tmp76
	movl	8(%rax), %eax	# reg_8(D)->fld[0].rtuint, D.13513
	cmpl	$52, %eax	#, D.13513
	jbe	.L263	#,
.L262:
	.loc 1 809 0
	movq	-24(%rbp), %rax	# reg, tmp77
	movzwl	(%rax), %eax	# reg_8(D)->code, D.13511
	cmpw	$66, %ax	#, D.13511
	je	.L263	#,
	.loc 1 810 0
	movq	-24(%rbp), %rdx	# reg, tmp78
	movq	-32(%rbp), %rax	# insn, tmp79
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	find_reg_fusage	#
	testl	%eax, %eax	# D.13510
	je	.L261	#,
.L263:
	.loc 1 811 0
	movl	$1, %eax	#, D.13510
	jmp	.L264	#
.L261:
	.loc 1 813 0
	movq	-32(%rbp), %rax	# insn, tmp80
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp81
	movq	%rax, -8(%rbp)	# tmp81, body
.L260:
	.loc 1 816 0
	movq	-32(%rbp), %rdx	# insn, tmp82
	movq	-24(%rbp), %rax	# reg, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	set_of	#
	testq	%rax, %rax	# D.13514
	setne	%al	#, D.13515
	movzbl	%al, %eax	# D.13515, D.13510
.L264:
	.loc 1 817 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	reg_set_p, .-reg_set_p
	.globl	regs_set_between_p
	.type	regs_set_between_p, @function
regs_set_between_p:
.LFB18:
	.loc 1 827 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# start, start
	movq	%rdx, -56(%rbp)	# end, end
	.loc 1 828 0
	movq	-40(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_4(D)->code, D.13517
	movzwl	%ax, %eax	# D.13517, tmp80
	movl	%eax, -12(%rbp)	# tmp80, code
	.loc 1 832 0
	movl	-12(%rbp), %eax	# code, tmp82
	subl	$54, %eax	#, tmp81
	cmpl	$15, %eax	#, tmp81
	ja	.L279	#,
	movl	%eax, %eax	# tmp81, tmp83
	movq	.L268(,%rax,8), %rax	#, tmp84
	jmp	*%rax	# tmp84
	.section	.rodata
	.align 8
	.align 4
.L268:
	.quad	.L267
	.quad	.L267
	.quad	.L267
	.quad	.L279
	.quad	.L267
	.quad	.L267
	.quad	.L279
	.quad	.L269
	.quad	.L279
	.quad	.L279
	.quad	.L279
	.quad	.L279
	.quad	.L279
	.quad	.L267
	.quad	.L267
	.quad	.L267
	.text
.L267:
	.loc 1 842 0
	movl	$0, %eax	#, D.13516
	jmp	.L270	#
.L269:
	.loc 1 845 0
	movq	-56(%rbp), %rdx	# end, tmp85
	movq	-48(%rbp), %rcx	# start, tmp86
	movq	-40(%rbp), %rax	# x, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	reg_set_between_p	#
	jmp	.L270	#
.L279:
	.loc 1 848 0
	nop
	.loc 1 851 0
	movl	-12(%rbp), %eax	# code, code.43
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp89
	movq	%rax, -8(%rbp)	# tmp89, fmt
	.loc 1 852 0
	movl	-12(%rbp), %eax	# code, code.44
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13518
	movzbl	%al, %eax	# D.13518, D.13516
	subl	$1, %eax	#, tmp91
	movl	%eax, -20(%rbp)	# tmp91, i
	jmp	.L271	#
.L277:
	.loc 1 854 0
	movl	-20(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, D.13519
	movq	-8(%rbp), %rax	# fmt, tmp93
	addq	%rdx, %rax	# D.13519, D.13520
	movzbl	(%rax), %eax	# *_18, D.13521
	cmpb	$101, %al	#, D.13521
	jne	.L272	#,
	.loc 1 854 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp94
	movl	-20(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13522
	movq	-56(%rbp), %rdx	# end, tmp97
	movq	-48(%rbp), %rcx	# start, tmp98
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# D.13522,
	call	regs_set_between_p	#
	testl	%eax, %eax	# D.13516
	je	.L272	#,
	.loc 1 855 0 is_stmt 1
	movl	$1, %eax	#, D.13516
	jmp	.L270	#
.L272:
	.loc 1 857 0
	movl	-20(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, D.13519
	movq	-8(%rbp), %rax	# fmt, tmp100
	addq	%rdx, %rax	# D.13519, D.13520
	movzbl	(%rax), %eax	# *_24, D.13521
	cmpb	$69, %al	#, D.13521
	jne	.L273	#,
	.loc 1 858 0
	movq	-40(%rbp), %rax	# x, tmp101
	movl	-20(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13523
	movl	(%rax), %eax	# _26->num_elem, D.13516
	subl	$1, %eax	#, tmp104
	movl	%eax, -16(%rbp)	# tmp104, j
	jmp	.L274	#
.L276:
	.loc 1 859 0
	movq	-40(%rbp), %rax	# x, tmp105
	movl	-20(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13523
	movl	-16(%rbp), %edx	# j, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# _29->elem, D.13522
	movq	-56(%rbp), %rdx	# end, tmp110
	movq	-48(%rbp), %rcx	# start, tmp111
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# D.13522,
	call	regs_set_between_p	#
	testl	%eax, %eax	# D.13516
	je	.L275	#,
	.loc 1 860 0
	movl	$1, %eax	#, D.13516
	jmp	.L270	#
.L275:
	.loc 1 858 0
	subl	$1, -16(%rbp)	#, j
.L274:
	.loc 1 858 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L276	#,
.L273:
	.loc 1 852 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L271:
	.loc 1 852 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L277	#,
	.loc 1 863 0 is_stmt 1
	movl	$0, %eax	#, D.13516
.L270:
	.loc 1 864 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	regs_set_between_p, .-regs_set_between_p
	.globl	modified_between_p
	.type	modified_between_p, @function
modified_between_p:
.LFB19:
	.loc 1 874 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# start, start
	movq	%rdx, -56(%rbp)	# end, end
	.loc 1 875 0
	movq	-40(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_4(D)->code, D.13525
	movzwl	%ax, %eax	# D.13525, tmp82
	movl	%eax, -12(%rbp)	# tmp82, code
	.loc 1 879 0
	movl	-12(%rbp), %eax	# code, tmp84
	subl	$54, %eax	#, tmp83
	cmpl	$15, %eax	#, tmp83
	ja	.L297	#,
	movl	%eax, %eax	# tmp83, tmp85
	movq	.L283(,%rax,8), %rax	#, tmp86
	jmp	*%rax	# tmp86
	.section	.rodata
	.align 8
	.align 4
.L283:
	.quad	.L282
	.quad	.L282
	.quad	.L282
	.quad	.L297
	.quad	.L282
	.quad	.L284
	.quad	.L297
	.quad	.L285
	.quad	.L297
	.quad	.L297
	.quad	.L297
	.quad	.L297
	.quad	.L286
	.quad	.L282
	.quad	.L282
	.quad	.L284
	.text
.L282:
	.loc 1 887 0
	movl	$0, %eax	#, D.13524
	jmp	.L287	#
.L284:
	.loc 1 891 0
	movl	$1, %eax	#, D.13524
	jmp	.L287	#
.L286:
	.loc 1 896 0
	movq	-40(%rbp), %rax	# x, tmp87
	movzbl	3(%rax), %eax	# *x_4(D), D.13526
	andl	$4, %eax	#, D.13526
	testb	%al, %al	# D.13526
	jne	.L288	#,
	.loc 1 897 0
	movl	$1, %eax	#, D.13524
	jmp	.L287	#
.L288:
	.loc 1 898 0
	jmp	.L289	#
.L285:
	.loc 1 901 0
	movq	-56(%rbp), %rdx	# end, tmp88
	movq	-48(%rbp), %rcx	# start, tmp89
	movq	-40(%rbp), %rax	# x, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	reg_set_between_p	#
	jmp	.L287	#
.L297:
	.loc 1 904 0
	nop
.L289:
	.loc 1 907 0
	movl	-12(%rbp), %eax	# code, code.45
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp92
	movq	%rax, -8(%rbp)	# tmp92, fmt
	.loc 1 908 0
	movl	-12(%rbp), %eax	# code, code.46
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13526
	movzbl	%al, %eax	# D.13526, D.13524
	subl	$1, %eax	#, tmp94
	movl	%eax, -20(%rbp)	# tmp94, i
	jmp	.L290	#
.L296:
	.loc 1 910 0
	movl	-20(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, D.13527
	movq	-8(%rbp), %rax	# fmt, tmp96
	addq	%rdx, %rax	# D.13527, D.13528
	movzbl	(%rax), %eax	# *_22, D.13529
	cmpb	$101, %al	#, D.13529
	jne	.L291	#,
	.loc 1 910 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp97
	movl	-20(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13530
	movq	-56(%rbp), %rdx	# end, tmp100
	movq	-48(%rbp), %rcx	# start, tmp101
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# D.13530,
	call	modified_between_p	#
	testl	%eax, %eax	# D.13524
	je	.L291	#,
	.loc 1 911 0 is_stmt 1
	movl	$1, %eax	#, D.13524
	jmp	.L287	#
.L291:
	.loc 1 913 0
	movl	-20(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, D.13527
	movq	-8(%rbp), %rax	# fmt, tmp103
	addq	%rdx, %rax	# D.13527, D.13528
	movzbl	(%rax), %eax	# *_28, D.13529
	cmpb	$69, %al	#, D.13529
	jne	.L292	#,
	.loc 1 914 0
	movq	-40(%rbp), %rax	# x, tmp104
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13531
	movl	(%rax), %eax	# _30->num_elem, D.13524
	subl	$1, %eax	#, tmp107
	movl	%eax, -16(%rbp)	# tmp107, j
	jmp	.L293	#
.L295:
	.loc 1 915 0
	movq	-40(%rbp), %rax	# x, tmp108
	movl	-20(%rbp), %edx	# i, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13531
	movl	-16(%rbp), %edx	# j, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	movq	8(%rax,%rdx,8), %rax	# _33->elem, D.13530
	movq	-56(%rbp), %rdx	# end, tmp113
	movq	-48(%rbp), %rcx	# start, tmp114
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.13530,
	call	modified_between_p	#
	testl	%eax, %eax	# D.13524
	je	.L294	#,
	.loc 1 916 0
	movl	$1, %eax	#, D.13524
	jmp	.L287	#
.L294:
	.loc 1 914 0
	subl	$1, -16(%rbp)	#, j
.L293:
	.loc 1 914 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L295	#,
.L292:
	.loc 1 908 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L290:
	.loc 1 908 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L296	#,
	.loc 1 919 0 is_stmt 1
	movl	$0, %eax	#, D.13524
.L287:
	.loc 1 920 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	modified_between_p, .-modified_between_p
	.globl	modified_in_p
	.type	modified_in_p, @function
modified_in_p:
.LFB20:
	.loc 1 930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 931 0
	movq	-40(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_4(D)->code, D.13533
	movzwl	%ax, %eax	# D.13533, tmp82
	movl	%eax, -12(%rbp)	# tmp82, code
	.loc 1 935 0
	movl	-12(%rbp), %eax	# code, tmp84
	subl	$54, %eax	#, tmp83
	cmpl	$15, %eax	#, tmp83
	ja	.L315	#,
	movl	%eax, %eax	# tmp83, tmp85
	movq	.L301(,%rax,8), %rax	#, tmp86
	jmp	*%rax	# tmp86
	.section	.rodata
	.align 8
	.align 4
.L301:
	.quad	.L300
	.quad	.L300
	.quad	.L300
	.quad	.L315
	.quad	.L300
	.quad	.L302
	.quad	.L315
	.quad	.L303
	.quad	.L315
	.quad	.L315
	.quad	.L315
	.quad	.L315
	.quad	.L304
	.quad	.L300
	.quad	.L300
	.quad	.L302
	.text
.L300:
	.loc 1 943 0
	movl	$0, %eax	#, D.13532
	jmp	.L305	#
.L302:
	.loc 1 947 0
	movl	$1, %eax	#, D.13532
	jmp	.L305	#
.L304:
	.loc 1 952 0
	movq	-40(%rbp), %rax	# x, tmp87
	movzbl	3(%rax), %eax	# *x_4(D), D.13534
	andl	$4, %eax	#, D.13534
	testb	%al, %al	# D.13534
	jne	.L306	#,
	.loc 1 953 0
	movl	$1, %eax	#, D.13532
	jmp	.L305	#
.L306:
	.loc 1 954 0
	jmp	.L307	#
.L303:
	.loc 1 957 0
	movq	-48(%rbp), %rdx	# insn, tmp88
	movq	-40(%rbp), %rax	# x, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	reg_set_p	#
	jmp	.L305	#
.L315:
	.loc 1 960 0
	nop
.L307:
	.loc 1 963 0
	movl	-12(%rbp), %eax	# code, code.47
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp91
	movq	%rax, -8(%rbp)	# tmp91, fmt
	.loc 1 964 0
	movl	-12(%rbp), %eax	# code, code.48
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13534
	movzbl	%al, %eax	# D.13534, D.13532
	subl	$1, %eax	#, tmp93
	movl	%eax, -20(%rbp)	# tmp93, i
	jmp	.L308	#
.L314:
	.loc 1 966 0
	movl	-20(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, D.13535
	movq	-8(%rbp), %rax	# fmt, tmp95
	addq	%rdx, %rax	# D.13535, D.13536
	movzbl	(%rax), %eax	# *_21, D.13537
	cmpb	$101, %al	#, D.13537
	jne	.L309	#,
	.loc 1 966 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp96
	movl	-20(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13538
	movq	-48(%rbp), %rdx	# insn, tmp99
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# D.13538,
	call	modified_in_p	#
	testl	%eax, %eax	# D.13532
	je	.L309	#,
	.loc 1 967 0 is_stmt 1
	movl	$1, %eax	#, D.13532
	jmp	.L305	#
.L309:
	.loc 1 969 0
	movl	-20(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, D.13535
	movq	-8(%rbp), %rax	# fmt, tmp101
	addq	%rdx, %rax	# D.13535, D.13536
	movzbl	(%rax), %eax	# *_27, D.13537
	cmpb	$69, %al	#, D.13537
	jne	.L310	#,
	.loc 1 970 0
	movq	-40(%rbp), %rax	# x, tmp102
	movl	-20(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13539
	movl	(%rax), %eax	# _29->num_elem, D.13532
	subl	$1, %eax	#, tmp105
	movl	%eax, -16(%rbp)	# tmp105, j
	jmp	.L311	#
.L313:
	.loc 1 971 0
	movq	-40(%rbp), %rax	# x, tmp106
	movl	-20(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13539
	movl	-16(%rbp), %edx	# j, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	movq	8(%rax,%rdx,8), %rax	# _32->elem, D.13538
	movq	-48(%rbp), %rdx	# insn, tmp111
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# D.13538,
	call	modified_in_p	#
	testl	%eax, %eax	# D.13532
	je	.L312	#,
	.loc 1 972 0
	movl	$1, %eax	#, D.13532
	jmp	.L305	#
.L312:
	.loc 1 970 0
	subl	$1, -16(%rbp)	#, j
.L311:
	.loc 1 970 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L313	#,
.L310:
	.loc 1 964 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L308:
	.loc 1 964 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L314	#,
	.loc 1 975 0 is_stmt 1
	movl	$0, %eax	#, D.13532
.L305:
	.loc 1 976 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	modified_in_p, .-modified_in_p
	.section	.rodata
.LC0:
	.string	"rtlanal.c"
	.text
	.globl	insn_dependent_p
	.type	insn_dependent_p, @function
insn_dependent_p:
.LFB21:
	.loc 1 984 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 987 0
	movq	-24(%rbp), %rax	# x, tmp73
	movzwl	(%rax), %eax	# x_2(D)->code, D.13541
	movzwl	%ax, %eax	# D.13541, D.13540
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13542
	cmpb	$105, %al	#, D.13542
	jne	.L317	#,
	.loc 1 987 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# y, tmp75
	movzwl	(%rax), %eax	# y_6(D)->code, D.13541
	movzwl	%ax, %eax	# D.13541, D.13540
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13542
	cmpb	$105, %al	#, D.13542
	je	.L318	#,
.L317:
	.loc 1 988 0 is_stmt 1
	movl	$__FUNCTION__.9454, %edx	#,
	movl	$988, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L318:
	.loc 1 990 0
	movq	-32(%rbp), %rax	# y, tmp77
	movq	32(%rax), %rax	# y_6(D)->fld[3].rtx, tmp.49
	movq	%rax, -8(%rbp)	# tmp.49, tmp
	.loc 1 991 0
	movq	-24(%rbp), %rax	# x, tmp78
	movq	32(%rax), %rax	# x_2(D)->fld[3].rtx, D.13543
	leaq	-8(%rbp), %rdx	#, tmp79
	movl	$insn_dependent_p_1, %esi	#,
	movq	%rax, %rdi	# D.13543,
	call	note_stores	#
	.loc 1 992 0
	movq	-8(%rbp), %rax	# tmp, tmp.50
	testq	%rax, %rax	# tmp.50
	jne	.L319	#,
	.loc 1 993 0
	movl	$1, %eax	#, D.13540
	jmp	.L322	#
.L319:
	.loc 1 995 0
	movq	-24(%rbp), %rax	# x, tmp80
	movq	32(%rax), %rax	# x_2(D)->fld[3].rtx, tmp.51
	movq	%rax, -8(%rbp)	# tmp.51, tmp
	.loc 1 996 0
	movq	-32(%rbp), %rax	# y, tmp81
	movq	32(%rax), %rax	# y_6(D)->fld[3].rtx, D.13543
	leaq	-8(%rbp), %rdx	#, tmp82
	movl	$insn_dependent_p_1, %esi	#,
	movq	%rax, %rdi	# D.13543,
	call	note_stores	#
	.loc 1 997 0
	movq	-8(%rbp), %rax	# tmp, tmp.52
	testq	%rax, %rax	# tmp.52
	jne	.L321	#,
	.loc 1 998 0
	movl	$1, %eax	#, D.13540
	jmp	.L322	#
.L321:
	.loc 1 1000 0
	movl	$0, %eax	#, D.13540
.L322:
	.loc 1 1001 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	insn_dependent_p, .-insn_dependent_p
	.type	insn_dependent_p_1, @function
insn_dependent_p_1:
.LFB22:
	.loc 1 1010 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# pat, pat
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 1011 0
	movq	-40(%rbp), %rax	# data, tmp62
	movq	%rax, -8(%rbp)	# tmp62, pinsn
	.loc 1 1013 0
	movq	-8(%rbp), %rax	# pinsn, tmp63
	movq	(%rax), %rax	# *pinsn_2, D.13545
	testq	%rax, %rax	# D.13545
	je	.L323	#,
	.loc 1 1013 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pinsn, tmp64
	movq	(%rax), %rdx	# *pinsn_2, D.13545
	movq	-24(%rbp), %rax	# x, tmp65
	movq	%rdx, %rsi	# D.13545,
	movq	%rax, %rdi	# tmp65,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.13546
	je	.L323	#,
	.loc 1 1014 0 is_stmt 1
	movq	-8(%rbp), %rax	# pinsn, tmp66
	movq	$0, (%rax)	#, *pinsn_2
.L323:
	.loc 1 1015 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	insn_dependent_p_1, .-insn_dependent_p_1
	.type	set_of_1, @function
set_of_1:
.LFB23:
	.loc 1 1029 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# pat, pat
	movq	%rdx, -40(%rbp)	# data1, data1
	.loc 1 1030 0
	movq	-40(%rbp), %rax	# data1, tmp64
	movq	%rax, -8(%rbp)	# tmp64, data
	.loc 1 1031 0
	movq	-8(%rbp), %rax	# data, tmp65
	movq	8(%rax), %rdx	# data_2->pat, D.13547
	movq	-24(%rbp), %rax	# x, tmp66
	movq	%rdx, %rsi	# D.13547,
	movq	%rax, %rdi	# tmp66,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13548
	jne	.L326	#,
	.loc 1 1032 0
	movq	-24(%rbp), %rax	# x, tmp67
	movzwl	(%rax), %eax	# x_4(D)->code, D.13549
	cmpw	$66, %ax	#, D.13549
	je	.L325	#,
	.loc 1 1032 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# data, tmp68
	movq	8(%rax), %rax	# data_2->pat, D.13547
	movq	-24(%rbp), %rdx	# x, tmp69
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# D.13547,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13548
	je	.L325	#,
.L326:
	.loc 1 1033 0 is_stmt 1
	movq	-8(%rbp), %rax	# data, tmp70
	movq	-32(%rbp), %rdx	# pat, tmp71
	movq	%rdx, (%rax)	# tmp71, data_2->found
.L325:
	.loc 1 1034 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	set_of_1, .-set_of_1
	.globl	set_of
	.type	set_of, @function
set_of:
.LFB24:
	.loc 1 1041 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 1043 0
	movq	$0, -16(%rbp)	#, data.found
	.loc 1 1044 0
	movq	-24(%rbp), %rax	# pat, tmp65
	movq	%rax, -8(%rbp)	# tmp65, data.pat
	.loc 1 1045 0
	movq	-32(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_3(D)->code, D.13550
	movzwl	%ax, %eax	# D.13550, D.13551
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13552
	cmpb	$105, %al	#, D.13552
	jne	.L329	#,
	.loc 1 1045 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# insn, tmp68
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, iftmp.53
	jmp	.L330	#
.L329:
	.loc 1 1045 0 discriminator 2
	movq	-32(%rbp), %rax	# insn, iftmp.53
.L330:
	.loc 1 1045 0 discriminator 3
	leaq	-16(%rbp), %rdx	#, tmp69
	movl	$set_of_1, %esi	#,
	movq	%rax, %rdi	# iftmp.53,
	call	note_stores	#
	.loc 1 1046 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# data.found, D.13553
	.loc 1 1047 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	set_of, .-set_of
	.globl	single_set_2
	.type	single_set_2, @function
single_set_2:
.LFB25:
	.loc 1 1056 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# pat, pat
	.loc 1 1057 0
	movq	$0, -16(%rbp)	#, set
	.loc 1 1058 0
	movl	$1, -24(%rbp)	#, set_verified
	.loc 1 1061 0
	movq	-48(%rbp), %rax	# pat, tmp73
	movzwl	(%rax), %eax	# pat_14(D)->code, D.13555
	cmpw	$39, %ax	#, D.13555
	jne	.L333	#,
	.loc 1 1063 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L334	#
.L345:
.LBB6:
	.loc 1 1065 0
	movq	-48(%rbp), %rax	# pat, tmp74
	movq	8(%rax), %rax	# pat_14(D)->fld[0].rtvec, D.13556
	movl	-20(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	movq	8(%rax,%rdx,8), %rax	# _19->elem, tmp77
	movq	%rax, -8(%rbp)	# tmp77, sub
	.loc 1 1066 0
	movq	-8(%rbp), %rax	# sub, tmp78
	movzwl	(%rax), %eax	# sub_20->code, D.13555
	movzwl	%ax, %eax	# D.13555, D.13558
	cmpl	$47, %eax	#, D.13558
	je	.L336	#,
	cmpl	$47, %eax	#, D.13558
	jb	.L335	#,
	cmpl	$49, %eax	#, D.13558
	ja	.L335	#,
	.loc 1 1070 0
	jmp	.L338	#
.L336:
	.loc 1 1081 0
	cmpl	$0, -24(%rbp)	#, set_verified
	jne	.L339	#,
	.loc 1 1083 0
	movq	-16(%rbp), %rax	# set, tmp79
	movq	8(%rax), %rdx	# set_4->fld[0].rtx, D.13559
	movq	-40(%rbp), %rax	# insn, tmp80
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13559
	je	.L340	#,
	.loc 1 1084 0
	movq	-16(%rbp), %rax	# set, tmp81
	movq	%rax, %rdi	# tmp81,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13557
	jne	.L340	#,
	.loc 1 1085 0
	movq	$0, -16(%rbp)	#, set
	jmp	.L339	#
.L340:
	.loc 1 1087 0
	movl	$1, -24(%rbp)	#, set_verified
.L339:
	.loc 1 1089 0
	cmpq	$0, -16(%rbp)	#, set
	jne	.L341	#,
	.loc 1 1090 0
	movq	-8(%rbp), %rax	# sub, tmp82
	movq	%rax, -16(%rbp)	# tmp82, set
	movl	$0, -24(%rbp)	#, set_verified
	jmp	.L342	#
.L341:
	.loc 1 1091 0
	movq	-8(%rbp), %rax	# sub, tmp83
	movq	8(%rax), %rdx	# sub_20->fld[0].rtx, D.13559
	movq	-40(%rbp), %rax	# insn, tmp84
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13559
	je	.L343	#,
	.loc 1 1092 0
	movq	-8(%rbp), %rax	# sub, tmp85
	movq	%rax, %rdi	# tmp85,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13557
	je	.L342	#,
.L343:
	.loc 1 1093 0
	movl	$0, %eax	#, D.13554
	jmp	.L344	#
.L342:
	.loc 1 1094 0
	jmp	.L338	#
.L335:
	.loc 1 1097 0
	movl	$0, %eax	#, D.13554
	jmp	.L344	#
.L338:
.LBE6:
	.loc 1 1063 0
	addl	$1, -20(%rbp)	#, i
.L334:
	.loc 1 1063 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# pat, tmp86
	movq	8(%rax), %rax	# pat_14(D)->fld[0].rtvec, D.13556
	movl	(%rax), %eax	# _17->num_elem, D.13557
	cmpl	-20(%rbp), %eax	# i, D.13557
	jg	.L345	#,
.L333:
	.loc 1 1101 0 is_stmt 1
	movq	-16(%rbp), %rax	# set, D.13554
.L344:
	.loc 1 1102 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	single_set_2, .-single_set_2
	.globl	multiple_sets
	.type	multiple_sets, @function
multiple_sets:
.LFB26:
	.loc 1 1110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1115 0
	movq	-24(%rbp), %rax	# insn, tmp73
	movzwl	(%rax), %eax	# insn_5(D)->code, D.13561
	movzwl	%ax, %eax	# D.13561, D.13560
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13562
	cmpb	$105, %al	#, D.13562
	je	.L347	#,
	.loc 1 1116 0
	movl	$0, %eax	#, D.13560
	jmp	.L348	#
.L347:
	.loc 1 1119 0
	movq	-24(%rbp), %rax	# insn, tmp75
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.13563
	movzwl	(%rax), %eax	# _10->code, D.13561
	cmpw	$39, %ax	#, D.13561
	jne	.L349	#,
	.loc 1 1121 0
	movl	$0, -4(%rbp)	#, i
	movl	$0, -8(%rbp)	#, found
	jmp	.L350	#
.L353:
	.loc 1 1122 0
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.13563
	movq	8(%rax), %rax	# _17->fld[0].rtvec, D.13564
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, tmp77
	movq	8(%rax,%rdx,8), %rax	# _18->elem, D.13563
	movzwl	(%rax), %eax	# _19->code, D.13561
	cmpw	$47, %ax	#, D.13561
	jne	.L351	#,
	.loc 1 1125 0
	cmpl	$0, -8(%rbp)	#, found
	je	.L352	#,
	.loc 1 1126 0
	movl	$1, %eax	#, D.13560
	jmp	.L348	#
.L352:
	.loc 1 1128 0
	movl	$1, -8(%rbp)	#, found
.L351:
	.loc 1 1121 0
	addl	$1, -4(%rbp)	#, i
.L350:
	.loc 1 1121 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.13563
	movq	8(%rax), %rax	# _14->fld[0].rtvec, D.13564
	movl	(%rax), %eax	# _15->num_elem, D.13560
	cmpl	-4(%rbp), %eax	# i, D.13560
	jg	.L353	#,
.L349:
	.loc 1 1133 0 is_stmt 1
	movl	$0, %eax	#, D.13560
.L348:
	.loc 1 1134 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	multiple_sets, .-multiple_sets
	.globl	set_noop_p
	.type	set_noop_p, @function
set_noop_p:
.LFB27:
	.loc 1 1142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	.loc 1 1143 0
	movq	-24(%rbp), %rax	# set, tmp84
	movq	16(%rax), %rax	# set_7(D)->fld[1].rtx, tmp85
	movq	%rax, -16(%rbp)	# tmp85, src
	.loc 1 1144 0
	movq	-24(%rbp), %rax	# set, tmp86
	movq	8(%rax), %rax	# set_7(D)->fld[0].rtx, tmp87
	movq	%rax, -8(%rbp)	# tmp87, dst
	.loc 1 1146 0
	movq	-16(%rbp), %rax	# src, tmp88
	movq	%rax, %rdi	# tmp88,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13565
	jne	.L355	#,
	.loc 1 1146 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dst, tmp89
	movq	%rax, %rdi	# tmp89,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13565
	je	.L356	#,
.L355:
	.loc 1 1147 0 is_stmt 1
	movl	$0, %eax	#, D.13565
	jmp	.L357	#
.L356:
	.loc 1 1149 0
	movq	-8(%rbp), %rax	# dst, tmp90
	movzwl	(%rax), %eax	# dst_9->code, D.13566
	cmpw	$66, %ax	#, D.13566
	jne	.L358	#,
	.loc 1 1149 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# src, tmp91
	movzwl	(%rax), %eax	# src_8->code, D.13566
	cmpw	$66, %ax	#, D.13566
	jne	.L358	#,
	.loc 1 1150 0 is_stmt 1
	movq	-16(%rbp), %rdx	# src, tmp92
	movq	-8(%rbp), %rax	# dst, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	rtx_equal_p	#
	jmp	.L357	#
.L358:
	.loc 1 1152 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.13567
	cmpq	-8(%rbp), %rax	# dst, D.13567
	jne	.L359	#,
	.loc 1 1152 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.13567
	cmpq	-16(%rbp), %rax	# src, D.13567
	jne	.L359	#,
	.loc 1 1153 0 is_stmt 1
	movl	$1, %eax	#, D.13565
	jmp	.L357	#
.L359:
	.loc 1 1155 0
	movq	-8(%rbp), %rax	# dst, tmp94
	movzwl	(%rax), %eax	# dst_9->code, D.13566
	cmpw	$132, %ax	#, D.13566
	je	.L360	#,
	.loc 1 1156 0
	movq	-8(%rbp), %rax	# dst, tmp95
	movzwl	(%rax), %eax	# dst_9->code, D.13566
	cmpw	$133, %ax	#, D.13566
	jne	.L361	#,
.L360:
	.loc 1 1157 0
	movq	-8(%rbp), %rax	# dst, tmp96
	movq	8(%rax), %rax	# dst_9->fld[0].rtx, D.13567
	movq	-16(%rbp), %rdx	# src, tmp97
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# D.13567,
	call	rtx_equal_p	#
	.loc 1 1158 0
	testl	%eax, %eax	# D.13565
	je	.L362	#,
	.loc 1 1158 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dst, tmp98
	movq	24(%rax), %rdx	# dst_9->fld[2].rtx, D.13567
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.13567
	cmpq	%rax, %rdx	# D.13567, D.13567
	jne	.L362	#,
	.loc 1 1158 0 discriminator 3
	movl	$1, %eax	#, iftmp.54
	jmp	.L363	#
.L362:
	.loc 1 1158 0 discriminator 2
	movl	$0, %eax	#, iftmp.54
.L363:
	.loc 1 1157 0 is_stmt 1
	jmp	.L357	#
.L361:
	.loc 1 1160 0
	movq	-8(%rbp), %rax	# dst, tmp99
	movzwl	(%rax), %eax	# dst_9->code, D.13566
	cmpw	$64, %ax	#, D.13566
	jne	.L364	#,
	.loc 1 1161 0
	movq	-8(%rbp), %rax	# dst, tmp100
	movq	8(%rax), %rax	# dst_9->fld[0].rtx, tmp101
	movq	%rax, -8(%rbp)	# tmp101, dst
.L364:
	.loc 1 1163 0
	movq	-16(%rbp), %rax	# src, tmp102
	movzwl	(%rax), %eax	# src_8->code, D.13566
	cmpw	$63, %ax	#, D.13566
	jne	.L365	#,
	.loc 1 1163 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dst, tmp103
	movzwl	(%rax), %eax	# dst_2->code, D.13566
	cmpw	$63, %ax	#, D.13566
	jne	.L365	#,
	.loc 1 1165 0 is_stmt 1
	movq	-16(%rbp), %rax	# src, tmp104
	movl	16(%rax), %edx	# src_8->fld[1].rtuint, D.13568
	movq	-8(%rbp), %rax	# dst, tmp105
	movl	16(%rax), %eax	# dst_2->fld[1].rtuint, D.13568
	cmpl	%eax, %edx	# D.13568, D.13568
	je	.L366	#,
	.loc 1 1166 0
	movl	$0, %eax	#, D.13565
	jmp	.L357	#
.L366:
	.loc 1 1167 0
	movq	-16(%rbp), %rax	# src, tmp106
	movq	8(%rax), %rax	# src_8->fld[0].rtx, tmp107
	movq	%rax, -16(%rbp)	# tmp107, src
	.loc 1 1168 0
	movq	-8(%rbp), %rax	# dst, tmp108
	movq	8(%rax), %rax	# dst_2->fld[0].rtx, tmp109
	movq	%rax, -8(%rbp)	# tmp109, dst
.L365:
	.loc 1 1171 0
	movq	-16(%rbp), %rax	# src, tmp110
	movzwl	(%rax), %eax	# src_1->code, D.13566
	.loc 1 1172 0
	cmpw	$61, %ax	#, D.13566
	jne	.L367	#,
	.loc 1 1171 0
	movq	-8(%rbp), %rax	# dst, tmp111
	movzwl	(%rax), %eax	# dst_3->code, D.13566
	cmpw	$61, %ax	#, D.13566
	jne	.L367	#,
	.loc 1 1172 0
	movq	-16(%rbp), %rax	# src, tmp112
	movl	8(%rax), %edx	# src_1->fld[0].rtuint, D.13568
	movq	-8(%rbp), %rax	# dst, tmp113
	movl	8(%rax), %eax	# dst_3->fld[0].rtuint, D.13568
	cmpl	%eax, %edx	# D.13568, D.13568
	jne	.L367	#,
	.loc 1 1172 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.55
	jmp	.L368	#
.L367:
	.loc 1 1172 0 discriminator 1
	movl	$0, %eax	#, iftmp.55
.L368:
.L357:
	.loc 1 1173 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	set_noop_p, .-set_noop_p
	.globl	noop_move_p
	.type	noop_move_p, @function
noop_move_p:
.LFB28:
	.loc 1 1181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 1182 0
	movq	-40(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, tmp75
	movq	%rax, -16(%rbp)	# tmp75, pat
	.loc 1 1184 0
	movq	-40(%rbp), %rax	# insn, tmp76
	movl	40(%rax), %eax	# insn_3(D)->fld[4].rtint, D.13569
	cmpl	$2147483647, %eax	#, D.13569
	jne	.L370	#,
	.loc 1 1185 0
	movl	$1, %eax	#, D.13569
	jmp	.L371	#
.L370:
	.loc 1 1188 0
	movq	-40(%rbp), %rax	# insn, tmp77
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13570
	je	.L372	#,
	.loc 1 1189 0
	movl	$0, %eax	#, D.13569
	jmp	.L371	#
.L372:
	.loc 1 1193 0
	movq	-40(%rbp), %rax	# insn, tmp78
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13570
	je	.L373	#,
	.loc 1 1194 0
	movl	$0, %eax	#, D.13569
	jmp	.L371	#
.L373:
	.loc 1 1196 0
	movq	-16(%rbp), %rax	# pat, tmp79
	movzwl	(%rax), %eax	# pat_4->code, D.13571
	cmpw	$47, %ax	#, D.13571
	jne	.L374	#,
	.loc 1 1196 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pat, tmp80
	movq	%rax, %rdi	# tmp80,
	call	set_noop_p	#
	testl	%eax, %eax	# D.13569
	je	.L374	#,
	.loc 1 1197 0 is_stmt 1
	movl	$1, %eax	#, D.13569
	jmp	.L371	#
.L374:
	.loc 1 1199 0
	movq	-16(%rbp), %rax	# pat, tmp81
	movzwl	(%rax), %eax	# pat_4->code, D.13571
	cmpw	$39, %ax	#, D.13571
	jne	.L375	#,
.LBB7:
	.loc 1 1204 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L376	#
.L381:
.LBB8:
	.loc 1 1206 0
	movq	-16(%rbp), %rax	# pat, tmp82
	movq	8(%rax), %rax	# pat_4->fld[0].rtvec, D.13572
	movl	-20(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, tmp83
	movq	8(%rax,%rdx,8), %rax	# _18->elem, tmp85
	movq	%rax, -8(%rbp)	# tmp85, tem
	.loc 1 1208 0
	movq	-8(%rbp), %rax	# tem, tmp86
	movzwl	(%rax), %eax	# tem_19->code, D.13571
	cmpw	$48, %ax	#, D.13571
	je	.L377	#,
	.loc 1 1209 0
	movq	-8(%rbp), %rax	# tem, tmp87
	movzwl	(%rax), %eax	# tem_19->code, D.13571
	cmpw	$49, %ax	#, D.13571
	jne	.L378	#,
.L377:
	.loc 1 1210 0
	jmp	.L379	#
.L378:
	.loc 1 1212 0
	movq	-8(%rbp), %rax	# tem, tmp88
	movzwl	(%rax), %eax	# tem_19->code, D.13571
	cmpw	$47, %ax	#, D.13571
	jne	.L380	#,
	.loc 1 1212 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp89
	movq	%rax, %rdi	# tmp89,
	call	set_noop_p	#
	testl	%eax, %eax	# D.13569
	jne	.L379	#,
.L380:
	.loc 1 1213 0 is_stmt 1
	movl	$0, %eax	#, D.13569
	jmp	.L371	#
.L379:
.LBE8:
	.loc 1 1204 0
	addl	$1, -20(%rbp)	#, i
.L376:
	.loc 1 1204 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pat, tmp90
	movq	8(%rax), %rax	# pat_4->fld[0].rtvec, D.13572
	movl	(%rax), %eax	# _16->num_elem, D.13569
	cmpl	-20(%rbp), %eax	# i, D.13569
	jg	.L381	#,
	.loc 1 1216 0 is_stmt 1
	movl	$1, %eax	#, D.13569
	jmp	.L371	#
.L375:
.LBE7:
	.loc 1 1218 0
	movl	$0, %eax	#, D.13569
.L371:
	.loc 1 1219 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	noop_move_p, .-noop_move_p
	.globl	find_last_value
	.type	find_last_value, @function
find_last_value:
.LFB29:
	.loc 1 1235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# pinsn, pinsn
	movq	%rdx, -56(%rbp)	# valid_to, valid_to
	movl	%ecx, -60(%rbp)	# allow_hwreg, allow_hwreg
	.loc 1 1238 0
	movq	-48(%rbp), %rax	# pinsn, tmp83
	movq	(%rax), %rax	# *pinsn_6(D), D.13574
	movq	16(%rax), %rax	# _7->fld[1].rtx, tmp84
	movq	%rax, -32(%rbp)	# tmp84, p
	jmp	.L383	#
.L395:
	.loc 1 1240 0
	movq	-32(%rbp), %rax	# p, tmp85
	movzwl	(%rax), %eax	# p_1->code, D.13575
	movzwl	%ax, %eax	# D.13575, D.13576
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13577
	cmpb	$105, %al	#, D.13577
	jne	.L384	#,
.LBB9:
	.loc 1 1242 0
	movq	-32(%rbp), %rax	# p, tmp87
	movzwl	(%rax), %eax	# p_1->code, D.13575
	movzwl	%ax, %eax	# D.13575, D.13576
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13577
	cmpb	$105, %al	#, D.13577
	jne	.L385	#,
	.loc 1 1242 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp89
	movq	32(%rax), %rax	# p_1->fld[3].rtx, D.13574
	movzwl	(%rax), %eax	# _16->code, D.13575
	cmpw	$47, %ax	#, D.13575
	jne	.L386	#,
	.loc 1 1242 0 discriminator 3
	movq	-32(%rbp), %rax	# p, tmp90
	movq	32(%rax), %rax	# p_1->fld[3].rtx, iftmp.57
	jmp	.L388	#
.L386:
	.loc 1 1242 0 discriminator 4
	movq	-32(%rbp), %rax	# p, tmp91
	movq	32(%rax), %rdx	# p_1->fld[3].rtx, D.13574
	movq	-32(%rbp), %rax	# p, tmp92
	movq	%rdx, %rsi	# D.13574,
	movq	%rax, %rdi	# tmp92,
	call	single_set_2	#
	jmp	.L388	#
.L385:
	.loc 1 1242 0 discriminator 2
	movl	$0, %eax	#, iftmp.56
.L388:
	.loc 1 1242 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.56, set
	.loc 1 1243 0 is_stmt 1 discriminator 5
	movq	-32(%rbp), %rax	# p, tmp93
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp94, note
	.loc 1 1245 0 discriminator 5
	cmpq	$0, -16(%rbp)	#, set
	je	.L389	#,
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# set, tmp95
	movq	8(%rax), %rdx	# set_23->fld[0].rtx, D.13574
	movq	-40(%rbp), %rax	# x, tmp96
	movq	%rdx, %rsi	# D.13574,
	movq	%rax, %rdi	# tmp96,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13576
	je	.L389	#,
.LBB10:
	.loc 1 1247 0 is_stmt 1
	movq	-16(%rbp), %rax	# set, tmp97
	movq	16(%rax), %rax	# set_23->fld[1].rtx, tmp98
	movq	%rax, -24(%rbp)	# tmp98, src
	.loc 1 1249 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L390	#,
	.loc 1 1249 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp99
	movq	8(%rax), %rax	# note_24->fld[0].rtx, D.13574
	movzwl	(%rax), %eax	# _29->code, D.13575
	cmpw	$3, %ax	#, D.13575
	je	.L390	#,
	.loc 1 1250 0 is_stmt 1
	movq	-8(%rbp), %rax	# note, tmp100
	movq	8(%rax), %rax	# note_24->fld[0].rtx, tmp101
	movq	%rax, -24(%rbp)	# tmp101, src
.L390:
	.loc 1 1252 0
	cmpq	$0, -56(%rbp)	#, valid_to
	je	.L391	#,
	.loc 1 1253 0
	movq	-32(%rbp), %rax	# p, tmp102
	movq	16(%rax), %rcx	# p_1->fld[1].rtx, D.13574
	movq	-56(%rbp), %rdx	# valid_to, tmp103
	movq	-24(%rbp), %rax	# src, tmp104
	movq	%rcx, %rsi	# D.13574,
	movq	%rax, %rdi	# tmp104,
	call	modified_between_p	#
	testl	%eax, %eax	# D.13576
	jne	.L389	#,
.L391:
	.loc 1 1256 0
	movq	-24(%rbp), %rax	# src, tmp105
	movzwl	(%rax), %eax	# src_2->code, D.13575
	cmpw	$61, %ax	#, D.13575
	jne	.L392	#,
	.loc 1 1257 0 discriminator 1
	movq	-24(%rbp), %rax	# src, tmp106
	movl	8(%rax), %eax	# src_2->fld[0].rtuint, D.13578
	.loc 1 1256 0 discriminator 1
	cmpl	$52, %eax	#, D.13578
	ja	.L392	#,
	.loc 1 1257 0
	cmpl	$0, -60(%rbp)	#, allow_hwreg
	je	.L389	#,
.L392:
	.loc 1 1259 0
	movq	-48(%rbp), %rax	# pinsn, tmp107
	movq	-32(%rbp), %rdx	# p, tmp108
	movq	%rdx, (%rax)	# tmp108, *pinsn_6(D)
	.loc 1 1260 0
	movq	-24(%rbp), %rax	# src, D.13573
	jmp	.L393	#
.L389:
.LBE10:
	.loc 1 1265 0
	movq	-32(%rbp), %rdx	# p, tmp109
	movq	-40(%rbp), %rax	# x, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	reg_set_p	#
	testl	%eax, %eax	# D.13576
	je	.L384	#,
	.loc 1 1266 0
	jmp	.L394	#
.L384:
.LBE9:
	.loc 1 1239 0
	movq	-32(%rbp), %rax	# p, tmp111
	movq	16(%rax), %rax	# p_1->fld[1].rtx, tmp112
	movq	%rax, -32(%rbp)	# tmp112, p
.L383:
	.loc 1 1238 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	je	.L394	#,
	.loc 1 1238 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# p, tmp113
	movzwl	(%rax), %eax	# p_1->code, D.13575
	cmpw	$36, %ax	#, D.13575
	jne	.L395	#,
.L394:
	.loc 1 1269 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, D.13573
.L393:
	.loc 1 1270 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	find_last_value, .-find_last_value
	.globl	refers_to_regno_p
	.type	refers_to_regno_p, @function
refers_to_regno_p:
.LFB30:
	.loc 1 1284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# regno, regno
	movl	%esi, -56(%rbp)	# endregno, endregno
	movq	%rdx, -64(%rbp)	# x, x
	movq	%rcx, -72(%rbp)	# loc, loc
.L397:
	.loc 1 1293 0
	cmpq	$0, -64(%rbp)	#, x
	jne	.L398	#,
	.loc 1 1294 0
	movl	$0, %eax	#, D.13579
	jmp	.L399	#
.L398:
	.loc 1 1296 0
	movq	-64(%rbp), %rax	# x, tmp172
	movzwl	(%rax), %eax	# x_1->code, D.13580
	movzwl	%ax, %eax	# D.13580, tmp173
	movl	%eax, -40(%rbp)	# tmp173, code
	.loc 1 1298 0
	movl	-40(%rbp), %eax	# code, code
	cmpl	$49, %eax	#, code
	je	.L401	#,
	cmpl	$49, %eax	#, code
	ja	.L402	#,
	cmpl	$47, %eax	#, code
	je	.L401	#,
	.loc 1 1356 0
	jmp	.L458	#
.L402:
	.loc 1 1298 0
	cmpl	$61, %eax	#, code
	je	.L403	#,
	cmpl	$63, %eax	#, code
	je	.L404	#,
	.loc 1 1356 0
	jmp	.L458	#
.L403:
	.loc 1 1301 0
	movq	-64(%rbp), %rax	# x, tmp175
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, tmp176
	movl	%eax, -36(%rbp)	# tmp176, x_regno
	.loc 1 1306 0
	cmpl	$7, -36(%rbp)	#, x_regno
	je	.L405	#,
	.loc 1 1308 0
	cmpl	$16, -36(%rbp)	#, x_regno
	je	.L405	#,
	.loc 1 1310 0
	cmpl	$20, -36(%rbp)	#, x_regno
	jne	.L406	#,
.L405:
	.loc 1 1311 0
	cmpl	$52, -52(%rbp)	#, regno
	jbe	.L406	#,
	.loc 1 1311 0 is_stmt 0 discriminator 1
	cmpl	$57, -52(%rbp)	#, regno
	ja	.L406	#,
	.loc 1 1312 0 is_stmt 1
	movl	$1, %eax	#, D.13579
	jmp	.L399	#
.L406:
	.loc 1 1315 0
	movl	-56(%rbp), %eax	# endregno, tmp177
	cmpl	-36(%rbp), %eax	# x_regno, tmp177
	jbe	.L407	#,
	.loc 1 1315 0 is_stmt 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, x_regno
	ja	.L408	#,
	cmpl	$7, -36(%rbp)	#, x_regno
	jbe	.L409	#,
	.loc 1 1316 0 is_stmt 1
	cmpl	$15, -36(%rbp)	#, x_regno
	jbe	.L410	#,
.L409:
	.loc 1 1316 0 is_stmt 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, x_regno
	jbe	.L411	#,
	.loc 1 1316 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, x_regno
	jbe	.L410	#,
.L411:
	.loc 1 1316 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, x_regno
	jbe	.L412	#,
	.loc 1 1316 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, x_regno
	jbe	.L410	#,
.L412:
	.loc 1 1316 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, x_regno
	jbe	.L413	#,
	.loc 1 1316 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, x_regno
	ja	.L413	#,
.L410:
	movq	-64(%rbp), %rax	# x, tmp178
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13582
	.loc 1 1315 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.13582
	je	.L414	#,
	.loc 1 1316 0
	movq	-64(%rbp), %rax	# x, tmp180
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13582
	cmpl	$6, %eax	#, D.13582
	jne	.L415	#,
.L414:
	.loc 1 1315 0 discriminator 3
	movl	$2, %eax	#, iftmp.61
	jmp	.L417	#
.L415:
	.loc 1 1315 0 is_stmt 0
	movl	$1, %eax	#, iftmp.61
	jmp	.L417	#
.L413:
	.loc 1 1316 0 is_stmt 1 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp182
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	.loc 1 1315 0 discriminator 2
	cmpb	$18, %al	#, D.13581
	jne	.L418	#,
	.loc 1 1316 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.64
	andl	$33554432, %eax	#, D.13579
	.loc 1 1315 0 discriminator 6
	testl	%eax, %eax	# D.13579
	je	.L419	#,
	.loc 1 1315 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.63
	jmp	.L430	#
.L419:
	.loc 1 1315 0 discriminator 9
	movl	$3, %eax	#, iftmp.63
	jmp	.L430	#
.L418:
	.loc 1 1316 0 is_stmt 1 discriminator 7
	movq	-64(%rbp), %rax	# x, tmp183
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	.loc 1 1315 0 discriminator 7
	cmpb	$24, %al	#, D.13581
	jne	.L422	#,
	.loc 1 1316 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.67
	andl	$33554432, %eax	#, D.13579
	.loc 1 1315 0 discriminator 10
	testl	%eax, %eax	# D.13579
	je	.L423	#,
	.loc 1 1315 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.66
	jmp	.L430	#
.L423:
	.loc 1 1315 0 discriminator 12
	movl	$6, %eax	#, iftmp.66
	jmp	.L430	#
.L422:
	.loc 1 1316 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp184
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13581
	movzbl	%al, %edx	# D.13581, D.13579
	movl	target_flags(%rip), %eax	# target_flags, target_flags.69
	andl	$33554432, %eax	#, D.13579
	testl	%eax, %eax	# D.13579
	je	.L426	#,
	.loc 1 1316 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.68
	jmp	.L427	#
.L426:
	.loc 1 1316 0 discriminator 2
	movl	$4, %eax	#, iftmp.68
.L427:
	.loc 1 1316 0 discriminator 3
	addl	%edx, %eax	# D.13579, D.13579
	subl	$1, %eax	#, D.13579
	movl	target_flags(%rip), %edx	# target_flags, target_flags.71
	andl	$33554432, %edx	#, D.13579
	testl	%edx, %edx	# D.13579
	je	.L428	#,
	.loc 1 1316 0 discriminator 1
	movl	$8, %ebx	#, iftmp.70
	jmp	.L429	#
.L428:
	.loc 1 1316 0 discriminator 2
	movl	$4, %ebx	#, iftmp.70
.L429:
	.loc 1 1316 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.70
.L417:
	jmp	.L430	#
.L408:
	.loc 1 1315 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.59
.L430:
	.loc 1 1315 0 is_stmt 0 discriminator 15
	movl	-36(%rbp), %edx	# x_regno, tmp188
	addl	%edx, %eax	# tmp188, D.13583
	cmpl	-52(%rbp), %eax	# regno, D.13583
	jbe	.L407	#,
	.loc 1 1315 0 discriminator 3
	movl	$1, %eax	#, iftmp.58
	jmp	.L431	#
.L407:
	.loc 1 1315 0 discriminator 2
	movl	$0, %eax	#, iftmp.58
.L431:
	.loc 1 1314 0 is_stmt 1
	jmp	.L399	#
.L404:
	.loc 1 1322 0
	movq	-64(%rbp), %rax	# x, tmp189
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	movzwl	(%rax), %eax	# _78->code, D.13580
	cmpw	$61, %ax	#, D.13580
	jne	.L432	#,
	.loc 1 1323 0
	movq	-64(%rbp), %rax	# x, tmp190
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	movl	8(%rax), %eax	# _80->fld[0].rtuint, D.13583
	cmpl	$52, %eax	#, D.13583
	ja	.L432	#,
.LBB11:
	.loc 1 1325 0
	movq	-64(%rbp), %rax	# x, tmp191
	movq	%rax, %rdi	# tmp191,
	call	subreg_regno	#
	movl	%eax, -32(%rbp)	# tmp192, inner_regno
	.loc 1 1327 0
	cmpl	$52, -32(%rbp)	#, inner_regno
	ja	.L433	#,
	.loc 1 1327 0 is_stmt 0 discriminator 1
	cmpl	$7, -52(%rbp)	#, regno
	jbe	.L434	#,
	.loc 1 1328 0 is_stmt 1
	cmpl	$15, -52(%rbp)	#, regno
	jbe	.L435	#,
.L434:
	.loc 1 1328 0 is_stmt 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, regno
	jbe	.L436	#,
	.loc 1 1328 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, regno
	jbe	.L435	#,
.L436:
	.loc 1 1328 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, regno
	jbe	.L437	#,
	.loc 1 1328 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, regno
	jbe	.L435	#,
.L437:
	.loc 1 1328 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, regno
	jbe	.L438	#,
	.loc 1 1328 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, regno
	ja	.L438	#,
.L435:
	movq	-64(%rbp), %rax	# x, tmp193
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13582
	.loc 1 1327 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.13582
	je	.L439	#,
	.loc 1 1328 0
	movq	-64(%rbp), %rax	# x, tmp195
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13582
	cmpl	$6, %eax	#, D.13582
	jne	.L440	#,
.L439:
	.loc 1 1327 0 discriminator 3
	movl	$2, %eax	#, iftmp.74
	jmp	.L442	#
.L440:
	.loc 1 1327 0 is_stmt 0
	movl	$1, %eax	#, iftmp.74
	jmp	.L442	#
.L438:
	.loc 1 1328 0 is_stmt 1 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp197
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	.loc 1 1327 0 discriminator 2
	cmpb	$18, %al	#, D.13581
	jne	.L443	#,
	.loc 1 1328 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.77
	andl	$33554432, %eax	#, D.13579
	.loc 1 1327 0 discriminator 6
	testl	%eax, %eax	# D.13579
	je	.L444	#,
	.loc 1 1327 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.76
	jmp	.L455	#
.L444:
	.loc 1 1327 0 discriminator 9
	movl	$3, %eax	#, iftmp.76
	jmp	.L455	#
.L443:
	.loc 1 1328 0 is_stmt 1 discriminator 7
	movq	-64(%rbp), %rax	# x, tmp198
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	.loc 1 1327 0 discriminator 7
	cmpb	$24, %al	#, D.13581
	jne	.L447	#,
	.loc 1 1328 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.80
	andl	$33554432, %eax	#, D.13579
	.loc 1 1327 0 discriminator 10
	testl	%eax, %eax	# D.13579
	je	.L448	#,
	.loc 1 1327 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.79
	jmp	.L455	#
.L448:
	.loc 1 1327 0 discriminator 12
	movl	$6, %eax	#, iftmp.79
	jmp	.L455	#
.L447:
	.loc 1 1328 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp199
	movzbl	2(%rax), %eax	# x_1->mode, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13581
	movzbl	%al, %edx	# D.13581, D.13579
	movl	target_flags(%rip), %eax	# target_flags, target_flags.82
	andl	$33554432, %eax	#, D.13579
	testl	%eax, %eax	# D.13579
	je	.L451	#,
	.loc 1 1328 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.81
	jmp	.L452	#
.L451:
	.loc 1 1328 0 discriminator 2
	movl	$4, %eax	#, iftmp.81
.L452:
	.loc 1 1328 0 discriminator 3
	addl	%edx, %eax	# D.13579, D.13579
	subl	$1, %eax	#, D.13579
	movl	target_flags(%rip), %edx	# target_flags, target_flags.84
	andl	$33554432, %edx	#, D.13579
	testl	%edx, %edx	# D.13579
	je	.L453	#,
	.loc 1 1328 0 discriminator 1
	movl	$8, %ebx	#, iftmp.83
	jmp	.L454	#
.L453:
	.loc 1 1328 0 discriminator 2
	movl	$4, %ebx	#, iftmp.83
.L454:
	.loc 1 1328 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.83
.L442:
	jmp	.L455	#
.L433:
	.loc 1 1327 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.72
.L455:
	.loc 1 1326 0
	movl	-32(%rbp), %edx	# inner_regno, tmp206
	addl	%edx, %eax	# tmp206, tmp205
	movl	%eax, -28(%rbp)	# tmp205, inner_endregno
	.loc 1 1330 0
	movl	-56(%rbp), %eax	# endregno, tmp207
	cmpl	-32(%rbp), %eax	# inner_regno, tmp207
	jbe	.L456	#,
	.loc 1 1330 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# regno, tmp208
	cmpl	-28(%rbp), %eax	# inner_endregno, tmp208
	jae	.L456	#,
	.loc 1 1330 0 discriminator 3
	movl	$1, %eax	#, iftmp.85
	jmp	.L457	#
.L456:
	.loc 1 1330 0 discriminator 2
	movl	$0, %eax	#, iftmp.85
.L457:
	.loc 1 1330 0 discriminator 4
	jmp	.L399	#
.L432:
.LBE11:
	.loc 1 1332 0 is_stmt 1
	jmp	.L458	#
.L401:
	.loc 1 1336 0
	movq	-64(%rbp), %rax	# x, tmp209
	addq	$8, %rax	#, D.13585
	cmpq	-72(%rbp), %rax	# loc, D.13585
	je	.L459	#,
	.loc 1 1340 0
	movq	-64(%rbp), %rax	# x, tmp210
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	movzwl	(%rax), %eax	# _130->code, D.13580
	cmpw	$63, %ax	#, D.13580
	jne	.L460	#,
	.loc 1 1341 0
	movq	-64(%rbp), %rax	# x, tmp211
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	addq	$8, %rax	#, D.13585
	cmpq	-72(%rbp), %rax	# loc, D.13585
	je	.L460	#,
	.loc 1 1342 0
	movq	-64(%rbp), %rax	# x, tmp212
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	movq	8(%rax), %rax	# _134->fld[0].rtx, D.13584
	movzwl	(%rax), %eax	# _135->code, D.13580
	cmpw	$61, %ax	#, D.13580
	jne	.L460	#,
	.loc 1 1343 0
	movq	-64(%rbp), %rax	# x, tmp213
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	movq	8(%rax), %rax	# _137->fld[0].rtx, D.13584
	movl	8(%rax), %eax	# _138->fld[0].rtuint, D.13583
	cmpl	$52, %eax	#, D.13583
	jbe	.L460	#,
	.loc 1 1345 0
	movq	-64(%rbp), %rax	# x, tmp214
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	.loc 1 1344 0
	movq	8(%rax), %rdx	# _140->fld[0].rtx, D.13584
	movq	-72(%rbp), %rcx	# loc, tmp215
	movl	-56(%rbp), %esi	# endregno, tmp216
	movl	-52(%rbp), %eax	# regno, tmp217
	movl	%eax, %edi	# tmp217,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.13579
	jne	.L461	#,
.L460:
	.loc 1 1346 0
	movq	-64(%rbp), %rax	# x, tmp218
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13584
	movzwl	(%rax), %eax	# _143->code, D.13580
	cmpw	$61, %ax	#, D.13580
	je	.L459	#,
	.loc 1 1347 0
	movq	-64(%rbp), %rax	# x, tmp219
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.13584
	movq	-72(%rbp), %rcx	# loc, tmp220
	movl	-56(%rbp), %esi	# endregno, tmp221
	movl	-52(%rbp), %eax	# regno, tmp222
	movl	%eax, %edi	# tmp222,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.13579
	je	.L459	#,
.L461:
	.loc 1 1348 0
	movl	$1, %eax	#, D.13579
	jmp	.L399	#
.L459:
	.loc 1 1350 0
	cmpl	$49, -40(%rbp)	#, code
	je	.L462	#,
	.loc 1 1350 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp223
	addq	$16, %rax	#, D.13585
	cmpq	-72(%rbp), %rax	# loc, D.13585
	jne	.L463	#,
.L462:
	.loc 1 1351 0 is_stmt 1
	movl	$0, %eax	#, D.13579
	jmp	.L399	#
.L463:
	.loc 1 1352 0
	movq	-64(%rbp), %rax	# x, tmp224
	movq	16(%rax), %rax	# x_1->fld[1].rtx, tmp225
	movq	%rax, -64(%rbp)	# tmp225, x
	.loc 1 1353 0
	jmp	.L397	#
.L458:
	.loc 1 1361 0
	movl	-40(%rbp), %eax	# code, code.86
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp227
	movq	%rax, -24(%rbp)	# tmp227, fmt
	.loc 1 1362 0
	movl	-40(%rbp), %eax	# code, code.87
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13581
	movzbl	%al, %eax	# D.13581, D.13579
	subl	$1, %eax	#, tmp229
	movl	%eax, -48(%rbp)	# tmp229, i
	jmp	.L464	#
.L472:
	.loc 1 1364 0
	movl	-48(%rbp), %eax	# i, tmp230
	movslq	%eax, %rdx	# tmp230, D.13586
	movq	-24(%rbp), %rax	# fmt, tmp231
	addq	%rdx, %rax	# D.13586, D.13587
	movzbl	(%rax), %eax	# *_158, D.13588
	cmpb	$101, %al	#, D.13588
	jne	.L465	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp233
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp234
	movq	-64(%rbp), %rax	# x, tmp236
	addq	%rdx, %rax	# tmp234, tmp235
	addq	$8, %rax	#, D.13585
	cmpq	-72(%rbp), %rax	# loc, D.13585
	je	.L465	#,
	.loc 1 1366 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, i
	jne	.L466	#,
	.loc 1 1368 0
	movq	-64(%rbp), %rax	# x, tmp237
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp238
	movq	%rax, -64(%rbp)	# tmp238, x
	.loc 1 1369 0
	jmp	.L397	#
.L466:
	.loc 1 1372 0
	movq	-64(%rbp), %rax	# x, tmp239
	movl	-48(%rbp), %edx	# i, tmp241
	movslq	%edx, %rdx	# tmp241, tmp240
	movq	8(%rax,%rdx,8), %rdx	# x_1->fld[i_2].rtx, D.13584
	movq	-72(%rbp), %rcx	# loc, tmp242
	movl	-56(%rbp), %esi	# endregno, tmp243
	movl	-52(%rbp), %eax	# regno, tmp244
	movl	%eax, %edi	# tmp244,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.13579
	je	.L467	#,
	.loc 1 1373 0
	movl	$1, %eax	#, D.13579
	jmp	.L399	#
.L467:
	.loc 1 1366 0
	jmp	.L468	#
.L465:
	.loc 1 1375 0
	movl	-48(%rbp), %eax	# i, tmp245
	movslq	%eax, %rdx	# tmp245, D.13586
	movq	-24(%rbp), %rax	# fmt, tmp246
	addq	%rdx, %rax	# D.13586, D.13587
	movzbl	(%rax), %eax	# *_166, D.13588
	cmpb	$69, %al	#, D.13588
	jne	.L468	#,
.LBB12:
	.loc 1 1378 0
	movq	-64(%rbp), %rax	# x, tmp247
	movl	-48(%rbp), %edx	# i, tmp249
	movslq	%edx, %rdx	# tmp249, tmp248
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.13589
	movl	(%rax), %eax	# _168->num_elem, D.13579
	subl	$1, %eax	#, tmp250
	movl	%eax, -44(%rbp)	# tmp250, j
	jmp	.L469	#
.L471:
	.loc 1 1379 0
	movq	-64(%rbp), %rax	# x, tmp251
	movl	-48(%rbp), %edx	# i, tmp253
	movslq	%edx, %rdx	# tmp253, tmp252
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.13589
	movl	-44(%rbp), %edx	# j, tmp255
	movslq	%edx, %rdx	# tmp255, tmp254
	salq	$3, %rdx	#, tmp256
	addq	%rdx, %rax	# tmp256, tmp257
	addq	$8, %rax	#, D.13585
	cmpq	-72(%rbp), %rax	# loc, D.13585
	je	.L470	#,
	.loc 1 1380 0
	movq	-64(%rbp), %rax	# x, tmp258
	movl	-48(%rbp), %edx	# i, tmp260
	movslq	%edx, %rdx	# tmp260, tmp259
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.13589
	movl	-44(%rbp), %edx	# j, tmp262
	movslq	%edx, %rdx	# tmp262, tmp261
	movq	8(%rax,%rdx,8), %rdx	# _173->elem, D.13584
	movq	-72(%rbp), %rcx	# loc, tmp263
	movl	-56(%rbp), %esi	# endregno, tmp264
	movl	-52(%rbp), %eax	# regno, tmp265
	movl	%eax, %edi	# tmp265,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.13579
	je	.L470	#,
	.loc 1 1381 0
	movl	$1, %eax	#, D.13579
	jmp	.L399	#
.L470:
	.loc 1 1378 0
	subl	$1, -44(%rbp)	#, j
.L469:
	.loc 1 1378 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, j
	jns	.L471	#,
.L468:
.LBE12:
	.loc 1 1362 0 is_stmt 1
	subl	$1, -48(%rbp)	#, i
.L464:
	.loc 1 1362 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, i
	jns	.L472	#,
	.loc 1 1384 0 is_stmt 1
	movl	$0, %eax	#, D.13579
.L399:
	.loc 1 1385 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	refers_to_regno_p, .-refers_to_regno_p
	.globl	reg_overlap_mentioned_p
	.type	reg_overlap_mentioned_p, @function
reg_overlap_mentioned_p:
.LFB31:
	.loc 1 1396 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# in, in
	.loc 1 1400 0
	movq	-56(%rbp), %rax	# x, tmp134
	movzwl	(%rax), %eax	# x_16(D)->code, D.13592
	cmpw	$64, %ax	#, D.13592
	jne	.L474	#,
	.loc 1 1401 0
	movq	-56(%rbp), %rax	# x, tmp135
	movq	8(%rax), %rax	# x_16(D)->fld[0].rtx, tmp136
	movq	%rax, -56(%rbp)	# tmp136, x
.L474:
	.loc 1 1404 0
	movq	-56(%rbp), %rax	# x, tmp137
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$67, %ax	#, D.13592
	je	.L475	#,
	.loc 1 1404 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp138
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$68, %ax	#, D.13592
	je	.L475	#,
	movq	-56(%rbp), %rax	# x, tmp139
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$54, %ax	#, D.13592
	je	.L475	#,
	movq	-56(%rbp), %rax	# x, tmp140
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$55, %ax	#, D.13592
	je	.L475	#,
	movq	-56(%rbp), %rax	# x, tmp141
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$58, %ax	#, D.13592
	je	.L475	#,
	movq	-56(%rbp), %rax	# x, tmp142
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$134, %ax	#, D.13592
	je	.L475	#,
	movq	-56(%rbp), %rax	# x, tmp143
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$56, %ax	#, D.13592
	je	.L475	#,
	movq	-56(%rbp), %rax	# x, tmp144
	movzwl	(%rax), %eax	# x_1->code, D.13592
	cmpw	$140, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp145
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$67, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp146
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$68, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp147
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$54, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp148
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$55, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp149
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$58, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp150
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$134, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp151
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$56, %ax	#, D.13592
	je	.L475	#,
	movq	-64(%rbp), %rax	# in, tmp152
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$140, %ax	#, D.13592
	jne	.L476	#,
.L475:
	.loc 1 1405 0 is_stmt 1
	movl	$0, %eax	#, D.13591
	jmp	.L477	#
.L476:
	.loc 1 1407 0
	movq	-56(%rbp), %rax	# x, tmp153
	movzwl	(%rax), %eax	# x_1->code, D.13592
	movzwl	%ax, %eax	# D.13592, D.13593
	subl	$39, %eax	#, tmp154
	cmpl	$30, %eax	#, tmp154
	ja	.L518	#,
	movl	%eax, %eax	# tmp154, tmp155
	movq	.L480(,%rax,8), %rax	#, tmp156
	jmp	*%rax	# tmp156
	.section	.rodata
	.align 8
	.align 4
.L480:
	.quad	.L479
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L518
	.quad	.L481
	.quad	.L518
	.quad	.L482
	.quad	.L481
	.quad	.L483
	.quad	.L518
	.quad	.L518
	.quad	.L484
	.quad	.L518
	.quad	.L518
	.quad	.L481
	.text
.L483:
	.loc 1 1410 0
	movq	-56(%rbp), %rax	# x, tmp157
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13594
	movl	8(%rax), %eax	# _38->fld[0].rtuint, tmp158
	movl	%eax, -40(%rbp)	# tmp158, regno
	.loc 1 1411 0
	cmpl	$52, -40(%rbp)	#, regno
	ja	.L485	#,
	.loc 1 1412 0
	movq	-56(%rbp), %rax	# x, tmp159
	movq	%rax, %rdi	# tmp159,
	call	subreg_regno	#
	movl	%eax, -40(%rbp)	# tmp160, regno
	.loc 1 1413 0
	jmp	.L486	#
.L485:
	jmp	.L486	#
.L482:
	.loc 1 1416 0
	movq	-56(%rbp), %rax	# x, tmp161
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, tmp162
	movl	%eax, -40(%rbp)	# tmp162, regno
.L486:
	.loc 1 1418 0
	cmpl	$52, -40(%rbp)	#, regno
	ja	.L487	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	cmpl	$7, -40(%rbp)	#, regno
	jbe	.L488	#,
	.loc 1 1419 0 is_stmt 1
	cmpl	$15, -40(%rbp)	#, regno
	jbe	.L489	#,
.L488:
	.loc 1 1419 0 is_stmt 0 discriminator 2
	cmpl	$20, -40(%rbp)	#, regno
	jbe	.L490	#,
	.loc 1 1419 0 discriminator 1
	cmpl	$28, -40(%rbp)	#, regno
	jbe	.L489	#,
.L490:
	.loc 1 1419 0 discriminator 2
	cmpl	$44, -40(%rbp)	#, regno
	jbe	.L491	#,
	.loc 1 1419 0 discriminator 1
	cmpl	$52, -40(%rbp)	#, regno
	jbe	.L489	#,
.L491:
	.loc 1 1419 0 discriminator 2
	cmpl	$28, -40(%rbp)	#, regno
	jbe	.L492	#,
	.loc 1 1419 0 discriminator 1
	cmpl	$36, -40(%rbp)	#, regno
	ja	.L492	#,
.L489:
	movq	-56(%rbp), %rax	# x, tmp163
	movzbl	2(%rax), %eax	# x_1->mode, D.13595
	movzbl	%al, %eax	# D.13595, D.13591
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13596
	.loc 1 1418 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.13596
	je	.L493	#,
	.loc 1 1419 0
	movq	-56(%rbp), %rax	# x, tmp165
	movzbl	2(%rax), %eax	# x_1->mode, D.13595
	movzbl	%al, %eax	# D.13595, D.13591
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13596
	cmpl	$6, %eax	#, D.13596
	jne	.L494	#,
.L493:
	.loc 1 1418 0 discriminator 3
	movl	$2, %eax	#, iftmp.90
	jmp	.L496	#
.L494:
	.loc 1 1418 0 is_stmt 0
	movl	$1, %eax	#, iftmp.90
	jmp	.L496	#
.L492:
	.loc 1 1419 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp167
	movzbl	2(%rax), %eax	# x_1->mode, D.13595
	.loc 1 1418 0 discriminator 2
	cmpb	$18, %al	#, D.13595
	jne	.L497	#,
	.loc 1 1419 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.93
	andl	$33554432, %eax	#, D.13591
	.loc 1 1418 0 discriminator 6
	testl	%eax, %eax	# D.13591
	je	.L498	#,
	.loc 1 1418 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.92
	jmp	.L509	#
.L498:
	.loc 1 1418 0 discriminator 9
	movl	$3, %eax	#, iftmp.92
	jmp	.L509	#
.L497:
	.loc 1 1419 0 is_stmt 1 discriminator 7
	movq	-56(%rbp), %rax	# x, tmp168
	movzbl	2(%rax), %eax	# x_1->mode, D.13595
	.loc 1 1418 0 discriminator 7
	cmpb	$24, %al	#, D.13595
	jne	.L501	#,
	.loc 1 1419 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.96
	andl	$33554432, %eax	#, D.13591
	.loc 1 1418 0 discriminator 10
	testl	%eax, %eax	# D.13591
	je	.L502	#,
	.loc 1 1418 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.95
	jmp	.L509	#
.L502:
	.loc 1 1418 0 discriminator 12
	movl	$6, %eax	#, iftmp.95
	jmp	.L509	#
.L501:
	.loc 1 1419 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp169
	movzbl	2(%rax), %eax	# x_1->mode, D.13595
	movzbl	%al, %eax	# D.13595, D.13591
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13595
	movzbl	%al, %edx	# D.13595, D.13591
	movl	target_flags(%rip), %eax	# target_flags, target_flags.98
	andl	$33554432, %eax	#, D.13591
	testl	%eax, %eax	# D.13591
	je	.L505	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.97
	jmp	.L506	#
.L505:
	.loc 1 1419 0 discriminator 2
	movl	$4, %eax	#, iftmp.97
.L506:
	.loc 1 1419 0 discriminator 3
	addl	%edx, %eax	# D.13591, D.13591
	subl	$1, %eax	#, D.13591
	movl	target_flags(%rip), %edx	# target_flags, target_flags.100
	andl	$33554432, %edx	#, D.13591
	testl	%edx, %edx	# D.13591
	je	.L507	#,
	.loc 1 1419 0 discriminator 1
	movl	$8, %ebx	#, iftmp.99
	jmp	.L508	#
.L507:
	.loc 1 1419 0 discriminator 2
	movl	$4, %ebx	#, iftmp.99
.L508:
	.loc 1 1419 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.99
.L496:
	jmp	.L509	#
.L487:
	.loc 1 1418 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.88
.L509:
	.loc 1 1418 0 is_stmt 0 discriminator 15
	movl	-40(%rbp), %edx	# regno, tmp176
	addl	%edx, %eax	# tmp176, tmp175
	movl	%eax, -28(%rbp)	# tmp175, endregno
	.loc 1 1420 0 is_stmt 1 discriminator 15
	movq	-64(%rbp), %rdx	# in, tmp177
	movl	-28(%rbp), %esi	# endregno, tmp178
	movl	-40(%rbp), %eax	# regno, tmp179
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp179,
	call	refers_to_regno_p	#
	jmp	.L477	#
.L484:
.LBB13:
	.loc 1 1427 0
	movq	-64(%rbp), %rax	# in, tmp180
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	cmpw	$66, %ax	#, D.13592
	jne	.L510	#,
	.loc 1 1428 0
	movl	$1, %eax	#, D.13591
	jmp	.L477	#
.L510:
	.loc 1 1430 0
	movq	-64(%rbp), %rax	# in, tmp181
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	movzwl	%ax, %eax	# D.13592, D.13591
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp183
	movq	%rax, -24(%rbp)	# tmp183, fmt
	.loc 1 1431 0
	movq	-64(%rbp), %rax	# in, tmp184
	movzwl	(%rax), %eax	# in_27(D)->code, D.13592
	movzwl	%ax, %eax	# D.13592, D.13591
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13595
	movzbl	%al, %eax	# D.13595, D.13591
	subl	$1, %eax	#, tmp186
	movl	%eax, -36(%rbp)	# tmp186, i
	jmp	.L511	#
.L513:
	.loc 1 1432 0
	movl	-36(%rbp), %eax	# i, tmp187
	movslq	%eax, %rdx	# tmp187, D.13597
	movq	-24(%rbp), %rax	# fmt, tmp188
	addq	%rdx, %rax	# D.13597, D.13598
	movzbl	(%rax), %eax	# *_96, D.13599
	cmpb	$101, %al	#, D.13599
	jne	.L512	#,
	.loc 1 1432 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# in, tmp189
	movl	-36(%rbp), %edx	# i, tmp191
	movslq	%edx, %rdx	# tmp191, tmp190
	movq	8(%rax,%rdx,8), %rdx	# in_27(D)->fld[i_4].rtx, D.13594
	movq	-56(%rbp), %rax	# x, tmp192
	movq	%rdx, %rsi	# D.13594,
	movq	%rax, %rdi	# tmp192,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13591
	je	.L512	#,
	.loc 1 1433 0 is_stmt 1
	movl	$1, %eax	#, D.13591
	jmp	.L477	#
.L512:
	.loc 1 1431 0
	subl	$1, -36(%rbp)	#, i
.L511:
	.loc 1 1431 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L513	#,
	.loc 1 1435 0 is_stmt 1
	movl	$0, %eax	#, D.13591
	jmp	.L477	#
.L481:
.LBE13:
	.loc 1 1441 0
	movq	-64(%rbp), %rdx	# in, tmp193
	movq	-56(%rbp), %rax	# x, tmp194
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	reg_mentioned_p	#
	jmp	.L477	#
.L479:
.LBB14:
	.loc 1 1448 0
	movq	-56(%rbp), %rax	# x, tmp195
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13600
	movl	(%rax), %eax	# _104->num_elem, D.13591
	subl	$1, %eax	#, tmp196
	movl	%eax, -32(%rbp)	# tmp196, i
	jmp	.L514	#
.L516:
	.loc 1 1449 0
	movq	-56(%rbp), %rax	# x, tmp197
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13600
	movl	-32(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, tmp198
	movq	8(%rax,%rdx,8), %rax	# _107->elem, D.13594
	movq	8(%rax), %rax	# _108->fld[0].rtx, D.13594
	testq	%rax, %rax	# D.13594
	je	.L515	#,
	.loc 1 1450 0
	movq	-56(%rbp), %rax	# x, tmp200
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13600
	movl	-32(%rbp), %edx	# i, tmp202
	movslq	%edx, %rdx	# tmp202, tmp201
	movq	8(%rax,%rdx,8), %rax	# _110->elem, D.13594
	movq	8(%rax), %rax	# _111->fld[0].rtx, D.13594
	movq	-64(%rbp), %rdx	# in, tmp203
	movq	%rdx, %rsi	# tmp203,
	movq	%rax, %rdi	# D.13594,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13591
	je	.L515	#,
	.loc 1 1451 0
	movl	$1, %eax	#, D.13591
	jmp	.L477	#
.L515:
	.loc 1 1448 0
	subl	$1, -32(%rbp)	#, i
.L514:
	.loc 1 1448 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, i
	jns	.L516	#,
	.loc 1 1452 0 is_stmt 1
	movl	$0, %eax	#, D.13591
	jmp	.L477	#
.L518:
.LBE14:
	.loc 1 1456 0
	nop
	.loc 1 1459 0
	movl	$__FUNCTION__.9578, %edx	#,
	movl	$1459, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L477:
	.loc 1 1460 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	reg_overlap_mentioned_p, .-reg_overlap_mentioned_p
	.globl	reg_set_last
	.type	reg_set_last, @function
reg_set_last:
.LFB32:
	.loc 1 1472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 1473 0
	movq	-48(%rbp), %rax	# insn, tmp80
	movq	%rax, -24(%rbp)	# tmp80, orig_insn
	.loc 1 1483 0
	jmp	.L520	#
.L529:
	.loc 1 1488 0
	movq	-48(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_1->code, D.13602
	movzwl	%ax, %eax	# D.13602, D.13604
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13605
	cmpb	$105, %al	#, D.13605
	jne	.L521	#,
.LBB15:
	.loc 1 1490 0
	movq	-48(%rbp), %rdx	# insn, tmp83
	movq	-40(%rbp), %rax	# x, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	set_of	#
	movq	%rax, -16(%rbp)	# tmp85, set
	.loc 1 1492 0
	cmpq	$0, -16(%rbp)	#, set
	je	.L521	#,
.LBB16:
	.loc 1 1495 0
	movq	-16(%rbp), %rax	# set, tmp86
	movzwl	(%rax), %eax	# set_12->code, D.13602
	cmpw	$47, %ax	#, D.13602
	jne	.L522	#,
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# set, tmp87
	movq	8(%rax), %rax	# set_12->fld[0].rtx, D.13606
	cmpq	-40(%rbp), %rax	# x, D.13606
	je	.L523	#,
.L522:
	.loc 1 1496 0 is_stmt 1
	movl	$0, %eax	#, D.13601
	jmp	.L524	#
.L523:
	.loc 1 1497 0
	movq	-40(%rbp), %rax	# x, tmp88
	movq	16(%rax), %rax	# x_7(D)->fld[1].rtx, tmp89
	movq	%rax, -8(%rbp)	# tmp89, last_value
	.loc 1 1498 0
	movq	-8(%rbp), %rax	# last_value, tmp90
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$67, %ax	#, D.13602
	je	.L525	#,
	.loc 1 1498 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# last_value, tmp91
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$68, %ax	#, D.13602
	je	.L525	#,
	movq	-8(%rbp), %rax	# last_value, tmp92
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$54, %ax	#, D.13602
	je	.L525	#,
	movq	-8(%rbp), %rax	# last_value, tmp93
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$55, %ax	#, D.13602
	je	.L525	#,
	movq	-8(%rbp), %rax	# last_value, tmp94
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$58, %ax	#, D.13602
	je	.L525	#,
	movq	-8(%rbp), %rax	# last_value, tmp95
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$134, %ax	#, D.13602
	je	.L525	#,
	movq	-8(%rbp), %rax	# last_value, tmp96
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$56, %ax	#, D.13602
	je	.L525	#,
	movq	-8(%rbp), %rax	# last_value, tmp97
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$140, %ax	#, D.13602
	je	.L525	#,
	.loc 1 1499 0 is_stmt 1
	movq	-8(%rbp), %rax	# last_value, tmp98
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$61, %ax	#, D.13602
	je	.L526	#,
	.loc 1 1500 0
	movq	-8(%rbp), %rax	# last_value, tmp99
	movzwl	(%rax), %eax	# last_value_15->code, D.13602
	cmpw	$63, %ax	#, D.13602
	jne	.L527	#,
.L526:
	.loc 1 1501 0
	movq	-24(%rbp), %rdx	# orig_insn, tmp100
	movq	-48(%rbp), %rcx	# insn, tmp101
	movq	-8(%rbp), %rax	# last_value, tmp102
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	reg_set_between_p	#
	testl	%eax, %eax	# D.13604
	jne	.L527	#,
.L525:
	.loc 1 1503 0
	movq	-8(%rbp), %rax	# last_value, D.13601
	jmp	.L524	#
.L527:
	.loc 1 1505 0
	movl	$0, %eax	#, D.13601
	jmp	.L524	#
.L521:
.LBE16:
.LBE15:
	.loc 1 1487 0
	movq	-48(%rbp), %rax	# insn, tmp103
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp104
	movq	%rax, -48(%rbp)	# tmp104, insn
.L520:
	.loc 1 1483 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, insn
	je	.L528	#,
	.loc 1 1484 0
	movq	-48(%rbp), %rax	# insn, tmp105
	movzwl	(%rax), %eax	# insn_1->code, D.13602
	cmpw	$36, %ax	#, D.13602
	je	.L528	#,
	.loc 1 1485 0
	movq	-48(%rbp), %rax	# insn, tmp106
	movzwl	(%rax), %eax	# insn_1->code, D.13602
	cmpw	$34, %ax	#, D.13602
	jne	.L529	#,
	.loc 1 1486 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp107
	movl	8(%rax), %eax	# x_7(D)->fld[0].rtuint, D.13603
	.loc 1 1485 0 discriminator 1
	cmpl	$53, %eax	#, D.13603
	ja	.L529	#,
.L528:
	.loc 1 1509 0
	movl	$0, %eax	#, D.13601
.L524:
	.loc 1 1510 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	reg_set_last, .-reg_set_last
	.globl	note_stores
	.type	note_stores, @function
note_stores:
.LFB33:
	.loc 1 1526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# fun, fun
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 1529 0
	movq	-24(%rbp), %rax	# x, tmp84
	movzwl	(%rax), %eax	# x_5(D)->code, D.13607
	cmpw	$38, %ax	#, D.13607
	jne	.L531	#,
	.loc 1 1530 0
	movq	-24(%rbp), %rax	# x, tmp85
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, tmp86
	movq	%rax, -24(%rbp)	# tmp86, x
.L531:
	.loc 1 1532 0
	movq	-24(%rbp), %rax	# x, tmp87
	movzwl	(%rax), %eax	# x_1->code, D.13607
	cmpw	$47, %ax	#, D.13607
	je	.L532	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp88
	movzwl	(%rax), %eax	# x_1->code, D.13607
	cmpw	$49, %ax	#, D.13607
	jne	.L533	#,
.L532:
.LBB17:
	.loc 1 1534 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp89
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp90
	movq	%rax, -8(%rbp)	# tmp90, dest
	.loc 1 1536 0
	jmp	.L534	#
.L536:
	.loc 1 1542 0
	movq	-8(%rbp), %rax	# dest, tmp91
	movq	8(%rax), %rax	# dest_4->fld[0].rtx, tmp92
	movq	%rax, -8(%rbp)	# tmp92, dest
.L534:
	.loc 1 1536 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp93
	movzwl	(%rax), %eax	# dest_4->code, D.13607
	cmpw	$63, %ax	#, D.13607
	jne	.L535	#,
	.loc 1 1537 0
	movq	-8(%rbp), %rax	# dest, tmp94
	movq	8(%rax), %rax	# dest_4->fld[0].rtx, D.13610
	movzwl	(%rax), %eax	# _21->code, D.13607
	cmpw	$61, %ax	#, D.13607
	jne	.L536	#,
	.loc 1 1538 0
	movq	-8(%rbp), %rax	# dest, tmp95
	movq	8(%rax), %rax	# dest_4->fld[0].rtx, D.13610
	movl	8(%rax), %eax	# _23->fld[0].rtuint, D.13611
	cmpl	$52, %eax	#, D.13611
	ja	.L536	#,
.L535:
	.loc 1 1539 0
	movq	-8(%rbp), %rax	# dest, tmp96
	movzwl	(%rax), %eax	# dest_4->code, D.13607
	cmpw	$133, %ax	#, D.13607
	je	.L536	#,
	.loc 1 1540 0
	movq	-8(%rbp), %rax	# dest, tmp97
	movzwl	(%rax), %eax	# dest_4->code, D.13607
	cmpw	$132, %ax	#, D.13607
	je	.L536	#,
	.loc 1 1541 0
	movq	-8(%rbp), %rax	# dest, tmp98
	movzwl	(%rax), %eax	# dest_4->code, D.13607
	cmpw	$64, %ax	#, D.13607
	je	.L536	#,
	.loc 1 1546 0
	movq	-8(%rbp), %rax	# dest, tmp99
	movzwl	(%rax), %eax	# dest_4->code, D.13607
	cmpw	$39, %ax	#, D.13607
	jne	.L537	#,
	.loc 1 1548 0
	movq	-8(%rbp), %rax	# dest, tmp100
	movq	8(%rax), %rax	# dest_4->fld[0].rtvec, D.13608
	movl	(%rax), %eax	# _29->num_elem, D.13609
	subl	$1, %eax	#, tmp101
	movl	%eax, -12(%rbp)	# tmp101, i
	jmp	.L538	#
.L540:
	.loc 1 1549 0
	movq	-8(%rbp), %rax	# dest, tmp102
	movq	8(%rax), %rax	# dest_4->fld[0].rtvec, D.13608
	movl	-12(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# _32->elem, D.13610
	movq	8(%rax), %rax	# _33->fld[0].rtx, D.13610
	testq	%rax, %rax	# D.13610
	je	.L539	#,
	.loc 1 1550 0
	movq	-8(%rbp), %rax	# dest, tmp105
	movq	8(%rax), %rax	# dest_4->fld[0].rtvec, D.13608
	movl	-12(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# _35->elem, D.13610
	movq	8(%rax), %rcx	# _36->fld[0].rtx, D.13610
	movq	-40(%rbp), %rdx	# data, tmp108
	movq	-24(%rbp), %rsi	# x, tmp109
	movq	-32(%rbp), %rax	# fun, tmp110
	movq	%rcx, %rdi	# D.13610,
	call	*%rax	# tmp110
.L539:
	.loc 1 1548 0
	subl	$1, -12(%rbp)	#, i
.L538:
	.loc 1 1548 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L540	#,
.LBE17:
	.loc 1 1533 0 is_stmt 1
	jmp	.L530	#
.L537:
.LBB18:
	.loc 1 1553 0
	movq	-40(%rbp), %rdx	# data, tmp111
	movq	-24(%rbp), %rsi	# x, tmp112
	movq	-8(%rbp), %rcx	# dest, tmp113
	movq	-32(%rbp), %rax	# fun, tmp114
	movq	%rcx, %rdi	# tmp113,
	call	*%rax	# tmp114
.LBE18:
	.loc 1 1533 0
	jmp	.L530	#
.L533:
	.loc 1 1556 0
	movq	-24(%rbp), %rax	# x, tmp115
	movzwl	(%rax), %eax	# x_1->code, D.13607
	cmpw	$39, %ax	#, D.13607
	jne	.L530	#,
	.loc 1 1557 0
	movq	-24(%rbp), %rax	# x, tmp116
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13608
	movl	(%rax), %eax	# _11->num_elem, D.13609
	subl	$1, %eax	#, tmp117
	movl	%eax, -12(%rbp)	# tmp117, i
	jmp	.L543	#
.L544:
	.loc 1 1558 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp118
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.13608
	movl	-12(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	movq	8(%rax,%rdx,8), %rax	# _14->elem, D.13610
	movq	-40(%rbp), %rdx	# data, tmp121
	movq	-32(%rbp), %rcx	# fun, tmp122
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# D.13610,
	call	note_stores	#
	.loc 1 1557 0 discriminator 2
	subl	$1, -12(%rbp)	#, i
.L543:
	.loc 1 1557 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L544	#,
.L530:
	.loc 1 1559 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	note_stores, .-note_stores
	.globl	note_uses
	.type	note_uses, @function
note_uses:
.LFB34:
	.loc 1 1575 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pbody, pbody
	movq	%rsi, -48(%rbp)	# fun, fun
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 1576 0
	movq	-40(%rbp), %rax	# pbody, tmp90
	movq	(%rax), %rax	# *pbody_5(D), tmp91
	movq	%rax, -8(%rbp)	# tmp91, body
	.loc 1 1579 0
	movq	-8(%rbp), %rax	# body, tmp92
	movzwl	(%rax), %eax	# body_6->code, D.13612
	movzwl	%ax, %eax	# D.13612, D.13613
	subl	$38, %eax	#, tmp93
	cmpl	$14, %eax	#, tmp93
	ja	.L546	#,
	movl	%eax, %eax	# tmp93, tmp94
	movq	.L548(,%rax,8), %rax	#, tmp95
	jmp	*%rax	# tmp95
	.section	.rodata
	.align 8
	.align 4
.L548:
	.quad	.L547
	.quad	.L549
	.quad	.L546
	.quad	.L550
	.quad	.L551
	.quad	.L551
	.quad	.L546
	.quad	.L546
	.quad	.L552
	.quad	.L553
	.quad	.L554
	.quad	.L555
	.quad	.L546
	.quad	.L546
	.quad	.L556
	.text
.L547:
	.loc 1 1582 0
	movq	-8(%rbp), %rax	# body, tmp96
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp97
	movq	-48(%rbp), %rax	# fun, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp98
	.loc 1 1583 0
	movq	-8(%rbp), %rax	# body, tmp99
	leaq	16(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp100
	movq	-48(%rbp), %rax	# fun, tmp101
	movq	%rax, %rsi	# tmp101,
	movq	%rcx, %rdi	# D.13614,
	call	note_uses	#
	.loc 1 1584 0
	jmp	.L545	#
.L549:
	.loc 1 1587 0
	movq	-8(%rbp), %rax	# body, tmp102
	movq	8(%rax), %rax	# body_6->fld[0].rtvec, D.13615
	movl	(%rax), %eax	# _13->num_elem, D.13616
	subl	$1, %eax	#, tmp103
	movl	%eax, -20(%rbp)	# tmp103, i
	jmp	.L558	#
.L559:
	.loc 1 1588 0 discriminator 2
	movq	-8(%rbp), %rax	# body, tmp104
	movq	8(%rax), %rax	# body_6->fld[0].rtvec, D.13615
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	salq	$3, %rdx	#, tmp107
	addq	%rdx, %rax	# tmp107, tmp108
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp109
	movq	-48(%rbp), %rax	# fun, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rcx, %rdi	# D.13614,
	call	note_uses	#
	.loc 1 1587 0 discriminator 2
	subl	$1, -20(%rbp)	#, i
.L558:
	.loc 1 1587 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L559	#,
	.loc 1 1589 0 is_stmt 1
	jmp	.L545	#
.L554:
	.loc 1 1592 0
	movq	-8(%rbp), %rax	# body, tmp111
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp112
	movq	-48(%rbp), %rax	# fun, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp113
	.loc 1 1593 0
	jmp	.L545	#
.L550:
	.loc 1 1596 0
	movq	-8(%rbp), %rax	# body, tmp114
	movq	32(%rax), %rax	# body_6->fld[3].rtvec, D.13615
	movl	(%rax), %eax	# _20->num_elem, D.13616
	subl	$1, %eax	#, tmp115
	movl	%eax, -20(%rbp)	# tmp115, i
	jmp	.L560	#
.L561:
	.loc 1 1597 0 discriminator 2
	movq	-8(%rbp), %rax	# body, tmp116
	movq	32(%rax), %rax	# body_6->fld[3].rtvec, D.13615
	movl	-20(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	salq	$3, %rdx	#, tmp119
	addq	%rdx, %rax	# tmp119, tmp120
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp121
	movq	-48(%rbp), %rax	# fun, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp122
	.loc 1 1596 0 discriminator 2
	subl	$1, -20(%rbp)	#, i
.L560:
	.loc 1 1596 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L561	#,
	.loc 1 1598 0 is_stmt 1
	jmp	.L545	#
.L556:
	.loc 1 1601 0
	movq	-8(%rbp), %rax	# body, tmp123
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp124
	movq	-48(%rbp), %rax	# fun, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp125
	.loc 1 1602 0
	jmp	.L545	#
.L552:
	.loc 1 1605 0
	movq	-8(%rbp), %rax	# body, tmp126
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp127
	movq	-48(%rbp), %rax	# fun, tmp128
	movq	%rdx, %rsi	# tmp127,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp128
	.loc 1 1606 0
	jmp	.L545	#
.L551:
	.loc 1 1610 0
	movq	-8(%rbp), %rax	# body, tmp129
	movq	8(%rax), %rax	# body_6->fld[0].rtvec, D.13615
	movl	(%rax), %eax	# _28->num_elem, D.13616
	subl	$1, %eax	#, tmp130
	movl	%eax, -20(%rbp)	# tmp130, i
	jmp	.L562	#
.L563:
	.loc 1 1611 0 discriminator 2
	movq	-8(%rbp), %rax	# body, tmp131
	movq	8(%rax), %rax	# body_6->fld[0].rtvec, D.13615
	movl	-20(%rbp), %edx	# i, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	salq	$3, %rdx	#, tmp134
	addq	%rdx, %rax	# tmp134, tmp135
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp136
	movq	-48(%rbp), %rax	# fun, tmp137
	movq	%rdx, %rsi	# tmp136,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp137
	.loc 1 1610 0 discriminator 2
	subl	$1, -20(%rbp)	#, i
.L562:
	.loc 1 1610 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L563	#,
	.loc 1 1612 0 is_stmt 1
	jmp	.L545	#
.L555:
	.loc 1 1615 0
	movq	-8(%rbp), %rax	# body, tmp138
	movq	8(%rax), %rax	# body_6->fld[0].rtx, D.13617
	movzwl	(%rax), %eax	# _34->code, D.13612
	cmpw	$66, %ax	#, D.13612
	jne	.L564	#,
	.loc 1 1616 0
	movq	-8(%rbp), %rax	# body, tmp139
	movq	8(%rax), %rax	# body_6->fld[0].rtx, D.13617
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp140
	movq	-48(%rbp), %rax	# fun, tmp141
	movq	%rdx, %rsi	# tmp140,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp141
	.loc 1 1617 0
	jmp	.L545	#
.L564:
	jmp	.L545	#
.L553:
.LBB19:
	.loc 1 1621 0
	movq	-8(%rbp), %rax	# body, tmp142
	movq	8(%rax), %rax	# body_6->fld[0].rtx, tmp143
	movq	%rax, -16(%rbp)	# tmp143, dest
	.loc 1 1625 0
	movq	-8(%rbp), %rax	# body, tmp144
	leaq	16(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp145
	movq	-48(%rbp), %rax	# fun, tmp146
	movq	%rdx, %rsi	# tmp145,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp146
	.loc 1 1627 0
	movq	-16(%rbp), %rax	# dest, tmp147
	movzwl	(%rax), %eax	# dest_38->code, D.13612
	cmpw	$133, %ax	#, D.13612
	jne	.L565	#,
	.loc 1 1629 0
	movq	-16(%rbp), %rax	# dest, tmp148
	leaq	16(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp149
	movq	-48(%rbp), %rax	# fun, tmp150
	movq	%rdx, %rsi	# tmp149,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp150
	.loc 1 1630 0
	movq	-16(%rbp), %rax	# dest, tmp151
	leaq	24(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp152
	movq	-48(%rbp), %rax	# fun, tmp153
	movq	%rdx, %rsi	# tmp152,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp153
	.loc 1 1633 0
	jmp	.L566	#
.L565:
	jmp	.L566	#
.L567:
	.loc 1 1634 0
	movq	-16(%rbp), %rax	# dest, tmp154
	movq	8(%rax), %rax	# dest_4->fld[0].rtx, tmp155
	movq	%rax, -16(%rbp)	# tmp155, dest
.L566:
	.loc 1 1633 0 discriminator 1
	movq	-16(%rbp), %rax	# dest, tmp156
	movzwl	(%rax), %eax	# dest_4->code, D.13612
	cmpw	$63, %ax	#, D.13612
	je	.L567	#,
	.loc 1 1633 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# dest, tmp157
	movzwl	(%rax), %eax	# dest_4->code, D.13612
	cmpw	$64, %ax	#, D.13612
	je	.L567	#,
	.loc 1 1636 0 is_stmt 1
	movq	-16(%rbp), %rax	# dest, tmp158
	movzwl	(%rax), %eax	# dest_4->code, D.13612
	cmpw	$66, %ax	#, D.13612
	jne	.L568	#,
	.loc 1 1637 0
	movq	-16(%rbp), %rax	# dest, tmp159
	leaq	8(%rax), %rcx	#, D.13614
	movq	-56(%rbp), %rdx	# data, tmp160
	movq	-48(%rbp), %rax	# fun, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rcx, %rdi	# D.13614,
	call	*%rax	# tmp161
.LBE19:
	.loc 1 1639 0
	jmp	.L545	#
.L568:
	jmp	.L545	#
.L546:
	.loc 1 1643 0
	movq	-56(%rbp), %rcx	# data, tmp162
	movq	-40(%rbp), %rdx	# pbody, tmp163
	movq	-48(%rbp), %rax	# fun, tmp164
	movq	%rcx, %rsi	# tmp162,
	movq	%rdx, %rdi	# tmp163,
	call	*%rax	# tmp164
	.loc 1 1644 0
	nop
.L545:
	.loc 1 1646 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	note_uses, .-note_uses
	.globl	dead_or_set_p
	.type	dead_or_set_p, @function
dead_or_set_p:
.LFB35:
	.loc 1 1669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# x, x
	.loc 1 1674 0
	movq	-32(%rbp), %rax	# x, tmp97
	movzwl	(%rax), %eax	# x_12(D)->code, D.13619
	cmpw	$69, %ax	#, D.13619
	jne	.L570	#,
	.loc 1 1675 0
	movl	$1, %eax	#, D.13618
	jmp	.L571	#
.L570:
	.loc 1 1677 0
	movq	-32(%rbp), %rax	# x, tmp98
	movzwl	(%rax), %eax	# x_12(D)->code, D.13619
	cmpw	$61, %ax	#, D.13619
	je	.L572	#,
	.loc 1 1678 0
	movl	$__FUNCTION__.9648, %edx	#,
	movl	$1678, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L572:
	.loc 1 1680 0
	movq	-32(%rbp), %rax	# x, tmp99
	movl	8(%rax), %eax	# x_12(D)->fld[0].rtuint, tmp100
	movl	%eax, -8(%rbp)	# tmp100, regno
	.loc 1 1682 0
	cmpl	$52, -8(%rbp)	#, regno
	ja	.L573	#,
	.loc 1 1682 0 is_stmt 0 discriminator 1
	cmpl	$7, -8(%rbp)	#, regno
	jbe	.L574	#,
	cmpl	$15, -8(%rbp)	#, regno
	jbe	.L575	#,
.L574:
	.loc 1 1682 0 discriminator 2
	cmpl	$20, -8(%rbp)	#, regno
	jbe	.L576	#,
	.loc 1 1682 0 discriminator 1
	cmpl	$28, -8(%rbp)	#, regno
	jbe	.L575	#,
.L576:
	.loc 1 1682 0 discriminator 2
	cmpl	$44, -8(%rbp)	#, regno
	jbe	.L577	#,
	.loc 1 1682 0 discriminator 1
	cmpl	$52, -8(%rbp)	#, regno
	jbe	.L575	#,
.L577:
	.loc 1 1682 0 discriminator 2
	cmpl	$28, -8(%rbp)	#, regno
	jbe	.L578	#,
	.loc 1 1682 0 discriminator 1
	cmpl	$36, -8(%rbp)	#, regno
	ja	.L578	#,
.L575:
	movq	-32(%rbp), %rax	# x, tmp101
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.13620
	movzbl	%al, %eax	# D.13620, D.13618
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13621
	cmpl	$5, %eax	#, D.13621
	je	.L579	#,
	.loc 1 1682 0 discriminator 4
	movq	-32(%rbp), %rax	# x, tmp103
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.13620
	movzbl	%al, %eax	# D.13620, D.13618
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13621
	cmpl	$6, %eax	#, D.13621
	jne	.L580	#,
.L579:
	.loc 1 1682 0 discriminator 3
	movl	$2, %eax	#, iftmp.103
	jmp	.L582	#
.L580:
	.loc 1 1682 0 discriminator 1
	movl	$1, %eax	#, iftmp.103
	jmp	.L582	#
.L578:
	.loc 1 1682 0 discriminator 2
	movq	-32(%rbp), %rax	# x, tmp105
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.13620
	cmpb	$18, %al	#, D.13620
	jne	.L583	#,
	.loc 1 1682 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.106
	andl	$33554432, %eax	#, D.13618
	testl	%eax, %eax	# D.13618
	je	.L584	#,
	.loc 1 1682 0 discriminator 9
	movl	$2, %eax	#, iftmp.105
	jmp	.L582	#
.L584:
	.loc 1 1682 0 discriminator 10
	movl	$3, %eax	#, iftmp.105
	jmp	.L582	#
.L583:
	.loc 1 1682 0 discriminator 8
	movq	-32(%rbp), %rax	# x, tmp106
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.13620
	cmpb	$24, %al	#, D.13620
	jne	.L587	#,
	.loc 1 1682 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.109
	andl	$33554432, %eax	#, D.13618
	testl	%eax, %eax	# D.13618
	je	.L588	#,
	.loc 1 1682 0 discriminator 13
	movl	$4, %eax	#, iftmp.108
	jmp	.L582	#
.L588:
	.loc 1 1682 0 discriminator 14
	movl	$6, %eax	#, iftmp.108
	jmp	.L582	#
.L587:
	.loc 1 1682 0 discriminator 12
	movq	-32(%rbp), %rax	# x, tmp107
	movzbl	2(%rax), %eax	# x_12(D)->mode, D.13620
	movzbl	%al, %eax	# D.13620, D.13618
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13620
	movzbl	%al, %edx	# D.13620, D.13618
	movl	target_flags(%rip), %eax	# target_flags, target_flags.111
	andl	$33554432, %eax	#, D.13618
	testl	%eax, %eax	# D.13618
	je	.L591	#,
	.loc 1 1682 0 discriminator 1
	movl	$8, %eax	#, iftmp.110
	jmp	.L592	#
.L591:
	.loc 1 1682 0 discriminator 2
	movl	$4, %eax	#, iftmp.110
.L592:
	.loc 1 1682 0 discriminator 3
	addl	%edx, %eax	# D.13618, D.13618
	subl	$1, %eax	#, D.13618
	movl	target_flags(%rip), %edx	# target_flags, target_flags.113
	andl	$33554432, %edx	#, D.13618
	testl	%edx, %edx	# D.13618
	je	.L593	#,
	.loc 1 1682 0 discriminator 1
	movl	$8, %ecx	#, iftmp.112
	jmp	.L594	#
.L593:
	.loc 1 1682 0 discriminator 2
	movl	$4, %ecx	#, iftmp.112
.L594:
	.loc 1 1682 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.112
.L582:
	.loc 1 1682 0 discriminator 6
	movl	-8(%rbp), %edx	# regno, tmp111
	addl	%edx, %eax	# tmp111, D.13622
	subl	$1, %eax	#, iftmp.101
	jmp	.L595	#
.L573:
	.loc 1 1682 0 discriminator 2
	movl	-8(%rbp), %eax	# regno, iftmp.101
.L595:
	.loc 1 1681 0 is_stmt 1
	movl	%eax, -4(%rbp)	# iftmp.101, last_regno
	.loc 1 1684 0
	movl	-8(%rbp), %eax	# regno, tmp112
	movl	%eax, -12(%rbp)	# tmp112, i
	jmp	.L596	#
.L598:
	.loc 1 1685 0
	movl	-12(%rbp), %edx	# i, tmp113
	movq	-24(%rbp), %rax	# insn, tmp114
	movl	%edx, %esi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	dead_or_set_regno_p	#
	testl	%eax, %eax	# D.13618
	jne	.L597	#,
	.loc 1 1686 0
	movl	$0, %eax	#, D.13618
	jmp	.L571	#
.L597:
	.loc 1 1684 0
	addl	$1, -12(%rbp)	#, i
.L596:
	.loc 1 1684 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp115
	cmpl	-4(%rbp), %eax	# last_regno, tmp115
	jbe	.L598	#,
	.loc 1 1688 0 is_stmt 1
	movl	$1, %eax	#, D.13618
.L571:
	.loc 1 1689 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	dead_or_set_p, .-dead_or_set_p
	.globl	dead_or_set_regno_p
	.type	dead_or_set_regno_p, @function
dead_or_set_regno_p:
.LFB36:
	.loc 1 1698 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# insn, insn
	movl	%esi, -76(%rbp)	# test_regno, test_regno
	.loc 1 1703 0
	movl	-76(%rbp), %edx	# test_regno, tmp197
	movq	-72(%rbp), %rax	# insn, tmp198
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp198,
	call	find_regno_note	#
	testq	%rax, %rax	# D.13624
	je	.L600	#,
	.loc 1 1704 0
	movl	$1, %eax	#, D.13623
	jmp	.L601	#
.L600:
	.loc 1 1706 0
	movq	-72(%rbp), %rax	# insn, tmp199
	movzwl	(%rax), %eax	# insn_34(D)->code, D.13625
	cmpw	$34, %ax	#, D.13625
	jne	.L602	#,
	.loc 1 1707 0
	movl	-76(%rbp), %edx	# test_regno, tmp200
	movq	-72(%rbp), %rax	# insn, tmp201
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp201,
	call	find_regno_fusage	#
	testl	%eax, %eax	# D.13623
	je	.L602	#,
	.loc 1 1708 0
	movl	$1, %eax	#, D.13623
	jmp	.L601	#
.L602:
	.loc 1 1710 0
	movq	-72(%rbp), %rax	# insn, tmp202
	movq	32(%rax), %rax	# insn_34(D)->fld[3].rtx, tmp203
	movq	%rax, -48(%rbp)	# tmp203, pattern
	.loc 1 1712 0
	movq	-48(%rbp), %rax	# pattern, tmp204
	movzwl	(%rax), %eax	# pattern_41->code, D.13625
	cmpw	$38, %ax	#, D.13625
	jne	.L603	#,
	.loc 1 1713 0
	movq	-48(%rbp), %rax	# pattern, tmp205
	movq	16(%rax), %rax	# pattern_41->fld[1].rtx, tmp206
	movq	%rax, -48(%rbp)	# tmp206, pattern
.L603:
	.loc 1 1715 0
	movq	-48(%rbp), %rax	# pattern, tmp207
	movzwl	(%rax), %eax	# pattern_1->code, D.13625
	cmpw	$47, %ax	#, D.13625
	jne	.L604	#,
.LBB20:
	.loc 1 1717 0
	movq	-72(%rbp), %rax	# insn, tmp208
	movq	32(%rax), %rax	# insn_34(D)->fld[3].rtx, D.13624
	movq	8(%rax), %rax	# _45->fld[0].rtx, tmp209
	movq	%rax, -40(%rbp)	# tmp209, dest
	.loc 1 1722 0
	movq	-40(%rbp), %rax	# dest, tmp210
	movzwl	(%rax), %eax	# dest_46->code, D.13625
	cmpw	$63, %ax	#, D.13625
	jne	.L605	#,
	.loc 1 1723 0
	movq	-40(%rbp), %rax	# dest, tmp211
	movzbl	2(%rax), %eax	# dest_46->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13626
	.loc 1 1724 0
	movzbl	%al, %edx	# D.13626, D.13623
	movl	target_flags(%rip), %eax	# target_flags, target_flags.115
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L606	#,
	.loc 1 1724 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.114
	jmp	.L607	#
.L606:
	.loc 1 1724 0 discriminator 2
	movl	$4, %eax	#, iftmp.114
.L607:
	.loc 1 1724 0 discriminator 3
	addl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	movl	target_flags(%rip), %edx	# target_flags, target_flags.117
	andl	$33554432, %edx	#, D.13623
	testl	%edx, %edx	# D.13623
	je	.L608	#,
	.loc 1 1724 0 discriminator 1
	movl	$8, %ebx	#, iftmp.116
	jmp	.L609	#
.L608:
	.loc 1 1724 0 discriminator 2
	movl	$4, %ebx	#, iftmp.116
.L609:
	.loc 1 1724 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.116
	movl	%eax, %ecx	# tmp213, D.13623
	.loc 1 1725 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# dest, tmp215
	movq	8(%rax), %rax	# dest_46->fld[0].rtx, D.13624
	movzbl	2(%rax), %eax	# _63->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13626
	.loc 1 1726 0 discriminator 3
	movzbl	%al, %edx	# D.13626, D.13623
	movl	target_flags(%rip), %eax	# target_flags, target_flags.119
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L610	#,
	.loc 1 1726 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.118
	jmp	.L611	#
.L610:
	.loc 1 1726 0 discriminator 2
	movl	$4, %eax	#, iftmp.118
.L611:
	.loc 1 1726 0 discriminator 3
	addl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	movl	target_flags(%rip), %edx	# target_flags, target_flags.121
	andl	$33554432, %edx	#, D.13623
	testl	%edx, %edx	# D.13623
	je	.L612	#,
	.loc 1 1726 0 discriminator 1
	movl	$8, %esi	#, iftmp.120
	jmp	.L613	#
.L612:
	.loc 1 1726 0 discriminator 2
	movl	$4, %esi	#, iftmp.120
.L613:
	.loc 1 1726 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.120
	.loc 1 1723 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.13623, D.13623
	jne	.L605	#,
	.loc 1 1727 0
	movq	-40(%rbp), %rax	# dest, tmp219
	movq	8(%rax), %rax	# dest_46->fld[0].rtx, tmp220
	movq	%rax, -40(%rbp)	# tmp220, dest
.L605:
	.loc 1 1729 0
	movq	-40(%rbp), %rax	# dest, tmp221
	movzwl	(%rax), %eax	# dest_2->code, D.13625
	cmpw	$61, %ax	#, D.13625
	je	.L614	#,
	.loc 1 1730 0
	movl	$0, %eax	#, D.13623
	jmp	.L601	#
.L614:
	.loc 1 1732 0
	movq	-40(%rbp), %rax	# dest, tmp222
	movl	8(%rax), %eax	# dest_2->fld[0].rtuint, tmp223
	movl	%eax, -56(%rbp)	# tmp223, regno
	.loc 1 1734 0
	cmpl	$52, -56(%rbp)	#, regno
	jbe	.L615	#,
	.loc 1 1734 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# regno, tmp224
	addl	$1, %eax	#, iftmp.122
	jmp	.L616	#
.L615:
	.loc 1 1734 0 discriminator 2
	cmpl	$7, -56(%rbp)	#, regno
	jbe	.L617	#,
	.loc 1 1734 0 discriminator 1
	cmpl	$15, -56(%rbp)	#, regno
	jbe	.L618	#,
.L617:
	.loc 1 1734 0 discriminator 2
	cmpl	$20, -56(%rbp)	#, regno
	jbe	.L619	#,
	.loc 1 1734 0 discriminator 1
	cmpl	$28, -56(%rbp)	#, regno
	jbe	.L618	#,
.L619:
	.loc 1 1734 0 discriminator 2
	cmpl	$44, -56(%rbp)	#, regno
	jbe	.L620	#,
	.loc 1 1734 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, regno
	jbe	.L618	#,
.L620:
	.loc 1 1734 0 discriminator 2
	cmpl	$28, -56(%rbp)	#, regno
	jbe	.L621	#,
	.loc 1 1734 0 discriminator 1
	cmpl	$36, -56(%rbp)	#, regno
	ja	.L621	#,
.L618:
	movq	-40(%rbp), %rax	# dest, tmp225
	movzbl	2(%rax), %eax	# dest_2->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13627
	cmpl	$5, %eax	#, D.13627
	je	.L622	#,
	.loc 1 1734 0 discriminator 4
	movq	-40(%rbp), %rax	# dest, tmp227
	movzbl	2(%rax), %eax	# dest_2->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13627
	cmpl	$6, %eax	#, D.13627
	jne	.L623	#,
.L622:
	.loc 1 1734 0 discriminator 3
	movl	$2, %eax	#, iftmp.124
	jmp	.L625	#
.L623:
	.loc 1 1734 0 discriminator 1
	movl	$1, %eax	#, iftmp.124
	jmp	.L625	#
.L621:
	.loc 1 1734 0 discriminator 2
	movq	-40(%rbp), %rax	# dest, tmp229
	movzbl	2(%rax), %eax	# dest_2->mode, D.13626
	cmpb	$18, %al	#, D.13626
	jne	.L626	#,
	.loc 1 1734 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.127
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L627	#,
	.loc 1 1734 0 discriminator 9
	movl	$2, %eax	#, iftmp.126
	jmp	.L625	#
.L627:
	.loc 1 1734 0 discriminator 10
	movl	$3, %eax	#, iftmp.126
	jmp	.L625	#
.L626:
	.loc 1 1734 0 discriminator 8
	movq	-40(%rbp), %rax	# dest, tmp230
	movzbl	2(%rax), %eax	# dest_2->mode, D.13626
	cmpb	$24, %al	#, D.13626
	jne	.L630	#,
	.loc 1 1734 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.130
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L631	#,
	.loc 1 1734 0 discriminator 13
	movl	$4, %eax	#, iftmp.129
	jmp	.L625	#
.L631:
	.loc 1 1734 0 discriminator 14
	movl	$6, %eax	#, iftmp.129
	jmp	.L625	#
.L630:
	.loc 1 1734 0 discriminator 12
	movq	-40(%rbp), %rax	# dest, tmp231
	movzbl	2(%rax), %eax	# dest_2->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13626
	movzbl	%al, %edx	# D.13626, D.13623
	movl	target_flags(%rip), %eax	# target_flags, target_flags.132
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L634	#,
	.loc 1 1734 0 discriminator 1
	movl	$8, %eax	#, iftmp.131
	jmp	.L635	#
.L634:
	.loc 1 1734 0 discriminator 2
	movl	$4, %eax	#, iftmp.131
.L635:
	.loc 1 1734 0 discriminator 3
	addl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	movl	target_flags(%rip), %edx	# target_flags, target_flags.134
	andl	$33554432, %edx	#, D.13623
	testl	%edx, %edx	# D.13623
	je	.L636	#,
	.loc 1 1734 0 discriminator 1
	movl	$8, %edi	#, iftmp.133
	jmp	.L637	#
.L636:
	.loc 1 1734 0 discriminator 2
	movl	$4, %edi	#, iftmp.133
.L637:
	.loc 1 1734 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.133
.L625:
	.loc 1 1734 0 discriminator 6
	movl	-56(%rbp), %edx	# regno, tmp235
	addl	%edx, %eax	# tmp235, iftmp.122
.L616:
	.loc 1 1733 0 is_stmt 1
	movl	%eax, -52(%rbp)	# iftmp.122, endregno
	.loc 1 1736 0
	movl	-76(%rbp), %eax	# test_regno, tmp236
	cmpl	-56(%rbp), %eax	# regno, tmp236
	jb	.L638	#,
	.loc 1 1736 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# test_regno, tmp237
	cmpl	-52(%rbp), %eax	# endregno, tmp237
	jae	.L638	#,
	.loc 1 1736 0 discriminator 3
	movl	$1, %eax	#, iftmp.135
	jmp	.L639	#
.L638:
	.loc 1 1736 0 discriminator 2
	movl	$0, %eax	#, iftmp.135
.L639:
	.loc 1 1736 0 discriminator 4
	jmp	.L601	#
.L604:
.LBE20:
	.loc 1 1738 0 is_stmt 1
	movq	-48(%rbp), %rax	# pattern, tmp238
	movzwl	(%rax), %eax	# pattern_1->code, D.13625
	cmpw	$39, %ax	#, D.13625
	jne	.L640	#,
.LBB21:
	.loc 1 1742 0
	movq	-48(%rbp), %rax	# pattern, tmp239
	movq	8(%rax), %rax	# pattern_1->fld[0].rtvec, D.13628
	movl	(%rax), %eax	# _129->num_elem, D.13623
	subl	$1, %eax	#, tmp240
	movl	%eax, -60(%rbp)	# tmp240, i
	jmp	.L641	#
.L678:
.LBB22:
	.loc 1 1744 0
	movq	-48(%rbp), %rax	# pattern, tmp241
	movq	8(%rax), %rax	# pattern_1->fld[0].rtvec, D.13628
	movl	-60(%rbp), %edx	# i, tmp243
	movslq	%edx, %rdx	# tmp243, tmp242
	movq	8(%rax,%rdx,8), %rax	# _132->elem, tmp244
	movq	%rax, -32(%rbp)	# tmp244, body
	.loc 1 1746 0
	movq	-32(%rbp), %rax	# body, tmp245
	movzwl	(%rax), %eax	# body_133->code, D.13625
	cmpw	$38, %ax	#, D.13625
	jne	.L642	#,
	.loc 1 1747 0
	movq	-32(%rbp), %rax	# body, tmp246
	movq	16(%rax), %rax	# body_133->fld[1].rtx, tmp247
	movq	%rax, -32(%rbp)	# tmp247, body
.L642:
	.loc 1 1749 0
	movq	-32(%rbp), %rax	# body, tmp248
	movzwl	(%rax), %eax	# body_4->code, D.13625
	cmpw	$47, %ax	#, D.13625
	je	.L643	#,
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# body, tmp249
	movzwl	(%rax), %eax	# body_4->code, D.13625
	cmpw	$49, %ax	#, D.13625
	jne	.L644	#,
.L643:
.LBB23:
	.loc 1 1751 0 is_stmt 1
	movq	-32(%rbp), %rax	# body, tmp250
	movq	8(%rax), %rax	# body_4->fld[0].rtx, tmp251
	movq	%rax, -24(%rbp)	# tmp251, dest
	.loc 1 1753 0
	movq	-24(%rbp), %rax	# dest, tmp252
	movzwl	(%rax), %eax	# dest_138->code, D.13625
	cmpw	$63, %ax	#, D.13625
	jne	.L645	#,
	.loc 1 1754 0
	movq	-24(%rbp), %rax	# dest, tmp253
	movzbl	2(%rax), %eax	# dest_138->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13626
	.loc 1 1755 0
	movzbl	%al, %edx	# D.13626, D.13623
	movl	target_flags(%rip), %eax	# target_flags, target_flags.137
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L646	#,
	.loc 1 1755 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.136
	jmp	.L647	#
.L646:
	.loc 1 1755 0 discriminator 2
	movl	$4, %eax	#, iftmp.136
.L647:
	.loc 1 1755 0 discriminator 3
	addl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	movl	target_flags(%rip), %edx	# target_flags, target_flags.139
	andl	$33554432, %edx	#, D.13623
	testl	%edx, %edx	# D.13623
	je	.L648	#,
	.loc 1 1755 0 discriminator 1
	movl	$8, %ebx	#, iftmp.138
	jmp	.L649	#
.L648:
	.loc 1 1755 0 discriminator 2
	movl	$4, %ebx	#, iftmp.138
.L649:
	.loc 1 1755 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.138
	movl	%eax, %ecx	# tmp255, D.13623
	.loc 1 1756 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# dest, tmp257
	movq	8(%rax), %rax	# dest_138->fld[0].rtx, D.13624
	movzbl	2(%rax), %eax	# _155->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13626
	.loc 1 1757 0 discriminator 3
	movzbl	%al, %edx	# D.13626, D.13623
	movl	target_flags(%rip), %eax	# target_flags, target_flags.141
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L650	#,
	.loc 1 1757 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.140
	jmp	.L651	#
.L650:
	.loc 1 1757 0 discriminator 2
	movl	$4, %eax	#, iftmp.140
.L651:
	.loc 1 1757 0 discriminator 3
	addl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	movl	target_flags(%rip), %edx	# target_flags, target_flags.143
	andl	$33554432, %edx	#, D.13623
	testl	%edx, %edx	# D.13623
	je	.L652	#,
	.loc 1 1757 0 discriminator 1
	movl	$8, %esi	#, iftmp.142
	jmp	.L653	#
.L652:
	.loc 1 1757 0 discriminator 2
	movl	$4, %esi	#, iftmp.142
.L653:
	.loc 1 1757 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.142
	.loc 1 1754 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.13623, D.13623
	jne	.L645	#,
	.loc 1 1758 0
	movq	-24(%rbp), %rax	# dest, tmp261
	movq	8(%rax), %rax	# dest_138->fld[0].rtx, tmp262
	movq	%rax, -24(%rbp)	# tmp262, dest
.L645:
	.loc 1 1760 0
	movq	-24(%rbp), %rax	# dest, tmp263
	movzwl	(%rax), %eax	# dest_5->code, D.13625
	cmpw	$61, %ax	#, D.13625
	je	.L654	#,
	.loc 1 1761 0
	jmp	.L644	#
.L654:
	.loc 1 1763 0
	movq	-24(%rbp), %rax	# dest, tmp264
	movl	8(%rax), %eax	# dest_5->fld[0].rtuint, tmp265
	movl	%eax, -56(%rbp)	# tmp265, regno
	.loc 1 1765 0
	cmpl	$52, -56(%rbp)	#, regno
	jbe	.L655	#,
	.loc 1 1765 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# regno, tmp266
	addl	$1, %eax	#, iftmp.144
	jmp	.L656	#
.L655:
	.loc 1 1765 0 discriminator 2
	cmpl	$7, -56(%rbp)	#, regno
	jbe	.L657	#,
	.loc 1 1765 0 discriminator 1
	cmpl	$15, -56(%rbp)	#, regno
	jbe	.L658	#,
.L657:
	.loc 1 1765 0 discriminator 2
	cmpl	$20, -56(%rbp)	#, regno
	jbe	.L659	#,
	.loc 1 1765 0 discriminator 1
	cmpl	$28, -56(%rbp)	#, regno
	jbe	.L658	#,
.L659:
	.loc 1 1765 0 discriminator 2
	cmpl	$44, -56(%rbp)	#, regno
	jbe	.L660	#,
	.loc 1 1765 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, regno
	jbe	.L658	#,
.L660:
	.loc 1 1765 0 discriminator 2
	cmpl	$28, -56(%rbp)	#, regno
	jbe	.L661	#,
	.loc 1 1765 0 discriminator 1
	cmpl	$36, -56(%rbp)	#, regno
	ja	.L661	#,
.L658:
	movq	-24(%rbp), %rax	# dest, tmp267
	movzbl	2(%rax), %eax	# dest_5->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13627
	cmpl	$5, %eax	#, D.13627
	je	.L662	#,
	.loc 1 1765 0 discriminator 4
	movq	-24(%rbp), %rax	# dest, tmp269
	movzbl	2(%rax), %eax	# dest_5->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13627
	cmpl	$6, %eax	#, D.13627
	jne	.L663	#,
.L662:
	.loc 1 1765 0 discriminator 3
	movl	$2, %eax	#, iftmp.146
	jmp	.L665	#
.L663:
	.loc 1 1765 0 discriminator 1
	movl	$1, %eax	#, iftmp.146
	jmp	.L665	#
.L661:
	.loc 1 1765 0 discriminator 2
	movq	-24(%rbp), %rax	# dest, tmp271
	movzbl	2(%rax), %eax	# dest_5->mode, D.13626
	cmpb	$18, %al	#, D.13626
	jne	.L666	#,
	.loc 1 1765 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.149
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L667	#,
	.loc 1 1765 0 discriminator 9
	movl	$2, %eax	#, iftmp.148
	jmp	.L665	#
.L667:
	.loc 1 1765 0 discriminator 10
	movl	$3, %eax	#, iftmp.148
	jmp	.L665	#
.L666:
	.loc 1 1765 0 discriminator 8
	movq	-24(%rbp), %rax	# dest, tmp272
	movzbl	2(%rax), %eax	# dest_5->mode, D.13626
	cmpb	$24, %al	#, D.13626
	jne	.L670	#,
	.loc 1 1765 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.152
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L671	#,
	.loc 1 1765 0 discriminator 13
	movl	$4, %eax	#, iftmp.151
	jmp	.L665	#
.L671:
	.loc 1 1765 0 discriminator 14
	movl	$6, %eax	#, iftmp.151
	jmp	.L665	#
.L670:
	.loc 1 1765 0 discriminator 12
	movq	-24(%rbp), %rax	# dest, tmp273
	movzbl	2(%rax), %eax	# dest_5->mode, D.13626
	movzbl	%al, %eax	# D.13626, D.13623
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13626
	movzbl	%al, %edx	# D.13626, D.13623
	movl	target_flags(%rip), %eax	# target_flags, target_flags.154
	andl	$33554432, %eax	#, D.13623
	testl	%eax, %eax	# D.13623
	je	.L674	#,
	.loc 1 1765 0 discriminator 1
	movl	$8, %eax	#, iftmp.153
	jmp	.L675	#
.L674:
	.loc 1 1765 0 discriminator 2
	movl	$4, %eax	#, iftmp.153
.L675:
	.loc 1 1765 0 discriminator 3
	addl	%edx, %eax	# D.13623, D.13623
	subl	$1, %eax	#, D.13623
	movl	target_flags(%rip), %edx	# target_flags, target_flags.156
	andl	$33554432, %edx	#, D.13623
	testl	%edx, %edx	# D.13623
	je	.L676	#,
	.loc 1 1765 0 discriminator 1
	movl	$8, %ecx	#, iftmp.155
	jmp	.L677	#
.L676:
	.loc 1 1765 0 discriminator 2
	movl	$4, %ecx	#, iftmp.155
.L677:
	.loc 1 1765 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.155
.L665:
	.loc 1 1765 0 discriminator 6
	movl	-56(%rbp), %edx	# regno, tmp277
	addl	%edx, %eax	# tmp277, iftmp.144
.L656:
	.loc 1 1764 0 is_stmt 1
	movl	%eax, -52(%rbp)	# iftmp.144, endregno
	.loc 1 1767 0
	movl	-76(%rbp), %eax	# test_regno, tmp278
	cmpl	-56(%rbp), %eax	# regno, tmp278
	jb	.L644	#,
	.loc 1 1767 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# test_regno, tmp279
	cmpl	-52(%rbp), %eax	# endregno, tmp279
	jae	.L644	#,
	.loc 1 1768 0 is_stmt 1
	movl	$1, %eax	#, D.13623
	jmp	.L601	#
.L644:
.LBE23:
.LBE22:
	.loc 1 1742 0
	subl	$1, -60(%rbp)	#, i
.L641:
	.loc 1 1742 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	jns	.L678	#,
.L640:
.LBE21:
	.loc 1 1773 0 is_stmt 1
	movl	$0, %eax	#, D.13623
.L601:
	.loc 1 1774 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	dead_or_set_regno_p, .-dead_or_set_regno_p
	.globl	find_reg_note
	.type	find_reg_note, @function
find_reg_note:
.LFB37:
	.loc 1 1784 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# kind, kind
	movq	%rdx, -40(%rbp)	# datum, datum
	.loc 1 1788 0
	movq	-24(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_3(D)->code, D.13630
	movzwl	%ax, %eax	# D.13630, D.13631
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13632
	cmpb	$105, %al	#, D.13632
	je	.L680	#,
	.loc 1 1789 0
	movl	$0, %eax	#, D.13629
	jmp	.L681	#
.L680:
	.loc 1 1791 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movq	56(%rax), %rax	# insn_3(D)->fld[6].rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, link
	jmp	.L682	#
.L685:
	.loc 1 1792 0
	movq	-8(%rbp), %rax	# link, tmp71
	movzbl	2(%rax), %eax	# link_1->mode, D.13633
	movzbl	%al, %eax	# D.13633, D.13634
	cmpl	-28(%rbp), %eax	# kind, D.13634
	jne	.L683	#,
	.loc 1 1793 0
	cmpq	$0, -40(%rbp)	#, datum
	je	.L684	#,
	.loc 1 1793 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# link, tmp72
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13635
	cmpq	-40(%rbp), %rax	# datum, D.13635
	jne	.L683	#,
.L684:
	.loc 1 1794 0 is_stmt 1
	movq	-8(%rbp), %rax	# link, D.13629
	jmp	.L681	#
.L683:
	.loc 1 1791 0
	movq	-8(%rbp), %rax	# link, tmp73
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, link
.L682:
	.loc 1 1791 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L685	#,
	.loc 1 1795 0 is_stmt 1
	movl	$0, %eax	#, D.13629
.L681:
	.loc 1 1796 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	find_reg_note, .-find_reg_note
	.globl	find_regno_note
	.type	find_regno_note, @function
find_regno_note:
.LFB38:
	.loc 1 1808 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# insn, insn
	movl	%esi, -36(%rbp)	# kind, kind
	movl	%edx, -40(%rbp)	# regno, regno
	.loc 1 1812 0
	movq	-32(%rbp), %rax	# insn, tmp128
	movzwl	(%rax), %eax	# insn_12(D)->code, D.13637
	movzwl	%ax, %eax	# D.13637, D.13638
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13639
	cmpb	$105, %al	#, D.13639
	je	.L687	#,
	.loc 1 1813 0
	movl	$0, %eax	#, D.13636
	jmp	.L688	#
.L687:
	.loc 1 1815 0
	movq	-32(%rbp), %rax	# insn, tmp130
	movq	56(%rax), %rax	# insn_12(D)->fld[6].rtx, tmp131
	movq	%rax, -16(%rbp)	# tmp131, link
	jmp	.L689	#
.L714:
	.loc 1 1816 0
	movq	-16(%rbp), %rax	# link, tmp132
	movzbl	2(%rax), %eax	# link_1->mode, D.13640
	movzbl	%al, %eax	# D.13640, D.13641
	cmpl	-36(%rbp), %eax	# kind, D.13641
	jne	.L690	#,
	.loc 1 1819 0
	movq	-16(%rbp), %rax	# link, tmp133
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movzwl	(%rax), %eax	# _21->code, D.13637
	cmpw	$61, %ax	#, D.13637
	jne	.L690	#,
	.loc 1 1820 0
	movq	-16(%rbp), %rax	# link, tmp134
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _23->fld[0].rtuint, D.13641
	cmpl	-40(%rbp), %eax	# regno, D.13641
	ja	.L690	#,
	.loc 1 1821 0
	movq	-16(%rbp), %rax	# link, tmp135
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %ecx	# _26->fld[0].rtuint, D.13641
	.loc 1 1822 0
	movq	-16(%rbp), %rax	# link, tmp136
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _28->fld[0].rtuint, D.13641
	cmpl	$52, %eax	#, D.13641
	ja	.L691	#,
	.loc 1 1823 0 discriminator 1
	movq	-16(%rbp), %rax	# link, tmp137
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _30->fld[0].rtuint, D.13641
	.loc 1 1822 0 discriminator 1
	cmpl	$7, %eax	#, D.13641
	jbe	.L692	#,
	.loc 1 1823 0
	movq	-16(%rbp), %rax	# link, tmp138
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _32->fld[0].rtuint, D.13641
	cmpl	$15, %eax	#, D.13641
	jbe	.L693	#,
.L692:
	.loc 1 1823 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# link, tmp139
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _34->fld[0].rtuint, D.13641
	cmpl	$20, %eax	#, D.13641
	jbe	.L694	#,
	.loc 1 1823 0 discriminator 1
	movq	-16(%rbp), %rax	# link, tmp140
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _36->fld[0].rtuint, D.13641
	cmpl	$28, %eax	#, D.13641
	jbe	.L693	#,
.L694:
	.loc 1 1823 0 discriminator 2
	movq	-16(%rbp), %rax	# link, tmp141
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _38->fld[0].rtuint, D.13641
	cmpl	$44, %eax	#, D.13641
	jbe	.L695	#,
	.loc 1 1823 0 discriminator 1
	movq	-16(%rbp), %rax	# link, tmp142
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _40->fld[0].rtuint, D.13641
	cmpl	$52, %eax	#, D.13641
	jbe	.L693	#,
.L695:
	.loc 1 1823 0 discriminator 2
	movq	-16(%rbp), %rax	# link, tmp143
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _42->fld[0].rtuint, D.13641
	cmpl	$28, %eax	#, D.13641
	jbe	.L696	#,
	.loc 1 1823 0 discriminator 1
	movq	-16(%rbp), %rax	# link, tmp144
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movl	8(%rax), %eax	# _44->fld[0].rtuint, D.13641
	cmpl	$36, %eax	#, D.13641
	ja	.L696	#,
.L693:
	movq	-16(%rbp), %rax	# link, tmp145
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movzbl	2(%rax), %eax	# _79->mode, D.13640
	movzbl	%al, %eax	# D.13640, D.13638
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13643
	.loc 1 1822 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.13643
	je	.L697	#,
	.loc 1 1823 0
	movq	-16(%rbp), %rax	# link, tmp147
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movzbl	2(%rax), %eax	# _83->mode, D.13640
	movzbl	%al, %eax	# D.13640, D.13638
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13643
	cmpl	$6, %eax	#, D.13643
	jne	.L698	#,
.L697:
	.loc 1 1822 0 discriminator 3
	movl	$2, %eax	#, iftmp.159
	jmp	.L700	#
.L698:
	.loc 1 1822 0 is_stmt 0
	movl	$1, %eax	#, iftmp.159
	jmp	.L700	#
.L696:
	.loc 1 1823 0 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax	# link, tmp149
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movzbl	2(%rax), %eax	# _46->mode, D.13640
	.loc 1 1822 0 discriminator 2
	cmpb	$18, %al	#, D.13640
	jne	.L701	#,
	.loc 1 1823 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.162
	andl	$33554432, %eax	#, D.13638
	.loc 1 1822 0 discriminator 6
	testl	%eax, %eax	# D.13638
	je	.L702	#,
	.loc 1 1822 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.161
	jmp	.L713	#
.L702:
	.loc 1 1822 0 discriminator 9
	movl	$3, %eax	#, iftmp.161
	jmp	.L713	#
.L701:
	.loc 1 1823 0 is_stmt 1 discriminator 7
	movq	-16(%rbp), %rax	# link, tmp150
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movzbl	2(%rax), %eax	# _53->mode, D.13640
	.loc 1 1822 0 discriminator 7
	cmpb	$24, %al	#, D.13640
	jne	.L705	#,
	.loc 1 1823 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.165
	andl	$33554432, %eax	#, D.13638
	.loc 1 1822 0 discriminator 10
	testl	%eax, %eax	# D.13638
	je	.L706	#,
	.loc 1 1822 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.164
	jmp	.L713	#
.L706:
	.loc 1 1822 0 discriminator 12
	movl	$6, %eax	#, iftmp.164
	jmp	.L713	#
.L705:
	.loc 1 1823 0 is_stmt 1
	movq	-16(%rbp), %rax	# link, tmp151
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13642
	movzbl	2(%rax), %eax	# _60->mode, D.13640
	movzbl	%al, %eax	# D.13640, D.13638
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13640
	movzbl	%al, %edx	# D.13640, D.13638
	movl	target_flags(%rip), %eax	# target_flags, target_flags.167
	andl	$33554432, %eax	#, D.13638
	testl	%eax, %eax	# D.13638
	je	.L709	#,
	.loc 1 1823 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.166
	jmp	.L710	#
.L709:
	.loc 1 1823 0 discriminator 2
	movl	$4, %eax	#, iftmp.166
.L710:
	.loc 1 1823 0 discriminator 3
	addl	%edx, %eax	# D.13638, D.13638
	subl	$1, %eax	#, D.13638
	movl	target_flags(%rip), %edx	# target_flags, target_flags.169
	andl	$33554432, %edx	#, D.13638
	testl	%edx, %edx	# D.13638
	je	.L711	#,
	.loc 1 1823 0 discriminator 1
	movl	$8, %ebx	#, iftmp.168
	jmp	.L712	#
.L711:
	.loc 1 1823 0 discriminator 2
	movl	$4, %ebx	#, iftmp.168
.L712:
	.loc 1 1823 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.168
.L700:
	jmp	.L713	#
.L691:
	.loc 1 1822 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.157
.L713:
	.loc 1 1822 0 is_stmt 0 discriminator 15
	addl	%ecx, %eax	# D.13641, D.13641
	.loc 1 1821 0 is_stmt 1 discriminator 15
	cmpl	-40(%rbp), %eax	# regno, D.13641
	jbe	.L690	#,
	.loc 1 1826 0
	movq	-16(%rbp), %rax	# link, D.13636
	jmp	.L688	#
.L690:
	.loc 1 1815 0
	movq	-16(%rbp), %rax	# link, tmp155
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp156
	movq	%rax, -16(%rbp)	# tmp156, link
.L689:
	.loc 1 1815 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L714	#,
	.loc 1 1827 0 is_stmt 1
	movl	$0, %eax	#, D.13636
.L688:
	.loc 1 1828 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	find_regno_note, .-find_regno_note
	.globl	find_reg_equal_equiv_note
	.type	find_reg_equal_equiv_note, @function
find_reg_equal_equiv_note:
.LFB39:
	.loc 1 1836 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1839 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_4(D)->code, D.13645
	movzwl	%ax, %eax	# D.13645, D.13646
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13647
	cmpb	$105, %al	#, D.13647
	jne	.L716	#,
	.loc 1 1839 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.13648
	movzwl	(%rax), %eax	# _8->code, D.13645
	cmpw	$47, %ax	#, D.13645
	jne	.L717	#,
	.loc 1 1839 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.13648
	testq	%rax, %rax	# D.13648
	sete	%al	#, iftmp.171
	jmp	.L719	#
.L717:
	.loc 1 1839 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp75
	movq	32(%rax), %rdx	# insn_4(D)->fld[3].rtx, D.13648
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	%rdx, %rsi	# D.13648,
	movq	%rax, %rdi	# tmp76,
	call	single_set_2	#
	testq	%rax, %rax	# D.13648
	sete	%al	#, iftmp.171
	jmp	.L719	#
.L716:
	.loc 1 1839 0 discriminator 2
	movl	$1, %eax	#, iftmp.170
.L719:
	.loc 1 1839 0 discriminator 5
	testb	%al, %al	# iftmp.170
	je	.L720	#,
	.loc 1 1840 0 is_stmt 1
	movl	$0, %eax	#, D.13644
	jmp	.L721	#
.L720:
	.loc 1 1841 0
	movq	-24(%rbp), %rax	# insn, tmp77
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp78, note
	cmpq	$0, -8(%rbp)	#, note
	je	.L722	#,
	.loc 1 1842 0
	movq	-8(%rbp), %rax	# note, D.13644
	jmp	.L721	#
.L722:
	.loc 1 1844 0
	movq	-24(%rbp), %rax	# insn, tmp79
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	find_reg_note	#
.L721:
	.loc 1 1845 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	find_reg_equal_equiv_note, .-find_reg_equal_equiv_note
	.globl	find_reg_fusage
	.type	find_reg_fusage, @function
find_reg_fusage:
.LFB40:
	.loc 1 1855 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# insn, insn
	movl	%esi, -60(%rbp)	# code, code
	movq	%rdx, -72(%rbp)	# datum, datum
	.loc 1 1858 0
	movq	-56(%rbp), %rax	# insn, tmp101
	movzwl	(%rax), %eax	# insn_12(D)->code, D.13650
	cmpw	$34, %ax	#, D.13650
	je	.L724	#,
	.loc 1 1859 0
	movl	$0, %eax	#, D.13649
	jmp	.L725	#
.L724:
	.loc 1 1861 0
	cmpq	$0, -72(%rbp)	#, datum
	jne	.L726	#,
	.loc 1 1862 0
	movl	$__FUNCTION__.9694, %edx	#,
	movl	$1862, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L726:
	.loc 1 1864 0
	movq	-72(%rbp), %rax	# datum, tmp102
	movzwl	(%rax), %eax	# datum_15(D)->code, D.13650
	cmpw	$61, %ax	#, D.13650
	je	.L727	#,
.LBB24:
	.loc 1 1868 0
	movq	-56(%rbp), %rax	# insn, tmp103
	movq	64(%rax), %rax	# insn_12(D)->fld[7].rtx, tmp104
	movq	%rax, -24(%rbp)	# tmp104, link
	jmp	.L728	#
.L730:
	.loc 1 1871 0
	movq	-24(%rbp), %rax	# link, tmp105
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13651
	movzwl	(%rax), %eax	# _18->code, D.13650
	movzwl	%ax, %eax	# D.13650, D.13652
	cmpl	-60(%rbp), %eax	# code, D.13652
	jne	.L729	#,
	.loc 1 1872 0
	movq	-24(%rbp), %rax	# link, tmp106
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.13651
	movq	8(%rax), %rdx	# _22->fld[0].rtx, D.13651
	movq	-72(%rbp), %rax	# datum, tmp107
	movq	%rdx, %rsi	# D.13651,
	movq	%rax, %rdi	# tmp107,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13649
	je	.L729	#,
	.loc 1 1873 0
	movl	$1, %eax	#, D.13649
	jmp	.L725	#
.L729:
	.loc 1 1870 0
	movq	-24(%rbp), %rax	# link, tmp108
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp109
	movq	%rax, -24(%rbp)	# tmp109, link
.L728:
	.loc 1 1868 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L730	#,
.LBE24:
	jmp	.L731	#
.L727:
.LBB25:
	.loc 1 1877 0
	movq	-72(%rbp), %rax	# datum, tmp110
	movl	8(%rax), %eax	# datum_15(D)->fld[0].rtuint, tmp111
	movl	%eax, -32(%rbp)	# tmp111, regno
	.loc 1 1882 0
	cmpl	$52, -32(%rbp)	#, regno
	ja	.L731	#,
.LBB26:
	.loc 1 1885 0
	cmpl	$7, -32(%rbp)	#, regno
	jbe	.L732	#,
	.loc 1 1885 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, regno
	jbe	.L733	#,
.L732:
	.loc 1 1885 0 discriminator 2
	cmpl	$20, -32(%rbp)	#, regno
	jbe	.L734	#,
	.loc 1 1885 0 discriminator 1
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L733	#,
.L734:
	.loc 1 1885 0 discriminator 2
	cmpl	$44, -32(%rbp)	#, regno
	jbe	.L735	#,
	.loc 1 1885 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, regno
	jbe	.L733	#,
.L735:
	.loc 1 1885 0 discriminator 2
	cmpl	$28, -32(%rbp)	#, regno
	jbe	.L736	#,
	.loc 1 1885 0 discriminator 1
	cmpl	$36, -32(%rbp)	#, regno
	ja	.L736	#,
.L733:
	movq	-72(%rbp), %rax	# datum, tmp112
	movzbl	2(%rax), %eax	# datum_15(D)->mode, D.13653
	movzbl	%al, %eax	# D.13653, D.13649
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13654
	cmpl	$5, %eax	#, D.13654
	je	.L737	#,
	.loc 1 1885 0 discriminator 4
	movq	-72(%rbp), %rax	# datum, tmp114
	movzbl	2(%rax), %eax	# datum_15(D)->mode, D.13653
	movzbl	%al, %eax	# D.13653, D.13649
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13654
	cmpl	$6, %eax	#, D.13654
	jne	.L738	#,
.L737:
	.loc 1 1885 0 discriminator 3
	movl	$2, %eax	#, iftmp.173
	jmp	.L740	#
.L738:
	.loc 1 1885 0 discriminator 1
	movl	$1, %eax	#, iftmp.173
	jmp	.L740	#
.L736:
	.loc 1 1885 0 discriminator 2
	movq	-72(%rbp), %rax	# datum, tmp116
	movzbl	2(%rax), %eax	# datum_15(D)->mode, D.13653
	cmpb	$18, %al	#, D.13653
	jne	.L741	#,
	.loc 1 1885 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.176
	andl	$33554432, %eax	#, D.13649
	testl	%eax, %eax	# D.13649
	je	.L742	#,
	.loc 1 1885 0 discriminator 8
	movl	$2, %eax	#, iftmp.175
	jmp	.L740	#
.L742:
	.loc 1 1885 0 discriminator 9
	movl	$3, %eax	#, iftmp.175
	jmp	.L740	#
.L741:
	.loc 1 1885 0 discriminator 7
	movq	-72(%rbp), %rax	# datum, tmp117
	movzbl	2(%rax), %eax	# datum_15(D)->mode, D.13653
	cmpb	$24, %al	#, D.13653
	jne	.L745	#,
	.loc 1 1885 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.179
	andl	$33554432, %eax	#, D.13649
	testl	%eax, %eax	# D.13649
	je	.L746	#,
	.loc 1 1885 0 discriminator 12
	movl	$4, %eax	#, iftmp.178
	jmp	.L740	#
.L746:
	.loc 1 1885 0 discriminator 13
	movl	$6, %eax	#, iftmp.178
	jmp	.L740	#
.L745:
	.loc 1 1885 0 discriminator 11
	movq	-72(%rbp), %rax	# datum, tmp118
	movzbl	2(%rax), %eax	# datum_15(D)->mode, D.13653
	movzbl	%al, %eax	# D.13653, D.13649
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13653
	movzbl	%al, %edx	# D.13653, D.13649
	movl	target_flags(%rip), %eax	# target_flags, target_flags.181
	andl	$33554432, %eax	#, D.13649
	testl	%eax, %eax	# D.13649
	je	.L749	#,
	.loc 1 1885 0 discriminator 1
	movl	$8, %eax	#, iftmp.180
	jmp	.L750	#
.L749:
	.loc 1 1885 0 discriminator 2
	movl	$4, %eax	#, iftmp.180
.L750:
	.loc 1 1885 0 discriminator 3
	addl	%edx, %eax	# D.13649, D.13649
	subl	$1, %eax	#, D.13649
	movl	target_flags(%rip), %edx	# target_flags, target_flags.183
	andl	$33554432, %edx	#, D.13649
	testl	%edx, %edx	# D.13649
	je	.L751	#,
	.loc 1 1885 0 discriminator 1
	movl	$8, %ebx	#, iftmp.182
	jmp	.L752	#
.L751:
	.loc 1 1885 0 discriminator 2
	movl	$4, %ebx	#, iftmp.182
.L752:
	.loc 1 1885 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.182
.L740:
	.loc 1 1884 0 is_stmt 1
	movl	-32(%rbp), %edx	# regno, tmp125
	addl	%edx, %eax	# tmp125, tmp124
	movl	%eax, -28(%rbp)	# tmp124, end_regno
	.loc 1 1888 0
	movl	-32(%rbp), %eax	# regno, tmp126
	movl	%eax, -36(%rbp)	# tmp126, i
	jmp	.L753	#
.L755:
	.loc 1 1889 0
	movl	-36(%rbp), %edx	# i, tmp127
	movl	-60(%rbp), %ecx	# code, tmp128
	movq	-56(%rbp), %rax	# insn, tmp129
	movl	%ecx, %esi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	find_regno_fusage	#
	testl	%eax, %eax	# D.13649
	je	.L754	#,
	.loc 1 1890 0
	movl	$1, %eax	#, D.13649
	jmp	.L725	#
.L754:
	.loc 1 1888 0
	addl	$1, -36(%rbp)	#, i
.L753:
	.loc 1 1888 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp130
	cmpl	-28(%rbp), %eax	# end_regno, tmp130
	jb	.L755	#,
.L731:
.LBE26:
.LBE25:
	.loc 1 1894 0 is_stmt 1
	movl	$0, %eax	#, D.13649
.L725:
	.loc 1 1895 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	find_reg_fusage, .-find_reg_fusage
	.globl	find_regno_fusage
	.type	find_regno_fusage, @function
find_regno_fusage:
.LFB41:
	.loc 1 1905 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# insn, insn
	movl	%esi, -44(%rbp)	# code, code
	movl	%edx, -48(%rbp)	# regno, regno
	.loc 1 1911 0
	cmpl	$52, -48(%rbp)	#, regno
	ja	.L757	#,
	.loc 1 1912 0
	movq	-40(%rbp), %rax	# insn, tmp97
	movzwl	(%rax), %eax	# insn_12(D)->code, D.13656
	cmpw	$34, %ax	#, D.13656
	je	.L758	#,
.L757:
	.loc 1 1913 0
	movl	$0, %eax	#, D.13655
	jmp	.L759	#
.L758:
	.loc 1 1915 0
	movq	-40(%rbp), %rax	# insn, tmp98
	movq	64(%rax), %rax	# insn_12(D)->fld[7].rtx, tmp99
	movq	%rax, -24(%rbp)	# tmp99, link
	jmp	.L760	#
.L783:
.LBB27:
	.loc 1 1920 0
	movq	-24(%rbp), %rax	# link, tmp100
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp101
	movq	%rax, -16(%rbp)	# tmp101, op
	movq	-16(%rbp), %rax	# op, tmp102
	movzwl	(%rax), %eax	# op_15->code, D.13656
	movzwl	%ax, %eax	# D.13656, D.13657
	cmpl	-44(%rbp), %eax	# code, D.13657
	jne	.L761	#,
	.loc 1 1921 0
	movq	-16(%rbp), %rax	# op, tmp103
	movq	8(%rax), %rax	# op_15->fld[0].rtx, tmp104
	movq	%rax, -8(%rbp)	# tmp104, reg
	movq	-8(%rbp), %rax	# reg, tmp105
	movzwl	(%rax), %eax	# reg_19->code, D.13656
	cmpw	$61, %ax	#, D.13656
	jne	.L761	#,
	.loc 1 1922 0
	movq	-8(%rbp), %rax	# reg, tmp106
	movl	8(%rax), %eax	# reg_19->fld[0].rtuint, tmp107
	movl	%eax, -28(%rbp)	# tmp107, regnote
	movl	-28(%rbp), %eax	# regnote, tmp108
	cmpl	-48(%rbp), %eax	# regno, tmp108
	ja	.L761	#,
	.loc 1 1923 0
	cmpl	$7, -28(%rbp)	#, regnote
	jbe	.L762	#,
	.loc 1 1923 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regnote
	jbe	.L763	#,
.L762:
	.loc 1 1923 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regnote
	jbe	.L764	#,
	.loc 1 1923 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regnote
	jbe	.L763	#,
.L764:
	.loc 1 1923 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regnote
	jbe	.L765	#,
	.loc 1 1923 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regnote
	jbe	.L763	#,
.L765:
	.loc 1 1923 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regnote
	jbe	.L766	#,
	.loc 1 1923 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regnote
	ja	.L766	#,
.L763:
	movq	-8(%rbp), %rax	# reg, tmp109
	movzbl	2(%rax), %eax	# reg_19->mode, D.13658
	movzbl	%al, %eax	# D.13658, D.13655
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13659
	cmpl	$5, %eax	#, D.13659
	je	.L767	#,
	.loc 1 1923 0 discriminator 4
	movq	-8(%rbp), %rax	# reg, tmp111
	movzbl	2(%rax), %eax	# reg_19->mode, D.13658
	movzbl	%al, %eax	# D.13658, D.13655
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13659
	cmpl	$6, %eax	#, D.13659
	jne	.L768	#,
.L767:
	.loc 1 1923 0 discriminator 3
	movl	$2, %eax	#, iftmp.185
	jmp	.L770	#
.L768:
	.loc 1 1923 0 discriminator 1
	movl	$1, %eax	#, iftmp.185
	jmp	.L770	#
.L766:
	.loc 1 1923 0 discriminator 2
	movq	-8(%rbp), %rax	# reg, tmp113
	movzbl	2(%rax), %eax	# reg_19->mode, D.13658
	cmpb	$18, %al	#, D.13658
	jne	.L771	#,
	.loc 1 1923 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.188
	andl	$33554432, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L772	#,
	.loc 1 1923 0 discriminator 9
	movl	$2, %eax	#, iftmp.187
	jmp	.L770	#
.L772:
	.loc 1 1923 0 discriminator 10
	movl	$3, %eax	#, iftmp.187
	jmp	.L770	#
.L771:
	.loc 1 1923 0 discriminator 8
	movq	-8(%rbp), %rax	# reg, tmp114
	movzbl	2(%rax), %eax	# reg_19->mode, D.13658
	cmpb	$24, %al	#, D.13658
	jne	.L775	#,
	.loc 1 1923 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.191
	andl	$33554432, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L776	#,
	.loc 1 1923 0 discriminator 13
	movl	$4, %eax	#, iftmp.190
	jmp	.L770	#
.L776:
	.loc 1 1923 0 discriminator 14
	movl	$6, %eax	#, iftmp.190
	jmp	.L770	#
.L775:
	.loc 1 1923 0 discriminator 12
	movq	-8(%rbp), %rax	# reg, tmp115
	movzbl	2(%rax), %eax	# reg_19->mode, D.13658
	movzbl	%al, %eax	# D.13658, D.13655
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13658
	movzbl	%al, %edx	# D.13658, D.13655
	movl	target_flags(%rip), %eax	# target_flags, target_flags.193
	andl	$33554432, %eax	#, D.13655
	testl	%eax, %eax	# D.13655
	je	.L779	#,
	.loc 1 1923 0 discriminator 1
	movl	$8, %eax	#, iftmp.192
	jmp	.L780	#
.L779:
	.loc 1 1923 0 discriminator 2
	movl	$4, %eax	#, iftmp.192
.L780:
	.loc 1 1923 0 discriminator 3
	addl	%edx, %eax	# D.13655, D.13655
	subl	$1, %eax	#, D.13655
	movl	target_flags(%rip), %edx	# target_flags, target_flags.195
	andl	$33554432, %edx	#, D.13655
	testl	%edx, %edx	# D.13655
	je	.L781	#,
	.loc 1 1923 0 discriminator 1
	movl	$8, %ecx	#, iftmp.194
	jmp	.L782	#
.L781:
	.loc 1 1923 0 discriminator 2
	movl	$4, %ecx	#, iftmp.194
.L782:
	.loc 1 1923 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.194
.L770:
	.loc 1 1923 0 discriminator 6
	movl	-28(%rbp), %edx	# regnote, tmp119
	addl	%edx, %eax	# tmp119, D.13657
	cmpl	-48(%rbp), %eax	# regno, D.13657
	jbe	.L761	#,
	.loc 1 1924 0 is_stmt 1
	movl	$1, %eax	#, D.13655
	jmp	.L759	#
.L761:
.LBE27:
	.loc 1 1915 0
	movq	-24(%rbp), %rax	# link, tmp120
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp121
	movq	%rax, -24(%rbp)	# tmp121, link
.L760:
	.loc 1 1915 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L783	#,
	.loc 1 1927 0 is_stmt 1
	movl	$0, %eax	#, D.13655
.L759:
	.loc 1 1928 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	find_regno_fusage, .-find_regno_fusage
	.globl	pure_call_p
	.type	pure_call_p, @function
pure_call_p:
.LFB42:
	.loc 1 1935 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 1938 0
	movq	-40(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_3(D)->code, D.13661
	cmpw	$34, %ax	#, D.13661
	jne	.L785	#,
	.loc 1 1938 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp70
	movzbl	3(%rax), %eax	# *insn_3(D), D.13662
	andl	$4, %eax	#, D.13662
	testb	%al, %al	# D.13662
	jne	.L786	#,
.L785:
	.loc 1 1939 0 is_stmt 1
	movl	$0, %eax	#, D.13660
	jmp	.L787	#
.L786:
	.loc 1 1942 0
	movq	-40(%rbp), %rax	# insn, tmp71
	movq	64(%rax), %rax	# insn_3(D)->fld[7].rtx, tmp72
	movq	%rax, -24(%rbp)	# tmp72, link
	jmp	.L788	#
.L790:
.LBB28:
	.loc 1 1946 0
	movq	-24(%rbp), %rax	# link, tmp73
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp74
	movq	%rax, -16(%rbp)	# tmp74, u
	movq	-16(%rbp), %rax	# u, tmp75
	movzwl	(%rax), %eax	# u_8->code, D.13661
	cmpw	$48, %ax	#, D.13661
	jne	.L789	#,
	.loc 1 1947 0
	movq	-16(%rbp), %rax	# u, tmp76
	movq	8(%rax), %rax	# u_8->fld[0].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, m
	movq	-8(%rbp), %rax	# m, tmp78
	movzwl	(%rax), %eax	# m_10->code, D.13661
	cmpw	$66, %ax	#, D.13661
	jne	.L789	#,
	.loc 1 1947 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# m, tmp79
	movzbl	2(%rax), %eax	# m_10->mode, D.13662
	cmpb	$51, %al	#, D.13662
	jne	.L789	#,
	.loc 1 1948 0 is_stmt 1
	movq	-8(%rbp), %rax	# m, tmp80
	movq	8(%rax), %rax	# m_10->fld[0].rtx, D.13663
	movzwl	(%rax), %eax	# _13->code, D.13661
	cmpw	$62, %ax	#, D.13661
	jne	.L789	#,
	.loc 1 1949 0
	movl	$1, %eax	#, D.13660
	jmp	.L787	#
.L789:
.LBE28:
	.loc 1 1942 0
	movq	-24(%rbp), %rax	# link, tmp81
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp82
	movq	%rax, -24(%rbp)	# tmp82, link
.L788:
	.loc 1 1942 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L790	#,
	.loc 1 1952 0 is_stmt 1
	movl	$0, %eax	#, D.13660
.L787:
	.loc 1 1953 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	pure_call_p, .-pure_call_p
	.globl	remove_note
	.type	remove_note, @function
remove_note:
.LFB43:
	.loc 1 1961 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# note, note
	.loc 1 1964 0
	cmpq	$0, -32(%rbp)	#, note
	jne	.L792	#,
	.loc 1 1965 0
	jmp	.L791	#
.L792:
	.loc 1 1967 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	56(%rax), %rax	# insn_3(D)->fld[6].rtx, D.13664
	cmpq	-32(%rbp), %rax	# note, D.13664
	jne	.L794	#,
	.loc 1 1969 0
	movq	-32(%rbp), %rax	# note, tmp64
	movq	16(%rax), %rdx	# note_2(D)->fld[1].rtx, D.13664
	movq	-24(%rbp), %rax	# insn, tmp65
	movq	%rdx, 56(%rax)	# D.13664, insn_3(D)->fld[6].rtx
	.loc 1 1970 0
	jmp	.L791	#
.L794:
	.loc 1 1973 0
	movq	-24(%rbp), %rax	# insn, tmp66
	movq	56(%rax), %rax	# insn_3(D)->fld[6].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, link
	jmp	.L795	#
.L797:
	.loc 1 1974 0
	movq	-8(%rbp), %rax	# link, tmp68
	movq	16(%rax), %rax	# link_1->fld[1].rtx, D.13664
	cmpq	-32(%rbp), %rax	# note, D.13664
	jne	.L796	#,
	.loc 1 1976 0
	movq	-32(%rbp), %rax	# note, tmp69
	movq	16(%rax), %rdx	# note_2(D)->fld[1].rtx, D.13664
	movq	-8(%rbp), %rax	# link, tmp70
	movq	%rdx, 16(%rax)	# D.13664, link_1->fld[1].rtx
	.loc 1 1977 0
	jmp	.L791	#
.L796:
	.loc 1 1973 0
	movq	-8(%rbp), %rax	# link, tmp71
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp72
	movq	%rax, -8(%rbp)	# tmp72, link
.L795:
	.loc 1 1973 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L797	#,
	.loc 1 1980 0 is_stmt 1
	movl	$__FUNCTION__.9734, %edx	#,
	movl	$1980, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L791:
	.loc 1 1981 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	remove_note, .-remove_note
	.globl	in_expr_list_p
	.type	in_expr_list_p, @function
in_expr_list_p:
.LFB44:
	.loc 1 1991 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# listp, listp
	movq	%rsi, -32(%rbp)	# node, node
	.loc 1 1994 0
	movq	-24(%rbp), %rax	# listp, tmp62
	movq	%rax, -8(%rbp)	# tmp62, x
	jmp	.L799	#
.L802:
	.loc 1 1995 0
	movq	-8(%rbp), %rax	# x, tmp63
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13666
	cmpq	-32(%rbp), %rax	# node, D.13666
	jne	.L800	#,
	.loc 1 1996 0
	movl	$1, %eax	#, D.13665
	jmp	.L801	#
.L800:
	.loc 1 1994 0
	movq	-8(%rbp), %rax	# x, tmp64
	movq	16(%rax), %rax	# x_1->fld[1].rtx, tmp65
	movq	%rax, -8(%rbp)	# tmp65, x
.L799:
	.loc 1 1994 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, x
	jne	.L802	#,
	.loc 1 1998 0 is_stmt 1
	movl	$0, %eax	#, D.13665
.L801:
	.loc 1 1999 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	in_expr_list_p, .-in_expr_list_p
	.globl	remove_node_from_expr_list
	.type	remove_node_from_expr_list, @function
remove_node_from_expr_list:
.LFB45:
	.loc 1 2010 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# node, node
	movq	%rsi, -32(%rbp)	# listp, listp
	.loc 1 2011 0
	movq	-32(%rbp), %rax	# listp, tmp62
	movq	(%rax), %rax	# *listp_3(D), tmp63
	movq	%rax, -16(%rbp)	# tmp63, temp
	.loc 1 2012 0
	movq	$0, -8(%rbp)	#, prev
	.loc 1 2014 0
	jmp	.L804	#
.L809:
	.loc 1 2016 0
	movq	-16(%rbp), %rax	# temp, tmp64
	movq	8(%rax), %rax	# temp_1->fld[0].rtx, D.13667
	cmpq	-24(%rbp), %rax	# node, D.13667
	jne	.L805	#,
	.loc 1 2019 0
	cmpq	$0, -8(%rbp)	#, prev
	je	.L806	#,
	.loc 1 2020 0
	movq	-16(%rbp), %rax	# temp, tmp65
	movq	16(%rax), %rdx	# temp_1->fld[1].rtx, D.13667
	movq	-8(%rbp), %rax	# prev, tmp66
	movq	%rdx, 16(%rax)	# D.13667, prev_2->fld[1].rtx
	.loc 1 2024 0
	jmp	.L803	#
.L806:
	.loc 1 2022 0
	movq	-16(%rbp), %rax	# temp, tmp67
	movq	16(%rax), %rdx	# temp_1->fld[1].rtx, D.13667
	movq	-32(%rbp), %rax	# listp, tmp68
	movq	%rdx, (%rax)	# D.13667, *listp_3(D)
	.loc 1 2024 0
	jmp	.L803	#
.L805:
	.loc 1 2027 0
	movq	-16(%rbp), %rax	# temp, tmp69
	movq	%rax, -8(%rbp)	# tmp69, prev
	.loc 1 2028 0
	movq	-16(%rbp), %rax	# temp, tmp70
	movq	16(%rax), %rax	# temp_1->fld[1].rtx, tmp71
	movq	%rax, -16(%rbp)	# tmp71, temp
.L804:
	.loc 1 2014 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, temp
	jne	.L809	#,
.L803:
	.loc 1 2030 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	remove_node_from_expr_list, .-remove_node_from_expr_list
	.globl	volatile_insn_p
	.type	volatile_insn_p, @function
volatile_insn_p:
.LFB46:
	.loc 1 2040 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2043 0
	movq	-40(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_4(D)->code, D.13669
	movzwl	%ax, %eax	# D.13669, tmp82
	movl	%eax, -12(%rbp)	# tmp82, code
	.loc 1 2044 0
	movl	-12(%rbp), %eax	# code, tmp84
	subl	$40, %eax	#, tmp83
	cmpl	$29, %eax	#, tmp83
	ja	.L825	#,
	movl	%eax, %eax	# tmp83, tmp85
	movq	.L813(,%rax,8), %rax	#, tmp86
	jmp	*%rax	# tmp86
	.section	.rodata
	.align 8
	.align 4
.L813:
	.quad	.L812
	.quad	.L814
	.quad	.L825
	.quad	.L815
	.quad	.L812
	.quad	.L812
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L812
	.quad	.L812
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L812
	.quad	.L812
	.quad	.L812
	.quad	.L825
	.quad	.L812
	.quad	.L812
	.quad	.L825
	.quad	.L812
	.quad	.L812
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L812
	.quad	.L812
	.quad	.L812
	.quad	.L812
	.text
.L812:
	.loc 1 2062 0
	movl	$0, %eax	#, D.13668
	jmp	.L816	#
.L815:
	.loc 1 2066 0
	movl	$1, %eax	#, D.13668
	jmp	.L816	#
.L814:
	.loc 1 2069 0
	movq	-40(%rbp), %rax	# x, tmp87
	movzbl	3(%rax), %eax	# *x_4(D), D.13670
	andl	$8, %eax	#, D.13670
	testb	%al, %al	# D.13670
	je	.L811	#,
	.loc 1 2070 0
	movl	$1, %eax	#, D.13668
	jmp	.L816	#
.L811:
.L825:
	.loc 1 2073 0
	nop
.LBB29:
	.loc 1 2079 0
	movl	-12(%rbp), %eax	# code, code.196
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp89
	movq	%rax, -8(%rbp)	# tmp89, fmt
	.loc 1 2082 0
	movl	-12(%rbp), %eax	# code, code.197
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13670
	movzbl	%al, %eax	# D.13670, D.13668
	subl	$1, %eax	#, tmp91
	movl	%eax, -20(%rbp)	# tmp91, i
	jmp	.L817	#
.L823:
	.loc 1 2084 0
	movl	-20(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, D.13671
	movq	-8(%rbp), %rax	# fmt, tmp93
	addq	%rdx, %rax	# D.13671, D.13672
	movzbl	(%rax), %eax	# *_19, D.13673
	cmpb	$101, %al	#, D.13673
	jne	.L818	#,
	.loc 1 2086 0
	movq	-40(%rbp), %rax	# x, tmp94
	movl	-20(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13674
	movq	%rax, %rdi	# D.13674,
	call	volatile_insn_p	#
	testl	%eax, %eax	# D.13668
	je	.L819	#,
	.loc 1 2087 0
	movl	$1, %eax	#, D.13668
	jmp	.L816	#
.L818:
	.loc 1 2089 0
	movl	-20(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, D.13671
	movq	-8(%rbp), %rax	# fmt, tmp98
	addq	%rdx, %rax	# D.13671, D.13672
	movzbl	(%rax), %eax	# *_25, D.13673
	cmpb	$69, %al	#, D.13673
	jne	.L819	#,
.LBB30:
	.loc 1 2092 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L820	#
.L822:
	.loc 1 2093 0
	movq	-40(%rbp), %rax	# x, tmp99
	movl	-20(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13675
	movl	-16(%rbp), %edx	# j, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# _30->elem, D.13674
	movq	%rax, %rdi	# D.13674,
	call	volatile_insn_p	#
	testl	%eax, %eax	# D.13668
	je	.L821	#,
	.loc 1 2094 0
	movl	$1, %eax	#, D.13668
	jmp	.L816	#
.L821:
	.loc 1 2092 0
	addl	$1, -16(%rbp)	#, j
.L820:
	.loc 1 2092 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp104
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13675
	movl	(%rax), %eax	# _28->num_elem, D.13668
	cmpl	-16(%rbp), %eax	# j, D.13668
	jg	.L822	#,
.L819:
.LBE30:
	.loc 1 2082 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L817:
	.loc 1 2082 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L823	#,
.LBE29:
	.loc 1 2098 0 is_stmt 1
	movl	$0, %eax	#, D.13668
.L816:
	.loc 1 2099 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	volatile_insn_p, .-volatile_insn_p
	.globl	volatile_refs_p
	.type	volatile_refs_p, @function
volatile_refs_p:
.LFB47:
	.loc 1 2107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2110 0
	movq	-40(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_4(D)->code, D.13677
	movzwl	%ax, %eax	# D.13677, tmp82
	movl	%eax, -12(%rbp)	# tmp82, code
	.loc 1 2111 0
	movl	-12(%rbp), %eax	# code, tmp84
	subl	$40, %eax	#, tmp83
	cmpl	$29, %eax	#, tmp83
	ja	.L841	#,
	movl	%eax, %eax	# tmp83, tmp85
	movq	.L829(,%rax,8), %rax	#, tmp86
	jmp	*%rax	# tmp86
	.section	.rodata
	.align 8
	.align 4
.L829:
	.quad	.L828
	.quad	.L830
	.quad	.L841
	.quad	.L831
	.quad	.L828
	.quad	.L828
	.quad	.L841
	.quad	.L841
	.quad	.L841
	.quad	.L828
	.quad	.L831
	.quad	.L841
	.quad	.L841
	.quad	.L841
	.quad	.L828
	.quad	.L828
	.quad	.L828
	.quad	.L841
	.quad	.L828
	.quad	.L828
	.quad	.L841
	.quad	.L828
	.quad	.L828
	.quad	.L841
	.quad	.L841
	.quad	.L841
	.quad	.L830
	.quad	.L828
	.quad	.L828
	.quad	.L828
	.text
.L828:
	.loc 1 2127 0
	movl	$0, %eax	#, D.13676
	jmp	.L832	#
.L831:
	.loc 1 2132 0
	movl	$1, %eax	#, D.13676
	jmp	.L832	#
.L830:
	.loc 1 2136 0
	movq	-40(%rbp), %rax	# x, tmp87
	movzbl	3(%rax), %eax	# *x_4(D), D.13678
	andl	$8, %eax	#, D.13678
	testb	%al, %al	# D.13678
	je	.L827	#,
	.loc 1 2137 0
	movl	$1, %eax	#, D.13676
	jmp	.L832	#
.L827:
.L841:
	.loc 1 2140 0
	nop
.LBB31:
	.loc 1 2146 0
	movl	-12(%rbp), %eax	# code, code.198
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp89
	movq	%rax, -8(%rbp)	# tmp89, fmt
	.loc 1 2149 0
	movl	-12(%rbp), %eax	# code, code.199
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13678
	movzbl	%al, %eax	# D.13678, D.13676
	subl	$1, %eax	#, tmp91
	movl	%eax, -20(%rbp)	# tmp91, i
	jmp	.L833	#
.L839:
	.loc 1 2151 0
	movl	-20(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, D.13679
	movq	-8(%rbp), %rax	# fmt, tmp93
	addq	%rdx, %rax	# D.13679, D.13680
	movzbl	(%rax), %eax	# *_19, D.13681
	cmpb	$101, %al	#, D.13681
	jne	.L834	#,
	.loc 1 2153 0
	movq	-40(%rbp), %rax	# x, tmp94
	movl	-20(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13682
	movq	%rax, %rdi	# D.13682,
	call	volatile_refs_p	#
	testl	%eax, %eax	# D.13676
	je	.L835	#,
	.loc 1 2154 0
	movl	$1, %eax	#, D.13676
	jmp	.L832	#
.L834:
	.loc 1 2156 0
	movl	-20(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, D.13679
	movq	-8(%rbp), %rax	# fmt, tmp98
	addq	%rdx, %rax	# D.13679, D.13680
	movzbl	(%rax), %eax	# *_25, D.13681
	cmpb	$69, %al	#, D.13681
	jne	.L835	#,
.LBB32:
	.loc 1 2159 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L836	#
.L838:
	.loc 1 2160 0
	movq	-40(%rbp), %rax	# x, tmp99
	movl	-20(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13683
	movl	-16(%rbp), %edx	# j, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# _30->elem, D.13682
	movq	%rax, %rdi	# D.13682,
	call	volatile_refs_p	#
	testl	%eax, %eax	# D.13676
	je	.L837	#,
	.loc 1 2161 0
	movl	$1, %eax	#, D.13676
	jmp	.L832	#
.L837:
	.loc 1 2159 0
	addl	$1, -16(%rbp)	#, j
.L836:
	.loc 1 2159 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp104
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13683
	movl	(%rax), %eax	# _28->num_elem, D.13676
	cmpl	-16(%rbp), %eax	# j, D.13676
	jg	.L838	#,
.L835:
.LBE32:
	.loc 1 2149 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L833:
	.loc 1 2149 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L839	#,
.LBE31:
	.loc 1 2165 0 is_stmt 1
	movl	$0, %eax	#, D.13676
.L832:
	.loc 1 2166 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	volatile_refs_p, .-volatile_refs_p
	.globl	side_effects_p
	.type	side_effects_p, @function
side_effects_p:
.LFB48:
	.loc 1 2174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2177 0
	movq	-40(%rbp), %rax	# x, tmp83
	movzwl	(%rax), %eax	# x_4(D)->code, D.13685
	movzwl	%ax, %eax	# D.13685, tmp84
	movl	%eax, -12(%rbp)	# tmp84, code
	.loc 1 2178 0
	movl	-12(%rbp), %eax	# code, tmp86
	subl	$40, %eax	#, tmp85
	cmpl	$61, %eax	#, tmp85
	ja	.L858	#,
	movl	%eax, %eax	# tmp85, tmp87
	movq	.L845(,%rax,8), %rax	#, tmp88
	jmp	*%rax	# tmp88
	.section	.rodata
	.align 8
	.align 4
.L845:
	.quad	.L844
	.quad	.L846
	.quad	.L858
	.quad	.L847
	.quad	.L844
	.quad	.L844
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L848
	.quad	.L847
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L844
	.quad	.L844
	.quad	.L844
	.quad	.L858
	.quad	.L844
	.quad	.L844
	.quad	.L858
	.quad	.L844
	.quad	.L844
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L846
	.quad	.L844
	.quad	.L844
	.quad	.L844
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L858
	.quad	.L847
	.quad	.L847
	.quad	.L847
	.quad	.L847
	.quad	.L847
	.quad	.L847
	.text
.L844:
	.loc 1 2193 0
	movl	$0, %eax	#, D.13684
	jmp	.L849	#
.L848:
	.loc 1 2199 0
	movq	-40(%rbp), %rax	# x, tmp89
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.13686
	testb	%al, %al	# D.13686
	setne	%al	#, D.13687
	movzbl	%al, %eax	# D.13687, D.13684
	jmp	.L849	#
.L847:
	.loc 1 2210 0
	movl	$1, %eax	#, D.13684
	jmp	.L849	#
.L846:
	.loc 1 2214 0
	movq	-40(%rbp), %rax	# x, tmp90
	movzbl	3(%rax), %eax	# *x_4(D), D.13686
	andl	$8, %eax	#, D.13686
	testb	%al, %al	# D.13686
	je	.L843	#,
	.loc 1 2215 0
	movl	$1, %eax	#, D.13684
	jmp	.L849	#
.L843:
.L858:
	.loc 1 2218 0
	nop
.LBB33:
	.loc 1 2224 0
	movl	-12(%rbp), %eax	# code, code.200
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp92
	movq	%rax, -8(%rbp)	# tmp92, fmt
	.loc 1 2227 0
	movl	-12(%rbp), %eax	# code, code.201
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13686
	movzbl	%al, %eax	# D.13686, D.13684
	subl	$1, %eax	#, tmp94
	movl	%eax, -20(%rbp)	# tmp94, i
	jmp	.L850	#
.L856:
	.loc 1 2229 0
	movl	-20(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, D.13688
	movq	-8(%rbp), %rax	# fmt, tmp96
	addq	%rdx, %rax	# D.13688, D.13689
	movzbl	(%rax), %eax	# *_22, D.13690
	cmpb	$101, %al	#, D.13690
	jne	.L851	#,
	.loc 1 2231 0
	movq	-40(%rbp), %rax	# x, tmp97
	movl	-20(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13691
	movq	%rax, %rdi	# D.13691,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13684
	je	.L852	#,
	.loc 1 2232 0
	movl	$1, %eax	#, D.13684
	jmp	.L849	#
.L851:
	.loc 1 2234 0
	movl	-20(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, D.13688
	movq	-8(%rbp), %rax	# fmt, tmp101
	addq	%rdx, %rax	# D.13688, D.13689
	movzbl	(%rax), %eax	# *_28, D.13690
	cmpb	$69, %al	#, D.13690
	jne	.L852	#,
.LBB34:
	.loc 1 2237 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L853	#
.L855:
	.loc 1 2238 0
	movq	-40(%rbp), %rax	# x, tmp102
	movl	-20(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13692
	movl	-16(%rbp), %edx	# j, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# _33->elem, D.13691
	movq	%rax, %rdi	# D.13691,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13684
	je	.L854	#,
	.loc 1 2239 0
	movl	$1, %eax	#, D.13684
	jmp	.L849	#
.L854:
	.loc 1 2237 0
	addl	$1, -16(%rbp)	#, j
.L853:
	.loc 1 2237 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp107
	movl	-20(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13692
	movl	(%rax), %eax	# _31->num_elem, D.13684
	cmpl	-16(%rbp), %eax	# j, D.13684
	jg	.L855	#,
.L852:
.LBE34:
	.loc 1 2227 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L850:
	.loc 1 2227 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L856	#,
.LBE33:
	.loc 1 2243 0 is_stmt 1
	movl	$0, %eax	#, D.13684
.L849:
	.loc 1 2244 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	side_effects_p, .-side_effects_p
	.globl	may_trap_p
	.type	may_trap_p, @function
may_trap_p:
.LFB49:
	.loc 1 2251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2256 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L860	#,
	.loc 1 2257 0
	movl	$0, %eax	#, D.13693
	jmp	.L861	#
.L860:
	.loc 1 2258 0
	movq	-40(%rbp), %rax	# x, tmp118
	movzwl	(%rax), %eax	# x_4(D)->code, D.13694
	movzwl	%ax, %eax	# D.13694, tmp119
	movl	%eax, -12(%rbp)	# tmp119, code
	.loc 1 2259 0
	movl	-12(%rbp), %eax	# code, tmp121
	subl	$3, %eax	#, tmp120
	cmpl	$126, %eax	#, tmp120
	ja	.L862	#,
	movl	%eax, %eax	# tmp120, tmp122
	movq	.L864(,%rax,8), %rax	#, tmp123
	jmp	*%rax	# tmp123
	.section	.rodata
	.align 8
	.align 4
.L864:
	.quad	.L863
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L865
	.quad	.L866
	.quad	.L862
	.quad	.L865
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L865
	.quad	.L862
	.quad	.L867
	.quad	.L867
	.quad	.L867
	.quad	.L862
	.quad	.L867
	.quad	.L867
	.quad	.L862
	.quad	.L867
	.quad	.L867
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L868
	.quad	.L867
	.quad	.L867
	.quad	.L867
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L869
	.quad	.L862
	.quad	.L862
	.quad	.L887
	.quad	.L862
	.quad	.L871
	.quad	.L871
	.quad	.L871
	.quad	.L871
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L869
	.quad	.L869
	.quad	.L869
	.quad	.L869
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L862
	.quad	.L887
	.text
.L867:
	.loc 1 2272 0
	movl	$0, %eax	#, D.13693
	jmp	.L861	#
.L865:
	.loc 1 2277 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L866:
	.loc 1 2280 0
	movq	-40(%rbp), %rax	# x, tmp124
	movzbl	3(%rax), %eax	# *x_4(D), tmp127
	shrb	$3, %al	#, D.13695
	andl	$1, %eax	#, D.13695
	movzbl	%al, %eax	# D.13695, D.13693
	jmp	.L861	#
.L868:
	.loc 1 2284 0
	movq	-40(%rbp), %rax	# x, tmp128
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13696
	movq	%rax, %rdi	# D.13696,
	call	rtx_addr_can_trap_p	#
	jmp	.L861	#
.L871:
	.loc 1 2291 0
	movq	-40(%rbp), %rax	# x, tmp129
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _14->code, D.13694
	cmpw	$67, %ax	#, D.13694
	je	.L872	#,
	.loc 1 2291 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp130
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _16->code, D.13694
	cmpw	$68, %ax	#, D.13694
	je	.L872	#,
	movq	-40(%rbp), %rax	# x, tmp131
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _18->code, D.13694
	cmpw	$54, %ax	#, D.13694
	je	.L872	#,
	movq	-40(%rbp), %rax	# x, tmp132
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _20->code, D.13694
	cmpw	$55, %ax	#, D.13694
	je	.L872	#,
	movq	-40(%rbp), %rax	# x, tmp133
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _22->code, D.13694
	cmpw	$58, %ax	#, D.13694
	je	.L872	#,
	movq	-40(%rbp), %rax	# x, tmp134
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _24->code, D.13694
	cmpw	$134, %ax	#, D.13694
	je	.L872	#,
	movq	-40(%rbp), %rax	# x, tmp135
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _26->code, D.13694
	cmpw	$56, %ax	#, D.13694
	je	.L872	#,
	movq	-40(%rbp), %rax	# x, tmp136
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _28->code, D.13694
	cmpw	$140, %ax	#, D.13694
	jne	.L873	#,
.L872:
	.loc 1 2292 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp137
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.13697
	movzbl	%al, %eax	# D.13697, D.13693
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13698
	cmpl	$2, %eax	#, D.13698
	jne	.L874	#,
.L873:
	.loc 1 2293 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L874:
	.loc 1 2296 0
	movq	-40(%rbp), %rax	# x, tmp139
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzwl	(%rax), %eax	# _33->code, D.13694
	cmpw	$54, %ax	#, D.13694
	jne	.L875	#,
	.loc 1 2296 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp140
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movq	8(%rax), %rax	# _35->fld[0].rtwint, D.13699
	testq	%rax, %rax	# D.13699
	jne	.L875	#,
	.loc 1 2297 0 is_stmt 1
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L875:
	.loc 1 2298 0
	jmp	.L876	#
.L863:
	.loc 1 2303 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L869:
	.loc 1 2315 0
	movq	-40(%rbp), %rax	# x, tmp141
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.13697
	movzbl	%al, %eax	# D.13697, D.13693
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13698
	cmpl	$2, %eax	#, D.13698
	jne	.L877	#,
	.loc 1 2316 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L877:
	.loc 1 2319 0
	movq	-40(%rbp), %rax	# x, tmp143
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13696
	movzbl	2(%rax), %eax	# _44->mode, D.13697
	movzbl	%al, %eax	# D.13697, D.13693
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13698
	cmpl	$2, %eax	#, D.13698
	je	.L878	#,
	.loc 1 2320 0
	movq	-40(%rbp), %rax	# x, tmp145
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13696
	movzbl	2(%rax), %eax	# _48->mode, D.13697
	movzbl	%al, %eax	# D.13697, D.13693
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13698
	cmpl	$2, %eax	#, D.13698
	jne	.L879	#,
.L878:
	.loc 1 2321 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L879:
	.loc 1 2322 0
	jmp	.L876	#
.L862:
	.loc 1 2331 0
	movq	-40(%rbp), %rax	# x, tmp147
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.13697
	movzbl	%al, %eax	# D.13697, D.13693
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13698
	cmpl	$2, %eax	#, D.13698
	jne	.L876	#,
	.loc 1 2332 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L887:
	.loc 1 2327 0
	nop
.L876:
	.loc 1 2335 0
	movl	-12(%rbp), %eax	# code, code.202
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp150
	movq	%rax, -8(%rbp)	# tmp150, fmt
	.loc 1 2336 0
	movl	-12(%rbp), %eax	# code, code.203
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13697
	movzbl	%al, %eax	# D.13697, D.13693
	subl	$1, %eax	#, tmp152
	movl	%eax, -20(%rbp)	# tmp152, i
	jmp	.L880	#
.L886:
	.loc 1 2338 0
	movl	-20(%rbp), %eax	# i, tmp153
	movslq	%eax, %rdx	# tmp153, D.13700
	movq	-8(%rbp), %rax	# fmt, tmp154
	addq	%rdx, %rax	# D.13700, D.13701
	movzbl	(%rax), %eax	# *_64, D.13702
	cmpb	$101, %al	#, D.13702
	jne	.L881	#,
	.loc 1 2340 0
	movq	-40(%rbp), %rax	# x, tmp155
	movl	-20(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, tmp156
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13696
	movq	%rax, %rdi	# D.13696,
	call	may_trap_p	#
	testl	%eax, %eax	# D.13693
	je	.L882	#,
	.loc 1 2341 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L881:
	.loc 1 2343 0
	movl	-20(%rbp), %eax	# i, tmp158
	movslq	%eax, %rdx	# tmp158, D.13700
	movq	-8(%rbp), %rax	# fmt, tmp159
	addq	%rdx, %rax	# D.13700, D.13701
	movzbl	(%rax), %eax	# *_70, D.13702
	cmpb	$69, %al	#, D.13702
	jne	.L882	#,
.LBB35:
	.loc 1 2346 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L883	#
.L885:
	.loc 1 2347 0
	movq	-40(%rbp), %rax	# x, tmp160
	movl	-20(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, tmp161
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13703
	movl	-16(%rbp), %edx	# j, tmp164
	movslq	%edx, %rdx	# tmp164, tmp163
	movq	8(%rax,%rdx,8), %rax	# _75->elem, D.13696
	movq	%rax, %rdi	# D.13696,
	call	may_trap_p	#
	testl	%eax, %eax	# D.13693
	je	.L884	#,
	.loc 1 2348 0
	movl	$1, %eax	#, D.13693
	jmp	.L861	#
.L884:
	.loc 1 2346 0
	addl	$1, -16(%rbp)	#, j
.L883:
	.loc 1 2346 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp165
	movl	-20(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, tmp166
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13703
	movl	(%rax), %eax	# _73->num_elem, D.13693
	cmpl	-16(%rbp), %eax	# j, D.13693
	jg	.L885	#,
.L882:
.LBE35:
	.loc 1 2336 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L880:
	.loc 1 2336 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L886	#,
	.loc 1 2351 0 is_stmt 1
	movl	$0, %eax	#, D.13693
.L861:
	.loc 1 2352 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	may_trap_p, .-may_trap_p
	.globl	inequality_comparisons_p
	.type	inequality_comparisons_p, @function
inequality_comparisons_p:
.LFB50:
	.loc 1 2360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2363 0
	movq	-40(%rbp), %rax	# x, tmp78
	movzwl	(%rax), %eax	# x_4(D)->code, D.13705
	movzwl	%ax, %eax	# D.13705, tmp79
	movl	%eax, -16(%rbp)	# tmp79, code
	.loc 1 2365 0
	movl	-16(%rbp), %eax	# code, tmp81
	subl	$54, %eax	#, tmp80
	cmpl	$57, %eax	#, tmp80
	ja	.L902	#,
	movl	%eax, %eax	# tmp80, tmp82
	movq	.L891(,%rax,8), %rax	#, tmp83
	jmp	*%rax	# tmp83
	.section	.rodata
	.align 8
	.align 4
.L891:
	.quad	.L890
	.quad	.L890
	.quad	.L890
	.quad	.L902
	.quad	.L890
	.quad	.L890
	.quad	.L902
	.quad	.L890
	.quad	.L890
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L890
	.quad	.L890
	.quad	.L890
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L902
	.quad	.L892
	.quad	.L892
	.quad	.L892
	.quad	.L892
	.quad	.L892
	.quad	.L892
	.quad	.L892
	.quad	.L892
	.text
.L890:
	.loc 1 2377 0
	movl	$0, %eax	#, D.13704
	jmp	.L893	#
.L892:
	.loc 1 2387 0
	movl	$1, %eax	#, D.13704
	jmp	.L893	#
.L902:
	.loc 1 2390 0
	nop
	.loc 1 2393 0
	movl	-16(%rbp), %eax	# code, code.204
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13706
	movzbl	%al, %eax	# D.13706, tmp85
	movl	%eax, -12(%rbp)	# tmp85, len
	.loc 1 2394 0
	movl	-16(%rbp), %eax	# code, code.205
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp87
	movq	%rax, -8(%rbp)	# tmp87, fmt
	.loc 1 2396 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L894	#
.L900:
	.loc 1 2398 0
	movl	-24(%rbp), %eax	# i, tmp88
	movslq	%eax, %rdx	# tmp88, D.13707
	movq	-8(%rbp), %rax	# fmt, tmp89
	addq	%rdx, %rax	# D.13707, D.13708
	movzbl	(%rax), %eax	# *_16, D.13709
	cmpb	$101, %al	#, D.13709
	jne	.L895	#,
	.loc 1 2400 0
	movq	-40(%rbp), %rax	# x, tmp90
	movl	-24(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, tmp91
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13710
	movq	%rax, %rdi	# D.13710,
	call	inequality_comparisons_p	#
	testl	%eax, %eax	# D.13704
	je	.L896	#,
	.loc 1 2401 0
	movl	$1, %eax	#, D.13704
	jmp	.L893	#
.L895:
	.loc 1 2403 0
	movl	-24(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, D.13707
	movq	-8(%rbp), %rax	# fmt, tmp94
	addq	%rdx, %rax	# D.13707, D.13708
	movzbl	(%rax), %eax	# *_22, D.13709
	cmpb	$69, %al	#, D.13709
	jne	.L896	#,
.LBB36:
	.loc 1 2406 0
	movq	-40(%rbp), %rax	# x, tmp95
	movl	-24(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13711
	movl	(%rax), %eax	# _24->num_elem, D.13704
	subl	$1, %eax	#, tmp98
	movl	%eax, -20(%rbp)	# tmp98, j
	jmp	.L897	#
.L899:
	.loc 1 2407 0
	movq	-40(%rbp), %rax	# x, tmp99
	movl	-24(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13711
	movl	-20(%rbp), %edx	# j, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# _27->elem, D.13710
	movq	%rax, %rdi	# D.13710,
	call	inequality_comparisons_p	#
	testl	%eax, %eax	# D.13704
	je	.L898	#,
	.loc 1 2408 0
	movl	$1, %eax	#, D.13704
	jmp	.L893	#
.L898:
	.loc 1 2406 0
	subl	$1, -20(%rbp)	#, j
.L897:
	.loc 1 2406 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, j
	jns	.L899	#,
.L896:
.LBE36:
	.loc 1 2396 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
.L894:
	.loc 1 2396 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp104
	cmpl	-12(%rbp), %eax	# len, tmp104
	jl	.L900	#,
	.loc 1 2412 0 is_stmt 1
	movl	$0, %eax	#, D.13704
.L893:
	.loc 1 2413 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	inequality_comparisons_p, .-inequality_comparisons_p
	.globl	replace_rtx
	.type	replace_rtx, @function
replace_rtx:
.LFB51:
	.loc 1 2424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# from, from
	movq	%rdx, -72(%rbp)	# to, to
	.loc 1 2430 0
	cmpq	$0, -56(%rbp)	#, x
	je	.L904	#,
	.loc 1 2430 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp99
	movzwl	(%rax), %eax	# x_6(D)->code, D.13713
	cmpw	$55, %ax	#, D.13713
	jne	.L904	#,
	.loc 1 2431 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.13712
	jmp	.L905	#
.L904:
	.loc 1 2433 0
	movq	-56(%rbp), %rax	# x, tmp100
	cmpq	-64(%rbp), %rax	# from, tmp100
	jne	.L906	#,
	.loc 1 2434 0
	movq	-72(%rbp), %rax	# to, D.13712
	jmp	.L905	#
.L906:
	.loc 1 2437 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L907	#,
	.loc 1 2438 0
	movl	$0, %eax	#, D.13712
	jmp	.L905	#
.L907:
	.loc 1 2440 0
	movq	-56(%rbp), %rax	# x, tmp101
	movzwl	(%rax), %eax	# x_6(D)->code, D.13713
	cmpw	$63, %ax	#, D.13713
	jne	.L908	#,
.LBB37:
	.loc 1 2442 0
	movq	-56(%rbp), %rax	# x, tmp102
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13714
	movq	-72(%rbp), %rdx	# to, tmp103
	movq	-64(%rbp), %rcx	# from, tmp104
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# D.13714,
	call	replace_rtx	#
	movq	%rax, -40(%rbp)	# tmp105, new
	.loc 1 2444 0
	movq	-40(%rbp), %rax	# new, tmp106
	movzwl	(%rax), %eax	# new_15->code, D.13713
	cmpw	$54, %ax	#, D.13713
	jne	.L909	#,
	.loc 1 2446 0
	movq	-56(%rbp), %rax	# x, tmp107
	movl	16(%rax), %ecx	# x_6(D)->fld[1].rtuint, D.13715
	.loc 1 2447 0
	movq	-56(%rbp), %rax	# x, tmp108
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13714
	movzbl	2(%rax), %eax	# _18->mode, D.13716
	.loc 1 2446 0
	movzbl	%al, %edx	# D.13716, D.13717
	movq	-56(%rbp), %rax	# x, tmp109
	movzbl	2(%rax), %eax	# x_6(D)->mode, D.13716
	movzbl	%al, %eax	# D.13716, D.13717
	movq	-40(%rbp), %rsi	# new, tmp110
	movl	%eax, %edi	# D.13717,
	call	simplify_subreg	#
	movq	%rax, -56(%rbp)	# tmp111, x
	.loc 1 2449 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L910	#,
	.loc 1 2450 0
	movl	$__FUNCTION__.9942, %edx	#,
	movl	$2450, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L909:
	.loc 1 2453 0
	movq	-56(%rbp), %rax	# x, tmp112
	movq	-40(%rbp), %rdx	# new, tmp113
	movq	%rdx, 8(%rax)	# tmp113, x_6(D)->fld[0].rtx
.L910:
	.loc 1 2455 0
	movq	-56(%rbp), %rax	# x, D.13712
	jmp	.L905	#
.L908:
.LBE37:
	.loc 1 2457 0
	movq	-56(%rbp), %rax	# x, tmp114
	movzwl	(%rax), %eax	# x_6(D)->code, D.13713
	cmpw	$121, %ax	#, D.13713
	jne	.L911	#,
.LBB38:
	.loc 1 2459 0
	movq	-56(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13714
	movq	-72(%rbp), %rdx	# to, tmp116
	movq	-64(%rbp), %rcx	# from, tmp117
	movq	%rcx, %rsi	# tmp117,
	movq	%rax, %rdi	# D.13714,
	call	replace_rtx	#
	movq	%rax, -32(%rbp)	# tmp118, new
	.loc 1 2461 0
	movq	-32(%rbp), %rax	# new, tmp119
	movzwl	(%rax), %eax	# new_27->code, D.13713
	cmpw	$54, %ax	#, D.13713
	jne	.L912	#,
	.loc 1 2464 0
	movq	-56(%rbp), %rax	# x, tmp120
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13714
	movzbl	2(%rax), %eax	# _29->mode, D.13716
	.loc 1 2463 0
	movzbl	%al, %ecx	# D.13716, D.13717
	movq	-56(%rbp), %rax	# x, tmp121
	movzbl	2(%rax), %eax	# x_6(D)->mode, D.13716
	movzbl	%al, %eax	# D.13716, D.13717
	movq	-32(%rbp), %rdx	# new, tmp122
	movl	%eax, %esi	# D.13717,
	movl	$121, %edi	#,
	call	simplify_unary_operation	#
	movq	%rax, -56(%rbp)	# tmp123, x
	.loc 1 2465 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L913	#,
	.loc 1 2466 0
	movl	$__FUNCTION__.9942, %edx	#,
	movl	$2466, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L912:
	.loc 1 2469 0
	movq	-56(%rbp), %rax	# x, tmp124
	movq	-32(%rbp), %rdx	# new, tmp125
	movq	%rdx, 8(%rax)	# tmp125, x_6(D)->fld[0].rtx
.L913:
	.loc 1 2471 0
	movq	-56(%rbp), %rax	# x, D.13712
	jmp	.L905	#
.L911:
.LBE38:
	.loc 1 2474 0
	movq	-56(%rbp), %rax	# x, tmp126
	movzwl	(%rax), %eax	# x_6(D)->code, D.13713
	movzwl	%ax, %eax	# D.13713, D.13718
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp128
	movq	%rax, -24(%rbp)	# tmp128, fmt
	.loc 1 2475 0
	movq	-56(%rbp), %rax	# x, tmp129
	movzwl	(%rax), %eax	# x_6(D)->code, D.13713
	movzwl	%ax, %eax	# D.13713, D.13718
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13716
	movzbl	%al, %eax	# D.13716, D.13718
	subl	$1, %eax	#, tmp131
	movl	%eax, -48(%rbp)	# tmp131, i
	jmp	.L914	#
.L919:
	.loc 1 2477 0
	movl	-48(%rbp), %eax	# i, tmp132
	movslq	%eax, %rdx	# tmp132, D.13719
	movq	-24(%rbp), %rax	# fmt, tmp133
	addq	%rdx, %rax	# D.13719, D.13720
	movzbl	(%rax), %eax	# *_45, D.13721
	cmpb	$101, %al	#, D.13721
	jne	.L915	#,
	.loc 1 2478 0
	movq	-56(%rbp), %rax	# x, tmp134
	movl	-48(%rbp), %edx	# i, tmp136
	movslq	%edx, %rdx	# tmp136, tmp135
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_3].rtx, D.13714
	movq	-72(%rbp), %rdx	# to, tmp137
	movq	-64(%rbp), %rcx	# from, tmp138
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# D.13714,
	call	replace_rtx	#
	movq	-56(%rbp), %rdx	# x, tmp139
	movl	-48(%rbp), %ecx	# i, tmp141
	movslq	%ecx, %rcx	# tmp141, tmp140
	movq	%rax, 8(%rdx,%rcx,8)	# D.13714, x_6(D)->fld[i_3].rtx
	jmp	.L916	#
.L915:
	.loc 1 2479 0
	movl	-48(%rbp), %eax	# i, tmp142
	movslq	%eax, %rdx	# tmp142, D.13719
	movq	-24(%rbp), %rax	# fmt, tmp143
	addq	%rdx, %rax	# D.13719, D.13720
	movzbl	(%rax), %eax	# *_50, D.13721
	cmpb	$69, %al	#, D.13721
	jne	.L916	#,
	.loc 1 2480 0
	movq	-56(%rbp), %rax	# x, tmp144
	movl	-48(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_3].rtvec, D.13722
	movl	(%rax), %eax	# _52->num_elem, D.13718
	subl	$1, %eax	#, tmp147
	movl	%eax, -44(%rbp)	# tmp147, j
	jmp	.L917	#
.L918:
	.loc 1 2481 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp148
	movl	-48(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, tmp149
	movq	8(%rax,%rdx,8), %rbx	# x_6(D)->fld[i_3].rtvec, D.13722
	movq	-56(%rbp), %rax	# x, tmp151
	movl	-48(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_3].rtvec, D.13722
	movl	-44(%rbp), %edx	# j, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	movq	8(%rax,%rdx,8), %rax	# _56->elem, D.13714
	movq	-72(%rbp), %rdx	# to, tmp156
	movq	-64(%rbp), %rcx	# from, tmp157
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.13714,
	call	replace_rtx	#
	movl	-44(%rbp), %edx	# j, tmp159
	movslq	%edx, %rdx	# tmp159, tmp158
	movq	%rax, 8(%rbx,%rdx,8)	# D.13714, _55->elem
	.loc 1 2480 0 discriminator 2
	subl	$1, -44(%rbp)	#, j
.L917:
	.loc 1 2480 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, j
	jns	.L918	#,
.L916:
	.loc 1 2475 0 is_stmt 1
	subl	$1, -48(%rbp)	#, i
.L914:
	.loc 1 2475 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, i
	jns	.L919	#,
	.loc 1 2484 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.13712
.L905:
	.loc 1 2485 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	replace_rtx, .-replace_rtx
	.globl	replace_regs
	.type	replace_regs, @function
replace_regs:
.LFB52:
	.loc 1 2505 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# reg_map, reg_map
	movl	%edx, -68(%rbp)	# nregs, nregs
	movl	%ecx, -72(%rbp)	# replace_dest, replace_dest
	.loc 1 2510 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L921	#,
	.loc 1 2511 0
	movq	-56(%rbp), %rax	# x, D.13723
	jmp	.L922	#
.L921:
	.loc 1 2513 0
	movq	-56(%rbp), %rax	# x, tmp143
	movzwl	(%rax), %eax	# x_4(D)->code, D.13724
	movzwl	%ax, %eax	# D.13724, tmp144
	movl	%eax, -36(%rbp)	# tmp144, code
	.loc 1 2514 0
	movl	-36(%rbp), %eax	# code, tmp146
	subl	$47, %eax	#, tmp145
	cmpl	$22, %eax	#, tmp145
	ja	.L943	#,
	movl	%eax, %eax	# tmp145, tmp147
	movq	.L925(,%rax,8), %rax	#, tmp148
	jmp	*%rax	# tmp148
	.section	.rodata
	.align 8
	.align 4
.L925:
	.quad	.L924
	.quad	.L943
	.quad	.L943
	.quad	.L943
	.quad	.L943
	.quad	.L943
	.quad	.L943
	.quad	.L926
	.quad	.L926
	.quad	.L926
	.quad	.L943
	.quad	.L926
	.quad	.L926
	.quad	.L943
	.quad	.L927
	.quad	.L926
	.quad	.L928
	.quad	.L943
	.quad	.L943
	.quad	.L943
	.quad	.L926
	.quad	.L926
	.quad	.L926
	.text
.L926:
	.loc 1 2525 0
	movq	-56(%rbp), %rax	# x, D.13723
	jmp	.L922	#
.L927:
	.loc 1 2529 0
	movq	-56(%rbp), %rax	# x, tmp149
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.13725
	cmpl	-68(%rbp), %eax	# nregs, D.13725
	jae	.L929	#,
	.loc 1 2529 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp150
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp151
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_15, D.13728
	testq	%rax, %rax	# D.13728
	je	.L929	#,
	.loc 1 2534 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp152
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp153
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_20, D.13728
	movzwl	(%rax), %eax	# _21->code, D.13724
	cmpw	$63, %ax	#, D.13724
	jne	.L930	#,
	.loc 1 2535 0
	movq	-56(%rbp), %rax	# x, tmp154
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp155
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_26, D.13728
	movq	%rax, %rdi	# D.13728,
	call	copy_rtx	#
	jmp	.L922	#
.L930:
	.loc 1 2536 0
	movq	-56(%rbp), %rax	# x, tmp156
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp157
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_32, D.13723
	jmp	.L922	#
.L929:
	.loc 1 2538 0
	movq	-56(%rbp), %rax	# x, D.13723
	jmp	.L922	#
.L928:
	.loc 1 2542 0
	movq	-56(%rbp), %rax	# x, tmp158
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movzwl	(%rax), %eax	# _35->code, D.13724
	cmpw	$61, %ax	#, D.13724
	jne	.L931	#,
	.loc 1 2542 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp159
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movl	8(%rax), %eax	# _37->fld[0].rtuint, D.13725
	cmpl	-68(%rbp), %eax	# nregs, D.13725
	jae	.L931	#,
	.loc 1 2543 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp160
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movl	8(%rax), %eax	# _39->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp161
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_43, D.13728
	testq	%rax, %rax	# D.13728
	je	.L931	#,
	.loc 1 2544 0
	movq	-56(%rbp), %rax	# x, tmp162
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movl	8(%rax), %eax	# _45->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp163
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_49, D.13728
	movzwl	(%rax), %eax	# _50->code, D.13724
	cmpw	$63, %ax	#, D.13724
	jne	.L931	#,
.LBB39:
	.loc 1 2546 0
	movq	-56(%rbp), %rax	# x, tmp164
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movl	8(%rax), %eax	# _52->fld[0].rtuint, D.13725
	movl	%eax, %eax	# D.13725, D.13726
	leaq	0(,%rax,8), %rdx	#, D.13726
	movq	-64(%rbp), %rax	# reg_map, tmp165
	addq	%rdx, %rax	# D.13726, D.13727
	movq	(%rax), %rax	# *_56, tmp166
	movq	%rax, -32(%rbp)	# tmp166, map_val
	.loc 1 2547 0
	movq	-56(%rbp), %rax	# x, tmp167
	movl	16(%rax), %ecx	# x_4(D)->fld[1].rtuint, D.13725
	.loc 1 2548 0
	movq	-56(%rbp), %rax	# x, tmp168
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movzbl	2(%rax), %eax	# _59->mode, D.13729
	.loc 1 2547 0
	movzbl	%al, %edx	# D.13729, D.13730
	movq	-56(%rbp), %rax	# x, tmp169
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.13729
	movzbl	%al, %eax	# D.13729, D.13730
	movq	-32(%rbp), %rsi	# map_val, tmp170
	movl	%eax, %edi	# D.13730,
	call	simplify_gen_subreg	#
	jmp	.L922	#
.L931:
.LBE39:
	.loc 1 2551 0
	jmp	.L932	#
.L924:
	.loc 1 2554 0
	cmpl	$0, -72(%rbp)	#, replace_dest
	je	.L933	#,
	.loc 1 2555 0
	movq	-56(%rbp), %rax	# x, tmp171
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movl	-68(%rbp), %edx	# nregs, tmp172
	movq	-64(%rbp), %rsi	# reg_map, tmp173
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.13728,
	call	replace_regs	#
	movq	-56(%rbp), %rdx	# x, tmp174
	movq	%rax, 8(%rdx)	# D.13728, x_4(D)->fld[0].rtx
	jmp	.L934	#
.L933:
	.loc 1 2557 0
	movq	-56(%rbp), %rax	# x, tmp175
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movzwl	(%rax), %eax	# _68->code, D.13724
	cmpw	$66, %ax	#, D.13724
	je	.L935	#,
	.loc 1 2558 0
	movq	-56(%rbp), %rax	# x, tmp176
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movzwl	(%rax), %eax	# _70->code, D.13724
	cmpw	$64, %ax	#, D.13724
	jne	.L936	#,
.L935:
	.loc 1 2562 0
	movq	-56(%rbp), %rax	# x, tmp177
	movq	8(%rax), %rbx	# x_4(D)->fld[0].rtx, D.13728
	movq	-56(%rbp), %rax	# x, tmp178
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movq	8(%rax), %rax	# _75->fld[0].rtx, D.13728
	movl	-68(%rbp), %edx	# nregs, tmp179
	movq	-64(%rbp), %rsi	# reg_map, tmp180
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.13728,
	call	replace_regs	#
	movq	%rax, 8(%rbx)	# D.13728, _74->fld[0].rtx
	jmp	.L934	#
.L936:
	.loc 1 2564 0
	movq	-56(%rbp), %rax	# x, tmp181
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.13728
	movzwl	(%rax), %eax	# _72->code, D.13724
	cmpw	$133, %ax	#, D.13724
	jne	.L934	#,
	.loc 1 2566 0
	jmp	.L932	#
.L934:
	.loc 1 2568 0
	movq	-56(%rbp), %rax	# x, tmp182
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.13728
	movl	-68(%rbp), %edx	# nregs, tmp183
	movq	-64(%rbp), %rsi	# reg_map, tmp184
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.13728,
	call	replace_regs	#
	movq	-56(%rbp), %rdx	# x, tmp185
	movq	%rax, 16(%rdx)	# D.13728, x_4(D)->fld[1].rtx
	.loc 1 2569 0
	movq	-56(%rbp), %rax	# x, D.13723
	jmp	.L922	#
.L943:
	.loc 1 2572 0
	nop
.L932:
	.loc 1 2575 0
	movl	-36(%rbp), %eax	# code, code.206
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp187
	movq	%rax, -24(%rbp)	# tmp187, fmt
	.loc 1 2576 0
	movl	-36(%rbp), %eax	# code, code.207
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13729
	movzbl	%al, %eax	# D.13729, D.13731
	subl	$1, %eax	#, tmp189
	movl	%eax, -44(%rbp)	# tmp189, i
	jmp	.L937	#
.L942:
	.loc 1 2578 0
	movl	-44(%rbp), %eax	# i, tmp190
	movslq	%eax, %rdx	# tmp190, D.13732
	movq	-24(%rbp), %rax	# fmt, tmp191
	addq	%rdx, %rax	# D.13732, D.13733
	movzbl	(%rax), %eax	# *_88, D.13734
	cmpb	$101, %al	#, D.13734
	jne	.L938	#,
	.loc 1 2579 0
	movq	-56(%rbp), %rax	# x, tmp192
	movl	-44(%rbp), %edx	# i, tmp194
	movslq	%edx, %rdx	# tmp194, tmp193
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.13728
	movl	-72(%rbp), %ecx	# replace_dest, tmp195
	movl	-68(%rbp), %edx	# nregs, tmp196
	movq	-64(%rbp), %rsi	# reg_map, tmp197
	movq	%rax, %rdi	# D.13728,
	call	replace_regs	#
	movq	-56(%rbp), %rdx	# x, tmp198
	movl	-44(%rbp), %ecx	# i, tmp200
	movslq	%ecx, %rcx	# tmp200, tmp199
	movq	%rax, 8(%rdx,%rcx,8)	# D.13728, x_4(D)->fld[i_1].rtx
	jmp	.L939	#
.L938:
	.loc 1 2580 0
	movl	-44(%rbp), %eax	# i, tmp201
	movslq	%eax, %rdx	# tmp201, D.13732
	movq	-24(%rbp), %rax	# fmt, tmp202
	addq	%rdx, %rax	# D.13732, D.13733
	movzbl	(%rax), %eax	# *_93, D.13734
	cmpb	$69, %al	#, D.13734
	jne	.L939	#,
.LBB40:
	.loc 1 2583 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L940	#
.L941:
	.loc 1 2584 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp203
	movl	-44(%rbp), %edx	# i, tmp205
	movslq	%edx, %rdx	# tmp205, tmp204
	movq	8(%rax,%rdx,8), %rbx	# x_4(D)->fld[i_1].rtvec, D.13735
	movq	-56(%rbp), %rax	# x, tmp206
	movl	-44(%rbp), %edx	# i, tmp208
	movslq	%edx, %rdx	# tmp208, tmp207
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13735
	movl	-40(%rbp), %edx	# j, tmp210
	movslq	%edx, %rdx	# tmp210, tmp209
	movq	8(%rax,%rdx,8), %rax	# _99->elem, D.13728
	movl	-72(%rbp), %ecx	# replace_dest, tmp211
	movl	-68(%rbp), %edx	# nregs, tmp212
	movq	-64(%rbp), %rsi	# reg_map, tmp213
	movq	%rax, %rdi	# D.13728,
	call	replace_regs	#
	movl	-40(%rbp), %edx	# j, tmp215
	movslq	%edx, %rdx	# tmp215, tmp214
	movq	%rax, 8(%rbx,%rdx,8)	# D.13728, _98->elem
	.loc 1 2583 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L940:
	.loc 1 2583 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp216
	movl	-44(%rbp), %edx	# i, tmp218
	movslq	%edx, %rdx	# tmp218, tmp217
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13735
	movl	(%rax), %eax	# _96->num_elem, D.13731
	cmpl	-40(%rbp), %eax	# j, D.13731
	jg	.L941	#,
.L939:
.LBE40:
	.loc 1 2576 0 is_stmt 1
	subl	$1, -44(%rbp)	#, i
.L937:
	.loc 1 2576 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jns	.L942	#,
	.loc 1 2588 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.13723
.L922:
	.loc 1 2589 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	replace_regs, .-replace_regs
	.type	computed_jump_p_1, @function
computed_jump_p_1:
.LFB53:
	.loc 1 2598 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 2599 0
	movq	-40(%rbp), %rax	# x, tmp90
	movzwl	(%rax), %eax	# x_6(D)->code, D.13737
	movzwl	%ax, %eax	# D.13737, tmp91
	movl	%eax, -12(%rbp)	# tmp91, code
	.loc 1 2603 0
	movl	-12(%rbp), %eax	# code, tmp93
	subl	$54, %eax	#, tmp92
	cmpl	$18, %eax	#, tmp92
	ja	.L966	#,
	movl	%eax, %eax	# tmp92, tmp94
	movq	.L947(,%rax,8), %rax	#, tmp95
	jmp	*%rax	# tmp95
	.section	.rodata
	.align 8
	.align 4
.L947:
	.quad	.L946
	.quad	.L946
	.quad	.L946
	.quad	.L966
	.quad	.L946
	.quad	.L948
	.quad	.L966
	.quad	.L946
	.quad	.L966
	.quad	.L966
	.quad	.L966
	.quad	.L966
	.quad	.L949
	.quad	.L948
	.quad	.L946
	.quad	.L966
	.quad	.L966
	.quad	.L966
	.quad	.L950
	.text
.L948:
	.loc 1 2607 0
	movl	$0, %eax	#, D.13736
	jmp	.L951	#
.L946:
	.loc 1 2615 0
	movl	$1, %eax	#, D.13736
	jmp	.L951	#
.L949:
	.loc 1 2618 0
	movq	-40(%rbp), %rax	# x, tmp96
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13738
	movzwl	(%rax), %eax	# _11->code, D.13737
	cmpw	$68, %ax	#, D.13737
	jne	.L952	#,
	.loc 1 2619 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp97
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.13738
	movzbl	3(%rax), %eax	# *_13, D.13739
	andl	$4, %eax	#, D.13739
	.loc 1 2618 0 discriminator 2
	testb	%al, %al	# D.13739
	jne	.L953	#,
.L952:
	.loc 1 2618 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.208
	jmp	.L954	#
.L953:
	.loc 1 2618 0 discriminator 3
	movl	$0, %eax	#, iftmp.208
.L954:
	.loc 1 2618 0 discriminator 4
	jmp	.L951	#
.L950:
	.loc 1 2622 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp98
	movq	16(%rax), %rax	# x_6(D)->fld[1].rtx, D.13738
	movq	%rax, %rdi	# D.13738,
	call	computed_jump_p_1	#
	.loc 1 2623 0
	testl	%eax, %eax	# D.13736
	jne	.L955	#,
	.loc 1 2623 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp99
	movq	24(%rax), %rax	# x_6(D)->fld[2].rtx, D.13738
	movq	%rax, %rdi	# D.13738,
	call	computed_jump_p_1	#
	testl	%eax, %eax	# D.13736
	je	.L956	#,
.L955:
	.loc 1 2623 0 discriminator 1
	movl	$1, %eax	#, iftmp.209
	jmp	.L957	#
.L956:
	.loc 1 2623 0 discriminator 3
	movl	$0, %eax	#, iftmp.209
.L957:
	.loc 1 2622 0 is_stmt 1
	jmp	.L951	#
.L966:
	.loc 1 2626 0
	nop
	.loc 1 2629 0
	movl	-12(%rbp), %eax	# code, code.210
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp101
	movq	%rax, -8(%rbp)	# tmp101, fmt
	.loc 1 2630 0
	movl	-12(%rbp), %eax	# code, code.211
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13739
	movzbl	%al, %eax	# D.13739, D.13736
	subl	$1, %eax	#, tmp103
	movl	%eax, -20(%rbp)	# tmp103, i
	jmp	.L958	#
.L964:
	.loc 1 2632 0
	movl	-20(%rbp), %eax	# i, tmp104
	movslq	%eax, %rdx	# tmp104, D.13740
	movq	-8(%rbp), %rax	# fmt, tmp105
	addq	%rdx, %rax	# D.13740, D.13741
	movzbl	(%rax), %eax	# *_33, D.13742
	cmpb	$101, %al	#, D.13742
	jne	.L959	#,
	.loc 1 2633 0
	movq	-40(%rbp), %rax	# x, tmp106
	movl	-20(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtx, D.13738
	movq	%rax, %rdi	# D.13738,
	call	computed_jump_p_1	#
	testl	%eax, %eax	# D.13736
	je	.L959	#,
	.loc 1 2634 0
	movl	$1, %eax	#, D.13736
	jmp	.L951	#
.L959:
	.loc 1 2636 0
	movl	-20(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, D.13740
	movq	-8(%rbp), %rax	# fmt, tmp110
	addq	%rdx, %rax	# D.13740, D.13741
	movzbl	(%rax), %eax	# *_39, D.13742
	cmpb	$69, %al	#, D.13742
	jne	.L960	#,
	.loc 1 2637 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L961	#
.L963:
	.loc 1 2638 0
	movq	-40(%rbp), %rax	# x, tmp111
	movl	-20(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtvec, D.13743
	movl	-16(%rbp), %edx	# j, tmp115
	movslq	%edx, %rdx	# tmp115, tmp114
	movq	8(%rax,%rdx,8), %rax	# _44->elem, D.13738
	movq	%rax, %rdi	# D.13738,
	call	computed_jump_p_1	#
	testl	%eax, %eax	# D.13736
	je	.L962	#,
	.loc 1 2639 0
	movl	$1, %eax	#, D.13736
	jmp	.L951	#
.L962:
	.loc 1 2637 0
	addl	$1, -16(%rbp)	#, j
.L961:
	.loc 1 2637 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp116
	movl	-20(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movq	8(%rax,%rdx,8), %rax	# x_6(D)->fld[i_1].rtvec, D.13743
	movl	(%rax), %eax	# _42->num_elem, D.13736
	cmpl	-16(%rbp), %eax	# j, D.13736
	jg	.L963	#,
.L960:
	.loc 1 2630 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L958:
	.loc 1 2630 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L964	#,
	.loc 1 2642 0 is_stmt 1
	movl	$0, %eax	#, D.13736
.L951:
	.loc 1 2643 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	computed_jump_p_1, .-computed_jump_p_1
	.globl	computed_jump_p
	.type	computed_jump_p, @function
computed_jump_p:
.LFB54:
	.loc 1 2653 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2655 0
	movq	-40(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_6(D)->code, D.13745
	cmpw	$33, %ax	#, D.13745
	jne	.L968	#,
.LBB41:
	.loc 1 2657 0
	movq	-40(%rbp), %rax	# insn, tmp89
	movq	32(%rax), %rax	# insn_6(D)->fld[3].rtx, tmp90
	movq	%rax, -8(%rbp)	# tmp90, pat
	.loc 1 2659 0
	movq	-40(%rbp), %rax	# insn, tmp91
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13746
	je	.L969	#,
	.loc 1 2660 0
	movl	$0, %eax	#, D.13744
	jmp	.L970	#
.L969:
	.loc 1 2661 0
	movq	-8(%rbp), %rax	# pat, tmp92
	movzwl	(%rax), %eax	# pat_8->code, D.13745
	cmpw	$39, %ax	#, D.13745
	jne	.L971	#,
.LBB42:
	.loc 1 2663 0
	movq	-8(%rbp), %rax	# pat, tmp93
	movq	8(%rax), %rax	# pat_8->fld[0].rtvec, D.13747
	movl	(%rax), %eax	# _12->num_elem, tmp94
	movl	%eax, -12(%rbp)	# tmp94, len
	.loc 1 2664 0
	movl	$0, -16(%rbp)	#, has_use_labelref
	.loc 1 2666 0
	movl	-12(%rbp), %eax	# len, tmp98
	subl	$1, %eax	#, tmp97
	movl	%eax, -20(%rbp)	# tmp97, i
	jmp	.L972	#
.L974:
	.loc 1 2667 0
	movq	-8(%rbp), %rax	# pat, tmp99
	movq	8(%rax), %rax	# pat_8->fld[0].rtvec, D.13747
	movl	-20(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# _16->elem, D.13746
	movzwl	(%rax), %eax	# _17->code, D.13745
	cmpw	$48, %ax	#, D.13745
	jne	.L973	#,
	.loc 1 2668 0
	movq	-8(%rbp), %rax	# pat, tmp102
	movq	8(%rax), %rax	# pat_8->fld[0].rtvec, D.13747
	movl	-20(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# _19->elem, D.13746
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.13746
	movzwl	(%rax), %eax	# _21->code, D.13745
	cmpw	$67, %ax	#, D.13745
	jne	.L973	#,
	.loc 1 2670 0
	movl	$1, -16(%rbp)	#, has_use_labelref
.L973:
	.loc 1 2666 0
	subl	$1, -20(%rbp)	#, i
.L972:
	.loc 1 2666 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L974	#,
	.loc 1 2672 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, has_use_labelref
	jne	.L975	#,
	.loc 1 2673 0
	movl	-12(%rbp), %eax	# len, tmp108
	subl	$1, %eax	#, tmp107
	movl	%eax, -20(%rbp)	# tmp107, i
	jmp	.L976	#
.L978:
	.loc 1 2674 0
	movq	-8(%rbp), %rax	# pat, tmp109
	movq	8(%rax), %rax	# pat_8->fld[0].rtvec, D.13747
	movl	-20(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# _26->elem, D.13746
	movzwl	(%rax), %eax	# _27->code, D.13745
	cmpw	$47, %ax	#, D.13745
	jne	.L977	#,
	.loc 1 2675 0
	movq	-8(%rbp), %rax	# pat, tmp112
	movq	8(%rax), %rax	# pat_8->fld[0].rtvec, D.13747
	movl	-20(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, tmp113
	movq	8(%rax,%rdx,8), %rax	# _29->elem, D.13746
	movq	8(%rax), %rdx	# _30->fld[0].rtx, D.13746
	movq	global_rtl(%rip), %rax	# global_rtl, D.13746
	cmpq	%rax, %rdx	# D.13746, D.13746
	jne	.L977	#,
	.loc 1 2676 0
	movq	-8(%rbp), %rax	# pat, tmp115
	movq	8(%rax), %rax	# pat_8->fld[0].rtvec, D.13747
	movl	-20(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, tmp116
	movq	8(%rax,%rdx,8), %rax	# _33->elem, D.13746
	movq	16(%rax), %rax	# _34->fld[1].rtx, D.13746
	movq	%rax, %rdi	# D.13746,
	call	computed_jump_p_1	#
	testl	%eax, %eax	# D.13744
	je	.L977	#,
	.loc 1 2677 0
	movl	$1, %eax	#, D.13744
	jmp	.L970	#
.L977:
	.loc 1 2673 0
	subl	$1, -20(%rbp)	#, i
.L976:
	.loc 1 2673 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L978	#,
.L975:
.LBE42:
	jmp	.L968	#
.L971:
	.loc 1 2679 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp118
	movzwl	(%rax), %eax	# pat_8->code, D.13745
	cmpw	$47, %ax	#, D.13745
	jne	.L968	#,
	.loc 1 2680 0
	movq	-8(%rbp), %rax	# pat, tmp119
	movq	8(%rax), %rdx	# pat_8->fld[0].rtx, D.13746
	movq	global_rtl(%rip), %rax	# global_rtl, D.13746
	cmpq	%rax, %rdx	# D.13746, D.13746
	jne	.L968	#,
	.loc 1 2681 0
	movq	-8(%rbp), %rax	# pat, tmp120
	movq	16(%rax), %rax	# pat_8->fld[1].rtx, D.13746
	movq	%rax, %rdi	# D.13746,
	call	computed_jump_p_1	#
	testl	%eax, %eax	# D.13744
	je	.L968	#,
	.loc 1 2682 0
	movl	$1, %eax	#, D.13744
	jmp	.L970	#
.L968:
.LBE41:
	.loc 1 2684 0
	movl	$0, %eax	#, D.13744
.L970:
	.loc 1 2685 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	computed_jump_p, .-computed_jump_p
	.globl	for_each_rtx
	.type	for_each_rtx, @function
for_each_rtx:
.LFB55:
	.loc 1 2705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# f, f
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 2712 0
	movq	-56(%rbp), %rcx	# data, tmp83
	movq	-40(%rbp), %rdx	# x, tmp84
	movq	-48(%rbp), %rax	# f, tmp85
	movq	%rcx, %rsi	# tmp83,
	movq	%rdx, %rdi	# tmp84,
	call	*%rax	# tmp85
	movl	%eax, -16(%rbp)	# tmp86, result
	.loc 1 2713 0
	cmpl	$-1, -16(%rbp)	#, result
	jne	.L980	#,
	.loc 1 2715 0
	movl	$0, %eax	#, D.13748
	jmp	.L981	#
.L980:
	.loc 1 2716 0
	cmpl	$0, -16(%rbp)	#, result
	je	.L982	#,
	.loc 1 2718 0
	movl	-16(%rbp), %eax	# result, D.13748
	jmp	.L981	#
.L982:
	.loc 1 2720 0
	movq	-40(%rbp), %rax	# x, tmp87
	movq	(%rax), %rax	# *x_5(D), D.13749
	testq	%rax, %rax	# D.13749
	jne	.L983	#,
	.loc 1 2722 0
	movl	$0, %eax	#, D.13748
	jmp	.L981	#
.L983:
	.loc 1 2724 0
	movq	-40(%rbp), %rax	# x, tmp88
	movq	(%rax), %rax	# *x_5(D), D.13749
	movzwl	(%rax), %eax	# _12->code, D.13750
	movzwl	%ax, %eax	# D.13750, D.13748
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13751
	movzbl	%al, %eax	# D.13751, tmp90
	movl	%eax, -12(%rbp)	# tmp90, length
	.loc 1 2725 0
	movq	-40(%rbp), %rax	# x, tmp91
	movq	(%rax), %rax	# *x_5(D), D.13749
	movzwl	(%rax), %eax	# _17->code, D.13750
	movzwl	%ax, %eax	# D.13750, D.13748
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp93
	movq	%rax, -8(%rbp)	# tmp93, format
	.loc 1 2727 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L984	#
.L994:
	.loc 1 2729 0
	movl	-24(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, D.13752
	movq	-8(%rbp), %rax	# format, tmp95
	addq	%rdx, %rax	# D.13752, D.13753
	movzbl	(%rax), %eax	# *_23, D.13754
	movsbl	%al, %eax	# D.13754, D.13748
	cmpl	$86, %eax	#, D.13748
	je	.L986	#,
	cmpl	$101, %eax	#, D.13748
	je	.L987	#,
	cmpl	$69, %eax	#, D.13748
	je	.L986	#,
	.loc 1 2753 0
	jmp	.L989	#
.L987:
	.loc 1 2732 0
	movq	-40(%rbp), %rax	# x, tmp96
	movq	(%rax), %rax	# *x_5(D), D.13749
	movl	-24(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	salq	$3, %rdx	#, tmp99
	addq	%rdx, %rax	# tmp99, tmp100
	leaq	8(%rax), %rcx	#, D.13755
	movq	-56(%rbp), %rdx	# data, tmp101
	movq	-48(%rbp), %rax	# f, tmp102
	movq	%rax, %rsi	# tmp102,
	movq	%rcx, %rdi	# D.13755,
	call	for_each_rtx	#
	movl	%eax, -16(%rbp)	# tmp103, result
	.loc 1 2733 0
	cmpl	$0, -16(%rbp)	#, result
	je	.L988	#,
	.loc 1 2734 0
	movl	-16(%rbp), %eax	# result, D.13748
	jmp	.L981	#
.L988:
	.loc 1 2735 0
	jmp	.L989	#
.L986:
	.loc 1 2739 0
	movq	-40(%rbp), %rax	# x, tmp104
	movq	(%rax), %rax	# *x_5(D), D.13749
	movl	-24(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# _30->fld[i_1].rtvec, D.13756
	testq	%rax, %rax	# D.13756
	je	.L990	#,
.LBB43:
	.loc 1 2742 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L991	#
.L993:
	.loc 1 2744 0
	movq	-40(%rbp), %rax	# x, tmp107
	movq	(%rax), %rax	# *x_5(D), D.13749
	movl	-24(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# _36->fld[i_1].rtvec, D.13756
	movl	-20(%rbp), %edx	# j, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	salq	$3, %rdx	#, tmp112
	addq	%rdx, %rax	# tmp112, tmp113
	leaq	8(%rax), %rcx	#, D.13755
	movq	-56(%rbp), %rdx	# data, tmp114
	movq	-48(%rbp), %rax	# f, tmp115
	movq	%rax, %rsi	# tmp115,
	movq	%rcx, %rdi	# D.13755,
	call	for_each_rtx	#
	movl	%eax, -16(%rbp)	# tmp116, result
	.loc 1 2745 0
	cmpl	$0, -16(%rbp)	#, result
	je	.L992	#,
	.loc 1 2746 0
	movl	-16(%rbp), %eax	# result, D.13748
	jmp	.L981	#
.L992:
	.loc 1 2742 0
	addl	$1, -20(%rbp)	#, j
.L991:
	.loc 1 2742 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp117
	movq	(%rax), %rax	# *x_5(D), D.13749
	movl	-24(%rbp), %edx	# i, tmp119
	movslq	%edx, %rdx	# tmp119, tmp118
	movq	8(%rax,%rdx,8), %rax	# _33->fld[i_1].rtvec, D.13756
	movl	(%rax), %eax	# _34->num_elem, D.13748
	cmpl	-20(%rbp), %eax	# j, D.13748
	jg	.L993	#,
.L990:
.LBE43:
	.loc 1 2749 0 is_stmt 1
	nop
.L989:
	.loc 1 2727 0
	addl	$1, -24(%rbp)	#, i
.L984:
	.loc 1 2727 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp120
	cmpl	-12(%rbp), %eax	# length, tmp120
	jl	.L994	#,
	.loc 1 2758 0 is_stmt 1
	movl	$0, %eax	#, D.13748
.L981:
	.loc 1 2759 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	for_each_rtx, .-for_each_rtx
	.globl	regno_use_in
	.type	regno_use_in, @function
regno_use_in:
.LFB56:
	.loc 1 2768 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# regno, regno
	movq	%rsi, -48(%rbp)	# x, x
	.loc 1 2773 0
	movq	-48(%rbp), %rax	# x, tmp80
	movzwl	(%rax), %eax	# x_4(D)->code, D.13758
	cmpw	$61, %ax	#, D.13758
	jne	.L996	#,
	.loc 1 2773 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# x, tmp81
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.13759
	cmpl	-36(%rbp), %eax	# regno, D.13759
	jne	.L996	#,
	.loc 1 2774 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, D.13757
	jmp	.L997	#
.L996:
	.loc 1 2776 0
	movq	-48(%rbp), %rax	# x, tmp82
	movzwl	(%rax), %eax	# x_4(D)->code, D.13758
	movzwl	%ax, %eax	# D.13758, D.13760
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp84
	movq	%rax, -16(%rbp)	# tmp84, fmt
	.loc 1 2777 0
	movq	-48(%rbp), %rax	# x, tmp85
	movzwl	(%rax), %eax	# x_4(D)->code, D.13758
	movzwl	%ax, %eax	# D.13758, D.13760
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13761
	movzbl	%al, %eax	# D.13761, D.13760
	subl	$1, %eax	#, tmp87
	movl	%eax, -24(%rbp)	# tmp87, i
	jmp	.L998	#
.L1004:
	.loc 1 2779 0
	movl	-24(%rbp), %eax	# i, tmp88
	movslq	%eax, %rdx	# tmp88, D.13762
	movq	-16(%rbp), %rax	# fmt, tmp89
	addq	%rdx, %rax	# D.13762, D.13763
	movzbl	(%rax), %eax	# *_18, D.13764
	cmpb	$101, %al	#, D.13764
	jne	.L999	#,
	.loc 1 2781 0
	movq	-48(%rbp), %rax	# x, tmp90
	movl	-24(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, tmp91
	movq	8(%rax,%rdx,8), %rdx	# x_4(D)->fld[i_1].rtx, D.13765
	movl	-36(%rbp), %eax	# regno, tmp93
	movq	%rdx, %rsi	# D.13765,
	movl	%eax, %edi	# tmp93,
	call	regno_use_in	#
	movq	%rax, -8(%rbp)	# tmp94, tem
	cmpq	$0, -8(%rbp)	#, tem
	je	.L1000	#,
	.loc 1 2782 0
	movq	-8(%rbp), %rax	# tem, D.13757
	jmp	.L997	#
.L999:
	.loc 1 2784 0
	movl	-24(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, D.13762
	movq	-16(%rbp), %rax	# fmt, tmp96
	addq	%rdx, %rax	# D.13762, D.13763
	movzbl	(%rax), %eax	# *_24, D.13764
	cmpb	$69, %al	#, D.13764
	jne	.L1000	#,
	.loc 1 2785 0
	movq	-48(%rbp), %rax	# x, tmp97
	movl	-24(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13766
	movl	(%rax), %eax	# _26->num_elem, D.13760
	subl	$1, %eax	#, tmp100
	movl	%eax, -20(%rbp)	# tmp100, j
	jmp	.L1001	#
.L1003:
	.loc 1 2786 0
	movq	-48(%rbp), %rax	# x, tmp101
	movl	-24(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.13766
	movl	-20(%rbp), %edx	# j, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rdx	# _29->elem, D.13765
	movl	-36(%rbp), %eax	# regno, tmp106
	movq	%rdx, %rsi	# D.13765,
	movl	%eax, %edi	# tmp106,
	call	regno_use_in	#
	movq	%rax, -8(%rbp)	# tmp107, tem
	cmpq	$0, -8(%rbp)	#, tem
	je	.L1002	#,
	.loc 1 2787 0
	movq	-8(%rbp), %rax	# tem, D.13757
	jmp	.L997	#
.L1002:
	.loc 1 2785 0
	subl	$1, -20(%rbp)	#, j
.L1001:
	.loc 1 2785 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, j
	jns	.L1003	#,
.L1000:
	.loc 1 2777 0 is_stmt 1
	subl	$1, -24(%rbp)	#, i
.L998:
	.loc 1 2777 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, i
	jns	.L1004	#,
	.loc 1 2790 0 is_stmt 1
	movl	$0, %eax	#, D.13757
.L997:
	.loc 1 2791 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	regno_use_in, .-regno_use_in
	.globl	commutative_operand_precedence
	.type	commutative_operand_precedence, @function
commutative_operand_precedence:
.LFB57:
	.loc 1 2802 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# op, op
	.loc 1 2804 0
	movq	-8(%rbp), %rax	# op, tmp84
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$54, %ax	#, D.13768
	jne	.L1006	#,
	.loc 1 2805 0
	movl	$-5, %eax	#, D.13767
	jmp	.L1007	#
.L1006:
	.loc 1 2806 0
	movq	-8(%rbp), %rax	# op, tmp85
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$55, %ax	#, D.13768
	jne	.L1008	#,
	.loc 1 2807 0
	movl	$-4, %eax	#, D.13767
	jmp	.L1007	#
.L1008:
	.loc 1 2808 0
	movq	-8(%rbp), %rax	# op, tmp86
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$67, %ax	#, D.13768
	je	.L1009	#,
	.loc 1 2808 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp87
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$68, %ax	#, D.13768
	je	.L1009	#,
	movq	-8(%rbp), %rax	# op, tmp88
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$54, %ax	#, D.13768
	je	.L1009	#,
	movq	-8(%rbp), %rax	# op, tmp89
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$55, %ax	#, D.13768
	je	.L1009	#,
	movq	-8(%rbp), %rax	# op, tmp90
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$58, %ax	#, D.13768
	je	.L1009	#,
	movq	-8(%rbp), %rax	# op, tmp91
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$134, %ax	#, D.13768
	je	.L1009	#,
	movq	-8(%rbp), %rax	# op, tmp92
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$56, %ax	#, D.13768
	je	.L1009	#,
	movq	-8(%rbp), %rax	# op, tmp93
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$140, %ax	#, D.13768
	jne	.L1010	#,
.L1009:
	.loc 1 2809 0 is_stmt 1
	movl	$-3, %eax	#, D.13767
	jmp	.L1007	#
.L1010:
	.loc 1 2812 0
	movq	-8(%rbp), %rax	# op, tmp94
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$63, %ax	#, D.13768
	jne	.L1011	#,
	.loc 1 2813 0
	movq	-8(%rbp), %rax	# op, tmp95
	movq	8(%rax), %rax	# op_2(D)->fld[0].rtx, D.13769
	movzwl	(%rax), %eax	# _16->code, D.13768
	movzwl	%ax, %eax	# D.13768, D.13767
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13770
	cmpb	$111, %al	#, D.13770
	jne	.L1011	#,
	.loc 1 2814 0
	movl	$-2, %eax	#, D.13767
	jmp	.L1007	#
.L1011:
	.loc 1 2819 0
	movq	-8(%rbp), %rax	# op, tmp97
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$77, %ax	#, D.13768
	je	.L1012	#,
	.loc 1 2819 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp98
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$86, %ax	#, D.13768
	je	.L1012	#,
	.loc 1 2820 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp99
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$78, %ax	#, D.13768
	je	.L1012	#,
	.loc 1 2820 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp100
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$75, %ax	#, D.13768
	je	.L1012	#,
	.loc 1 2821 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp101
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	cmpw	$76, %ax	#, D.13768
	jne	.L1013	#,
.L1012:
	.loc 1 2822 0
	movl	$2, %eax	#, D.13767
	jmp	.L1007	#
.L1013:
	.loc 1 2826 0
	movq	-8(%rbp), %rax	# op, tmp102
	movzwl	(%rax), %eax	# op_2(D)->code, D.13768
	movzwl	%ax, %eax	# D.13768, D.13767
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13770
	cmpb	$111, %al	#, D.13770
	jne	.L1014	#,
	.loc 1 2827 0
	movl	$-1, %eax	#, D.13767
	jmp	.L1007	#
.L1014:
	.loc 1 2828 0
	movl	$0, %eax	#, D.13767
.L1007:
	.loc 1 2829 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	commutative_operand_precedence, .-commutative_operand_precedence
	.globl	swap_commutative_operands_p
	.type	swap_commutative_operands_p, @function
swap_commutative_operands_p:
.LFB58:
	.loc 1 2837 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# x, x
	movq	%rsi, -24(%rbp)	# y, y
	.loc 1 2838 0
	movq	-16(%rbp), %rax	# x, tmp64
	movq	%rax, %rdi	# tmp64,
	call	commutative_operand_precedence	#
	movl	%eax, %ebx	#, D.13771
	.loc 1 2839 0
	movq	-24(%rbp), %rax	# y, tmp65
	movq	%rax, %rdi	# tmp65,
	call	commutative_operand_precedence	#
	cmpl	%eax, %ebx	# D.13771, D.13771
	setl	%al	#, D.13772
	.loc 1 2838 0
	movzbl	%al, %eax	# D.13772, D.13771
	.loc 1 2840 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	swap_commutative_operands_p, .-swap_commutative_operands_p
	.globl	auto_inc_p
	.type	auto_inc_p, @function
auto_inc_p:
.LFB59:
	.loc 1 2847 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 2848 0
	movq	-8(%rbp), %rax	# x, tmp65
	movzwl	(%rax), %eax	# x_2(D)->code, D.13774
	movzwl	%ax, %eax	# D.13774, D.13775
	subl	$96, %eax	#, tmp66
	cmpl	$5, %eax	#, tmp66
	ja	.L1022	#,
	.loc 1 2857 0
	movq	-8(%rbp), %rax	# x, tmp67
	movq	8(%rax), %rdx	# x_2(D)->fld[0].rtx, D.13776
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.13776
	cmpq	%rax, %rdx	# D.13776, D.13776
	je	.L1018	#,
	.loc 1 2858 0
	movl	$1, %eax	#, D.13773
	jmp	.L1020	#
.L1018:
.L1022:
	.loc 1 2860 0
	nop
	.loc 1 2862 0
	movl	$0, %eax	#, D.13773
.L1020:
	.loc 1 2863 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	auto_inc_p, .-auto_inc_p
	.globl	insns_safe_to_move_p
	.type	insns_safe_to_move_p, @function
insns_safe_to_move_p:
.LFB60:
	.loc 1 2880 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# from, from
	movq	%rsi, -32(%rbp)	# to, to
	movq	%rdx, -40(%rbp)	# new_to, new_to
	.loc 1 2881 0
	movl	$0, -16(%rbp)	#, eh_region_count
	.loc 1 2882 0
	movl	$0, -12(%rbp)	#, past_to_p
	.loc 1 2883 0
	movq	-24(%rbp), %rax	# from, tmp64
	movq	%rax, -8(%rbp)	# tmp64, r
	.loc 1 2887 0
	cmpq	$0, -40(%rbp)	#, new_to
	je	.L1024	#,
	.loc 1 2888 0
	movq	-40(%rbp), %rax	# new_to, tmp65
	movq	-32(%rbp), %rdx	# to, tmp66
	movq	%rdx, (%rax)	# tmp66, *new_to_12(D)
	.loc 1 2890 0
	jmp	.L1025	#
.L1024:
	jmp	.L1025	#
.L1037:
	.loc 1 2892 0
	movq	-8(%rbp), %rax	# r, tmp67
	movzwl	(%rax), %eax	# r_6->code, D.13778
	cmpw	$37, %ax	#, D.13778
	jne	.L1026	#,
	.loc 1 2894 0
	movq	-8(%rbp), %rax	# r, tmp68
	movl	40(%rax), %eax	# r_6->fld[4].rtint, D.13777
	cmpl	$-86, %eax	#, D.13777
	je	.L1028	#,
	cmpl	$-85, %eax	#, D.13777
	je	.L1029	#,
	.loc 1 2911 0
	jmp	.L1030	#
.L1028:
	.loc 1 2897 0
	addl	$1, -16(%rbp)	#, eh_region_count
	.loc 1 2898 0
	jmp	.L1030	#
.L1029:
	.loc 1 2901 0
	cmpl	$0, -16(%rbp)	#, eh_region_count
	jne	.L1031	#,
	.loc 1 2905 0
	movl	$0, %eax	#, D.13777
	jmp	.L1032	#
.L1031:
	.loc 1 2907 0
	subl	$1, -16(%rbp)	#, eh_region_count
	.loc 1 2908 0
	nop
.L1030:
	jmp	.L1033	#
.L1026:
	.loc 1 2914 0
	cmpl	$0, -12(%rbp)	#, past_to_p
	je	.L1033	#,
	.loc 1 2917 0
	movl	$0, %eax	#, D.13777
	jmp	.L1032	#
.L1033:
	.loc 1 2919 0
	movq	-8(%rbp), %rax	# r, tmp69
	cmpq	-32(%rbp), %rax	# to, tmp69
	jne	.L1034	#,
	.loc 1 2921 0
	cmpq	$0, -40(%rbp)	#, new_to
	jne	.L1035	#,
	.loc 1 2924 0
	cmpl	$0, -16(%rbp)	#, eh_region_count
	sete	%al	#, D.13779
	movzbl	%al, %eax	# D.13779, D.13777
	jmp	.L1032	#
.L1035:
	.loc 1 2926 0
	movl	$1, -12(%rbp)	#, past_to_p
.L1034:
	.loc 1 2931 0
	cmpl	$0, -12(%rbp)	#, past_to_p
	je	.L1036	#,
	.loc 1 2931 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, eh_region_count
	jne	.L1036	#,
	.loc 1 2933 0 is_stmt 1
	movq	-40(%rbp), %rax	# new_to, tmp70
	movq	-8(%rbp), %rdx	# r, tmp71
	movq	%rdx, (%rax)	# tmp71, *new_to_12(D)
	.loc 1 2934 0
	movl	$1, %eax	#, D.13777
	jmp	.L1032	#
.L1036:
	.loc 1 2938 0
	movq	-8(%rbp), %rax	# r, tmp72
	movq	24(%rax), %rax	# r_6->fld[2].rtx, tmp73
	movq	%rax, -8(%rbp)	# tmp73, r
.L1025:
	.loc 1 2890 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, r
	jne	.L1037	#,
	.loc 1 2941 0
	movl	$0, %eax	#, D.13777
.L1032:
	.loc 1 2942 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	insns_safe_to_move_p, .-insns_safe_to_move_p
	.globl	loc_mentioned_in_p
	.type	loc_mentioned_in_p, @function
loc_mentioned_in_p:
.LFB61:
	.loc 1 2948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# loc, loc
	movq	%rsi, -48(%rbp)	# in, in
	.loc 1 2949 0
	movq	-48(%rbp), %rax	# in, tmp80
	movzwl	(%rax), %eax	# in_4(D)->code, D.13781
	movzwl	%ax, %eax	# D.13781, tmp81
	movl	%eax, -12(%rbp)	# tmp81, code
	.loc 1 2950 0
	movl	-12(%rbp), %eax	# code, code.212
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp83
	movq	%rax, -8(%rbp)	# tmp83, fmt
	.loc 1 2953 0
	movl	-12(%rbp), %eax	# code, code.213
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13782
	movzbl	%al, %eax	# D.13782, D.13780
	subl	$1, %eax	#, tmp85
	movl	%eax, -20(%rbp)	# tmp85, i
	jmp	.L1039	#
.L1047:
	.loc 1 2955 0
	movl	-20(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp88
	movq	-48(%rbp), %rax	# in, tmp90
	addq	%rdx, %rax	# tmp88, tmp89
	addq	$8, %rax	#, D.13783
	cmpq	-40(%rbp), %rax	# loc, D.13783
	jne	.L1040	#,
	.loc 1 2956 0
	movl	$1, %eax	#, D.13780
	jmp	.L1041	#
.L1040:
	.loc 1 2957 0
	movl	-20(%rbp), %eax	# i, tmp91
	movslq	%eax, %rdx	# tmp91, D.13784
	movq	-8(%rbp), %rax	# fmt, tmp92
	addq	%rdx, %rax	# D.13784, D.13785
	movzbl	(%rax), %eax	# *_17, D.13786
	cmpb	$101, %al	#, D.13786
	jne	.L1042	#,
	.loc 1 2959 0
	movq	-48(%rbp), %rax	# in, tmp93
	movl	-20(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	movq	8(%rax,%rdx,8), %rdx	# in_4(D)->fld[i_1].rtx, D.13787
	movq	-40(%rbp), %rax	# loc, tmp96
	movq	%rdx, %rsi	# D.13787,
	movq	%rax, %rdi	# tmp96,
	call	loc_mentioned_in_p	#
	testl	%eax, %eax	# D.13780
	je	.L1043	#,
	.loc 1 2960 0
	movl	$1, %eax	#, D.13780
	jmp	.L1041	#
.L1042:
	.loc 1 2962 0
	movl	-20(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, D.13784
	movq	-8(%rbp), %rax	# fmt, tmp98
	addq	%rdx, %rax	# D.13784, D.13785
	movzbl	(%rax), %eax	# *_23, D.13786
	cmpb	$69, %al	#, D.13786
	jne	.L1043	#,
	.loc 1 2963 0
	movq	-48(%rbp), %rax	# in, tmp99
	movl	-20(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# in_4(D)->fld[i_1].rtvec, D.13788
	movl	(%rax), %eax	# _25->num_elem, D.13780
	subl	$1, %eax	#, tmp102
	movl	%eax, -16(%rbp)	# tmp102, j
	jmp	.L1044	#
.L1046:
	.loc 1 2964 0
	movq	-48(%rbp), %rax	# in, tmp103
	movl	-20(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rax	# in_4(D)->fld[i_1].rtvec, D.13788
	movl	-16(%rbp), %edx	# j, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rdx	# _28->elem, D.13787
	movq	-40(%rbp), %rax	# loc, tmp108
	movq	%rdx, %rsi	# D.13787,
	movq	%rax, %rdi	# tmp108,
	call	loc_mentioned_in_p	#
	testl	%eax, %eax	# D.13780
	je	.L1045	#,
	.loc 1 2965 0
	movl	$1, %eax	#, D.13780
	jmp	.L1041	#
.L1045:
	.loc 1 2963 0
	subl	$1, -16(%rbp)	#, j
.L1044:
	.loc 1 2963 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L1046	#,
.L1043:
	.loc 1 2953 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L1039:
	.loc 1 2953 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L1047	#,
	.loc 1 2967 0 is_stmt 1
	movl	$0, %eax	#, D.13780
.L1041:
	.loc 1 2968 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	loc_mentioned_in_p, .-loc_mentioned_in_p
	.globl	subreg_lsb
	.type	subreg_lsb, @function
subreg_lsb:
.LFB62:
	.loc 1 2976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)	# x, x
	.loc 1 2977 0
	movq	-48(%rbp), %rax	# x, tmp80
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.13790
	movzbl	2(%rax), %eax	# _6->mode, D.13791
	movzbl	%al, %eax	# D.13791, tmp81
	movl	%eax, -28(%rbp)	# tmp81, inner_mode
	.loc 1 2978 0
	movq	-48(%rbp), %rax	# x, tmp82
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.13791
	movzbl	%al, %eax	# D.13791, tmp83
	movl	%eax, -24(%rbp)	# tmp83, mode
	.loc 1 2984 0
	movl	-24(%rbp), %eax	# mode, mode.214
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.13792
	movl	-28(%rbp), %eax	# inner_mode, inner_mode.215
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.13792
	cmpw	%ax, %dx	# D.13792, D.13792
	jbe	.L1049	#,
	.loc 1 2985 0
	movl	$0, %eax	#, D.13789
	jmp	.L1050	#
.L1049:
	.loc 1 3000 0
	movq	-48(%rbp), %rax	# x, tmp86
	movl	16(%rax), %eax	# x_5(D)->fld[1].rtuint, D.13789
	movl	target_flags(%rip), %edx	# target_flags, target_flags.231
	andl	$33554432, %edx	#, D.13793
	testl	%edx, %edx	# D.13793
	je	.L1051	#,
	.loc 1 3000 0 is_stmt 0 discriminator 1
	movl	$8, %esi	#, iftmp.230
	jmp	.L1052	#
.L1051:
	.loc 1 3000 0 discriminator 2
	movl	$4, %esi	#, iftmp.230
.L1052:
	.loc 1 3000 0 discriminator 3
	movl	$0, %edx	#, tmp88
	divl	%esi	# iftmp.230
	movl	%eax, -20(%rbp)	# tmp87, word
	.loc 1 3001 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.233
	andl	$33554432, %eax	#, D.13793
	testl	%eax, %eax	# D.13793
	je	.L1053	#,
	.loc 1 3001 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.232
	jmp	.L1054	#
.L1053:
	.loc 1 3001 0 discriminator 2
	movl	$32, %eax	#, iftmp.232
.L1054:
	.loc 1 3001 0 discriminator 3
	imull	-20(%rbp), %eax	# word, tmp89
	movl	%eax, -16(%rbp)	# tmp89, bitpos
	.loc 1 3007 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# x, tmp90
	movl	16(%rax), %eax	# x_5(D)->fld[1].rtuint, D.13789
	movl	target_flags(%rip), %edx	# target_flags, target_flags.239
	andl	$33554432, %edx	#, D.13793
	testl	%edx, %edx	# D.13793
	je	.L1055	#,
	.loc 1 3007 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.238
	jmp	.L1056	#
.L1055:
	.loc 1 3007 0 discriminator 2
	movl	$4, %ebx	#, iftmp.238
.L1056:
	.loc 1 3007 0 discriminator 3
	movl	$0, %edx	#, tmp91
	divl	%ebx	# iftmp.238
	movl	%edx, %ecx	# tmp91, tmp91
	movl	%ecx, -12(%rbp)	# tmp91, byte
	.loc 1 3008 0 is_stmt 1 discriminator 3
	movl	-12(%rbp), %eax	# byte, tmp93
	sall	$3, %eax	#, D.13789
	addl	%eax, -16(%rbp)	# D.13789, bitpos
	.loc 1 3010 0 discriminator 3
	movl	-16(%rbp), %eax	# bitpos, D.13789
.L1050:
	.loc 1 3011 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	subreg_lsb, .-subreg_lsb
	.globl	subreg_regno_offset
	.type	subreg_regno_offset, @function
subreg_regno_offset:
.LFB63:
	.loc 1 3025 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# xregno, xregno
	movl	%esi, -56(%rbp)	# xmode, xmode
	movl	%edx, -60(%rbp)	# offset, offset
	movl	%ecx, -64(%rbp)	# ymode, ymode
	.loc 1 3030 0
	cmpl	$52, -52(%rbp)	#, xregno
	jbe	.L1058	#,
	.loc 1 3031 0
	movl	$__FUNCTION__.10121, %edx	#,
	movl	$3031, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1058:
	.loc 1 3033 0
	cmpl	$7, -52(%rbp)	#, xregno
	jbe	.L1059	#,
	.loc 1 3033 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, xregno
	jbe	.L1060	#,
.L1059:
	.loc 1 3033 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, xregno
	jbe	.L1061	#,
	.loc 1 3033 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, xregno
	jbe	.L1060	#,
.L1061:
	.loc 1 3033 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, xregno
	jbe	.L1062	#,
	.loc 1 3033 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, xregno
	jbe	.L1060	#,
.L1062:
	.loc 1 3033 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, xregno
	jbe	.L1063	#,
	.loc 1 3033 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, xregno
	ja	.L1063	#,
.L1060:
	movl	-56(%rbp), %eax	# xmode, xmode.242
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13797
	cmpl	$5, %eax	#, D.13797
	je	.L1064	#,
	.loc 1 3033 0 discriminator 2
	movl	-56(%rbp), %eax	# xmode, xmode.243
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13797
	cmpl	$6, %eax	#, D.13797
	jne	.L1065	#,
.L1064:
	.loc 1 3033 0 discriminator 1
	movl	$2, %eax	#, iftmp.241
	jmp	.L1066	#
.L1065:
	movl	$1, %eax	#, iftmp.241
.L1066:
	.loc 1 3033 0 discriminator 3
	jmp	.L1067	#
.L1063:
	.loc 1 3033 0 discriminator 2
	cmpl	$18, -56(%rbp)	#, xmode
	jne	.L1068	#,
	.loc 1 3033 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.246
	andl	$33554432, %eax	#, D.13795
	testl	%eax, %eax	# D.13795
	je	.L1069	#,
	movl	$2, %eax	#, iftmp.245
	jmp	.L1067	#
.L1069:
	.loc 1 3033 0 discriminator 2
	movl	$3, %eax	#, iftmp.245
	jmp	.L1067	#
.L1068:
	cmpl	$24, -56(%rbp)	#, xmode
	jne	.L1072	#,
	.loc 1 3033 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.249
	andl	$33554432, %eax	#, D.13795
	testl	%eax, %eax	# D.13795
	je	.L1073	#,
	movl	$4, %eax	#, iftmp.248
	jmp	.L1067	#
.L1073:
	.loc 1 3033 0 discriminator 2
	movl	$6, %eax	#, iftmp.248
	jmp	.L1067	#
.L1072:
	movl	-56(%rbp), %eax	# xmode, xmode.250
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13796
	movzbl	%al, %edx	# D.13796, D.13795
	movl	target_flags(%rip), %eax	# target_flags, target_flags.252
	andl	$33554432, %eax	#, D.13795
	testl	%eax, %eax	# D.13795
	je	.L1076	#,
	.loc 1 3033 0 discriminator 1
	movl	$8, %eax	#, iftmp.251
	jmp	.L1077	#
.L1076:
	.loc 1 3033 0 discriminator 2
	movl	$4, %eax	#, iftmp.251
.L1077:
	.loc 1 3033 0 discriminator 3
	addl	%edx, %eax	# D.13795, D.13795
	subl	$1, %eax	#, D.13795
	movl	target_flags(%rip), %edx	# target_flags, target_flags.254
	andl	$33554432, %edx	#, D.13795
	testl	%edx, %edx	# D.13795
	je	.L1078	#,
	.loc 1 3033 0 discriminator 1
	movl	$8, %ebx	#, iftmp.253
	jmp	.L1079	#
.L1078:
	.loc 1 3033 0 discriminator 2
	movl	$4, %ebx	#, iftmp.253
.L1079:
	.loc 1 3033 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.253
.L1067:
	movl	%eax, -36(%rbp)	# iftmp.240, nregs_xmode
	.loc 1 3034 0 is_stmt 1 discriminator 3
	cmpl	$7, -52(%rbp)	#, xregno
	jbe	.L1080	#,
	.loc 1 3034 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, xregno
	jbe	.L1081	#,
.L1080:
	.loc 1 3034 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, xregno
	jbe	.L1082	#,
	.loc 1 3034 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, xregno
	jbe	.L1081	#,
.L1082:
	.loc 1 3034 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, xregno
	jbe	.L1083	#,
	.loc 1 3034 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, xregno
	jbe	.L1081	#,
.L1083:
	.loc 1 3034 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, xregno
	jbe	.L1084	#,
	.loc 1 3034 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, xregno
	ja	.L1084	#,
.L1081:
	movl	-64(%rbp), %eax	# ymode, ymode.257
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13797
	cmpl	$5, %eax	#, D.13797
	je	.L1085	#,
	.loc 1 3034 0 discriminator 2
	movl	-64(%rbp), %eax	# ymode, ymode.258
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13797
	cmpl	$6, %eax	#, D.13797
	jne	.L1086	#,
.L1085:
	.loc 1 3034 0 discriminator 1
	movl	$2, %eax	#, iftmp.256
	jmp	.L1087	#
.L1086:
	movl	$1, %eax	#, iftmp.256
.L1087:
	.loc 1 3034 0 discriminator 3
	jmp	.L1088	#
.L1084:
	.loc 1 3034 0 discriminator 2
	cmpl	$18, -64(%rbp)	#, ymode
	jne	.L1089	#,
	.loc 1 3034 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.261
	andl	$33554432, %eax	#, D.13795
	testl	%eax, %eax	# D.13795
	je	.L1090	#,
	movl	$2, %eax	#, iftmp.260
	jmp	.L1088	#
.L1090:
	.loc 1 3034 0 discriminator 2
	movl	$3, %eax	#, iftmp.260
	jmp	.L1088	#
.L1089:
	cmpl	$24, -64(%rbp)	#, ymode
	jne	.L1093	#,
	.loc 1 3034 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.264
	andl	$33554432, %eax	#, D.13795
	testl	%eax, %eax	# D.13795
	je	.L1094	#,
	movl	$4, %eax	#, iftmp.263
	jmp	.L1088	#
.L1094:
	.loc 1 3034 0 discriminator 2
	movl	$6, %eax	#, iftmp.263
	jmp	.L1088	#
.L1093:
	movl	-64(%rbp), %eax	# ymode, ymode.265
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13796
	movzbl	%al, %edx	# D.13796, D.13795
	movl	target_flags(%rip), %eax	# target_flags, target_flags.267
	andl	$33554432, %eax	#, D.13795
	testl	%eax, %eax	# D.13795
	je	.L1097	#,
	.loc 1 3034 0 discriminator 1
	movl	$8, %eax	#, iftmp.266
	jmp	.L1098	#
.L1097:
	.loc 1 3034 0 discriminator 2
	movl	$4, %eax	#, iftmp.266
.L1098:
	.loc 1 3034 0 discriminator 3
	addl	%edx, %eax	# D.13795, D.13795
	subl	$1, %eax	#, D.13795
	movl	target_flags(%rip), %edx	# target_flags, target_flags.269
	andl	$33554432, %edx	#, D.13795
	testl	%edx, %edx	# D.13795
	je	.L1099	#,
	.loc 1 3034 0 discriminator 1
	movl	$8, %ecx	#, iftmp.268
	jmp	.L1100	#
.L1099:
	.loc 1 3034 0 discriminator 2
	movl	$4, %ecx	#, iftmp.268
.L1100:
	.loc 1 3034 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.268
.L1088:
	movl	%eax, -32(%rbp)	# iftmp.255, nregs_ymode
	.loc 1 3035 0 is_stmt 1 discriminator 3
	cmpl	$0, -60(%rbp)	#, offset
	je	.L1101	#,
	.loc 1 3035 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# nregs_xmode, tmp133
	cmpl	-32(%rbp), %eax	# nregs_ymode, tmp133
	jne	.L1102	#,
.L1101:
	.loc 1 3036 0 is_stmt 1
	movl	$0, %eax	#, D.13794
	jmp	.L1103	#
.L1102:
	.loc 1 3039 0
	movl	-56(%rbp), %eax	# xmode, xmode.270
	cltq
	movzbl	mode_size(%rax), %ecx	# mode_size, D.13796
	movl	-64(%rbp), %eax	# ymode, ymode.271
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.13796
	movzbl	%cl, %eax	# D.13796, tmp139
	divb	%dl	# D.13796
	movzbl	%al, %eax	# D.13796, tmp140
	movl	%eax, -28(%rbp)	# tmp140, mode_multiple
	.loc 1 3040 0
	cmpl	$0, -28(%rbp)	#, mode_multiple
	jne	.L1104	#,
	.loc 1 3041 0
	movl	$__FUNCTION__.10121, %edx	#,
	movl	$3041, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1104:
	.loc 1 3043 0
	movl	-64(%rbp), %eax	# ymode, ymode.272
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13796
	movzbl	%al, %esi	# D.13796, D.13794
	movl	-60(%rbp), %eax	# offset, tmp144
	movl	$0, %edx	#, tmp143
	divl	%esi	# D.13794
	movl	%eax, -24(%rbp)	# D.13794, y_offset
	.loc 1 3044 0
	movl	-36(%rbp), %eax	# nregs_xmode, tmp148
	cltd
	idivl	-32(%rbp)	# nregs_ymode
	movl	%eax, -20(%rbp)	# tmp146, nregs_multiple
	.loc 1 3045 0
	movl	-28(%rbp), %eax	# mode_multiple, tmp151
	cltd
	idivl	-20(%rbp)	# nregs_multiple
	movl	%eax, %edi	# tmp149, D.13795
	movl	-24(%rbp), %eax	# y_offset, tmp154
	cltd
	idivl	%edi	# D.13795
	imull	-32(%rbp), %eax	# nregs_ymode, D.13795
.L1103:
	.loc 1 3046 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	subreg_regno_offset, .-subreg_regno_offset
	.globl	subreg_regno
	.type	subreg_regno, @function
subreg_regno:
.LFB64:
	.loc 1 3052 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 3054 0
	movq	-24(%rbp), %rax	# x, tmp70
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, subreg
	.loc 1 3055 0
	movq	-8(%rbp), %rax	# subreg, tmp72
	movl	8(%rax), %eax	# subreg_2->fld[0].rtuint, D.13798
	movl	%eax, -16(%rbp)	# D.13798, regno
	.loc 1 3060 0
	movq	-24(%rbp), %rax	# x, tmp73
	movzbl	2(%rax), %eax	# x_1(D)->mode, D.13799
	.loc 1 3057 0
	movzbl	%al, %ecx	# D.13799, D.13800
	movq	-24(%rbp), %rax	# x, tmp74
	movl	16(%rax), %edx	# x_1(D)->fld[1].rtuint, D.13798
	.loc 1 3058 0
	movq	-8(%rbp), %rax	# subreg, tmp75
	movzbl	2(%rax), %eax	# subreg_2->mode, D.13799
	.loc 1 3057 0
	movzbl	%al, %esi	# D.13799, D.13800
	movl	-16(%rbp), %eax	# regno, regno.273
	movl	%eax, %edi	# regno.273,
	call	subreg_regno_offset	#
	movl	-16(%rbp), %edx	# regno, regno.274
	addl	%edx, %eax	# regno.274, tmp76
	movl	%eax, -12(%rbp)	# tmp76, ret
	.loc 1 3061 0
	movl	-12(%rbp), %eax	# ret, D.13798
	.loc 1 3063 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	subreg_regno, .-subreg_regno
	.type	parms_set, @function
parms_set:
.LFB65:
	.loc 1 3075 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# pat, pat
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 3076 0
	movq	-40(%rbp), %rax	# data, tmp74
	movq	%rax, -8(%rbp)	# tmp74, d
	.loc 1 3077 0
	movq	-24(%rbp), %rax	# x, tmp75
	movzwl	(%rax), %eax	# x_3(D)->code, D.13801
	cmpw	$61, %ax	#, D.13801
	jne	.L1107	#,
	.loc 1 3077 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp76
	movl	8(%rax), %eax	# x_3(D)->fld[0].rtuint, D.13802
	cmpl	$52, %eax	#, D.13802
	ja	.L1107	#,
	.loc 1 3078 0 is_stmt 1
	movq	-8(%rbp), %rax	# d, tmp77
	movq	8(%rax), %rdx	# d_2->regs, D.13803
	movq	-24(%rbp), %rax	# x, tmp78
	movl	8(%rax), %eax	# x_3(D)->fld[0].rtuint, D.13802
	movl	%eax, %ecx	# D.13804, tmp86
	shrq	%cl, %rdx	# tmp86, D.13803
	movq	%rdx, %rax	# D.13803, D.13803
	andl	$1, %eax	#, D.13803
	testq	%rax, %rax	# D.13803
	je	.L1107	#,
	.loc 1 3080 0
	movq	-8(%rbp), %rax	# d, tmp79
	movq	8(%rax), %rdx	# d_2->regs, D.13803
	movq	-24(%rbp), %rax	# x, tmp80
	movl	8(%rax), %eax	# x_3(D)->fld[0].rtuint, D.13802
	movl	$1, %esi	#, tmp81
	movl	%eax, %ecx	# D.13804, tmp88
	salq	%cl, %rsi	# tmp88, D.13803
	movq	%rsi, %rax	# D.13803, D.13803
	notq	%rax	# D.13803
	andq	%rax, %rdx	# D.13803, D.13803
	movq	-8(%rbp), %rax	# d, tmp82
	movq	%rdx, 8(%rax)	# D.13803, d_2->regs
	.loc 1 3081 0
	movq	-8(%rbp), %rax	# d, tmp83
	movl	(%rax), %eax	# d_2->nregs, D.13804
	leal	-1(%rax), %edx	#, D.13804
	movq	-8(%rbp), %rax	# d, tmp84
	movl	%edx, (%rax)	# D.13804, d_2->nregs
.L1107:
	.loc 1 3083 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	parms_set, .-parms_set
	.globl	find_first_parameter_load
	.type	find_first_parameter_load, @function
find_first_parameter_load:
.LFB66:
	.loc 1 3090 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# call_insn, call_insn
	movq	%rsi, -48(%rbp)	# boundary, boundary
	.loc 1 3097 0
	movq	$0, -8(%rbp)	#, parm.regs
	.loc 1 3098 0
	movl	$0, -16(%rbp)	#, parm.nregs
	.loc 1 3099 0
	movq	-40(%rbp), %rax	# call_insn, tmp91
	movq	64(%rax), %rax	# call_insn_4(D)->fld[7].rtx, tmp92
	movq	%rax, -32(%rbp)	# tmp92, p
	jmp	.L1110	#
.L1114:
	.loc 1 3100 0
	movq	-32(%rbp), %rax	# p, tmp93
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.13805
	movzwl	(%rax), %eax	# _6->code, D.13806
	cmpw	$48, %ax	#, D.13806
	jne	.L1111	#,
	.loc 1 3101 0
	movq	-32(%rbp), %rax	# p, tmp94
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.13805
	movq	8(%rax), %rax	# _8->fld[0].rtx, D.13805
	movzwl	(%rax), %eax	# _9->code, D.13806
	cmpw	$61, %ax	#, D.13806
	jne	.L1111	#,
	.loc 1 3103 0
	movq	-32(%rbp), %rax	# p, tmp95
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.13805
	movq	8(%rax), %rax	# _11->fld[0].rtx, D.13805
	movl	8(%rax), %eax	# _12->fld[0].rtuint, D.13807
	cmpl	$52, %eax	#, D.13807
	jbe	.L1112	#,
	.loc 1 3104 0
	movl	$__FUNCTION__.10144, %edx	#,
	movl	$3104, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1112:
	.loc 1 3108 0
	movq	-32(%rbp), %rax	# p, tmp96
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.13805
	movq	8(%rax), %rax	# _14->fld[0].rtx, D.13805
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.13807
	movl	%eax, %edi	# D.13808,
	call	ix86_function_arg_regno_p	#
	xorl	$1, %eax	#, D.13809
	testb	%al, %al	# D.13809
	je	.L1113	#,
	.loc 1 3109 0
	jmp	.L1111	#
.L1113:
	.loc 1 3111 0
	movq	-8(%rbp), %rdx	# parm.regs, D.13810
	movq	-32(%rbp), %rax	# p, tmp97
	movq	8(%rax), %rax	# p_1->fld[0].rtx, D.13805
	movq	8(%rax), %rax	# _21->fld[0].rtx, D.13805
	movl	8(%rax), %eax	# _22->fld[0].rtuint, D.13807
	movl	$1, %esi	#, tmp98
	movl	%eax, %ecx	# D.13808, tmp114
	salq	%cl, %rsi	# tmp114, D.13810
	movq	%rsi, %rax	# D.13810, D.13810
	orq	%rdx, %rax	# D.13810, D.13810
	movq	%rax, -8(%rbp)	# D.13810, parm.regs
	.loc 1 3112 0
	movl	-16(%rbp), %eax	# parm.nregs, D.13808
	addl	$1, %eax	#, D.13808
	movl	%eax, -16(%rbp)	# D.13808, parm.nregs
.L1111:
	.loc 1 3099 0
	movq	-32(%rbp), %rax	# p, tmp99
	movq	16(%rax), %rax	# p_1->fld[1].rtx, tmp100
	movq	%rax, -32(%rbp)	# tmp100, p
.L1110:
	.loc 1 3099 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	jne	.L1114	#,
	.loc 1 3114 0 is_stmt 1
	movq	-40(%rbp), %rax	# call_insn, tmp101
	movq	%rax, -24(%rbp)	# tmp101, before
	.loc 1 3117 0
	jmp	.L1115	#
.L1120:
	.loc 1 3119 0
	movq	-24(%rbp), %rax	# before, tmp102
	movq	16(%rax), %rax	# before_2->fld[1].rtx, tmp103
	movq	%rax, -24(%rbp)	# tmp103, before
	.loc 1 3123 0
	movq	-24(%rbp), %rax	# before, tmp104
	movzwl	(%rax), %eax	# before_33->code, D.13806
	cmpw	$34, %ax	#, D.13806
	jne	.L1116	#,
	.loc 1 3124 0
	jmp	.L1117	#
.L1116:
	.loc 1 3130 0
	movq	-24(%rbp), %rax	# before, tmp105
	movzwl	(%rax), %eax	# before_33->code, D.13806
	cmpw	$36, %ax	#, D.13806
	jne	.L1118	#,
	.loc 1 3132 0
	movq	-24(%rbp), %rax	# before, tmp106
	cmpq	-48(%rbp), %rax	# boundary, tmp106
	je	.L1119	#,
	.loc 1 3133 0
	movl	$__FUNCTION__.10144, %edx	#,
	movl	$3133, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1119:
	.loc 1 3134 0
	jmp	.L1117	#
.L1118:
	.loc 1 3137 0
	movq	-24(%rbp), %rax	# before, tmp107
	movzwl	(%rax), %eax	# before_33->code, D.13806
	movzwl	%ax, %eax	# D.13806, D.13808
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13811
	cmpb	$105, %al	#, D.13811
	jne	.L1115	#,
	.loc 1 3138 0
	movq	-24(%rbp), %rax	# before, tmp109
	movq	32(%rax), %rax	# before_33->fld[3].rtx, D.13805
	leaq	-16(%rbp), %rdx	#, tmp110
	movl	$parms_set, %esi	#,
	movq	%rax, %rdi	# D.13805,
	call	note_stores	#
.L1115:
	.loc 1 3117 0 discriminator 1
	movl	-16(%rbp), %eax	# parm.nregs, D.13808
	testl	%eax, %eax	# D.13808
	je	.L1117	#,
	.loc 1 3117 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# before, tmp111
	cmpq	-48(%rbp), %rax	# boundary, tmp111
	jne	.L1120	#,
.L1117:
	.loc 1 3140 0 is_stmt 1
	movq	-24(%rbp), %rax	# before, D.13812
	.loc 1 3141 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	find_first_parameter_load, .-find_first_parameter_load
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9454, @object
	.size	__FUNCTION__.9454, 17
__FUNCTION__.9454:
	.string	"insn_dependent_p"
	.align 16
	.type	__FUNCTION__.9578, @object
	.size	__FUNCTION__.9578, 24
__FUNCTION__.9578:
	.string	"reg_overlap_mentioned_p"
	.type	__FUNCTION__.9648, @object
	.size	__FUNCTION__.9648, 14
__FUNCTION__.9648:
	.string	"dead_or_set_p"
	.align 16
	.type	__FUNCTION__.9694, @object
	.size	__FUNCTION__.9694, 16
__FUNCTION__.9694:
	.string	"find_reg_fusage"
	.type	__FUNCTION__.9734, @object
	.size	__FUNCTION__.9734, 12
__FUNCTION__.9734:
	.string	"remove_note"
	.type	__FUNCTION__.9942, @object
	.size	__FUNCTION__.9942, 12
__FUNCTION__.9942:
	.string	"replace_rtx"
	.align 16
	.type	__FUNCTION__.10121, @object
	.size	__FUNCTION__.10121, 20
__FUNCTION__.10121:
	.string	"subreg_regno_offset"
	.align 16
	.type	__FUNCTION__.10144, @object
	.size	__FUNCTION__.10144, 26
__FUNCTION__.10144:
	.string	"find_first_parameter_load"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "machmode.h"
	.file 6 "hard-reg-set.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2cf4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF506
	.byte	0x1
	.long	.LASF507
	.long	.LASF508
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x2
	.byte	0x7d
	.long	0x1f1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x9b7
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xdf
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x9c7
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF509
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF53
	.byte	0x4
	.byte	0x4
	.value	0x4b2
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF17
	.sleb128 0
	.uleb128 0xd
	.long	.LASF18
	.sleb128 1
	.uleb128 0xd
	.long	.LASF19
	.sleb128 2
	.uleb128 0xd
	.long	.LASF20
	.sleb128 3
	.uleb128 0xd
	.long	.LASF21
	.sleb128 4
	.uleb128 0xd
	.long	.LASF22
	.sleb128 5
	.uleb128 0xd
	.long	.LASF23
	.sleb128 6
	.uleb128 0xd
	.long	.LASF24
	.sleb128 7
	.uleb128 0xd
	.long	.LASF25
	.sleb128 8
	.uleb128 0xd
	.long	.LASF26
	.sleb128 9
	.uleb128 0xd
	.long	.LASF27
	.sleb128 10
	.uleb128 0xd
	.long	.LASF28
	.sleb128 11
	.uleb128 0xd
	.long	.LASF29
	.sleb128 12
	.uleb128 0xd
	.long	.LASF30
	.sleb128 13
	.uleb128 0xd
	.long	.LASF31
	.sleb128 14
	.uleb128 0xd
	.long	.LASF32
	.sleb128 15
	.uleb128 0xd
	.long	.LASF33
	.sleb128 16
	.uleb128 0xd
	.long	.LASF34
	.sleb128 17
	.uleb128 0xd
	.long	.LASF35
	.sleb128 18
	.uleb128 0xd
	.long	.LASF36
	.sleb128 19
	.uleb128 0xd
	.long	.LASF37
	.sleb128 20
	.uleb128 0xd
	.long	.LASF38
	.sleb128 21
	.uleb128 0xd
	.long	.LASF39
	.sleb128 22
	.uleb128 0xd
	.long	.LASF40
	.sleb128 23
	.uleb128 0xd
	.long	.LASF41
	.sleb128 24
	.uleb128 0xd
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF43
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF44
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF45
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF46
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF47
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF48
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF49
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF50
	.uleb128 0xf
	.long	0x224
	.long	0x23b
	.uleb128 0x10
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x241
	.uleb128 0x11
	.long	0x224
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF51
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x12
	.long	.LASF54
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.long	0x3c9
	.uleb128 0xd
	.long	.LASF55
	.sleb128 0
	.uleb128 0xd
	.long	.LASF56
	.sleb128 1
	.uleb128 0xd
	.long	.LASF57
	.sleb128 2
	.uleb128 0xd
	.long	.LASF58
	.sleb128 3
	.uleb128 0xd
	.long	.LASF59
	.sleb128 4
	.uleb128 0xd
	.long	.LASF60
	.sleb128 5
	.uleb128 0xd
	.long	.LASF61
	.sleb128 6
	.uleb128 0xd
	.long	.LASF62
	.sleb128 7
	.uleb128 0xd
	.long	.LASF63
	.sleb128 8
	.uleb128 0xd
	.long	.LASF64
	.sleb128 9
	.uleb128 0xd
	.long	.LASF65
	.sleb128 10
	.uleb128 0xd
	.long	.LASF66
	.sleb128 11
	.uleb128 0xd
	.long	.LASF67
	.sleb128 12
	.uleb128 0xd
	.long	.LASF68
	.sleb128 13
	.uleb128 0xd
	.long	.LASF69
	.sleb128 14
	.uleb128 0xd
	.long	.LASF70
	.sleb128 15
	.uleb128 0xd
	.long	.LASF71
	.sleb128 16
	.uleb128 0xd
	.long	.LASF72
	.sleb128 17
	.uleb128 0xd
	.long	.LASF73
	.sleb128 18
	.uleb128 0xd
	.long	.LASF74
	.sleb128 19
	.uleb128 0xd
	.long	.LASF75
	.sleb128 20
	.uleb128 0xd
	.long	.LASF76
	.sleb128 21
	.uleb128 0xd
	.long	.LASF77
	.sleb128 22
	.uleb128 0xd
	.long	.LASF78
	.sleb128 23
	.uleb128 0xd
	.long	.LASF79
	.sleb128 24
	.uleb128 0xd
	.long	.LASF80
	.sleb128 25
	.uleb128 0xd
	.long	.LASF81
	.sleb128 26
	.uleb128 0xd
	.long	.LASF82
	.sleb128 27
	.uleb128 0xd
	.long	.LASF83
	.sleb128 28
	.uleb128 0xd
	.long	.LASF84
	.sleb128 29
	.uleb128 0xd
	.long	.LASF85
	.sleb128 30
	.uleb128 0xd
	.long	.LASF86
	.sleb128 31
	.uleb128 0xd
	.long	.LASF87
	.sleb128 32
	.uleb128 0xd
	.long	.LASF88
	.sleb128 33
	.uleb128 0xd
	.long	.LASF89
	.sleb128 34
	.uleb128 0xd
	.long	.LASF90
	.sleb128 35
	.uleb128 0xd
	.long	.LASF91
	.sleb128 36
	.uleb128 0xd
	.long	.LASF92
	.sleb128 37
	.uleb128 0xd
	.long	.LASF93
	.sleb128 38
	.uleb128 0xd
	.long	.LASF94
	.sleb128 39
	.uleb128 0xd
	.long	.LASF95
	.sleb128 40
	.uleb128 0xd
	.long	.LASF96
	.sleb128 41
	.uleb128 0xd
	.long	.LASF97
	.sleb128 42
	.uleb128 0xd
	.long	.LASF98
	.sleb128 43
	.uleb128 0xd
	.long	.LASF99
	.sleb128 44
	.uleb128 0xd
	.long	.LASF100
	.sleb128 45
	.uleb128 0xd
	.long	.LASF101
	.sleb128 46
	.uleb128 0xd
	.long	.LASF102
	.sleb128 47
	.uleb128 0xd
	.long	.LASF103
	.sleb128 48
	.uleb128 0xd
	.long	.LASF104
	.sleb128 49
	.uleb128 0xd
	.long	.LASF105
	.sleb128 50
	.uleb128 0xd
	.long	.LASF106
	.sleb128 51
	.uleb128 0xd
	.long	.LASF107
	.sleb128 52
	.uleb128 0xd
	.long	.LASF108
	.sleb128 53
	.uleb128 0xd
	.long	.LASF109
	.sleb128 54
	.uleb128 0xd
	.long	.LASF110
	.sleb128 55
	.uleb128 0xd
	.long	.LASF111
	.sleb128 56
	.uleb128 0xd
	.long	.LASF112
	.sleb128 57
	.uleb128 0xd
	.long	.LASF113
	.sleb128 58
	.uleb128 0xd
	.long	.LASF114
	.sleb128 59
	.byte	0
	.uleb128 0x12
	.long	.LASF115
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.long	0x412
	.uleb128 0xd
	.long	.LASF116
	.sleb128 0
	.uleb128 0xd
	.long	.LASF117
	.sleb128 1
	.uleb128 0xd
	.long	.LASF118
	.sleb128 2
	.uleb128 0xd
	.long	.LASF119
	.sleb128 3
	.uleb128 0xd
	.long	.LASF120
	.sleb128 4
	.uleb128 0xd
	.long	.LASF121
	.sleb128 5
	.uleb128 0xd
	.long	.LASF122
	.sleb128 6
	.uleb128 0xd
	.long	.LASF123
	.sleb128 7
	.uleb128 0xd
	.long	.LASF124
	.sleb128 8
	.uleb128 0xd
	.long	.LASF125
	.sleb128 9
	.byte	0
	.uleb128 0x12
	.long	.LASF126
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x80e
	.uleb128 0xd
	.long	.LASF127
	.sleb128 0
	.uleb128 0x13
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF128
	.sleb128 2
	.uleb128 0xd
	.long	.LASF129
	.sleb128 3
	.uleb128 0xd
	.long	.LASF130
	.sleb128 4
	.uleb128 0xd
	.long	.LASF131
	.sleb128 5
	.uleb128 0xd
	.long	.LASF132
	.sleb128 6
	.uleb128 0xd
	.long	.LASF133
	.sleb128 7
	.uleb128 0xd
	.long	.LASF134
	.sleb128 8
	.uleb128 0xd
	.long	.LASF135
	.sleb128 9
	.uleb128 0xd
	.long	.LASF136
	.sleb128 10
	.uleb128 0xd
	.long	.LASF137
	.sleb128 11
	.uleb128 0xd
	.long	.LASF138
	.sleb128 12
	.uleb128 0xd
	.long	.LASF139
	.sleb128 13
	.uleb128 0xd
	.long	.LASF140
	.sleb128 14
	.uleb128 0xd
	.long	.LASF141
	.sleb128 15
	.uleb128 0xd
	.long	.LASF142
	.sleb128 16
	.uleb128 0xd
	.long	.LASF143
	.sleb128 17
	.uleb128 0xd
	.long	.LASF144
	.sleb128 18
	.uleb128 0xd
	.long	.LASF145
	.sleb128 19
	.uleb128 0xd
	.long	.LASF146
	.sleb128 20
	.uleb128 0xd
	.long	.LASF147
	.sleb128 21
	.uleb128 0xd
	.long	.LASF148
	.sleb128 22
	.uleb128 0xd
	.long	.LASF149
	.sleb128 23
	.uleb128 0xd
	.long	.LASF150
	.sleb128 24
	.uleb128 0xd
	.long	.LASF151
	.sleb128 25
	.uleb128 0xd
	.long	.LASF152
	.sleb128 26
	.uleb128 0xd
	.long	.LASF153
	.sleb128 27
	.uleb128 0xd
	.long	.LASF154
	.sleb128 28
	.uleb128 0xd
	.long	.LASF155
	.sleb128 29
	.uleb128 0xd
	.long	.LASF156
	.sleb128 30
	.uleb128 0xd
	.long	.LASF157
	.sleb128 31
	.uleb128 0xd
	.long	.LASF158
	.sleb128 32
	.uleb128 0xd
	.long	.LASF159
	.sleb128 33
	.uleb128 0xd
	.long	.LASF160
	.sleb128 34
	.uleb128 0xd
	.long	.LASF161
	.sleb128 35
	.uleb128 0xd
	.long	.LASF162
	.sleb128 36
	.uleb128 0xd
	.long	.LASF163
	.sleb128 37
	.uleb128 0xd
	.long	.LASF164
	.sleb128 38
	.uleb128 0xd
	.long	.LASF165
	.sleb128 39
	.uleb128 0xd
	.long	.LASF166
	.sleb128 40
	.uleb128 0xd
	.long	.LASF167
	.sleb128 41
	.uleb128 0xd
	.long	.LASF168
	.sleb128 42
	.uleb128 0xd
	.long	.LASF169
	.sleb128 43
	.uleb128 0xd
	.long	.LASF170
	.sleb128 44
	.uleb128 0xd
	.long	.LASF171
	.sleb128 45
	.uleb128 0xd
	.long	.LASF172
	.sleb128 46
	.uleb128 0x13
	.string	"SET"
	.sleb128 47
	.uleb128 0x13
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF173
	.sleb128 49
	.uleb128 0xd
	.long	.LASF174
	.sleb128 50
	.uleb128 0xd
	.long	.LASF175
	.sleb128 51
	.uleb128 0xd
	.long	.LASF176
	.sleb128 52
	.uleb128 0xd
	.long	.LASF177
	.sleb128 53
	.uleb128 0xd
	.long	.LASF178
	.sleb128 54
	.uleb128 0xd
	.long	.LASF179
	.sleb128 55
	.uleb128 0xd
	.long	.LASF180
	.sleb128 56
	.uleb128 0xd
	.long	.LASF181
	.sleb128 57
	.uleb128 0xd
	.long	.LASF182
	.sleb128 58
	.uleb128 0x13
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF183
	.sleb128 60
	.uleb128 0x13
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF184
	.sleb128 62
	.uleb128 0xd
	.long	.LASF185
	.sleb128 63
	.uleb128 0xd
	.long	.LASF186
	.sleb128 64
	.uleb128 0xd
	.long	.LASF187
	.sleb128 65
	.uleb128 0x13
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF188
	.sleb128 67
	.uleb128 0xd
	.long	.LASF189
	.sleb128 68
	.uleb128 0x13
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF190
	.sleb128 70
	.uleb128 0xd
	.long	.LASF191
	.sleb128 71
	.uleb128 0xd
	.long	.LASF192
	.sleb128 72
	.uleb128 0xd
	.long	.LASF193
	.sleb128 73
	.uleb128 0xd
	.long	.LASF194
	.sleb128 74
	.uleb128 0xd
	.long	.LASF195
	.sleb128 75
	.uleb128 0xd
	.long	.LASF196
	.sleb128 76
	.uleb128 0x13
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF197
	.sleb128 78
	.uleb128 0x13
	.string	"DIV"
	.sleb128 79
	.uleb128 0x13
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF198
	.sleb128 81
	.uleb128 0xd
	.long	.LASF199
	.sleb128 82
	.uleb128 0x13
	.string	"AND"
	.sleb128 83
	.uleb128 0x13
	.string	"IOR"
	.sleb128 84
	.uleb128 0x13
	.string	"XOR"
	.sleb128 85
	.uleb128 0x13
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF200
	.sleb128 87
	.uleb128 0xd
	.long	.LASF201
	.sleb128 88
	.uleb128 0xd
	.long	.LASF202
	.sleb128 89
	.uleb128 0xd
	.long	.LASF203
	.sleb128 90
	.uleb128 0xd
	.long	.LASF204
	.sleb128 91
	.uleb128 0xd
	.long	.LASF205
	.sleb128 92
	.uleb128 0xd
	.long	.LASF206
	.sleb128 93
	.uleb128 0xd
	.long	.LASF207
	.sleb128 94
	.uleb128 0xd
	.long	.LASF208
	.sleb128 95
	.uleb128 0xd
	.long	.LASF209
	.sleb128 96
	.uleb128 0xd
	.long	.LASF210
	.sleb128 97
	.uleb128 0xd
	.long	.LASF211
	.sleb128 98
	.uleb128 0xd
	.long	.LASF212
	.sleb128 99
	.uleb128 0xd
	.long	.LASF213
	.sleb128 100
	.uleb128 0xd
	.long	.LASF214
	.sleb128 101
	.uleb128 0x13
	.string	"NE"
	.sleb128 102
	.uleb128 0x13
	.string	"EQ"
	.sleb128 103
	.uleb128 0x13
	.string	"GE"
	.sleb128 104
	.uleb128 0x13
	.string	"GT"
	.sleb128 105
	.uleb128 0x13
	.string	"LE"
	.sleb128 106
	.uleb128 0x13
	.string	"LT"
	.sleb128 107
	.uleb128 0x13
	.string	"GEU"
	.sleb128 108
	.uleb128 0x13
	.string	"GTU"
	.sleb128 109
	.uleb128 0x13
	.string	"LEU"
	.sleb128 110
	.uleb128 0x13
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF215
	.sleb128 112
	.uleb128 0xd
	.long	.LASF216
	.sleb128 113
	.uleb128 0xd
	.long	.LASF217
	.sleb128 114
	.uleb128 0xd
	.long	.LASF218
	.sleb128 115
	.uleb128 0xd
	.long	.LASF219
	.sleb128 116
	.uleb128 0xd
	.long	.LASF220
	.sleb128 117
	.uleb128 0xd
	.long	.LASF221
	.sleb128 118
	.uleb128 0xd
	.long	.LASF222
	.sleb128 119
	.uleb128 0xd
	.long	.LASF223
	.sleb128 120
	.uleb128 0xd
	.long	.LASF224
	.sleb128 121
	.uleb128 0xd
	.long	.LASF225
	.sleb128 122
	.uleb128 0xd
	.long	.LASF226
	.sleb128 123
	.uleb128 0xd
	.long	.LASF227
	.sleb128 124
	.uleb128 0xd
	.long	.LASF228
	.sleb128 125
	.uleb128 0x13
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF229
	.sleb128 127
	.uleb128 0xd
	.long	.LASF230
	.sleb128 128
	.uleb128 0x13
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF231
	.sleb128 130
	.uleb128 0x13
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF232
	.sleb128 132
	.uleb128 0xd
	.long	.LASF233
	.sleb128 133
	.uleb128 0xd
	.long	.LASF234
	.sleb128 134
	.uleb128 0xd
	.long	.LASF235
	.sleb128 135
	.uleb128 0xd
	.long	.LASF236
	.sleb128 136
	.uleb128 0xd
	.long	.LASF237
	.sleb128 137
	.uleb128 0xd
	.long	.LASF238
	.sleb128 138
	.uleb128 0xd
	.long	.LASF239
	.sleb128 139
	.uleb128 0xd
	.long	.LASF240
	.sleb128 140
	.uleb128 0xd
	.long	.LASF241
	.sleb128 141
	.uleb128 0xd
	.long	.LASF242
	.sleb128 142
	.uleb128 0xd
	.long	.LASF243
	.sleb128 143
	.uleb128 0xd
	.long	.LASF244
	.sleb128 144
	.uleb128 0xd
	.long	.LASF245
	.sleb128 145
	.uleb128 0xd
	.long	.LASF246
	.sleb128 146
	.uleb128 0xd
	.long	.LASF247
	.sleb128 147
	.uleb128 0xd
	.long	.LASF248
	.sleb128 148
	.uleb128 0xd
	.long	.LASF249
	.sleb128 149
	.uleb128 0xd
	.long	.LASF250
	.sleb128 150
	.uleb128 0xd
	.long	.LASF251
	.sleb128 151
	.uleb128 0x13
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF252
	.sleb128 153
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x88f
	.uleb128 0x5
	.long	.LASF253
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF254
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF255
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF256
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF259
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF260
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x2
	.byte	0x56
	.long	0x80e
	.uleb128 0x14
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x8df
	.uleb128 0x8
	.long	.LASF262
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF263
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF264
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF265
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF266
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF267
	.byte	0x2
	.byte	0x63
	.long	0x89a
	.uleb128 0x15
	.long	.LASF510
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x985
	.uleb128 0x16
	.long	.LASF268
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x16
	.long	.LASF269
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x16
	.long	.LASF270
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x16
	.long	.LASF271
	.byte	0x2
	.byte	0x6c
	.long	0x23b
	.uleb128 0x17
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x16
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x16
	.long	.LASF272
	.byte	0x2
	.byte	0x6f
	.long	0x254
	.uleb128 0x16
	.long	.LASF273
	.byte	0x2
	.byte	0x70
	.long	0x88f
	.uleb128 0x16
	.long	.LASF274
	.byte	0x2
	.byte	0x71
	.long	0x98a
	.uleb128 0x16
	.long	.LASF275
	.byte	0x2
	.byte	0x72
	.long	0x995
	.uleb128 0x16
	.long	.LASF276
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x17
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x9a0
	.uleb128 0x16
	.long	.LASF277
	.byte	0x2
	.byte	0x75
	.long	0x9a6
	.byte	0
	.uleb128 0x18
	.long	.LASF278
	.uleb128 0x3
	.byte	0x8
	.long	0x985
	.uleb128 0x18
	.long	.LASF279
	.uleb128 0x3
	.byte	0x8
	.long	0x990
	.uleb128 0x18
	.long	.LASF280
	.uleb128 0x3
	.byte	0x8
	.long	0x99b
	.uleb128 0x3
	.byte	0x8
	.long	0x8df
	.uleb128 0x7
	.long	.LASF281
	.byte	0x2
	.byte	0x76
	.long	0x8ea
	.uleb128 0xf
	.long	0x9ac
	.long	0x9c7
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0x9d7
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF282
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xa99
	.uleb128 0xd
	.long	.LASF283
	.sleb128 1
	.uleb128 0xd
	.long	.LASF284
	.sleb128 2
	.uleb128 0xd
	.long	.LASF285
	.sleb128 3
	.uleb128 0xd
	.long	.LASF286
	.sleb128 4
	.uleb128 0xd
	.long	.LASF287
	.sleb128 5
	.uleb128 0xd
	.long	.LASF288
	.sleb128 6
	.uleb128 0xd
	.long	.LASF289
	.sleb128 7
	.uleb128 0xd
	.long	.LASF290
	.sleb128 8
	.uleb128 0xd
	.long	.LASF291
	.sleb128 9
	.uleb128 0xd
	.long	.LASF292
	.sleb128 10
	.uleb128 0xd
	.long	.LASF293
	.sleb128 11
	.uleb128 0xd
	.long	.LASF294
	.sleb128 12
	.uleb128 0xd
	.long	.LASF295
	.sleb128 13
	.uleb128 0xd
	.long	.LASF296
	.sleb128 14
	.uleb128 0xd
	.long	.LASF297
	.sleb128 15
	.uleb128 0xd
	.long	.LASF298
	.sleb128 16
	.uleb128 0xd
	.long	.LASF299
	.sleb128 17
	.uleb128 0xd
	.long	.LASF300
	.sleb128 18
	.uleb128 0xd
	.long	.LASF301
	.sleb128 19
	.uleb128 0xd
	.long	.LASF302
	.sleb128 20
	.uleb128 0xd
	.long	.LASF303
	.sleb128 21
	.uleb128 0xd
	.long	.LASF304
	.sleb128 22
	.uleb128 0xd
	.long	.LASF305
	.sleb128 23
	.uleb128 0xd
	.long	.LASF306
	.sleb128 24
	.uleb128 0xd
	.long	.LASF307
	.sleb128 25
	.uleb128 0xd
	.long	.LASF308
	.sleb128 26
	.uleb128 0xd
	.long	.LASF309
	.sleb128 27
	.uleb128 0xd
	.long	.LASF310
	.sleb128 28
	.uleb128 0xd
	.long	.LASF311
	.sleb128 29
	.uleb128 0xd
	.long	.LASF312
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF313
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xb48
	.uleb128 0xd
	.long	.LASF314
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF315
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF316
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF317
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF318
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF319
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF320
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF321
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF322
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF323
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF324
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF325
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF326
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF327
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF328
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF329
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF330
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF331
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF332
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF333
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF334
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF335
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF336
	.sleb128 -78
	.byte	0
	.uleb128 0x19
	.long	.LASF337
	.byte	0x2
	.value	0x5e2
	.long	0xb54
	.uleb128 0x3
	.byte	0x8
	.long	0xb5a
	.uleb128 0x1a
	.long	0x139
	.long	0xb6e
	.uleb128 0x1b
	.long	0xb6e
	.uleb128 0x1b
	.long	0x1f8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF338
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xbca
	.uleb128 0xd
	.long	.LASF339
	.sleb128 0
	.uleb128 0xd
	.long	.LASF340
	.sleb128 1
	.uleb128 0xd
	.long	.LASF341
	.sleb128 2
	.uleb128 0xd
	.long	.LASF342
	.sleb128 3
	.uleb128 0xd
	.long	.LASF343
	.sleb128 4
	.uleb128 0xd
	.long	.LASF344
	.sleb128 5
	.uleb128 0xd
	.long	.LASF345
	.sleb128 6
	.uleb128 0xd
	.long	.LASF346
	.sleb128 7
	.uleb128 0xd
	.long	.LASF347
	.sleb128 8
	.uleb128 0xd
	.long	.LASF348
	.sleb128 9
	.uleb128 0xd
	.long	.LASF349
	.sleb128 10
	.uleb128 0xd
	.long	.LASF350
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF351
	.byte	0x6
	.byte	0x29
	.long	0x201
	.uleb128 0x1c
	.long	.LASF352
	.byte	0x10
	.byte	0x1
	.value	0x3fa
	.long	0xbfd
	.uleb128 0x1d
	.long	.LASF353
	.byte	0x1
	.value	0x3fc
	.long	0x2d
	.byte	0
	.uleb128 0x1e
	.string	"pat"
	.byte	0x1
	.value	0x3fd
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF354
	.byte	0x10
	.byte	0x1
	.value	0xbf8
	.long	0xc25
	.uleb128 0x1d
	.long	.LASF355
	.byte	0x1
	.value	0xbfa
	.long	0x139
	.byte	0
	.uleb128 0x1d
	.long	.LASF356
	.byte	0x1
	.value	0xbfb
	.long	0xbca
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF357
	.byte	0x1
	.byte	0x30
	.long	0x139
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xc99
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0x31
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.byte	0x33
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.string	"fmt"
	.byte	0x1
	.byte	0x35
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x6b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF358
	.byte	0x1
	.byte	0x7c
	.long	0x139
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1b
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0x7d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF359
	.byte	0x1
	.byte	0x7e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.byte	0x80
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.string	"fmt"
	.byte	0x1
	.byte	0x82
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0xc3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF360
	.byte	0x1
	.byte	0xcf
	.long	0x139
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xd57
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0xd0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.byte	0xd2
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF361
	.byte	0x1
	.value	0x10f
	.long	0x139
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xde0
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x110
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF359
	.byte	0x1
	.value	0x111
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x113
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x114
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x115
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x127
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF362
	.byte	0x1
	.value	0x135
	.long	0x1fa
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xe10
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x136
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF363
	.byte	0x1
	.value	0x149
	.long	0x2d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xe40
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x14a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF364
	.byte	0x1
	.value	0x160
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xf07
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x161
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF366
	.byte	0x1
	.value	0x162
	.long	0xb6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x164
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF368
	.byte	0x1
	.value	0x165
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x166
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF369
	.byte	0x1
	.value	0x167
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x168
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF370
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.value	0x16a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF371
	.byte	0x1
	.value	0x16b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x16c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x25
	.long	.LASF372
	.byte	0x1
	.value	0x1e8
	.long	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9d
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x1e9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF373
	.byte	0x1
	.value	0x1e9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF374
	.byte	0x1
	.value	0x1ea
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1ec
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x1ec
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x1ed
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF375
	.byte	0x1
	.value	0x1ee
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.value	0x1ef
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF377
	.byte	0x1
	.value	0x229
	.long	0x139
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1027
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x22a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0x22a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x22c
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x22d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x22e
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x25d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF378
	.byte	0x1
	.value	0x26d
	.long	0x139
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1075
	.uleb128 0x26
	.string	"beg"
	.byte	0x1
	.value	0x26e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x26e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x270
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF379
	.byte	0x1
	.value	0x27d
	.long	0x139
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c3
	.uleb128 0x26
	.string	"beg"
	.byte	0x1
	.value	0x27e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x27e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x280
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF380
	.byte	0x1
	.value	0x28b
	.long	0x139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1122
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF381
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF382
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF365
	.byte	0x1
	.value	0x28e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF383
	.byte	0x1
	.value	0x2a2
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x116e
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x2a3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF384
	.byte	0x1
	.value	0x2a4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x2a6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF385
	.byte	0x1
	.value	0x2f1
	.long	0x139
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x11cd
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x2f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF381
	.byte	0x1
	.value	0x2f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF382
	.byte	0x1
	.value	0x2f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF365
	.byte	0x1
	.value	0x2f4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF386
	.byte	0x1
	.value	0x306
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x122c
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x307
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF381
	.byte	0x1
	.value	0x307
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF382
	.byte	0x1
	.value	0x307
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF365
	.byte	0x1
	.value	0x309
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF387
	.byte	0x1
	.value	0x316
	.long	0x139
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x127c
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x317
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x317
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF384
	.byte	0x1
	.value	0x319
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF388
	.byte	0x1
	.value	0x338
	.long	0x139
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1303
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x339
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF389
	.byte	0x1
	.value	0x33a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x33a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x33c
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x33d
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x33e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x33e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF390
	.byte	0x1
	.value	0x367
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x138a
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x368
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF389
	.byte	0x1
	.value	0x369
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x369
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x36b
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x36c
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x36d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x36d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF391
	.byte	0x1
	.value	0x39f
	.long	0x139
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1401
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x3a0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x3a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x3a3
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x3a4
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x3a5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x3a5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF392
	.byte	0x1
	.value	0x3d6
	.long	0x139
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1460
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x3d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.value	0x3d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x3d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF417
	.long	0x1470
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9454
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x1470
	.uleb128 0x10
	.long	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	0x1460
	.uleb128 0x2c
	.long	.LASF395
	.byte	0x1
	.value	0x3ee
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ce
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x3ef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pat"
	.byte	0x1
	.value	0x3f0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF393
	.byte	0x1
	.value	0x3f1
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF394
	.byte	0x1
	.value	0x3f3
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF396
	.byte	0x1
	.value	0x401
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1527
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x402
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pat"
	.byte	0x1
	.value	0x403
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF397
	.byte	0x1
	.value	0x404
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF393
	.byte	0x1
	.value	0x406
	.long	0x1527
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbd5
	.uleb128 0x25
	.long	.LASF398
	.byte	0x1
	.value	0x40f
	.long	0x2d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x157d
	.uleb128 0x26
	.string	"pat"
	.byte	0x1
	.value	0x410
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x410
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF393
	.byte	0x1
	.value	0x412
	.long	0xbd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF399
	.byte	0x1
	.value	0x41e
	.long	0x2d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x160a
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x41f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"pat"
	.byte	0x1
	.value	0x41f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x421
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF400
	.byte	0x1
	.value	0x422
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x423
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x29
	.string	"sub"
	.byte	0x1
	.value	0x429
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF401
	.byte	0x1
	.value	0x454
	.long	0x139
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1658
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x455
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF353
	.byte	0x1
	.value	0x457
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x458
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF402
	.byte	0x1
	.value	0x474
	.long	0x139
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a8
	.uleb128 0x26
	.string	"set"
	.byte	0x1
	.value	0x475
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x477
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"dst"
	.byte	0x1
	.value	0x478
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF403
	.byte	0x1
	.value	0x49b
	.long	0x139
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1729
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x49c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x49e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x4b1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x29
	.string	"tem"
	.byte	0x1
	.value	0x4b6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF404
	.byte	0x1
	.value	0x4ce
	.long	0x2d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e6
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x4cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF394
	.byte	0x1
	.value	0x4d0
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF405
	.byte	0x1
	.value	0x4d1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF406
	.byte	0x1
	.value	0x4d2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x4d4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x4da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF407
	.byte	0x1
	.value	0x4db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x4df
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF408
	.byte	0x1
	.value	0x500
	.long	0x139
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e4
	.uleb128 0x27
	.long	.LASF409
	.byte	0x1
	.value	0x501
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x501
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x502
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"loc"
	.byte	0x1
	.value	0x503
	.long	0xb6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x505
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF411
	.byte	0x1
	.value	0x506
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x507
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x508
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF415
	.byte	0x1
	.value	0x50a
	.quad	.L397
	.uleb128 0x2e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x18c4
	.uleb128 0x28
	.long	.LASF412
	.byte	0x1
	.value	0x52d
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF413
	.byte	0x1
	.value	0x52e
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x23
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x561
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF414
	.byte	0x1
	.value	0x572
	.long	0x139
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x19b6
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF409
	.byte	0x1
	.value	0x575
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF410
	.byte	0x1
	.value	0x575
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LASF416
	.byte	0x1
	.value	0x589
	.quad	.L486
	.uleb128 0x2b
	.long	.LASF417
	.long	0x19c6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9578
	.uleb128 0x2e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1996
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x590
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x591
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x23
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x5a5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x19c6
	.uleb128 0x10
	.long	0x140
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.long	0x19b6
	.uleb128 0x25
	.long	.LASF418
	.byte	0x1
	.value	0x5bd
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5b
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x5be
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x5bf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF419
	.byte	0x1
	.value	0x5c1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x5d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.long	.LASF420
	.byte	0x1
	.value	0x5d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF422
	.byte	0x1
	.value	0x5f2
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac7
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x5f3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"fun"
	.byte	0x1
	.value	0x5f4
	.long	0x1adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF393
	.byte	0x1
	.value	0x5f5
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x5f7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.long	.LASF421
	.byte	0x1
	.value	0x5fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1adc
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1f8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1ac7
	.uleb128 0x2f
	.long	.LASF423
	.byte	0x1
	.value	0x623
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6c
	.uleb128 0x27
	.long	.LASF424
	.byte	0x1
	.value	0x624
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"fun"
	.byte	0x1
	.value	0x625
	.long	0x1b7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF393
	.byte	0x1
	.value	0x626
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF384
	.byte	0x1
	.value	0x628
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x629
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x28
	.long	.LASF421
	.byte	0x1
	.value	0x655
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1b7c
	.uleb128 0x1b
	.long	0xb6e
	.uleb128 0x1b
	.long	0x1f8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b6c
	.uleb128 0x25
	.long	.LASF425
	.byte	0x1
	.value	0x682
	.long	0x139
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bff
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x683
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x684
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF409
	.byte	0x1
	.value	0x686
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF426
	.byte	0x1
	.value	0x686
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x687
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF417
	.long	0x1c0f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9648
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x1c0f
	.uleb128 0x10
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.long	0x1bff
	.uleb128 0x25
	.long	.LASF427
	.byte	0x1
	.value	0x69f
	.long	0x139
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d0d
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x6a0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF428
	.byte	0x1
	.value	0x6a1
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LASF409
	.byte	0x1
	.value	0x6a3
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF410
	.byte	0x1
	.value	0x6a3
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF429
	.byte	0x1
	.value	0x6a4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1caa
	.uleb128 0x28
	.long	.LASF421
	.byte	0x1
	.value	0x6b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x6cc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.long	.LASF384
	.byte	0x1
	.value	0x6d0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.long	.LASF421
	.byte	0x1
	.value	0x6d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF430
	.byte	0x1
	.value	0x6f4
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d6c
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x6f5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF431
	.byte	0x1
	.value	0x6f6
	.long	0x9d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF432
	.byte	0x1
	.value	0x6f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x6f9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF434
	.byte	0x1
	.value	0x70c
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dcb
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x70d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF431
	.byte	0x1
	.value	0x70e
	.long	0x9d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF409
	.byte	0x1
	.value	0x70f
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x711
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF435
	.byte	0x1
	.value	0x72a
	.long	0x2d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e0c
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x72b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF407
	.byte	0x1
	.value	0x72d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF436
	.byte	0x1
	.value	0x73b
	.long	0x139
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee6
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x73c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x73d
	.long	0x412
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF432
	.byte	0x1
	.value	0x73e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF417
	.long	0x1ef6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9694
	.uleb128 0x2e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1e96
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x74a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x28
	.long	.LASF409
	.byte	0x1
	.value	0x755
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.long	.LASF437
	.byte	0x1
	.value	0x75c
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x75e
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x1ef6
	.uleb128 0x10
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.long	0x1ee6
	.uleb128 0x2a
	.long	.LASF438
	.byte	0x1
	.value	0x76d
	.long	0x139
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f98
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x76e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x76f
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LASF409
	.byte	0x1
	.value	0x770
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x772
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.long	.LASF439
	.byte	0x1
	.value	0x77d
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"op"
	.byte	0x1
	.value	0x77e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x77e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF440
	.byte	0x1
	.value	0x78d
	.long	0x139
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2005
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x78e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x790
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x29
	.string	"u"
	.byte	0x1
	.value	0x798
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"m"
	.byte	0x1
	.value	0x798
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF441
	.byte	0x1
	.value	0x7a6
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2064
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0x7a7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF407
	.byte	0x1
	.value	0x7a8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x7aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF417
	.long	0x2074
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9734
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x2074
	.uleb128 0x10
	.long	0x140
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.long	0x2064
	.uleb128 0x2a
	.long	.LASF442
	.byte	0x1
	.value	0x7c4
	.long	0x139
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x20c7
	.uleb128 0x27
	.long	.LASF443
	.byte	0x1
	.value	0x7c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF444
	.byte	0x1
	.value	0x7c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x7c8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF445
	.byte	0x1
	.value	0x7d7
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2122
	.uleb128 0x27
	.long	.LASF444
	.byte	0x1
	.value	0x7d8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF443
	.byte	0x1
	.value	0x7d9
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF446
	.byte	0x1
	.value	0x7db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF447
	.byte	0x1
	.value	0x7dc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF448
	.byte	0x1
	.value	0x7f6
	.long	0x139
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x21ae
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x7f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x7f9
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x81f
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x820
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x82b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF449
	.byte	0x1
	.value	0x839
	.long	0x139
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x223a
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x83a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x83c
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x862
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x863
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x86e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF450
	.byte	0x1
	.value	0x87c
	.long	0x139
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x22c6
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x87d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x87f
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x8b0
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x8b1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x8bc
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF451
	.byte	0x1
	.value	0x8c9
	.long	0x139
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2340
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x8ca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x8cc
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x8cd
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x8ce
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x929
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF452
	.byte	0x1
	.value	0x936
	.long	0x139
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x23c9
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x937
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x939
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x93a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x93a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x93b
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x965
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF453
	.byte	0x1
	.value	0x976
	.long	0x2d
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x249b
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x977
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF454
	.byte	0x1
	.value	0x977
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"to"
	.byte	0x1
	.value	0x977
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x979
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x979
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x97a
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF417
	.long	0x249b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9942
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x2479
	.uleb128 0x29
	.string	"new"
	.byte	0x1
	.value	0x98a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x29
	.string	"new"
	.byte	0x1
	.value	0x99b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x2064
	.uleb128 0x25
	.long	.LASF455
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2570
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x9c5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF456
	.byte	0x1
	.value	0x9c6
	.long	0xb6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF355
	.byte	0x1
	.value	0x9c7
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.long	.LASF457
	.byte	0x1
	.value	0x9c8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x9ca
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x9cb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x9cc
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x2550
	.uleb128 0x28
	.long	.LASF458
	.byte	0x1
	.value	0x9f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0xa16
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF511
	.byte	0x1
	.value	0xa24
	.long	0x139
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d8
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xa25
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0xa27
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xa28
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0xa28
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0xa29
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF459
	.byte	0x1
	.value	0xa5b
	.long	0x139
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2668
	.uleb128 0x27
	.long	.LASF365
	.byte	0x1
	.value	0xa5c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xa5e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xa61
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0xa67
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF460
	.byte	0x1
	.value	0xa68
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF461
	.byte	0x1
	.value	0xa8d
	.long	0x139
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x270e
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xa8e
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0xa8f
	.long	0xb48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF393
	.byte	0x1
	.value	0xa90
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF462
	.byte	0x1
	.value	0xa92
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF463
	.byte	0x1
	.value	0xa93
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF464
	.byte	0x1
	.value	0xa94
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xa95
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0xab5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF465
	.byte	0x1
	.value	0xacd
	.long	0x2d
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2785
	.uleb128 0x27
	.long	.LASF409
	.byte	0x1
	.value	0xace
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xacf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0xad1
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xad2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0xad2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"tem"
	.byte	0x1
	.value	0xad3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF466
	.byte	0x1
	.value	0xaf0
	.long	0x139
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b6
	.uleb128 0x26
	.string	"op"
	.byte	0x1
	.value	0xaf1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF467
	.byte	0x1
	.value	0xb13
	.long	0x139
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f3
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xb14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.value	0xb14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF468
	.byte	0x1
	.value	0xb1d
	.long	0x139
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2823
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xb1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF469
	.byte	0x1
	.value	0xb3c
	.long	0x139
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x289d
	.uleb128 0x27
	.long	.LASF454
	.byte	0x1
	.value	0xb3d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"to"
	.byte	0x1
	.value	0xb3e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF470
	.byte	0x1
	.value	0xb3f
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF471
	.byte	0x1
	.value	0xb41
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF472
	.byte	0x1
	.value	0xb42
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.value	0xb43
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF473
	.byte	0x1
	.value	0xb82
	.long	0x139
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x2915
	.uleb128 0x26
	.string	"loc"
	.byte	0x1
	.value	0xb83
	.long	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0xb83
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0xb85
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0xb86
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xb87
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0xb87
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF474
	.byte	0x1
	.value	0xb9e
	.long	0x1f1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x2999
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xb9f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF475
	.byte	0x1
	.value	0xba1
	.long	0x254
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0xba2
	.long	0x254
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF476
	.byte	0x1
	.value	0xba3
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF477
	.byte	0x1
	.value	0xba4
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF478
	.byte	0x1
	.value	0xba5
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF417
	.long	0x29a9
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x29a9
	.uleb128 0x10
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.long	0x2999
	.uleb128 0x25
	.long	.LASF479
	.byte	0x1
	.value	0xbcc
	.long	0x1f1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a6f
	.uleb128 0x27
	.long	.LASF480
	.byte	0x1
	.value	0xbcd
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF481
	.byte	0x1
	.value	0xbce
	.long	0x254
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF264
	.byte	0x1
	.value	0xbcf
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF482
	.byte	0x1
	.value	0xbd0
	.long	0x254
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF483
	.byte	0x1
	.value	0xbd2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF484
	.byte	0x1
	.value	0xbd2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF485
	.byte	0x1
	.value	0xbd3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF486
	.byte	0x1
	.value	0xbd3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF487
	.byte	0x1
	.value	0xbd4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF417
	.long	0x2a6f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10121
	.byte	0
	.uleb128 0x11
	.long	0x22b
	.uleb128 0x25
	.long	.LASF488
	.byte	0x1
	.value	0xbea
	.long	0x1f1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad1
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xbeb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0xbed
	.long	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF489
	.byte	0x1
	.value	0xbee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF409
	.byte	0x1
	.value	0xbef
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF490
	.byte	0x1
	.value	0xc00
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b28
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xc01
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pat"
	.byte	0x1
	.value	0xc01
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF393
	.byte	0x1
	.value	0xc02
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"d"
	.byte	0x1
	.value	0xc04
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbfd
	.uleb128 0x25
	.long	.LASF491
	.byte	0x1
	.value	0xc10
	.long	0x2d
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bad
	.uleb128 0x27
	.long	.LASF492
	.byte	0x1
	.value	0xc11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF493
	.byte	0x1
	.value	0xc11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF494
	.byte	0x1
	.value	0xc13
	.long	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0xc14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF495
	.byte	0x1
	.value	0xc14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF417
	.long	0x2bbd
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10144
	.byte	0
	.uleb128 0xf
	.long	0x224
	.long	0x2bbd
	.uleb128 0x10
	.long	0x140
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.long	0x2bad
	.uleb128 0x36
	.long	.LASF496
	.byte	0x1
	.byte	0x28
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	target_flags
	.uleb128 0xf
	.long	0x3c9
	.long	0x2be7
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF115
	.byte	0x5
	.byte	0x34
	.long	0x2bf2
	.uleb128 0x11
	.long	0x2bd7
	.uleb128 0xf
	.long	0x208
	.long	0x2c07
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF497
	.byte	0x5
	.byte	0x50
	.long	0x2c12
	.uleb128 0x11
	.long	0x2bf7
	.uleb128 0xf
	.long	0x20f
	.long	0x2c27
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF498
	.byte	0x5
	.byte	0x60
	.long	0x2c32
	.uleb128 0x11
	.long	0x2c17
	.uleb128 0xf
	.long	0x208
	.long	0x2c47
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF499
	.byte	0x2
	.byte	0x36
	.long	0x2c52
	.uleb128 0x11
	.long	0x2c37
	.uleb128 0xf
	.long	0x23b
	.long	0x2c67
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF500
	.byte	0x2
	.byte	0x3c
	.long	0x2c72
	.uleb128 0x11
	.long	0x2c57
	.uleb128 0xf
	.long	0x224
	.long	0x2c87
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x37
	.long	.LASF501
	.byte	0x2
	.byte	0x3f
	.long	0x2c92
	.uleb128 0x11
	.long	0x2c77
	.uleb128 0xf
	.long	0x2d
	.long	0x2ca7
	.uleb128 0x10
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x38
	.long	.LASF502
	.byte	0x2
	.value	0x611
	.long	0x2c97
	.uleb128 0xf
	.long	0x2d
	.long	0x2cc3
	.uleb128 0x10
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF503
	.byte	0x2
	.value	0x652
	.long	0x2cb3
	.uleb128 0x38
	.long	.LASF504
	.byte	0x2
	.value	0x660
	.long	0x2d
	.uleb128 0xf
	.long	0x224
	.long	0x2ceb
	.uleb128 0x10
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.long	.LASF505
	.byte	0x6
	.value	0x18b
	.long	0x2cdb
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x17
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF304:
	.string	"REG_EH_CONTEXT"
.LASF329:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF402:
	.string	"set_noop_p"
.LASF74:
	.string	"QCmode"
.LASF16:
	.string	"sizetype"
.LASF389:
	.string	"start"
.LASF137:
	.string	"MATCH_PAR_DUP"
.LASF308:
	.string	"REG_NORETURN"
.LASF203:
	.string	"LSHIFTRT"
.LASF11:
	.string	"rtx_def"
.LASF179:
	.string	"CONST_DOUBLE"
.LASF459:
	.string	"computed_jump_p"
.LASF118:
	.string	"MODE_FLOAT"
.LASF474:
	.string	"subreg_lsb"
.LASF68:
	.string	"HFmode"
.LASF150:
	.string	"SEQUENCE"
.LASF391:
	.string	"modified_in_p"
.LASF342:
	.string	"GR_FRAME_POINTER"
.LASF231:
	.string	"SQRT"
.LASF216:
	.string	"ORDERED"
.LASF30:
	.string	"FP_TOP_REG"
.LASF88:
	.string	"V2SImode"
.LASF130:
	.string	"INSN_LIST"
.LASF335:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF240:
	.string	"CONSTANT_P_RTX"
.LASF217:
	.string	"UNEQ"
.LASF106:
	.string	"BLKmode"
.LASF296:
	.string	"REG_DEP_ANTI"
.LASF387:
	.string	"reg_set_p"
.LASF354:
	.string	"parms_set_data"
.LASF481:
	.string	"xmode"
.LASF452:
	.string	"inequality_comparisons_p"
.LASF196:
	.string	"MINUS"
.LASF369:
	.string	"old_insn"
.LASF181:
	.string	"CONST_STRING"
.LASF325:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF454:
	.string	"from"
.LASF495:
	.string	"before"
.LASF142:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF275:
	.string	"rtbit"
.LASF218:
	.string	"UNGE"
.LASF345:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF496:
	.string	"target_flags"
.LASF57:
	.string	"QImode"
.LASF227:
	.string	"FLOAT_TRUNCATE"
.LASF219:
	.string	"UNGT"
.LASF458:
	.string	"map_val"
.LASF439:
	.string	"regnote"
.LASF348:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF107:
	.string	"CCmode"
.LASF365:
	.string	"insn"
.LASF112:
	.string	"CCFPmode"
.LASF232:
	.string	"SIGN_EXTRACT"
.LASF70:
	.string	"SFmode"
.LASF473:
	.string	"loc_mentioned_in_p"
.LASF249:
	.string	"US_MINUS"
.LASF437:
	.string	"end_regno"
.LASF254:
	.string	"base_after_vec"
.LASF94:
	.string	"V8QImode"
.LASF300:
	.string	"REG_NOALIAS"
.LASF347:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF285:
	.string	"REG_EQUIV"
.LASF257:
	.string	"min_after_base"
.LASF431:
	.string	"kind"
.LASF359:
	.string	"for_alias"
.LASF471:
	.string	"eh_region_count"
.LASF462:
	.string	"result"
.LASF440:
	.string	"pure_call_p"
.LASF509:
	.string	"tree_node"
.LASF252:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF274:
	.string	"rt_cselib"
.LASF223:
	.string	"SIGN_EXTEND"
.LASF198:
	.string	"UDIV"
.LASF386:
	.string	"reg_set_between_p"
.LASF199:
	.string	"UMOD"
.LASF273:
	.string	"rt_addr_diff_vec_flags"
.LASF255:
	.string	"min_after_vec"
.LASF422:
	.string	"note_stores"
.LASF92:
	.string	"V4SImode"
.LASF44:
	.string	"long int"
.LASF233:
	.string	"ZERO_EXTRACT"
.LASF177:
	.string	"RESX"
.LASF332:
	.string	"NOTE_INSN_RANGE_END"
.LASF277:
	.string	"rtmem"
.LASF144:
	.string	"DEFINE_COMBINE"
.LASF121:
	.string	"MODE_COMPLEX_INT"
.LASF175:
	.string	"RETURN"
.LASF163:
	.string	"NOTE"
.LASF455:
	.string	"replace_regs"
.LASF162:
	.string	"CODE_LABEL"
.LASF185:
	.string	"SUBREG"
.LASF463:
	.string	"length"
.LASF438:
	.string	"find_regno_fusage"
.LASF79:
	.string	"TCmode"
.LASF349:
	.string	"GR_VIRTUAL_CFA"
.LASF470:
	.string	"new_to"
.LASF468:
	.string	"auto_inc_p"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF89:
	.string	"V2DImode"
.LASF484:
	.string	"nregs_ymode"
.LASF132:
	.string	"MATCH_SCRATCH"
.LASF328:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF381:
	.string	"from_insn"
.LASF48:
	.string	"signed char"
.LASF493:
	.string	"boundary"
.LASF228:
	.string	"FLOAT"
.LASF307:
	.string	"REG_MAYBE_DEAD"
.LASF14:
	.string	"elem"
.LASF3:
	.string	"call"
.LASF183:
	.string	"VALUE"
.LASF315:
	.string	"NOTE_INSN_DELETED"
.LASF250:
	.string	"SS_TRUNCATE"
.LASF128:
	.string	"INCLUDE"
.LASF139:
	.string	"DEFINE_INSN"
.LASF244:
	.string	"VEC_CONCAT"
.LASF21:
	.string	"BREG"
.LASF115:
	.string	"mode_class"
.LASF41:
	.string	"ALL_REGS"
.LASF314:
	.string	"NOTE_INSN_BIAS"
.LASF46:
	.string	"unsigned char"
.LASF143:
	.string	"DEFINE_PEEPHOLE2"
.LASF19:
	.string	"DREG"
.LASF157:
	.string	"ATTR_FLAG"
.LASF379:
	.string	"no_jumps_between_p"
.LASF180:
	.string	"CONST_VECTOR"
.LASF272:
	.string	"rttype"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF220:
	.string	"UNLE"
.LASF417:
	.string	"__FUNCTION__"
.LASF267:
	.string	"mem_attrs"
.LASF192:
	.string	"IF_THEN_ELSE"
.LASF71:
	.string	"DFmode"
.LASF78:
	.string	"XCmode"
.LASF221:
	.string	"UNLT"
.LASF61:
	.string	"TImode"
.LASF370:
	.string	"old_x"
.LASF371:
	.string	"old_y"
.LASF204:
	.string	"ROTATERT"
.LASF331:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF508:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF368:
	.string	"table"
.LASF326:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF501:
	.string	"rtx_class"
.LASF111:
	.string	"CCZmode"
.LASF50:
	.string	"char"
.LASF430:
	.string	"find_reg_note"
.LASF317:
	.string	"NOTE_INSN_BLOCK_END"
.LASF169:
	.string	"UNSPEC_VOLATILE"
.LASF384:
	.string	"body"
.LASF64:
	.string	"PHImode"
.LASF166:
	.string	"ASM_INPUT"
.LASF353:
	.string	"found"
.LASF226:
	.string	"FLOAT_EXTEND"
.LASF433:
	.string	"link"
.LASF448:
	.string	"volatile_insn_p"
.LASF93:
	.string	"V4DImode"
.LASF479:
	.string	"subreg_regno_offset"
.LASF236:
	.string	"RANGE_INFO"
.LASF171:
	.string	"ADDR_DIFF_VEC"
.LASF492:
	.string	"call_insn"
.LASF15:
	.string	"tree"
.LASF408:
	.string	"refers_to_regno_p"
.LASF505:
	.string	"fixed_regs"
.LASF188:
	.string	"LABEL_REF"
.LASF298:
	.string	"REG_BR_PROB"
.LASF413:
	.string	"inner_endregno"
.LASF120:
	.string	"MODE_CC"
.LASF444:
	.string	"node"
.LASF127:
	.string	"UNKNOWN"
.LASF283:
	.string	"REG_DEAD"
.LASF446:
	.string	"temp"
.LASF65:
	.string	"PSImode"
.LASF310:
	.string	"REG_SETJMP"
.LASF32:
	.string	"FLOAT_REGS"
.LASF420:
	.string	"last_value"
.LASF377:
	.string	"reg_mentioned_p"
.LASF373:
	.string	"find"
.LASF96:
	.string	"V8SImode"
.LASF483:
	.string	"nregs_xmode"
.LASF423:
	.string	"note_uses"
.LASF312:
	.string	"REG_VTABLE_REF"
.LASF388:
	.string	"regs_set_between_p"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF469:
	.string	"insns_safe_to_move_p"
.LASF284:
	.string	"REG_INC"
.LASF346:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF153:
	.string	"ATTR"
.LASF82:
	.string	"CSImode"
.LASF316:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF266:
	.string	"align"
.LASF432:
	.string	"datum"
.LASF176:
	.string	"TRAP_IF"
.LASF140:
	.string	"DEFINE_PEEPHOLE"
.LASF116:
	.string	"MODE_RANDOM"
.LASF186:
	.string	"STRICT_LOW_PART"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF416:
	.string	"do_reg"
.LASF297:
	.string	"REG_DEP_OUTPUT"
.LASF280:
	.string	"basic_block_def"
.LASF281:
	.string	"rtunion"
.LASF341:
	.string	"GR_STACK_POINTER"
.LASF22:
	.string	"SIREG"
.LASF279:
	.string	"bitmap_head_def"
.LASF154:
	.string	"SET_ATTR"
.LASF45:
	.string	"long unsigned int"
.LASF158:
	.string	"INSN"
.LASF125:
	.string	"MAX_MODE_CLASS"
.LASF193:
	.string	"COND"
.LASF364:
	.string	"get_jump_table_offset"
.LASF464:
	.string	"format"
.LASF152:
	.string	"DEFINE_ATTR"
.LASF511:
	.string	"computed_jump_p_1"
.LASF113:
	.string	"CCFPUmode"
.LASF450:
	.string	"side_effects_p"
.LASF131:
	.string	"MATCH_OPERAND"
.LASF424:
	.string	"pbody"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF321:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF390:
	.string	"modified_between_p"
.LASF194:
	.string	"COMPARE"
.LASF305:
	.string	"REG_EH_REGION"
.LASF338:
	.string	"global_rtl_index"
.LASF261:
	.string	"addr_diff_vec_flags"
.LASF358:
	.string	"rtx_varies_p"
.LASF225:
	.string	"TRUNCATE"
.LASF136:
	.string	"MATCH_OP_DUP"
.LASF69:
	.string	"TQFmode"
.LASF114:
	.string	"MAX_MACHINE_MODE"
.LASF500:
	.string	"rtx_format"
.LASF362:
	.string	"get_integer_term"
.LASF396:
	.string	"set_of_1"
.LASF270:
	.string	"rtuint"
.LASF392:
	.string	"insn_dependent_p"
.LASF55:
	.string	"VOIDmode"
.LASF445:
	.string	"remove_node_from_expr_list"
.LASF276:
	.string	"rttree"
.LASF383:
	.string	"reg_referenced_p"
.LASF306:
	.string	"REG_SAVE_NOTE"
.LASF467:
	.string	"swap_commutative_operands_p"
.LASF141:
	.string	"DEFINE_SPLIT"
.LASF268:
	.string	"rtwint"
.LASF350:
	.string	"GR_MAX"
.LASF9:
	.string	"frame_related"
.LASF498:
	.string	"mode_bitsize"
.LASF258:
	.string	"max_after_base"
.LASF123:
	.string	"MODE_VECTOR_INT"
.LASF66:
	.string	"PDImode"
.LASF510:
	.string	"rtunion_def"
.LASF456:
	.string	"reg_map"
.LASF86:
	.string	"V2QImode"
.LASF97:
	.string	"V8DImode"
.LASF262:
	.string	"alias"
.LASF52:
	.string	"long long int"
.LASF29:
	.string	"GENERAL_REGS"
.LASF475:
	.string	"inner_mode"
.LASF75:
	.string	"HCmode"
.LASF126:
	.string	"rtx_code"
.LASF251:
	.string	"US_TRUNCATE"
.LASF72:
	.string	"XFmode"
.LASF234:
	.string	"HIGH"
.LASF13:
	.string	"num_elem"
.LASF340:
	.string	"GR_CC0"
.LASF357:
	.string	"rtx_unstable_p"
.LASF99:
	.string	"V2SFmode"
.LASF403:
	.string	"noop_move_p"
.LASF451:
	.string	"may_trap_p"
.LASF4:
	.string	"unchanging"
.LASF167:
	.string	"ASM_OPERANDS"
.LASF83:
	.string	"CDImode"
.LASF151:
	.string	"ADDRESS"
.LASF211:
	.string	"POST_DEC"
.LASF202:
	.string	"ASHIFTRT"
.LASF425:
	.string	"dead_or_set_p"
.LASF235:
	.string	"LO_SUM"
.LASF472:
	.string	"past_to_p"
.LASF174:
	.string	"CALL"
.LASF91:
	.string	"V4HImode"
.LASF148:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF133:
	.string	"MATCH_DUP"
.LASF407:
	.string	"note"
.LASF502:
	.string	"const_int_rtx"
.LASF460:
	.string	"has_use_labelref"
.LASF67:
	.string	"QFmode"
.LASF376:
	.string	"count"
.LASF187:
	.string	"CONCAT"
.LASF56:
	.string	"BImode"
.LASF282:
	.string	"reg_note"
.LASF301:
	.string	"REG_SAVE_AREA"
.LASF465:
	.string	"regno_use_in"
.LASF419:
	.string	"orig_insn"
.LASF292:
	.string	"REG_UNUSED"
.LASF287:
	.string	"REG_WAS_0"
.LASF43:
	.string	"unsigned int"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF344:
	.string	"GR_ARG_POINTER"
.LASF76:
	.string	"SCmode"
.LASF415:
	.string	"repeat"
.LASF238:
	.string	"RANGE_VAR"
.LASF58:
	.string	"HImode"
.LASF209:
	.string	"PRE_DEC"
.LASF299:
	.string	"REG_EXEC_COUNT"
.LASF161:
	.string	"BARRIER"
.LASF507:
	.string	"rtlanal.c"
.LASF182:
	.string	"CONST"
.LASF26:
	.string	"NON_Q_REGS"
.LASF363:
	.string	"get_related_value"
.LASF85:
	.string	"COImode"
.LASF90:
	.string	"V4QImode"
.LASF323:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF366:
	.string	"earliest"
.LASF145:
	.string	"DEFINE_EXPAND"
.LASF95:
	.string	"V8HImode"
.LASF264:
	.string	"offset"
.LASF25:
	.string	"Q_REGS"
.LASF351:
	.string	"HARD_REG_ELT_TYPE"
.LASF404:
	.string	"find_last_value"
.LASF101:
	.string	"V4SFmode"
.LASF195:
	.string	"PLUS"
.LASF506:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF119:
	.string	"MODE_PARTIAL_INT"
.LASF197:
	.string	"MULT"
.LASF418:
	.string	"reg_set_last"
.LASF156:
	.string	"EQ_ATTR"
.LASF81:
	.string	"CHImode"
.LASF309:
	.string	"REG_NON_LOCAL_GOTO"
.LASF7:
	.string	"used"
.LASF59:
	.string	"SImode"
.LASF491:
	.string	"find_first_parameter_load"
.LASF201:
	.string	"ROTATE"
.LASF109:
	.string	"CCGOCmode"
.LASF269:
	.string	"rtint"
.LASF478:
	.string	"word"
.LASF397:
	.string	"data1"
.LASF100:
	.string	"V2DFmode"
.LASF224:
	.string	"ZERO_EXTEND"
.LASF173:
	.string	"CLOBBER"
.LASF189:
	.string	"SYMBOL_REF"
.LASF497:
	.string	"mode_size"
.LASF395:
	.string	"insn_dependent_p_1"
.LASF485:
	.string	"mode_multiple"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF213:
	.string	"PRE_MODIFY"
.LASF206:
	.string	"SMAX"
.LASF343:
	.string	"GR_HARD_FRAME_POINTER"
.LASF253:
	.string	"min_align"
.LASF265:
	.string	"size"
.LASF208:
	.string	"UMAX"
.LASF51:
	.string	"long long unsigned int"
.LASF327:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF293:
	.string	"REG_CC_SETTER"
.LASF243:
	.string	"VEC_SELECT"
.LASF360:
	.string	"rtx_addr_can_trap_p"
.LASF160:
	.string	"CALL_INSN"
.LASF77:
	.string	"DCmode"
.LASF18:
	.string	"AREG"
.LASF73:
	.string	"TFmode"
.LASF200:
	.string	"ASHIFT"
.LASF33:
	.string	"SSE_REGS"
.LASF289:
	.string	"REG_LIBCALL"
.LASF6:
	.string	"in_struct"
.LASF401:
	.string	"multiple_sets"
.LASF20:
	.string	"CREG"
.LASF5:
	.string	"volatil"
.LASF108:
	.string	"CCGCmode"
.LASF23:
	.string	"DIREG"
.LASF230:
	.string	"UNSIGNED_FIX"
.LASF406:
	.string	"allow_hwreg"
.LASF499:
	.string	"rtx_length"
.LASF461:
	.string	"for_each_rtx"
.LASF191:
	.string	"QUEUED"
.LASF466:
	.string	"commutative_operand_precedence"
.LASF435:
	.string	"find_reg_equal_equiv_note"
.LASF222:
	.string	"LTGT"
.LASF288:
	.string	"REG_RETVAL"
.LASF190:
	.string	"ADDRESSOF"
.LASF426:
	.string	"last_regno"
.LASF322:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF12:
	.string	"rtvec_def"
.LASF356:
	.string	"regs"
.LASF102:
	.string	"V4DFmode"
.LASF421:
	.string	"dest"
.LASF278:
	.string	"cselib_val_struct"
.LASF480:
	.string	"xregno"
.LASF361:
	.string	"rtx_addr_varies_p"
.LASF330:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF0:
	.string	"code"
.LASF453:
	.string	"replace_rtx"
.LASF239:
	.string	"RANGE_LIVE"
.LASF60:
	.string	"DImode"
.LASF394:
	.string	"pinsn"
.LASF488:
	.string	"subreg_regno"
.LASF427:
	.string	"dead_or_set_regno_p"
.LASF63:
	.string	"PQImode"
.LASF260:
	.string	"scale"
.LASF457:
	.string	"replace_dest"
.LASF159:
	.string	"JUMP_INSN"
.LASF339:
	.string	"GR_PC"
.LASF372:
	.string	"count_occurrences"
.LASF320:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF487:
	.string	"y_offset"
.LASF385:
	.string	"reg_referenced_between_p"
.LASF241:
	.string	"CALL_PLACEHOLDER"
.LASF405:
	.string	"valid_to"
.LASF122:
	.string	"MODE_COMPLEX_FLOAT"
.LASF382:
	.string	"to_insn"
.LASF303:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF412:
	.string	"inner_regno"
.LASF124:
	.string	"MODE_VECTOR_FLOAT"
.LASF477:
	.string	"byte"
.LASF129:
	.string	"EXPR_LIST"
.LASF103:
	.string	"V8SFmode"
.LASF504:
	.string	"pic_offset_table_rtx"
.LASF414:
	.string	"reg_overlap_mentioned_p"
.LASF49:
	.string	"short int"
.LASF2:
	.string	"jump"
.LASF1:
	.string	"mode"
.LASF165:
	.string	"PARALLEL"
.LASF212:
	.string	"POST_INC"
.LASF242:
	.string	"VEC_MERGE"
.LASF110:
	.string	"CCNOmode"
.LASF486:
	.string	"nregs_multiple"
.LASF248:
	.string	"SS_MINUS"
.LASF80:
	.string	"CQImode"
.LASF117:
	.string	"MODE_INT"
.LASF489:
	.string	"subreg"
.LASF400:
	.string	"set_verified"
.LASF337:
	.string	"rtx_function"
.LASF441:
	.string	"remove_note"
.LASF449:
	.string	"volatile_refs_p"
.LASF374:
	.string	"count_dest"
.LASF134:
	.string	"MATCH_OPERATOR"
.LASF434:
	.string	"find_regno_note"
.LASF54:
	.string	"machine_mode"
.LASF62:
	.string	"OImode"
.LASF482:
	.string	"ymode"
.LASF375:
	.string	"format_ptr"
.LASF256:
	.string	"max_after_vec"
.LASF286:
	.string	"REG_EQUAL"
.LASF311:
	.string	"REG_ALWAYS_RETURN"
.LASF184:
	.string	"SCRATCH"
.LASF271:
	.string	"rtstr"
.LASF170:
	.string	"ADDR_VEC"
.LASF503:
	.string	"global_rtl"
.LASF399:
	.string	"single_set_2"
.LASF428:
	.string	"test_regno"
.LASF210:
	.string	"PRE_INC"
.LASF246:
	.string	"SS_PLUS"
.LASF229:
	.string	"UNSIGNED_FLOAT"
.LASF28:
	.string	"LEGACY_REGS"
.LASF98:
	.string	"V16QImode"
.LASF237:
	.string	"RANGE_REG"
.LASF409:
	.string	"regno"
.LASF313:
	.string	"insn_note"
.LASF290:
	.string	"REG_NONNEG"
.LASF53:
	.string	"reg_class"
.LASF105:
	.string	"V16SFmode"
.LASF355:
	.string	"nregs"
.LASF380:
	.string	"reg_used_between_p"
.LASF138:
	.string	"MATCH_INSN"
.LASF27:
	.string	"INDEX_REGS"
.LASF398:
	.string	"set_of"
.LASF443:
	.string	"listp"
.LASF34:
	.string	"MMX_REGS"
.LASF429:
	.string	"pattern"
.LASF215:
	.string	"UNORDERED"
.LASF294:
	.string	"REG_CC_USER"
.LASF8:
	.string	"integrated"
.LASF47:
	.string	"short unsigned int"
.LASF352:
	.string	"set_of_data"
.LASF214:
	.string	"POST_MODIFY"
.LASF490:
	.string	"parms_set"
.LASF205:
	.string	"SMIN"
.LASF410:
	.string	"endregno"
.LASF442:
	.string	"in_expr_list_p"
.LASF24:
	.string	"AD_REGS"
.LASF149:
	.string	"DEFINE_COND_EXEC"
.LASF378:
	.string	"no_labels_between_p"
.LASF207:
	.string	"UMIN"
.LASF319:
	.string	"NOTE_INSN_LOOP_END"
.LASF324:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF367:
	.string	"label"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF172:
	.string	"PREFETCH"
.LASF155:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF135:
	.string	"MATCH_PARALLEL"
.LASF104:
	.string	"V8DFmode"
.LASF333:
	.string	"NOTE_INSN_LIVE"
.LASF318:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF476:
	.string	"bitpos"
.LASF10:
	.string	"rtvec"
.LASF245:
	.string	"VEC_DUPLICATE"
.LASF178:
	.string	"CONST_INT"
.LASF291:
	.string	"REG_NO_CONFLICT"
.LASF247:
	.string	"US_PLUS"
.LASF393:
	.string	"data"
.LASF336:
	.string	"NOTE_INSN_MAX"
.LASF17:
	.string	"NO_REGS"
.LASF494:
	.string	"parm"
.LASF146:
	.string	"DEFINE_DELAY"
.LASF87:
	.string	"V2HImode"
.LASF447:
	.string	"prev"
.LASF334:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF259:
	.string	"offset_unsigned"
.LASF84:
	.string	"CTImode"
.LASF295:
	.string	"REG_LABEL"
.LASF147:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF436:
	.string	"find_reg_fusage"
.LASF411:
	.string	"x_regno"
.LASF263:
	.string	"expr"
.LASF302:
	.string	"REG_BR_PRED"
.LASF168:
	.string	"UNSPEC"
.LASF164:
	.string	"COND_EXEC"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
