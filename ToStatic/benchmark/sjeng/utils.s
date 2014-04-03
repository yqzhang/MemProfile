	.file	"utils.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 utils.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	state
	.comm	state,2500,32
	.local	next
	.comm	next,8,8
	.globl	left
	.data
	.align 4
	.type	left, @object
	.size	left, 4
left:
	.long	-1
	.text
	.globl	allocate_time
	.type	allocate_time, @function
allocate_time:
.LFB2:
	.file 1 "utils.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 36 0
	movl	$0, %eax	#, tmp170
	movq	%rax, -16(%rbp)	# tmp170, allocated_time
	movabsq	$4626322717216342016, %rax	#, tmp171
	movq	%rax, -8(%rbp)	# tmp171, move_speed
	.loc 1 39 0
	movl	moves_to_tc(%rip), %eax	# moves_to_tc, moves_to_tc.0
	testl	%eax, %eax	# moves_to_tc.0
	jne	.L2	#,
	.loc 1 48 0
	movl	min_per_game(%rip), %eax	# min_per_game, min_per_game.1
	cmpl	$5, %eax	#, min_per_game.1
	jg	.L3	#,
	.loc 1 48 0 is_stmt 0 discriminator 1
	movl	inc(%rip), %eax	# inc, inc.2
	testl	%eax, %eax	# inc.2
	je	.L4	#,
.L3:
	.loc 1 49 0 is_stmt 1
	movl	time_left(%rip), %eax	# time_left, time_left.3
	cvtsi2sd	%eax, %xmm1	# time_left.3, D.5085
	movl	min_per_game(%rip), %eax	# min_per_game, min_per_game.4
	imull	$6000, %eax, %edx	#, min_per_game.4, D.5086
	movl	sec_per_game(%rip), %eax	# sec_per_game, sec_per_game.5
	imull	$100, %eax, %eax	#, sec_per_game.5, D.5086
	addl	%edx, %eax	# D.5086, D.5086
	cvtsi2sd	%eax, %xmm0	# D.5086, D.5085
	movsd	.LC4(%rip), %xmm2	#, tmp172
	mulsd	%xmm2, %xmm0	# tmp172, D.5085
	movsd	.LC5(%rip), %xmm2	#, tmp173
	divsd	%xmm2, %xmm0	# tmp173, D.5085
	ucomisd	%xmm1, %xmm0	# D.5085, D.5085
	jbe	.L5	#,
.L4:
	.loc 1 51 0
	movl	opp_time(%rip), %edx	# opp_time, opp_time.6
	movl	time_left(%rip), %eax	# time_left, time_left.7
	subl	%eax, %edx	# time_left.7, D.5086
	movl	%edx, %eax	# D.5086, D.5086
	cvtsi2sd	%eax, %xmm0	# D.5086, D.5085
	movl	opp_time(%rip), %eax	# opp_time, opp_time.8
	cvtsi2sd	%eax, %xmm1	# opp_time.8, D.5085
	movsd	.LC5(%rip), %xmm2	#, tmp174
	divsd	%xmm2, %xmm1	# tmp174, D.5085
	ucomisd	%xmm1, %xmm0	# D.5085, D.5085
	jbe	.L7	#,
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.9
	testl	%eax, %eax	# xb_mode.9
	je	.L7	#,
	.loc 1 52 0 is_stmt 1
	movabsq	$4630826316843712512, %rax	#, tmp175
	movq	%rax, -8(%rbp)	# tmp175, move_speed
	jmp	.L5	#
.L7:
	.loc 1 53 0
	movl	opp_time(%rip), %edx	# opp_time, opp_time.10
	movl	time_left(%rip), %eax	# time_left, time_left.11
	subl	%eax, %edx	# time_left.11, D.5086
	movl	%edx, %eax	# D.5086, D.5086
	cvtsi2sd	%eax, %xmm0	# D.5086, D.5085
	movl	opp_time(%rip), %eax	# opp_time, opp_time.12
	cvtsi2sd	%eax, %xmm1	# opp_time.12, D.5085
	movsd	.LC7(%rip), %xmm2	#, tmp176
	divsd	%xmm2, %xmm1	# tmp176, D.5085
	ucomisd	%xmm1, %xmm0	# D.5085, D.5085
	jbe	.L9	#,
	.loc 1 53 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.13
	testl	%eax, %eax	# xb_mode.13
	je	.L9	#,
	.loc 1 54 0 is_stmt 1
	movabsq	$4629137466983448576, %rax	#, tmp177
	movq	%rax, -8(%rbp)	# tmp177, move_speed
	jmp	.L5	#
.L9:
	.loc 1 55 0
	movl	opp_time(%rip), %edx	# opp_time, opp_time.14
	movl	time_left(%rip), %eax	# time_left, time_left.15
	subl	%eax, %edx	# time_left.15, D.5086
	movl	%edx, %eax	# D.5086, D.5086
	cvtsi2sd	%eax, %xmm0	# D.5086, D.5085
	movl	opp_time(%rip), %eax	# opp_time, opp_time.16
	cvtsi2sd	%eax, %xmm1	# opp_time.16, D.5085
	movsd	.LC3(%rip), %xmm2	#, tmp178
	divsd	%xmm2, %xmm1	# tmp178, D.5085
	ucomisd	%xmm1, %xmm0	# D.5085, D.5085
	jbe	.L5	#,
	.loc 1 55 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.17
	testl	%eax, %eax	# xb_mode.17
	je	.L5	#,
	.loc 1 56 0 is_stmt 1
	movabsq	$4627730092099895296, %rax	#, tmp179
	movq	%rax, -8(%rbp)	# tmp179, move_speed
.L5:
	.loc 1 59 0
	movl	Variant(%rip), %eax	# Variant, Variant.18
	cmpl	$3, %eax	#, Variant.18
	je	.L12	#,
	.loc 1 59 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.19
	cmpl	$4, %eax	#, Variant.19
	je	.L12	#,
	.loc 1 61 0 is_stmt 1
	movl	time_left(%rip), %edx	# time_left, time_left.20
	movl	opp_time(%rip), %eax	# opp_time, opp_time.21
	subl	%eax, %edx	# opp_time.21, D.5086
	movl	%edx, %eax	# D.5086, D.5086
	cvtsi2sd	%eax, %xmm0	# D.5086, D.5085
	movl	time_left(%rip), %eax	# time_left, time_left.22
	cvtsi2sd	%eax, %xmm1	# time_left.22, D.5085
	movsd	.LC5(%rip), %xmm2	#, tmp180
	divsd	%xmm2, %xmm1	# tmp180, D.5085
	ucomisd	%xmm1, %xmm0	# D.5085, D.5085
	jbe	.L13	#,
	.loc 1 61 0 is_stmt 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.23
	testl	%eax, %eax	# xb_mode.23
	je	.L13	#,
	.loc 1 62 0 is_stmt 1
	movsd	-8(%rbp), %xmm0	# move_speed, tmp182
	movsd	.LC7(%rip), %xmm1	#, tmp183
	subsd	%xmm1, %xmm0	# tmp183, tmp181
	movsd	%xmm0, -8(%rbp)	# tmp181, move_speed
	jmp	.L15	#
.L13:
	.loc 1 63 0
	movl	time_left(%rip), %edx	# time_left, time_left.24
	movl	opp_time(%rip), %eax	# opp_time, opp_time.25
	subl	%eax, %edx	# opp_time.25, D.5086
	movl	%edx, %eax	# D.5086, D.5086
	cvtsi2sd	%eax, %xmm0	# D.5086, D.5085
	movl	time_left(%rip), %eax	# time_left, time_left.26
	cvtsi2sd	%eax, %xmm1	# time_left.26, D.5085
	movsd	.LC7(%rip), %xmm2	#, tmp184
	divsd	%xmm2, %xmm1	# tmp184, D.5085
	ucomisd	%xmm1, %xmm0	# D.5085, D.5085
	ja	.L31	#,
	.loc 1 61 0
	jmp	.L17	#
.L31:
	.loc 1 63 0 discriminator 1
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.27
	testl	%eax, %eax	# xb_mode.27
	je	.L15	#,
	.loc 1 64 0
	movsd	-8(%rbp), %xmm0	# move_speed, tmp186
	movsd	.LC5(%rip), %xmm1	#, tmp187
	subsd	%xmm1, %xmm0	# tmp187, tmp185
	movsd	%xmm0, -8(%rbp)	# tmp185, move_speed
	.loc 1 61 0
	jmp	.L17	#
.L15:
	jmp	.L17	#
.L12:
	.loc 1 66 0
	movl	Variant(%rip), %eax	# Variant, Variant.28
	cmpl	$3, %eax	#, Variant.28
	jne	.L18	#,
	.loc 1 68 0
	movsd	-8(%rbp), %xmm0	# move_speed, tmp189
	movsd	.LC7(%rip), %xmm1	#, tmp190
	subsd	%xmm1, %xmm0	# tmp190, tmp188
	movsd	%xmm0, -8(%rbp)	# tmp188, move_speed
	jmp	.L17	#
.L18:
	.loc 1 70 0
	movl	Variant(%rip), %eax	# Variant, Variant.29
	cmpl	$4, %eax	#, Variant.29
	jne	.L17	#,
	.loc 1 72 0
	movsd	-8(%rbp), %xmm0	# move_speed, tmp192
	movsd	.LC5(%rip), %xmm1	#, tmp193
	subsd	%xmm1, %xmm0	# tmp193, tmp191
	movsd	%xmm0, -8(%rbp)	# tmp191, move_speed
.L17:
	.loc 1 76 0
	movl	time_left(%rip), %eax	# time_left, time_left.30
	cvtsi2sd	%eax, %xmm0	# time_left.30, D.5085
	divsd	-8(%rbp), %xmm0	# move_speed, tmp194
	movsd	%xmm0, -16(%rbp)	# tmp194, allocated_time
	.loc 1 79 0
	movl	inc(%rip), %eax	# inc, inc.31
	testl	%eax, %eax	# inc.31
	je	.L23	#,
	.loc 1 80 0
	movl	time_left(%rip), %eax	# time_left, time_left.32
	cvtsi2sd	%eax, %xmm0	# time_left.32, D.5085
	subsd	-16(%rbp), %xmm0	# allocated_time, D.5085
	movl	inc(%rip), %eax	# inc, inc.33
	cvtsi2sd	%eax, %xmm1	# inc.33, D.5085
	subsd	%xmm1, %xmm0	# D.5085, D.5085
	ucomisd	.LC10(%rip), %xmm0	#, D.5085
	jbe	.L34	#,
	.loc 1 81 0
	movl	inc(%rip), %eax	# inc, inc.34
	cvtsi2sd	%eax, %xmm0	# inc.34, D.5085
	movsd	-16(%rbp), %xmm1	# allocated_time, tmp196
	addsd	%xmm1, %xmm0	# tmp196, tmp195
	movsd	%xmm0, -16(%rbp)	# tmp195, allocated_time
	jmp	.L23	#
.L34:
	.loc 1 83 0
	movl	time_left(%rip), %eax	# time_left, time_left.35
	cvtsi2sd	%eax, %xmm0	# time_left.35, D.5085
	movapd	%xmm0, %xmm1	# D.5085, D.5085
	subsd	-16(%rbp), %xmm1	# allocated_time, D.5085
	movl	inc(%rip), %eax	# inc, inc.36
	cvtsi2sd	%eax, %xmm0	# inc.36, D.5085
	addsd	%xmm0, %xmm0	# D.5085, D.5085
	movsd	.LC11(%rip), %xmm2	#, tmp197
	divsd	%xmm2, %xmm0	# tmp197, D.5085
	subsd	%xmm0, %xmm1	# D.5085, D.5085
	movapd	%xmm1, %xmm0	# D.5085, D.5085
	ucomisd	.LC12(%rip), %xmm0	#, D.5085
	ja	.L33	#,
	jmp	.L23	#
.L33:
	.loc 1 84 0
	movl	inc(%rip), %eax	# inc, inc.37
	cvtsi2sd	%eax, %xmm0	# inc.37, D.5085
	addsd	%xmm0, %xmm0	# D.5085, D.5085
	movsd	.LC11(%rip), %xmm1	#, tmp198
	divsd	%xmm1, %xmm0	# tmp198, D.5085
	movsd	-16(%rbp), %xmm1	# allocated_time, tmp200
	addsd	%xmm1, %xmm0	# tmp200, tmp199
	movsd	%xmm0, -16(%rbp)	# tmp199, allocated_time
	jmp	.L23	#
.L2:
	.loc 1 91 0
	movl	min_per_game(%rip), %eax	# min_per_game, min_per_game.38
	cvtsi2ss	%eax, %xmm0	# min_per_game.38, D.5087
	unpcklps	%xmm0, %xmm0	# D.5087, D.5087
	cvtps2pd	%xmm0, %xmm0	# D.5087, D.5085
	movsd	.LC13(%rip), %xmm1	#, tmp201
	mulsd	%xmm0, %xmm1	# D.5085, D.5085
	.loc 1 92 0
	movl	sec_per_game(%rip), %eax	# sec_per_game, sec_per_game.39
	cvtsi2ss	%eax, %xmm0	# sec_per_game.39, D.5087
	unpcklps	%xmm0, %xmm0	# D.5087, D.5087
	cvtps2pd	%xmm0, %xmm0	# D.5087, D.5085
	movsd	.LC12(%rip), %xmm2	#, tmp202
	mulsd	%xmm2, %xmm0	# tmp202, D.5085
	addsd	%xmm1, %xmm0	# D.5085, D.5085
	movl	moves_to_tc(%rip), %eax	# moves_to_tc, moves_to_tc.40
	cvtsi2ss	%eax, %xmm1	# moves_to_tc.40, D.5087
	unpcklps	%xmm1, %xmm1	# D.5087, D.5087
	cvtps2pd	%xmm1, %xmm1	# D.5087, D.5085
	divsd	%xmm1, %xmm0	# D.5085, D.5085
	.loc 1 91 0
	movsd	.LC12(%rip), %xmm1	#, tmp204
	subsd	%xmm1, %xmm0	# tmp204, tmp203
	movsd	%xmm0, -16(%rbp)	# tmp203, allocated_time
	.loc 1 95 0
	movl	time_cushion(%rip), %eax	# time_cushion, time_cushion.41
	testl	%eax, %eax	# time_cushion.41
	je	.L23	#,
	.loc 1 96 0
	movl	time_cushion(%rip), %eax	# time_cushion, time_cushion.42
	cvtsi2sd	%eax, %xmm0	# time_cushion.42, D.5085
	movsd	.LC14(%rip), %xmm1	#, tmp205
	mulsd	%xmm1, %xmm0	# tmp205, D.5085
	movsd	.LC11(%rip), %xmm1	#, tmp206
	divsd	%xmm1, %xmm0	# tmp206, D.5085
	movsd	-16(%rbp), %xmm1	# allocated_time, tmp208
	addsd	%xmm1, %xmm0	# tmp208, tmp207
	movsd	%xmm0, -16(%rbp)	# tmp207, allocated_time
	.loc 1 97 0
	movl	time_cushion(%rip), %edx	# time_cushion, time_cushion.43
	movl	time_cushion(%rip), %eax	# time_cushion, time_cushion.44
	cvtsi2sd	%eax, %xmm0	# time_cushion.44, D.5085
	movsd	.LC14(%rip), %xmm1	#, tmp209
	mulsd	%xmm1, %xmm0	# tmp209, D.5085
	movsd	.LC11(%rip), %xmm1	#, tmp210
	divsd	%xmm1, %xmm0	# tmp210, D.5085
	cvttsd2si	%xmm0, %eax	# D.5085, D.5086
	subl	%eax, %edx	# D.5086, time_cushion.45
	movl	%edx, %eax	# time_cushion.45, time_cushion.45
	movl	%eax, time_cushion(%rip)	# time_cushion.45, time_cushion
.L23:
	.loc 1 101 0
	movl	Variant(%rip), %eax	# Variant, Variant.46
	cmpl	$1, %eax	#, Variant.46
	jne	.L24	#,
	.loc 1 103 0
	movsd	-16(%rbp), %xmm1	# allocated_time, tmp212
	movsd	.LC15(%rip), %xmm0	#, tmp213
	mulsd	%xmm1, %xmm0	# tmp212, tmp211
	movsd	%xmm0, -16(%rbp)	# tmp211, allocated_time
	.loc 1 105 0
	movl	opp_time(%rip), %edx	# opp_time, opp_time.47
	movl	time_left(%rip), %eax	# time_left, time_left.48
	cmpl	%eax, %edx	# time_left.48, opp_time.47
	jg	.L25	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	opp_time(%rip), %eax	# opp_time, opp_time.49
	cmpl	$1499, %eax	#, opp_time.49
	jg	.L24	#,
.L25:
	.loc 1 108 0 is_stmt 1
	movsd	-16(%rbp), %xmm1	# allocated_time, tmp215
	movsd	.LC16(%rip), %xmm0	#, tmp216
	mulsd	%xmm1, %xmm0	# tmp215, tmp214
	movsd	%xmm0, -16(%rbp)	# tmp214, allocated_time
.L24:
	.loc 1 112 0
	movsd	-16(%rbp), %xmm0	# allocated_time, tmp217
	cvttsd2si	%xmm0, %eax	# tmp217, D.5086
	.loc 1 114 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	allocate_time, .-allocate_time
	.section	.rodata
.LC17:
	.string	"%c@%c%d"
.LC18:
	.string	"%c%d"
.LC19:
	.string	"%c%d=%c"
.LC20:
	.string	"%cx%c%d"
.LC21:
	.string	"%cx%c%d=%c"
.LC22:
	.string	"%c%c%c%d"
.LC23:
	.string	"%c%d%c%d"
.LC24:
	.string	"%c%cx%c%d"
.LC25:
	.string	"%c%dx%c%d"
.LC26:
	.string	"%c%c%d"
	.text
	.globl	comp_to_san
	.type	comp_to_san, @function
comp_to_san:
.LFB3:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24704, %rsp	#,
	movq	%rdi, -24696(%rbp)	# str, str
	.loc 1 120 0
	movl	$70, -24640(%rbp)	#, type_to_char
	movl	$80, -24636(%rbp)	#, type_to_char
	movl	$80, -24632(%rbp)	#, type_to_char
	movl	$78, -24628(%rbp)	#, type_to_char
	movl	$78, -24624(%rbp)	#, type_to_char
	movl	$75, -24620(%rbp)	#, type_to_char
	movl	$75, -24616(%rbp)	#, type_to_char
	movl	$82, -24612(%rbp)	#, type_to_char
	movl	$82, -24608(%rbp)	#, type_to_char
	movl	$81, -24604(%rbp)	#, type_to_char
	movl	$81, -24600(%rbp)	#, type_to_char
	movl	$66, -24596(%rbp)	#, type_to_char
	movl	$66, -24592(%rbp)	#, type_to_char
	movl	$69, -24588(%rbp)	#, type_to_char
	.loc 1 126 0
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp155
	movl	%eax, -24664(%rbp)	# tmp155, f_rank
	.loc 1 127 0
	movl	20(%rbp), %eax	# move.target, D.5088
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp157
	movl	%eax, -24660(%rbp)	# tmp157, t_rank
	.loc 1 128 0
	movl	$97, -24656(%rbp)	#, converter
	.loc 1 129 0
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5088
	movl	%eax, %edx	# D.5088, D.5089
	movl	-24656(%rbp), %eax	# converter, tmp159
	addl	%edx, %eax	# D.5089, D.5089
	subl	$1, %eax	#, D.5089
	movb	%al, -24678(%rbp)	# D.5089, f_file
	.loc 1 130 0
	movl	20(%rbp), %eax	# move.target, D.5088
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5088
	movl	%eax, %edx	# D.5088, D.5089
	movl	-24656(%rbp), %eax	# converter, tmp161
	addl	%edx, %eax	# D.5089, D.5089
	subl	$1, %eax	#, D.5089
	movb	%al, -24677(%rbp)	# D.5089, t_file
	.loc 1 132 0
	movl	16(%rbp), %eax	# move.from, D.5088
	testl	%eax, %eax	# D.5088
	jne	.L36	#,
	.loc 1 134 0
	movsbl	-24677(%rbp), %ecx	# t_file, D.5088
	movl	28(%rbp), %eax	# move.promoted, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %esi	# t_rank, tmp163
	movq	-24696(%rbp), %rax	# str, tmp164
	movl	%esi, %r8d	# tmp163,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp164,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L37	#
.L36:
	.loc 1 136 0
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cmpl	$1, %eax	#, D.5088
	je	.L38	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cmpl	$2, %eax	#, D.5088
	jne	.L39	#,
.L38:
	.loc 1 138 0 is_stmt 1
	movl	20(%rbp), %eax	# move.target, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cmpl	$13, %eax	#, D.5088
	jne	.L40	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	36(%rbp), %eax	# move.ep, D.5088
	testl	%eax, %eax	# D.5088
	jne	.L40	#,
	.loc 1 140 0 is_stmt 1
	movl	28(%rbp), %eax	# move.promoted, D.5088
	testl	%eax, %eax	# D.5088
	jne	.L41	#,
	.loc 1 142 0
	movsbl	-24677(%rbp), %edx	# t_file, D.5088
	movl	-24660(%rbp), %ecx	# t_rank, tmp168
	movq	-24696(%rbp), %rax	# str, tmp169
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp169,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 140 0
	jmp	.L43	#
.L41:
	.loc 1 146 0
	movl	28(%rbp), %eax	# move.promoted, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %esi	# type_to_char, D.5088
	movsbl	-24677(%rbp), %edx	# t_file, D.5088
	movl	-24660(%rbp), %ecx	# t_rank, tmp171
	movq	-24696(%rbp), %rax	# str, tmp172
	movl	%esi, %r8d	# D.5088,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp172,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 140 0
	jmp	.L43	#
.L40:
	.loc 1 151 0
	movl	28(%rbp), %eax	# move.promoted, D.5088
	testl	%eax, %eax	# D.5088
	jne	.L44	#,
	.loc 1 153 0
	movsbl	-24677(%rbp), %ecx	# t_file, D.5088
	movsbl	-24678(%rbp), %edx	# f_file, D.5088
	movl	-24660(%rbp), %esi	# t_rank, tmp173
	movq	-24696(%rbp), %rax	# str, tmp174
	movl	%esi, %r8d	# tmp173,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp174,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L43	#
.L44:
	.loc 1 158 0
	movl	28(%rbp), %eax	# move.promoted, D.5088
	.loc 1 157 0
	cltq
	movl	-24640(%rbp,%rax,4), %edi	# type_to_char, D.5088
	movsbl	-24677(%rbp), %ecx	# t_file, D.5088
	movsbl	-24678(%rbp), %edx	# f_file, D.5088
	movl	-24660(%rbp), %esi	# t_rank, tmp176
	movq	-24696(%rbp), %rax	# str, tmp177
	movl	%edi, %r9d	# D.5088,
	movl	%esi, %r8d	# tmp176,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp177,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 138 0
	jmp	.L37	#
.L43:
	jmp	.L37	#
.L39:
	.loc 1 162 0
	movl	32(%rbp), %eax	# move.castled, D.5088
	testl	%eax, %eax	# D.5088
	je	.L45	#,
	.loc 1 164 0
	movl	32(%rbp), %eax	# move.castled, D.5088
	cmpl	$1, %eax	#, D.5088
	je	.L46	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	movl	32(%rbp), %eax	# move.castled, D.5088
	cmpl	$3, %eax	#, D.5088
	jne	.L47	#,
.L46:
	.loc 1 166 0 is_stmt 1
	movq	-24696(%rbp), %rax	# str, tmp178
	movl	$5188943, (%rax)	#, MEM[(void *)str_28(D)]
	jmp	.L37	#
.L47:
	.loc 1 170 0
	movq	-24696(%rbp), %rax	# str, tmp179
	movl	$760163663, (%rax)	#, MEM[(void *)str_28(D)]
	movw	$79, 4(%rax)	#, MEM[(void *)str_28(D)]
	jmp	.L37	#
.L45:
	.loc 1 175 0
	movl	$-1, -24672(%rbp)	#, ambig
	.loc 1 176 0
	movl	$0, -24652(%rbp)	#, num_moves
	.loc 1 178 0
	leaq	-24576(%rbp), %rax	#, tmp180
	movq	%rax, %rdi	# tmp180,
	call	gen	#
	.loc 1 179 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp181
	movl	%eax, -24652(%rbp)	# tmp181, num_moves
	.loc 1 181 0
	call	in_check	#
	movl	%eax, -24648(%rbp)	# D.5090, ic
	.loc 1 185 0
	movl	$0, -24676(%rbp)	#, i
	jmp	.L49	#
.L53:
	.loc 1 187 0
	movl	-24676(%rbp), %eax	# i, tmp183
	movslq	%eax, %rdx	# tmp183, tmp182
	movq	%rdx, %rax	# tmp182, tmp184
	addq	%rax, %rax	# tmp184
	addq	%rdx, %rax	# tmp182, tmp184
	salq	$3, %rax	#, tmp185
	addq	%rbp, %rax	#, tmp186
	subq	$24576, %rax	#, tmp187
	movl	4(%rax), %edx	# moves[i_1].target, D.5088
	movl	20(%rbp), %eax	# move.target, D.5088
	cmpl	%eax, %edx	# D.5088, D.5088
	jne	.L50	#,
	.loc 1 188 0 discriminator 1
	movl	-24676(%rbp), %eax	# i, tmp189
	movslq	%eax, %rdx	# tmp189, tmp188
	movq	%rdx, %rax	# tmp188, tmp190
	addq	%rax, %rax	# tmp190
	addq	%rdx, %rax	# tmp188, tmp190
	salq	$3, %rax	#, tmp191
	addq	%rbp, %rax	#, tmp192
	subq	$24576, %rax	#, tmp193
	movl	(%rax), %eax	# moves[i_1].from, D.5088
	cltq
	movl	board(,%rax,4), %edx	# board, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	.loc 1 187 0 discriminator 1
	cmpl	%eax, %edx	# D.5088, D.5088
	jne	.L50	#,
	.loc 1 189 0
	movl	-24676(%rbp), %eax	# i, tmp197
	movslq	%eax, %rdx	# tmp197, tmp196
	movq	%rdx, %rax	# tmp196, tmp198
	addq	%rax, %rax	# tmp198
	addq	%rdx, %rax	# tmp196, tmp198
	salq	$3, %rax	#, tmp199
	addq	%rbp, %rax	#, tmp200
	subq	$24576, %rax	#, tmp201
	movl	(%rax), %edx	# moves[i_1].from, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	.loc 1 188 0
	cmpl	%eax, %edx	# D.5088, D.5088
	je	.L50	#,
	.loc 1 192 0
	movl	-24676(%rbp), %edx	# i, tmp202
	leaq	-24576(%rbp), %rax	#, tmp203
	movl	%edx, %esi	# tmp202,
	movq	%rax, %rdi	# tmp203,
	call	make	#
	.loc 1 193 0
	movl	-24648(%rbp), %edx	# ic, tmp204
	movl	-24676(%rbp), %ecx	# i, tmp205
	leaq	-24576(%rbp), %rax	#, tmp206
	movl	%ecx, %esi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	check_legal	#
	testl	%eax, %eax	# D.5090
	je	.L51	#,
	.loc 1 195 0
	movl	-24676(%rbp), %edx	# i, tmp207
	leaq	-24576(%rbp), %rax	#, tmp208
	movl	%edx, %esi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	unmake	#
	.loc 1 196 0
	movl	-24676(%rbp), %eax	# i, tmp209
	movl	%eax, -24672(%rbp)	# tmp209, ambig
	.loc 1 197 0
	jmp	.L52	#
.L51:
	.loc 1 199 0
	movl	-24676(%rbp), %edx	# i, tmp210
	leaq	-24576(%rbp), %rax	#, tmp211
	movl	%edx, %esi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	unmake	#
.L50:
	.loc 1 185 0
	addl	$1, -24676(%rbp)	#, i
.L49:
	.loc 1 185 0 is_stmt 0 discriminator 1
	movl	-24676(%rbp), %eax	# i, tmp212
	cmpl	-24652(%rbp), %eax	# num_moves, tmp212
	jl	.L53	#,
.L52:
	.loc 1 203 0 is_stmt 1
	cmpl	$-1, -24672(%rbp)	#, ambig
	je	.L54	#,
	.loc 1 206 0
	movl	20(%rbp), %eax	# move.target, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cmpl	$13, %eax	#, D.5088
	jne	.L55	#,
	.loc 1 208 0
	movl	-24672(%rbp), %eax	# ambig, tmp215
	movslq	%eax, %rdx	# tmp215, tmp214
	movq	%rdx, %rax	# tmp214, tmp216
	addq	%rax, %rax	# tmp216
	addq	%rdx, %rax	# tmp214, tmp216
	salq	$3, %rax	#, tmp217
	addq	%rbp, %rax	#, tmp218
	subq	$24576, %rax	#, tmp219
	movl	(%rax), %eax	# moves[ambig_3].from, D.5088
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5088
	cmpl	%eax, %edx	# D.5088, D.5088
	je	.L56	#,
	.loc 1 209 0
	movsbl	-24677(%rbp), %esi	# t_file, D.5088
	movsbl	-24678(%rbp), %ecx	# f_file, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %edi	# t_rank, tmp224
	movq	-24696(%rbp), %rax	# str, tmp225
	movl	%edi, %r9d	# tmp224,
	movl	%esi, %r8d	# D.5088,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp225,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L37	#
.L56:
	.loc 1 212 0
	movsbl	-24677(%rbp), %esi	# t_file, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %edi	# t_rank, tmp228
	movl	-24664(%rbp), %ecx	# f_rank, tmp229
	movq	-24696(%rbp), %rax	# str, tmp230
	movl	%edi, %r9d	# tmp228,
	movl	%esi, %r8d	# D.5088,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp230,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L37	#
.L55:
	.loc 1 217 0
	movl	-24672(%rbp), %eax	# ambig, tmp232
	movslq	%eax, %rdx	# tmp232, tmp231
	movq	%rdx, %rax	# tmp231, tmp233
	addq	%rax, %rax	# tmp233
	addq	%rdx, %rax	# tmp231, tmp233
	salq	$3, %rax	#, tmp234
	addq	%rbp, %rax	#, tmp235
	subq	$24576, %rax	#, tmp236
	movl	(%rax), %eax	# moves[ambig_3].from, D.5088
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5088
	cmpl	%eax, %edx	# D.5088, D.5088
	je	.L59	#,
	.loc 1 218 0
	movsbl	-24677(%rbp), %esi	# t_file, D.5088
	movsbl	-24678(%rbp), %ecx	# f_file, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %edi	# t_rank, tmp241
	movq	-24696(%rbp), %rax	# str, tmp242
	movl	%edi, %r9d	# tmp241,
	movl	%esi, %r8d	# D.5088,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp242,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L37	#
.L59:
	.loc 1 221 0
	movsbl	-24677(%rbp), %esi	# t_file, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %edi	# t_rank, tmp245
	movl	-24664(%rbp), %ecx	# f_rank, tmp246
	movq	-24696(%rbp), %rax	# str, tmp247
	movl	%edi, %r9d	# tmp245,
	movl	%esi, %r8d	# D.5088,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp247,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L37	#
.L54:
	.loc 1 227 0
	movl	20(%rbp), %eax	# move.target, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cmpl	$13, %eax	#, D.5088
	jne	.L60	#,
	.loc 1 229 0
	movsbl	-24677(%rbp), %ecx	# t_file, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %esi	# t_rank, tmp251
	movq	-24696(%rbp), %rax	# str, tmp252
	movl	%esi, %r8d	# tmp251,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp252,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L37	#
.L60:
	.loc 1 234 0
	movsbl	-24677(%rbp), %ecx	# t_file, D.5088
	movl	16(%rbp), %eax	# move.from, D.5088
	cltq
	movl	board(,%rax,4), %eax	# board, D.5088
	cltq
	movl	-24640(%rbp,%rax,4), %edx	# type_to_char, D.5088
	movl	-24660(%rbp), %esi	# t_rank, tmp255
	movq	-24696(%rbp), %rax	# str, tmp256
	movl	%esi, %r8d	# tmp255,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp256,
	movl	$0, %eax	#,
	call	sprintf	#
.L37:
	.loc 1 240 0
	movl	$0, %esi	#,
	leaq	16(%rbp), %rdi	#,
	call	make	#
	.loc 1 242 0
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	leaq	16(%rbp), %rdi	#,
	call	check_legal	#
	testl	%eax, %eax	# D.5090
	jne	.L61	#,
	.loc 1 244 0
	movq	-24696(%rbp), %rax	# str, tmp257
	movl	$1735158889, (%rax)	#, MEM[(void *)str_28(D)]
	movb	$0, 4(%rax)	#, MEM[(void *)str_28(D)]
	.loc 1 245 0
	movl	$0, %esi	#,
	leaq	16(%rbp), %rdi	#,
	call	unmake	#
	jmp	.L35	#
.L61:
	.loc 1 249 0
	call	in_check	#
	testl	%eax, %eax	# D.5090
	je	.L63	#,
	.loc 1 251 0
	movl	$1, -24668(%rbp)	#, mate
	.loc 1 252 0
	movl	$0, -24644(%rbp)	#, evasions
	.loc 1 253 0
	leaq	-12288(%rbp), %rax	#, tmp258
	movq	%rax, %rdi	# tmp258,
	call	gen	#
	.loc 1 254 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp259
	movl	%eax, -24644(%rbp)	# tmp259, evasions
	.loc 1 256 0
	movl	$0, -24676(%rbp)	#, i
	jmp	.L64	#
.L67:
	.loc 1 258 0
	movl	-24676(%rbp), %edx	# i, tmp260
	leaq	-12288(%rbp), %rax	#, tmp261
	movl	%edx, %esi	# tmp260,
	movq	%rax, %rdi	# tmp261,
	call	make	#
	.loc 1 259 0
	movl	-24676(%rbp), %ecx	# i, tmp262
	leaq	-12288(%rbp), %rax	#, tmp263
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp262,
	movq	%rax, %rdi	# tmp263,
	call	check_legal	#
	testl	%eax, %eax	# D.5090
	je	.L65	#,
	.loc 1 261 0
	movl	$0, -24668(%rbp)	#, mate
	.loc 1 262 0
	movl	-24676(%rbp), %edx	# i, tmp264
	leaq	-12288(%rbp), %rax	#, tmp265
	movl	%edx, %esi	# tmp264,
	movq	%rax, %rdi	# tmp265,
	call	unmake	#
	.loc 1 263 0
	jmp	.L66	#
.L65:
	.loc 1 265 0
	movl	-24676(%rbp), %edx	# i, tmp266
	leaq	-12288(%rbp), %rax	#, tmp267
	movl	%edx, %esi	# tmp266,
	movq	%rax, %rdi	# tmp267,
	call	unmake	#
	.loc 1 256 0
	addl	$1, -24676(%rbp)	#, i
.L64:
	.loc 1 256 0 is_stmt 0 discriminator 1
	movl	-24676(%rbp), %eax	# i, tmp268
	cmpl	-24644(%rbp), %eax	# evasions, tmp268
	jl	.L67	#,
.L66:
	.loc 1 267 0 is_stmt 1
	cmpl	$1, -24668(%rbp)	#, mate
	jne	.L68	#,
	.loc 1 268 0
	movq	-24696(%rbp), %rax	# str, tmp269
	movq	$-1, %rcx	#, tmp273
	movq	%rax, %rdx	# tmp269, tmp272
	movl	$0, %eax	#, tmp274
	movq	%rdx, %rdi	# tmp272, tmp272
	repnz scasb
	movq	%rcx, %rax	# tmp270, tmp270
	notq	%rax	# tmp271
	leaq	-1(%rax), %rdx	#, D.5091
	movq	-24696(%rbp), %rax	# str, tmp275
	addq	%rdx, %rax	# D.5091, D.5092
	movw	$35, (%rax)	#, MEM[(void *)_116]
	jmp	.L63	#
.L68:
	.loc 1 270 0
	movq	-24696(%rbp), %rax	# str, tmp276
	movq	$-1, %rcx	#, tmp280
	movq	%rax, %rdx	# tmp276, tmp279
	movl	$0, %eax	#, tmp281
	movq	%rdx, %rdi	# tmp279, tmp279
	repnz scasb
	movq	%rcx, %rax	# tmp277, tmp277
	notq	%rax	# tmp278
	leaq	-1(%rax), %rdx	#, D.5091
	movq	-24696(%rbp), %rax	# str, tmp282
	addq	%rdx, %rax	# D.5091, D.5092
	movw	$43, (%rax)	#, MEM[(void *)_118]
.L63:
	.loc 1 272 0 discriminator 3
	movl	$0, %esi	#,
	leaq	16(%rbp), %rdi	#,
	call	unmake	#
.L35:
	.loc 1 274 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	comp_to_san, .-comp_to_san
	.section	.rodata
.LC27:
	.string	"%c%d%c%dn"
.LC28:
	.string	"%c%d%c%dr"
.LC29:
	.string	"%c%d%c%db"
.LC30:
	.string	"%c%d%c%dk"
.LC31:
	.string	"%c%d%c%dq"
	.text
	.globl	comp_to_coord
	.type	comp_to_coord, @function
comp_to_coord:
.LFB4:
	.loc 1 276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# str, str
	.loc 1 283 0
	movl	$70, -64(%rbp)	#, type_to_char
	movl	$80, -60(%rbp)	#, type_to_char
	movl	$112, -56(%rbp)	#, type_to_char
	movl	$78, -52(%rbp)	#, type_to_char
	movl	$110, -48(%rbp)	#, type_to_char
	movl	$75, -44(%rbp)	#, type_to_char
	movl	$107, -40(%rbp)	#, type_to_char
	movl	$82, -36(%rbp)	#, type_to_char
	movl	$114, -32(%rbp)	#, type_to_char
	movl	$81, -28(%rbp)	#, type_to_char
	movl	$113, -24(%rbp)	#, type_to_char
	movl	$66, -20(%rbp)	#, type_to_char
	movl	$98, -16(%rbp)	#, type_to_char
	movl	$69, -12(%rbp)	#, type_to_char
	.loc 1 285 0
	movl	28(%rbp), %eax	# move.promoted, tmp83
	movl	%eax, -88(%rbp)	# tmp83, prom
	.loc 1 286 0
	movl	16(%rbp), %eax	# move.from, tmp84
	movl	%eax, -84(%rbp)	# tmp84, from
	.loc 1 287 0
	movl	20(%rbp), %eax	# move.target, tmp85
	movl	%eax, -80(%rbp)	# tmp85, target
	.loc 1 289 0
	movl	-84(%rbp), %eax	# from, tmp87
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp88
	movl	%eax, -76(%rbp)	# tmp88, f_rank
	.loc 1 290 0
	movl	-80(%rbp), %eax	# target, tmp90
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp91
	movl	%eax, -72(%rbp)	# tmp91, t_rank
	.loc 1 291 0
	movl	$97, -68(%rbp)	#, converter
	.loc 1 292 0
	movl	-84(%rbp), %eax	# from, tmp93
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5103
	movl	%eax, %edx	# D.5103, D.5104
	movl	-68(%rbp), %eax	# converter, tmp94
	addl	%edx, %eax	# D.5104, D.5104
	subl	$1, %eax	#, D.5104
	movb	%al, -90(%rbp)	# D.5104, f_file
	.loc 1 293 0
	movl	-80(%rbp), %eax	# target, tmp96
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5103
	movl	%eax, %edx	# D.5103, D.5104
	movl	-68(%rbp), %eax	# converter, tmp97
	addl	%edx, %eax	# D.5104, D.5104
	subl	$1, %eax	#, D.5104
	movb	%al, -89(%rbp)	# D.5104, t_file
	.loc 1 296 0
	cmpl	$0, -84(%rbp)	#, from
	jne	.L70	#,
	.loc 1 298 0
	movsbl	-89(%rbp), %ecx	# t_file, D.5103
	movl	-88(%rbp), %eax	# prom, tmp99
	cltq
	movl	-64(%rbp,%rax,4), %edx	# type_to_char, D.5103
	movl	-72(%rbp), %esi	# t_rank, tmp100
	movq	-104(%rbp), %rax	# str, tmp101
	movl	%esi, %r8d	# tmp100,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L69	#
.L70:
	.loc 1 303 0
	cmpl	$0, -88(%rbp)	#, prom
	jne	.L72	#,
	.loc 1 304 0
	movsbl	-89(%rbp), %esi	# t_file, D.5103
	movsbl	-90(%rbp), %edx	# f_file, D.5103
	movl	-72(%rbp), %edi	# t_rank, tmp102
	movl	-76(%rbp), %ecx	# f_rank, tmp103
	movq	-104(%rbp), %rax	# str, tmp104
	movl	%edi, %r9d	# tmp102,
	movl	%esi, %r8d	# D.5103,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L69	#
.L72:
	.loc 1 309 0
	cmpl	$3, -88(%rbp)	#, prom
	je	.L73	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	cmpl	$4, -88(%rbp)	#, prom
	jne	.L74	#,
.L73:
	.loc 1 310 0 is_stmt 1
	movsbl	-89(%rbp), %esi	# t_file, D.5103
	movsbl	-90(%rbp), %edx	# f_file, D.5103
	movl	-72(%rbp), %edi	# t_rank, tmp105
	movl	-76(%rbp), %ecx	# f_rank, tmp106
	movq	-104(%rbp), %rax	# str, tmp107
	movl	%edi, %r9d	# tmp105,
	movl	%esi, %r8d	# D.5103,
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L69	#
.L74:
	.loc 1 312 0
	cmpl	$7, -88(%rbp)	#, prom
	je	.L75	#,
	.loc 1 312 0 is_stmt 0 discriminator 1
	cmpl	$8, -88(%rbp)	#, prom
	jne	.L76	#,
.L75:
	.loc 1 313 0 is_stmt 1
	movsbl	-89(%rbp), %esi	# t_file, D.5103
	movsbl	-90(%rbp), %edx	# f_file, D.5103
	movl	-72(%rbp), %edi	# t_rank, tmp108
	movl	-76(%rbp), %ecx	# f_rank, tmp109
	movq	-104(%rbp), %rax	# str, tmp110
	movl	%edi, %r9d	# tmp108,
	movl	%esi, %r8d	# D.5103,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L69	#
.L76:
	.loc 1 315 0
	cmpl	$11, -88(%rbp)	#, prom
	je	.L77	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	cmpl	$12, -88(%rbp)	#, prom
	jne	.L78	#,
.L77:
	.loc 1 316 0 is_stmt 1
	movsbl	-89(%rbp), %esi	# t_file, D.5103
	movsbl	-90(%rbp), %edx	# f_file, D.5103
	movl	-72(%rbp), %edi	# t_rank, tmp111
	movl	-76(%rbp), %ecx	# f_rank, tmp112
	movq	-104(%rbp), %rax	# str, tmp113
	movl	%edi, %r9d	# tmp111,
	movl	%esi, %r8d	# D.5103,
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp113,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L69	#
.L78:
	.loc 1 318 0
	cmpl	$5, -88(%rbp)	#, prom
	je	.L79	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	cmpl	$6, -88(%rbp)	#, prom
	jne	.L80	#,
.L79:
	.loc 1 320 0 is_stmt 1
	movsbl	-89(%rbp), %esi	# t_file, D.5103
	movsbl	-90(%rbp), %edx	# f_file, D.5103
	movl	-72(%rbp), %edi	# t_rank, tmp114
	movl	-76(%rbp), %ecx	# f_rank, tmp115
	movq	-104(%rbp), %rax	# str, tmp116
	movl	%edi, %r9d	# tmp114,
	movl	%esi, %r8d	# D.5103,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L69	#
.L80:
	.loc 1 324 0
	movsbl	-89(%rbp), %esi	# t_file, D.5103
	movsbl	-90(%rbp), %edx	# f_file, D.5103
	movl	-72(%rbp), %edi	# t_rank, tmp117
	movl	-76(%rbp), %ecx	# f_rank, tmp118
	movq	-104(%rbp), %rax	# str, tmp119
	movl	%edi, %r9d	# tmp117,
	movl	%esi, %r8d	# D.5103,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	sprintf	#
.L69:
	.loc 1 328 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	comp_to_coord, .-comp_to_coord
	.section	.rodata
	.align 8
.LC32:
	.string	"+----+----+----+----+----+----+----+----+"
.LC33:
	.string	"!!"
.LC34:
	.string	" P"
.LC35:
	.string	"*P"
.LC36:
	.string	" N"
.LC37:
	.string	"*N"
.LC38:
	.string	" K"
.LC39:
	.string	"*K"
.LC40:
	.string	" R"
.LC41:
	.string	"*R"
.LC42:
	.string	" Q"
.LC43:
	.string	"*Q"
.LC44:
	.string	" B"
.LC45:
	.string	"*B"
.LC46:
	.string	"  "
.LC47:
	.string	"  %s\n"
.LC48:
	.string	"%d |"
.LC49:
	.string	" %s |"
.LC50:
	.string	"\n  %s\n"
	.align 8
.LC51:
	.string	"\n     a    b    c    d    e    f    g    h\n\n"
	.align 8
.LC52:
	.string	"\n     h    g    f    e    d    c    b    a\n\n"
	.text
	.globl	display_board
	.type	display_board, @function
display_board:
.LFB5:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# stream, stream
	movl	%esi, -156(%rbp)	# color, color
	.loc 1 335 0
	movq	$.LC32, -120(%rbp)	#, line_sep
	.loc 1 336 0
	movq	$.LC33, -112(%rbp)	#, piece_rep
	movq	$.LC34, -104(%rbp)	#, piece_rep
	movq	$.LC35, -96(%rbp)	#, piece_rep
	movq	$.LC36, -88(%rbp)	#, piece_rep
	movq	$.LC37, -80(%rbp)	#, piece_rep
	movq	$.LC38, -72(%rbp)	#, piece_rep
	movq	$.LC39, -64(%rbp)	#, piece_rep
	movq	$.LC40, -56(%rbp)	#, piece_rep
	movq	$.LC41, -48(%rbp)	#, piece_rep
	movq	$.LC42, -40(%rbp)	#, piece_rep
	movq	$.LC43, -32(%rbp)	#, piece_rep
	movq	$.LC44, -24(%rbp)	#, piece_rep
	movq	$.LC45, -16(%rbp)	#, piece_rep
	movq	$.LC46, -8(%rbp)	#, piece_rep
	.loc 1 340 0
	movl	-156(%rbp), %eax	# color, color.50
	andl	$1, %eax	#, D.5110
	testl	%eax, %eax	# D.5110
	je	.L82	#,
	.loc 1 341 0
	movq	-120(%rbp), %rdx	# line_sep, tmp72
	movq	-152(%rbp), %rax	# stream, tmp73
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 342 0
	movl	$1, -132(%rbp)	#, a
	jmp	.L83	#
.L87:
	.loc 1 343 0
	movl	$9, %eax	#, tmp74
	subl	-132(%rbp), %eax	# a, D.5111
	movl	%eax, %edx	# D.5111, D.5111
	movq	-152(%rbp), %rax	# stream, tmp75
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp75,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 344 0
	movl	$0, -128(%rbp)	#, b
	jmp	.L84	#
.L86:
	.loc 1 345 0
	movl	-132(%rbp), %edx	# a, tmp76
	movl	%edx, %eax	# tmp76, tmp77
	addl	%eax, %eax	# tmp77
	addl	%edx, %eax	# tmp76, tmp77
	sall	$2, %eax	#, tmp78
	negl	%eax	# D.5111
	leal	120(%rax), %edx	#, D.5111
	movl	-128(%rbp), %eax	# b, tmp82
	addl	%edx, %eax	# D.5111, tmp81
	movl	%eax, -124(%rbp)	# tmp81, c
	.loc 1 346 0
	movl	-124(%rbp), %eax	# c, tmp84
	cltq
	movl	board(,%rax,4), %eax	# board, D.5111
	testl	%eax, %eax	# D.5111
	je	.L85	#,
	.loc 1 347 0
	movl	-124(%rbp), %eax	# c, tmp86
	cltq
	movl	board(,%rax,4), %eax	# board, D.5111
	cltq
	movq	-112(%rbp,%rax,8), %rdx	# piece_rep, D.5112
	movq	-152(%rbp), %rax	# stream, tmp88
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	fprintf	#
.L85:
	.loc 1 344 0
	addl	$1, -128(%rbp)	#, b
.L84:
	.loc 1 344 0 is_stmt 0 discriminator 1
	cmpl	$11, -128(%rbp)	#, b
	jle	.L86	#,
	.loc 1 349 0 is_stmt 1
	movq	-120(%rbp), %rdx	# line_sep, tmp89
	movq	-152(%rbp), %rax	# stream, tmp90
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 342 0
	addl	$1, -132(%rbp)	#, a
.L83:
	.loc 1 342 0 is_stmt 0 discriminator 1
	cmpl	$8, -132(%rbp)	#, a
	jle	.L87	#,
	.loc 1 351 0 is_stmt 1
	movq	-152(%rbp), %rax	# stream, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
	jmp	.L81	#
.L82:
	.loc 1 355 0
	movq	-120(%rbp), %rdx	# line_sep, tmp92
	movq	-152(%rbp), %rax	# stream, tmp93
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 356 0
	movl	$1, -132(%rbp)	#, a
	jmp	.L89	#
.L93:
	.loc 1 357 0
	movl	-132(%rbp), %edx	# a, tmp94
	movq	-152(%rbp), %rax	# stream, tmp95
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 358 0
	movl	$0, -128(%rbp)	#, b
	jmp	.L90	#
.L92:
	.loc 1 359 0
	movl	-132(%rbp), %edx	# a, tmp96
	movl	%edx, %eax	# tmp96, tmp97
	addl	%eax, %eax	# tmp97
	addl	%edx, %eax	# tmp96, tmp97
	sall	$2, %eax	#, tmp98
	addl	$24, %eax	#, D.5111
	subl	-128(%rbp), %eax	# b, tmp100
	movl	%eax, -124(%rbp)	# tmp100, c
	.loc 1 360 0
	movl	-124(%rbp), %eax	# c, tmp102
	cltq
	movl	board(,%rax,4), %eax	# board, D.5111
	testl	%eax, %eax	# D.5111
	je	.L91	#,
	.loc 1 361 0
	movl	-124(%rbp), %eax	# c, tmp104
	cltq
	movl	board(,%rax,4), %eax	# board, D.5111
	cltq
	movq	-112(%rbp,%rax,8), %rdx	# piece_rep, D.5112
	movq	-152(%rbp), %rax	# stream, tmp106
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	fprintf	#
.L91:
	.loc 1 358 0
	addl	$1, -128(%rbp)	#, b
.L90:
	.loc 1 358 0 is_stmt 0 discriminator 1
	cmpl	$11, -128(%rbp)	#, b
	jle	.L92	#,
	.loc 1 363 0 is_stmt 1
	movq	-120(%rbp), %rdx	# line_sep, tmp107
	movq	-152(%rbp), %rax	# stream, tmp108
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 356 0
	addl	$1, -132(%rbp)	#, a
.L89:
	.loc 1 356 0 is_stmt 0 discriminator 1
	cmpl	$8, -132(%rbp)	#, a
	jle	.L93	#,
	.loc 1 365 0 is_stmt 1
	movq	-152(%rbp), %rax	# stream, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC52, %edi	#,
	call	fwrite	#
.L81:
	.loc 1 368 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	display_board, .-display_board
	.section	.rodata
	.align 32
.LC0:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	3
	.long	11
	.long	9
	.long	5
	.long	11
	.long	3
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	8
	.long	4
	.long	12
	.long	10
	.long	6
	.long	12
	.long	4
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	init_game
	.type	init_game, @function
init_game:
.LFB6:
	.loc 1 370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$576, %rsp	#,
	.loc 1 374 0
	leaq	-576(%rbp), %rdx	#, tmp59
	movl	$.LC0, %esi	#, tmp60
	movl	$72, %eax	#, tmp61
	movq	%rdx, %rdi	# tmp59, tmp59
	movq	%rax, %rcx	# tmp61, tmp61
	rep movsq
	.loc 1 389 0
	movl	$board, %eax	#, tmp62
	leaq	-576(%rbp), %rsi	#, tmp63
	movl	$576, %r8d	#, tmp64
	movq	%rax, %rdx	# tmp62, tmp65
	andl	$4, %edx	#, tmp65
	testq	%rdx, %rdx	# tmp65
	je	.L95	#,
	movl	(%rsi), %edx	#, tmp66
	movl	%edx, (%rax)	# tmp66,
	addq	$4, %rax	#, tmp62
	addq	$4, %rsi	#, tmp63
	subl	$4, %r8d	#, tmp64
.L95:
	movl	%r8d, %edx	# tmp64, tmp67
	shrl	$3, %edx	#, tmp67
	movl	%edx, %edx	# tmp67, tmp68
	movq	%rax, %rdi	# tmp62, tmp62
	movq	%rdx, %rcx	# tmp68, tmp68
	rep movsq
	movq	%rdi, %rax	# tmp62, tmp62
	movl	$0, %edx	#, tmp69
	movl	%r8d, %ecx	# tmp64, tmp70
	andl	$4, %ecx	#, tmp70
	testl	%ecx, %ecx	# tmp70
	je	.L96	#,
	movl	(%rsi), %ecx	#, tmp71
	movl	%ecx, (%rax)	# tmp71,
	addq	$4, %rdx	#, tmp72
.L96:
	movl	%r8d, %ecx	# tmp64, tmp73
	andl	$2, %ecx	#, tmp73
	testl	%ecx, %ecx	# tmp73
	je	.L97	#,
	movzwl	(%rsi,%rdx), %ecx	#, tmp74
	movw	%cx, (%rax,%rdx)	# tmp74,
	addq	$2, %rdx	#, tmp75
.L97:
	movl	%r8d, %ecx	# tmp64, tmp76
	andl	$1, %ecx	#, tmp76
	testl	%ecx, %ecx	# tmp76
	je	.L98	#,
	movzbl	(%rsi,%rdx), %ecx	#, tmp77
	movb	%cl, (%rax,%rdx)	# tmp77,
.L98:
	.loc 1 390 0
	movl	$576, %edx	#,
	movl	$0, %esi	#,
	movl	$moved, %edi	#,
	call	memset	#
	.loc 1 392 0
	movl	$1, white_to_move(%rip)	#, white_to_move
	.loc 1 393 0
	movl	$0, ep_square(%rip)	#, ep_square
	.loc 1 394 0
	movl	$30, wking_loc(%rip)	#, wking_loc
	.loc 1 395 0
	movl	$114, bking_loc(%rip)	#, bking_loc
	.loc 1 396 0
	movl	$0, white_castled(%rip)	#, white_castled
	.loc 1 397 0
	movl	$0, black_castled(%rip)	#, black_castled
	.loc 1 399 0
	movl	$0, result(%rip)	#, result
	.loc 1 400 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 402 0
	movl	$32, piece_count(%rip)	#, piece_count
	.loc 1 404 0
	movl	$0, Material(%rip)	#, Material
	.loc 1 406 0
	movl	$248, %edx	#,
	movl	$0, %esi	#,
	movl	$is_promoted, %edi	#,
	call	memset	#
	.loc 1 407 0
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movl	$holding, %edi	#,
	call	memset	#
	.loc 1 409 0
	movl	$0, white_hand_eval(%rip)	#, white_hand_eval
	.loc 1 410 0
	movl	$0, black_hand_eval(%rip)	#, black_hand_eval
	.loc 1 412 0
	call	reset_piece_square	#
	.loc 1 414 0
	movl	$0, bookidx(%rip)	#, bookidx
	.loc 1 415 0
	movl	$0, book_ply(%rip)	#, book_ply
	.loc 1 416 0
	movl	$0, fifty(%rip)	#, fifty
	.loc 1 417 0
	movl	$0, ply(%rip)	#, ply
	.loc 1 419 0
	movl	$0, phase(%rip)	#, phase
	.loc 1 420 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_game, .-init_game
	.globl	is_move
	.type	is_move, @function
is_move:
.LFB7:
	.loc 1 423 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# str, str
	.loc 1 428 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_2, D.5136
	movq	-8(%rbp), %rax	# str, tmp131
	movzbl	(%rax), %eax	# *str_4(D), D.5137
	movsbq	%al, %rax	# D.5137, D.5138
	addq	%rax, %rax	# D.5138
	addq	%rdx, %rax	# D.5136, D.5136
	movzwl	(%rax), %eax	# *_8, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$1024, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L100	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_12, D.5136
	movq	-8(%rbp), %rdx	# str, tmp132
	addq	$1, %rdx	#, D.5141
	movzbl	(%rdx), %edx	# *_14, D.5137
	movsbq	%dl, %rdx	# D.5137, D.5138
	addq	%rdx, %rdx	# D.5138
	addq	%rdx, %rax	# D.5138, D.5136
	movzwl	(%rax), %eax	# *_18, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$2048, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L100	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_22, D.5136
	movq	-8(%rbp), %rdx	# str, tmp133
	addq	$2, %rdx	#, D.5141
	movzbl	(%rdx), %edx	# *_24, D.5137
	movsbq	%dl, %rdx	# D.5137, D.5138
	addq	%rdx, %rdx	# D.5138
	addq	%rdx, %rax	# D.5138, D.5136
	movzwl	(%rax), %eax	# *_28, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$1024, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L100	#,
	.loc 1 429 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_32, D.5136
	movq	-8(%rbp), %rdx	# str, tmp134
	addq	$3, %rdx	#, D.5141
	movzbl	(%rdx), %edx	# *_34, D.5137
	movsbq	%dl, %rdx	# D.5137, D.5138
	addq	%rdx, %rdx	# D.5138
	addq	%rdx, %rax	# D.5138, D.5136
	movzwl	(%rax), %eax	# *_38, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$2048, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L100	#,
	.loc 1 430 0
	movl	$1, %eax	#, D.5134
	jmp	.L101	#
.L100:
	.loc 1 432 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_43, D.5136
	movq	-8(%rbp), %rax	# str, tmp135
	movzbl	(%rax), %eax	# *str_4(D), D.5137
	movsbq	%al, %rax	# D.5137, D.5138
	addq	%rax, %rax	# D.5138
	addq	%rdx, %rax	# D.5136, D.5136
	movzwl	(%rax), %eax	# *_48, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$1024, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L102	#,
	.loc 1 432 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# str, tmp136
	addq	$1, %rax	#, D.5141
	movzbl	(%rax), %eax	# *_52, D.5137
	cmpb	$64, %al	#, D.5137
	jne	.L102	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_54, D.5136
	movq	-8(%rbp), %rdx	# str, tmp137
	addq	$2, %rdx	#, D.5141
	movzbl	(%rdx), %edx	# *_56, D.5137
	movsbq	%dl, %rdx	# D.5137, D.5138
	addq	%rdx, %rdx	# D.5138
	addq	%rdx, %rax	# D.5138, D.5136
	movzwl	(%rax), %eax	# *_60, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$1024, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L102	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_64, D.5136
	movq	-8(%rbp), %rdx	# str, tmp138
	addq	$3, %rdx	#, D.5141
	movzbl	(%rdx), %edx	# *_66, D.5137
	movsbq	%dl, %rdx	# D.5137, D.5138
	addq	%rdx, %rdx	# D.5138
	addq	%rdx, %rax	# D.5138, D.5136
	movzwl	(%rax), %eax	# *_70, D.5139
	movzwl	%ax, %eax	# D.5139, D.5140
	andl	$2048, %eax	#, D.5140
	testl	%eax, %eax	# D.5140
	je	.L102	#,
	.loc 1 434 0 is_stmt 1
	movl	$1, %eax	#, D.5134
	jmp	.L101	#
.L102:
	.loc 1 437 0
	movl	$0, %eax	#, D.5134
.L101:
	.loc 1 440 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	is_move, .-is_move
	.section	.rodata
	.align 8
.LC53:
	.string	"\n\nPlease enter the desired depth for perft():"
	.align 8
.LC54:
	.string	"\n\nRaw nodes for depth %d: %i\n\n"
.LC55:
	.string	"\nPlease input a move/command:"
.LC56:
	.string	"exit"
.LC57:
	.string	"quit"
	.align 8
.LC58:
	.string	"\nIllegal move/command!  Please input a new move/command:"
	.text
	.globl	perft_debug
	.type	perft_debug, @function
perft_debug:
.LFB8:
	.loc 1 443 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	.loc 1 443 0
	movq	%fs:40, %rax	#, tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.5145
	xorl	%eax, %eax	# tmp104
	.loc 1 452 0
	call	init_game	#
.L114:
	.loc 1 458 0
	movl	$.LC53, %edi	#,
	call	puts	#
	.loc 1 459 0
	movq	stdin(%rip), %rdx	# stdin, stdin.51
	leaq	-272(%rbp), %rax	#, tmp80
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	rinput	#
	.loc 1 460 0
	leaq	-272(%rbp), %rax	#, tmp81
	movq	%rax, %rdi	# tmp81,
	call	atoi	#
	movl	%eax, -316(%rbp)	# tmp82, depth
	.loc 1 463 0
	movl	$0, raw_nodes(%rip)	#, raw_nodes
	.loc 1 464 0
	movl	-316(%rbp), %eax	# depth, tmp83
	movl	%eax, %edi	# tmp83,
	call	perft	#
	.loc 1 465 0
	movl	raw_nodes(%rip), %edx	# raw_nodes, raw_nodes.52
	movl	-316(%rbp), %eax	# depth, tmp84
	movl	%eax, %esi	# tmp84,
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 468 0
	movq	stdout(%rip), %rax	# stdout, stdout.53
	movl	$1, %esi	#,
	movq	%rax, %rdi	# stdout.53,
	call	display_board	#
	.loc 1 470 0
	movl	$.LC55, %edi	#,
	call	puts	#
	.loc 1 471 0
	movq	stdin(%rip), %rdx	# stdin, stdin.54
	leaq	-272(%rbp), %rax	#, tmp85
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	rinput	#
	.loc 1 474 0
	leaq	-272(%rbp), %rax	#, tmp86
	movq	%rax, -312(%rbp)	# tmp86, p
	jmp	.L104	#
.L105:
	.loc 1 474 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# p, tmp87
	movzbl	(%rax), %eax	# *p_1, D.5142
	movsbl	%al, %eax	# D.5142, D.5143
	movl	%eax, %edi	# D.5143,
	call	tolower	#
	movl	%eax, %edx	# D.5143, D.5142
	movq	-312(%rbp), %rax	# p, tmp88
	movb	%dl, (%rax)	# D.5142, *p_1
	addq	$1, -312(%rbp)	#, p
.L104:
	.loc 1 474 0 discriminator 1
	movq	-312(%rbp), %rax	# p, tmp89
	movzbl	(%rax), %eax	# *p_1, D.5142
	testb	%al, %al	# D.5142
	jne	.L105	#,
	.loc 1 475 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp90
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	strcmp	#
	testl	%eax, %eax	# D.5143
	je	.L106	#,
	.loc 1 475 0 is_stmt 0 discriminator 1
	leaq	-272(%rbp), %rax	#, tmp91
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	strcmp	#
	testl	%eax, %eax	# D.5143
	jne	.L107	#,
.L106:
	.loc 1 476 0 is_stmt 1
	movl	$0, %edi	#,
	call	exit	#
.L107:
	.loc 1 479 0
	leaq	-304(%rbp), %rdx	#, tmp92
	leaq	-272(%rbp), %rax	#, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	verify_coord	#
	testl	%eax, %eax	# D.5144
	jne	.L108	#,
.L113:
	.loc 1 482 0
	movl	$.LC58, %edi	#,
	call	puts	#
	.loc 1 483 0
	movq	stdin(%rip), %rdx	# stdin, stdin.55
	leaq	-272(%rbp), %rax	#, tmp94
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	rinput	#
	.loc 1 486 0
	leaq	-272(%rbp), %rax	#, tmp95
	movq	%rax, -312(%rbp)	# tmp95, p
	jmp	.L109	#
.L110:
	.loc 1 486 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# p, tmp96
	movzbl	(%rax), %eax	# *p_2, D.5142
	movsbl	%al, %eax	# D.5142, D.5143
	movl	%eax, %edi	# D.5143,
	call	tolower	#
	movl	%eax, %edx	# D.5143, D.5142
	movq	-312(%rbp), %rax	# p, tmp97
	movb	%dl, (%rax)	# D.5142, *p_2
	addq	$1, -312(%rbp)	#, p
.L109:
	.loc 1 486 0 discriminator 1
	movq	-312(%rbp), %rax	# p, tmp98
	movzbl	(%rax), %eax	# *p_2, D.5142
	testb	%al, %al	# D.5142
	jne	.L110	#,
	.loc 1 487 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp99
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	strcmp	#
	testl	%eax, %eax	# D.5143
	je	.L111	#,
	.loc 1 487 0 is_stmt 0 discriminator 1
	leaq	-272(%rbp), %rax	#, tmp100
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	strcmp	#
	testl	%eax, %eax	# D.5143
	jne	.L112	#,
.L111:
	.loc 1 488 0 is_stmt 1
	movl	$0, %edi	#,
	call	exit	#
.L112:
	.loc 1 490 0
	leaq	-304(%rbp), %rdx	#, tmp101
	leaq	-272(%rbp), %rax	#, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	verify_coord	#
	testl	%eax, %eax	# D.5144
	je	.L113	#,
.L108:
	.loc 1 493 0
	leaq	-304(%rbp), %rax	#, tmp103
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	make	#
	.loc 1 494 0
	jmp	.L114	#
	.cfi_endproc
.LFE8:
	.size	perft_debug, .-perft_debug
	.globl	hash_extract_pv
	.type	hash_extract_pv, @function
hash_extract_pv:
.LFB9:
	.loc 1 498 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$12624, %rsp	#,
	movl	%edi, -12580(%rbp)	# level, level
	movq	%rsi, -12592(%rbp)	# str, str
	.loc 1 498 0
	movq	%fs:40, %rax	#, tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.5158
	xorl	%eax, %eax	# tmp107
	.loc 1 505 0
	subl	$1, -12580(%rbp)	#, level
	.loc 1 506 0
	cmpl	$0, -12580(%rbp)	#, level
	je	.L116	#,
	.loc 1 508 0
	leaq	-12572(%rbp), %rsi	#, tmp71
	leaq	-12572(%rbp), %rcx	#, tmp72
	leaq	-12568(%rbp), %rdx	#, tmp73
	leaq	-12572(%rbp), %rax	#, tmp74
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp71,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	ProbeTT	#
	cmpl	$4, %eax	#, D.5154
	je	.L116	#,
	.loc 1 510 0
	leaq	-12560(%rbp), %rax	#, tmp75
	movq	%rax, %rdi	# tmp75,
	call	gen	#
	.loc 1 511 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp76
	movl	%eax, -12564(%rbp)	# tmp76, num_moves
	.loc 1 512 0
	movl	-12568(%rbp), %eax	# bm, bm.56
	testl	%eax, %eax	# bm.56
	js	.L116	#,
	.loc 1 512 0 is_stmt 0 discriminator 1
	movl	-12568(%rbp), %eax	# bm, bm.57
	cmpl	-12564(%rbp), %eax	# num_moves, bm.57
	jge	.L116	#,
	.loc 1 514 0 is_stmt 1
	movl	-12568(%rbp), %eax	# bm, bm.58
	leaq	-272(%rbp), %rcx	#, tmp77
	movslq	%eax, %rdx	# bm.58, tmp78
	movq	%rdx, %rax	# tmp78, tmp79
	addq	%rax, %rax	# tmp79
	addq	%rdx, %rax	# tmp78, tmp79
	salq	$3, %rax	#, tmp80
	addq	%rbp, %rax	#, tmp81
	subq	$12560, %rax	#, tmp82
	movq	(%rax), %rdx	# moves, tmp83
	movq	%rdx, (%rsp)	# tmp83,
	movq	8(%rax), %rdx	# moves, tmp84
	movq	%rdx, 8(%rsp)	# tmp84,
	movq	16(%rax), %rax	# moves, tmp85
	movq	%rax, 16(%rsp)	# tmp85,
	movq	%rcx, %rdi	# tmp77,
	call	comp_to_san	#
	.loc 1 515 0
	movl	-12568(%rbp), %edx	# bm, bm.59
	leaq	-12560(%rbp), %rax	#, tmp86
	movl	%edx, %esi	# bm.59,
	movq	%rax, %rdi	# tmp86,
	call	make	#
	.loc 1 516 0
	movl	-12568(%rbp), %ecx	# bm, bm.60
	leaq	-12560(%rbp), %rax	#, tmp87
	movl	$1, %edx	#,
	movl	%ecx, %esi	# bm.60,
	movq	%rax, %rdi	# tmp87,
	call	check_legal	#
	testl	%eax, %eax	# D.5155
	je	.L120	#,
	.loc 1 519 0
	movq	-12592(%rbp), %rax	# str, tmp88
	movq	$-1, %rcx	#, tmp92
	movq	%rax, %rdx	# tmp88, tmp91
	movl	$0, %eax	#, tmp93
	movq	%rdx, %rdi	# tmp91, tmp91
	repnz scasb
	movq	%rcx, %rax	# tmp89, tmp89
	notq	%rax	# tmp90
	leaq	-1(%rax), %rdx	#, D.5156
	movq	-12592(%rbp), %rax	# str, tmp94
	addq	%rdx, %rax	# D.5156, D.5157
	movw	$60, (%rax)	#, MEM[(void *)_13]
	.loc 1 520 0
	leaq	-272(%rbp), %rdx	#, tmp95
	movq	-12592(%rbp), %rax	# str, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	strcat	#
	.loc 1 521 0
	movq	-12592(%rbp), %rax	# str, tmp97
	movq	$-1, %rcx	#, tmp101
	movq	%rax, %rdx	# tmp97, tmp100
	movl	$0, %eax	#, tmp102
	movq	%rdx, %rdi	# tmp100, tmp100
	repnz scasb
	movq	%rcx, %rax	# tmp98, tmp98
	notq	%rax	# tmp99
	leaq	-1(%rax), %rdx	#, D.5156
	movq	-12592(%rbp), %rax	# str, tmp103
	addq	%rdx, %rax	# D.5156, D.5157
	movw	$8254, (%rax)	#, MEM[(void *)_15]
	movb	$0, 2(%rax)	#, MEM[(void *)_15]
	.loc 1 522 0
	movq	-12592(%rbp), %rdx	# str, tmp104
	movl	-12580(%rbp), %eax	# level, tmp105
	movq	%rdx, %rsi	# tmp104,
	movl	%eax, %edi	# tmp105,
	call	hash_extract_pv	#
.L120:
	.loc 1 524 0
	movl	-12568(%rbp), %edx	# bm, bm.61
	leaq	-12560(%rbp), %rax	#, tmp106
	movl	%edx, %esi	# bm.61,
	movq	%rax, %rdi	# tmp106,
	call	unmake	#
.L116:
	.loc 1 527 0
	movq	-8(%rbp), %rax	# D.5158, tmp108
	xorq	%fs:40, %rax	#, tmp108
	je	.L121	#,
	call	__stack_chk_fail	#
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	hash_extract_pv, .-hash_extract_pv
	.globl	stringize_pv
	.type	stringize_pv, @function
stringize_pv:
.LFB10:
	.loc 1 530 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movq	%rdi, -296(%rbp)	# str, str
	.loc 1 530 0
	movq	%fs:40, %rax	#, tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.5164
	xorl	%eax, %eax	# tmp96
	.loc 1 534 0
	movq	-296(%rbp), %rax	# str, tmp65
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	memset	#
	.loc 1 536 0
	movl	$1, -276(%rbp)	#, i
	jmp	.L123	#
.L124:
	.loc 1 538 0 discriminator 2
	leaq	-272(%rbp), %rcx	#, tmp66
	movl	-276(%rbp), %eax	# i, tmp68
	movslq	%eax, %rdx	# tmp68, tmp67
	movq	%rdx, %rax	# tmp67, tmp69
	addq	%rax, %rax	# tmp69
	addq	%rdx, %rax	# tmp67, tmp69
	salq	$3, %rax	#, tmp70
	addq	$pv+7200, %rax	#, tmp71
	movq	(%rax), %rdx	# pv, tmp72
	movq	%rdx, (%rsp)	# tmp72,
	movq	8(%rax), %rdx	# pv, tmp73
	movq	%rdx, 8(%rsp)	# tmp73,
	movq	16(%rax), %rax	# pv, tmp74
	movq	%rax, 16(%rsp)	# tmp74,
	movq	%rcx, %rdi	# tmp66,
	call	comp_to_san	#
	.loc 1 539 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp76
	movslq	%eax, %rdx	# tmp76, tmp75
	movq	%rdx, %rax	# tmp75, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# tmp75, tmp77
	salq	$3, %rax	#, tmp78
	addq	$7200, %rax	#, tmp79
	addq	$pv, %rax	#, D.5161
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5161,
	call	make	#
	.loc 1 540 0 discriminator 2
	leaq	-272(%rbp), %rdx	#, tmp80
	movq	-296(%rbp), %rax	# str, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	strcat	#
	.loc 1 541 0 discriminator 2
	movq	-296(%rbp), %rax	# str, tmp82
	movq	$-1, %rcx	#, tmp86
	movq	%rax, %rdx	# tmp82, tmp85
	movl	$0, %eax	#, tmp87
	movq	%rdx, %rdi	# tmp85, tmp85
	repnz scasb
	movq	%rcx, %rax	# tmp83, tmp83
	notq	%rax	# tmp84
	leaq	-1(%rax), %rdx	#, D.5162
	movq	-296(%rbp), %rax	# str, tmp88
	addq	%rdx, %rax	# D.5162, D.5163
	movw	$32, (%rax)	#, MEM[(void *)_8]
	.loc 1 536 0 discriminator 2
	addl	$1, -276(%rbp)	#, i
.L123:
	.loc 1 536 0 is_stmt 0 discriminator 1
	movl	pv_length+4(%rip), %eax	# pv_length, D.5160
	cmpl	-276(%rbp), %eax	# i, D.5160
	jg	.L124	#,
	.loc 1 544 0 is_stmt 1
	movq	-296(%rbp), %rax	# str, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$7, %edi	#,
	call	hash_extract_pv	#
	.loc 1 546 0
	movl	pv_length+4(%rip), %eax	# pv_length, D.5160
	subl	$1, %eax	#, tmp90
	movl	%eax, -276(%rbp)	# tmp90, i
	jmp	.L125	#
.L126:
	.loc 1 548 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, tmp91
	movq	%rdx, %rax	# tmp91, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp91, tmp93
	salq	$3, %rax	#, tmp94
	addq	$7200, %rax	#, tmp95
	addq	$pv, %rax	#, D.5161
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5161,
	call	unmake	#
	.loc 1 546 0 discriminator 2
	subl	$1, -276(%rbp)	#, i
.L125:
	.loc 1 546 0 is_stmt 0 discriminator 1
	cmpl	$0, -276(%rbp)	#, i
	jg	.L126	#,
	.loc 1 551 0 is_stmt 1
	movq	-8(%rbp), %rax	# D.5164, tmp97
	xorq	%fs:40, %rax	#, tmp97
	je	.L127	#,
	call	__stack_chk_fail	#
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	stringize_pv, .-stringize_pv
	.section	.rodata
.LC59:
	.string	"%2i %7i %5i %8i  "
.LC60:
	.string	"%2i %c%1i.%02i %9i "
.LC61:
	.string	"%s "
.LC62:
	.string	"%s"
	.text
	.globl	post_thinking
	.type	post_thinking, @function
post_thinking:
.LFB11:
	.loc 1 553 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$600, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -580(%rbp)	# score, score
	.loc 1 553 0
	movq	%fs:40, %rax	#, tmp132
	movq	%rax, -24(%rbp)	# tmp132, D.5169
	xorl	%eax, %eax	# tmp132
	.loc 1 557 0
	movl	$0, -564(%rbp)	#, remake
	.loc 1 565 0
	movq	start_time(%rip), %rbx	# start_time, start_time.62
	call	rtime	#
	movq	%rbx, %rsi	# start_time.62,
	movq	%rax, %rdi	# D.5165,
	call	rdifftime	#
	movl	%eax, -560(%rbp)	# tmp85, elapsed
	.loc 1 567 0
	cmpl	$0, -560(%rbp)	#, elapsed
	jle	.L129	#,
.LBB2:
	.loc 1 568 0
	movl	nodes(%rip), %eax	# nodes, nodes.63
	cvtsi2sd	%eax, %xmm0	# nodes.63, D.5166
	movsd	.LC12(%rip), %xmm1	#, tmp86
	mulsd	%xmm1, %xmm0	# tmp86, D.5166
	cvtsi2sd	-560(%rbp), %xmm1	# elapsed, D.5166
	divsd	%xmm1, %xmm0	# D.5166, tmp87
	movsd	%xmm0, -552(%rbp)	# tmp87, dnps
	.loc 1 569 0
	movsd	-552(%rbp), %xmm0	# dnps, tmp88
	cvttsd2si	%xmm0, %eax	# tmp88, tmp89
	movl	%eax, -556(%rbp)	# tmp89, nps
.LBE2:
	jmp	.L130	#
.L129:
	.loc 1 572 0
	movl	nodes(%rip), %eax	# nodes, tmp90
	movl	%eax, -556(%rbp)	# tmp90, nps
.L130:
	.loc 1 573 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.64
	testl	%eax, %eax	# xb_mode.64
	je	.L131	#,
	.loc 1 574 0
	movl	nodes(%rip), %esi	# nodes, nodes.65
	movl	i_depth(%rip), %eax	# i_depth, i_depth.66
	movl	-560(%rbp), %ecx	# elapsed, tmp91
	movl	-580(%rbp), %edx	# score, tmp92
	movl	%esi, %r8d	# nodes.65,
	movl	%eax, %esi	# i_depth.66,
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L132	#
.L131:
	.loc 1 576 0
	movl	nodes(%rip), %edi	# nodes, nodes.67
	.loc 1 578 0
	movl	-580(%rbp), %ecx	# score, tmp93
	movl	$1374389535, %edx	#, tmp95
	movl	%ecx, %eax	# tmp93, tmp133
	imull	%edx	# tmp95
	sarl	$5, %edx	#, tmp96
	movl	%ecx, %eax	# tmp93, tmp97
	sarl	$31, %eax	#, tmp97
	subl	%eax, %edx	# tmp97, D.5167
	movl	%edx, %eax	# D.5167, D.5167
	imull	$100, %eax, %eax	#, D.5167, tmp98
	subl	%eax, %ecx	# tmp98, D.5167
	movl	%ecx, %eax	# D.5167, D.5167
	.loc 1 576 0
	cltd
	xorl	%edx, %eax	# tmp99, D.5167
	movl	%eax, %ecx	# D.5167, D.5167
	subl	%edx, %ecx	# tmp99, D.5167
	.loc 1 578 0
	movl	-580(%rbp), %esi	# score, tmp100
	movl	$1374389535, %edx	#, tmp102
	movl	%esi, %eax	# tmp100, tmp134
	imull	%edx	# tmp102
	sarl	$5, %edx	#, tmp103
	movl	%esi, %eax	# tmp100, tmp104
	sarl	$31, %eax	#, tmp104
	subl	%eax, %edx	# tmp104, D.5167
	movl	%edx, %eax	# D.5167, D.5167
	.loc 1 576 0
	cltd
	xorl	%edx, %eax	# tmp105, D.5167
	subl	%edx, %eax	# tmp105, D.5167
	cmpl	$0, -580(%rbp)	#, score
	jns	.L133	#,
	.loc 1 576 0 is_stmt 0 discriminator 1
	movl	$45, %edx	#, iftmp.68
	jmp	.L134	#
.L133:
	.loc 1 576 0 discriminator 2
	movl	$32, %edx	#, iftmp.68
.L134:
	.loc 1 576 0 discriminator 3
	movl	i_depth(%rip), %esi	# i_depth, i_depth.69
	movl	%edi, %r9d	# nodes.67,
	movl	%ecx, %r8d	# D.5167,
	movl	%eax, %ecx	# D.5167,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L132:
	.loc 1 584 0 is_stmt 1
	movl	pv+7224(%rip), %eax	# pv[1][1].from, D.5167
	testl	%eax, %eax	# D.5167
	je	.L135	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movl	pv+7224(%rip), %eax	# pv[1][1].from, D.5167
	cltq
	movl	board(,%rax,4), %eax	# board, D.5167
	cmpl	$13, %eax	#, D.5167
	je	.L136	#,
.L135:
	.loc 1 585 0 is_stmt 1
	movl	pv+7224(%rip), %eax	# pv[1][1].from, D.5167
	testl	%eax, %eax	# D.5167
	jne	.L137	#,
	.loc 1 585 0 is_stmt 0 discriminator 1
	movl	pv+7228(%rip), %eax	# pv[1][1].target, D.5167
	cltq
	movl	board(,%rax,4), %eax	# board, D.5167
	cmpl	$13, %eax	#, D.5167
	je	.L137	#,
.L136:
	.loc 1 587 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$pv+7224, %edi	#,
	call	unmake	#
	.loc 1 588 0
	movl	$1, -564(%rbp)	#, remake
.L137:
	.loc 1 591 0
	movl	$1, -568(%rbp)	#, i
	jmp	.L138	#
.L139:
	.loc 1 592 0 discriminator 2
	leaq	-544(%rbp), %rcx	#, tmp108
	movl	-568(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	addq	$pv+7200, %rax	#, tmp113
	movq	(%rax), %rdx	# pv, tmp114
	movq	%rdx, (%rsp)	# tmp114,
	movq	8(%rax), %rdx	# pv, tmp115
	movq	%rdx, 8(%rsp)	# tmp115,
	movq	16(%rax), %rax	# pv, tmp116
	movq	%rax, 16(%rsp)	# tmp116,
	movq	%rcx, %rdi	# tmp108,
	call	comp_to_san	#
	.loc 1 593 0 discriminator 2
	movl	-568(%rbp), %eax	# i, tmp118
	movslq	%eax, %rdx	# tmp118, tmp117
	movq	%rdx, %rax	# tmp117, tmp119
	addq	%rax, %rax	# tmp119
	addq	%rdx, %rax	# tmp117, tmp119
	salq	$3, %rax	#, tmp120
	addq	$7200, %rax	#, tmp121
	addq	$pv, %rax	#, D.5168
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5168,
	call	make	#
	.loc 1 594 0 discriminator 2
	leaq	-544(%rbp), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 591 0 discriminator 2
	addl	$1, -568(%rbp)	#, i
.L138:
	.loc 1 591 0 is_stmt 0 discriminator 1
	movl	pv_length+4(%rip), %eax	# pv_length, D.5167
	cmpl	-568(%rbp), %eax	# i, D.5167
	jg	.L139	#,
	.loc 1 597 0 is_stmt 1
	leaq	-288(%rbp), %rax	#, tmp123
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	memset	#
	.loc 1 599 0
	leaq	-288(%rbp), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movl	$7, %edi	#,
	call	hash_extract_pv	#
	.loc 1 601 0
	leaq	-288(%rbp), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 603 0
	movl	pv_length+4(%rip), %eax	# pv_length, D.5167
	subl	$1, %eax	#, tmp126
	movl	%eax, -568(%rbp)	# tmp126, i
	jmp	.L140	#
.L141:
	.loc 1 605 0 discriminator 2
	movl	-568(%rbp), %eax	# i, tmp128
	movslq	%eax, %rdx	# tmp128, tmp127
	movq	%rdx, %rax	# tmp127, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# tmp127, tmp129
	salq	$3, %rax	#, tmp130
	addq	$7200, %rax	#, tmp131
	addq	$pv, %rax	#, D.5168
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5168,
	call	unmake	#
	.loc 1 603 0 discriminator 2
	subl	$1, -568(%rbp)	#, i
.L140:
	.loc 1 603 0 is_stmt 0 discriminator 1
	cmpl	$0, -568(%rbp)	#, i
	jg	.L141	#,
	.loc 1 607 0 is_stmt 1
	cmpl	$0, -564(%rbp)	#, remake
	je	.L142	#,
	.loc 1 608 0
	movl	$0, %esi	#,
	movl	$pv+7224, %edi	#,
	call	make	#
.L142:
	.loc 1 610 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 611 0
	movq	-24(%rbp), %rax	# D.5169, tmp135
	xorq	%fs:40, %rax	#, tmp135
	je	.L143	#,
	call	__stack_chk_fail	#
.L143:
	addq	$600, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	post_thinking, .-post_thinking
	.section	.rodata
.LC63:
	.string	"%s !"
	.text
	.globl	post_fail_thinking
	.type	post_fail_thinking, @function
post_fail_thinking:
.LFB12:
	.loc 1 614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)	# score, score
	movq	%rsi, -320(%rbp)	# failmove, failmove
	.loc 1 614 0
	movq	%fs:40, %rax	#, tmp104
	movq	%rax, -24(%rbp)	# tmp104, D.5177
	xorl	%eax, %eax	# tmp104
	.loc 1 623 0
	movq	start_time(%rip), %rbx	# start_time, start_time.70
	call	rtime	#
	movq	%rbx, %rsi	# start_time.70,
	movq	%rax, %rdi	# D.5174,
	call	rdifftime	#
	movl	%eax, -304(%rbp)	# tmp75, elapsed
	.loc 1 624 0
	cmpl	$0, -304(%rbp)	#, elapsed
	jle	.L145	#,
.LBB3:
	.loc 1 625 0
	movl	nodes(%rip), %eax	# nodes, nodes.71
	cvtsi2sd	%eax, %xmm0	# nodes.71, D.5175
	movsd	.LC12(%rip), %xmm1	#, tmp76
	mulsd	%xmm1, %xmm0	# tmp76, D.5175
	cvtsi2sd	-304(%rbp), %xmm1	# elapsed, D.5175
	divsd	%xmm1, %xmm0	# D.5175, tmp77
	movsd	%xmm0, -296(%rbp)	# tmp77, dnps
	.loc 1 626 0
	movsd	-296(%rbp), %xmm0	# dnps, tmp78
	cvttsd2si	%xmm0, %eax	# tmp78, tmp79
	movl	%eax, -300(%rbp)	# tmp79, nps
.LBE3:
	jmp	.L146	#
.L145:
	.loc 1 629 0
	movl	nodes(%rip), %eax	# nodes, tmp80
	movl	%eax, -300(%rbp)	# tmp80, nps
.L146:
	.loc 1 630 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.72
	testl	%eax, %eax	# xb_mode.72
	je	.L147	#,
	.loc 1 631 0
	movl	nodes(%rip), %esi	# nodes, nodes.73
	movl	i_depth(%rip), %eax	# i_depth, i_depth.74
	movl	-304(%rbp), %ecx	# elapsed, tmp81
	movl	-308(%rbp), %edx	# score, tmp82
	movl	%esi, %r8d	# nodes.73,
	movl	%eax, %esi	# i_depth.74,
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L148	#
.L147:
	.loc 1 633 0
	movl	nodes(%rip), %edi	# nodes, nodes.75
	.loc 1 634 0
	movl	-308(%rbp), %ecx	# score, tmp83
	movl	$1374389535, %edx	#, tmp85
	movl	%ecx, %eax	# tmp83, tmp105
	imull	%edx	# tmp85
	sarl	$5, %edx	#, tmp86
	movl	%ecx, %eax	# tmp83, tmp87
	sarl	$31, %eax	#, tmp87
	subl	%eax, %edx	# tmp87, D.5176
	movl	%edx, %eax	# D.5176, D.5176
	imull	$100, %eax, %eax	#, D.5176, tmp88
	subl	%eax, %ecx	# tmp88, D.5176
	movl	%ecx, %eax	# D.5176, D.5176
	.loc 1 633 0
	cltd
	xorl	%edx, %eax	# tmp89, D.5176
	movl	%eax, %ecx	# D.5176, D.5176
	subl	%edx, %ecx	# tmp89, D.5176
	.loc 1 634 0
	movl	-308(%rbp), %esi	# score, tmp90
	movl	$1374389535, %edx	#, tmp92
	movl	%esi, %eax	# tmp90, tmp106
	imull	%edx	# tmp92
	sarl	$5, %edx	#, tmp93
	movl	%esi, %eax	# tmp90, tmp94
	sarl	$31, %eax	#, tmp94
	subl	%eax, %edx	# tmp94, D.5176
	movl	%edx, %eax	# D.5176, D.5176
	.loc 1 633 0
	cltd
	xorl	%edx, %eax	# tmp95, D.5176
	subl	%edx, %eax	# tmp95, D.5176
	cmpl	$0, -308(%rbp)	#, score
	jns	.L149	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movl	$45, %edx	#, iftmp.76
	jmp	.L150	#
.L149:
	.loc 1 633 0 discriminator 2
	movl	$32, %edx	#, iftmp.76
.L150:
	.loc 1 633 0 discriminator 3
	movl	i_depth(%rip), %esi	# i_depth, i_depth.77
	movl	%edi, %r9d	# nodes.75,
	movl	%ecx, %r8d	# D.5176,
	movl	%eax, %ecx	# D.5176,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L148:
	.loc 1 636 0 is_stmt 1
	movq	-320(%rbp), %rax	# failmove, tmp96
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	unmake	#
	.loc 1 637 0
	leaq	-288(%rbp), %rdx	#, tmp97
	movq	-320(%rbp), %rax	# failmove, tmp98
	movq	(%rax), %rcx	# *failmove_24(D), tmp99
	movq	%rcx, (%rsp)	# tmp99,
	movq	8(%rax), %rcx	# *failmove_24(D), tmp100
	movq	%rcx, 8(%rsp)	# tmp100,
	movq	16(%rax), %rax	# *failmove_24(D), tmp101
	movq	%rax, 16(%rsp)	# tmp101,
	movq	%rdx, %rdi	# tmp97,
	call	comp_to_san	#
	.loc 1 638 0
	movq	-320(%rbp), %rax	# failmove, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	make	#
	.loc 1 639 0
	leaq	-288(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 640 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 641 0
	movq	-24(%rbp), %rax	# D.5177, tmp107
	xorq	%fs:40, %rax	#, tmp107
	je	.L151	#,
	call	__stack_chk_fail	#
.L151:
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	post_fail_thinking, .-post_fail_thinking
	.section	.rodata
.LC64:
	.string	"%s !!"
	.text
	.globl	post_fh_thinking
	.type	post_fh_thinking, @function
post_fh_thinking:
.LFB13:
	.loc 1 644 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)	# score, score
	movq	%rsi, -320(%rbp)	# failmove, failmove
	.loc 1 644 0
	movq	%fs:40, %rax	#, tmp104
	movq	%rax, -24(%rbp)	# tmp104, D.5182
	xorl	%eax, %eax	# tmp104
	.loc 1 652 0
	movq	start_time(%rip), %rbx	# start_time, start_time.78
	call	rtime	#
	movq	%rbx, %rsi	# start_time.78,
	movq	%rax, %rdi	# D.5179,
	call	rdifftime	#
	movl	%eax, -304(%rbp)	# tmp75, elapsed
	.loc 1 654 0
	cmpl	$0, -304(%rbp)	#, elapsed
	jle	.L153	#,
.LBB4:
	.loc 1 655 0
	movl	nodes(%rip), %eax	# nodes, nodes.79
	cvtsi2sd	%eax, %xmm0	# nodes.79, D.5180
	movsd	.LC12(%rip), %xmm1	#, tmp76
	mulsd	%xmm1, %xmm0	# tmp76, D.5180
	cvtsi2sd	-304(%rbp), %xmm1	# elapsed, D.5180
	divsd	%xmm1, %xmm0	# D.5180, tmp77
	movsd	%xmm0, -296(%rbp)	# tmp77, dnps
	.loc 1 656 0
	movsd	-296(%rbp), %xmm0	# dnps, tmp78
	cvttsd2si	%xmm0, %eax	# tmp78, tmp79
	movl	%eax, -300(%rbp)	# tmp79, nps
.LBE4:
	jmp	.L154	#
.L153:
	.loc 1 659 0
	movl	nodes(%rip), %eax	# nodes, tmp80
	movl	%eax, -300(%rbp)	# tmp80, nps
.L154:
	.loc 1 660 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.80
	testl	%eax, %eax	# xb_mode.80
	je	.L155	#,
	.loc 1 661 0
	movl	nodes(%rip), %esi	# nodes, nodes.81
	movl	i_depth(%rip), %eax	# i_depth, i_depth.82
	movl	-304(%rbp), %ecx	# elapsed, tmp81
	movl	-308(%rbp), %edx	# score, tmp82
	movl	%esi, %r8d	# nodes.81,
	movl	%eax, %esi	# i_depth.82,
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L156	#
.L155:
	.loc 1 663 0
	movl	nodes(%rip), %edi	# nodes, nodes.83
	.loc 1 664 0
	movl	-308(%rbp), %ecx	# score, tmp83
	movl	$1374389535, %edx	#, tmp85
	movl	%ecx, %eax	# tmp83, tmp105
	imull	%edx	# tmp85
	sarl	$5, %edx	#, tmp86
	movl	%ecx, %eax	# tmp83, tmp87
	sarl	$31, %eax	#, tmp87
	subl	%eax, %edx	# tmp87, D.5181
	movl	%edx, %eax	# D.5181, D.5181
	imull	$100, %eax, %eax	#, D.5181, tmp88
	subl	%eax, %ecx	# tmp88, D.5181
	movl	%ecx, %eax	# D.5181, D.5181
	.loc 1 663 0
	cltd
	xorl	%edx, %eax	# tmp89, D.5181
	movl	%eax, %ecx	# D.5181, D.5181
	subl	%edx, %ecx	# tmp89, D.5181
	.loc 1 664 0
	movl	-308(%rbp), %esi	# score, tmp90
	movl	$1374389535, %edx	#, tmp92
	movl	%esi, %eax	# tmp90, tmp106
	imull	%edx	# tmp92
	sarl	$5, %edx	#, tmp93
	movl	%esi, %eax	# tmp90, tmp94
	sarl	$31, %eax	#, tmp94
	subl	%eax, %edx	# tmp94, D.5181
	movl	%edx, %eax	# D.5181, D.5181
	.loc 1 663 0
	cltd
	xorl	%edx, %eax	# tmp95, D.5181
	subl	%edx, %eax	# tmp95, D.5181
	cmpl	$0, -308(%rbp)	#, score
	jns	.L157	#,
	.loc 1 663 0 is_stmt 0 discriminator 1
	movl	$45, %edx	#, iftmp.84
	jmp	.L158	#
.L157:
	.loc 1 663 0 discriminator 2
	movl	$32, %edx	#, iftmp.84
.L158:
	.loc 1 663 0 discriminator 3
	movl	i_depth(%rip), %esi	# i_depth, i_depth.85
	movl	%edi, %r9d	# nodes.83,
	movl	%ecx, %r8d	# D.5181,
	movl	%eax, %ecx	# D.5181,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L156:
	.loc 1 665 0 is_stmt 1
	movq	-320(%rbp), %rax	# failmove, tmp96
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	unmake	#
	.loc 1 666 0
	leaq	-288(%rbp), %rdx	#, tmp97
	movq	-320(%rbp), %rax	# failmove, tmp98
	movq	(%rax), %rcx	# *failmove_24(D), tmp99
	movq	%rcx, (%rsp)	# tmp99,
	movq	8(%rax), %rcx	# *failmove_24(D), tmp100
	movq	%rcx, 8(%rsp)	# tmp100,
	movq	16(%rax), %rax	# *failmove_24(D), tmp101
	movq	%rax, 16(%rsp)	# tmp101,
	movq	%rdx, %rdi	# tmp97,
	call	comp_to_san	#
	.loc 1 667 0
	movq	-320(%rbp), %rax	# failmove, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	make	#
	.loc 1 668 0
	leaq	-288(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 669 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 670 0
	movq	-24(%rbp), %rax	# D.5182, tmp107
	xorq	%fs:40, %rax	#, tmp107
	je	.L159	#,
	call	__stack_chk_fail	#
.L159:
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	post_fh_thinking, .-post_fh_thinking
	.section	.rodata
.LC65:
	.string	"%s ??"
	.text
	.globl	post_fl_thinking
	.type	post_fl_thinking, @function
post_fl_thinking:
.LFB14:
	.loc 1 673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)	# score, score
	movq	%rsi, -320(%rbp)	# failmove, failmove
	.loc 1 673 0
	movq	%fs:40, %rax	#, tmp104
	movq	%rax, -24(%rbp)	# tmp104, D.5187
	xorl	%eax, %eax	# tmp104
	.loc 1 681 0
	movq	start_time(%rip), %rbx	# start_time, start_time.86
	call	rtime	#
	movq	%rbx, %rsi	# start_time.86,
	movq	%rax, %rdi	# D.5184,
	call	rdifftime	#
	movl	%eax, -304(%rbp)	# tmp75, elapsed
	.loc 1 683 0
	cmpl	$0, -304(%rbp)	#, elapsed
	jle	.L161	#,
.LBB5:
	.loc 1 684 0
	movl	nodes(%rip), %eax	# nodes, nodes.87
	cvtsi2sd	%eax, %xmm0	# nodes.87, D.5185
	movsd	.LC12(%rip), %xmm1	#, tmp76
	mulsd	%xmm1, %xmm0	# tmp76, D.5185
	cvtsi2sd	-304(%rbp), %xmm1	# elapsed, D.5185
	divsd	%xmm1, %xmm0	# D.5185, tmp77
	movsd	%xmm0, -296(%rbp)	# tmp77, dnps
	.loc 1 685 0
	movsd	-296(%rbp), %xmm0	# dnps, tmp78
	cvttsd2si	%xmm0, %eax	# tmp78, tmp79
	movl	%eax, -300(%rbp)	# tmp79, nps
.LBE5:
	jmp	.L162	#
.L161:
	.loc 1 688 0
	movl	nodes(%rip), %eax	# nodes, tmp80
	movl	%eax, -300(%rbp)	# tmp80, nps
.L162:
	.loc 1 689 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.88
	testl	%eax, %eax	# xb_mode.88
	je	.L163	#,
	.loc 1 690 0
	movl	nodes(%rip), %esi	# nodes, nodes.89
	movl	i_depth(%rip), %eax	# i_depth, i_depth.90
	movl	-304(%rbp), %ecx	# elapsed, tmp81
	movl	-308(%rbp), %edx	# score, tmp82
	movl	%esi, %r8d	# nodes.89,
	movl	%eax, %esi	# i_depth.90,
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L164	#
.L163:
	.loc 1 692 0
	movl	nodes(%rip), %edi	# nodes, nodes.91
	.loc 1 693 0
	movl	-308(%rbp), %ecx	# score, tmp83
	movl	$1374389535, %edx	#, tmp85
	movl	%ecx, %eax	# tmp83, tmp105
	imull	%edx	# tmp85
	sarl	$5, %edx	#, tmp86
	movl	%ecx, %eax	# tmp83, tmp87
	sarl	$31, %eax	#, tmp87
	subl	%eax, %edx	# tmp87, D.5186
	movl	%edx, %eax	# D.5186, D.5186
	imull	$100, %eax, %eax	#, D.5186, tmp88
	subl	%eax, %ecx	# tmp88, D.5186
	movl	%ecx, %eax	# D.5186, D.5186
	.loc 1 692 0
	cltd
	xorl	%edx, %eax	# tmp89, D.5186
	movl	%eax, %ecx	# D.5186, D.5186
	subl	%edx, %ecx	# tmp89, D.5186
	.loc 1 693 0
	movl	-308(%rbp), %esi	# score, tmp90
	movl	$1374389535, %edx	#, tmp92
	movl	%esi, %eax	# tmp90, tmp106
	imull	%edx	# tmp92
	sarl	$5, %edx	#, tmp93
	movl	%esi, %eax	# tmp90, tmp94
	sarl	$31, %eax	#, tmp94
	subl	%eax, %edx	# tmp94, D.5186
	movl	%edx, %eax	# D.5186, D.5186
	.loc 1 692 0
	cltd
	xorl	%edx, %eax	# tmp95, D.5186
	subl	%edx, %eax	# tmp95, D.5186
	cmpl	$0, -308(%rbp)	#, score
	jns	.L165	#,
	.loc 1 692 0 is_stmt 0 discriminator 1
	movl	$45, %edx	#, iftmp.92
	jmp	.L166	#
.L165:
	.loc 1 692 0 discriminator 2
	movl	$32, %edx	#, iftmp.92
.L166:
	.loc 1 692 0 discriminator 3
	movl	i_depth(%rip), %esi	# i_depth, i_depth.93
	movl	%edi, %r9d	# nodes.91,
	movl	%ecx, %r8d	# D.5186,
	movl	%eax, %ecx	# D.5186,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L164:
	.loc 1 694 0 is_stmt 1
	movq	-320(%rbp), %rax	# failmove, tmp96
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	unmake	#
	.loc 1 695 0
	leaq	-288(%rbp), %rdx	#, tmp97
	movq	-320(%rbp), %rax	# failmove, tmp98
	movq	(%rax), %rcx	# *failmove_24(D), tmp99
	movq	%rcx, (%rsp)	# tmp99,
	movq	8(%rax), %rcx	# *failmove_24(D), tmp100
	movq	%rcx, 8(%rsp)	# tmp100,
	movq	16(%rax), %rax	# *failmove_24(D), tmp101
	movq	%rax, 16(%rsp)	# tmp101,
	movq	%rdx, %rdi	# tmp97,
	call	comp_to_san	#
	.loc 1 696 0
	movq	-320(%rbp), %rax	# failmove, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	make	#
	.loc 1 697 0
	leaq	-288(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 698 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 699 0
	movq	-24(%rbp), %rax	# D.5187, tmp107
	xorq	%fs:40, %rax	#, tmp107
	je	.L167	#,
	call	__stack_chk_fail	#
.L167:
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	post_fl_thinking, .-post_fl_thinking
	.section	.rodata
.LC66:
	.string	"stat01: %i %i %i %i %i\n"
.LC67:
	.string	"stat01: %i %i %i %i %i %s\n"
	.text
	.globl	post_stat_thinking
	.type	post_stat_thinking, @function
post_stat_thinking:
.LFB15:
	.loc 1 702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 707 0
	movq	start_time(%rip), %rbx	# start_time, start_time.94
	call	rtime	#
	movq	%rbx, %rsi	# start_time.94,
	movq	%rax, %rdi	# D.5189,
	call	rdifftime	#
	movl	%eax, -20(%rbp)	# tmp71, elapsed
	.loc 1 709 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.95
	cmpl	$1, %eax	#, xb_mode.95
	jne	.L169	#,
	.loc 1 711 0
	movl	movetotal(%rip), %edi	# movetotal, movetotal.96
	movl	moveleft(%rip), %esi	# moveleft, moveleft.97
	movl	i_depth(%rip), %ecx	# i_depth, i_depth.98
	movl	nodes(%rip), %edx	# nodes, nodes.99
	movl	-20(%rbp), %eax	# elapsed, tmp72
	movl	%edi, %r9d	# movetotal.96,
	movl	%esi, %r8d	# moveleft.97,
	movl	%eax, %esi	# tmp72,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L168	#
.L169:
	.loc 1 713 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.100
	cmpl	$2, %eax	#, xb_mode.100
	jne	.L168	#,
	.loc 1 715 0
	movl	movetotal(%rip), %edi	# movetotal, movetotal.101
	movl	moveleft(%rip), %esi	# moveleft, moveleft.102
	movl	i_depth(%rip), %ecx	# i_depth, i_depth.103
	movl	nodes(%rip), %edx	# nodes, nodes.104
	movl	-20(%rbp), %eax	# elapsed, tmp73
	movq	$searching_move, (%rsp)	#,
	movl	%edi, %r9d	# movetotal.101,
	movl	%esi, %r8d	# moveleft.102,
	movl	%eax, %esi	# tmp73,
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L168:
	.loc 1 717 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	post_stat_thinking, .-post_stat_thinking
	.globl	print_move
	.type	print_move, @function
print_move:
.LFB16:
	.loc 1 720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movq	%rdi, -280(%rbp)	# moves, moves
	movl	%esi, -284(%rbp)	# m, m
	movq	%rdx, -296(%rbp)	# stream, stream
	.loc 1 720 0
	movq	%fs:40, %rax	#, tmp72
	movq	%rax, -8(%rbp)	# tmp72, D.5194
	xorl	%eax, %eax	# tmp72
	.loc 1 726 0
	movl	-284(%rbp), %eax	# m, tmp62
	movslq	%eax, %rdx	# tmp62, D.5192
	movq	%rdx, %rax	# D.5192, tmp63
	addq	%rax, %rax	# tmp63
	addq	%rdx, %rax	# D.5192, tmp63
	salq	$3, %rax	#, tmp64
	movq	%rax, %rdx	# tmp63, D.5192
	movq	-280(%rbp), %rax	# moves, tmp65
	addq	%rdx, %rax	# D.5192, D.5193
	leaq	-272(%rbp), %rdx	#, tmp66
	movq	(%rax), %rcx	# *_5, tmp67
	movq	%rcx, (%rsp)	# tmp67,
	movq	8(%rax), %rcx	# *_5, tmp68
	movq	%rcx, 8(%rsp)	# tmp68,
	movq	16(%rax), %rax	# *_5, tmp69
	movq	%rax, 16(%rsp)	# tmp69,
	movq	%rdx, %rdi	# tmp66,
	call	comp_to_san	#
	.loc 1 728 0
	movq	-296(%rbp), %rdx	# stream, tmp70
	leaq	-272(%rbp), %rax	#, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	fputs	#
	.loc 1 730 0
	movq	-8(%rbp), %rax	# D.5194, tmp73
	xorq	%fs:40, %rax	#, tmp73
	je	.L172	#,
	call	__stack_chk_fail	#
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	print_move, .-print_move
	.globl	rdelay
	.type	rdelay, @function
rdelay:
.LFB17:
	.loc 1 733 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# time_in_s, time_in_s
	.loc 1 738 0
	movl	$0, -20(%rbp)	#, timer
	.loc 1 740 0
	call	rtime	#
	movq	%rax, -16(%rbp)	# tmp60, time1
	.loc 1 741 0
	jmp	.L174	#
.L175:
	.loc 1 742 0
	call	rtime	#
	movq	%rax, -8(%rbp)	# tmp61, time2
	.loc 1 743 0
	movq	-16(%rbp), %rdx	# time1, tmp62
	movq	-8(%rbp), %rax	# time2, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	rdifftime	#
	movl	%eax, -20(%rbp)	# tmp64, timer
.L174:
	.loc 1 741 0 discriminator 1
	movl	-20(%rbp), %ecx	# timer, tmp65
	movl	$1374389535, %edx	#, tmp67
	movl	%ecx, %eax	# tmp65, tmp70
	imull	%edx	# tmp67
	sarl	$5, %edx	#, tmp68
	movl	%ecx, %eax	# tmp65, tmp69
	sarl	$31, %eax	#, tmp69
	subl	%eax, %edx	# tmp69, D.5195
	movl	%edx, %eax	# D.5195, D.5195
	cmpl	-36(%rbp), %eax	# time_in_s, D.5195
	jl	.L175	#,
	.loc 1 746 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	rdelay, .-rdelay
	.globl	rdifftime
	.type	rdifftime, @function
rdifftime:
.LFB18:
	.loc 1 749 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# end, end
	movq	%rsi, -16(%rbp)	# start, start
	.loc 1 758 0
	movq	-16(%rbp), %rdx	# start, tmp63
	movq	-8(%rbp), %rax	# end, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	difftime	#
	cvttsd2si	%xmm0, %eax	# D.5196, D.5197
	imull	$100, %eax, %eax	#, D.5197, D.5197
	.loc 1 760 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	rdifftime, .-rdifftime
	.section	.rodata
	.align 8
.LC68:
	.string	"Piece->square->piece inconsistency"
	.align 8
.LC69:
	.string	"Board/Piece->square inconsistency"
.LC70:
	.string	"Zero-ed piece inconsistency"
	.align 8
.LC71:
	.string	"Empty square has piece pointer"
	.align 8
.LC72:
	.string	"Filled square %d has no piece pointer\n"
	.align 8
.LC73:
	.string	"Square->piece->square inconsistency"
	.text
	.globl	check_piece_square
	.type	check_piece_square, @function
check_piece_square:
.LFB19:
	.loc 1 764 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 767 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L179	#
.L183:
	.loc 1 769 0
	movl	-4(%rbp), %eax	# i, tmp91
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.5198
	cmpl	-4(%rbp), %eax	# i, D.5198
	je	.L180	#,
	.loc 1 769 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	testl	%eax, %eax	# D.5198
	je	.L180	#,
	.loc 1 771 0 is_stmt 1
	movl	$.LC68, %edi	#,
	call	puts	#
	.loc 1 772 0
	movq	stdout(%rip), %rax	# stdout, stdout.105
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.105,
	call	display_board	#
	.loc 1 773 0
	movl	$0, %eax	#, D.5199
	movl	$0, (%rax)	#, *_9
.L180:
	.loc 1 775 0
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	cltq
	movl	board(,%rax,4), %eax	# board, D.5198
	cmpl	$13, %eax	#, D.5198
	jne	.L181	#,
	.loc 1 775 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	testl	%eax, %eax	# D.5198
	je	.L181	#,
	.loc 1 777 0 is_stmt 1
	movl	$.LC69, %edi	#,
	call	puts	#
	.loc 1 778 0
	movq	stdout(%rip), %rax	# stdout, stdout.106
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.106,
	call	display_board	#
	.loc 1 779 0
	movl	$0, %eax	#, D.5199
	movl	$0, (%rax)	#, *_14
.L181:
	.loc 1 781 0
	movl	-4(%rbp), %eax	# i, tmp101
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	testl	%eax, %eax	# D.5198
	jne	.L182	#,
	.loc 1 781 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp103
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.5198
	testl	%eax, %eax	# D.5198
	je	.L182	#,
	.loc 1 783 0 is_stmt 1
	movl	$.LC70, %edi	#,
	call	puts	#
	.loc 1 784 0
	movq	stdout(%rip), %rax	# stdout, stdout.107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.107,
	call	display_board	#
	.loc 1 785 0
	movl	$0, %eax	#, D.5199
	movl	$0, (%rax)	#, *_19
.L182:
	.loc 1 767 0
	addl	$1, -4(%rbp)	#, i
.L179:
	.loc 1 767 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.108
	cmpl	%eax, -4(%rbp)	# piece_count.108, i
	jle	.L183	#,
	.loc 1 788 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L184	#
.L189:
	.loc 1 790 0
	movl	-4(%rbp), %eax	# i, tmp106
	cltq
	movl	board(,%rax,4), %eax	# board, D.5198
	cmpl	$13, %eax	#, D.5198
	je	.L185	#,
	.loc 1 790 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	movl	board(,%rax,4), %eax	# board, D.5198
	testl	%eax, %eax	# D.5198
	jne	.L186	#,
.L185:
	.loc 1 790 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.5198
	testl	%eax, %eax	# D.5198
	je	.L186	#,
	.loc 1 792 0 is_stmt 1
	movl	$.LC71, %edi	#,
	call	puts	#
	.loc 1 793 0
	movq	stdout(%rip), %rax	# stdout, stdout.109
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.109,
	call	display_board	#
	.loc 1 794 0
	movl	$0, %eax	#, D.5199
	movl	$0, (%rax)	#, *_26
.L186:
	.loc 1 796 0
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	movl	board(,%rax,4), %eax	# board, D.5198
	cmpl	$13, %eax	#, D.5198
	je	.L187	#,
	.loc 1 796 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp114
	cltq
	movl	board(,%rax,4), %eax	# board, D.5198
	testl	%eax, %eax	# D.5198
	je	.L187	#,
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.5198
	testl	%eax, %eax	# D.5198
	jne	.L187	#,
	.loc 1 798 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp117
	movl	%eax, %esi	# tmp117,
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 799 0
	movq	stdout(%rip), %rax	# stdout, stdout.110
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.110,
	call	display_board	#
	.loc 1 800 0
	movl	$0, %eax	#, D.5199
	movl	$0, (%rax)	#, *_31
.L187:
	.loc 1 802 0
	movl	-4(%rbp), %eax	# i, tmp119
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.5198
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5198
	cmpl	-4(%rbp), %eax	# i, D.5198
	je	.L188	#,
	.loc 1 802 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	movl	squares(,%rax,4), %eax	# squares, D.5198
	testl	%eax, %eax	# D.5198
	je	.L188	#,
	.loc 1 804 0 is_stmt 1
	movl	$.LC73, %edi	#,
	call	puts	#
	.loc 1 805 0
	movq	stdout(%rip), %rax	# stdout, stdout.111
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.111,
	call	display_board	#
	.loc 1 806 0
	movl	$0, %eax	#, D.5199
	movl	$0, (%rax)	#, *_36
.L188:
	.loc 1 788 0
	addl	$1, -4(%rbp)	#, i
.L184:
	.loc 1 788 0 is_stmt 0 discriminator 1
	cmpl	$143, -4(%rbp)	#, i
	jle	.L189	#,
	.loc 1 809 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	check_piece_square, .-check_piece_square
	.globl	reset_piece_square
	.type	reset_piece_square, @function
reset_piece_square:
.LFB20:
	.loc 1 811 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$592, %rsp	#,
	.loc 1 820 0
	leaq	-576(%rbp), %rax	#, tmp74
	movl	$576, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	memset	#
	.loc 1 824 0
	movl	$1, -580(%rbp)	#, i
	jmp	.L191	#
.L193:
	.loc 1 825 0
	movl	-580(%rbp), %eax	# i, tmp76
	cltq
	movl	is_promoted(,%rax,4), %eax	# is_promoted, D.5206
	testl	%eax, %eax	# D.5206
	je	.L192	#,
	.loc 1 826 0
	movl	-580(%rbp), %eax	# i, tmp78
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, D.5206
	cltq
	movl	$1, -576(%rbp,%rax,4)	#, promoted_board
.L192:
	.loc 1 824 0
	addl	$1, -580(%rbp)	#, i
.L191:
	.loc 1 824 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.112
	cmpl	%eax, -580(%rbp)	# piece_count.112, i
	jle	.L193	#,
	.loc 1 828 0 is_stmt 1
	movl	$0, Material(%rip)	#, Material
	.loc 1 830 0
	movl	$0, piece_count(%rip)	#, piece_count
	.loc 1 832 0
	movl	$248, %edx	#,
	movl	$0, %esi	#,
	movl	$pieces, %edi	#,
	call	memset	#
	.loc 1 833 0
	movl	$248, %edx	#,
	movl	$0, %esi	#,
	movl	$is_promoted, %edi	#,
	call	memset	#
	.loc 1 835 0
	movl	$0, pieces(%rip)	#, pieces
	.loc 1 837 0
	movl	$26, -580(%rbp)	#, i
	jmp	.L194	#
.L198:
	.loc 1 838 0
	movl	-580(%rbp), %eax	# i, tmp81
	cltq
	movl	board(,%rax,4), %eax	# board, D.5206
	testl	%eax, %eax	# D.5206
	je	.L195	#,
	.loc 1 838 0 is_stmt 0 discriminator 1
	movl	-580(%rbp), %eax	# i, tmp83
	cltq
	movl	board(,%rax,4), %eax	# board, D.5206
	cmpl	$12, %eax	#, D.5206
	jg	.L195	#,
	.loc 1 840 0 is_stmt 1
	movl	-580(%rbp), %eax	# i, tmp85
	cltq
	movl	board(,%rax,4), %eax	# board, D.5206
	cltq
	movl	material(,%rax,4), %edx	# material, D.5206
	movl	Material(%rip), %eax	# Material, Material.113
	addl	%edx, %eax	# D.5206, Material.114
	movl	%eax, Material(%rip)	# Material.114, Material
	.loc 1 842 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.115
	addl	$1, %eax	#, piece_count.116
	movl	%eax, piece_count(%rip)	# piece_count.116, piece_count
	.loc 1 844 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.117
	cltq
	movl	-580(%rbp), %edx	# i, tmp88
	movl	%edx, pieces(,%rax,4)	# tmp88, pieces
	.loc 1 845 0
	movl	piece_count(%rip), %edx	# piece_count, piece_count.118
	movl	-580(%rbp), %eax	# i, tmp90
	cltq
	movl	%edx, squares(,%rax,4)	# piece_count.118, squares
	.loc 1 848 0
	movl	-580(%rbp), %eax	# i, tmp92
	cltq
	movl	-576(%rbp,%rax,4), %eax	# promoted_board, D.5206
	testl	%eax, %eax	# D.5206
	je	.L196	#,
	.loc 1 849 0
	movl	piece_count(%rip), %eax	# piece_count, piece_count.119
	cltq
	movl	$1, is_promoted(,%rax,4)	#, is_promoted
	.loc 1 848 0
	jmp	.L197	#
.L196:
	.loc 1 848 0 is_stmt 0 discriminator 1
	jmp	.L197	#
.L195:
	.loc 1 852 0 is_stmt 1
	movl	-580(%rbp), %eax	# i, tmp95
	cltq
	movl	$0, squares(,%rax,4)	#, squares
.L197:
	.loc 1 837 0
	addl	$1, -580(%rbp)	#, i
.L194:
	.loc 1 837 0 is_stmt 0 discriminator 1
	cmpl	$117, -580(%rbp)	#, i
	jle	.L198	#,
	.loc 1 853 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	reset_piece_square, .-reset_piece_square
	.globl	rinput
	.type	rinput, @function
rinput:
.LFB21:
	.loc 1 856 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	movl	%esi, -28(%rbp)	# n, n
	movq	%rdx, -40(%rbp)	# stream, stream
	.loc 1 862 0
	movl	$0, -8(%rbp)	#, i
	.loc 1 864 0
	jmp	.L200	#
.L202:
	.loc 1 865 0
	movl	-28(%rbp), %eax	# n, tmp66
	subl	$1, %eax	#, D.5207
	cmpl	-8(%rbp), %eax	# i, D.5207
	jle	.L200	#,
	.loc 1 866 0
	movl	-8(%rbp), %eax	# i, i.120
	leal	1(%rax), %edx	#, tmp67
	movl	%edx, -8(%rbp)	# tmp67, i
	movslq	%eax, %rdx	# i.120, D.5208
	movq	-24(%rbp), %rax	# str, tmp68
	addq	%rax, %rdx	# tmp68, D.5209
	movl	-4(%rbp), %eax	# ch, tmp69
	movb	%al, (%rdx)	# D.5210, *_11
.L200:
	.loc 1 864 0 discriminator 1
	movq	-40(%rbp), %rax	# stream, tmp70
	movq	%rax, %rdi	# tmp70,
	call	_IO_getc	#
	movl	%eax, -4(%rbp)	# tmp71, ch
	cmpl	$10, -4(%rbp)	#, ch
	je	.L201	#,
	.loc 1 864 0 is_stmt 0 discriminator 2
	cmpl	$-1, -4(%rbp)	#, ch
	jne	.L202	#,
.L201:
	.loc 1 870 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp72
	movslq	%eax, %rdx	# tmp72, D.5208
	movq	-24(%rbp), %rax	# str, tmp73
	addq	%rdx, %rax	# D.5208, D.5209
	movb	$0, (%rax)	#, *_14
	.loc 1 872 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	rinput, .-rinput
	.globl	rtime
	.type	rtime, @function
rtime:
.LFB22:
	.loc 1 874 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 895 0
	movl	$0, %eax	#, D.5211
	.loc 1 899 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	rtime, .-rtime
	.section	.rodata
	.align 8
.LC74:
	.string	"\nSjeng version SPEC 1.0, Copyright (C) 2000-2005 Gian-Carlo Pascutto\n"
	.text
	.globl	start_up
	.type	start_up, @function
start_up:
.LFB23:
	.loc 1 902 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 906 0
	movl	$.LC74, %edi	#,
	call	puts	#
	.loc 1 907 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	start_up, .-start_up
	.globl	toggle_bool
	.type	toggle_bool, @function
toggle_bool:
.LFB24:
	.loc 1 910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# var, var
	.loc 1 914 0
	movq	-8(%rbp), %rax	# var, tmp60
	movl	(%rax), %eax	# *var_1(D), D.5213
	testl	%eax, %eax	# D.5213
	je	.L207	#,
	.loc 1 915 0
	movq	-8(%rbp), %rax	# var, tmp61
	movl	$0, (%rax)	#, *var_1(D)
	jmp	.L206	#
.L207:
	.loc 1 918 0
	movq	-8(%rbp), %rax	# var, tmp62
	movl	$1, (%rax)	#, *var_1(D)
.L206:
	.loc 1 921 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	toggle_bool, .-toggle_bool
	.section	.rodata
	.align 8
.LC75:
	.string	"\nPlease enter the desired depth:"
	.align 8
.LC76:
	.string	"\nDo you want tree () output?  (y/n)"
	.align 8
.LC77:
	.string	"\nPlease enter the name of the output file for tree ():"
.LC78:
	.string	"w"
.LC79:
	.string	"Couldn't open file %s\n"
	.align 8
.LC80:
	.string	"\nDo you want to output diagrams? (y/n)"
	.align 8
.LC81:
	.string	"\n\n%s\nRaw nodes for depth %d: %i\n%s\n\n"
	.text
	.globl	tree_debug
	.type	tree_debug, @function
tree_debug:
.LFB25:
	.loc 1 924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	.loc 1 924 0
	movq	%fs:40, %rax	#, tmp80
	movq	%rax, -8(%rbp)	# tmp80, D.5215
	xorl	%eax, %eax	# tmp80
	.loc 1 933 0
	call	init_game	#
	.loc 1 936 0
	movl	$.LC75, %edi	#,
	call	puts	#
	.loc 1 937 0
	movq	stdin(%rip), %rdx	# stdin, stdin.121
	leaq	-272(%rbp), %rax	#, tmp66
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	rinput	#
	.loc 1 938 0
	leaq	-272(%rbp), %rax	#, tmp67
	movq	%rax, %rdi	# tmp67,
	call	atoi	#
	movl	%eax, -284(%rbp)	# tmp68, depth
	.loc 1 941 0
	movl	$.LC76, %edi	#,
	call	puts	#
	.loc 1 942 0
	movq	stdin(%rip), %rdx	# stdin, stdin.122
	leaq	-272(%rbp), %rax	#, tmp69
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	rinput	#
	.loc 1 943 0
	movzbl	-272(%rbp), %eax	# input, D.5214
	cmpb	$121, %al	#, D.5214
	jne	.L210	#,
	.loc 1 945 0
	movl	$.LC77, %edi	#,
	call	puts	#
	.loc 1 946 0
	movq	stdin(%rip), %rdx	# stdin, stdin.123
	leaq	-272(%rbp), %rax	#, tmp70
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	rinput	#
	.loc 1 947 0
	leaq	-272(%rbp), %rax	#, tmp71
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	fopen	#
	movq	%rax, -280(%rbp)	# tmp72, stream
	cmpq	$0, -280(%rbp)	#, stream
	jne	.L211	#,
	.loc 1 948 0
	movq	stderr(%rip), %rax	# stderr, stderr.124
	leaq	-272(%rbp), %rdx	#, tmp73
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# stderr.124,
	movl	$0, %eax	#,
	call	fprintf	#
.L211:
	.loc 1 952 0
	movl	$.LC80, %edi	#,
	call	puts	#
	.loc 1 953 0
	movq	stdin(%rip), %rdx	# stdin, stdin.125
	leaq	-272(%rbp), %rax	#, tmp74
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	rinput	#
	.loc 1 955 0
	leaq	-272(%rbp), %rcx	#, tmp75
	movq	-280(%rbp), %rdx	# stream, tmp76
	movl	-284(%rbp), %eax	# depth, tmp77
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp77,
	call	tree	#
.L210:
	.loc 1 959 0
	movl	$0, raw_nodes(%rip)	#, raw_nodes
	.loc 1 960 0
	movl	-284(%rbp), %eax	# depth, tmp78
	movl	%eax, %edi	# tmp78,
	call	perft	#
	.loc 1 961 0
	movl	raw_nodes(%rip), %edx	# raw_nodes, raw_nodes.126
	movl	-284(%rbp), %eax	# depth, tmp79
	movl	$divider, %r8d	#,
	movl	%edx, %ecx	# raw_nodes.126,
	movl	%eax, %edx	# tmp79,
	movl	$divider, %esi	#,
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 964 0
	movq	-8(%rbp), %rax	# D.5215, tmp81
	xorq	%fs:40, %rax	#, tmp81
	je	.L212	#,
	call	__stack_chk_fail	#
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	tree_debug, .-tree_debug
	.globl	verify_coord
	.type	verify_coord, @function
verify_coord:
.LFB26:
	.loc 1 967 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$12376, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -12344(%rbp)	# input, input
	movq	%rsi, -12352(%rbp)	# move, move
	.loc 1 967 0
	movq	%fs:40, %rax	#, tmp110
	movq	%rax, -24(%rbp)	# tmp110, D.5226
	xorl	%eax, %eax	# tmp110
	.loc 1 975 0
	movl	$0, -12328(%rbp)	#, legal
	.loc 1 978 0
	movl	Variant(%rip), %eax	# Variant, Variant.127
	cmpl	$4, %eax	#, Variant.127
	jne	.L214	#,
	.loc 1 980 0
	movl	$1, captures(%rip)	#, captures
	.loc 1 981 0
	movl	$0, -12336(%rbp)	#, num_moves
	.loc 1 982 0
	leaq	-12320(%rbp), %rax	#, tmp65
	movq	%rax, %rdi	# tmp65,
	call	gen	#
	.loc 1 983 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp66
	movl	%eax, -12336(%rbp)	# tmp66, num_moves
	.loc 1 984 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 986 0
	movl	$1, -12324(%rbp)	#, mate
	.loc 1 988 0
	movl	$0, -12332(%rbp)	#, i
	jmp	.L215	#
.L218:
	.loc 1 990 0
	movl	-12332(%rbp), %edx	# i, tmp67
	leaq	-12320(%rbp), %rax	#, tmp68
	movl	%edx, %esi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	make	#
	.loc 1 993 0
	movl	-12332(%rbp), %ecx	# i, tmp69
	leaq	-12320(%rbp), %rax	#, tmp70
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	check_legal	#
	testl	%eax, %eax	# D.5223
	je	.L216	#,
	.loc 1 995 0
	movl	$0, -12324(%rbp)	#, mate
	.loc 1 996 0
	movl	-12332(%rbp), %edx	# i, tmp71
	leaq	-12320(%rbp), %rax	#, tmp72
	movl	%edx, %esi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	unmake	#
	.loc 1 997 0
	jmp	.L217	#
.L216:
	.loc 1 1000 0
	movl	-12332(%rbp), %edx	# i, tmp73
	leaq	-12320(%rbp), %rax	#, tmp74
	movl	%edx, %esi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	unmake	#
	.loc 1 988 0
	addl	$1, -12332(%rbp)	#, i
.L215:
	.loc 1 988 0 is_stmt 0 discriminator 1
	movl	-12332(%rbp), %eax	# i, tmp75
	cmpl	-12336(%rbp), %eax	# num_moves, tmp75
	jl	.L218	#,
.L217:
	.loc 1 1003 0 is_stmt 1
	cmpl	$1, -12324(%rbp)	#, mate
	jne	.L220	#,
	.loc 1 1006 0
	movl	$0, captures(%rip)	#, captures
	.loc 1 1007 0
	movl	$0, -12336(%rbp)	#, num_moves
	.loc 1 1008 0
	leaq	-12320(%rbp), %rax	#, tmp76
	movq	%rax, %rdi	# tmp76,
	call	gen	#
	.loc 1 1009 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp77
	movl	%eax, -12336(%rbp)	# tmp77, num_moves
	jmp	.L220	#
.L214:
	.loc 1 1014 0
	leaq	-12320(%rbp), %rax	#, tmp78
	movq	%rax, %rdi	# tmp78,
	call	gen	#
	.loc 1 1015 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp79
	movl	%eax, -12336(%rbp)	# tmp79, num_moves
.L220:
	.loc 1 1019 0
	movl	$0, -12332(%rbp)	#, i
	jmp	.L221	#
.L224:
	.loc 1 1020 0
	leaq	-32(%rbp), %rcx	#, tmp80
	movl	-12332(%rbp), %eax	# i, tmp82
	movslq	%eax, %rdx	# tmp82, tmp81
	movq	%rdx, %rax	# tmp81, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rdx, %rax	# tmp81, tmp83
	salq	$3, %rax	#, tmp84
	leaq	-16(%rbp), %rbx	#, tmp113
	addq	%rbx, %rax	# tmp113, tmp85
	subq	$12304, %rax	#, tmp86
	movq	(%rax), %rdx	# moves, tmp87
	movq	%rdx, (%rsp)	# tmp87,
	movq	8(%rax), %rdx	# moves, tmp88
	movq	%rdx, 8(%rsp)	# tmp88,
	movq	16(%rax), %rax	# moves, tmp89
	movq	%rax, 16(%rsp)	# tmp89,
	movq	%rcx, %rdi	# tmp80,
	call	comp_to_coord	#
	.loc 1 1021 0
	leaq	-32(%rbp), %rdx	#, tmp90
	movq	-12344(%rbp), %rax	# input, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	strcmp	#
	testl	%eax, %eax	# D.5224
	jne	.L222	#,
	.loc 1 1022 0
	movl	-12332(%rbp), %edx	# i, tmp92
	leaq	-12320(%rbp), %rax	#, tmp93
	movl	%edx, %esi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	make	#
	.loc 1 1023 0
	movl	-12332(%rbp), %ecx	# i, tmp94
	leaq	-12320(%rbp), %rax	#, tmp95
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	check_legal	#
	testl	%eax, %eax	# D.5223
	je	.L223	#,
	.loc 1 1024 0
	movl	$1, -12328(%rbp)	#, legal
	.loc 1 1025 0
	movq	-12352(%rbp), %rdx	# move, tmp96
	movl	-12332(%rbp), %eax	# i, tmp98
	movslq	%eax, %rcx	# tmp98, tmp97
	movq	%rcx, %rax	# tmp97, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rcx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	leaq	-16(%rbp), %rbx	#, tmp112
	addq	%rbx, %rax	# tmp112, tmp101
	subq	$12304, %rax	#, tmp102
	movq	(%rax), %rcx	# moves, tmp103
	movq	%rcx, (%rdx)	# tmp103, *move_26(D)
	movq	8(%rax), %rcx	# moves, tmp104
	movq	%rcx, 8(%rdx)	# tmp104, *move_26(D)
	movq	16(%rax), %rax	# moves, tmp105
	movq	%rax, 16(%rdx)	# tmp105, *move_26(D)
.L223:
	.loc 1 1027 0
	movl	-12332(%rbp), %edx	# i, tmp106
	leaq	-12320(%rbp), %rax	#, tmp107
	movl	%edx, %esi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	unmake	#
.L222:
	.loc 1 1019 0
	addl	$1, -12332(%rbp)	#, i
.L221:
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movl	-12332(%rbp), %eax	# i, tmp108
	cmpl	-12336(%rbp), %eax	# num_moves, tmp108
	jl	.L224	#,
	.loc 1 1031 0 is_stmt 1
	movl	-12328(%rbp), %eax	# legal, D.5225
	.loc 1 1033 0
	movq	-24(%rbp), %rbx	# D.5226, tmp111
	xorq	%fs:40, %rbx	#, tmp111
	je	.L226	#,
	call	__stack_chk_fail	#
.L226:
	addq	$12376, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	verify_coord, .-verify_coord
	.globl	interrupt
	.type	interrupt, @function
interrupt:
.LFB27:
	.loc 1 1036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1039 0
	movl	$0, %eax	#, D.5227
	.loc 1 1040 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	interrupt, .-interrupt
	.globl	PutPiece
	.type	PutPiece, @function
PutPiece:
.LFB28:
	.loc 1 1043 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# color, color
	movl	%edx, %eax	# pfile, tmp65
	movl	%ecx, -48(%rbp)	# prank, prank
	movb	%sil, -40(%rbp)	# tmp64, piece
	movb	%al, -44(%rbp)	# tmp65, pfile
	.loc 1 1044 0
	movl	$97, -20(%rbp)	#, converterf
	.loc 1 1045 0
	movl	$49, -16(%rbp)	#, converterr
	.loc 1 1048 0
	movsbl	-44(%rbp), %eax	# pfile, D.5228
	subl	-20(%rbp), %eax	# converterf, tmp67
	movl	%eax, -12(%rbp)	# tmp67, norm_file
	.loc 1 1049 0
	movl	-16(%rbp), %eax	# converterr, tmp72
	movl	-48(%rbp), %edx	# prank, tmp73
	subl	%eax, %edx	# tmp72, tmp71
	movl	%edx, %eax	# tmp71, tmp71
	movl	%eax, -8(%rbp)	# tmp71, norm_rank
	.loc 1 1051 0
	movl	-8(%rbp), %edx	# norm_rank, tmp74
	movl	%edx, %eax	# tmp74, tmp75
	addl	%eax, %eax	# tmp75
	addl	%edx, %eax	# tmp74, tmp75
	sall	$2, %eax	#, tmp76
	leal	26(%rax), %edx	#, D.5228
	movl	-12(%rbp), %eax	# norm_file, tmp80
	addl	%edx, %eax	# D.5228, tmp79
	movl	%eax, -4(%rbp)	# tmp79, norm_square
	.loc 1 1053 0
	cmpl	$0, -36(%rbp)	#, color
	jne	.L230	#,
	.loc 1 1055 0
	movsbl	-40(%rbp), %eax	# piece, D.5228
	subl	$98, %eax	#, tmp81
	cmpl	$22, %eax	#, tmp81
	ja	.L240	#,
	movl	%eax, %eax	# tmp81, tmp82
	movq	.L233(,%rax,8), %rax	#, tmp83
	jmp	*%rax	# tmp83
	.section	.rodata
	.align 8
	.align 4
.L233:
	.quad	.L232
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L234
	.quad	.L240
	.quad	.L240
	.quad	.L235
	.quad	.L240
	.quad	.L236
	.quad	.L237
	.quad	.L238
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L240
	.quad	.L239
	.text
.L236:
	.loc 1 1058 0
	movl	-4(%rbp), %eax	# norm_square, tmp85
	cltq
	movl	$1, board(,%rax,4)	#, board
	.loc 1 1059 0
	jmp	.L231	#
.L235:
	.loc 1 1061 0
	movl	-4(%rbp), %eax	# norm_square, tmp87
	cltq
	movl	$3, board(,%rax,4)	#, board
	.loc 1 1062 0
	jmp	.L231	#
.L232:
	.loc 1 1064 0
	movl	-4(%rbp), %eax	# norm_square, tmp89
	cltq
	movl	$11, board(,%rax,4)	#, board
	.loc 1 1065 0
	jmp	.L231	#
.L238:
	.loc 1 1067 0
	movl	-4(%rbp), %eax	# norm_square, tmp91
	cltq
	movl	$7, board(,%rax,4)	#, board
	.loc 1 1068 0
	jmp	.L231	#
.L237:
	.loc 1 1070 0
	movl	-4(%rbp), %eax	# norm_square, tmp93
	cltq
	movl	$9, board(,%rax,4)	#, board
	.loc 1 1071 0
	jmp	.L231	#
.L234:
	.loc 1 1073 0
	movl	-4(%rbp), %eax	# norm_square, tmp95
	cltq
	movl	$5, board(,%rax,4)	#, board
	.loc 1 1074 0
	jmp	.L231	#
.L239:
	.loc 1 1076 0
	movl	-4(%rbp), %eax	# norm_square, tmp97
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1077 0
	nop
.L231:
	jmp	.L240	#
.L230:
	.loc 1 1080 0
	cmpl	$1, -36(%rbp)	#, color
	jne	.L240	#,
	.loc 1 1082 0
	movsbl	-40(%rbp), %eax	# piece, D.5228
	subl	$98, %eax	#, tmp98
	cmpl	$22, %eax	#, tmp98
	ja	.L250	#,
	movl	%eax, %eax	# tmp98, tmp99
	movq	.L242(,%rax,8), %rax	#, tmp100
	jmp	*%rax	# tmp100
	.section	.rodata
	.align 8
	.align 4
.L242:
	.quad	.L241
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L243
	.quad	.L250
	.quad	.L250
	.quad	.L244
	.quad	.L250
	.quad	.L245
	.quad	.L246
	.quad	.L247
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L248
	.text
.L245:
	.loc 1 1085 0
	movl	-4(%rbp), %eax	# norm_square, tmp102
	cltq
	movl	$2, board(,%rax,4)	#, board
	.loc 1 1086 0
	jmp	.L240	#
.L244:
	.loc 1 1088 0
	movl	-4(%rbp), %eax	# norm_square, tmp104
	cltq
	movl	$4, board(,%rax,4)	#, board
	.loc 1 1089 0
	jmp	.L240	#
.L241:
	.loc 1 1091 0
	movl	-4(%rbp), %eax	# norm_square, tmp106
	cltq
	movl	$12, board(,%rax,4)	#, board
	.loc 1 1092 0
	jmp	.L240	#
.L247:
	.loc 1 1094 0
	movl	-4(%rbp), %eax	# norm_square, tmp108
	cltq
	movl	$8, board(,%rax,4)	#, board
	.loc 1 1095 0
	jmp	.L240	#
.L246:
	.loc 1 1097 0
	movl	-4(%rbp), %eax	# norm_square, tmp110
	cltq
	movl	$10, board(,%rax,4)	#, board
	.loc 1 1098 0
	jmp	.L240	#
.L243:
	.loc 1 1100 0
	movl	-4(%rbp), %eax	# norm_square, tmp112
	cltq
	movl	$6, board(,%rax,4)	#, board
	.loc 1 1101 0
	jmp	.L240	#
.L248:
	.loc 1 1103 0
	movl	-4(%rbp), %eax	# norm_square, tmp114
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 1104 0
	nop
.L240:
	.loc 1 1108 0
	nop
.L250:
	nop
	.loc 1 1109 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	PutPiece, .-PutPiece
	.section	.rodata
	.align 32
.LC1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	reset_board
	.type	reset_board, @function
reset_board:
.LFB29:
	.loc 1 1111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$592, %rsp	#,
	.loc 1 1117 0
	leaq	-576(%rbp), %rdx	#, tmp59
	movl	$.LC1, %esi	#, tmp60
	movl	$72, %eax	#, tmp61
	movq	%rdx, %rdi	# tmp59, tmp59
	movq	%rax, %rcx	# tmp61, tmp61
	rep movsq
	.loc 1 1132 0
	movl	$board, %eax	#, tmp62
	leaq	-576(%rbp), %rsi	#, tmp63
	movl	$576, %r8d	#, tmp64
	movq	%rax, %rdx	# tmp62, tmp65
	andl	$4, %edx	#, tmp65
	testq	%rdx, %rdx	# tmp65
	je	.L252	#,
	movl	(%rsi), %edx	#, tmp66
	movl	%edx, (%rax)	# tmp66,
	addq	$4, %rax	#, tmp62
	addq	$4, %rsi	#, tmp63
	subl	$4, %r8d	#, tmp64
.L252:
	movl	%r8d, %edx	# tmp64, tmp67
	shrl	$3, %edx	#, tmp67
	movl	%edx, %edx	# tmp67, tmp68
	movq	%rax, %rdi	# tmp62, tmp62
	movq	%rdx, %rcx	# tmp68, tmp68
	rep movsq
	movq	%rdi, %rax	# tmp62, tmp62
	movl	$0, %edx	#, tmp69
	movl	%r8d, %ecx	# tmp64, tmp70
	andl	$4, %ecx	#, tmp70
	testl	%ecx, %ecx	# tmp70
	je	.L253	#,
	movl	(%rsi), %ecx	#, tmp71
	movl	%ecx, (%rax)	# tmp71,
	addq	$4, %rdx	#, tmp72
.L253:
	movl	%r8d, %ecx	# tmp64, tmp73
	andl	$2, %ecx	#, tmp73
	testl	%ecx, %ecx	# tmp73
	je	.L254	#,
	movzwl	(%rsi,%rdx), %ecx	#, tmp74
	movw	%cx, (%rax,%rdx)	# tmp74,
	addq	$2, %rdx	#, tmp75
.L254:
	movl	%r8d, %ecx	# tmp64, tmp76
	andl	$1, %ecx	#, tmp76
	testl	%ecx, %ecx	# tmp76
	je	.L255	#,
	movzbl	(%rsi,%rdx), %ecx	#, tmp77
	movb	%cl, (%rax,%rdx)	# tmp77,
.L255:
	.loc 1 1133 0
	movl	$0, -580(%rbp)	#, i
	jmp	.L256	#
.L257:
	.loc 1 1134 0 discriminator 2
	movl	-580(%rbp), %eax	# i, tmp79
	cltq
	movl	$0, moved(,%rax,4)	#, moved
	.loc 1 1133 0 discriminator 2
	addl	$1, -580(%rbp)	#, i
.L256:
	.loc 1 1133 0 is_stmt 0 discriminator 1
	cmpl	$143, -580(%rbp)	#, i
	jle	.L257	#,
	.loc 1 1136 0 is_stmt 1
	movl	$0, ep_square(%rip)	#, ep_square
	.loc 1 1138 0
	movl	$0, piece_count(%rip)	#, piece_count
	.loc 1 1140 0
	movl	$0, Material(%rip)	#, Material
	.loc 1 1142 0
	movl	$248, %edx	#,
	movl	$0, %esi	#,
	movl	$is_promoted, %edi	#,
	call	memset	#
	.loc 1 1143 0
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movl	$holding, %edi	#,
	call	memset	#
	.loc 1 1145 0
	movl	$0, white_hand_eval(%rip)	#, white_hand_eval
	.loc 1 1146 0
	movl	$0, black_hand_eval(%rip)	#, black_hand_eval
	.loc 1 1148 0
	movl	$0, bookidx(%rip)	#, bookidx
	.loc 1 1149 0
	movl	$0, fifty(%rip)	#, fifty
	.loc 1 1151 0
	call	reset_piece_square	#
	.loc 1 1153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	reset_board, .-reset_board
	.globl	seedMT
	.type	seedMT, @function
seedMT:
.LFB30:
	.loc 1 1158 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -28(%rbp)	# seed, seed
	.loc 1 1159 0
	movl	-28(%rbp), %eax	# seed, tmp64
	orl	$1, %eax	#, x
	movl	%eax, %ebx	# x, x
	movl	$state, %r12d	#, s
	.loc 1 1162 0
	movl	$0, left(%rip)	#, left
	movq	%r12, %rax	# s, s.128
	leaq	4(%rax), %r12	#, s
	movl	%ebx, (%rax)	# x, *s.128_7
	movl	$624, %r13d	#, j
	jmp	.L259	#
.L260:
	.loc 1 1163 0
	movq	%r12, %rax	# s, s.129
	leaq	4(%rax), %r12	#, s
	imull	$69069, %ebx, %ebx	#, x, x
	movl	%ebx, (%rax)	# x, *s.129_11
.L259:
	.loc 1 1162 0 discriminator 1
	subl	$1, %r13d	#, j
	testl	%r13d, %r13d	# j
	jne	.L260	#,
	.loc 1 1164 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	seedMT, .-seedMT
	.globl	reloadMT
	.type	reloadMT, @function
reloadMT:
.LFB31:
	.loc 1 1167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 1168 0
	movl	$state, %r14d	#, p0
	movq	$state+8, -48(%rbp)	#, %sfp
	movl	$state+1588, %r13d	#, pM
	.loc 1 1171 0
	movl	left(%rip), %eax	# left, left.130
	cmpl	$-1, %eax	#, left.130
	jge	.L262	#,
	.loc 1 1172 0
	movl	$4357, %edi	#,
	call	seedMT	#
.L262:
	.loc 1 1174 0
	movl	$623, left(%rip)	#, left
	movq	$state+4, next(%rip)	#, next
	.loc 1 1176 0
	movl	state(%rip), %r15d	# state, s0
	movl	state+4(%rip), %ebx	# state, s1
	movl	$228, %r12d	#, j
	jmp	.L263	#
.L266:
	.loc 1 1177 0
	movq	%r14, %rax	# p0, p0.131
	leaq	4(%rax), %r14	#, p0
	movq	%r13, %rdx	# pM, pM.132
	leaq	4(%rdx), %r13	#, pM
	movl	(%rdx), %edx	# *pM.132_26, D.5229
	movl	%r15d, %esi	# s0, D.5229
	andl	$-2147483648, %esi	#, D.5229
	movl	%ebx, %ecx	# s1, D.5229
	andl	$2147483647, %ecx	#, D.5229
	orl	%esi, %ecx	# D.5229, D.5229
	shrl	%ecx	# D.5229
	xorl	%edx, %ecx	# D.5229, D.5229
	movl	%ebx, %edx	# s1, D.5229
	andl	$1, %edx	#, D.5229
	testl	%edx, %edx	# D.5229
	je	.L264	#,
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movl	$-1727483681, %edx	#, iftmp.133
	jmp	.L265	#
.L264:
	.loc 1 1177 0 discriminator 2
	movl	$0, %edx	#, iftmp.133
.L265:
	.loc 1 1177 0 discriminator 3
	xorl	%ecx, %edx	# D.5229, D.5229
	movl	%edx, (%rax)	# D.5229, *p0.131_24
	.loc 1 1176 0 is_stmt 1 discriminator 3
	movl	%ebx, %r15d	# s1, s0
	movq	-48(%rbp), %rax	# %sfp, p2.134
	leaq	4(%rax), %rdi	#, p2
	movq	%rdi, -48(%rbp)	# p2, %sfp
	movl	(%rax), %ebx	# *p2.134_39, s1
.L263:
	.loc 1 1176 0 is_stmt 0 discriminator 1
	subl	$1, %r12d	#, j
	testl	%r12d, %r12d	# j
	jne	.L266	#,
	.loc 1 1179 0 is_stmt 1
	movl	$state, %r13d	#, pM
	movl	$397, %r12d	#, j
	jmp	.L267	#
.L270:
	.loc 1 1180 0
	movq	%r14, %rax	# p0, p0.135
	leaq	4(%rax), %r14	#, p0
	movq	%r13, %rdx	# pM, pM.136
	leaq	4(%rdx), %r13	#, pM
	movl	(%rdx), %edx	# *pM.136_47, D.5229
	movl	%r15d, %esi	# s0, D.5229
	andl	$-2147483648, %esi	#, D.5229
	movl	%ebx, %ecx	# s1, D.5229
	andl	$2147483647, %ecx	#, D.5229
	orl	%esi, %ecx	# D.5229, D.5229
	shrl	%ecx	# D.5229
	xorl	%edx, %ecx	# D.5229, D.5229
	movl	%ebx, %edx	# s1, D.5229
	andl	$1, %edx	#, D.5229
	testl	%edx, %edx	# D.5229
	je	.L268	#,
	.loc 1 1180 0 is_stmt 0 discriminator 1
	movl	$-1727483681, %edx	#, iftmp.137
	jmp	.L269	#
.L268:
	.loc 1 1180 0 discriminator 2
	movl	$0, %edx	#, iftmp.137
.L269:
	.loc 1 1180 0 discriminator 3
	xorl	%ecx, %edx	# D.5229, D.5229
	movl	%edx, (%rax)	# D.5229, *p0.135_45
	.loc 1 1179 0 is_stmt 1 discriminator 3
	movl	%ebx, %r15d	# s1, s0
	movq	-48(%rbp), %rax	# %sfp, p2.138
	leaq	4(%rax), %rdi	#, p2
	movq	%rdi, -48(%rbp)	# p2, %sfp
	movl	(%rax), %ebx	# *p2.138_60, s1
.L267:
	.loc 1 1179 0 is_stmt 0 discriminator 1
	subl	$1, %r12d	#, j
	testl	%r12d, %r12d	# j
	jne	.L270	#,
	.loc 1 1182 0 is_stmt 1
	movl	state(%rip), %ebx	# state, s1
	movl	0(%r13), %eax	# *pM_6, D.5229
	movl	%r15d, %ecx	# s0, D.5229
	andl	$-2147483648, %ecx	#, D.5229
	movl	%ebx, %edx	# s1, D.5229
	andl	$2147483647, %edx	#, D.5229
	orl	%ecx, %edx	# D.5229, D.5229
	shrl	%edx	# D.5229
	xorl	%eax, %edx	# D.5229, D.5229
	movl	%ebx, %eax	# s1, D.5229
	andl	$1, %eax	#, D.5229
	testl	%eax, %eax	# D.5229
	je	.L271	#,
	.loc 1 1182 0 is_stmt 0 discriminator 1
	movl	$-1727483681, %eax	#, iftmp.139
	jmp	.L272	#
.L271:
	.loc 1 1182 0 discriminator 2
	movl	$0, %eax	#, iftmp.139
.L272:
	.loc 1 1182 0 discriminator 3
	xorl	%edx, %eax	# D.5229, D.5229
	movl	%eax, (%r14)	# D.5229, *p0_2
	.loc 1 1183 0 is_stmt 1 discriminator 3
	movl	%ebx, %eax	# s1, D.5229
	shrl	$11, %eax	#, D.5229
	xorl	%eax, %ebx	# D.5229, s1
	.loc 1 1184 0 discriminator 3
	movl	%ebx, %eax	# s1, D.5229
	sall	$7, %eax	#, D.5229
	andl	$-1658038656, %eax	#, D.5229
	xorl	%eax, %ebx	# D.5229, s1
	.loc 1 1185 0 discriminator 3
	movl	%ebx, %eax	# s1, D.5229
	sall	$15, %eax	#, D.5229
	andl	$-272236544, %eax	#, D.5229
	xorl	%eax, %ebx	# D.5229, s1
	.loc 1 1186 0 discriminator 3
	movl	%ebx, %eax	# s1, D.5229
	shrl	$18, %eax	#, D.5229
	xorl	%ebx, %eax	# s1, D.5229
	.loc 1 1187 0 discriminator 3
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	reloadMT, .-reloadMT
	.globl	randomMT
	.type	randomMT, @function
randomMT:
.LFB32:
	.loc 1 1190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1193 0
	movl	left(%rip), %eax	# left, left.140
	subl	$1, %eax	#, left.141
	movl	%eax, left(%rip)	# left.141, left
	movl	left(%rip), %eax	# left, left.142
	testl	%eax, %eax	# left.142
	jns	.L275	#,
	.loc 1 1194 0
	call	reloadMT	#
	jmp	.L276	#
.L275:
	.loc 1 1196 0
	movq	next(%rip), %rax	# next, next.143
	leaq	4(%rax), %rdx	#, next.145
	movq	%rdx, next(%rip)	# next.145, next
	movl	(%rax), %eax	# *next.144_7, tmp73
	movl	%eax, -4(%rbp)	# tmp73, y
	.loc 1 1197 0
	movl	-4(%rbp), %eax	# y, tmp74
	shrl	$11, %eax	#, D.5231
	xorl	%eax, -4(%rbp)	# D.5231, y
	.loc 1 1198 0
	movl	-4(%rbp), %eax	# y, tmp75
	sall	$7, %eax	#, D.5231
	andl	$-1658038656, %eax	#, D.5231
	xorl	%eax, -4(%rbp)	# D.5231, y
	.loc 1 1199 0
	movl	-4(%rbp), %eax	# y, tmp76
	sall	$15, %eax	#, D.5231
	andl	$-272236544, %eax	#, D.5231
	xorl	%eax, -4(%rbp)	# D.5231, y
	.loc 1 1200 0
	movl	-4(%rbp), %eax	# y, tmp77
	shrl	$18, %eax	#, D.5231
	xorl	-4(%rbp), %eax	# y, D.5231
.L276:
	.loc 1 1201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	randomMT, .-randomMT
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1077149696
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.align 8
.LC5:
	.long	0
	.long	1075052544
	.align 8
.LC7:
	.long	0
	.long	1076101120
	.align 8
.LC10:
	.long	0
	.long	1082081280
	.align 8
.LC11:
	.long	0
	.long	1074266112
	.align 8
.LC12:
	.long	0
	.long	1079574528
	.align 8
.LC13:
	.long	0
	.long	1085763584
	.align 8
.LC14:
	.long	3435973837
	.long	1073794252
	.align 8
.LC15:
	.long	0
	.long	1070596096
	.align 8
.LC16:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/ctype.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12ee
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF202
	.byte	0x1
	.long	.LASF203
	.long	.LASF204
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.long	0x42
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0xe
	.long	0x2d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x8c
	.long	0x7e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x8d
	.long	0x7e
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x94
	.long	0x7e
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xb5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x30
	.long	0x118
	.uleb128 0x3
	.long	.LASF15
	.sleb128 256
	.uleb128 0x3
	.long	.LASF16
	.sleb128 512
	.uleb128 0x3
	.long	.LASF17
	.sleb128 1024
	.uleb128 0x3
	.long	.LASF18
	.sleb128 2048
	.uleb128 0x3
	.long	.LASF19
	.sleb128 4096
	.uleb128 0x3
	.long	.LASF20
	.sleb128 8192
	.uleb128 0x3
	.long	.LASF21
	.sleb128 16384
	.uleb128 0x3
	.long	.LASF22
	.sleb128 32768
	.uleb128 0x3
	.long	.LASF23
	.sleb128 1
	.uleb128 0x3
	.long	.LASF24
	.sleb128 2
	.uleb128 0x3
	.long	.LASF25
	.sleb128 4
	.uleb128 0x3
	.long	.LASF26
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11e
	.uleb128 0x9
	.long	0xb5
	.uleb128 0x4
	.long	.LASF27
	.byte	0x5
	.byte	0xd4
	.long	0x62
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF28
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF29
	.uleb128 0x4
	.long	.LASF30
	.byte	0x6
	.byte	0x4b
	.long	0xa2
	.uleb128 0x4
	.long	.LASF31
	.byte	0x7
	.byte	0x30
	.long	0x152
	.uleb128 0xa
	.long	.LASF61
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x2d3
	.uleb128 0xb
	.long	.LASF32
	.byte	0x8
	.byte	0xf7
	.long	0x77
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x8
	.byte	0xfc
	.long	0xaf
	.byte	0x8
	.uleb128 0xb
	.long	.LASF34
	.byte	0x8
	.byte	0xfd
	.long	0xaf
	.byte	0x10
	.uleb128 0xb
	.long	.LASF35
	.byte	0x8
	.byte	0xfe
	.long	0xaf
	.byte	0x18
	.uleb128 0xb
	.long	.LASF36
	.byte	0x8
	.byte	0xff
	.long	0xaf
	.byte	0x20
	.uleb128 0xc
	.long	.LASF37
	.byte	0x8
	.value	0x100
	.long	0xaf
	.byte	0x28
	.uleb128 0xc
	.long	.LASF38
	.byte	0x8
	.value	0x101
	.long	0xaf
	.byte	0x30
	.uleb128 0xc
	.long	.LASF39
	.byte	0x8
	.value	0x102
	.long	0xaf
	.byte	0x38
	.uleb128 0xc
	.long	.LASF40
	.byte	0x8
	.value	0x103
	.long	0xaf
	.byte	0x40
	.uleb128 0xc
	.long	.LASF41
	.byte	0x8
	.value	0x105
	.long	0xaf
	.byte	0x48
	.uleb128 0xc
	.long	.LASF42
	.byte	0x8
	.value	0x106
	.long	0xaf
	.byte	0x50
	.uleb128 0xc
	.long	.LASF43
	.byte	0x8
	.value	0x107
	.long	0xaf
	.byte	0x58
	.uleb128 0xc
	.long	.LASF44
	.byte	0x8
	.value	0x109
	.long	0x30b
	.byte	0x60
	.uleb128 0xc
	.long	.LASF45
	.byte	0x8
	.value	0x10b
	.long	0x311
	.byte	0x68
	.uleb128 0xc
	.long	.LASF46
	.byte	0x8
	.value	0x10d
	.long	0x77
	.byte	0x70
	.uleb128 0xc
	.long	.LASF47
	.byte	0x8
	.value	0x111
	.long	0x77
	.byte	0x74
	.uleb128 0xc
	.long	.LASF48
	.byte	0x8
	.value	0x113
	.long	0x85
	.byte	0x78
	.uleb128 0xc
	.long	.LASF49
	.byte	0x8
	.value	0x117
	.long	0x54
	.byte	0x80
	.uleb128 0xc
	.long	.LASF50
	.byte	0x8
	.value	0x118
	.long	0x69
	.byte	0x82
	.uleb128 0xc
	.long	.LASF51
	.byte	0x8
	.value	0x119
	.long	0x317
	.byte	0x83
	.uleb128 0xc
	.long	.LASF52
	.byte	0x8
	.value	0x11d
	.long	0x327
	.byte	0x88
	.uleb128 0xc
	.long	.LASF53
	.byte	0x8
	.value	0x126
	.long	0x90
	.byte	0x90
	.uleb128 0xc
	.long	.LASF54
	.byte	0x8
	.value	0x12f
	.long	0xad
	.byte	0x98
	.uleb128 0xc
	.long	.LASF55
	.byte	0x8
	.value	0x130
	.long	0xad
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF56
	.byte	0x8
	.value	0x131
	.long	0xad
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x8
	.value	0x132
	.long	0xad
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF58
	.byte	0x8
	.value	0x133
	.long	0x123
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF59
	.byte	0x8
	.value	0x135
	.long	0x77
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF60
	.byte	0x8
	.value	0x137
	.long	0x32d
	.byte	0xc4
	.byte	0
	.uleb128 0xd
	.long	.LASF205
	.byte	0x8
	.byte	0x9b
	.uleb128 0xa
	.long	.LASF62
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x30b
	.uleb128 0xb
	.long	.LASF63
	.byte	0x8
	.byte	0xa2
	.long	0x30b
	.byte	0
	.uleb128 0xb
	.long	.LASF64
	.byte	0x8
	.byte	0xa3
	.long	0x311
	.byte	0x8
	.uleb128 0xb
	.long	.LASF65
	.byte	0x8
	.byte	0xa7
	.long	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2da
	.uleb128 0x8
	.byte	0x8
	.long	0x152
	.uleb128 0xe
	.long	0xb5
	.long	0x327
	.uleb128 0xf
	.long	0x9b
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2d3
	.uleb128 0xe
	.long	0xb5
	.long	0x33d
	.uleb128 0xf
	.long	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.long	0x38d
	.uleb128 0xb
	.long	.LASF66
	.byte	0x2
	.byte	0x60
	.long	0x77
	.byte	0
	.uleb128 0xb
	.long	.LASF67
	.byte	0x2
	.byte	0x61
	.long	0x77
	.byte	0x4
	.uleb128 0xb
	.long	.LASF68
	.byte	0x2
	.byte	0x62
	.long	0x77
	.byte	0x8
	.uleb128 0xb
	.long	.LASF69
	.byte	0x2
	.byte	0x63
	.long	0x77
	.byte	0xc
	.uleb128 0xb
	.long	.LASF70
	.byte	0x2
	.byte	0x64
	.long	0x77
	.byte	0x10
	.uleb128 0x11
	.string	"ep"
	.byte	0x2
	.byte	0x65
	.long	0x77
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x2
	.byte	0x66
	.long	0x33d
	.uleb128 0x4
	.long	.LASF72
	.byte	0x2
	.byte	0xa1
	.long	0x13c
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.byte	0x1e
	.long	0x77
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e1
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0x24
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x24
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF75
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.byte	0x74
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x501
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0x74
	.long	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"str"
	.byte	0x1
	.byte	0x74
	.long	0xaf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24712
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0x76
	.long	0x501
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24592
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0x77
	.long	0x501
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.byte	0x78
	.long	0x522
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24656
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x79
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24692
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x79
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24668
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x79
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24660
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0x79
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24688
	.uleb128 0x13
	.long	.LASF83
	.byte	0x1
	.byte	0x79
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24684
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x7a
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24680
	.uleb128 0x13
	.long	.LASF85
	.byte	0x1
	.byte	0x7a
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24676
	.uleb128 0x13
	.long	.LASF86
	.byte	0x1
	.byte	0x7a
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24672
	.uleb128 0x13
	.long	.LASF87
	.byte	0x1
	.byte	0x7b
	.long	0xb5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24694
	.uleb128 0x13
	.long	.LASF88
	.byte	0x1
	.byte	0x7b
	.long	0xb5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24693
	.uleb128 0x17
	.string	"ic"
	.byte	0x1
	.byte	0x7c
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24664
	.byte	0
	.uleb128 0xe
	.long	0x38d
	.long	0x512
	.uleb128 0x18
	.long	0x9b
	.value	0x1ff
	.byte	0
	.uleb128 0xe
	.long	0x77
	.long	0x522
	.uleb128 0xf
	.long	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	0x512
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.value	0x114
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f5
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.value	0x114
	.long	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.value	0x114
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x1
	.value	0x118
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x1
	.value	0x119
	.long	0xb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x1
	.value	0x119
	.long	0xb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x1
	.value	0x11b
	.long	0x5f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x9
	.long	0x512
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.value	0x14b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x683
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.value	0x14b
	.long	0x683
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.value	0x14b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x14f
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.value	0x150
	.long	0x689
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.value	0x152
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.value	0x152
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0x152
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x147
	.uleb128 0xe
	.long	0x118
	.long	0x699
	.uleb128 0xf
	.long	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.value	0x172
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c8
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x1
	.value	0x176
	.long	0x6c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0xe
	.long	0x77
	.long	0x6d8
	.uleb128 0xf
	.long	0x9b
	.byte	0x8f
	.byte	0
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x1
	.value	0x1a7
	.long	0x42
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x70a
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.value	0x1a7
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.value	0x1bb
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x767
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.value	0x1c0
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x1c0
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x1
	.value	0x1c1
	.long	0x38d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x1
	.value	0x1c2
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.byte	0
	.uleb128 0xe
	.long	0xb5
	.long	0x777
	.uleb128 0xf
	.long	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.value	0x1f1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x80b
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.value	0x1f1
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12596
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.value	0x1f1
	.long	0xaf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12608
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x1
	.value	0x1f3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12588
	.uleb128 0x1d
	.string	"bm"
	.byte	0x1
	.value	0x1f3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12584
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.value	0x1f4
	.long	0x501
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12576
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x1
	.value	0x1f5
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12580
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x1f6
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.value	0x211
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x858
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.value	0x211
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x213
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x214
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x229
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x907
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.value	0x229
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x22d
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.value	0x22d
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x1d
	.string	"nps"
	.byte	0x1
	.value	0x22d
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x22e
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x22f
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x1
	.value	0x230
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.value	0x238
	.long	0x3e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF115
	.byte	0x1
	.value	0x265
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x998
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.value	0x265
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.value	0x265
	.long	0x998
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x26a
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1d
	.string	"nps"
	.byte	0x1
	.value	0x26a
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x26b
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.value	0x271
	.long	0x3e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x38d
	.uleb128 0x19
	.long	.LASF117
	.byte	0x1
	.value	0x283
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2f
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.value	0x283
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.value	0x283
	.long	0x998
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x287
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1d
	.string	"nps"
	.byte	0x1
	.value	0x287
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x288
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.value	0x28f
	.long	0x3e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF118
	.byte	0x1
	.value	0x2a0
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xac0
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.value	0x2a0
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.value	0x2a0
	.long	0x998
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x2a4
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1d
	.string	"nps"
	.byte	0x1
	.value	0x2a4
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x2a5
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.value	0x2ac
	.long	0x3e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF119
	.byte	0x1
	.value	0x2bd
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xaee
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x2c1
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF120
	.byte	0x1
	.value	0x2d0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4b
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.value	0x2d0
	.long	0x998
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1b
	.string	"m"
	.byte	0x1
	.value	0x2d0
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.value	0x2d0
	.long	0x683
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x1
	.value	0x2d4
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x19
	.long	.LASF121
	.byte	0x1
	.value	0x2dd
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xba6
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.value	0x2dd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x1
	.value	0x2e1
	.long	0x398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x1
	.value	0x2e1
	.long	0x398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.value	0x2e2
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x2ed
	.long	0x77
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe7
	.uleb128 0x1b
	.string	"end"
	.byte	0x1
	.value	0x2ed
	.long	0x398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.value	0x2ed
	.long	0x398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.value	0x2fb
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xc13
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x2fd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.value	0x32b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xc50
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x332
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x1
	.value	0x332
	.long	0x6c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.value	0x358
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb5
	.uleb128 0x1b
	.string	"str"
	.byte	0x1
	.value	0x358
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"n"
	.byte	0x1
	.value	0x358
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.value	0x358
	.long	0x683
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"ch"
	.byte	0x1
	.value	0x35e
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x35e
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF137
	.byte	0x1
	.value	0x36a
	.long	0x398
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.value	0x386
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF132
	.byte	0x1
	.value	0x38e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1b
	.uleb128 0x1b
	.string	"var"
	.byte	0x1
	.value	0x38e
	.long	0xd1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x42
	.uleb128 0x19
	.long	.LASF133
	.byte	0x1
	.value	0x39c
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xd70
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.value	0x3a1
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x1
	.value	0x3a2
	.long	0x683
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x1
	.value	0x3a3
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.byte	0
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.value	0x3c7
	.long	0x42
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xe17
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x3c7
	.long	0xaf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12360
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.value	0x3c7
	.long	0x998
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12368
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.value	0x3cc
	.long	0x501
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12336
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x1
	.value	0x3cd
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12352
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x3cd
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12348
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x1
	.value	0x3ce
	.long	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x3cf
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12344
	.uleb128 0x1c
	.long	.LASF83
	.byte	0x1
	.value	0x3d0
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12340
	.byte	0
	.uleb128 0xe
	.long	0xb5
	.long	0xe27
	.uleb128 0xf
	.long	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x20
	.long	.LASF138
	.byte	0x1
	.value	0x40b
	.long	0x77
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.value	0x412
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xeeb
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.value	0x412
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.value	0x412
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.value	0x412
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x1
	.value	0x412
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x1
	.value	0x414
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1
	.value	0x415
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x1
	.value	0x416
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x1
	.value	0x416
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x1
	.value	0x416
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF148
	.byte	0x1
	.value	0x457
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xf28
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x45b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x1
	.value	0x45d
	.long	0x6c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0x22
	.long	.LASF149
	.byte	0x1
	.value	0x485
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7a
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.value	0x485
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.value	0x487
	.long	0x5b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x487
	.long	0xf7a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x488
	.long	0x77
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5b
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x1
	.value	0x48e
	.long	0x5b
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xfee
	.uleb128 0x1d
	.string	"p0"
	.byte	0x1
	.value	0x490
	.long	0xf7a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"p2"
	.byte	0x1
	.value	0x490
	.long	0xf7a
	.uleb128 0x1d
	.string	"pM"
	.byte	0x1
	.value	0x490
	.long	0xf7a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1d
	.string	"s0"
	.byte	0x1
	.value	0x490
	.long	0x5b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1d
	.string	"s1"
	.byte	0x1
	.value	0x490
	.long	0x5b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x491
	.long	0x77
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x1
	.value	0x4a5
	.long	0x5b
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x101e
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.value	0x4a7
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	0x5b
	.long	0x102f
	.uleb128 0x18
	.long	0x9b
	.value	0x270
	.byte	0
	.uleb128 0x13
	.long	.LASF153
	.byte	0x1
	.byte	0x1a
	.long	0x101e
	.uleb128 0x9
	.byte	0x3
	.quad	state
	.uleb128 0x13
	.long	.LASF154
	.byte	0x1
	.byte	0x1b
	.long	0xf7a
	.uleb128 0x9
	.byte	0x3
	.quad	next
	.uleb128 0x24
	.long	.LASF155
	.byte	0x7
	.byte	0xa8
	.long	0x311
	.uleb128 0x24
	.long	.LASF156
	.byte	0x7
	.byte	0xa9
	.long	0x311
	.uleb128 0x24
	.long	.LASF157
	.byte	0x7
	.byte	0xaa
	.long	0x311
	.uleb128 0xe
	.long	0xb5
	.long	0x108a
	.uleb128 0xf
	.long	0x9b
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.long	.LASF158
	.byte	0x9
	.byte	0xa
	.long	0x107a
	.uleb128 0x24
	.long	.LASF159
	.byte	0x9
	.byte	0xc
	.long	0x6c8
	.uleb128 0x24
	.long	.LASF160
	.byte	0x9
	.byte	0xc
	.long	0x6c8
	.uleb128 0x24
	.long	.LASF161
	.byte	0x9
	.byte	0xc
	.long	0x77
	.uleb128 0x24
	.long	.LASF162
	.byte	0x9
	.byte	0xc
	.long	0x77
	.uleb128 0x24
	.long	.LASF163
	.byte	0x9
	.byte	0xc
	.long	0x77
	.uleb128 0x24
	.long	.LASF164
	.byte	0x9
	.byte	0xd
	.long	0x77
	.uleb128 0x24
	.long	.LASF165
	.byte	0x9
	.byte	0xd
	.long	0x77
	.uleb128 0x24
	.long	.LASF166
	.byte	0x9
	.byte	0xd
	.long	0x77
	.uleb128 0x24
	.long	.LASF167
	.byte	0x9
	.byte	0xd
	.long	0x77
	.uleb128 0x25
	.string	"ply"
	.byte	0x9
	.byte	0xd
	.long	0x77
	.uleb128 0xe
	.long	0x77
	.long	0x1114
	.uleb128 0x18
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x24
	.long	.LASF168
	.byte	0x9
	.byte	0xd
	.long	0x1103
	.uleb128 0x24
	.long	.LASF169
	.byte	0x9
	.byte	0xe
	.long	0x6c8
	.uleb128 0x24
	.long	.LASF170
	.byte	0x9
	.byte	0xe
	.long	0x77
	.uleb128 0x24
	.long	.LASF171
	.byte	0x9
	.byte	0xe
	.long	0x77
	.uleb128 0x24
	.long	.LASF172
	.byte	0x9
	.byte	0xe
	.long	0x77
	.uleb128 0x24
	.long	.LASF173
	.byte	0x9
	.byte	0x10
	.long	0x77
	.uleb128 0x24
	.long	.LASF174
	.byte	0x9
	.byte	0x10
	.long	0x77
	.uleb128 0x24
	.long	.LASF175
	.byte	0x9
	.byte	0x11
	.long	0x77
	.uleb128 0x24
	.long	.LASF176
	.byte	0x9
	.byte	0x11
	.long	0x77
	.uleb128 0x24
	.long	.LASF177
	.byte	0x9
	.byte	0x12
	.long	0x77
	.uleb128 0x25
	.string	"inc"
	.byte	0x9
	.byte	0x12
	.long	0x77
	.uleb128 0x24
	.long	.LASF178
	.byte	0x9
	.byte	0x12
	.long	0x77
	.uleb128 0x24
	.long	.LASF179
	.byte	0x9
	.byte	0x12
	.long	0x77
	.uleb128 0x24
	.long	.LASF180
	.byte	0x9
	.byte	0x12
	.long	0x77
	.uleb128 0x24
	.long	.LASF181
	.byte	0x9
	.byte	0x16
	.long	0x42
	.uleb128 0x24
	.long	.LASF182
	.byte	0x9
	.byte	0x17
	.long	0x77
	.uleb128 0xe
	.long	0x38d
	.long	0x11dc
	.uleb128 0x18
	.long	0x9b
	.value	0x12b
	.uleb128 0x18
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x25
	.string	"pv"
	.byte	0x9
	.byte	0x19
	.long	0x11c4
	.uleb128 0x24
	.long	.LASF183
	.byte	0x9
	.byte	0x20
	.long	0x398
	.uleb128 0xe
	.long	0x77
	.long	0x1207
	.uleb128 0xf
	.long	0x9b
	.byte	0x1
	.uleb128 0xf
	.long	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x24
	.long	.LASF184
	.byte	0x9
	.byte	0x22
	.long	0x11f1
	.uleb128 0x24
	.long	.LASF185
	.byte	0x9
	.byte	0x25
	.long	0x77
	.uleb128 0x24
	.long	.LASF186
	.byte	0x9
	.byte	0x26
	.long	0x77
	.uleb128 0xe
	.long	0x77
	.long	0x1238
	.uleb128 0xf
	.long	0x9b
	.byte	0x3d
	.byte	0
	.uleb128 0x24
	.long	.LASF187
	.byte	0x9
	.byte	0x2c
	.long	0x1228
	.uleb128 0x24
	.long	.LASF188
	.byte	0x9
	.byte	0x2d
	.long	0x1228
	.uleb128 0x24
	.long	.LASF189
	.byte	0x9
	.byte	0x45
	.long	0x77
	.uleb128 0x24
	.long	.LASF190
	.byte	0x9
	.byte	0x48
	.long	0x5b
	.uleb128 0x24
	.long	.LASF191
	.byte	0x9
	.byte	0x4a
	.long	0x77
	.uleb128 0x24
	.long	.LASF192
	.byte	0x9
	.byte	0x4b
	.long	0x512
	.uleb128 0x24
	.long	.LASF193
	.byte	0x9
	.byte	0x5e
	.long	0x1285
	.uleb128 0x9
	.long	0x6c8
	.uleb128 0x24
	.long	.LASF194
	.byte	0x9
	.byte	0x5e
	.long	0x1295
	.uleb128 0x9
	.long	0x6c8
	.uleb128 0x24
	.long	.LASF195
	.byte	0x9
	.byte	0x63
	.long	0x77
	.uleb128 0x24
	.long	.LASF196
	.byte	0x9
	.byte	0x76
	.long	0x77
	.uleb128 0x24
	.long	.LASF197
	.byte	0x9
	.byte	0x78
	.long	0x77
	.uleb128 0x24
	.long	.LASF198
	.byte	0x9
	.byte	0xa2
	.long	0x77
	.uleb128 0x24
	.long	.LASF199
	.byte	0x9
	.byte	0xa3
	.long	0x77
	.uleb128 0x24
	.long	.LASF200
	.byte	0x9
	.byte	0xa4
	.long	0x32d
	.uleb128 0x26
	.long	.LASF201
	.byte	0x1
	.byte	0x1c
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	left
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF51:
	.string	"_shortbuf"
.LASF66:
	.string	"from"
.LASF72:
	.string	"rtime_t"
.LASF205:
	.string	"_IO_lock_t"
.LASF145:
	.string	"norm_file"
.LASF102:
	.string	"input"
.LASF197:
	.string	"phase"
.LASF105:
	.string	"level"
.LASF118:
	.string	"post_fl_thinking"
.LASF157:
	.string	"stderr"
.LASF40:
	.string	"_IO_buf_end"
.LASF152:
	.string	"randomMT"
.LASF142:
	.string	"prank"
.LASF173:
	.string	"nodes"
.LASF133:
	.string	"tree_debug"
.LASF38:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF154:
	.string	"next"
.LASF32:
	.string	"_flags"
.LASF147:
	.string	"norm_square"
.LASF119:
	.string	"post_stat_thinking"
.LASF181:
	.string	"captures"
.LASF169:
	.string	"squares"
.LASF44:
	.string	"_markers"
.LASF117:
	.string	"post_fh_thinking"
.LASF170:
	.string	"i_depth"
.LASF140:
	.string	"piece"
.LASF96:
	.string	"piece_rep"
.LASF185:
	.string	"white_hand_eval"
.LASF88:
	.string	"t_file"
.LASF129:
	.string	"reset_piece_square"
.LASF171:
	.string	"fifty"
.LASF186:
	.string	"black_hand_eval"
.LASF196:
	.string	"numb_moves"
.LASF204:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF65:
	.string	"_pos"
.LASF1:
	.string	"TRUE"
.LASF156:
	.string	"stdout"
.LASF43:
	.string	"_IO_save_end"
.LASF182:
	.string	"xb_mode"
.LASF85:
	.string	"t_rank"
.LASF121:
	.string	"rdelay"
.LASF116:
	.string	"failmove"
.LASF168:
	.string	"pv_length"
.LASF138:
	.string	"interrupt"
.LASF167:
	.string	"result"
.LASF132:
	.string	"toggle_bool"
.LASF29:
	.string	"long long unsigned int"
.LASF78:
	.string	"evade_moves"
.LASF100:
	.string	"is_move"
.LASF106:
	.string	"xdummy"
.LASF68:
	.string	"captured"
.LASF143:
	.string	"converterf"
.LASF42:
	.string	"_IO_backup_base"
.LASF189:
	.string	"book_ply"
.LASF53:
	.string	"_offset"
.LASF144:
	.string	"converterr"
.LASF130:
	.string	"promoted_board"
.LASF16:
	.string	"_ISlower"
.LASF46:
	.string	"_fileno"
.LASF71:
	.string	"move_s"
.LASF94:
	.string	"color"
.LASF164:
	.string	"bking_loc"
.LASF139:
	.string	"PutPiece"
.LASF27:
	.string	"size_t"
.LASF76:
	.string	"move"
.LASF107:
	.string	"output"
.LASF19:
	.string	"_ISxdigit"
.LASF163:
	.string	"wking_loc"
.LASF35:
	.string	"_IO_read_base"
.LASF89:
	.string	"comp_to_san"
.LASF108:
	.string	"stringize_pv"
.LASF155:
	.string	"stdin"
.LASF112:
	.string	"elapsed"
.LASF114:
	.string	"dnps"
.LASF63:
	.string	"_next"
.LASF203:
	.string	"utils.c"
.LASF104:
	.string	"hash_extract_pv"
.LASF188:
	.string	"is_promoted"
.LASF198:
	.string	"moveleft"
.LASF92:
	.string	"display_board"
.LASF109:
	.string	"post_thinking"
.LASF14:
	.string	"char"
.LASF59:
	.string	"_mode"
.LASF134:
	.string	"verify_coord"
.LASF161:
	.string	"ep_square"
.LASF101:
	.string	"perft_debug"
.LASF62:
	.string	"_IO_marker"
.LASF33:
	.string	"_IO_read_ptr"
.LASF191:
	.string	"Material"
.LASF30:
	.string	"time_t"
.LASF175:
	.string	"moves_to_tc"
.LASF125:
	.string	"timer"
.LASF36:
	.string	"_IO_write_base"
.LASF110:
	.string	"score"
.LASF178:
	.string	"time_left"
.LASF192:
	.string	"material"
.LASF28:
	.string	"long long int"
.LASF41:
	.string	"_IO_save_base"
.LASF103:
	.string	"depth"
.LASF24:
	.string	"_IScntrl"
.LASF160:
	.string	"moved"
.LASF67:
	.string	"target"
.LASF79:
	.string	"type_to_char"
.LASF18:
	.string	"_ISdigit"
.LASF81:
	.string	"evasions"
.LASF77:
	.string	"moves"
.LASF20:
	.string	"_ISspace"
.LASF183:
	.string	"start_time"
.LASF131:
	.string	"rinput"
.LASF54:
	.string	"__pad1"
.LASF55:
	.string	"__pad2"
.LASF56:
	.string	"__pad3"
.LASF57:
	.string	"__pad4"
.LASF58:
	.string	"__pad5"
.LASF80:
	.string	"num_moves"
.LASF150:
	.string	"seed"
.LASF141:
	.string	"pfile"
.LASF50:
	.string	"_vtable_offset"
.LASF86:
	.string	"converter"
.LASF126:
	.string	"rdifftime"
.LASF206:
	.string	"start_up"
.LASF73:
	.string	"allocated_time"
.LASF83:
	.string	"mate"
.LASF69:
	.string	"promoted"
.LASF151:
	.string	"reloadMT"
.LASF202:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF25:
	.string	"_ISpunct"
.LASF176:
	.string	"min_per_game"
.LASF34:
	.string	"_IO_read_end"
.LASF21:
	.string	"_ISprint"
.LASF177:
	.string	"sec_per_game"
.LASF113:
	.string	"hashpv"
.LASF7:
	.string	"short int"
.LASF158:
	.string	"divider"
.LASF128:
	.string	"check_piece_square"
.LASF8:
	.string	"long int"
.LASF190:
	.string	"bookidx"
.LASF84:
	.string	"f_rank"
.LASF165:
	.string	"white_castled"
.LASF179:
	.string	"opp_time"
.LASF199:
	.string	"movetotal"
.LASF0:
	.string	"FALSE"
.LASF184:
	.string	"holding"
.LASF201:
	.string	"left"
.LASF22:
	.string	"_ISgraph"
.LASF127:
	.string	"start"
.LASF111:
	.string	"remake"
.LASF70:
	.string	"castled"
.LASF52:
	.string	"_lock"
.LASF12:
	.string	"sizetype"
.LASF195:
	.string	"Variant"
.LASF5:
	.string	"long unsigned int"
.LASF91:
	.string	"prom"
.LASF48:
	.string	"_old_offset"
.LASF61:
	.string	"_IO_FILE"
.LASF17:
	.string	"_ISalpha"
.LASF159:
	.string	"board"
.LASF115:
	.string	"post_fail_thinking"
.LASF87:
	.string	"f_file"
.LASF95:
	.string	"line_sep"
.LASF148:
	.string	"reset_board"
.LASF2:
	.string	"unsigned char"
.LASF64:
	.string	"_sbuf"
.LASF37:
	.string	"_IO_write_ptr"
.LASF193:
	.string	"Xrank"
.LASF90:
	.string	"comp_to_coord"
.LASF122:
	.string	"time_in_s"
.LASF97:
	.string	"init_game"
.LASF13:
	.string	"__time_t"
.LASF153:
	.string	"state"
.LASF26:
	.string	"_ISalnum"
.LASF135:
	.string	"comp_move"
.LASF149:
	.string	"seedMT"
.LASF120:
	.string	"print_move"
.LASF99:
	.string	"allocate_time"
.LASF82:
	.string	"ambig"
.LASF200:
	.string	"searching_move"
.LASF172:
	.string	"piece_count"
.LASF10:
	.string	"__off_t"
.LASF123:
	.string	"time1"
.LASF124:
	.string	"time2"
.LASF136:
	.string	"legal"
.LASF23:
	.string	"_ISblank"
.LASF6:
	.string	"signed char"
.LASF146:
	.string	"norm_rank"
.LASF3:
	.string	"short unsigned int"
.LASF74:
	.string	"move_speed"
.LASF137:
	.string	"rtime"
.LASF98:
	.string	"init_board"
.LASF166:
	.string	"black_castled"
.LASF75:
	.string	"double"
.LASF162:
	.string	"white_to_move"
.LASF45:
	.string	"_chain"
.LASF15:
	.string	"_ISupper"
.LASF31:
	.string	"FILE"
.LASF194:
	.string	"Xfile"
.LASF47:
	.string	"_flags2"
.LASF174:
	.string	"raw_nodes"
.LASF9:
	.string	"xbool"
.LASF49:
	.string	"_cur_column"
.LASF11:
	.string	"__off64_t"
.LASF60:
	.string	"_unused2"
.LASF39:
	.string	"_IO_buf_base"
.LASF93:
	.string	"stream"
.LASF187:
	.string	"pieces"
.LASF180:
	.string	"time_cushion"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
