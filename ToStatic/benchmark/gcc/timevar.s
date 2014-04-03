	.file	"timevar.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 timevar.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	clocks_to_msec
	.comm	clocks_to_msec,4,4
	.local	timevars
	.comm	timevars,1800,32
	.local	stack
	.comm	stack,8,8
	.local	unused_stack_instances
	.comm	unused_stack_instances,8,8
	.local	start_time
	.comm	start_time,12,4
	.type	get_time, @function
get_time:
.LFB2:
	.file 1 "timevar.c"
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# now, now
	.loc 1 185 0
	movq	-8(%rbp), %rdx	# now, tmp64
	movl	.LC0(%rip), %eax	#, tmp65
	movl	%eax, (%rdx)	# tmp65, now_1(D)->user
	.loc 1 186 0
	movq	-8(%rbp), %rdx	# now, tmp66
	movl	.LC0(%rip), %eax	#, tmp67
	movl	%eax, 4(%rdx)	# tmp67, now_1(D)->sys
	.loc 1 187 0
	movq	-8(%rbp), %rdx	# now, tmp68
	movl	.LC0(%rip), %eax	#, tmp69
	movl	%eax, 8(%rdx)	# tmp69, now_1(D)->wall
	.loc 1 189 0
	movl	time_report(%rip), %eax	# time_report, time_report.0
	testl	%eax, %eax	# time_report.0
	jne	.L2	#,
	.loc 1 190 0
	jmp	.L1	#
.L2:
	.loc 1 206 0
	call	clock	#
	cvtsi2ssq	%rax, %xmm0	# D.9010, D.9011
	movss	clocks_to_msec(%rip), %xmm1	# clocks_to_msec, clocks_to_msec.1
	mulss	%xmm1, %xmm0	# clocks_to_msec.1, D.9011
	movq	-8(%rbp), %rax	# now, tmp70
	movss	%xmm0, (%rax)	# D.9011, now_1(D)->user
.L1:
	.loc 1 209 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_time, .-get_time
	.type	timevar_accumulate, @function
timevar_accumulate:
.LFB3:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# timer, timer
	movq	%rsi, -16(%rbp)	# start_time, start_time
	movq	%rdx, -24(%rbp)	# stop_time, stop_time
	.loc 1 219 0
	movq	-8(%rbp), %rax	# timer, tmp74
	movss	(%rax), %xmm1	# timer_1(D)->user, D.9012
	movq	-24(%rbp), %rax	# stop_time, tmp75
	movss	(%rax), %xmm0	# stop_time_3(D)->user, D.9012
	movq	-16(%rbp), %rax	# start_time, tmp76
	movss	(%rax), %xmm2	# start_time_5(D)->user, D.9012
	subss	%xmm2, %xmm0	# D.9012, D.9012
	addss	%xmm1, %xmm0	# D.9012, D.9012
	movq	-8(%rbp), %rax	# timer, tmp77
	movss	%xmm0, (%rax)	# D.9012, timer_1(D)->user
	.loc 1 220 0
	movq	-8(%rbp), %rax	# timer, tmp78
	movss	4(%rax), %xmm1	# timer_1(D)->sys, D.9012
	movq	-24(%rbp), %rax	# stop_time, tmp79
	movss	4(%rax), %xmm0	# stop_time_3(D)->sys, D.9012
	movq	-16(%rbp), %rax	# start_time, tmp80
	movss	4(%rax), %xmm2	# start_time_5(D)->sys, D.9012
	subss	%xmm2, %xmm0	# D.9012, D.9012
	addss	%xmm1, %xmm0	# D.9012, D.9012
	movq	-8(%rbp), %rax	# timer, tmp81
	movss	%xmm0, 4(%rax)	# D.9012, timer_1(D)->sys
	.loc 1 221 0
	movq	-8(%rbp), %rax	# timer, tmp82
	movss	8(%rax), %xmm1	# timer_1(D)->wall, D.9012
	movq	-24(%rbp), %rax	# stop_time, tmp83
	movss	8(%rax), %xmm0	# stop_time_3(D)->wall, D.9012
	movq	-16(%rbp), %rax	# start_time, tmp84
	movss	8(%rax), %xmm2	# start_time_5(D)->wall, D.9012
	subss	%xmm2, %xmm0	# D.9012, D.9012
	addss	%xmm1, %xmm0	# D.9012, D.9012
	movq	-8(%rbp), %rax	# timer, tmp85
	movss	%xmm0, 8(%rax)	# D.9012, timer_1(D)->wall
	.loc 1 222 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	timevar_accumulate, .-timevar_accumulate
	.section	.rodata
.LC1:
	.string	"total time"
.LC2:
	.string	"garbage collection"
.LC3:
	.string	"dump files"
.LC4:
	.string	"cfg construction"
.LC5:
	.string	"cfg cleanup"
.LC6:
	.string	"life analysis"
.LC7:
	.string	"life info update"
.LC8:
	.string	"preprocessing"
.LC9:
	.string	"lexical analysis"
.LC10:
	.string	"parser"
.LC11:
	.string	"expand"
.LC12:
	.string	"varconst"
.LC13:
	.string	"integration"
.LC14:
	.string	"jump"
.LC15:
	.string	"CSE"
.LC16:
	.string	"global CSE"
.LC17:
	.string	"loop analysis"
.LC18:
	.string	"CSE 2"
.LC19:
	.string	"branch prediction"
.LC20:
	.string	"flow analysis"
.LC21:
	.string	"combiner"
.LC22:
	.string	"if-conversion"
.LC23:
	.string	"regmove"
.LC24:
	.string	"mode switching"
.LC25:
	.string	"scheduling"
.LC26:
	.string	"local alloc"
.LC27:
	.string	"global alloc"
.LC28:
	.string	"reload CSE regs"
.LC29:
	.string	"flow 2"
.LC30:
	.string	"if-conversion 2"
.LC31:
	.string	"peephole 2"
.LC32:
	.string	"rename registers"
.LC33:
	.string	"scheduling 2"
.LC34:
	.string	"machine dep reorg"
.LC35:
	.string	"delay branch sched"
.LC36:
	.string	"reorder blocks"
.LC37:
	.string	"shorten branches"
.LC38:
	.string	"reg stack"
.LC39:
	.string	"convert to SSA"
.LC40:
	.string	"SSA CCP"
.LC41:
	.string	"SSA aggressive DCE"
.LC42:
	.string	"convert from SSA"
.LC43:
	.string	"final"
.LC44:
	.string	"symout"
.LC45:
	.string	"rest of compilation"
	.text
	.globl	init_timevar
	.type	init_timevar, @function
init_timevar:
.LFB4:
	.loc 1 228 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 229 0
	movl	time_report(%rip), %eax	# time_report, time_report.2
	testl	%eax, %eax	# time_report.2
	jne	.L6	#,
	.loc 1 230 0
	jmp	.L5	#
.L6:
	.loc 1 233 0
	movl	$1800, %edx	#,
	movl	$0, %esi	#,
	movl	$timevars, %edi	#,
	call	memset	#
	.file 2 "timevar.def"
	.loc 2 34 0
	movq	$.LC1, timevars+24(%rip)	#, timevars[0].name
	.loc 2 37 0
	movq	$.LC2, timevars+64(%rip)	#, timevars[1].name
	.loc 2 40 0
	movq	$.LC3, timevars+104(%rip)	#, timevars[2].name
	.loc 2 43 0
	movq	$.LC4, timevars+144(%rip)	#, timevars[3].name
	.loc 2 45 0
	movq	$.LC5, timevars+184(%rip)	#, timevars[4].name
	.loc 2 47 0
	movq	$.LC6, timevars+224(%rip)	#, timevars[5].name
	.loc 2 48 0
	movq	$.LC7, timevars+264(%rip)	#, timevars[6].name
	.loc 2 50 0
	movq	$.LC8, timevars+304(%rip)	#, timevars[7].name
	.loc 2 51 0
	movq	$.LC9, timevars+344(%rip)	#, timevars[8].name
	.loc 2 52 0
	movq	$.LC10, timevars+384(%rip)	#, timevars[9].name
	.loc 2 53 0
	movq	$.LC11, timevars+424(%rip)	#, timevars[10].name
	.loc 2 54 0
	movq	$.LC12, timevars+464(%rip)	#, timevars[11].name
	.loc 2 55 0
	movq	$.LC13, timevars+504(%rip)	#, timevars[12].name
	.loc 2 56 0
	movq	$.LC14, timevars+544(%rip)	#, timevars[13].name
	.loc 2 57 0
	movq	$.LC15, timevars+584(%rip)	#, timevars[14].name
	.loc 2 58 0
	movq	$.LC16, timevars+624(%rip)	#, timevars[15].name
	.loc 2 59 0
	movq	$.LC17, timevars+664(%rip)	#, timevars[16].name
	.loc 2 60 0
	movq	$.LC18, timevars+704(%rip)	#, timevars[17].name
	.loc 2 61 0
	movq	$.LC19, timevars+744(%rip)	#, timevars[18].name
	.loc 2 62 0
	movq	$.LC20, timevars+784(%rip)	#, timevars[19].name
	.loc 2 63 0
	movq	$.LC21, timevars+824(%rip)	#, timevars[20].name
	.loc 2 64 0
	movq	$.LC22, timevars+864(%rip)	#, timevars[21].name
	.loc 2 65 0
	movq	$.LC23, timevars+904(%rip)	#, timevars[22].name
	.loc 2 66 0
	movq	$.LC24, timevars+944(%rip)	#, timevars[23].name
	.loc 2 67 0
	movq	$.LC25, timevars+984(%rip)	#, timevars[24].name
	.loc 2 68 0
	movq	$.LC26, timevars+1024(%rip)	#, timevars[25].name
	.loc 2 69 0
	movq	$.LC27, timevars+1064(%rip)	#, timevars[26].name
	.loc 2 70 0
	movq	$.LC28, timevars+1104(%rip)	#, timevars[27].name
	.loc 2 71 0
	movq	$.LC29, timevars+1144(%rip)	#, timevars[28].name
	.loc 2 72 0
	movq	$.LC30, timevars+1184(%rip)	#, timevars[29].name
	.loc 2 73 0
	movq	$.LC31, timevars+1224(%rip)	#, timevars[30].name
	.loc 2 74 0
	movq	$.LC32, timevars+1264(%rip)	#, timevars[31].name
	.loc 2 75 0
	movq	$.LC33, timevars+1304(%rip)	#, timevars[32].name
	.loc 2 76 0
	movq	$.LC34, timevars+1344(%rip)	#, timevars[33].name
	.loc 2 77 0
	movq	$.LC35, timevars+1384(%rip)	#, timevars[34].name
	.loc 2 78 0
	movq	$.LC36, timevars+1424(%rip)	#, timevars[35].name
	.loc 2 79 0
	movq	$.LC37, timevars+1464(%rip)	#, timevars[36].name
	.loc 2 80 0
	movq	$.LC38, timevars+1504(%rip)	#, timevars[37].name
	.loc 2 81 0
	movq	$.LC39, timevars+1544(%rip)	#, timevars[38].name
	.loc 2 82 0
	movq	$.LC40, timevars+1584(%rip)	#, timevars[39].name
	.loc 2 83 0
	movq	$.LC41, timevars+1624(%rip)	#, timevars[40].name
	.loc 2 84 0
	movq	$.LC42, timevars+1664(%rip)	#, timevars[41].name
	.loc 2 85 0
	movq	$.LC43, timevars+1704(%rip)	#, timevars[42].name
	.loc 2 86 0
	movq	$.LC44, timevars+1744(%rip)	#, timevars[43].name
	.loc 2 89 0
	movq	$.LC45, timevars+1784(%rip)	#, timevars[44].name
	.loc 1 245 0
	movl	.LC46(%rip), %eax	#, tmp60
	movl	%eax, clocks_to_msec(%rip)	# tmp60, clocks_to_msec
.L5:
	.loc 1 247 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_timevar, .-init_timevar
	.section	.rodata
.LC47:
	.string	"timevar.c"
	.text
	.globl	timevar_push
	.type	timevar_push, @function
timevar_push:
.LFB5:
	.loc 1 259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# timevar, timevar
	.loc 1 260 0
	movl	-36(%rbp), %edx	# timevar, tmp70
	movq	%rdx, %rax	# tmp70, tmp71
	salq	$2, %rax	#, tmp71
	addq	%rdx, %rax	# tmp70, tmp71
	salq	$3, %rax	#, tmp72
	addq	$timevars, %rax	#, tmp73
	movq	%rax, -24(%rbp)	# tmp73, tv
	.loc 1 264 0
	movl	time_report(%rip), %eax	# time_report, time_report.3
	testl	%eax, %eax	# time_report.3
	je	.L8	#,
	.loc 1 268 0
	movq	-24(%rbp), %rax	# tv, tmp74
	movzbl	32(%rax), %edx	# tv_3->used, tmp77
	orl	$2, %edx	#, tmp78
	movb	%dl, 32(%rax)	# tmp78, tv_3->used
	.loc 1 271 0
	movq	-24(%rbp), %rax	# tv, tmp79
	movzbl	32(%rax), %eax	# *tv_3, D.9058
	andl	$1, %eax	#, D.9058
	testb	%al, %al	# D.9058
	je	.L11	#,
	.loc 1 272 0
	movl	$__FUNCTION__.8796, %edx	#,
	movl	$272, %esi	#,
	movl	$.LC47, %edi	#,
	call	fancy_abort	#
.L11:
	.loc 1 275 0
	leaq	-16(%rbp), %rax	#, tmp80
	movq	%rax, %rdi	# tmp80,
	call	get_time	#
	.loc 1 279 0
	movq	stack(%rip), %rax	# stack, stack.4
	testq	%rax, %rax	# stack.4
	je	.L12	#,
	.loc 1 280 0
	movq	stack(%rip), %rax	# stack, stack.5
	movq	(%rax), %rax	# stack.5_8->timevar, D.9059
	leaq	-16(%rbp), %rdx	#, tmp81
	movl	$start_time, %esi	#,
	movq	%rax, %rdi	# D.9060,
	call	timevar_accumulate	#
.L12:
	.loc 1 284 0
	movq	-16(%rbp), %rax	# now, tmp82
	movq	%rax, start_time(%rip)	# tmp82, start_time
	movl	-8(%rbp), %eax	# now, tmp83
	movl	%eax, start_time+8(%rip)	# tmp83, start_time
	.loc 1 288 0
	movq	unused_stack_instances(%rip), %rax	# unused_stack_instances, unused_stack_instances.6
	testq	%rax, %rax	# unused_stack_instances.6
	je	.L13	#,
	.loc 1 290 0
	movq	unused_stack_instances(%rip), %rax	# unused_stack_instances, tmp84
	movq	%rax, -32(%rbp)	# tmp84, context
	.loc 1 291 0
	movq	unused_stack_instances(%rip), %rax	# unused_stack_instances, unused_stack_instances.7
	movq	8(%rax), %rax	# unused_stack_instances.7_13->next, unused_stack_instances.8
	movq	%rax, unused_stack_instances(%rip)	# unused_stack_instances.8, unused_stack_instances
	jmp	.L14	#
.L13:
	.loc 1 294 0
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp85, context
.L14:
	.loc 1 298 0 discriminator 1
	movq	-32(%rbp), %rax	# context, tmp86
	movq	-24(%rbp), %rdx	# tv, tmp87
	movq	%rdx, (%rax)	# tmp87, context_1->timevar
	.loc 1 299 0 discriminator 1
	movq	stack(%rip), %rdx	# stack, stack.9
	movq	-32(%rbp), %rax	# context, tmp88
	movq	%rdx, 8(%rax)	# stack.9, context_1->next
	.loc 1 300 0 discriminator 1
	movq	-32(%rbp), %rax	# context, tmp89
	movq	%rax, stack(%rip)	# tmp89, stack
.L8:
	.loc 1 301 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	timevar_push, .-timevar_push
	.globl	timevar_pop
	.type	timevar_pop, @function
timevar_pop:
.LFB6:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# timevar, timevar
	.loc 1 314 0
	movq	stack(%rip), %rax	# stack, tmp68
	movq	%rax, -24(%rbp)	# tmp68, popped
	.loc 1 316 0
	movl	time_report(%rip), %eax	# time_report, time_report.10
	testl	%eax, %eax	# time_report.10
	je	.L15	#,
	.loc 1 319 0
	movl	-36(%rbp), %edx	# timevar, tmp69
	movq	%rdx, %rax	# tmp69, tmp70
	salq	$2, %rax	#, tmp70
	addq	%rdx, %rax	# tmp69, tmp70
	salq	$3, %rax	#, tmp71
	leaq	timevars(%rax), %rdx	#, D.9062
	movq	stack(%rip), %rax	# stack, stack.11
	movq	(%rax), %rax	# stack.11_5->timevar, D.9062
	cmpq	%rax, %rdx	# D.9062, D.9062
	je	.L18	#,
	.loc 1 320 0
	movl	$__FUNCTION__.8802, %edx	#,
	movl	$320, %esi	#,
	movl	$.LC47, %edi	#,
	call	fancy_abort	#
.L18:
	.loc 1 323 0
	leaq	-16(%rbp), %rax	#, tmp72
	movq	%rax, %rdi	# tmp72,
	call	get_time	#
	.loc 1 326 0
	movq	-24(%rbp), %rax	# popped, tmp73
	movq	(%rax), %rax	# popped_1->timevar, D.9062
	leaq	-16(%rbp), %rdx	#, tmp74
	movl	$start_time, %esi	#,
	movq	%rax, %rdi	# D.9063,
	call	timevar_accumulate	#
	.loc 1 330 0
	movq	-16(%rbp), %rax	# now, tmp75
	movq	%rax, start_time(%rip)	# tmp75, start_time
	movl	-8(%rbp), %eax	# now, tmp76
	movl	%eax, start_time+8(%rip)	# tmp76, start_time
	.loc 1 333 0
	movq	stack(%rip), %rax	# stack, stack.12
	movq	8(%rax), %rax	# stack.12_9->next, stack.13
	movq	%rax, stack(%rip)	# stack.13, stack
	.loc 1 337 0
	movq	unused_stack_instances(%rip), %rdx	# unused_stack_instances, unused_stack_instances.14
	movq	-24(%rbp), %rax	# popped, tmp77
	movq	%rdx, 8(%rax)	# unused_stack_instances.14, popped_1->next
	.loc 1 338 0
	movq	-24(%rbp), %rax	# popped, tmp78
	movq	%rax, unused_stack_instances(%rip)	# tmp78, unused_stack_instances
.L15:
	.loc 1 339 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	timevar_pop, .-timevar_pop
	.globl	timevar_start
	.type	timevar_start, @function
timevar_start:
.LFB7:
	.loc 1 348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# timevar, timevar
	.loc 1 349 0
	movl	-20(%rbp), %edx	# timevar, tmp63
	movq	%rdx, %rax	# tmp63, tmp64
	salq	$2, %rax	#, tmp64
	addq	%rdx, %rax	# tmp63, tmp64
	salq	$3, %rax	#, tmp65
	addq	$timevars, %rax	#, tmp66
	movq	%rax, -8(%rbp)	# tmp66, tv
	.loc 1 351 0
	movl	time_report(%rip), %eax	# time_report, time_report.15
	testl	%eax, %eax	# time_report.15
	jne	.L20	#,
	.loc 1 352 0
	jmp	.L19	#
.L20:
	.loc 1 355 0
	movq	-8(%rbp), %rax	# tv, tmp67
	movzbl	32(%rax), %edx	# tv_2->used, tmp70
	orl	$2, %edx	#, tmp71
	movb	%dl, 32(%rax)	# tmp71, tv_2->used
	.loc 1 359 0
	movq	-8(%rbp), %rax	# tv, tmp72
	movzbl	32(%rax), %eax	# *tv_2, D.9064
	andl	$1, %eax	#, D.9064
	testb	%al, %al	# D.9064
	je	.L22	#,
	.loc 1 360 0
	movl	$__FUNCTION__.8807, %edx	#,
	movl	$360, %esi	#,
	movl	$.LC47, %edi	#,
	call	fancy_abort	#
.L22:
	.loc 1 361 0
	movq	-8(%rbp), %rax	# tv, tmp73
	movzbl	32(%rax), %edx	# tv_2->standalone, tmp76
	orl	$1, %edx	#, tmp77
	movb	%dl, 32(%rax)	# tmp77, tv_2->standalone
	.loc 1 363 0
	movq	-8(%rbp), %rax	# tv, tmp78
	addq	$12, %rax	#, D.9065
	movq	%rax, %rdi	# D.9065,
	call	get_time	#
.L19:
	.loc 1 364 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	timevar_start, .-timevar_start
	.globl	timevar_stop
	.type	timevar_stop, @function
timevar_stop:
.LFB8:
	.loc 1 372 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# timevar, timevar
	.loc 1 373 0
	movl	-36(%rbp), %edx	# timevar, tmp64
	movq	%rdx, %rax	# tmp64, tmp65
	salq	$2, %rax	#, tmp65
	addq	%rdx, %rax	# tmp64, tmp65
	salq	$3, %rax	#, tmp66
	addq	$timevars, %rax	#, tmp67
	movq	%rax, -24(%rbp)	# tmp67, tv
	.loc 1 376 0
	movl	time_report(%rip), %eax	# time_report, time_report.16
	testl	%eax, %eax	# time_report.16
	je	.L23	#,
	.loc 1 380 0
	movq	-24(%rbp), %rax	# tv, tmp68
	movzbl	32(%rax), %eax	# *tv_2, D.9066
	andl	$1, %eax	#, D.9066
	testb	%al, %al	# D.9066
	jne	.L26	#,
	.loc 1 381 0
	movl	$__FUNCTION__.8813, %edx	#,
	movl	$381, %esi	#,
	movl	$.LC47, %edi	#,
	call	fancy_abort	#
.L26:
	.loc 1 383 0
	leaq	-16(%rbp), %rax	#, tmp69
	movq	%rax, %rdi	# tmp69,
	call	get_time	#
	.loc 1 384 0
	movq	-24(%rbp), %rax	# tv, tmp70
	leaq	12(%rax), %rcx	#, D.9067
	movq	-24(%rbp), %rax	# tv, D.9067
	leaq	-16(%rbp), %rdx	#, tmp71
	movq	%rcx, %rsi	# D.9067,
	movq	%rax, %rdi	# D.9067,
	call	timevar_accumulate	#
.L23:
	.loc 1 385 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	timevar_stop, .-timevar_stop
	.globl	timevar_get
	.type	timevar_get, @function
timevar_get:
.LFB9:
	.loc 1 394 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# timevar, timevar
	movq	%rsi, -48(%rbp)	# elapsed, elapsed
	.loc 1 395 0
	movl	-36(%rbp), %edx	# timevar, tmp64
	movq	%rdx, %rax	# tmp64, tmp65
	salq	$2, %rax	#, tmp65
	addq	%rdx, %rax	# tmp64, tmp65
	salq	$3, %rax	#, tmp66
	addq	$timevars, %rax	#, tmp67
	movq	%rax, -24(%rbp)	# tmp67, tv
	.loc 1 398 0
	movq	-48(%rbp), %rax	# elapsed, tmp68
	movq	-24(%rbp), %rdx	# tv, tmp69
	movq	(%rdx), %rcx	# tv_2->elapsed, tmp70
	movq	%rcx, (%rax)	# tmp70, *elapsed_3(D)
	movl	8(%rdx), %edx	# tv_2->elapsed, tmp71
	movl	%edx, 8(%rax)	# tmp71, *elapsed_3(D)
	.loc 1 401 0
	movq	-24(%rbp), %rax	# tv, tmp72
	movzbl	32(%rax), %eax	# *tv_2, D.9068
	andl	$1, %eax	#, D.9068
	testb	%al, %al	# D.9068
	je	.L28	#,
	.loc 1 403 0
	leaq	-16(%rbp), %rax	#, tmp73
	movq	%rax, %rdi	# tmp73,
	call	get_time	#
	.loc 1 404 0
	movq	-24(%rbp), %rax	# tv, tmp74
	leaq	12(%rax), %rcx	#, D.9069
	leaq	-16(%rbp), %rdx	#, tmp75
	movq	-48(%rbp), %rax	# elapsed, tmp76
	movq	%rcx, %rsi	# D.9069,
	movq	%rax, %rdi	# tmp76,
	call	timevar_accumulate	#
	jmp	.L27	#
.L28:
	.loc 1 407 0
	movq	stack(%rip), %rax	# stack, stack.17
	movq	(%rax), %rax	# stack.17_7->timevar, D.9070
	cmpq	-24(%rbp), %rax	# tv, D.9070
	jne	.L27	#,
	.loc 1 409 0
	leaq	-16(%rbp), %rax	#, tmp77
	movq	%rax, %rdi	# tmp77,
	call	get_time	#
	.loc 1 410 0
	leaq	-16(%rbp), %rdx	#, tmp78
	movq	-48(%rbp), %rax	# elapsed, tmp79
	movl	$start_time, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	timevar_accumulate	#
.L27:
	.loc 1 412 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	timevar_get, .-timevar_get
	.section	.rodata
.LC48:
	.string	"\nExecution times (seconds)\n"
.LC50:
	.string	" %-22s:"
.LC53:
	.string	"%7.2f (%2.0f%%) usr"
.LC54:
	.string	" TOTAL                 :"
.LC55:
	.string	"%7.2f          "
	.text
	.globl	timevar_print
	.type	timevar_print, @function
timevar_print:
.LFB10:
	.loc 1 421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# fp, fp
	.loc 1 425 0
	movq	$timevars, -32(%rbp)	#, total
	.loc 1 428 0
	movl	time_report(%rip), %eax	# time_report, time_report.18
	testl	%eax, %eax	# time_report.18
	je	.L30	#,
	.loc 1 433 0
	cmpq	$0, -56(%rbp)	#, fp
	jne	.L33	#,
	.loc 1 434 0
	movq	stderr(%rip), %rax	# stderr, tmp80
	movq	%rax, -56(%rbp)	# tmp80, fp
.L33:
	.loc 1 437 0
	leaq	-16(%rbp), %rax	#, tmp81
	movq	%rax, %rdi	# tmp81,
	call	get_time	#
	.loc 1 441 0
	movq	stack(%rip), %rax	# stack, stack.19
	testq	%rax, %rax	# stack.19
	je	.L34	#,
	.loc 1 442 0
	movq	stack(%rip), %rax	# stack, stack.20
	movq	(%rax), %rax	# stack.20_9->timevar, D.9071
	leaq	-16(%rbp), %rdx	#, tmp82
	movl	$start_time, %esi	#,
	movq	%rax, %rdi	# D.9072,
	call	timevar_accumulate	#
.L34:
	.loc 1 446 0
	movq	-16(%rbp), %rax	# now, tmp83
	movq	%rax, start_time(%rip)	# tmp83, start_time
	movl	-8(%rbp), %eax	# now, tmp84
	movl	%eax, start_time+8(%rip)	# tmp84, start_time
	.loc 1 448 0
	movq	-56(%rbp), %rax	# fp, tmp85
	movq	%rax, %rcx	# tmp85,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC48, %edi	#,
	call	fwrite	#
	.loc 1 449 0
	movl	$0, -40(%rbp)	#, id
	jmp	.L35	#
.L46:
.LBB2:
	.loc 1 451 0
	movl	-40(%rbp), %edx	# id, tmp86
	movq	%rdx, %rax	# tmp86, tmp87
	salq	$2, %rax	#, tmp87
	addq	%rdx, %rax	# tmp86, tmp87
	salq	$3, %rax	#, tmp88
	addq	$timevars, %rax	#, tmp89
	movq	%rax, -24(%rbp)	# tmp89, tv
	.loc 1 452 0
	movl	.LC49(%rip), %eax	#, tmp90
	movl	%eax, -36(%rbp)	# tmp90, tiny
	.loc 1 456 0
	cmpl	$0, -40(%rbp)	#, id
	jne	.L36	#,
	.loc 1 457 0
	jmp	.L37	#
.L36:
	.loc 1 460 0
	movq	-24(%rbp), %rax	# tv, tmp91
	movzbl	32(%rax), %eax	# *tv_13, D.9073
	andl	$2, %eax	#, D.9073
	testb	%al, %al	# D.9073
	jne	.L38	#,
	.loc 1 461 0
	jmp	.L37	#
.L38:
	.loc 1 465 0
	movq	-24(%rbp), %rax	# tv, tmp92
	movss	(%rax), %xmm1	# tv_13->elapsed.user, D.9074
	movss	-36(%rbp), %xmm0	# tiny, tmp93
	ucomiss	%xmm1, %xmm0	# D.9074, tmp93
	jbe	.L39	#,
	.loc 1 466 0
	movq	-24(%rbp), %rax	# tv, tmp94
	movss	4(%rax), %xmm1	# tv_13->elapsed.sys, D.9074
	movss	-36(%rbp), %xmm0	# tiny, tmp95
	ucomiss	%xmm1, %xmm0	# D.9074, tmp95
	jbe	.L39	#,
	.loc 1 467 0
	movq	-24(%rbp), %rax	# tv, tmp96
	movss	8(%rax), %xmm1	# tv_13->elapsed.wall, D.9074
	movss	-36(%rbp), %xmm0	# tiny, tmp97
	ucomiss	%xmm1, %xmm0	# D.9074, tmp97
	jbe	.L39	#,
	.loc 1 468 0
	jmp	.L37	#
.L39:
	.loc 1 471 0
	movq	-24(%rbp), %rax	# tv, tmp98
	movq	24(%rax), %rdx	# tv_13->name, D.9075
	movq	-56(%rbp), %rax	# fp, tmp99
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 477 0
	movq	-32(%rbp), %rax	# total, tmp100
	movss	(%rax), %xmm0	# total_4->user, D.9074
	.loc 1 475 0
	xorps	%xmm1, %xmm1	# tmp101
	ucomiss	%xmm1, %xmm0	# tmp101, D.9074
	jp	.L50	#,
	xorps	%xmm1, %xmm1	# tmp102
	ucomiss	%xmm1, %xmm0	# tmp102, D.9074
	je	.L51	#,
.L50:
	.loc 1 477 0
	movq	-24(%rbp), %rax	# tv, tmp103
	movss	(%rax), %xmm0	# tv_13->elapsed.user, D.9074
	movq	-32(%rbp), %rax	# total, tmp104
	movss	(%rax), %xmm1	# total_4->user, D.9074
	divss	%xmm1, %xmm0	# D.9074, D.9074
	movss	.LC51(%rip), %xmm1	#, tmp105
	mulss	%xmm1, %xmm0	# tmp105, D.9074
	.loc 1 475 0
	unpcklps	%xmm0, %xmm0	# D.9074, D.9074
	cvtps2pd	%xmm0, %xmm2	# D.9074, iftmp.21
	movsd	%xmm2, -64(%rbp)	# iftmp.21, %sfp
	movq	-64(%rbp), %rax	# %sfp, iftmp.21
	jmp	.L45	#
.L51:
	.loc 1 475 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.21
.L45:
	.loc 1 476 0 is_stmt 1
	movq	-24(%rbp), %rdx	# tv, tmp106
	movss	(%rdx), %xmm0	# tv_13->elapsed.user, D.9074
	.loc 1 475 0
	unpcklps	%xmm0, %xmm0	# D.9074, D.9074
	cvtps2pd	%xmm0, %xmm0	# D.9074, D.9076
	movq	-56(%rbp), %rdx	# fp, tmp107
	movq	%rax, -64(%rbp)	# iftmp.21, %sfp
	movsd	-64(%rbp), %xmm1	# %sfp,
	movl	$.LC53, %esi	#,
	movq	%rdx, %rdi	# tmp107,
	movl	$2, %eax	#,
	call	fprintf	#
	.loc 1 494 0
	movq	-56(%rbp), %rax	# fp, tmp108
	movq	%rax, %rsi	# tmp108,
	movl	$10, %edi	#,
	call	_IO_putc	#
.L37:
.LBE2:
	.loc 1 449 0
	addl	$1, -40(%rbp)	#, id
.L35:
	.loc 1 449 0 is_stmt 0 discriminator 1
	cmpl	$44, -40(%rbp)	#, id
	jbe	.L46	#,
	.loc 1 498 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC54, %edi	#,
	call	fwrite	#
	.loc 1 500 0
	movq	-32(%rbp), %rax	# total, tmp110
	movss	(%rax), %xmm0	# total_4->user, D.9074
	unpcklps	%xmm0, %xmm0	# D.9074, D.9074
	cvtps2pd	%xmm0, %xmm0	# D.9074, D.9076
	movq	-56(%rbp), %rax	# fp, tmp111
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp111,
	movl	$1, %eax	#,
	call	fprintf	#
.L30:
	.loc 1 511 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	timevar_print, .-timevar_print
	.globl	get_run_time
	.type	get_run_time, @function
get_run_time:
.LFB11:
	.loc 1 518 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 520 0
	leaq	-16(%rbp), %rax	#, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$0, %edi	#,
	call	timevar_get	#
	.loc 1 521 0
	movss	-16(%rbp), %xmm1	# total_elapsed.user, D.9083
	movss	-12(%rbp), %xmm0	# total_elapsed.sys, D.9083
	addss	%xmm1, %xmm0	# D.9083, D.9083
	cvttss2siq	%xmm0, %rax	# D.9083, D.9084
	.loc 1 522 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_run_time, .-get_run_time
	.section	.rodata
	.align 8
.LC58:
	.string	"time in %s: %ld.%06ld (%ld%%)\n"
	.text
	.globl	print_time
	.type	print_time, @function
print_time:
.LFB12:
	.loc 1 531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# total, total
	.loc 1 532 0
	call	get_run_time	#
	movq	%rax, -8(%rbp)	# tmp68, all_time
	.loc 1 533 0
	cmpq	$0, -8(%rbp)	#, all_time
	je	.L55	#,
	.loc 1 537 0
	cvtsi2sdq	-32(%rbp), %xmm0	# total, D.9085
	movsd	.LC56(%rip), %xmm1	#, tmp69
	mulsd	%xmm1, %xmm0	# tmp69, D.9085
	cvtsi2sdq	-8(%rbp), %xmm1	# all_time, D.9085
	divsd	%xmm1, %xmm0	# D.9085, D.9085
	movsd	.LC57(%rip), %xmm1	#, tmp70
	addsd	%xmm1, %xmm0	# tmp70, D.9085
	.loc 1 533 0
	cvttsd2siq	%xmm0, %rdi	# D.9085, iftmp.22
	jmp	.L56	#
.L55:
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	$0, %edi	#, iftmp.22
.L56:
	.loc 1 533 0 discriminator 2
	movq	-32(%rbp), %rcx	# total, tmp71
	movabsq	$4835703278458516699, %rdx	#, tmp73
	movq	%rcx, %rax	# tmp71, tmp83
	imulq	%rdx	# tmp73
	sarq	$18, %rdx	#, tmp74
	movq	%rcx, %rax	# tmp71, tmp75
	sarq	$63, %rax	#, tmp75
	movq	%rdx, %rsi	# tmp74, D.9086
	subq	%rax, %rsi	# tmp75, D.9086
	imulq	$1000000, %rsi, %rax	#, D.9086, tmp76
	movq	%rcx, %rsi	# tmp71, D.9086
	subq	%rax, %rsi	# tmp76, D.9086
	movq	-32(%rbp), %rcx	# total, tmp77
	movabsq	$4835703278458516699, %rdx	#, tmp79
	movq	%rcx, %rax	# tmp77, tmp84
	imulq	%rdx	# tmp79
	sarq	$18, %rdx	#, tmp80
	movq	%rcx, %rax	# tmp77, tmp81
	sarq	$63, %rax	#, tmp81
	movq	%rdx, %rcx	# tmp80, D.9086
	subq	%rax, %rcx	# tmp81, D.9086
	movq	stderr(%rip), %rax	# stderr, stderr.23
	movq	-24(%rbp), %rdx	# str, tmp82
	movq	%rdi, %r9	# iftmp.22,
	movq	%rsi, %r8	# D.9086,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# stderr.23,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 538 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	print_time, .-print_time
	.section	.rodata
	.type	__FUNCTION__.8796, @object
	.size	__FUNCTION__.8796, 13
__FUNCTION__.8796:
	.string	"timevar_push"
	.type	__FUNCTION__.8802, @object
	.size	__FUNCTION__.8802, 12
__FUNCTION__.8802:
	.string	"timevar_pop"
	.type	__FUNCTION__.8807, @object
	.size	__FUNCTION__.8807, 14
__FUNCTION__.8807:
	.string	"timevar_start"
	.type	__FUNCTION__.8813, @object
	.size	__FUNCTION__.8813, 13
__FUNCTION__.8813:
	.string	"timevar_stop"
	.align 4
.LC0:
	.long	0
	.align 4
.LC46:
	.long	897988541
	.align 4
.LC49:
	.long	1000593162
	.align 4
.LC51:
	.long	1120403456
	.align 8
.LC56:
	.long	0
	.long	1079574528
	.align 8
.LC57:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "machmode.h"
	.file 8 "rtl.h"
	.file 9 "timevar.h"
	.file 10 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf92
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF369
	.byte	0x1
	.long	.LASF370
	.long	.LASF371
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF10
	.byte	0x4
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x113
	.long	0x79
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x118
	.long	0x6b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x126
	.long	0x84
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF372
	.byte	0x6
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xa7
	.long	0x2d
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
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0xe
	.long	.LASF109
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.long	0x420
	.uleb128 0xf
	.long	.LASF49
	.sleb128 0
	.uleb128 0xf
	.long	.LASF50
	.sleb128 1
	.uleb128 0xf
	.long	.LASF51
	.sleb128 2
	.uleb128 0xf
	.long	.LASF52
	.sleb128 3
	.uleb128 0xf
	.long	.LASF53
	.sleb128 4
	.uleb128 0xf
	.long	.LASF54
	.sleb128 5
	.uleb128 0xf
	.long	.LASF55
	.sleb128 6
	.uleb128 0xf
	.long	.LASF56
	.sleb128 7
	.uleb128 0xf
	.long	.LASF57
	.sleb128 8
	.uleb128 0xf
	.long	.LASF58
	.sleb128 9
	.uleb128 0xf
	.long	.LASF59
	.sleb128 10
	.uleb128 0xf
	.long	.LASF60
	.sleb128 11
	.uleb128 0xf
	.long	.LASF61
	.sleb128 12
	.uleb128 0xf
	.long	.LASF62
	.sleb128 13
	.uleb128 0xf
	.long	.LASF63
	.sleb128 14
	.uleb128 0xf
	.long	.LASF64
	.sleb128 15
	.uleb128 0xf
	.long	.LASF65
	.sleb128 16
	.uleb128 0xf
	.long	.LASF66
	.sleb128 17
	.uleb128 0xf
	.long	.LASF67
	.sleb128 18
	.uleb128 0xf
	.long	.LASF68
	.sleb128 19
	.uleb128 0xf
	.long	.LASF69
	.sleb128 20
	.uleb128 0xf
	.long	.LASF70
	.sleb128 21
	.uleb128 0xf
	.long	.LASF71
	.sleb128 22
	.uleb128 0xf
	.long	.LASF72
	.sleb128 23
	.uleb128 0xf
	.long	.LASF73
	.sleb128 24
	.uleb128 0xf
	.long	.LASF74
	.sleb128 25
	.uleb128 0xf
	.long	.LASF75
	.sleb128 26
	.uleb128 0xf
	.long	.LASF76
	.sleb128 27
	.uleb128 0xf
	.long	.LASF77
	.sleb128 28
	.uleb128 0xf
	.long	.LASF78
	.sleb128 29
	.uleb128 0xf
	.long	.LASF79
	.sleb128 30
	.uleb128 0xf
	.long	.LASF80
	.sleb128 31
	.uleb128 0xf
	.long	.LASF81
	.sleb128 32
	.uleb128 0xf
	.long	.LASF82
	.sleb128 33
	.uleb128 0xf
	.long	.LASF83
	.sleb128 34
	.uleb128 0xf
	.long	.LASF84
	.sleb128 35
	.uleb128 0xf
	.long	.LASF85
	.sleb128 36
	.uleb128 0xf
	.long	.LASF86
	.sleb128 37
	.uleb128 0xf
	.long	.LASF87
	.sleb128 38
	.uleb128 0xf
	.long	.LASF88
	.sleb128 39
	.uleb128 0xf
	.long	.LASF89
	.sleb128 40
	.uleb128 0xf
	.long	.LASF90
	.sleb128 41
	.uleb128 0xf
	.long	.LASF91
	.sleb128 42
	.uleb128 0xf
	.long	.LASF92
	.sleb128 43
	.uleb128 0xf
	.long	.LASF93
	.sleb128 44
	.uleb128 0xf
	.long	.LASF94
	.sleb128 45
	.uleb128 0xf
	.long	.LASF95
	.sleb128 46
	.uleb128 0xf
	.long	.LASF96
	.sleb128 47
	.uleb128 0xf
	.long	.LASF97
	.sleb128 48
	.uleb128 0xf
	.long	.LASF98
	.sleb128 49
	.uleb128 0xf
	.long	.LASF99
	.sleb128 50
	.uleb128 0xf
	.long	.LASF100
	.sleb128 51
	.uleb128 0xf
	.long	.LASF101
	.sleb128 52
	.uleb128 0xf
	.long	.LASF102
	.sleb128 53
	.uleb128 0xf
	.long	.LASF103
	.sleb128 54
	.uleb128 0xf
	.long	.LASF104
	.sleb128 55
	.uleb128 0xf
	.long	.LASF105
	.sleb128 56
	.uleb128 0xf
	.long	.LASF106
	.sleb128 57
	.uleb128 0xf
	.long	.LASF107
	.sleb128 58
	.uleb128 0xf
	.long	.LASF108
	.sleb128 59
	.byte	0
	.uleb128 0xe
	.long	.LASF110
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.long	0x469
	.uleb128 0xf
	.long	.LASF111
	.sleb128 0
	.uleb128 0xf
	.long	.LASF112
	.sleb128 1
	.uleb128 0xf
	.long	.LASF113
	.sleb128 2
	.uleb128 0xf
	.long	.LASF114
	.sleb128 3
	.uleb128 0xf
	.long	.LASF115
	.sleb128 4
	.uleb128 0xf
	.long	.LASF116
	.sleb128 5
	.uleb128 0xf
	.long	.LASF117
	.sleb128 6
	.uleb128 0xf
	.long	.LASF118
	.sleb128 7
	.uleb128 0xf
	.long	.LASF119
	.sleb128 8
	.uleb128 0xf
	.long	.LASF120
	.sleb128 9
	.byte	0
	.uleb128 0xe
	.long	.LASF121
	.byte	0x4
	.byte	0x8
	.byte	0x29
	.long	0x865
	.uleb128 0xf
	.long	.LASF122
	.sleb128 0
	.uleb128 0x10
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF123
	.sleb128 2
	.uleb128 0xf
	.long	.LASF124
	.sleb128 3
	.uleb128 0xf
	.long	.LASF125
	.sleb128 4
	.uleb128 0xf
	.long	.LASF126
	.sleb128 5
	.uleb128 0xf
	.long	.LASF127
	.sleb128 6
	.uleb128 0xf
	.long	.LASF128
	.sleb128 7
	.uleb128 0xf
	.long	.LASF129
	.sleb128 8
	.uleb128 0xf
	.long	.LASF130
	.sleb128 9
	.uleb128 0xf
	.long	.LASF131
	.sleb128 10
	.uleb128 0xf
	.long	.LASF132
	.sleb128 11
	.uleb128 0xf
	.long	.LASF133
	.sleb128 12
	.uleb128 0xf
	.long	.LASF134
	.sleb128 13
	.uleb128 0xf
	.long	.LASF135
	.sleb128 14
	.uleb128 0xf
	.long	.LASF136
	.sleb128 15
	.uleb128 0xf
	.long	.LASF137
	.sleb128 16
	.uleb128 0xf
	.long	.LASF138
	.sleb128 17
	.uleb128 0xf
	.long	.LASF139
	.sleb128 18
	.uleb128 0xf
	.long	.LASF140
	.sleb128 19
	.uleb128 0xf
	.long	.LASF141
	.sleb128 20
	.uleb128 0xf
	.long	.LASF142
	.sleb128 21
	.uleb128 0xf
	.long	.LASF143
	.sleb128 22
	.uleb128 0xf
	.long	.LASF144
	.sleb128 23
	.uleb128 0xf
	.long	.LASF145
	.sleb128 24
	.uleb128 0xf
	.long	.LASF146
	.sleb128 25
	.uleb128 0xf
	.long	.LASF147
	.sleb128 26
	.uleb128 0xf
	.long	.LASF148
	.sleb128 27
	.uleb128 0xf
	.long	.LASF149
	.sleb128 28
	.uleb128 0xf
	.long	.LASF150
	.sleb128 29
	.uleb128 0xf
	.long	.LASF151
	.sleb128 30
	.uleb128 0xf
	.long	.LASF152
	.sleb128 31
	.uleb128 0xf
	.long	.LASF153
	.sleb128 32
	.uleb128 0xf
	.long	.LASF154
	.sleb128 33
	.uleb128 0xf
	.long	.LASF155
	.sleb128 34
	.uleb128 0xf
	.long	.LASF156
	.sleb128 35
	.uleb128 0xf
	.long	.LASF157
	.sleb128 36
	.uleb128 0xf
	.long	.LASF158
	.sleb128 37
	.uleb128 0xf
	.long	.LASF159
	.sleb128 38
	.uleb128 0xf
	.long	.LASF160
	.sleb128 39
	.uleb128 0xf
	.long	.LASF161
	.sleb128 40
	.uleb128 0xf
	.long	.LASF162
	.sleb128 41
	.uleb128 0xf
	.long	.LASF163
	.sleb128 42
	.uleb128 0xf
	.long	.LASF164
	.sleb128 43
	.uleb128 0xf
	.long	.LASF165
	.sleb128 44
	.uleb128 0xf
	.long	.LASF166
	.sleb128 45
	.uleb128 0xf
	.long	.LASF167
	.sleb128 46
	.uleb128 0x10
	.string	"SET"
	.sleb128 47
	.uleb128 0x10
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF168
	.sleb128 49
	.uleb128 0xf
	.long	.LASF169
	.sleb128 50
	.uleb128 0xf
	.long	.LASF170
	.sleb128 51
	.uleb128 0xf
	.long	.LASF171
	.sleb128 52
	.uleb128 0xf
	.long	.LASF172
	.sleb128 53
	.uleb128 0xf
	.long	.LASF173
	.sleb128 54
	.uleb128 0xf
	.long	.LASF174
	.sleb128 55
	.uleb128 0xf
	.long	.LASF175
	.sleb128 56
	.uleb128 0xf
	.long	.LASF176
	.sleb128 57
	.uleb128 0xf
	.long	.LASF177
	.sleb128 58
	.uleb128 0x10
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF178
	.sleb128 60
	.uleb128 0x10
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF179
	.sleb128 62
	.uleb128 0xf
	.long	.LASF180
	.sleb128 63
	.uleb128 0xf
	.long	.LASF181
	.sleb128 64
	.uleb128 0xf
	.long	.LASF182
	.sleb128 65
	.uleb128 0x10
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF183
	.sleb128 67
	.uleb128 0xf
	.long	.LASF184
	.sleb128 68
	.uleb128 0x10
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF185
	.sleb128 70
	.uleb128 0xf
	.long	.LASF186
	.sleb128 71
	.uleb128 0xf
	.long	.LASF187
	.sleb128 72
	.uleb128 0xf
	.long	.LASF188
	.sleb128 73
	.uleb128 0xf
	.long	.LASF189
	.sleb128 74
	.uleb128 0xf
	.long	.LASF190
	.sleb128 75
	.uleb128 0xf
	.long	.LASF191
	.sleb128 76
	.uleb128 0x10
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF192
	.sleb128 78
	.uleb128 0x10
	.string	"DIV"
	.sleb128 79
	.uleb128 0x10
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF193
	.sleb128 81
	.uleb128 0xf
	.long	.LASF194
	.sleb128 82
	.uleb128 0x10
	.string	"AND"
	.sleb128 83
	.uleb128 0x10
	.string	"IOR"
	.sleb128 84
	.uleb128 0x10
	.string	"XOR"
	.sleb128 85
	.uleb128 0x10
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF195
	.sleb128 87
	.uleb128 0xf
	.long	.LASF196
	.sleb128 88
	.uleb128 0xf
	.long	.LASF197
	.sleb128 89
	.uleb128 0xf
	.long	.LASF198
	.sleb128 90
	.uleb128 0xf
	.long	.LASF199
	.sleb128 91
	.uleb128 0xf
	.long	.LASF200
	.sleb128 92
	.uleb128 0xf
	.long	.LASF201
	.sleb128 93
	.uleb128 0xf
	.long	.LASF202
	.sleb128 94
	.uleb128 0xf
	.long	.LASF203
	.sleb128 95
	.uleb128 0xf
	.long	.LASF204
	.sleb128 96
	.uleb128 0xf
	.long	.LASF205
	.sleb128 97
	.uleb128 0xf
	.long	.LASF206
	.sleb128 98
	.uleb128 0xf
	.long	.LASF207
	.sleb128 99
	.uleb128 0xf
	.long	.LASF208
	.sleb128 100
	.uleb128 0xf
	.long	.LASF209
	.sleb128 101
	.uleb128 0x10
	.string	"NE"
	.sleb128 102
	.uleb128 0x10
	.string	"EQ"
	.sleb128 103
	.uleb128 0x10
	.string	"GE"
	.sleb128 104
	.uleb128 0x10
	.string	"GT"
	.sleb128 105
	.uleb128 0x10
	.string	"LE"
	.sleb128 106
	.uleb128 0x10
	.string	"LT"
	.sleb128 107
	.uleb128 0x10
	.string	"GEU"
	.sleb128 108
	.uleb128 0x10
	.string	"GTU"
	.sleb128 109
	.uleb128 0x10
	.string	"LEU"
	.sleb128 110
	.uleb128 0x10
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF210
	.sleb128 112
	.uleb128 0xf
	.long	.LASF211
	.sleb128 113
	.uleb128 0xf
	.long	.LASF212
	.sleb128 114
	.uleb128 0xf
	.long	.LASF213
	.sleb128 115
	.uleb128 0xf
	.long	.LASF214
	.sleb128 116
	.uleb128 0xf
	.long	.LASF215
	.sleb128 117
	.uleb128 0xf
	.long	.LASF216
	.sleb128 118
	.uleb128 0xf
	.long	.LASF217
	.sleb128 119
	.uleb128 0xf
	.long	.LASF218
	.sleb128 120
	.uleb128 0xf
	.long	.LASF219
	.sleb128 121
	.uleb128 0xf
	.long	.LASF220
	.sleb128 122
	.uleb128 0xf
	.long	.LASF221
	.sleb128 123
	.uleb128 0xf
	.long	.LASF222
	.sleb128 124
	.uleb128 0xf
	.long	.LASF223
	.sleb128 125
	.uleb128 0x10
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF224
	.sleb128 127
	.uleb128 0xf
	.long	.LASF225
	.sleb128 128
	.uleb128 0x10
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF226
	.sleb128 130
	.uleb128 0x10
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF227
	.sleb128 132
	.uleb128 0xf
	.long	.LASF228
	.sleb128 133
	.uleb128 0xf
	.long	.LASF229
	.sleb128 134
	.uleb128 0xf
	.long	.LASF230
	.sleb128 135
	.uleb128 0xf
	.long	.LASF231
	.sleb128 136
	.uleb128 0xf
	.long	.LASF232
	.sleb128 137
	.uleb128 0xf
	.long	.LASF233
	.sleb128 138
	.uleb128 0xf
	.long	.LASF234
	.sleb128 139
	.uleb128 0xf
	.long	.LASF235
	.sleb128 140
	.uleb128 0xf
	.long	.LASF236
	.sleb128 141
	.uleb128 0xf
	.long	.LASF237
	.sleb128 142
	.uleb128 0xf
	.long	.LASF238
	.sleb128 143
	.uleb128 0xf
	.long	.LASF239
	.sleb128 144
	.uleb128 0xf
	.long	.LASF240
	.sleb128 145
	.uleb128 0xf
	.long	.LASF241
	.sleb128 146
	.uleb128 0xf
	.long	.LASF242
	.sleb128 147
	.uleb128 0xf
	.long	.LASF243
	.sleb128 148
	.uleb128 0xf
	.long	.LASF244
	.sleb128 149
	.uleb128 0xf
	.long	.LASF245
	.sleb128 150
	.uleb128 0xf
	.long	.LASF246
	.sleb128 151
	.uleb128 0x10
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF247
	.sleb128 153
	.byte	0
	.uleb128 0x11
	.long	.LASF248
	.byte	0x4
	.byte	0x8
	.value	0x297
	.long	0x914
	.uleb128 0xf
	.long	.LASF249
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF250
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF251
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF252
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF253
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF254
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF255
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF256
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF257
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF258
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF259
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF260
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF261
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF262
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF263
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF264
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF265
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF266
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF267
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF268
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF269
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF270
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF271
	.sleb128 -78
	.byte	0
	.uleb128 0x11
	.long	.LASF272
	.byte	0x4
	.byte	0x8
	.value	0x630
	.long	0x96a
	.uleb128 0xf
	.long	.LASF273
	.sleb128 0
	.uleb128 0xf
	.long	.LASF274
	.sleb128 1
	.uleb128 0xf
	.long	.LASF275
	.sleb128 2
	.uleb128 0xf
	.long	.LASF276
	.sleb128 3
	.uleb128 0xf
	.long	.LASF277
	.sleb128 4
	.uleb128 0xf
	.long	.LASF278
	.sleb128 5
	.uleb128 0xf
	.long	.LASF279
	.sleb128 6
	.uleb128 0xf
	.long	.LASF280
	.sleb128 7
	.uleb128 0xf
	.long	.LASF281
	.sleb128 8
	.uleb128 0xf
	.long	.LASF282
	.sleb128 9
	.uleb128 0xf
	.long	.LASF283
	.sleb128 10
	.uleb128 0xf
	.long	.LASF284
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF285
	.byte	0xc
	.byte	0x9
	.byte	0x35
	.long	0x99b
	.uleb128 0x8
	.long	.LASF286
	.byte	0x9
	.byte	0x38
	.long	0x99b
	.byte	0
	.uleb128 0x12
	.string	"sys"
	.byte	0x9
	.byte	0x3c
	.long	0x99b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF287
	.byte	0x9
	.byte	0x3f
	.long	0x99b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF288
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.long	0xabf
	.uleb128 0xf
	.long	.LASF289
	.sleb128 0
	.uleb128 0xf
	.long	.LASF290
	.sleb128 1
	.uleb128 0xf
	.long	.LASF291
	.sleb128 2
	.uleb128 0xf
	.long	.LASF292
	.sleb128 3
	.uleb128 0xf
	.long	.LASF293
	.sleb128 4
	.uleb128 0xf
	.long	.LASF294
	.sleb128 5
	.uleb128 0xf
	.long	.LASF295
	.sleb128 6
	.uleb128 0xf
	.long	.LASF296
	.sleb128 7
	.uleb128 0xf
	.long	.LASF297
	.sleb128 8
	.uleb128 0xf
	.long	.LASF298
	.sleb128 9
	.uleb128 0xf
	.long	.LASF299
	.sleb128 10
	.uleb128 0xf
	.long	.LASF300
	.sleb128 11
	.uleb128 0xf
	.long	.LASF301
	.sleb128 12
	.uleb128 0xf
	.long	.LASF302
	.sleb128 13
	.uleb128 0xf
	.long	.LASF303
	.sleb128 14
	.uleb128 0xf
	.long	.LASF304
	.sleb128 15
	.uleb128 0xf
	.long	.LASF305
	.sleb128 16
	.uleb128 0xf
	.long	.LASF306
	.sleb128 17
	.uleb128 0xf
	.long	.LASF307
	.sleb128 18
	.uleb128 0xf
	.long	.LASF308
	.sleb128 19
	.uleb128 0xf
	.long	.LASF309
	.sleb128 20
	.uleb128 0xf
	.long	.LASF310
	.sleb128 21
	.uleb128 0xf
	.long	.LASF311
	.sleb128 22
	.uleb128 0xf
	.long	.LASF312
	.sleb128 23
	.uleb128 0xf
	.long	.LASF313
	.sleb128 24
	.uleb128 0xf
	.long	.LASF314
	.sleb128 25
	.uleb128 0xf
	.long	.LASF315
	.sleb128 26
	.uleb128 0xf
	.long	.LASF316
	.sleb128 27
	.uleb128 0xf
	.long	.LASF317
	.sleb128 28
	.uleb128 0xf
	.long	.LASF318
	.sleb128 29
	.uleb128 0xf
	.long	.LASF319
	.sleb128 30
	.uleb128 0xf
	.long	.LASF320
	.sleb128 31
	.uleb128 0xf
	.long	.LASF321
	.sleb128 32
	.uleb128 0xf
	.long	.LASF322
	.sleb128 33
	.uleb128 0xf
	.long	.LASF323
	.sleb128 34
	.uleb128 0xf
	.long	.LASF324
	.sleb128 35
	.uleb128 0xf
	.long	.LASF325
	.sleb128 36
	.uleb128 0xf
	.long	.LASF326
	.sleb128 37
	.uleb128 0xf
	.long	.LASF327
	.sleb128 38
	.uleb128 0xf
	.long	.LASF328
	.sleb128 39
	.uleb128 0xf
	.long	.LASF329
	.sleb128 40
	.uleb128 0xf
	.long	.LASF330
	.sleb128 41
	.uleb128 0xf
	.long	.LASF331
	.sleb128 42
	.uleb128 0xf
	.long	.LASF332
	.sleb128 43
	.uleb128 0xf
	.long	.LASF333
	.sleb128 44
	.uleb128 0xf
	.long	.LASF334
	.sleb128 45
	.byte	0
	.uleb128 0x5
	.long	.LASF335
	.byte	0x9
	.byte	0x4c
	.long	0x9a2
	.uleb128 0x7
	.long	.LASF336
	.byte	0x28
	.byte	0x1
	.byte	0x7a
	.long	0xb19
	.uleb128 0x8
	.long	.LASF337
	.byte	0x1
	.byte	0x7d
	.long	0x96a
	.byte	0
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1
	.byte	0x81
	.long	0x96a
	.byte	0xc
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1
	.byte	0x84
	.long	0x292
	.byte	0x18
	.uleb128 0x14
	.long	.LASF340
	.byte	0x1
	.byte	0x88
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x20
	.uleb128 0x14
	.long	.LASF341
	.byte	0x1
	.byte	0x8c
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF342
	.byte	0x10
	.byte	0x1
	.byte	0x92
	.long	0xb3e
	.uleb128 0x8
	.long	.LASF343
	.byte	0x1
	.byte	0x95
	.long	0xb3e
	.byte	0
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1
	.byte	0x98
	.long	0xb44
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaca
	.uleb128 0x6
	.byte	0x8
	.long	0xb19
	.uleb128 0x15
	.long	.LASF345
	.byte	0x1
	.byte	0xb6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xb76
	.uleb128 0x16
	.string	"now"
	.byte	0x1
	.byte	0xb7
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96a
	.uleb128 0x17
	.long	.LASF346
	.byte	0x1
	.byte	0xd6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc4
	.uleb128 0x18
	.long	.LASF347
	.byte	0x1
	.byte	0xd7
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF338
	.byte	0x1
	.byte	0xd8
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF348
	.byte	0x1
	.byte	0xd9
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.long	.LASF373
	.byte	0x1
	.byte	0xe3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF350
	.byte	0x1
	.value	0x101
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xc4a
	.uleb128 0x1b
	.long	.LASF343
	.byte	0x1
	.value	0x102
	.long	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"tv"
	.byte	0x1
	.value	0x104
	.long	0xb3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF349
	.byte	0x1
	.value	0x105
	.long	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"now"
	.byte	0x1
	.value	0x106
	.long	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF353
	.long	0xc5a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.8796
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xc5a
	.uleb128 0xc
	.long	0x34
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	0xc4a
	.uleb128 0x1a
	.long	.LASF351
	.byte	0x1
	.value	0x136
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbe
	.uleb128 0x1b
	.long	.LASF343
	.byte	0x1
	.value	0x137
	.long	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"now"
	.byte	0x1
	.value	0x139
	.long	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF352
	.byte	0x1
	.value	0x13a
	.long	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF353
	.long	0xcce
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.8802
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xcce
	.uleb128 0xc
	.long	0x34
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.long	0xcbe
	.uleb128 0x1a
	.long	.LASF354
	.byte	0x1
	.value	0x15a
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xd22
	.uleb128 0x1b
	.long	.LASF343
	.byte	0x1
	.value	0x15b
	.long	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"tv"
	.byte	0x1
	.value	0x15d
	.long	0xb3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF353
	.long	0xd32
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.8807
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xd32
	.uleb128 0xc
	.long	0x34
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.long	0xd22
	.uleb128 0x1a
	.long	.LASF355
	.byte	0x1
	.value	0x172
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xd95
	.uleb128 0x1b
	.long	.LASF343
	.byte	0x1
	.value	0x173
	.long	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"tv"
	.byte	0x1
	.value	0x175
	.long	0xb3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"now"
	.byte	0x1
	.value	0x176
	.long	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF353
	.long	0xd95
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.8813
	.byte	0
	.uleb128 0xd
	.long	0xc4a
	.uleb128 0x1a
	.long	.LASF356
	.byte	0x1
	.value	0x187
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xdf4
	.uleb128 0x1b
	.long	.LASF343
	.byte	0x1
	.value	0x188
	.long	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF337
	.byte	0x1
	.value	0x189
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"tv"
	.byte	0x1
	.value	0x18b
	.long	0xb3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"now"
	.byte	0x1
	.value	0x18c
	.long	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF357
	.byte	0x1
	.value	0x1a3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7d
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x1a4
	.long	0xe7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.value	0x1a8
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF358
	.byte	0x1
	.value	0x1a9
	.long	0xb76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"now"
	.byte	0x1
	.value	0x1aa
	.long	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.string	"tv"
	.byte	0x1
	.value	0x1c3
	.long	0xb3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF359
	.byte	0x1
	.value	0x1c4
	.long	0xe83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xd
	.long	0x99b
	.uleb128 0x21
	.long	.LASF374
	.byte	0x1
	.value	0x205
	.long	0x44
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xeba
	.uleb128 0x1d
	.long	.LASF360
	.byte	0x1
	.value	0x207
	.long	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF361
	.byte	0x1
	.value	0x210
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xf06
	.uleb128 0x1f
	.string	"str"
	.byte	0x1
	.value	0x211
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF358
	.byte	0x1
	.value	0x212
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF362
	.byte	0x1
	.value	0x214
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF363
	.byte	0x1
	.byte	0x6c
	.long	0x99b
	.uleb128 0x9
	.byte	0x3
	.quad	clocks_to_msec
	.uleb128 0xb
	.long	0xaca
	.long	0xf2b
	.uleb128 0xc
	.long	0x34
	.byte	0x2c
	.byte	0
	.uleb128 0x22
	.long	.LASF364
	.byte	0x1
	.byte	0x9d
	.long	0xf1b
	.uleb128 0x9
	.byte	0x3
	.quad	timevars
	.uleb128 0x22
	.long	.LASF365
	.byte	0x1
	.byte	0xa0
	.long	0xb44
	.uleb128 0x9
	.byte	0x3
	.quad	stack
	.uleb128 0x22
	.long	.LASF366
	.byte	0x1
	.byte	0xa4
	.long	0xb44
	.uleb128 0x9
	.byte	0x3
	.quad	unused_stack_instances
	.uleb128 0x22
	.long	.LASF338
	.byte	0x1
	.byte	0xa9
	.long	0x96a
	.uleb128 0x9
	.byte	0x3
	.quad	start_time
	.uleb128 0x23
	.long	.LASF367
	.byte	0x5
	.byte	0xaa
	.long	0x266
	.uleb128 0x23
	.long	.LASF368
	.byte	0xa
	.byte	0x4a
	.long	0x2d
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x22
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
.LASF264:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF354:
	.string	"timevar_start"
.LASF8:
	.string	"size_t"
.LASF68:
	.string	"QCmode"
.LASF0:
	.string	"sizetype"
.LASF311:
	.string	"TV_REGMOVE"
.LASF132:
	.string	"MATCH_PAR_DUP"
.LASF198:
	.string	"LSHIFTRT"
.LASF341:
	.string	"used"
.LASF174:
	.string	"CONST_DOUBLE"
.LASF113:
	.string	"MODE_FLOAT"
.LASF286:
	.string	"user"
.LASF62:
	.string	"HFmode"
.LASF317:
	.string	"TV_FLOW2"
.LASF145:
	.string	"SEQUENCE"
.LASF276:
	.string	"GR_FRAME_POINTER"
.LASF226:
	.string	"SQRT"
.LASF24:
	.string	"_IO_save_end"
.LASF211:
	.string	"ORDERED"
.LASF208:
	.string	"PRE_MODIFY"
.LASF307:
	.string	"TV_BRANCH_PROB"
.LASF82:
	.string	"V2SImode"
.LASF125:
	.string	"INSN_LIST"
.LASF270:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF235:
	.string	"CONSTANT_P_RTX"
.LASF212:
	.string	"UNEQ"
.LASF100:
	.string	"BLKmode"
.LASF318:
	.string	"TV_IFCVT2"
.LASF191:
	.string	"MINUS"
.LASF361:
	.string	"print_time"
.LASF260:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF176:
	.string	"CONST_STRING"
.LASF17:
	.string	"_IO_write_base"
.LASF137:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF33:
	.string	"_lock"
.LASF213:
	.string	"UNGE"
.LASF279:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF51:
	.string	"QImode"
.LASF222:
	.string	"FLOAT_TRUNCATE"
.LASF214:
	.string	"UNGT"
.LASF282:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF22:
	.string	"_IO_save_base"
.LASF101:
	.string	"CCmode"
.LASF106:
	.string	"CCFPmode"
.LASF227:
	.string	"SIGN_EXTRACT"
.LASF64:
	.string	"SFmode"
.LASF244:
	.string	"US_MINUS"
.LASF26:
	.string	"_chain"
.LASF88:
	.string	"V8QImode"
.LASF30:
	.string	"_cur_column"
.LASF281:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF351:
	.string	"timevar_pop"
.LASF247:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF218:
	.string	"SIGN_EXTEND"
.LASF193:
	.string	"UDIV"
.LASF194:
	.string	"UMOD"
.LASF312:
	.string	"TV_MODE_SWITCH"
.LASF86:
	.string	"V4SImode"
.LASF2:
	.string	"long int"
.LASF228:
	.string	"ZERO_EXTRACT"
.LASF340:
	.string	"standalone"
.LASF293:
	.string	"TV_CLEANUP_CFG"
.LASF172:
	.string	"RESX"
.LASF267:
	.string	"NOTE_INSN_RANGE_END"
.LASF139:
	.string	"DEFINE_COMBINE"
.LASF316:
	.string	"TV_RELOAD_CSE_REGS"
.LASF116:
	.string	"MODE_COMPLEX_INT"
.LASF43:
	.string	"_IO_marker"
.LASF170:
	.string	"RETURN"
.LASF298:
	.string	"TV_PARSE"
.LASF158:
	.string	"NOTE"
.LASF326:
	.string	"TV_REG_STACK"
.LASF157:
	.string	"CODE_LABEL"
.LASF180:
	.string	"SUBREG"
.LASF73:
	.string	"TCmode"
.LASF327:
	.string	"TV_TO_SSA"
.LASF283:
	.string	"GR_VIRTUAL_CFA"
.LASF83:
	.string	"V2DImode"
.LASF322:
	.string	"TV_MACH_DEP"
.LASF127:
	.string	"MATCH_SCRATCH"
.LASF263:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF6:
	.string	"signed char"
.LASF223:
	.string	"FLOAT"
.LASF42:
	.string	"_IO_FILE"
.LASF337:
	.string	"elapsed"
.LASF374:
	.string	"get_run_time"
.LASF178:
	.string	"VALUE"
.LASF250:
	.string	"NOTE_INSN_DELETED"
.LASF245:
	.string	"SS_TRUNCATE"
.LASF123:
	.string	"INCLUDE"
.LASF134:
	.string	"DEFINE_INSN"
.LASF239:
	.string	"VEC_CONCAT"
.LASF110:
	.string	"mode_class"
.LASF249:
	.string	"NOTE_INSN_BIAS"
.LASF4:
	.string	"unsigned char"
.LASF319:
	.string	"TV_PEEPHOLE2"
.LASF373:
	.string	"init_timevar"
.LASF138:
	.string	"DEFINE_PEEPHOLE2"
.LASF152:
	.string	"ATTR_FLAG"
.LASF175:
	.string	"CONST_VECTOR"
.LASF368:
	.string	"time_report"
.LASF215:
	.string	"UNLE"
.LASF353:
	.string	"__FUNCTION__"
.LASF187:
	.string	"IF_THEN_ELSE"
.LASF65:
	.string	"DFmode"
.LASF72:
	.string	"XCmode"
.LASF216:
	.string	"UNLT"
.LASF55:
	.string	"TImode"
.LASF199:
	.string	"ROTATERT"
.LASF266:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF371:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF261:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF352:
	.string	"popped"
.LASF105:
	.string	"CCZmode"
.LASF11:
	.string	"char"
.LASF300:
	.string	"TV_VARCONST"
.LASF252:
	.string	"NOTE_INSN_BLOCK_END"
.LASF164:
	.string	"UNSPEC_VOLATILE"
.LASF58:
	.string	"PHImode"
.LASF161:
	.string	"ASM_INPUT"
.LASF221:
	.string	"FLOAT_EXTEND"
.LASF372:
	.string	"_IO_lock_t"
.LASF347:
	.string	"timer"
.LASF87:
	.string	"V4DImode"
.LASF343:
	.string	"timevar"
.LASF292:
	.string	"TV_CFG"
.LASF231:
	.string	"RANGE_INFO"
.LASF166:
	.string	"ADDR_DIFF_VEC"
.LASF14:
	.string	"_IO_read_ptr"
.LASF46:
	.string	"_pos"
.LASF183:
	.string	"LABEL_REF"
.LASF115:
	.string	"MODE_CC"
.LASF122:
	.string	"UNKNOWN"
.LASF334:
	.string	"TIMEVAR_LAST"
.LASF25:
	.string	"_markers"
.LASF59:
	.string	"PSImode"
.LASF363:
	.string	"clocks_to_msec"
.LASF90:
	.string	"V8SImode"
.LASF280:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF333:
	.string	"TV_REST_OF_COMPILATION"
.LASF331:
	.string	"TV_FINAL"
.LASF148:
	.string	"ATTR"
.LASF76:
	.string	"CSImode"
.LASF336:
	.string	"timevar_def"
.LASF251:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF34:
	.string	"_offset"
.LASF171:
	.string	"TRAP_IF"
.LASF135:
	.string	"DEFINE_PEEPHOLE"
.LASF111:
	.string	"MODE_RANDOM"
.LASF181:
	.string	"STRICT_LOW_PART"
.LASF112:
	.string	"MODE_INT"
.LASF297:
	.string	"TV_LEX"
.LASF306:
	.string	"TV_CSE2"
.LASF254:
	.string	"NOTE_INSN_LOOP_END"
.LASF275:
	.string	"GR_STACK_POINTER"
.LASF149:
	.string	"SET_ATTR"
.LASF3:
	.string	"long unsigned int"
.LASF153:
	.string	"INSN"
.LASF120:
	.string	"MAX_MODE_CLASS"
.LASF188:
	.string	"COND"
.LASF147:
	.string	"DEFINE_ATTR"
.LASF28:
	.string	"_flags2"
.LASF107:
	.string	"CCFPUmode"
.LASF126:
	.string	"MATCH_OPERAND"
.LASF16:
	.string	"_IO_read_base"
.LASF256:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF189:
	.string	"COMPARE"
.LASF289:
	.string	"TV_TOTAL"
.LASF272:
	.string	"global_rtl_index"
.LASF41:
	.string	"_unused2"
.LASF220:
	.string	"TRUNCATE"
.LASF131:
	.string	"MATCH_OP_DUP"
.LASF63:
	.string	"TQFmode"
.LASF108:
	.string	"MAX_MACHINE_MODE"
.LASF315:
	.string	"TV_GLOBAL_ALLOC"
.LASF324:
	.string	"TV_REORDER_BLOCKS"
.LASF49:
	.string	"VOIDmode"
.LASF29:
	.string	"_old_offset"
.LASF136:
	.string	"DEFINE_SPLIT"
.LASF284:
	.string	"GR_MAX"
.LASF118:
	.string	"MODE_VECTOR_INT"
.LASF305:
	.string	"TV_LOOP"
.LASF60:
	.string	"PDImode"
.LASF80:
	.string	"V2QImode"
.LASF91:
	.string	"V8DImode"
.LASF48:
	.string	"long long int"
.LASF314:
	.string	"TV_LOCAL_ALLOC"
.LASF69:
	.string	"HCmode"
.LASF328:
	.string	"TV_SSA_CCP"
.LASF121:
	.string	"rtx_code"
.LASF246:
	.string	"US_TRUNCATE"
.LASF370:
	.string	"timevar.c"
.LASF290:
	.string	"TV_GC"
.LASF66:
	.string	"XFmode"
.LASF229:
	.string	"HIGH"
.LASF274:
	.string	"GR_CC0"
.LASF93:
	.string	"V2SFmode"
.LASF162:
	.string	"ASM_OPERANDS"
.LASF77:
	.string	"CDImode"
.LASF146:
	.string	"ADDRESS"
.LASF206:
	.string	"POST_DEC"
.LASF19:
	.string	"_IO_write_end"
.LASF230:
	.string	"LO_SUM"
.LASF169:
	.string	"CALL"
.LASF85:
	.string	"V4HImode"
.LASF143:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF128:
	.string	"MATCH_DUP"
.LASF288:
	.string	"float"
.LASF321:
	.string	"TV_SCHED2"
.LASF61:
	.string	"QFmode"
.LASF182:
	.string	"CONCAT"
.LASF50:
	.string	"BImode"
.LASF20:
	.string	"_IO_buf_base"
.LASF285:
	.string	"timevar_time_def"
.LASF1:
	.string	"unsigned int"
.LASF278:
	.string	"GR_ARG_POINTER"
.LASF70:
	.string	"SCmode"
.LASF233:
	.string	"RANGE_VAR"
.LASF52:
	.string	"HImode"
.LASF204:
	.string	"PRE_DEC"
.LASF156:
	.string	"BARRIER"
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
.LASF197:
	.string	"ASHIFTRT"
.LASF45:
	.string	"_sbuf"
.LASF79:
	.string	"COImode"
.LASF291:
	.string	"TV_DUMP"
.LASF313:
	.string	"TV_SCHED"
.LASF349:
	.string	"context"
.LASF84:
	.string	"V4QImode"
.LASF258:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF364:
	.string	"timevars"
.LASF140:
	.string	"DEFINE_EXPAND"
.LASF358:
	.string	"total"
.LASF13:
	.string	"_flags"
.LASF89:
	.string	"V8HImode"
.LASF323:
	.string	"TV_DBR_SCHED"
.LASF40:
	.string	"_mode"
.LASF95:
	.string	"V4SFmode"
.LASF301:
	.string	"TV_INTEGRATION"
.LASF190:
	.string	"PLUS"
.LASF302:
	.string	"TV_JUMP"
.LASF369:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF114:
	.string	"MODE_PARTIAL_INT"
.LASF192:
	.string	"MULT"
.LASF151:
	.string	"EQ_ATTR"
.LASF75:
	.string	"CHImode"
.LASF296:
	.string	"TV_CPP"
.LASF360:
	.string	"total_elapsed"
.LASF53:
	.string	"SImode"
.LASF287:
	.string	"wall"
.LASF342:
	.string	"timevar_stack_def"
.LASF196:
	.string	"ROTATE"
.LASF309:
	.string	"TV_COMBINE"
.LASF103:
	.string	"CCGOCmode"
.LASF12:
	.string	"FILE"
.LASF94:
	.string	"V2DFmode"
.LASF219:
	.string	"ZERO_EXTEND"
.LASF168:
	.string	"CLOBBER"
.LASF184:
	.string	"SYMBOL_REF"
.LASF304:
	.string	"TV_GCSE"
.LASF201:
	.string	"SMAX"
.LASF277:
	.string	"GR_HARD_FRAME_POINTER"
.LASF325:
	.string	"TV_SHORTEN_BRANCH"
.LASF203:
	.string	"UMAX"
.LASF47:
	.string	"long long unsigned int"
.LASF262:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF238:
	.string	"VEC_SELECT"
.LASF9:
	.string	"__off_t"
.LASF185:
	.string	"ADDRESSOF"
.LASF350:
	.string	"timevar_push"
.LASF155:
	.string	"CALL_INSN"
.LASF71:
	.string	"DCmode"
.LASF67:
	.string	"TFmode"
.LASF195:
	.string	"ASHIFT"
.LASF346:
	.string	"timevar_accumulate"
.LASF303:
	.string	"TV_CSE"
.LASF102:
	.string	"CCGCmode"
.LASF225:
	.string	"UNSIGNED_FIX"
.LASF186:
	.string	"QUEUED"
.LASF332:
	.string	"TV_SYMOUT"
.LASF217:
	.string	"LTGT"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF362:
	.string	"all_time"
.LASF257:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF96:
	.string	"V4DFmode"
.LASF339:
	.string	"name"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF265:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF234:
	.string	"RANGE_LIVE"
.LASF54:
	.string	"DImode"
.LASF57:
	.string	"PQImode"
.LASF154:
	.string	"JUMP_INSN"
.LASF21:
	.string	"_IO_buf_end"
.LASF320:
	.string	"TV_RENAME_REGISTERS"
.LASF273:
	.string	"GR_PC"
.LASF255:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF345:
	.string	"get_time"
.LASF236:
	.string	"CALL_PLACEHOLDER"
.LASF117:
	.string	"MODE_COMPLEX_FLOAT"
.LASF335:
	.string	"timevar_id_t"
.LASF119:
	.string	"MODE_VECTOR_FLOAT"
.LASF359:
	.string	"tiny"
.LASF124:
	.string	"EXPR_LIST"
.LASF97:
	.string	"V8SFmode"
.LASF367:
	.string	"stderr"
.LASF7:
	.string	"short int"
.LASF160:
	.string	"PARALLEL"
.LASF207:
	.string	"POST_INC"
.LASF237:
	.string	"VEC_MERGE"
.LASF104:
	.string	"CCNOmode"
.LASF243:
	.string	"SS_MINUS"
.LASF74:
	.string	"CQImode"
.LASF295:
	.string	"TV_LIFE_UPDATE"
.LASF31:
	.string	"_vtable_offset"
.LASF365:
	.string	"stack"
.LASF129:
	.string	"MATCH_OPERATOR"
.LASF109:
	.string	"machine_mode"
.LASF56:
	.string	"OImode"
.LASF308:
	.string	"TV_FLOW"
.LASF179:
	.string	"SCRATCH"
.LASF310:
	.string	"TV_IFCVT"
.LASF165:
	.string	"ADDR_VEC"
.LASF348:
	.string	"stop_time"
.LASF205:
	.string	"PRE_INC"
.LASF241:
	.string	"SS_PLUS"
.LASF224:
	.string	"UNSIGNED_FLOAT"
.LASF92:
	.string	"V16QImode"
.LASF15:
	.string	"_IO_read_end"
.LASF232:
	.string	"RANGE_REG"
.LASF248:
	.string	"insn_note"
.LASF355:
	.string	"timevar_stop"
.LASF99:
	.string	"V16SFmode"
.LASF133:
	.string	"MATCH_INSN"
.LASF27:
	.string	"_fileno"
.LASF366:
	.string	"unused_stack_instances"
.LASF210:
	.string	"UNORDERED"
.LASF338:
	.string	"start_time"
.LASF5:
	.string	"short unsigned int"
.LASF209:
	.string	"POST_MODIFY"
.LASF200:
	.string	"SMIN"
.LASF144:
	.string	"DEFINE_COND_EXEC"
.LASF18:
	.string	"_IO_write_ptr"
.LASF357:
	.string	"timevar_print"
.LASF202:
	.string	"UMIN"
.LASF259:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF177:
	.string	"CONST"
.LASF167:
	.string	"PREFETCH"
.LASF150:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF130:
	.string	"MATCH_PARALLEL"
.LASF98:
	.string	"V8DFmode"
.LASF299:
	.string	"TV_EXPAND"
.LASF268:
	.string	"NOTE_INSN_LIVE"
.LASF329:
	.string	"TV_SSA_DCE"
.LASF253:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF240:
	.string	"VEC_DUPLICATE"
.LASF173:
	.string	"CONST_INT"
.LASF294:
	.string	"TV_LIFE"
.LASF330:
	.string	"TV_FROM_SSA"
.LASF344:
	.string	"next"
.LASF242:
	.string	"US_PLUS"
.LASF271:
	.string	"NOTE_INSN_MAX"
.LASF141:
	.string	"DEFINE_DELAY"
.LASF81:
	.string	"V2HImode"
.LASF269:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF356:
	.string	"timevar_get"
.LASF78:
	.string	"CTImode"
.LASF142:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF163:
	.string	"UNSPEC"
.LASF159:
	.string	"COND_EXEC"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
