	.file	"poll.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 poll.c -mtune=generic
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
	.globl	Perl_my_poll
	.type	Perl_my_poll, @function
Perl_my_poll:
.LFB2:
	.file 1 "poll.c"
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$640, %rsp	#,
	movq	%rdi, -616(%rbp)	# fds, fds
	movq	%rsi, -624(%rbp)	# nfds, nfds
	movl	%edx, -628(%rbp)	# timeout, timeout
	.loc 1 51 0
	movq	$0, -536(%rbp)	#, tbuf
	.loc 1 52 0
	movl	$0, -596(%rbp)	#, n
.LBB2:
	.loc 1 55 0
	movl	$0, %eax	#, tmp137
	movl	$16, %edx	#, tmp138
	leaq	-128(%rbp), %rsi	#, tmp139
	movq	%rdx, %rcx	# tmp138, tmp138
	movq	%rsi, %rdi	# tmp139, tmp139
#APP
# 55 "poll.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax	# tmp139, __d1
	movl	%ecx, %edx	# tmp138, __d0
	movl	%edx, -584(%rbp)	# __d0, __d0
	movl	%eax, -580(%rbp)	# __d1, __d1
.L2:
.LBE2:
.LBB3:
	.loc 1 59 0
	movl	$0, %eax	#, tmp142
	movl	$16, %edx	#, tmp143
	leaq	-512(%rbp), %rsi	#, tmp144
	movq	%rdx, %rcx	# tmp143, tmp143
	movq	%rsi, %rdi	# tmp144, tmp144
#APP
# 59 "poll.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax	# tmp144, __d1
	movl	%ecx, %edx	# tmp143, __d0
	movl	%edx, -576(%rbp)	# __d0, __d0
	movl	%eax, -572(%rbp)	# __d1, __d1
.LBE3:
.LBB4:
	.loc 1 60 0
	movl	$0, %eax	#, tmp147
	movl	$16, %edx	#, tmp148
	leaq	-384(%rbp), %rsi	#, tmp149
	movq	%rdx, %rcx	# tmp148, tmp148
	movq	%rsi, %rdi	# tmp149, tmp149
#APP
# 60 "poll.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax	# tmp149, __d1
	movl	%ecx, %edx	# tmp148, __d0
	movl	%edx, -568(%rbp)	# __d0, __d0
	movl	%eax, -564(%rbp)	# __d1, __d1
.LBE4:
.LBB5:
	.loc 1 61 0
	movl	$0, %eax	#, tmp152
	movl	$16, %edx	#, tmp153
	leaq	-256(%rbp), %rsi	#, tmp154
	movq	%rdx, %rcx	# tmp153, tmp153
	movq	%rsi, %rdi	# tmp154, tmp154
#APP
# 61 "poll.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax	# tmp154, __d1
	movl	%ecx, %edx	# tmp153, __d0
	movl	%edx, -560(%rbp)	# __d0, __d0
	movl	%eax, -556(%rbp)	# __d1, __d1
.LBE5:
	.loc 1 63 0
	movl	$0, -600(%rbp)	#, i
	jmp	.L3	#
.L10:
.LBB6:
	.loc 1 64 0
	movl	-600(%rbp), %eax	# i, tmp155
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10444
	movq	-616(%rbp), %rax	# fds, tmp156
	addq	%rdx, %rax	# D.10444, D.10445
	movzwl	4(%rax), %eax	# _29->events, D.10446
	cwtl
	movl	%eax, -552(%rbp)	# tmp157, events
	.loc 1 65 0
	movl	-600(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10444
	movq	-616(%rbp), %rax	# fds, tmp159
	addq	%rdx, %rax	# D.10444, D.10445
	movl	(%rax), %eax	# _34->fd, tmp160
	movl	%eax, -548(%rbp)	# tmp160, fd
	.loc 1 67 0
	movl	-600(%rbp), %eax	# i, tmp161
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10444
	movq	-616(%rbp), %rax	# fds, tmp162
	addq	%rdx, %rax	# D.10444, D.10445
	movw	$0, 6(%rax)	#, _38->revents
	.loc 1 69 0
	cmpl	$0, -548(%rbp)	#, fd
	js	.L4	#,
	.loc 1 69 0 is_stmt 0 discriminator 1
	movl	-548(%rbp), %eax	# fd, tmp163
	leal	63(%rax), %edx	#, tmp165
	testl	%eax, %eax	# tmp164
	cmovs	%edx, %eax	# tmp165,, tmp164
	sarl	$6, %eax	#, tmp166
	cltq
	movq	-128(%rbp,%rax,8), %rsi	# ifd.__fds_bits, D.10447
	movl	-548(%rbp), %eax	# fd, tmp168
	cltd
	shrl	$26, %edx	#, tmp170
	addl	%edx, %eax	# tmp170, tmp171
	andl	$63, %eax	#, tmp172
	subl	%edx, %eax	# tmp170, tmp173
	movl	%eax, %ecx	# D.10443, tmp303
	sarq	%cl, %rsi	# tmp303, D.10447
	movq	%rsi, %rax	# D.10447, D.10447
	andl	$1, %eax	#, D.10447
	testq	%rax, %rax	# D.10447
	je	.L5	#,
.L4:
	.loc 1 70 0 is_stmt 1
	jmp	.L6	#
.L5:
	.loc 1 72 0
	movl	-548(%rbp), %eax	# fd, tmp174
	cmpl	-596(%rbp), %eax	# n, tmp174
	jle	.L7	#,
	.loc 1 73 0
	movl	-548(%rbp), %eax	# fd, tmp175
	movl	%eax, -596(%rbp)	# tmp175, n
.L7:
	.loc 1 75 0
	movl	-552(%rbp), %eax	# events, tmp176
	andl	$65, %eax	#, D.10443
	testl	%eax, %eax	# D.10443
	je	.L8	#,
	.loc 1 76 0
	movl	-548(%rbp), %eax	# fd, tmp177
	leal	63(%rax), %edx	#, tmp179
	testl	%eax, %eax	# tmp178
	cmovs	%edx, %eax	# tmp179,, tmp178
	sarl	$6, %eax	#, tmp180
	movslq	%eax, %rdx	# D.10443, tmp181
	movq	-512(%rbp,%rdx,8), %rsi	# rfd.__fds_bits, D.10447
	movl	-548(%rbp), %edx	# fd, tmp182
	movl	%edx, %ecx	# tmp182, tmp183
	sarl	$31, %ecx	#, tmp183
	shrl	$26, %ecx	#, tmp184
	addl	%ecx, %edx	# tmp184, tmp185
	andl	$63, %edx	#, tmp186
	subl	%ecx, %edx	# tmp184, tmp187
	movl	$1, %edi	#, tmp188
	movl	%edx, %ecx	# D.10443, tmp306
	salq	%cl, %rdi	# tmp306, D.10447
	movq	%rdi, %rdx	# D.10447, D.10447
	orq	%rsi, %rdx	# D.10447, D.10447
	cltq
	movq	%rdx, -512(%rbp,%rax,8)	# D.10447, rfd.__fds_bits
.L8:
	.loc 1 78 0
	movl	-552(%rbp), %eax	# events, tmp190
	andl	$260, %eax	#, D.10443
	testl	%eax, %eax	# D.10443
	je	.L9	#,
	.loc 1 79 0
	movl	-548(%rbp), %eax	# fd, tmp191
	leal	63(%rax), %edx	#, tmp193
	testl	%eax, %eax	# tmp192
	cmovs	%edx, %eax	# tmp193,, tmp192
	sarl	$6, %eax	#, tmp194
	movslq	%eax, %rdx	# D.10443, tmp195
	movq	-384(%rbp,%rdx,8), %rsi	# wfd.__fds_bits, D.10447
	movl	-548(%rbp), %edx	# fd, tmp196
	movl	%edx, %ecx	# tmp196, tmp197
	sarl	$31, %ecx	#, tmp197
	shrl	$26, %ecx	#, tmp198
	addl	%ecx, %edx	# tmp198, tmp199
	andl	$63, %edx	#, tmp200
	subl	%ecx, %edx	# tmp198, tmp201
	movl	$1, %edi	#, tmp202
	movl	%edx, %ecx	# D.10443, tmp309
	salq	%cl, %rdi	# tmp309, D.10447
	movq	%rdi, %rdx	# D.10447, D.10447
	orq	%rsi, %rdx	# D.10447, D.10447
	cltq
	movq	%rdx, -384(%rbp,%rax,8)	# D.10447, wfd.__fds_bits
.L9:
	.loc 1 81 0
	movl	-552(%rbp), %eax	# events, tmp204
	andl	$130, %eax	#, D.10443
	testl	%eax, %eax	# D.10443
	je	.L6	#,
	.loc 1 82 0
	movl	-548(%rbp), %eax	# fd, tmp205
	leal	63(%rax), %edx	#, tmp207
	testl	%eax, %eax	# tmp206
	cmovs	%edx, %eax	# tmp207,, tmp206
	sarl	$6, %eax	#, tmp208
	movslq	%eax, %rdx	# D.10443, tmp209
	movq	-256(%rbp,%rdx,8), %rsi	# efd.__fds_bits, D.10447
	movl	-548(%rbp), %edx	# fd, tmp210
	movl	%edx, %ecx	# tmp210, tmp211
	sarl	$31, %ecx	#, tmp211
	shrl	$26, %ecx	#, tmp212
	addl	%ecx, %edx	# tmp212, tmp213
	andl	$63, %edx	#, tmp214
	subl	%ecx, %edx	# tmp212, tmp215
	movl	$1, %edi	#, tmp216
	movl	%edx, %ecx	# D.10443, tmp312
	salq	%cl, %rdi	# tmp312, D.10447
	movq	%rdi, %rdx	# D.10447, D.10447
	orq	%rsi, %rdx	# D.10447, D.10447
	cltq
	movq	%rdx, -256(%rbp,%rax,8)	# D.10447, efd.__fds_bits
.L6:
.LBE6:
	.loc 1 63 0
	addl	$1, -600(%rbp)	#, i
.L3:
	.loc 1 63 0 is_stmt 0 discriminator 1
	movq	-624(%rbp), %rax	# nfds, tmp218
	cmpl	-600(%rbp), %eax	# i, D.10443
	jg	.L10	#,
	.loc 1 85 0 is_stmt 1
	cmpl	$0, -628(%rbp)	#, timeout
	js	.L11	#,
	.loc 1 86 0
	movl	-628(%rbp), %ecx	# timeout, tmp219
	movl	$274877907, %edx	#, tmp221
	movl	%ecx, %eax	# tmp219, tmp292
	imull	%edx	# tmp221
	sarl	$6, %edx	#, tmp222
	movl	%ecx, %eax	# tmp219, tmp223
	sarl	$31, %eax	#, tmp223
	subl	%eax, %edx	# tmp223, D.10443
	movl	%edx, %eax	# D.10443, D.10443
	cltq
	movq	%rax, -528(%rbp)	# D.10447, timebuf.tv_sec
	.loc 1 87 0
	movl	-628(%rbp), %ecx	# timeout, tmp224
	movl	$274877907, %edx	#, tmp226
	movl	%ecx, %eax	# tmp224, tmp293
	imull	%edx	# tmp226
	sarl	$6, %edx	#, tmp227
	movl	%ecx, %eax	# tmp224, tmp228
	sarl	$31, %eax	#, tmp228
	subl	%eax, %edx	# tmp228, D.10443
	movl	%edx, %eax	# D.10443, D.10443
	imull	$1000, %eax, %eax	#, D.10443, tmp229
	subl	%eax, %ecx	# tmp229, D.10443
	movl	%ecx, %eax	# D.10443, D.10443
	imull	$1000, %eax, %eax	#, D.10443, D.10443
	cltq
	movq	%rax, -520(%rbp)	# D.10447, timebuf.tv_usec
	.loc 1 88 0
	leaq	-528(%rbp), %rax	#, tmp230
	movq	%rax, -536(%rbp)	# tmp230, tbuf
.L11:
	.loc 1 91 0
	movl	-596(%rbp), %eax	# n, tmp231
	leal	1(%rax), %edi	#, D.10443
	movq	-536(%rbp), %rsi	# tbuf, tmp232
	leaq	-256(%rbp), %rcx	#, tmp233
	leaq	-384(%rbp), %rdx	#, tmp234
	leaq	-512(%rbp), %rax	#, tmp235
	movq	%rsi, %r8	# tmp232,
	movq	%rax, %rsi	# tmp235,
	call	select	#
	movl	%eax, -544(%rbp)	# tmp236, err
	.loc 1 93 0
	cmpl	$0, -544(%rbp)	#, err
	jns	.L12	#,
	.loc 1 105 0
	movl	-544(%rbp), %eax	# err, D.10443
	jmp	.L22	#
.L12:
	.loc 1 108 0
	movl	$0, -592(%rbp)	#, count
	.loc 1 110 0
	movl	$0, -600(%rbp)	#, i
	jmp	.L14	#
.L21:
.LBB7:
	.loc 1 111 0
	movl	-600(%rbp), %eax	# i, tmp237
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10444
	movq	-616(%rbp), %rax	# fds, tmp238
	addq	%rdx, %rax	# D.10444, D.10445
	movzwl	4(%rax), %eax	# _79->events, D.10446
	cwtl
	andl	$455, %eax	#, tmp239
	movl	%eax, -588(%rbp)	# tmp239, revents
	.loc 1 112 0
	movl	-600(%rbp), %eax	# i, tmp240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10444
	movq	-616(%rbp), %rax	# fds, tmp241
	addq	%rdx, %rax	# D.10444, D.10445
	movl	(%rax), %eax	# _85->fd, tmp242
	movl	%eax, -540(%rbp)	# tmp242, fd
	.loc 1 114 0
	cmpl	$0, -540(%rbp)	#, fd
	jns	.L15	#,
	.loc 1 115 0
	jmp	.L16	#
.L15:
	.loc 1 117 0
	movl	-540(%rbp), %eax	# fd, tmp243
	leal	63(%rax), %edx	#, tmp245
	testl	%eax, %eax	# tmp244
	cmovs	%edx, %eax	# tmp245,, tmp244
	sarl	$6, %eax	#, tmp246
	cltq
	movq	-128(%rbp,%rax,8), %rsi	# ifd.__fds_bits, D.10447
	movl	-540(%rbp), %eax	# fd, tmp248
	cltd
	shrl	$26, %edx	#, tmp250
	addl	%edx, %eax	# tmp250, tmp251
	andl	$63, %eax	#, tmp252
	subl	%edx, %eax	# tmp250, tmp253
	movl	%eax, %ecx	# D.10443, tmp321
	sarq	%cl, %rsi	# tmp321, D.10447
	movq	%rsi, %rax	# D.10447, D.10447
	andl	$1, %eax	#, D.10447
	testq	%rax, %rax	# D.10447
	je	.L17	#,
	.loc 1 118 0
	movl	$32, -588(%rbp)	#, revents
	jmp	.L18	#
.L17:
	.loc 1 120 0
	movl	-540(%rbp), %eax	# fd, tmp254
	leal	63(%rax), %edx	#, tmp256
	testl	%eax, %eax	# tmp255
	cmovs	%edx, %eax	# tmp256,, tmp255
	sarl	$6, %eax	#, tmp257
	cltq
	movq	-512(%rbp,%rax,8), %rsi	# rfd.__fds_bits, D.10447
	movl	-540(%rbp), %eax	# fd, tmp259
	cltd
	shrl	$26, %edx	#, tmp261
	addl	%edx, %eax	# tmp261, tmp262
	andl	$63, %eax	#, tmp263
	subl	%edx, %eax	# tmp261, tmp264
	movl	%eax, %ecx	# D.10443, tmp323
	sarq	%cl, %rsi	# tmp323, D.10447
	movq	%rsi, %rax	# D.10447, D.10447
	andl	$1, %eax	#, D.10447
	testq	%rax, %rax	# D.10447
	jne	.L19	#,
	.loc 1 121 0
	andl	$-66, -588(%rbp)	#, revents
.L19:
	.loc 1 123 0
	movl	-540(%rbp), %eax	# fd, tmp265
	leal	63(%rax), %edx	#, tmp267
	testl	%eax, %eax	# tmp266
	cmovs	%edx, %eax	# tmp267,, tmp266
	sarl	$6, %eax	#, tmp268
	cltq
	movq	-384(%rbp,%rax,8), %rsi	# wfd.__fds_bits, D.10447
	movl	-540(%rbp), %eax	# fd, tmp270
	cltd
	shrl	$26, %edx	#, tmp272
	addl	%edx, %eax	# tmp272, tmp273
	andl	$63, %eax	#, tmp274
	subl	%edx, %eax	# tmp272, tmp275
	movl	%eax, %ecx	# D.10443, tmp325
	sarq	%cl, %rsi	# tmp325, D.10447
	movq	%rsi, %rax	# D.10447, D.10447
	andl	$1, %eax	#, D.10447
	testq	%rax, %rax	# D.10447
	jne	.L20	#,
	.loc 1 124 0
	andl	$-261, -588(%rbp)	#, revents
.L20:
	.loc 1 126 0
	movl	-540(%rbp), %eax	# fd, tmp276
	leal	63(%rax), %edx	#, tmp278
	testl	%eax, %eax	# tmp277
	cmovs	%edx, %eax	# tmp278,, tmp277
	sarl	$6, %eax	#, tmp279
	cltq
	movq	-256(%rbp,%rax,8), %rsi	# efd.__fds_bits, D.10447
	movl	-540(%rbp), %eax	# fd, tmp281
	cltd
	shrl	$26, %edx	#, tmp283
	addl	%edx, %eax	# tmp283, tmp284
	andl	$63, %eax	#, tmp285
	subl	%edx, %eax	# tmp283, tmp286
	movl	%eax, %ecx	# D.10443, tmp327
	sarq	%cl, %rsi	# tmp327, D.10447
	movq	%rsi, %rax	# D.10447, D.10447
	andl	$1, %eax	#, D.10447
	testq	%rax, %rax	# D.10447
	jne	.L18	#,
	.loc 1 127 0
	andl	$-131, -588(%rbp)	#, revents
.L18:
	.loc 1 130 0
	movl	-600(%rbp), %eax	# i, tmp287
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10444
	movq	-616(%rbp), %rax	# fds, tmp288
	addq	%rdx, %rax	# D.10444, D.10445
	movl	-588(%rbp), %edx	# revents, tmp289
	movw	%dx, 6(%rax)	# D.10446, _113->revents
	movzwl	6(%rax), %eax	# _113->revents, D.10446
	testw	%ax, %ax	# D.10446
	je	.L16	#,
	.loc 1 131 0
	addl	$1, -592(%rbp)	#, count
.L16:
.LBE7:
	.loc 1 110 0
	addl	$1, -600(%rbp)	#, i
.L14:
	.loc 1 110 0 is_stmt 0 discriminator 1
	movq	-624(%rbp), %rax	# nfds, tmp290
	cmpl	-600(%rbp), %eax	# i, D.10443
	jg	.L21	#,
	.loc 1 134 0 is_stmt 1
	movl	-592(%rbp), %eax	# count, D.10443
.L22:
	.loc 1 135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_my_poll, .-Perl_my_poll
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.file 5 "poll.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x360
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF31
	.byte	0x1
	.long	.LASF32
	.long	.LASF33
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.long	.LASF8
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x96
	.long	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF20
	.byte	0x10
	.byte	0x3
	.byte	0x1e
	.long	0xae
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x20
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x21
	.long	0x77
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x36
	.long	0x5e
	.uleb128 0x7
	.byte	0x80
	.byte	0x4
	.byte	0x40
	.long	0xce
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.byte	0x48
	.long	0xce
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xae
	.long	0xde
	.uleb128 0x9
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x4b
	.long	0xb9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF19
	.uleb128 0x5
	.long	.LASF21
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.long	0x135
	.uleb128 0xa
	.string	"fd"
	.byte	0x5
	.byte	0x1d
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x5
	.byte	0x1e
	.long	0x50
	.byte	0x4
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0x1f
	.long	0x50
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.byte	0x2e
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x357
	.uleb128 0xc
	.string	"fds"
	.byte	0x1
	.byte	0x2e
	.long	0x357
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.byte	0x2e
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x2e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -644
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0xe
	.string	"err"
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0xe
	.string	"rfd"
	.byte	0x1
	.byte	0x31
	.long	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0xe
	.string	"wfd"
	.byte	0x1
	.byte	0x31
	.long	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0xe
	.string	"efd"
	.byte	0x1
	.byte	0x31
	.long	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0xe
	.string	"ifd"
	.byte	0x1
	.byte	0x31
	.long	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x32
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.byte	0x33
	.long	0x35d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x34
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x35
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.byte	0x39
	.quad	.L2
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x258
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x37
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x37
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.byte	0
	.uleb128 0x11
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x28c
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x3b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x3b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.byte	0
	.uleb128 0x11
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2c0
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x3c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x3c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.byte	0
	.uleb128 0x11
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2f4
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.byte	0
	.uleb128 0x11
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x327
	.uleb128 0xf
	.long	.LASF22
	.byte	0x1
	.byte	0x40
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0xe
	.string	"fd"
	.byte	0x1
	.byte	0x41
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.byte	0
	.uleb128 0x12
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0xf
	.long	.LASF23
	.byte	0x1
	.byte	0x6f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0xe
	.string	"fd"
	.byte	0x1
	.byte	0x70
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x105
	.uleb128 0x13
	.byte	0x8
	.long	0x89
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF33:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF29:
	.string	"__d0"
.LASF28:
	.string	"count"
.LASF26:
	.string	"timebuf"
.LASF19:
	.string	"float"
.LASF16:
	.string	"long long unsigned int"
.LASF35:
	.string	"again"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF8:
	.string	"__time_t"
.LASF0:
	.string	"unsigned char"
.LASF18:
	.string	"double"
.LASF27:
	.string	"tbuf"
.LASF22:
	.string	"events"
.LASF11:
	.string	"tv_sec"
.LASF20:
	.string	"timeval"
.LASF2:
	.string	"unsigned int"
.LASF23:
	.string	"revents"
.LASF21:
	.string	"pollfd"
.LASF10:
	.string	"char"
.LASF9:
	.string	"__suseconds_t"
.LASF13:
	.string	"__fd_mask"
.LASF12:
	.string	"tv_usec"
.LASF7:
	.string	"sizetype"
.LASF30:
	.string	"__d1"
.LASF34:
	.string	"Perl_my_poll"
.LASF17:
	.string	"long long int"
.LASF25:
	.string	"timeout"
.LASF31:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF24:
	.string	"nfds"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"__fds_bits"
.LASF4:
	.string	"signed char"
.LASF32:
	.string	"poll.c"
.LASF15:
	.string	"fd_set"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
