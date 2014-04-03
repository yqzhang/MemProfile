	.file	"pad.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 pad.c -mtune=generic
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
	.globl	Perl_pad_new
	.type	Perl_pad_new, @function
Perl_pad_new:
.LFB2:
	.file 1 "pad.c"
	.loc 1 126 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# flags, flags
	.loc 1 139 0
	movl	-36(%rbp), %eax	# flags, tmp97
	andl	$2, %eax	#, D.12136
	testl	%eax, %eax	# D.12136
	je	.L2	#,
.LBB2:
	.loc 1 140 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.0
	leal	2(%rax), %edx	#, D.12136
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.1
	cmpl	%eax, %edx	# PL_savestack_max.1, D.12136
	jle	.L3	#,
	.loc 1 140 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L3:
	.loc 1 140 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.2
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.3
	leal	1(%rax), %edx	#, PL_savestack_ix.5
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.5, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.12137
	leaq	(%rcx,%rax), %rdx	#, D.12138
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.6
	movq	%rax, (%rdx)	# PL_comppad.6, _12->any_ptr
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.7
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.8
	leal	1(%rax), %edx	#, PL_savestack_ix.10
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.10, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.12137
	addq	%rcx, %rax	# PL_savestack.7, D.12138
	movl	$33, (%rax)	#, _20->any_i32
.LBE2:
	.loc 1 141 0 is_stmt 1 discriminator 2
	movl	$PL_comppad_name, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 142 0 discriminator 2
	movl	-36(%rbp), %eax	# flags, tmp98
	andl	$1, %eax	#, D.12136
	testl	%eax, %eax	# D.12136
	jne	.L2	#,
	.loc 1 143 0
	movl	$PL_padix, %edi	#,
	call	Perl_save_I32	#
	.loc 1 144 0
	movl	$PL_comppad_name_fill, %edi	#,
	call	Perl_save_I32	#
	.loc 1 145 0
	movl	$PL_min_intro_pending, %edi	#,
	call	Perl_save_I32	#
	.loc 1 146 0
	movl	$PL_max_intro_pending, %edi	#,
	call	Perl_save_I32	#
	.loc 1 147 0
	movl	-36(%rbp), %eax	# flags, tmp99
	andl	$4, %eax	#, D.12136
	testl	%eax, %eax	# D.12136
	je	.L2	#,
	.loc 1 148 0
	movl	$PL_pad_reset_pending, %edi	#,
	call	Perl_save_I32	#
.L2:
	.loc 1 157 0
	call	Perl_newAV	#
	movq	%rax, -32(%rbp)	# tmp100, padlist
	.loc 1 158 0
	call	Perl_newAV	#
	movq	%rax, -24(%rbp)	# tmp101, padname
	.loc 1 159 0
	call	Perl_newAV	#
	movq	%rax, -16(%rbp)	# tmp102, pad
	.loc 1 161 0
	movl	-36(%rbp), %eax	# flags, tmp103
	andl	$1, %eax	#, D.12136
	testl	%eax, %eax	# D.12136
	je	.L4	#,
	.loc 1 167 0
	call	Perl_newAV	#
	movq	%rax, -8(%rbp)	# tmp104, a0
	.loc 1 168 0
	movq	-8(%rbp), %rax	# a0, tmp105
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	Perl_av_extend	#
	.loc 1 169 0
	movq	-8(%rbp), %rdx	# a0, tmp106
	movq	-16(%rbp), %rax	# pad, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	Perl_av_store	#
	.loc 1 170 0
	movq	-8(%rbp), %rax	# a0, tmp108
	movq	(%rax), %rax	# a0_28->sv_any, D.12140
	movb	$2, 72(%rax)	#, _29->xav_flags
	jmp	.L5	#
.L4:
	.loc 1 179 0
	movq	-16(%rbp), %rax	# pad, tmp109
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	Perl_av_store	#
.L5:
	.loc 1 183 0
	movq	-32(%rbp), %rax	# padlist, tmp110
	movq	(%rax), %rax	# padlist_24->sv_any, D.12140
	movq	-32(%rbp), %rdx	# padlist, tmp111
	movq	(%rdx), %rdx	# padlist_24->sv_any, D.12140
	movzbl	72(%rdx), %edx	# _31->xav_flags, D.12141
	andl	$-2, %edx	#, D.12141
	movb	%dl, 72(%rax)	# D.12141, _30->xav_flags
	.loc 1 184 0
	movq	-24(%rbp), %rdx	# padname, tmp112
	movq	-32(%rbp), %rax	# padlist, tmp113
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	Perl_av_store	#
	.loc 1 185 0
	movq	-16(%rbp), %rdx	# pad, tmp114
	movq	-32(%rbp), %rax	# padlist, tmp115
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	Perl_av_store	#
	.loc 1 189 0
	movq	-32(%rbp), %rax	# padlist, tmp116
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_34, PL_comppad_name.11
	movq	%rax, PL_comppad_name(%rip)	# PL_comppad_name.11, PL_comppad_name
	.loc 1 190 0
	movq	-32(%rbp), %rax	# padlist, tmp117
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_36, PL_comppad.12
	movq	%rax, PL_comppad(%rip)	# PL_comppad.12, PL_comppad
	.loc 1 191 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.13
	movq	(%rax), %rax	# PL_comppad.13_38->sv_any, D.12140
	movq	(%rax), %rax	# _39->xav_array, PL_curpad.14
	movq	%rax, PL_curpad(%rip)	# PL_curpad.14, PL_curpad
	.loc 1 193 0
	movl	-36(%rbp), %eax	# flags, tmp118
	andl	$1, %eax	#, D.12136
	testl	%eax, %eax	# D.12136
	jne	.L6	#,
	.loc 1 194 0
	movl	$0, PL_comppad_name_fill(%rip)	#, PL_comppad_name_fill
	.loc 1 195 0
	movl	$0, PL_min_intro_pending(%rip)	#, PL_min_intro_pending
	.loc 1 196 0
	movl	$0, PL_padix(%rip)	#, PL_padix
.L6:
	.loc 1 207 0
	movq	-32(%rbp), %rax	# padlist, D.12143
	.loc 1 208 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_pad_new, .-Perl_pad_new
	.globl	Perl_pad_undef
	.type	Perl_pad_undef, @function
Perl_pad_undef:
.LFB3:
	.loc 1 227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 1 229 0
	movq	-88(%rbp), %rax	# cv, tmp121
	movq	(%rax), %rax	# cv_3(D)->sv_any, D.12144
	movq	120(%rax), %rax	# _4->xcv_padlist, tmp122
	movq	%rax, -72(%rbp)	# tmp122, padlist
	.loc 1 231 0
	cmpq	$0, -72(%rbp)	#, padlist
	jne	.L9	#,
	.loc 1 232 0
	jmp	.L8	#
.L9:
	.loc 1 233 0
	movq	-88(%rbp), %rax	# cv, tmp123
	movq	(%rax), %rax	# cv_3(D)->sv_any, D.12144
	movq	120(%rax), %rax	# _6->xcv_padlist, D.12145
	movl	8(%rax), %eax	# _7->sv_refcnt, D.12146
	testl	%eax, %eax	# D.12146
	jne	.L11	#,
	.loc 1 234 0
	jmp	.L8	#
.L11:
	.loc 1 246 0
	movzbl	PL_dirty(%rip), %eax	# PL_dirty, PL_dirty.15
	testb	%al, %al	# PL_dirty.15
	jne	.L12	#,
.LBB3:
	.loc 1 247 0
	movq	-88(%rbp), %rax	# cv, tmp124
	movq	(%rax), %rax	# cv_3(D)->sv_any, D.12144
	movq	128(%rax), %rax	# _10->xcv_outside, tmp125
	movq	%rax, -64(%rbp)	# tmp125, outercv
	.loc 1 248 0
	movq	-88(%rbp), %rax	# cv, tmp126
	movq	(%rax), %rax	# cv_3(D)->sv_any, D.12144
	movl	140(%rax), %eax	# _12->xcv_outside_seq, tmp127
	movl	%eax, -76(%rbp)	# tmp127, seq
	.loc 1 249 0
	movq	-72(%rbp), %rax	# padlist, tmp128
	movq	(%rax), %rax	# padlist_5->sv_any, D.12147
	movq	(%rax), %rax	# _14->xav_array, D.12148
	movq	(%rax), %rax	# MEM[(struct SV * *)_15], tmp129
	movq	%rax, -56(%rbp)	# tmp129, comppad_name
	.loc 1 250 0
	movq	-56(%rbp), %rax	# comppad_name, tmp130
	movq	(%rax), %rax	# comppad_name_16->sv_any, D.12147
	movq	(%rax), %rax	# _17->xav_array, tmp131
	movq	%rax, -48(%rbp)	# tmp131, namepad
	.loc 1 251 0
	movq	-72(%rbp), %rax	# padlist, tmp132
	movq	(%rax), %rax	# padlist_5->sv_any, D.12147
	movq	(%rax), %rax	# _19->xav_array, D.12148
	movq	8(%rax), %rax	# MEM[(struct SV * *)_20 + 8B], tmp133
	movq	%rax, -40(%rbp)	# tmp133, comppad
	.loc 1 252 0
	movq	-40(%rbp), %rax	# comppad, tmp134
	movq	(%rax), %rax	# comppad_21->sv_any, D.12147
	movq	(%rax), %rax	# _22->xav_array, tmp135
	movq	%rax, -32(%rbp)	# tmp135, curpad
	.loc 1 253 0
	movq	-56(%rbp), %rax	# comppad_name, tmp136
	movq	(%rax), %rax	# comppad_name_16->sv_any, D.12147
	movq	8(%rax), %rax	# _24->xav_fill, D.12149
	movl	%eax, -80(%rbp)	# D.12149, ix
	jmp	.L13	#
.L19:
.LBB4:
	.loc 1 254 0
	movl	-80(%rbp), %eax	# ix, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12150
	movq	-48(%rbp), %rax	# namepad, tmp138
	addq	%rdx, %rax	# D.12150, D.12151
	movq	(%rax), %rax	# *_29, tmp139
	movq	%rax, -24(%rbp)	# tmp139, namesv
	.loc 1 255 0
	cmpq	$0, -24(%rbp)	#, namesv
	je	.L14	#,
	.loc 1 255 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -24(%rbp)	#, namesv
	je	.L14	#,
	.loc 1 256 0 is_stmt 1
	movq	-24(%rbp), %rax	# namesv, tmp140
	movq	(%rax), %rax	# namesv_30->sv_any, D.12152
	movq	(%rax), %rax	# MEM[(struct XPV *)_31].xpv_pv, D.12148
	movzbl	(%rax), %eax	# *_32, D.12153
	cmpb	$38, %al	#, D.12153
	jne	.L14	#,
.LBB5:
	.loc 1 258 0
	movl	-80(%rbp), %eax	# ix, tmp141
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12150
	movq	-32(%rbp), %rax	# curpad, tmp142
	addq	%rdx, %rax	# D.12150, D.12151
	movq	(%rax), %rax	# *_36, tmp143
	movq	%rax, -16(%rbp)	# tmp143, innercv
	.loc 1 259 0
	movl	-80(%rbp), %eax	# ix, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12150
	movq	-48(%rbp), %rax	# namepad, tmp145
	addq	%rdx, %rax	# D.12150, D.12151
	movq	$0, (%rax)	#, *_40
	.loc 1 260 0
	movq	-24(%rbp), %rax	# namesv, tmp146
	movq	%rax, %rdi	# tmp146,
	call	Perl_sv_free	#
	.loc 1 262 0
	movq	-40(%rbp), %rax	# comppad, tmp147
	movl	8(%rax), %eax	# comppad_21->sv_refcnt, D.12146
	cmpl	$1, %eax	#, D.12146
	ja	.L15	#,
	.loc 1 263 0
	movl	-80(%rbp), %eax	# ix, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12150
	movq	-32(%rbp), %rax	# curpad, tmp149
	addq	%rdx, %rax	# D.12150, D.12151
	movq	$0, (%rax)	#, *_44
	.loc 1 264 0
	movq	-16(%rbp), %rax	# innercv, tmp150
	movq	%rax, %rdi	# tmp150,
	call	Perl_sv_free	#
.L15:
	.loc 1 266 0
	movq	-16(%rbp), %rax	# innercv, tmp151
	movl	8(%rax), %eax	# innercv_37->sv_refcnt, D.12146
	testl	%eax, %eax	# D.12146
	je	.L14	#,
	.loc 1 267 0
	movq	-16(%rbp), %rax	# innercv, tmp152
	movq	(%rax), %rax	# innercv_37->sv_any, D.12144
	movq	128(%rax), %rax	# _46->xcv_outside, D.12154
	cmpq	-88(%rbp), %rax	# cv, D.12154
	jne	.L14	#,
	.loc 1 271 0
	cmpq	$0, -64(%rbp)	#, outercv
	je	.L16	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# outercv, tmp153
	movl	8(%rax), %eax	# outercv_11->sv_refcnt, D.12146
	testl	%eax, %eax	# D.12146
	je	.L16	#,
	.loc 1 272 0 is_stmt 1
	movq	-16(%rbp), %rax	# innercv, tmp154
	movq	(%rax), %rax	# innercv_37->sv_any, D.12144
	movq	-16(%rbp), %rdx	# innercv, tmp155
	movq	(%rdx), %rdx	# innercv_37->sv_any, D.12144
	movzwl	136(%rdx), %edx	# _50->xcv_flags, D.12155
	andb	$251, %dh	#, D.12155
	movw	%dx, 136(%rax)	# D.12155, _49->xcv_flags
	.loc 1 273 0
	movq	-16(%rbp), %rax	# innercv, tmp156
	movq	(%rax), %rax	# innercv_37->sv_any, D.12144
	movq	-64(%rbp), %rdx	# outercv, tmp157
	movq	%rdx, 128(%rax)	# tmp157, _53->xcv_outside
	.loc 1 274 0
	movq	-16(%rbp), %rax	# innercv, tmp158
	movq	(%rax), %rax	# innercv_37->sv_any, D.12144
	movl	-76(%rbp), %edx	# seq, tmp159
	movl	%edx, 140(%rax)	# tmp159, _54->xcv_outside_seq
	.loc 1 275 0
	movq	-64(%rbp), %rax	# outercv, tmp160
	movq	%rax, PL_Sv(%rip)	# tmp160, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.17
	testq	%rax, %rax	# PL_Sv.17
	je	.L17	#,
	.loc 1 275 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.18
	movl	8(%rax), %edx	# PL_Sv.18_56->sv_refcnt, D.12146
	addl	$1, %edx	#, D.12146
	movl	%edx, 8(%rax)	# D.12146, PL_Sv.18_56->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.18_56->sv_refcnt, D.12146
	testl	%eax, %eax	# D.12146
	je	.L17	#,
	.loc 1 275 0 discriminator 3
	jmp	.L14	#
.L17:
	.loc 1 275 0 discriminator 2
	jmp	.L14	#
.L16:
	.loc 1 278 0 is_stmt 1
	movq	-16(%rbp), %rax	# innercv, tmp161
	movq	(%rax), %rax	# innercv_37->sv_any, D.12144
	movq	$0, 128(%rax)	#, _62->xcv_outside
.L14:
.LBE5:
.LBE4:
	.loc 1 253 0
	subl	$1, -80(%rbp)	#, ix
.L13:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cmpl	$0, -80(%rbp)	#, ix
	jg	.L19	#,
.L12:
.LBE3:
	.loc 1 287 0 is_stmt 1
	movq	-72(%rbp), %rax	# padlist, tmp162
	movq	(%rax), %rax	# padlist_5->sv_any, D.12147
	movq	8(%rax), %rax	# _64->xav_fill, D.12149
	movl	%eax, -80(%rbp)	# D.12149, ix
	.loc 1 288 0
	jmp	.L20	#
.L24:
.LBB6:
	.loc 1 289 0
	movq	-72(%rbp), %rax	# padlist, tmp163
	movq	(%rax), %rax	# padlist_5->sv_any, D.12147
	movq	(%rax), %rcx	# _67->xav_array, D.12148
	movl	-80(%rbp), %eax	# ix, ix.19
	leal	-1(%rax), %edx	#, tmp164
	movl	%edx, -80(%rbp)	# tmp164, ix
	cltq
	salq	$3, %rax	#, D.12150
	addq	%rcx, %rax	# D.12148, D.12151
	movq	(%rax), %rax	# *_73, tmp165
	movq	%rax, -8(%rbp)	# tmp165, sv
	.loc 1 290 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L21	#,
	.loc 1 291 0
	jmp	.L20	#
.L21:
	.loc 1 292 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.20
	cmpq	%rax, -8(%rbp)	# PL_comppad_name.20, sv
	jne	.L22	#,
	.loc 1 293 0
	movq	$0, PL_comppad_name(%rip)	#, PL_comppad_name
	jmp	.L23	#
.L22:
	.loc 1 294 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.21
	cmpq	%rax, -8(%rbp)	# PL_comppad.21, sv
	jne	.L23	#,
	.loc 1 295 0
	movq	$0, PL_comppad(%rip)	#, PL_comppad
	.loc 1 296 0
	movq	$0, PL_curpad(%rip)	#, PL_curpad
.L23:
	.loc 1 298 0
	movq	-8(%rbp), %rax	# sv, tmp166
	movq	%rax, %rdi	# tmp166,
	call	Perl_sv_free	#
.L20:
.LBE6:
	.loc 1 288 0 discriminator 1
	cmpl	$0, -80(%rbp)	#, ix
	jns	.L24	#,
	.loc 1 300 0
	movq	-88(%rbp), %rax	# cv, tmp167
	movq	(%rax), %rax	# cv_3(D)->sv_any, D.12144
	movq	120(%rax), %rax	# _77->xcv_padlist, D.12145
	movq	%rax, %rdi	# D.12145,
	call	Perl_sv_free	#
	.loc 1 301 0
	movq	-88(%rbp), %rax	# cv, tmp168
	movq	(%rax), %rax	# cv_3(D)->sv_any, D.12144
	movq	$0, 120(%rax)	#, _79->xcv_padlist
.L8:
	.loc 1 302 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_pad_undef, .-Perl_pad_undef
	.globl	Perl_pad_add_name
	.type	Perl_pad_add_name, @function
Perl_pad_add_name:
.LFB4:
	.loc 1 332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movq	%rsi, -32(%rbp)	# typestash, typestash
	movq	%rdx, -40(%rbp)	# ourstash, ourstash
	movl	%ecx, %eax	# fake, tmp112
	movb	%al, -44(%rbp)	# tmp112, fake
	.loc 1 333 0
	movl	$1024, %esi	#,
	movl	$9, %edi	#,
	call	Perl_pad_alloc	#
	movq	%rax, -16(%rbp)	# tmp113, offset
	.loc 1 334 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -8(%rbp)	# tmp114, namesv
	.loc 1 345 0
	cmpq	$0, -40(%rbp)	#, ourstash
	jne	.L26	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, typestash
	je	.L27	#,
	.loc 1 345 0 discriminator 3
	movl	$7, %eax	#, iftmp.23
	jmp	.L29	#
.L27:
	.loc 1 345 0 discriminator 4
	movl	$6, %eax	#, iftmp.23
	jmp	.L29	#
.L26:
	.loc 1 345 0 discriminator 2
	movl	$13, %eax	#, iftmp.22
.L29:
	.loc 1 345 0 discriminator 5
	movq	-8(%rbp), %rdx	# namesv, tmp115
	movl	%eax, %esi	# iftmp.22,
	movq	%rdx, %rdi	# tmp115,
	call	Perl_sv_upgrade	#
	.loc 1 346 0 is_stmt 1 discriminator 5
	movq	-24(%rbp), %rdx	# name, tmp116
	movq	-8(%rbp), %rax	# namesv, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	Perl_sv_setpv	#
	.loc 1 348 0 discriminator 5
	cmpq	$0, -32(%rbp)	#, typestash
	je	.L30	#,
	.loc 1 349 0
	movq	-8(%rbp), %rax	# namesv, tmp118
	movl	12(%rax), %eax	# namesv_4->sv_flags, D.12156
	orl	$1073741824, %eax	#, D.12156
	movl	%eax, %edx	# D.12156, D.12156
	movq	-8(%rbp), %rax	# namesv, tmp119
	movl	%edx, 12(%rax)	# D.12156, namesv_4->sv_flags
	.loc 1 350 0
	movq	-32(%rbp), %rax	# typestash, tmp120
	movq	%rax, PL_Sv(%rip)	# tmp120, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.25
	testq	%rax, %rax	# PL_Sv.25
	je	.L32	#,
	.loc 1 350 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.26
	movl	8(%rax), %edx	# PL_Sv.26_15->sv_refcnt, D.12156
	addl	$1, %edx	#, D.12156
	movl	%edx, 8(%rax)	# D.12156, PL_Sv.26_15->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.26_15->sv_refcnt, D.12156
	testl	%eax, %eax	# D.12156
	je	.L32	#,
	.loc 1 350 0
	nop
.L32:
	.loc 1 350 0 discriminator 4
	movq	-8(%rbp), %rax	# namesv, tmp121
	movq	(%rax), %rax	# namesv_4->sv_any, D.12157
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.27
	movq	%rdx, 48(%rax)	# PL_Sv.27, MEM[(struct XPVMG *)_21].xmg_stash
.L30:
	.loc 1 352 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, ourstash
	je	.L33	#,
	.loc 1 353 0
	movq	-8(%rbp), %rax	# namesv, tmp122
	movl	12(%rax), %eax	# namesv_4->sv_flags, D.12156
	orl	$-2147483648, %eax	#, D.12156
	movl	%eax, %edx	# D.12156, D.12156
	movq	-8(%rbp), %rax	# namesv, tmp123
	movl	%edx, 12(%rax)	# D.12156, namesv_4->sv_flags
	.loc 1 354 0
	movq	-40(%rbp), %rax	# ourstash, tmp124
	movq	%rax, PL_Sv(%rip)	# tmp124, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.29
	testq	%rax, %rax	# PL_Sv.29
	je	.L35	#,
	.loc 1 354 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.30
	movl	8(%rax), %edx	# PL_Sv.30_26->sv_refcnt, D.12156
	addl	$1, %edx	#, D.12156
	movl	%edx, 8(%rax)	# D.12156, PL_Sv.30_26->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.30_26->sv_refcnt, D.12156
	testl	%eax, %eax	# D.12156
	je	.L35	#,
	.loc 1 354 0
	nop
.L35:
	.loc 1 354 0 discriminator 4
	movq	-8(%rbp), %rax	# namesv, tmp125
	movq	(%rax), %rax	# namesv_4->sv_any, D.12157
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.31
	movq	%rdx, 80(%rax)	# PL_Sv.31, MEM[(struct XPVGV *)_32].xgv_stash
.L33:
	.loc 1 357 0 is_stmt 1
	movq	-16(%rbp), %rax	# offset, tmp126
	movl	%eax, %ecx	# tmp126, D.12158
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.32
	movq	-8(%rbp), %rdx	# namesv, tmp127
	movl	%ecx, %esi	# D.12158,
	movq	%rax, %rdi	# PL_comppad_name.32,
	call	Perl_av_store	#
	.loc 1 358 0
	cmpb	$0, -44(%rbp)	#, fake
	je	.L36	#,
	.loc 1 359 0
	movq	-8(%rbp), %rax	# namesv, tmp128
	movl	12(%rax), %eax	# namesv_4->sv_flags, D.12156
	orl	$1048576, %eax	#, D.12156
	movl	%eax, %edx	# D.12156, D.12156
	movq	-8(%rbp), %rax	# namesv, tmp129
	movl	%edx, 12(%rax)	# D.12156, namesv_4->sv_flags
	jmp	.L37	#
.L36:
	.loc 1 362 0
	movq	-8(%rbp), %rax	# namesv, tmp130
	movq	(%rax), %rdx	# namesv_4->sv_any, D.12157
	movabsq	$4741671816358002688, %rax	#, tmp131
	movq	%rax, 32(%rdx)	# tmp131, MEM[(struct XPVNV *)_39].xnv_nv
	.loc 1 363 0
	movq	-8(%rbp), %rax	# namesv, tmp132
	movq	(%rax), %rax	# namesv_4->sv_any, D.12157
	movq	$0, 24(%rax)	#, MEM[(struct XPVIV *)_40].xiv_iv
	.loc 1 365 0
	movl	PL_min_intro_pending(%rip), %eax	# PL_min_intro_pending, PL_min_intro_pending.33
	testl	%eax, %eax	# PL_min_intro_pending.33
	jne	.L38	#,
	.loc 1 366 0
	movq	-16(%rbp), %rax	# offset, tmp133
	movl	%eax, PL_min_intro_pending(%rip)	# PL_min_intro_pending.34, PL_min_intro_pending
.L38:
	.loc 1 367 0
	movq	-16(%rbp), %rax	# offset, tmp134
	movl	%eax, PL_max_intro_pending(%rip)	# PL_max_intro_pending.35, PL_max_intro_pending
	.loc 1 370 0
	movq	-24(%rbp), %rax	# name, tmp135
	movzbl	(%rax), %eax	# *name_11(D), D.12159
	cmpb	$64, %al	#, D.12159
	jne	.L39	#,
	.loc 1 371 0
	call	Perl_newAV	#
	movq	%rax, %rdx	#, D.12160
	movq	-16(%rbp), %rax	# offset, tmp136
	movl	%eax, %ecx	# tmp136, D.12158
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.36
	movl	%ecx, %esi	# D.12158,
	movq	%rax, %rdi	# PL_comppad.36,
	call	Perl_av_store	#
	jmp	.L40	#
.L39:
	.loc 1 372 0
	movq	-24(%rbp), %rax	# name, tmp137
	movzbl	(%rax), %eax	# *name_11(D), D.12159
	cmpb	$37, %al	#, D.12159
	jne	.L40	#,
	.loc 1 373 0
	call	Perl_newHV	#
	movq	%rax, %rdx	#, D.12161
	movq	-16(%rbp), %rax	# offset, tmp138
	movl	%eax, %ecx	# tmp138, D.12158
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.37
	movl	%ecx, %esi	# D.12158,
	movq	%rax, %rdi	# PL_comppad.37,
	call	Perl_av_store	#
.L40:
	.loc 1 374 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.38
	movq	-16(%rbp), %rdx	# offset, tmp139
	salq	$3, %rdx	#, D.12162
	addq	%rdx, %rax	# D.12162, D.12163
	movq	(%rax), %rax	# *_54, D.12164
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.39
	movq	-16(%rbp), %rcx	# offset, tmp140
	salq	$3, %rcx	#, D.12162
	addq	%rcx, %rdx	# D.12162, D.12163
	movq	(%rdx), %rdx	# *_58, D.12164
	movl	12(%rdx), %edx	# _59->sv_flags, D.12156
	orb	$5, %dh	#, D.12156
	movl	%edx, 12(%rax)	# D.12156, _55->sv_flags
.L37:
	.loc 1 377 0
	movq	-16(%rbp), %rax	# offset, D.12165
	.loc 1 378 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_pad_add_name, .-Perl_pad_add_name
	.section	.rodata
.LC1:
	.string	"panic: pad_alloc"
	.text
	.globl	Perl_pad_alloc
	.type	Perl_pad_alloc, @function
Perl_pad_alloc:
.LFB5:
	.loc 1 399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# optype, optype
	movl	%esi, -40(%rbp)	# tmptype, tmptype
	.loc 1 405 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.40
	movq	(%rax), %rax	# PL_comppad.40_3->sv_any, D.12166
	movq	(%rax), %rdx	# _4->xav_array, D.12167
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.41
	cmpq	%rax, %rdx	# PL_curpad.41, D.12167
	je	.L43	#,
	.loc 1 406 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L43:
	.loc 1 407 0
	movl	PL_pad_reset_pending(%rip), %eax	# PL_pad_reset_pending, PL_pad_reset_pending.42
	testl	%eax, %eax	# PL_pad_reset_pending.42
	je	.L44	#,
	.loc 1 408 0
	call	Perl_pad_reset	#
.L44:
	.loc 1 409 0
	movl	-40(%rbp), %eax	# tmptype, tmp102
	andl	$1024, %eax	#, D.12168
	testl	%eax, %eax	# D.12168
	je	.L45	#,
.L46:
	.loc 1 411 0 discriminator 1
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.43
	movq	(%rax), %rax	# PL_comppad.43_10->sv_any, D.12166
	movq	8(%rax), %rax	# _11->xav_fill, D.12169
	addl	$1, %eax	#, D.12170
	movl	%eax, %ecx	# D.12170, D.12171
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.44
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.12171,
	movq	%rax, %rdi	# PL_comppad.44,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_17, tmp103
	movq	%rax, -24(%rbp)	# tmp103, sv
	.loc 1 412 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp104
	movl	12(%rax), %eax	# sv_18->sv_flags, D.12168
	andl	$256, %eax	#, D.12168
	testl	%eax, %eax	# D.12168
	jne	.L46	#,
	.loc 1 413 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.45
	movq	(%rax), %rax	# PL_comppad.45_21->sv_any, D.12166
	movq	8(%rax), %rax	# _22->xav_fill, D.12169
	movl	%eax, -28(%rbp)	# D.12169, retval
	jmp	.L47	#
.L45:
.LBB7:
	.loc 1 416 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.46
	movq	(%rax), %rax	# PL_comppad_name.46_25->sv_any, D.12166
	movq	(%rax), %rax	# _26->xav_array, tmp105
	movq	%rax, -16(%rbp)	# tmp105, names
	.loc 1 417 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.47
	movq	(%rax), %rax	# PL_comppad_name.47_28->sv_any, D.12166
	movq	8(%rax), %rax	# _29->xav_fill, tmp106
	movq	%rax, -8(%rbp)	# tmp106, names_fill
.L51:
	.loc 1 425 0
	movl	PL_padix(%rip), %eax	# PL_padix, PL_padix.48
	addl	$1, %eax	#, PL_padix.49
	movl	%eax, PL_padix(%rip)	# PL_padix.49, PL_padix
	movl	PL_padix(%rip), %eax	# PL_padix, PL_padix.50
	cltq
	cmpq	-8(%rbp), %rax	# names_fill, D.12169
	jg	.L48	#,
	.loc 1 426 0 discriminator 1
	movl	PL_padix(%rip), %eax	# PL_padix, PL_padix.51
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12173
	movq	-16(%rbp), %rax	# names, tmp107
	addq	%rdx, %rax	# D.12173, D.12172
	movq	(%rax), %rax	# *_38, tmp108
	movq	%rax, -24(%rbp)	# tmp108, sv
	.loc 1 425 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, sv
	je	.L48	#,
	.loc 1 426 0
	cmpq	$PL_sv_undef, -24(%rbp)	#, sv
	je	.L48	#,
	.loc 1 427 0
	jmp	.L49	#
.L48:
	.loc 1 428 0
	movl	PL_padix(%rip), %ecx	# PL_padix, PL_padix.52
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.53
	movl	$1, %edx	#,
	movl	%ecx, %esi	# PL_padix.52,
	movq	%rax, %rdi	# PL_comppad.53,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_42, tmp109
	movq	%rax, -24(%rbp)	# tmp109, sv
	.loc 1 429 0
	movq	-24(%rbp), %rax	# sv, tmp110
	movl	12(%rax), %eax	# sv_43->sv_flags, D.12168
	andl	$1536, %eax	#, D.12168
	testl	%eax, %eax	# D.12168
	jne	.L49	#,
	.loc 1 431 0
	nop
	.loc 1 433 0
	movl	PL_padix(%rip), %eax	# PL_padix, tmp111
	movl	%eax, -28(%rbp)	# tmp111, retval
	jmp	.L47	#
.L49:
	.loc 1 432 0
	jmp	.L51	#
.L47:
.LBE7:
	.loc 1 435 0
	movq	-24(%rbp), %rax	# sv, tmp112
	movl	12(%rax), %eax	# sv_1->sv_flags, D.12168
	orl	-40(%rbp), %eax	# tmptype, D.12168
	movl	%eax, %edx	# D.12168, D.12168
	movq	-24(%rbp), %rax	# sv, tmp113
	movl	%edx, 12(%rax)	# D.12168, sv_1->sv_flags
	.loc 1 436 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.54
	movq	(%rax), %rax	# PL_comppad.54_49->sv_any, D.12166
	movq	(%rax), %rax	# _50->xav_array, PL_curpad.55
	movq	%rax, PL_curpad(%rip)	# PL_curpad.55, PL_curpad
	.loc 1 442 0
	movl	-28(%rbp), %eax	# retval, tmp114
	cltq
	.loc 1 443 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_pad_alloc, .-Perl_pad_alloc
	.section	.rodata
.LC2:
	.string	"&"
	.text
	.globl	Perl_pad_add_anon
	.type	Perl_pad_add_anon, @function
Perl_pad_add_anon:
.LFB6:
	.loc 1 455 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	movl	%esi, %eax	# op_type, tmp78
	movw	%ax, -28(%rbp)	# tmp78, op_type
	.loc 1 459 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -16(%rbp)	# tmp79, name
	.loc 1 460 0
	movq	-16(%rbp), %rax	# name, tmp80
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	Perl_sv_upgrade	#
	.loc 1 461 0
	movq	-16(%rbp), %rax	# name, tmp81
	movl	$1, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_setpvn	#
	.loc 1 462 0
	movq	-16(%rbp), %rax	# name, tmp82
	movq	(%rax), %rax	# name_1->sv_any, D.12176
	movq	$-1, 24(%rax)	#, MEM[(struct XPVIV *)_2].xiv_iv
	.loc 1 463 0
	movq	-16(%rbp), %rax	# name, tmp83
	movq	(%rax), %rdx	# name_1->sv_any, D.12176
	movabsq	$4607182418800017408, %rax	#, tmp84
	movq	%rax, 32(%rdx)	# tmp84, MEM[(struct XPVNV *)_3].xnv_nv
	.loc 1 464 0
	movzwl	-28(%rbp), %eax	# op_type, D.12177
	movl	$1024, %esi	#,
	movl	%eax, %edi	# D.12177,
	call	Perl_pad_alloc	#
	movq	%rax, -8(%rbp)	# tmp85, ix
	.loc 1 465 0
	movq	-8(%rbp), %rax	# ix, tmp86
	movl	%eax, %ecx	# tmp86, D.12177
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.56
	movq	-16(%rbp), %rdx	# name, tmp87
	movl	%ecx, %esi	# D.12177,
	movq	%rax, %rdi	# PL_comppad_name.56,
	call	Perl_av_store	#
	.loc 1 467 0
	movq	-8(%rbp), %rax	# ix, tmp88
	movl	%eax, %ecx	# tmp88, D.12177
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.57
	movq	-24(%rbp), %rdx	# sv, tmp89
	movl	%ecx, %esi	# D.12177,
	movq	%rax, %rdi	# PL_comppad.57,
	call	Perl_av_store	#
	.loc 1 468 0
	movq	-24(%rbp), %rax	# sv, tmp90
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.12178
	orb	$5, %ah	#, D.12178
	movl	%eax, %edx	# D.12178, D.12178
	movq	-24(%rbp), %rax	# sv, tmp91
	movl	%edx, 12(%rax)	# D.12178, sv_11(D)->sv_flags
	.loc 1 472 0
	movq	-24(%rbp), %rax	# sv, tmp92
	movq	(%rax), %rax	# MEM[(struct CV *)sv_11(D)].sv_any, D.12179
	movq	128(%rax), %rax	# _14->xcv_outside, D.12180
	testq	%rax, %rax	# D.12180
	je	.L54	#,
	.loc 1 474 0
	movq	-24(%rbp), %rax	# sv, tmp93
	movq	(%rax), %rax	# MEM[(struct CV *)sv_11(D)].sv_any, D.12179
	movq	-24(%rbp), %rdx	# sv, tmp94
	movq	(%rdx), %rdx	# MEM[(struct CV *)sv_11(D)].sv_any, D.12179
	movzwl	136(%rdx), %edx	# _17->xcv_flags, D.12181
	orb	$4, %dh	#, D.12181
	movw	%dx, 136(%rax)	# D.12181, _16->xcv_flags
	.loc 1 475 0
	movq	-24(%rbp), %rax	# sv, tmp95
	movq	(%rax), %rax	# MEM[(struct CV *)sv_11(D)].sv_any, D.12179
	movq	128(%rax), %rax	# _20->xcv_outside, D.12180
	movq	%rax, %rdi	# D.12180,
	call	Perl_sv_free	#
.L54:
	.loc 1 477 0
	movq	-8(%rbp), %rax	# ix, D.12182
	.loc 1 478 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_pad_add_anon, .-Perl_pad_add_anon
	.section	.rodata
.LC4:
	.string	"scope"
.LC5:
	.string	"statement"
.LC6:
	.string	"our"
.LC7:
	.string	"my"
	.align 8
.LC8:
	.string	"\"%s\" variable %s masks earlier declaration in same %s"
.LC9:
	.string	"\"our\" variable %s redeclared"
	.align 8
.LC10:
	.string	"\t(Did you mean \"local\" instead of \"our\"?)\n"
	.text
	.globl	Perl_pad_check_dup
	.type	Perl_pad_check_dup, @function
Perl_pad_check_dup:
.LFB7:
	.loc 1 498 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# name, name
	movl	%esi, %eax	# is_our, tmp123
	movq	%rdx, -56(%rbp)	# ourstash, ourstash
	movb	%al, -44(%rbp)	# tmp123, is_our
	.loc 1 503 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.58
	movq	80(%rax), %rax	# PL_curcop.58_6->cop_warnings, D.12184
	testq	%rax, %rax	# D.12184
	je	.L57	#,
	.loc 1 503 0 is_stmt 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.59
	movq	80(%rax), %rax	# PL_curcop.59_8->cop_warnings, D.12184
	cmpq	$32, %rax	#, D.12184
	je	.L57	#,
	.loc 1 503 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.60
	movq	80(%rax), %rax	# PL_curcop.60_10->cop_warnings, D.12184
	cmpq	$16, %rax	#, D.12184
	je	.L58	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.61
	movq	80(%rax), %rax	# PL_curcop.61_12->cop_warnings, D.12184
	movq	(%rax), %rax	# _13->sv_any, D.12185
	movq	(%rax), %rax	# MEM[(struct XPV *)_14].xpv_pv, D.12186
	addq	$3, %rax	#, D.12186
	movzbl	(%rax), %eax	# *_16, D.12187
	movsbl	%al, %eax	# D.12187, D.12188
	andl	$1, %eax	#, D.12188
	testl	%eax, %eax	# D.12188
	jne	.L58	#,
.L57:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.62
	movq	80(%rax), %rax	# PL_curcop.62_20->cop_warnings, D.12184
	testq	%rax, %rax	# D.12184
	jne	.L59	#,
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.63
	movzbl	%al, %eax	# PL_dowarn.63, D.12188
	andl	$1, %eax	#, D.12188
	testl	%eax, %eax	# D.12188
	je	.L59	#,
.L58:
	.loc 1 503 0 discriminator 2
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.64
	movq	(%rax), %rax	# PL_comppad_name.64_25->sv_any, D.12189
	movq	8(%rax), %rax	# _26->xav_fill, D.12190
	testq	%rax, %rax	# D.12190
	jns	.L60	#,
.L59:
	.loc 1 504 0 is_stmt 1
	jmp	.L56	#
.L60:
	.loc 1 506 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.65
	movq	(%rax), %rax	# PL_comppad_name.65_28->sv_any, D.12189
	movq	(%rax), %rax	# _29->xav_array, tmp124
	movq	%rax, -24(%rbp)	# tmp124, svp
	.loc 1 507 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.66
	movq	(%rax), %rax	# PL_comppad_name.66_31->sv_any, D.12189
	movq	8(%rax), %rax	# _32->xav_fill, D.12190
	movq	%rax, -16(%rbp)	# D.12190, top
	.loc 1 511 0
	movq	-16(%rbp), %rax	# top, tmp125
	movq	%rax, -32(%rbp)	# tmp125, off
	jmp	.L62	#
.L71:
	.loc 1 512 0
	movq	-32(%rbp), %rax	# off, tmp126
	leaq	0(,%rax,8), %rdx	#, D.12191
	movq	-24(%rbp), %rax	# svp, tmp127
	addq	%rdx, %rax	# D.12191, D.12192
	movq	(%rax), %rax	# *_39, tmp128
	movq	%rax, -8(%rbp)	# tmp128, sv
	cmpq	$0, -8(%rbp)	#, sv
	je	.L63	#,
	.loc 1 513 0
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L63	#,
	.loc 1 514 0
	movq	-8(%rbp), %rax	# sv, tmp129
	movl	12(%rax), %eax	# sv_40->sv_flags, D.12193
	andl	$1048576, %eax	#, D.12193
	testl	%eax, %eax	# D.12193
	jne	.L63	#,
	.loc 1 515 0
	movq	-8(%rbp), %rax	# sv, tmp130
	movq	(%rax), %rax	# sv_40->sv_any, D.12185
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_43].xiv_iv, D.12190
	cmpq	$999999999, %rax	#, D.12190
	je	.L64	#,
	.loc 1 515 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp131
	movq	(%rax), %rax	# sv_40->sv_any, D.12185
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_45].xiv_iv, D.12190
	testq	%rax, %rax	# D.12190
	jne	.L63	#,
.L64:
	.loc 1 516 0 is_stmt 1
	cmpb	$0, -44(%rbp)	#, is_our
	je	.L65	#,
	.loc 1 517 0
	movq	-8(%rbp), %rax	# sv, tmp132
	movl	12(%rax), %eax	# sv_40->sv_flags, D.12193
	testl	%eax, %eax	# D.12194
	jns	.L63	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp133
	movq	(%rax), %rax	# sv_40->sv_any, D.12185
	movq	80(%rax), %rax	# MEM[(struct XPVGV *)_50].xgv_stash, D.12195
	cmpq	-56(%rbp), %rax	# ourstash, D.12195
	jne	.L63	#,
.L65:
	.loc 1 518 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp134
	movq	(%rax), %rax	# sv_40->sv_any, D.12185
	movq	(%rax), %rdx	# MEM[(struct XPV *)_53].xpv_pv, D.12186
	movq	-40(%rbp), %rax	# name, tmp135
	movq	%rdx, %rsi	# D.12186,
	movq	%rax, %rdi	# tmp135,
	call	strcmp	#
	testl	%eax, %eax	# D.12188
	jne	.L63	#,
	.loc 1 524 0
	movq	-8(%rbp), %rax	# sv, tmp136
	movq	(%rax), %rax	# sv_40->sv_any, D.12185
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_57].xiv_iv, D.12190
	.loc 1 520 0
	cmpq	$999999999, %rax	#, D.12190
	jne	.L66	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edx	#, iftmp.67
	jmp	.L67	#
.L66:
	.loc 1 520 0 discriminator 2
	movl	$.LC5, %edx	#, iftmp.67
.L67:
	.loc 1 520 0 discriminator 3
	cmpb	$0, -44(%rbp)	#, is_our
	je	.L68	#,
	.loc 1 520 0 discriminator 4
	movl	$.LC6, %eax	#, iftmp.68
	jmp	.L69	#
.L68:
	.loc 1 520 0 discriminator 5
	movl	$.LC7, %eax	#, iftmp.68
.L69:
	.loc 1 520 0 discriminator 6
	movq	-40(%rbp), %rcx	# name, tmp137
	movq	%rdx, %r8	# iftmp.67,
	movq	%rax, %rdx	# iftmp.68,
	movl	$.LC8, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 525 0 is_stmt 1 discriminator 6
	subq	$1, -32(%rbp)	#, off
	.loc 1 526 0 discriminator 6
	jmp	.L70	#
.L63:
	.loc 1 511 0
	subq	$1, -32(%rbp)	#, off
.L62:
	.loc 1 511 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# off, tmp138
	movl	%eax, %edx	# tmp138, D.12188
	movl	PL_comppad_name_floor(%rip), %eax	# PL_comppad_name_floor, PL_comppad_name_floor.69
	cmpl	%eax, %edx	# PL_comppad_name_floor.69, D.12188
	jg	.L71	#,
.L70:
	.loc 1 530 0 is_stmt 1
	cmpb	$0, -44(%rbp)	#, is_our
	je	.L56	#,
.L74:
	.loc 1 532 0
	movq	-32(%rbp), %rax	# off, tmp139
	leaq	0(,%rax,8), %rdx	#, D.12191
	movq	-24(%rbp), %rax	# svp, tmp140
	addq	%rdx, %rax	# D.12191, D.12192
	movq	(%rax), %rax	# *_66, tmp141
	movq	%rax, -8(%rbp)	# tmp141, sv
	cmpq	$0, -8(%rbp)	#, sv
	je	.L72	#,
	.loc 1 533 0
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L72	#,
	.loc 1 534 0
	movq	-8(%rbp), %rax	# sv, tmp142
	movl	12(%rax), %eax	# sv_67->sv_flags, D.12193
	andl	$1048576, %eax	#, D.12193
	testl	%eax, %eax	# D.12193
	jne	.L72	#,
	.loc 1 535 0
	movq	-8(%rbp), %rax	# sv, tmp143
	movq	(%rax), %rax	# sv_67->sv_any, D.12185
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_70].xiv_iv, D.12190
	cmpq	$999999999, %rax	#, D.12190
	je	.L73	#,
	.loc 1 535 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp144
	movq	(%rax), %rax	# sv_67->sv_any, D.12185
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_72].xiv_iv, D.12190
	testq	%rax, %rax	# D.12190
	jne	.L72	#,
.L73:
	.loc 1 536 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp145
	movl	12(%rax), %eax	# sv_67->sv_flags, D.12193
	testl	%eax, %eax	# D.12194
	jns	.L72	#,
	.loc 1 536 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp146
	movq	(%rax), %rax	# sv_67->sv_any, D.12185
	movq	80(%rax), %rax	# MEM[(struct XPVGV *)_76].xgv_stash, D.12195
	cmpq	-56(%rbp), %rax	# ourstash, D.12195
	jne	.L72	#,
	.loc 1 537 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp147
	movq	(%rax), %rax	# sv_67->sv_any, D.12185
	movq	(%rax), %rdx	# MEM[(struct XPV *)_78].xpv_pv, D.12186
	movq	-40(%rbp), %rax	# name, tmp148
	movq	%rdx, %rsi	# D.12186,
	movq	%rax, %rdi	# tmp148,
	call	strcmp	#
	testl	%eax, %eax	# D.12188
	jne	.L72	#,
	.loc 1 539 0
	movq	-40(%rbp), %rax	# name, tmp149
	movq	%rax, %rdx	# tmp149,
	movl	$.LC9, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 541 0
	movl	$.LC10, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 543 0
	jmp	.L56	#
.L72:
	.loc 1 545 0
	movq	-32(%rbp), %rax	# off, off.70
	leaq	-1(%rax), %rdx	#, tmp150
	movq	%rdx, -32(%rbp)	# tmp150, off
	testq	%rax, %rax	# off.70
	jne	.L74	#,
.L56:
	.loc 1 547 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_pad_check_dup, .-Perl_pad_check_dup
	.globl	Perl_pad_findmy
	.type	Perl_pad_findmy, @function
Perl_pad_findmy:
.LFB8:
	.loc 1 565 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# name, name
	.loc 1 567 0
	movl	$0, -28(%rbp)	#, fake_off
	.loc 1 568 0
	movl	$0, -24(%rbp)	#, our_off
	.loc 1 570 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.71
	movq	(%rax), %rax	# PL_comppad_name.71_9->sv_any, D.12204
	movq	(%rax), %rax	# _10->xav_array, tmp87
	movq	%rax, -16(%rbp)	# tmp87, svp
	.loc 1 571 0
	movl	PL_cop_seqmax(%rip), %eax	# PL_cop_seqmax, tmp88
	movl	%eax, -20(%rbp)	# tmp88, seq
	.loc 1 590 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.72
	movq	(%rax), %rax	# PL_comppad_name.72_13->sv_any, D.12204
	movq	8(%rax), %rax	# _14->xav_fill, D.12205
	movl	%eax, -32(%rbp)	# D.12205, off
	jmp	.L76	#
.L83:
	.loc 1 591 0
	movl	-32(%rbp), %eax	# off, tmp89
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12206
	movq	-16(%rbp), %rax	# svp, tmp90
	addq	%rdx, %rax	# D.12206, D.12207
	movq	(%rax), %rax	# *_19, tmp91
	movq	%rax, -8(%rbp)	# tmp91, sv
	.loc 1 592 0
	cmpq	$0, -8(%rbp)	#, sv
	je	.L77	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L77	#,
	movq	-8(%rbp), %rax	# sv, tmp92
	movq	(%rax), %rax	# sv_20->sv_any, D.12208
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, D.12209
	movq	-40(%rbp), %rdx	# name, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.12209,
	call	strcmp	#
	testl	%eax, %eax	# D.12210
	je	.L78	#,
.L77:
	.loc 1 593 0 is_stmt 1
	jmp	.L79	#
.L78:
	.loc 1 594 0
	movq	-8(%rbp), %rax	# sv, tmp94
	movl	12(%rax), %eax	# sv_20->sv_flags, D.12211
	andl	$1048576, %eax	#, D.12211
	testl	%eax, %eax	# D.12211
	je	.L80	#,
	.loc 1 596 0
	movl	-32(%rbp), %eax	# off, tmp95
	movl	%eax, -28(%rbp)	# tmp95, fake_off
	.loc 1 597 0
	jmp	.L79	#
.L80:
	.loc 1 600 0
	movq	-8(%rbp), %rax	# sv, tmp96
	movq	(%rax), %rax	# sv_20->sv_any, D.12208
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_28].xnv_nv, D.12212
	movq	%rax, -48(%rbp)	# D.12212, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	Perl_cast_ulong	#
	cmpl	-20(%rbp), %eax	# seq, D.12211
	jae	.L81	#,
	.loc 1 601 0
	movq	-8(%rbp), %rax	# sv, tmp97
	movq	(%rax), %rax	# sv_20->sv_any, D.12208
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_31].xiv_iv, D.12205
	cmpl	-20(%rbp), %eax	# seq, D.12211
	jb	.L81	#,
	.loc 1 602 0
	movl	-32(%rbp), %eax	# off, tmp98
	cltq
	jmp	.L82	#
.L81:
	.loc 1 603 0
	movq	-8(%rbp), %rax	# sv, tmp99
	movl	12(%rax), %eax	# sv_20->sv_flags, D.12211
	testl	%eax, %eax	# D.12213
	jns	.L79	#,
	.loc 1 604 0
	movq	-8(%rbp), %rax	# sv, tmp100
	movq	(%rax), %rax	# sv_20->sv_any, D.12208
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_37].xnv_nv, D.12212
	movq	%rax, -48(%rbp)	# D.12212, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	Perl_cast_ulong	#
	cmpl	$999999999, %eax	#, D.12211
	jne	.L79	#,
	.loc 1 609 0
	movl	-32(%rbp), %eax	# off, tmp101
	movl	%eax, -24(%rbp)	# tmp101, our_off
.L79:
	.loc 1 590 0
	subl	$1, -32(%rbp)	#, off
.L76:
	.loc 1 590 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, off
	jg	.L83	#,
	.loc 1 613 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, fake_off
	je	.L84	#,
	.loc 1 614 0
	movl	-28(%rbp), %eax	# fake_off, tmp102
	cltq
	jmp	.L82	#
.L84:
	.loc 1 617 0
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.73
	movq	-40(%rbp), %rax	# name, tmp103
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	S_pad_findlex	#
	movl	%eax, -32(%rbp)	# D.12206, off
	.loc 1 618 0
	cmpl	$0, -32(%rbp)	#, off
	je	.L85	#,
	.loc 1 619 0
	movl	-32(%rbp), %eax	# off, tmp104
	cltq
	jmp	.L82	#
.L85:
	.loc 1 620 0
	cmpl	$0, -24(%rbp)	#, our_off
	je	.L86	#,
	.loc 1 621 0
	movl	-24(%rbp), %eax	# our_off, tmp105
	cltq
	jmp	.L82	#
.L86:
	.loc 1 622 0
	movq	$-1, %rax	#, D.12203
.L82:
	.loc 1 624 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_pad_findmy, .-Perl_pad_findmy
	.section	.rodata
	.align 8
.LC11:
	.string	"Variable \"%s\" may be unavailable"
	.align 8
.LC12:
	.string	"Variable \"%s\" will not stay shared"
	.text
	.type	S_pad_findlex, @function
S_pad_findlex:
.LFB9:
	.loc 1 642 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# name, name
	movq	%rsi, -128(%rbp)	# newoff, newoff
	movq	%rdx, -136(%rbp)	# innercv, innercv
	.loc 1 644 0
	movl	$0, -112(%rbp)	#, off
	.loc 1 659 0
	movq	-136(%rbp), %rax	# innercv, tmp226
	movq	(%rax), %rax	# innercv_21(D)->sv_any, D.12216
	movl	140(%rax), %eax	# _22->xcv_outside_seq, tmp227
	movl	%eax, -108(%rbp)	# tmp227, seq
	.loc 1 660 0
	movq	-136(%rbp), %rax	# innercv, tmp228
	movq	(%rax), %rax	# innercv_21(D)->sv_any, D.12216
	movq	128(%rax), %rax	# _24->xcv_outside, tmp229
	movq	%rax, -64(%rbp)	# tmp229, startcv
	.loc 1 662 0
	movq	-64(%rbp), %rax	# startcv, tmp230
	movq	%rax, -96(%rbp)	# tmp230, cv
	jmp	.L88	#
.L102:
.LBB8:
	.loc 1 665 0
	movl	$0, -100(%rbp)	#, fake_off
	.loc 1 672 0
	movq	-96(%rbp), %rax	# cv, tmp231
	movq	(%rax), %rax	# cv_2->sv_any, D.12216
	movq	120(%rax), %rax	# _28->xcv_padlist, tmp232
	movq	%rax, -56(%rbp)	# tmp232, curlist
	.loc 1 673 0
	cmpq	$0, -56(%rbp)	#, curlist
	jne	.L89	#,
	.loc 1 674 0
	jmp	.L90	#
.L89:
	.loc 1 675 0
	movq	-56(%rbp), %rax	# curlist, tmp233
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp233,
	call	Perl_av_fetch	#
	movq	%rax, -48(%rbp)	# tmp234, svp
	.loc 1 676 0
	cmpq	$0, -48(%rbp)	#, svp
	je	.L91	#,
	.loc 1 676 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# svp, tmp235
	movq	(%rax), %rax	# *svp_30, D.12217
	cmpq	$PL_sv_undef, %rax	#, D.12217
	jne	.L92	#,
.L91:
	.loc 1 677 0 is_stmt 1
	jmp	.L90	#
.L92:
	.loc 1 678 0
	movq	-48(%rbp), %rax	# svp, tmp236
	movq	(%rax), %rax	# *svp_30, tmp237
	movq	%rax, -40(%rbp)	# tmp237, curname
	.loc 1 679 0
	movq	-40(%rbp), %rax	# curname, tmp238
	movq	(%rax), %rax	# curname_32->sv_any, D.12218
	movq	(%rax), %rax	# _33->xav_array, tmp239
	movq	%rax, -48(%rbp)	# tmp239, svp
	.loc 1 681 0
	movq	-96(%rbp), %rax	# cv, tmp240
	movq	(%rax), %rax	# cv_2->sv_any, D.12216
	movq	112(%rax), %rax	# _35->xcv_depth, D.12219
	movl	%eax, -104(%rbp)	# D.12219, depth
	.loc 1 682 0
	movq	-40(%rbp), %rax	# curname, tmp241
	movq	(%rax), %rax	# curname_32->sv_any, D.12218
	movq	8(%rax), %rax	# _38->xav_fill, D.12219
	movl	%eax, -112(%rbp)	# D.12219, off
	jmp	.L93	#
.L99:
	.loc 1 683 0
	movl	-112(%rbp), %eax	# off, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12220
	movq	-48(%rbp), %rax	# svp, tmp243
	addq	%rdx, %rax	# D.12220, D.12221
	movq	(%rax), %rax	# *_43, tmp244
	movq	%rax, -88(%rbp)	# tmp244, sv
	.loc 1 684 0
	cmpq	$0, -88(%rbp)	#, sv
	je	.L94	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -88(%rbp)	#, sv
	je	.L94	#,
	movq	-88(%rbp), %rax	# sv, tmp245
	movq	(%rax), %rax	# sv_44->sv_any, D.12222
	movq	(%rax), %rax	# MEM[(struct XPV *)_45].xpv_pv, D.12223
	movq	-120(%rbp), %rdx	# name, tmp246
	movq	%rdx, %rsi	# tmp246,
	movq	%rax, %rdi	# D.12223,
	call	strcmp	#
	testl	%eax, %eax	# D.12224
	je	.L95	#,
.L94:
	.loc 1 685 0 is_stmt 1
	jmp	.L96	#
.L95:
	.loc 1 686 0
	movq	-88(%rbp), %rax	# sv, tmp247
	movl	12(%rax), %eax	# sv_44->sv_flags, D.12225
	andl	$1048576, %eax	#, D.12225
	testl	%eax, %eax	# D.12225
	je	.L97	#,
	.loc 1 688 0
	movl	-112(%rbp), %eax	# off, tmp248
	movl	%eax, -100(%rbp)	# tmp248, fake_off
	.loc 1 689 0
	jmp	.L96	#
.L97:
	.loc 1 692 0
	movq	-88(%rbp), %rax	# sv, tmp249
	movq	(%rax), %rax	# sv_44->sv_any, D.12222
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_52].xnv_nv, D.12226
	movq	%rax, -144(%rbp)	# D.12226, %sfp
	movsd	-144(%rbp), %xmm0	# %sfp,
	call	Perl_cast_ulong	#
	cmpl	-108(%rbp), %eax	# seq, D.12225
	jae	.L96	#,
	.loc 1 693 0
	movq	-88(%rbp), %rax	# sv, tmp250
	movq	(%rax), %rax	# sv_44->sv_any, D.12222
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_55].xiv_iv, D.12219
	cmpl	-108(%rbp), %eax	# seq, D.12225
	jb	.L96	#,
	.loc 1 694 0
	cmpq	$0, -128(%rbp)	#, newoff
	je	.L98	#,
	.loc 1 694 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, depth
	jne	.L98	#,
.L96:
	.loc 1 682 0 is_stmt 1
	subl	$1, -112(%rbp)	#, off
.L93:
	.loc 1 682 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, off
	jg	.L99	#,
	.loc 1 701 0 is_stmt 1
	cmpl	$0, -100(%rbp)	#, fake_off
	je	.L90	#,
	.loc 1 702 0
	cmpq	$0, -128(%rbp)	#, newoff
	je	.L100	#,
	.loc 1 702 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, depth
	jne	.L100	#,
	.loc 1 703 0 is_stmt 1
	movl	$0, %eax	#, D.12215
	jmp	.L101	#
.L100:
	.loc 1 704 0
	movl	-100(%rbp), %eax	# fake_off, tmp251
	movl	%eax, -112(%rbp)	# tmp251, off
	.loc 1 705 0
	movl	-112(%rbp), %eax	# off, tmp252
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12220
	movq	-48(%rbp), %rax	# svp, tmp253
	addq	%rdx, %rax	# D.12220, D.12221
	movq	(%rax), %rax	# *_64, tmp254
	movq	%rax, -88(%rbp)	# tmp254, sv
	.loc 1 706 0
	jmp	.L98	#
.L90:
.LBE8:
	.loc 1 662 0
	movq	-96(%rbp), %rax	# cv, tmp255
	movq	(%rax), %rax	# cv_2->sv_any, D.12216
	movl	140(%rax), %eax	# _219->xcv_outside_seq, tmp256
	movl	%eax, -108(%rbp)	# tmp256, seq
	movq	-96(%rbp), %rax	# cv, tmp257
	movq	(%rax), %rax	# cv_2->sv_any, D.12216
	movq	128(%rax), %rax	# _221->xcv_outside, tmp258
	movq	%rax, -96(%rbp)	# tmp258, cv
.L88:
	.loc 1 662 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, cv
	jne	.L102	#,
	.loc 1 709 0 is_stmt 1
	movl	$0, %eax	#, D.12215
	jmp	.L101	#
.L98:
	.loc 1 713 0
	cmpl	$0, -104(%rbp)	#, depth
	jne	.L103	#,
	.loc 1 714 0
	movl	$1, -104(%rbp)	#, depth
.L103:
	.loc 1 716 0
	movq	-56(%rbp), %rax	# curlist, tmp259
	movq	(%rax), %rax	# curlist_29->sv_any, D.12218
	movq	(%rax), %rax	# _67->xav_array, D.12223
	movl	-104(%rbp), %edx	# depth, tmp260
	movslq	%edx, %rdx	# tmp260, D.12220
	salq	$3, %rdx	#, D.12220
	addq	%rdx, %rax	# D.12220, D.12221
	movq	(%rax), %rax	# *_71, tmp261
	movq	%rax, -32(%rbp)	# tmp261, oldpad
	.loc 1 717 0
	movl	-112(%rbp), %ecx	# off, tmp262
	movq	-32(%rbp), %rax	# oldpad, tmp263
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp262,
	movq	%rax, %rdi	# tmp263,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_73, tmp264
	movq	%rax, -80(%rbp)	# tmp264, oldsv
	.loc 1 740 0
	cmpq	$0, -128(%rbp)	#, newoff
	jne	.L104	#,
	.loc 1 744 0
	movq	-88(%rbp), %rax	# sv, tmp265
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12225
	.loc 1 741 0
	testl	%eax, %eax	# D.12227
	jns	.L105	#,
	.loc 1 744 0
	movq	-88(%rbp), %rax	# sv, tmp266
	movq	(%rax), %rax	# sv_5->sv_any, D.12222
	.loc 1 741 0
	movq	80(%rax), %rdx	# MEM[(struct XPVGV *)_77].xgv_stash, iftmp.74
	jmp	.L106	#
.L105:
	.loc 1 741 0 is_stmt 0 discriminator 1
	movl	$0, %edx	#, iftmp.74
.L106:
	.loc 1 743 0 is_stmt 1 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp267
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12225
	andl	$1073741824, %eax	#, D.12225
	.loc 1 741 0 discriminator 2
	testl	%eax, %eax	# D.12225
	je	.L107	#,
	.loc 1 743 0
	movq	-88(%rbp), %rax	# sv, tmp268
	movq	(%rax), %rax	# sv_5->sv_any, D.12222
	.loc 1 741 0
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_82].xmg_stash, iftmp.75
	jmp	.L108	#
.L107:
	.loc 1 741 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.75
.L108:
	.loc 1 742 0 is_stmt 1
	movq	-88(%rbp), %rcx	# sv, tmp269
	movq	(%rcx), %rcx	# sv_5->sv_any, D.12222
	.loc 1 741 0
	movq	(%rcx), %rdi	# MEM[(struct XPV *)_85].xpv_pv, D.12223
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# iftmp.75,
	call	Perl_pad_add_name	#
	movq	%rax, -128(%rbp)	# tmp270, newoff
	.loc 1 748 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.76
	movq	(%rax), %rax	# PL_compcv.76_88->sv_any, D.12216
	movzwl	136(%rax), %eax	# _89->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$4, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L109	#,
	.loc 1 748 0 is_stmt 0 discriminator 1
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.77
	movl	12(%rax), %eax	# PL_compcv.77_93->sv_flags, D.12225
	movzbl	%al, %eax	# D.12225, D.12225
	cmpl	$14, %eax	#, D.12225
	jne	.L110	#,
.L109:
	.loc 1 750 0 is_stmt 1
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.78
	movq	(%rax), %rax	# PL_compcv.78_127->sv_any, D.12216
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.79
	movq	(%rdx), %rdx	# PL_compcv.79_129->sv_any, D.12216
	movzwl	136(%rdx), %edx	# _130->xcv_flags, D.12228
	orl	$1, %edx	#, D.12228
	movw	%dx, 136(%rax)	# D.12228, _128->xcv_flags
	.loc 1 751 0
	movq	-96(%rbp), %rax	# cv, tmp271
	cmpq	-64(%rbp), %rax	# startcv, tmp271
	jne	.L111	#,
	.loc 1 752 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.80
	movq	(%rax), %rax	# PL_compcv.80_133->sv_any, D.12216
	movzwl	136(%rax), %eax	# _134->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$4, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	je	.L113	#,
	.loc 1 753 0
	movq	$0, -80(%rbp)	#, oldsv
	.loc 1 751 0
	jmp	.L104	#
.L111:
.LBB9:
	.loc 1 757 0
	movq	-64(%rbp), %rax	# startcv, tmp272
	movq	%rax, -72(%rbp)	# tmp272, bcv
	jmp	.L114	#
.L126:
	.loc 1 761 0
	movq	-72(%rbp), %rax	# bcv, tmp273
	movq	(%rax), %rax	# bcv_13->sv_any, D.12216
	movzwl	136(%rax), %eax	# _144->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$4, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	je	.L115	#,
.LBB10:
	.loc 1 764 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, tmp274
	movq	%rax, -24(%rbp)	# tmp274, ocomppad_name
	.loc 1 765 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, tmp275
	movq	%rax, -16(%rbp)	# tmp275, ocomppad
	.loc 1 766 0
	movq	-72(%rbp), %rax	# bcv, tmp276
	movq	(%rax), %rax	# bcv_13->sv_any, D.12216
	movq	120(%rax), %rax	# _150->xcv_padlist, tmp277
	movq	%rax, -8(%rbp)	# tmp277, padlist
	.loc 1 767 0
	movq	-8(%rbp), %rax	# padlist, tmp278
	movq	(%rax), %rax	# padlist_151->sv_any, D.12218
	movq	(%rax), %rax	# _152->xav_array, D.12223
	movq	(%rax), %rax	# MEM[(struct SV * *)_153], PL_comppad_name.81
	movq	%rax, PL_comppad_name(%rip)	# PL_comppad_name.81, PL_comppad_name
	.loc 1 768 0
	movq	-8(%rbp), %rax	# padlist, tmp279
	movq	(%rax), %rax	# padlist_151->sv_any, D.12218
	movq	(%rax), %rax	# _155->xav_array, D.12223
	movq	8(%rax), %rax	# MEM[(struct SV * *)_156 + 8B], PL_comppad.82
	movq	%rax, PL_comppad(%rip)	# PL_comppad.82, PL_comppad
	.loc 1 769 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.83
	movq	(%rax), %rax	# PL_comppad.83_158->sv_any, D.12218
	movq	(%rax), %rax	# _159->xav_array, PL_curpad.84
	movq	%rax, PL_curpad(%rip)	# PL_curpad.84, PL_curpad
	.loc 1 774 0
	movq	-88(%rbp), %rax	# sv, tmp280
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12225
	.loc 1 770 0
	testl	%eax, %eax	# D.12227
	jns	.L116	#,
	.loc 1 775 0
	movq	-88(%rbp), %rax	# sv, tmp281
	movq	(%rax), %rax	# sv_5->sv_any, D.12222
	.loc 1 770 0
	movq	80(%rax), %rdx	# MEM[(struct XPVGV *)_163].xgv_stash, iftmp.85
	jmp	.L117	#
.L116:
	.loc 1 770 0 is_stmt 0 discriminator 1
	movl	$0, %edx	#, iftmp.85
.L117:
	.loc 1 772 0 is_stmt 1 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp282
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12225
	andl	$1073741824, %eax	#, D.12225
	.loc 1 770 0 discriminator 2
	testl	%eax, %eax	# D.12225
	je	.L118	#,
	.loc 1 773 0
	movq	-88(%rbp), %rax	# sv, tmp283
	movq	(%rax), %rax	# sv_5->sv_any, D.12222
	.loc 1 770 0
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_168].xmg_stash, iftmp.86
	jmp	.L119	#
.L118:
	.loc 1 770 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.86
.L119:
	.loc 1 771 0 is_stmt 1
	movq	-88(%rbp), %rcx	# sv, tmp284
	movq	(%rcx), %rcx	# sv_5->sv_any, D.12222
	.loc 1 770 0
	movq	(%rcx), %rdi	# MEM[(struct XPV *)_171].xpv_pv, D.12223
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# iftmp.86,
	call	Perl_pad_add_name	#
	.loc 1 779 0
	movq	-24(%rbp), %rax	# ocomppad_name, tmp285
	movq	%rax, PL_comppad_name(%rip)	# tmp285, PL_comppad_name
	.loc 1 780 0
	movq	-16(%rbp), %rax	# ocomppad, tmp286
	movq	%rax, PL_comppad(%rip)	# tmp286, PL_comppad
	.loc 1 782 0
	cmpq	$0, -16(%rbp)	#, ocomppad
	je	.L120	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ocomppad, tmp287
	movq	(%rax), %rax	# ocomppad_149->sv_any, D.12218
	movq	(%rax), %rax	# _173->xav_array, iftmp.87
	jmp	.L121	#
.L120:
	.loc 1 782 0 discriminator 2
	movl	$0, %eax	#, iftmp.87
.L121:
	.loc 1 781 0 is_stmt 1 discriminator 1
	movq	%rax, PL_curpad(%rip)	# iftmp.87, PL_curpad
	.loc 1 783 0 discriminator 1
	movq	-72(%rbp), %rax	# bcv, tmp288
	movq	(%rax), %rax	# bcv_13->sv_any, D.12216
	movq	-72(%rbp), %rdx	# bcv, tmp289
	movq	(%rdx), %rdx	# bcv_13->sv_any, D.12216
	movzwl	136(%rdx), %edx	# _177->xcv_flags, D.12228
	orl	$1, %edx	#, D.12228
	movw	%dx, 136(%rax)	# D.12228, _176->xcv_flags
.LBE10:
	.loc 1 759 0 discriminator 1
	movq	-72(%rbp), %rax	# bcv, tmp293
	movq	(%rax), %rax	# bcv_13->sv_any, D.12216
	movq	128(%rax), %rax	# _180->xcv_outside, tmp294
	movq	%rax, -72(%rbp)	# tmp294, bcv
	jmp	.L114	#
.L115:
	.loc 1 786 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.88
	movq	80(%rax), %rax	# PL_curcop.88_182->cop_warnings, D.12217
	testq	%rax, %rax	# D.12217
	je	.L123	#,
	.loc 1 786 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.89
	movq	80(%rax), %rax	# PL_curcop.89_184->cop_warnings, D.12217
	cmpq	$32, %rax	#, D.12217
	je	.L123	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.90
	movq	80(%rax), %rax	# PL_curcop.90_186->cop_warnings, D.12217
	cmpq	$16, %rax	#, D.12217
	je	.L124	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.91
	movq	80(%rax), %rax	# PL_curcop.91_188->cop_warnings, D.12217
	movq	(%rax), %rax	# _189->sv_any, D.12222
	movq	(%rax), %rax	# MEM[(struct XPV *)_190].xpv_pv, D.12223
	movzbl	(%rax), %eax	# *_191, D.12229
	movsbl	%al, %eax	# D.12229, D.12224
	andl	$4, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L124	#,
.L123:
	.loc 1 786 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.92
	movq	80(%rax), %rax	# PL_curcop.92_195->cop_warnings, D.12217
	testq	%rax, %rax	# D.12217
	jne	.L125	#,
	.loc 1 786 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.93
	movzbl	%al, %eax	# PL_dowarn.93, D.12224
	andl	$1, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	je	.L125	#,
.L124:
	.loc 1 787 0 is_stmt 1
	movq	-72(%rbp), %rax	# bcv, tmp290
	movq	(%rax), %rax	# bcv_13->sv_any, D.12216
	movzwl	136(%rax), %eax	# _200->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$16, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L125	#,
	.loc 1 787 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# cv, tmp291
	movq	(%rax), %rax	# cv_2->sv_any, D.12216
	movzwl	136(%rax), %eax	# _204->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$16, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L125	#,
	.loc 1 789 0 is_stmt 1
	movq	-120(%rbp), %rax	# name, tmp292
	movq	%rax, %rdx	# tmp292,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 793 0
	jmp	.L113	#
.L125:
	jmp	.L113	#
.L114:
	.loc 1 757 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, bcv
	je	.L113	#,
	.loc 1 758 0
	movq	-72(%rbp), %rax	# bcv, tmp295
	cmpq	-96(%rbp), %rax	# cv, tmp295
	je	.L113	#,
	.loc 1 758 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# bcv, tmp296
	movq	(%rax), %rax	# bcv_13->sv_any, D.12216
	movzwl	136(%rax), %eax	# _140->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$1, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	je	.L126	#,
.L113:
.LBE9:
	.loc 1 751 0 is_stmt 1
	jmp	.L104	#
.L110:
	.loc 1 798 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.94
	movq	(%rax), %rax	# PL_compcv.94_96->sv_any, D.12216
	movzwl	136(%rax), %eax	# _97->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$16, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L104	#,
	.loc 1 799 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.95
	movq	80(%rax), %rax	# PL_curcop.95_101->cop_warnings, D.12217
	testq	%rax, %rax	# D.12217
	je	.L127	#,
	.loc 1 799 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.96
	movq	80(%rax), %rax	# PL_curcop.96_103->cop_warnings, D.12217
	cmpq	$32, %rax	#, D.12217
	je	.L127	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.97
	movq	80(%rax), %rax	# PL_curcop.97_105->cop_warnings, D.12217
	cmpq	$16, %rax	#, D.12217
	je	.L128	#,
	.loc 1 799 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.98
	movq	80(%rax), %rax	# PL_curcop.98_107->cop_warnings, D.12217
	movq	(%rax), %rax	# _108->sv_any, D.12222
	movq	(%rax), %rax	# MEM[(struct XPV *)_109].xpv_pv, D.12223
	movzbl	(%rax), %eax	# *_110, D.12229
	movsbl	%al, %eax	# D.12229, D.12224
	andl	$4, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L128	#,
.L127:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.99
	movq	80(%rax), %rax	# PL_curcop.99_114->cop_warnings, D.12217
	testq	%rax, %rax	# D.12217
	jne	.L104	#,
	.loc 1 799 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.100
	movzbl	%al, %eax	# PL_dowarn.100, D.12224
	andl	$1, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	je	.L104	#,
.L128:
	movq	-88(%rbp), %rax	# sv, tmp297
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12225
	andl	$1048576, %eax	#, D.12225
	testl	%eax, %eax	# D.12225
	jne	.L104	#,
	movq	-96(%rbp), %rax	# cv, tmp298
	movq	(%rax), %rax	# cv_2->sv_any, D.12216
	movzwl	136(%rax), %eax	# _121->xcv_flags, D.12228
	movzwl	%ax, %eax	# D.12228, D.12224
	andl	$16, %eax	#, D.12224
	testl	%eax, %eax	# D.12224
	jne	.L104	#,
	.loc 1 800 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp299
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12225
	testl	%eax, %eax	# D.12227
	js	.L104	#,
	.loc 1 802 0
	movq	-120(%rbp), %rax	# name, tmp300
	movq	%rax, %rdx	# tmp300,
	movl	$.LC12, %esi	#,
	movl	$1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L104:
	.loc 1 807 0
	movq	-80(%rbp), %rax	# oldsv, tmp301
	movq	%rax, PL_Sv(%rip)	# tmp301, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.102
	testq	%rax, %rax	# PL_Sv.102
	je	.L130	#,
	.loc 1 807 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.103
	movl	8(%rax), %edx	# PL_Sv.103_209->sv_refcnt, D.12225
	addl	$1, %edx	#, D.12225
	movl	%edx, 8(%rax)	# D.12225, PL_Sv.103_209->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.103_209->sv_refcnt, D.12225
	testl	%eax, %eax	# D.12225
	je	.L130	#,
	.loc 1 807 0
	nop
.L130:
	.loc 1 807 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.104
	movq	-128(%rbp), %rax	# newoff, tmp302
	movl	%eax, %ecx	# tmp302, D.12224
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.105
	movl	%ecx, %esi	# D.12224,
	movq	%rax, %rdi	# PL_comppad.105,
	call	Perl_av_store	#
	.loc 1 814 0 is_stmt 1 discriminator 4
	movq	-128(%rbp), %rax	# newoff, D.12215
.L101:
	.loc 1 815 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	S_pad_findlex, .-S_pad_findlex
	.section	.rodata
.LC13:
	.string	"panic: pad_sv po"
	.text
	.globl	Perl_pad_sv
	.type	Perl_pad_sv, @function
Perl_pad_sv:
.LFB10:
	.loc 1 830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# po, po
	.loc 1 834 0
	cmpq	$0, -8(%rbp)	#, po
	jne	.L132	#,
	.loc 1 835 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L132:
	.loc 1 841 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.106
	movq	-8(%rbp), %rdx	# po, tmp64
	salq	$3, %rdx	#, D.12232
	addq	%rdx, %rax	# D.12232, D.12233
	movq	(%rax), %rax	# *_4, D.12234
	.loc 1 842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_pad_sv, .-Perl_pad_sv
	.globl	Perl_pad_block_start
	.type	Perl_pad_block_start, @function
Perl_pad_block_start:
.LFB11:
	.loc 1 886 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# full, full
	.loc 1 888 0
	movl	$PL_comppad_name_floor, %edi	#,
	call	Perl_save_I32	#
	.loc 1 889 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.107
	movq	(%rax), %rax	# PL_comppad_name.107_1->sv_any, D.12236
	movq	8(%rax), %rax	# _2->xav_fill, D.12237
	movl	%eax, PL_comppad_name_floor(%rip)	# PL_comppad_name_floor.108, PL_comppad_name_floor
	.loc 1 890 0
	cmpl	$0, -4(%rbp)	#, full
	je	.L135	#,
	.loc 1 891 0
	movl	PL_comppad_name_floor(%rip), %eax	# PL_comppad_name_floor, PL_comppad_name_floor.109
	movl	%eax, PL_comppad_name_fill(%rip)	# PL_comppad_name_floor.109, PL_comppad_name_fill
.L135:
	.loc 1 892 0
	movl	PL_comppad_name_floor(%rip), %eax	# PL_comppad_name_floor, PL_comppad_name_floor.110
	testl	%eax, %eax	# PL_comppad_name_floor.110
	jns	.L136	#,
	.loc 1 893 0
	movl	$0, PL_comppad_name_floor(%rip)	#, PL_comppad_name_floor
.L136:
	.loc 1 894 0
	movl	$PL_min_intro_pending, %edi	#,
	call	Perl_save_I32	#
	.loc 1 895 0
	movl	$PL_max_intro_pending, %edi	#,
	call	Perl_save_I32	#
	.loc 1 896 0
	movl	$0, PL_min_intro_pending(%rip)	#, PL_min_intro_pending
	.loc 1 897 0
	movl	$PL_comppad_name_fill, %edi	#,
	call	Perl_save_I32	#
	.loc 1 898 0
	movl	$PL_padix_floor, %edi	#,
	call	Perl_save_I32	#
	.loc 1 899 0
	movl	PL_padix(%rip), %eax	# PL_padix, PL_padix.111
	movl	%eax, PL_padix_floor(%rip)	# PL_padix.111, PL_padix_floor
	.loc 1 900 0
	movl	$0, PL_pad_reset_pending(%rip)	#, PL_pad_reset_pending
	.loc 1 901 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_pad_block_start, .-Perl_pad_block_start
	.globl	Perl_intro_my
	.type	Perl_intro_my, @function
Perl_intro_my:
.LFB12:
	.loc 1 914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 920 0
	movl	PL_min_intro_pending(%rip), %eax	# PL_min_intro_pending, PL_min_intro_pending.112
	testl	%eax, %eax	# PL_min_intro_pending.112
	jne	.L138	#,
	.loc 1 921 0
	movl	PL_cop_seqmax(%rip), %eax	# PL_cop_seqmax, D.12238
	jmp	.L139	#
.L138:
	.loc 1 923 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.113
	movq	(%rax), %rax	# PL_comppad_name.113_5->sv_any, D.12239
	movq	(%rax), %rax	# _6->xav_array, tmp80
	movq	%rax, -16(%rbp)	# tmp80, svp
	.loc 1 924 0
	movl	PL_min_intro_pending(%rip), %eax	# PL_min_intro_pending, tmp81
	movl	%eax, -20(%rbp)	# tmp81, i
	jmp	.L140	#
.L144:
	.loc 1 925 0
	movl	-20(%rbp), %eax	# i, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12240
	movq	-16(%rbp), %rax	# svp, tmp83
	addq	%rdx, %rax	# D.12240, D.12241
	movq	(%rax), %rax	# *_12, tmp84
	movq	%rax, -8(%rbp)	# tmp84, sv
	cmpq	$0, -8(%rbp)	#, sv
	je	.L141	#,
	.loc 1 925 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L141	#,
	.loc 1 926 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp85
	movl	12(%rax), %eax	# sv_13->sv_flags, D.12242
	andl	$1048576, %eax	#, D.12242
	testl	%eax, %eax	# D.12242
	jne	.L141	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp86
	movq	(%rax), %rax	# sv_13->sv_any, D.12243
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_16].xiv_iv, D.12244
	testq	%rax, %rax	# D.12244
	jne	.L141	#,
	.loc 1 928 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp87
	movq	(%rax), %rax	# sv_13->sv_any, D.12243
	movq	$999999999, 24(%rax)	#, MEM[(struct XPVIV *)_18].xiv_iv
	.loc 1 929 0
	movq	-8(%rbp), %rax	# sv, tmp88
	movq	(%rax), %rcx	# sv_13->sv_any, D.12243
	movl	PL_cop_seqmax(%rip), %eax	# PL_cop_seqmax, PL_cop_seqmax.114
	movl	%eax, %eax	# PL_cop_seqmax.114, tmp89
	testq	%rax, %rax	# tmp89
	js	.L142	#,
	cvtsi2sdq	%rax, %xmm0	# tmp89, D.12245
	jmp	.L143	#
.L142:
	movq	%rax, %rdx	# tmp89, tmp91
	shrq	%rdx	# tmp91
	andl	$1, %eax	#, tmp92
	orq	%rax, %rdx	# tmp92, tmp91
	cvtsi2sdq	%rdx, %xmm0	# tmp91, tmp90
	addsd	%xmm0, %xmm0	# tmp90, D.12245
.L143:
	movsd	%xmm0, 32(%rcx)	# D.12245, MEM[(struct XPVNV *)_19].xnv_nv
.L141:
	.loc 1 924 0
	addl	$1, -20(%rbp)	#, i
.L140:
	.loc 1 924 0 is_stmt 0 discriminator 1
	movl	PL_max_intro_pending(%rip), %eax	# PL_max_intro_pending, PL_max_intro_pending.115
	cmpl	%eax, -20(%rbp)	# PL_max_intro_pending.115, i
	jle	.L144	#,
	.loc 1 937 0 is_stmt 1
	movl	$0, PL_min_intro_pending(%rip)	#, PL_min_intro_pending
	.loc 1 938 0
	movl	PL_max_intro_pending(%rip), %eax	# PL_max_intro_pending, PL_max_intro_pending.116
	movl	%eax, PL_comppad_name_fill(%rip)	# PL_max_intro_pending.116, PL_comppad_name_fill
	.loc 1 942 0
	movl	PL_cop_seqmax(%rip), %eax	# PL_cop_seqmax, PL_cop_seqmax.117
	leal	1(%rax), %edx	#, PL_cop_seqmax.119
	movl	%edx, PL_cop_seqmax(%rip)	# PL_cop_seqmax.119, PL_cop_seqmax
.L139:
	.loc 1 943 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_intro_my, .-Perl_intro_my
	.section	.rodata
.LC14:
	.string	"%_ never introduced"
	.text
	.globl	Perl_pad_leavemy
	.type	Perl_pad_leavemy, @function
Perl_pad_leavemy:
.LFB13:
	.loc 1 956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 958 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.120
	movq	(%rax), %rax	# PL_comppad_name.120_3->sv_any, D.12246
	movq	(%rax), %rax	# _4->xav_array, tmp100
	movq	%rax, -16(%rbp)	# tmp100, svp
	.loc 1 961 0
	movl	$0, PL_pad_reset_pending(%rip)	#, PL_pad_reset_pending
	.loc 1 964 0
	movl	PL_min_intro_pending(%rip), %eax	# PL_min_intro_pending, PL_min_intro_pending.121
	testl	%eax, %eax	# PL_min_intro_pending.121
	je	.L146	#,
	.loc 1 964 0 is_stmt 0 discriminator 1
	movl	PL_comppad_name_fill(%rip), %edx	# PL_comppad_name_fill, PL_comppad_name_fill.122
	movl	PL_min_intro_pending(%rip), %eax	# PL_min_intro_pending, PL_min_intro_pending.123
	cmpl	%eax, %edx	# PL_min_intro_pending.123, PL_comppad_name_fill.122
	jge	.L146	#,
	.loc 1 965 0 is_stmt 1
	movl	PL_max_intro_pending(%rip), %eax	# PL_max_intro_pending, tmp101
	movl	%eax, -20(%rbp)	# tmp101, off
	jmp	.L147	#
.L150:
	.loc 1 966 0
	movl	-20(%rbp), %eax	# off, tmp102
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12247
	movq	-16(%rbp), %rax	# svp, tmp103
	addq	%rdx, %rax	# D.12247, D.12248
	movq	(%rax), %rax	# *_13, tmp104
	movq	%rax, -8(%rbp)	# tmp104, sv
	cmpq	$0, -8(%rbp)	#, sv
	je	.L148	#,
	.loc 1 966 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L148	#,
	.loc 1 967 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_14->sv_flags, D.12249
	andl	$1048576, %eax	#, D.12249
	testl	%eax, %eax	# D.12249
	jne	.L148	#,
	.loc 1 967 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.124
	movq	80(%rax), %rax	# PL_curcop.124_17->cop_warnings, D.12250
	testq	%rax, %rax	# D.12250
	je	.L149	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.125
	movq	80(%rax), %rax	# PL_curcop.125_19->cop_warnings, D.12250
	cmpq	$16, %rax	#, D.12250
	je	.L149	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.126
	movq	80(%rax), %rax	# PL_curcop.126_21->cop_warnings, D.12250
	cmpq	$32, %rax	#, D.12250
	je	.L148	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.127
	movq	80(%rax), %rax	# PL_curcop.127_23->cop_warnings, D.12250
	movq	(%rax), %rax	# _24->sv_any, D.12251
	movq	(%rax), %rax	# MEM[(struct XPV *)_25].xpv_pv, D.12252
	addq	$6, %rax	#, D.12252
	movzbl	(%rax), %eax	# *_27, D.12253
	movsbl	%al, %eax	# D.12253, D.12254
	andl	$1, %eax	#, D.12254
	testl	%eax, %eax	# D.12254
	je	.L148	#,
.L149:
	.loc 1 968 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp106
	movq	%rax, %rdx	# tmp106,
	movl	$.LC14, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L148:
	.loc 1 965 0
	subl	$1, -20(%rbp)	#, off
.L147:
	.loc 1 965 0 is_stmt 0 discriminator 1
	movl	PL_min_intro_pending(%rip), %eax	# PL_min_intro_pending, PL_min_intro_pending.128
	cmpl	%eax, -20(%rbp)	# PL_min_intro_pending.128, off
	jge	.L150	#,
.L146:
	.loc 1 973 0 is_stmt 1
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.129
	movq	(%rax), %rax	# PL_comppad_name.129_32->sv_any, D.12246
	movq	8(%rax), %rax	# _33->xav_fill, D.12255
	movl	%eax, -20(%rbp)	# D.12255, off
	jmp	.L151	#
.L153:
	.loc 1 974 0
	movl	-20(%rbp), %eax	# off, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12247
	movq	-16(%rbp), %rax	# svp, tmp108
	addq	%rdx, %rax	# D.12247, D.12248
	movq	(%rax), %rax	# *_39, tmp109
	movq	%rax, -8(%rbp)	# tmp109, sv
	cmpq	$0, -8(%rbp)	#, sv
	je	.L152	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L152	#,
	.loc 1 975 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp110
	movl	12(%rax), %eax	# sv_40->sv_flags, D.12249
	andl	$1048576, %eax	#, D.12249
	testl	%eax, %eax	# D.12249
	jne	.L152	#,
	.loc 1 975 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp111
	movq	(%rax), %rax	# sv_40->sv_any, D.12251
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_43].xiv_iv, D.12255
	cmpq	$999999999, %rax	#, D.12255
	jne	.L152	#,
	.loc 1 977 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp112
	movq	(%rax), %rax	# sv_40->sv_any, D.12251
	movl	PL_cop_seqmax(%rip), %edx	# PL_cop_seqmax, PL_cop_seqmax.130
	movl	%edx, %edx	# PL_cop_seqmax.130, D.12255
	movq	%rdx, 24(%rax)	# D.12255, MEM[(struct XPVIV *)_45].xiv_iv
.L152:
	.loc 1 973 0
	subl	$1, -20(%rbp)	#, off
.L151:
	.loc 1 973 0 is_stmt 0 discriminator 1
	movl	PL_comppad_name_fill(%rip), %eax	# PL_comppad_name_fill, PL_comppad_name_fill.131
	cmpl	%eax, -20(%rbp)	# PL_comppad_name_fill.131, off
	jg	.L153	#,
	.loc 1 985 0 is_stmt 1
	movl	PL_cop_seqmax(%rip), %eax	# PL_cop_seqmax, PL_cop_seqmax.132
	addl	$1, %eax	#, PL_cop_seqmax.133
	movl	%eax, PL_cop_seqmax(%rip)	# PL_cop_seqmax.133, PL_cop_seqmax
	.loc 1 988 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_pad_leavemy, .-Perl_pad_leavemy
	.section	.rodata
.LC15:
	.string	"panic: pad_swipe curpad"
.LC16:
	.string	"panic: pad_swipe po"
	.text
	.globl	Perl_pad_swipe
	.type	Perl_pad_swipe, @function
Perl_pad_swipe:
.LFB14:
	.loc 1 1002 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# po, po
	movl	%esi, %eax	# refadjust, tmp101
	movb	%al, -28(%rbp)	# tmp101, refadjust
	.loc 1 1004 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.134
	testq	%rax, %rax	# PL_curpad.134
	jne	.L155	#,
	.loc 1 1005 0
	jmp	.L154	#
.L155:
	.loc 1 1006 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.135
	movq	(%rax), %rax	# PL_comppad.135_2->sv_any, D.12257
	movq	(%rax), %rdx	# _3->xav_array, D.12258
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.136
	cmpq	%rax, %rdx	# PL_curpad.136, D.12258
	je	.L157	#,
	.loc 1 1007 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L157:
	.loc 1 1008 0
	cmpq	$0, -24(%rbp)	#, po
	jne	.L158	#,
	.loc 1 1009 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L158:
	.loc 1 1015 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.137
	movq	-24(%rbp), %rdx	# po, tmp102
	salq	$3, %rdx	#, D.12259
	addq	%rdx, %rax	# D.12259, D.12260
	movq	(%rax), %rax	# *_9, D.12261
	testq	%rax, %rax	# D.12261
	je	.L159	#,
	.loc 1 1016 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.138
	movq	-24(%rbp), %rdx	# po, tmp103
	salq	$3, %rdx	#, D.12259
	addq	%rdx, %rax	# D.12259, D.12260
	movq	(%rax), %rax	# *_13, D.12261
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.139
	movq	-24(%rbp), %rcx	# po, tmp104
	salq	$3, %rcx	#, D.12259
	addq	%rcx, %rdx	# D.12259, D.12260
	movq	(%rdx), %rdx	# *_17, D.12261
	movl	12(%rdx), %edx	# _18->sv_flags, D.12262
	andb	$253, %dh	#, D.12262
	movl	%edx, 12(%rax)	# D.12262, _14->sv_flags
.L159:
	.loc 1 1017 0
	cmpb	$0, -28(%rbp)	#, refadjust
	je	.L160	#,
	.loc 1 1018 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.140
	movq	-24(%rbp), %rdx	# po, tmp105
	salq	$3, %rdx	#, D.12259
	addq	%rdx, %rax	# D.12259, D.12260
	movq	(%rax), %rax	# *_24, D.12261
	movq	%rax, %rdi	# D.12261,
	call	Perl_sv_free	#
.L160:
	.loc 1 1020 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.141
	movq	-24(%rbp), %rdx	# po, tmp106
	salq	$3, %rdx	#, D.12259
	leaq	(%rax,%rdx), %rbx	#, D.12260
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, (%rbx)	# D.12261, *_28
	.loc 1 1021 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.142
	movq	-24(%rbp), %rdx	# po, tmp107
	salq	$3, %rdx	#, D.12259
	addq	%rdx, %rax	# D.12259, D.12260
	movq	(%rax), %rax	# *_32, D.12261
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.143
	movq	-24(%rbp), %rcx	# po, tmp108
	salq	$3, %rcx	#, D.12259
	addq	%rcx, %rdx	# D.12259, D.12260
	movq	(%rdx), %rdx	# *_36, D.12261
	movl	12(%rdx), %edx	# _37->sv_flags, D.12262
	orb	$3, %dh	#, D.12262
	movl	%edx, 12(%rax)	# D.12262, _33->sv_flags
	.loc 1 1022 0
	movq	-24(%rbp), %rax	# po, tmp109
	movl	%eax, %edx	# tmp109, D.12263
	movl	PL_padix(%rip), %eax	# PL_padix, PL_padix.144
	cmpl	%eax, %edx	# PL_padix.144, D.12263
	jge	.L154	#,
	.loc 1 1023 0
	movq	-24(%rbp), %rax	# po, tmp110
	subl	$1, %eax	#, D.12264
	movl	%eax, PL_padix(%rip)	# PL_padix.145, PL_padix
.L154:
	.loc 1 1024 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_pad_swipe, .-Perl_pad_swipe
	.globl	Perl_pad_reset
	.type	Perl_pad_reset, @function
Perl_pad_reset:
.LFB15:
	.loc 1 1043 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1065 0
	movl	$0, PL_pad_reset_pending(%rip)	#, PL_pad_reset_pending
	.loc 1 1066 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_pad_reset, .-Perl_pad_reset
	.globl	Perl_pad_tidy
	.type	Perl_pad_tidy, @function
Perl_pad_tidy:
.LFB16:
	.loc 1 1087 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# type, type
	.loc 1 1092 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.146
	movq	(%rax), %rax	# PL_comppad_name.146_4->sv_any, D.12267
	movq	8(%rax), %rdx	# _5->xav_fill, D.12268
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.147
	movq	(%rax), %rax	# PL_comppad.147_7->sv_any, D.12267
	movq	8(%rax), %rax	# _8->xav_fill, D.12268
	cmpq	%rax, %rdx	# D.12268, D.12268
	jge	.L163	#,
	.loc 1 1093 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.148
	movq	(%rax), %rax	# PL_comppad.148_10->sv_any, D.12267
	movq	8(%rax), %rax	# _11->xav_fill, D.12268
	movl	%eax, %ecx	# D.12268, D.12269
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.149
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12269,
	movq	%rax, %rdi	# PL_comppad_name.149,
	call	Perl_av_store	#
.L163:
	.loc 1 1095 0
	cmpl	$1, -36(%rbp)	#, type
	jne	.L164	#,
.LBB11:
	.loc 1 1096 0
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.150
	movq	(%rax), %rax	# PL_comppad_name.150_16->sv_any, D.12267
	movq	(%rax), %rax	# _17->xav_array, tmp180
	movq	%rax, -24(%rbp)	# tmp180, namep
	.loc 1 1097 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.151
	movq	(%rax), %rax	# PL_comppad.151_19->sv_any, D.12267
	movq	8(%rax), %rax	# _20->xav_fill, D.12268
	movq	%rax, -32(%rbp)	# D.12268, ix
	jmp	.L165	#
.L170:
.LBB12:
	.loc 1 1100 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.152
	movq	-32(%rbp), %rdx	# ix, tmp181
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_25, D.12272
	cmpq	$PL_sv_undef, %rax	#, D.12272
	je	.L166	#,
	.loc 1 1100 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.153
	movq	-32(%rbp), %rdx	# ix, tmp182
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_29, D.12272
	cmpq	$PL_sv_yes, %rax	#, D.12272
	je	.L166	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.154
	movq	-32(%rbp), %rdx	# ix, tmp183
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_33, D.12272
	cmpq	$PL_sv_no, %rax	#, D.12272
	je	.L166	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.155
	movq	-32(%rbp), %rdx	# ix, tmp184
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_37, D.12272
	cmpq	$PL_sv_placeholder, %rax	#, D.12272
	jne	.L167	#,
.L166:
	.loc 1 1101 0 is_stmt 1
	jmp	.L168	#
.L167:
	.loc 1 1107 0
	movq	-32(%rbp), %rax	# ix, tmp185
	leaq	0(,%rax,8), %rdx	#, D.12270
	movq	-24(%rbp), %rax	# namep, tmp186
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_40, tmp187
	movq	%rax, -16(%rbp)	# tmp187, namesv
	cmpq	$0, -16(%rbp)	#, namesv
	je	.L169	#,
	.loc 1 1107 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -16(%rbp)	#, namesv
	je	.L169	#,
	.loc 1 1109 0 is_stmt 1 discriminator 1
	movq	-16(%rbp), %rax	# namesv, tmp188
	movl	12(%rax), %eax	# namesv_41->sv_flags, D.12273
	andl	$1048576, %eax	#, D.12273
	.loc 1 1107 0 discriminator 1
	testl	%eax, %eax	# D.12273
	jne	.L168	#,
	.loc 1 1110 0
	movq	-16(%rbp), %rax	# namesv, tmp189
	movq	(%rax), %rax	# namesv_41->sv_any, D.12274
	movq	(%rax), %rax	# MEM[(struct XPV *)_44].xpv_pv, D.12275
	movzbl	(%rax), %eax	# *_45, D.12276
	.loc 1 1109 0
	cmpb	$38, %al	#, D.12276
	je	.L168	#,
.L169:
	.loc 1 1112 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.156
	movq	-32(%rbp), %rdx	# ix, tmp190
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_49, D.12272
	movq	%rax, %rdi	# D.12272,
	call	Perl_sv_free	#
	.loc 1 1113 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.157
	movq	-32(%rbp), %rdx	# ix, tmp191
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	$0, (%rax)	#, *_53
.L168:
.LBE12:
	.loc 1 1097 0
	subq	$1, -32(%rbp)	#, ix
.L165:
	.loc 1 1097 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ix
	jne	.L170	#,
.LBE11:
	jmp	.L171	#
.L164:
	.loc 1 1117 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, type
	jne	.L171	#,
.LBB13:
	.loc 1 1119 0
	call	Perl_newAV	#
	movq	%rax, -8(%rbp)	# tmp192, av
	.loc 1 1120 0
	movq	-8(%rbp), %rax	# av, tmp193
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp193,
	call	Perl_av_extend	#
	.loc 1 1121 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.158
	movq	-8(%rbp), %rdx	# av, tmp194
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_comppad.158,
	call	Perl_av_store	#
	.loc 1 1122 0
	movq	-8(%rbp), %rax	# av, tmp195
	movq	(%rax), %rax	# av_55->sv_any, D.12267
	movb	$2, 72(%rax)	#, _57->xav_flags
.L171:
.LBE13:
	.loc 1 1127 0
	cmpl	$0, -36(%rbp)	#, type
	jne	.L172	#,
	.loc 1 1128 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.159
	movq	(%rax), %rax	# PL_comppad.159_58->sv_any, D.12267
	movq	8(%rax), %rax	# _59->xav_fill, D.12268
	movq	%rax, -32(%rbp)	# D.12268, ix
	jmp	.L173	#
.L177:
	.loc 1 1129 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.160
	movq	-32(%rbp), %rdx	# ix, tmp196
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_64, D.12272
	cmpq	$PL_sv_undef, %rax	#, D.12272
	je	.L174	#,
	.loc 1 1129 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.161
	movq	-32(%rbp), %rdx	# ix, tmp197
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_68, D.12272
	cmpq	$PL_sv_yes, %rax	#, D.12272
	je	.L174	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.162
	movq	-32(%rbp), %rdx	# ix, tmp198
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_72, D.12272
	cmpq	$PL_sv_no, %rax	#, D.12272
	je	.L174	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.163
	movq	-32(%rbp), %rdx	# ix, tmp199
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_76, D.12272
	cmpq	$PL_sv_placeholder, %rax	#, D.12272
	jne	.L175	#,
.L174:
	.loc 1 1130 0 is_stmt 1
	jmp	.L176	#
.L175:
	.loc 1 1131 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.164
	movq	-32(%rbp), %rdx	# ix, tmp200
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_80, D.12272
	movl	12(%rax), %eax	# _81->sv_flags, D.12273
	andl	$1024, %eax	#, D.12273
	testl	%eax, %eax	# D.12273
	jne	.L176	#,
	.loc 1 1132 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.165
	movq	-32(%rbp), %rdx	# ix, tmp201
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_86, D.12272
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.166
	movq	-32(%rbp), %rcx	# ix, tmp202
	salq	$3, %rcx	#, D.12270
	addq	%rcx, %rdx	# D.12270, D.12271
	movq	(%rdx), %rdx	# *_90, D.12272
	movl	12(%rdx), %edx	# _91->sv_flags, D.12273
	orb	$3, %dh	#, D.12273
	movl	%edx, 12(%rax)	# D.12273, _87->sv_flags
.L176:
	.loc 1 1128 0
	subq	$1, -32(%rbp)	#, ix
.L173:
	.loc 1 1128 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ix
	jne	.L177	#,
	jmp	.L178	#
.L172:
	.loc 1 1135 0 is_stmt 1
	cmpl	$2, -36(%rbp)	#, type
	jne	.L178	#,
	.loc 1 1136 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.167
	movq	(%rax), %rax	# PL_comppad.167_95->sv_any, D.12267
	movq	8(%rax), %rax	# _96->xav_fill, D.12268
	movq	%rax, -32(%rbp)	# D.12268, ix
	jmp	.L179	#
.L181:
	.loc 1 1137 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.168
	movq	-32(%rbp), %rdx	# ix, tmp203
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_101, D.12272
	movl	12(%rax), %eax	# _102->sv_flags, D.12273
	andl	$1024, %eax	#, D.12273
	testl	%eax, %eax	# D.12273
	jne	.L180	#,
	.loc 1 1137 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.169
	movq	-32(%rbp), %rdx	# ix, tmp204
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_107, D.12272
	cmpq	$PL_sv_undef, %rax	#, D.12272
	je	.L180	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.170
	movq	-32(%rbp), %rdx	# ix, tmp205
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_111, D.12272
	cmpq	$PL_sv_yes, %rax	#, D.12272
	je	.L180	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.171
	movq	-32(%rbp), %rdx	# ix, tmp206
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_115, D.12272
	cmpq	$PL_sv_no, %rax	#, D.12272
	je	.L180	#,
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.172
	movq	-32(%rbp), %rdx	# ix, tmp207
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_119, D.12272
	cmpq	$PL_sv_placeholder, %rax	#, D.12272
	je	.L180	#,
	.loc 1 1138 0 is_stmt 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.173
	movq	-32(%rbp), %rdx	# ix, tmp208
	salq	$3, %rdx	#, D.12270
	addq	%rdx, %rax	# D.12270, D.12271
	movq	(%rax), %rax	# *_123, D.12272
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.174
	movq	-32(%rbp), %rcx	# ix, tmp209
	salq	$3, %rcx	#, D.12270
	addq	%rcx, %rdx	# D.12270, D.12271
	movq	(%rdx), %rdx	# *_127, D.12272
	movl	12(%rdx), %edx	# _128->sv_flags, D.12273
	orb	$3, %dh	#, D.12273
	movl	%edx, 12(%rax)	# D.12273, _124->sv_flags
.L180:
	.loc 1 1136 0
	subq	$1, -32(%rbp)	#, ix
.L179:
	.loc 1 1136 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ix
	jne	.L181	#,
.L178:
	.loc 1 1141 0 is_stmt 1
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.175
	movq	(%rax), %rax	# PL_comppad.175_132->sv_any, D.12267
	movq	(%rax), %rax	# _133->xav_array, PL_curpad.176
	movq	%rax, PL_curpad(%rip)	# PL_curpad.176, PL_curpad
	.loc 1 1142 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_pad_tidy, .-Perl_pad_tidy
	.section	.rodata
.LC17:
	.string	"panic: pad_free curpad"
.LC18:
	.string	"panic: pad_free po"
	.text
	.globl	Perl_pad_free
	.type	Perl_pad_free, @function
Perl_pad_free:
.LFB17:
	.loc 1 1156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# po, po
	.loc 1 1158 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.177
	testq	%rax, %rax	# PL_curpad.177
	jne	.L183	#,
	.loc 1 1159 0
	jmp	.L182	#
.L183:
	.loc 1 1160 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.178
	movq	(%rax), %rax	# PL_comppad.178_2->sv_any, D.12277
	movq	(%rax), %rdx	# _3->xav_array, D.12278
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.179
	cmpq	%rax, %rdx	# PL_curpad.179, D.12278
	je	.L185	#,
	.loc 1 1161 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L185:
	.loc 1 1162 0
	cmpq	$0, -8(%rbp)	#, po
	jne	.L186	#,
	.loc 1 1163 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L186:
	.loc 1 1170 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.180
	movq	-8(%rbp), %rdx	# po, tmp87
	salq	$3, %rdx	#, D.12279
	addq	%rdx, %rax	# D.12279, D.12280
	movq	(%rax), %rax	# *_9, D.12281
	testq	%rax, %rax	# D.12281
	je	.L187	#,
	.loc 1 1170 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.181
	movq	-8(%rbp), %rdx	# po, tmp88
	salq	$3, %rdx	#, D.12279
	addq	%rdx, %rax	# D.12279, D.12280
	movq	(%rax), %rax	# *_13, D.12281
	cmpq	$PL_sv_undef, %rax	#, D.12281
	je	.L187	#,
	.loc 1 1171 0 is_stmt 1
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.182
	movq	-8(%rbp), %rdx	# po, tmp89
	salq	$3, %rdx	#, D.12279
	addq	%rdx, %rax	# D.12279, D.12280
	movq	(%rax), %rax	# *_17, D.12281
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.183
	movq	-8(%rbp), %rcx	# po, tmp90
	salq	$3, %rcx	#, D.12279
	addq	%rcx, %rdx	# D.12279, D.12280
	movq	(%rdx), %rdx	# *_21, D.12281
	movl	12(%rdx), %edx	# _22->sv_flags, D.12282
	andb	$253, %dh	#, D.12282
	movl	%edx, 12(%rax)	# D.12282, _18->sv_flags
.L187:
	.loc 1 1179 0
	movq	-8(%rbp), %rax	# po, tmp91
	movl	%eax, %edx	# tmp91, D.12283
	movl	PL_padix(%rip), %eax	# PL_padix, PL_padix.184
	cmpl	%eax, %edx	# PL_padix.184, D.12283
	jge	.L182	#,
	.loc 1 1180 0
	movq	-8(%rbp), %rax	# po, tmp92
	subl	$1, %eax	#, D.12284
	movl	%eax, PL_padix(%rip)	# PL_padix.185, PL_padix
.L182:
	.loc 1 1181 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_pad_free, .-Perl_pad_free
	.section	.rodata
	.align 8
.LC19:
	.string	"PADNAME = 0x%lx(0x%lx) PAD = 0x%lx(0x%lx)\n"
.LC20:
	.string	"%2d. 0x%lx<%lu> FAKE \"%s\"\n"
	.align 8
.LC21:
	.string	"%2d. 0x%lx<%lu> (%lu,%lu) \"%s\"\n"
.LC22:
	.string	"%2d. 0x%lx<%lu>\n"
	.text
	.globl	Perl_do_dump_pad
	.type	Perl_do_dump_pad, @function
Perl_do_dump_pad:
.LFB18:
	.loc 1 1195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -68(%rbp)	# level, level
	movq	%rsi, -80(%rbp)	# file, file
	movq	%rdx, -88(%rbp)	# padlist, padlist
	movl	%ecx, -72(%rbp)	# full, full
	.loc 1 1203 0
	cmpq	$0, -88(%rbp)	#, padlist
	jne	.L189	#,
	.loc 1 1204 0
	jmp	.L188	#
.L189:
	.loc 1 1206 0
	movq	-88(%rbp), %rax	# padlist, tmp134
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_7, tmp135
	movq	%rax, -48(%rbp)	# tmp135, pad_name
	.loc 1 1207 0
	movq	-88(%rbp), %rax	# padlist, tmp136
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_9, tmp137
	movq	%rax, -40(%rbp)	# tmp137, pad
	.loc 1 1208 0
	movq	-48(%rbp), %rax	# pad_name, tmp138
	movq	(%rax), %rax	# pad_name_8->sv_any, D.12288
	movq	(%rax), %rax	# _11->xav_array, tmp139
	movq	%rax, -32(%rbp)	# tmp139, pname
	.loc 1 1209 0
	movq	-40(%rbp), %rax	# pad, tmp140
	movq	(%rax), %rax	# pad_10->sv_any, D.12288
	movq	(%rax), %rax	# _13->xav_array, tmp141
	movq	%rax, -24(%rbp)	# tmp141, ppad
	.loc 1 1210 0
	movq	-24(%rbp), %rcx	# ppad, ppad.186
	movq	-40(%rbp), %r8	# pad, pad.187
	movq	-32(%rbp), %rdi	# pname, pname.188
	movq	-48(%rbp), %rdx	# pad_name, pad_name.189
	movq	-80(%rbp), %rsi	# file, tmp142
	movl	-68(%rbp), %eax	# level, tmp143
	movq	%rcx, (%rsp)	# ppad.186,
	movq	%r8, %r9	# pad.187,
	movq	%rdi, %r8	# pname.188,
	movq	%rdx, %rcx	# pad_name.189,
	movl	$.LC19, %edx	#,
	movl	%eax, %edi	# tmp143,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	.loc 1 1215 0
	movl	$1, -60(%rbp)	#, ix
	jmp	.L191	#
.L203:
	.loc 1 1216 0
	movl	-60(%rbp), %eax	# ix, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-32(%rbp), %rax	# pname, tmp145
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_27, tmp146
	movq	%rax, -56(%rbp)	# tmp146, namesv
	.loc 1 1217 0
	cmpq	$0, -56(%rbp)	#, namesv
	je	.L192	#,
	.loc 1 1217 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -56(%rbp)	#, namesv
	jne	.L192	#,
	.loc 1 1218 0 is_stmt 1
	movq	$0, -56(%rbp)	#, namesv
.L192:
	.loc 1 1220 0
	cmpq	$0, -56(%rbp)	#, namesv
	je	.L193	#,
	.loc 1 1221 0
	movq	-56(%rbp), %rax	# namesv, tmp147
	movl	12(%rax), %eax	# namesv_1->sv_flags, D.12291
	andl	$1048576, %eax	#, D.12291
	testl	%eax, %eax	# D.12291
	je	.L194	#,
	.loc 1 1227 0
	movq	-56(%rbp), %rax	# namesv, tmp148
	movq	(%rax), %rax	# namesv_1->sv_any, D.12292
	.loc 1 1222 0
	movq	(%rax), %rcx	# MEM[(struct XPV *)_32].xpv_pv, D.12293
	.loc 1 1226 0
	movl	-60(%rbp), %eax	# ix, tmp149
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-24(%rbp), %rax	# ppad, tmp150
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_36, D.12294
	.loc 1 1222 0
	testq	%rax, %rax	# D.12294
	je	.L195	#,
	.loc 1 1226 0
	movl	-60(%rbp), %eax	# ix, tmp151
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-24(%rbp), %rax	# ppad, tmp152
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_40, D.12294
	movl	8(%rax), %eax	# _41->sv_refcnt, D.12291
	.loc 1 1222 0
	movl	%eax, %eax	# D.12291, iftmp.190
	jmp	.L196	#
.L195:
	.loc 1 1222 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.190
.L196:
	.loc 1 1225 0 is_stmt 1 discriminator 1
	movl	-60(%rbp), %edx	# ix, tmp153
	movslq	%edx, %rdx	# tmp153, D.12290
	leaq	0(,%rdx,8), %rsi	#, D.12290
	movq	-24(%rbp), %rdx	# ppad, tmp154
	addq	%rsi, %rdx	# D.12290, D.12287
	movq	(%rdx), %rdx	# *_47, D.12294
	.loc 1 1222 0 discriminator 1
	movq	%rdx, %r8	# D.12294, D.12290
	movl	-68(%rbp), %edx	# level, tmp155
	leal	1(%rdx), %edi	#, D.12295
	movl	-60(%rbp), %edx	# ix, tmp156
	movq	-80(%rbp), %rsi	# file, tmp157
	movq	%rcx, (%rsp)	# D.12293,
	movq	%rax, %r9	# iftmp.190,
	movl	%edx, %ecx	# tmp156,
	movl	$.LC20, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L200	#
.L194:
	.loc 1 1237 0
	movq	-56(%rbp), %rax	# namesv, tmp158
	movq	(%rax), %rax	# namesv_1->sv_any, D.12292
	.loc 1 1230 0
	movq	(%rax), %r12	# MEM[(struct XPV *)_51].xpv_pv, D.12293
	.loc 1 1236 0
	movq	-56(%rbp), %rax	# namesv, tmp159
	movq	(%rax), %rax	# namesv_1->sv_any, D.12292
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_53].xiv_iv, D.12289
	.loc 1 1230 0
	movq	%rax, %rbx	# D.12289, D.12290
	.loc 1 1235 0
	movq	-56(%rbp), %rax	# namesv, tmp160
	movq	(%rax), %rax	# namesv_1->sv_any, D.12292
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_56].xnv_nv, D.12296
	movq	%rax, -96(%rbp)	# D.12296, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	call	Perl_cast_ulong	#
	.loc 1 1230 0
	movl	%eax, %ecx	# D.12291, D.12290
	.loc 1 1234 0
	movl	-60(%rbp), %eax	# ix, tmp161
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-24(%rbp), %rax	# ppad, tmp162
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_62, D.12294
	.loc 1 1230 0
	testq	%rax, %rax	# D.12294
	je	.L198	#,
	.loc 1 1234 0
	movl	-60(%rbp), %eax	# ix, tmp163
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-24(%rbp), %rax	# ppad, tmp164
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_66, D.12294
	movl	8(%rax), %eax	# _67->sv_refcnt, D.12291
	.loc 1 1230 0
	movl	%eax, %eax	# D.12291, iftmp.191
	jmp	.L199	#
.L198:
	.loc 1 1230 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.191
.L199:
	.loc 1 1233 0 is_stmt 1 discriminator 2
	movl	-60(%rbp), %edx	# ix, tmp165
	movslq	%edx, %rdx	# tmp165, D.12290
	leaq	0(,%rdx,8), %rsi	#, D.12290
	movq	-24(%rbp), %rdx	# ppad, tmp166
	addq	%rsi, %rdx	# D.12290, D.12287
	movq	(%rdx), %rdx	# *_73, D.12294
	.loc 1 1230 0 discriminator 2
	movq	%rdx, %r8	# D.12294, D.12290
	movl	-68(%rbp), %edx	# level, tmp167
	leal	1(%rdx), %edi	#, D.12295
	movl	-60(%rbp), %edx	# ix, tmp168
	movq	-80(%rbp), %rsi	# file, tmp169
	movq	%r12, 16(%rsp)	# D.12293,
	movq	%rbx, 8(%rsp)	# D.12290,
	movq	%rcx, (%rsp)	# D.12290,
	movq	%rax, %r9	# iftmp.191,
	movl	%edx, %ecx	# tmp168,
	movl	$.LC21, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
	jmp	.L200	#
.L193:
	.loc 1 1240 0
	cmpl	$0, -72(%rbp)	#, full
	je	.L200	#,
	.loc 1 1245 0
	movl	-60(%rbp), %eax	# ix, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-24(%rbp), %rax	# ppad, tmp171
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_80, D.12294
	.loc 1 1241 0
	testq	%rax, %rax	# D.12294
	je	.L201	#,
	.loc 1 1245 0
	movl	-60(%rbp), %eax	# ix, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12290
	movq	-24(%rbp), %rax	# ppad, tmp173
	addq	%rdx, %rax	# D.12290, D.12287
	movq	(%rax), %rax	# *_84, D.12294
	movl	8(%rax), %eax	# _85->sv_refcnt, D.12291
	.loc 1 1241 0
	movl	%eax, %eax	# D.12291, iftmp.192
	jmp	.L202	#
.L201:
	.loc 1 1241 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.192
.L202:
	.loc 1 1244 0 is_stmt 1 discriminator 2
	movl	-60(%rbp), %edx	# ix, tmp174
	movslq	%edx, %rdx	# tmp174, D.12290
	leaq	0(,%rdx,8), %rcx	#, D.12290
	movq	-24(%rbp), %rdx	# ppad, tmp175
	addq	%rcx, %rdx	# D.12290, D.12287
	movq	(%rdx), %rdx	# *_91, D.12294
	.loc 1 1241 0 discriminator 2
	movq	%rdx, %rcx	# D.12294, D.12290
	movl	-68(%rbp), %edx	# level, tmp176
	leal	1(%rdx), %edi	#, D.12295
	movl	-60(%rbp), %edx	# ix, tmp177
	movq	-80(%rbp), %rsi	# file, tmp178
	movq	%rax, %r9	# iftmp.192,
	movq	%rcx, %r8	# D.12290,
	movl	%edx, %ecx	# tmp177,
	movl	$.LC22, %edx	#,
	movl	$0, %eax	#,
	call	Perl_dump_indent	#
.L200:
	.loc 1 1215 0
	addl	$1, -60(%rbp)	#, ix
.L191:
	.loc 1 1215 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# ix, tmp179
	movslq	%eax, %rdx	# tmp179, D.12289
	movq	-48(%rbp), %rax	# pad_name, tmp180
	movq	(%rax), %rax	# pad_name_8->sv_any, D.12288
	movq	8(%rax), %rax	# _23->xav_fill, D.12289
	cmpq	%rax, %rdx	# D.12289, D.12289
	jle	.L203	#,
.L188:
	.loc 1 1249 0 is_stmt 1
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_do_dump_pad, .-Perl_do_dump_pad
	.globl	Perl_cv_clone
	.type	Perl_cv_clone, @function
Perl_cv_clone:
.LFB19:
	.loc 1 1305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# proto, proto
	.loc 1 1309 0
	movq	-24(%rbp), %rax	# proto, tmp63
	movq	(%rax), %rax	# proto_1(D)->sv_any, D.12301
	movq	128(%rax), %rdx	# _2->xcv_outside, D.12302
	movq	-24(%rbp), %rax	# proto, tmp64
	movq	%rdx, %rsi	# D.12302,
	movq	%rax, %rdi	# tmp64,
	call	S_cv_clone2	#
	movq	%rax, -8(%rbp)	# tmp65, cv
	.loc 1 1311 0
	movq	-8(%rbp), %rax	# cv, D.12302
	.loc 1 1312 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_cv_clone, .-Perl_cv_clone
	.section	.rodata
.LC23:
	.string	"panic: cv_clone: %s"
	.text
	.type	S_cv_clone2, @function
S_cv_clone2:
.LFB20:
	.loc 1 1321 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# proto, proto
	movq	%rsi, -160(%rbp)	# outside, outside
	.loc 1 1323 0
	movq	-152(%rbp), %rax	# proto, tmp238
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	120(%rax), %rax	# _10->xcv_padlist, tmp239
	movq	%rax, -112(%rbp)	# tmp239, protopadlist
	.loc 1 1324 0
	movq	-112(%rbp), %rax	# protopadlist, tmp240
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_12, tmp241
	movq	%rax, -104(%rbp)	# tmp241, protopad_name
	.loc 1 1325 0
	movq	-112(%rbp), %rax	# protopadlist, tmp242
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp242,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_14, tmp243
	movq	%rax, -96(%rbp)	# tmp243, protopad
	.loc 1 1326 0
	movq	-104(%rbp), %rax	# protopad_name, tmp244
	movq	(%rax), %rax	# protopad_name_13->sv_any, D.12305
	movq	(%rax), %rax	# _16->xav_array, tmp245
	movq	%rax, -88(%rbp)	# tmp245, pname
	.loc 1 1327 0
	movq	-96(%rbp), %rax	# protopad, tmp246
	movq	(%rax), %rax	# protopad_15->sv_any, D.12305
	movq	(%rax), %rax	# _18->xav_array, tmp247
	movq	%rax, -80(%rbp)	# tmp247, ppad
	.loc 1 1328 0
	movq	-104(%rbp), %rax	# protopad_name, tmp248
	movq	(%rax), %rax	# protopad_name_13->sv_any, D.12305
	movq	8(%rax), %rax	# _20->xav_fill, D.12306
	movl	%eax, -140(%rbp)	# D.12306, fname
	.loc 1 1329 0
	movq	-96(%rbp), %rax	# protopad, tmp249
	movq	(%rax), %rax	# protopad_15->sv_any, D.12305
	movq	8(%rax), %rax	# _23->xav_fill, D.12306
	movl	%eax, -136(%rbp)	# D.12306, fpad
	.loc 1 1335 0
	call	Perl_push_scope	#
	.loc 1 1336 0
	movl	$PL_compcv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 1338 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_compcv(%rip)	# PL_compcv.193, PL_compcv
	movq	PL_compcv(%rip), %rax	# PL_compcv, tmp250
	movq	%rax, -128(%rbp)	# tmp250, cv
	.loc 1 1339 0
	movq	-152(%rbp), %rax	# proto, tmp251
	movl	12(%rax), %eax	# proto_9(D)->sv_flags, D.12307
	movzbl	%al, %edx	# D.12307, D.12307
	movq	-128(%rbp), %rax	# cv, tmp252
	movl	%edx, %esi	# D.12307,
	movq	%rax, %rdi	# tmp252,
	call	Perl_sv_upgrade	#
	.loc 1 1340 0
	movq	-128(%rbp), %rax	# cv, tmp253
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rdx	# proto, tmp254
	movq	(%rdx), %rdx	# proto_9(D)->sv_any, D.12303
	movzwl	136(%rdx), %edx	# _31->xcv_flags, D.12308
	andw	$-1026, %dx	#, D.12308
	movw	%dx, 136(%rax)	# D.12308, _30->xcv_flags
	.loc 1 1341 0
	movq	-128(%rbp), %rax	# cv, tmp255
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-128(%rbp), %rdx	# cv, tmp256
	movq	(%rdx), %rdx	# cv_27->sv_any, D.12303
	movzwl	136(%rdx), %edx	# _35->xcv_flags, D.12308
	orl	$2, %edx	#, D.12308
	movw	%dx, 136(%rax)	# D.12308, _34->xcv_flags
	.loc 1 1352 0
	movq	-128(%rbp), %rax	# cv, tmp257
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rdx	# proto, tmp258
	movq	(%rdx), %rdx	# proto_9(D)->sv_any, D.12303
	movq	104(%rdx), %rdx	# _39->xcv_file, D.12309
	movq	%rdx, 104(%rax)	# D.12309, _38->xcv_file
	.loc 1 1354 0
	movq	-128(%rbp), %rax	# cv, tmp259
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rdx	# proto, tmp260
	movq	(%rdx), %rdx	# proto_9(D)->sv_any, D.12303
	movq	96(%rdx), %rdx	# _42->xcv_gv, D.12310
	movq	%rdx, 96(%rax)	# D.12310, _41->xcv_gv
	.loc 1 1355 0
	movq	-128(%rbp), %rax	# cv, tmp261
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rdx	# proto, tmp262
	movq	(%rdx), %rdx	# proto_9(D)->sv_any, D.12303
	movq	56(%rdx), %rdx	# _45->xcv_stash, D.12311
	movq	%rdx, 56(%rax)	# D.12311, _44->xcv_stash
	.loc 1 1357 0
	movq	-128(%rbp), %rax	# cv, tmp263
	movq	(%rax), %rdx	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rax	# proto, tmp264
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	72(%rax), %rax	# _48->xcv_root, D.12312
	testq	%rax, %rax	# D.12312
	je	.L207	#,
	.loc 1 1357 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# proto, tmp265
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	72(%rax), %rax	# _50->xcv_root, D.12312
	movq	24(%rax), %rcx	# _51->op_targ, D.12313
	addq	$1, %rcx	#, D.12313
	movq	%rcx, 24(%rax)	# D.12313, _51->op_targ
	movq	-152(%rbp), %rax	# proto, tmp266
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	72(%rax), %rax	# _54->xcv_root, iftmp.194
	jmp	.L208	#
.L207:
	.loc 1 1357 0 discriminator 2
	movl	$0, %eax	#, iftmp.194
.L208:
	.loc 1 1357 0 discriminator 3
	movq	%rax, 72(%rdx)	# iftmp.194, _47->xcv_root
	.loc 1 1359 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# cv, tmp267
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rdx	# proto, tmp268
	movq	(%rdx), %rdx	# proto_9(D)->sv_any, D.12303
	movq	64(%rdx), %rdx	# _58->xcv_start, D.12312
	movq	%rdx, 64(%rax)	# D.12312, _57->xcv_start
	.loc 1 1360 0 discriminator 3
	cmpq	$0, -160(%rbp)	#, outside
	je	.L209	#,
	.loc 1 1361 0
	movq	-160(%rbp), %rax	# outside, tmp269
	movq	%rax, PL_Sv(%rip)	# tmp269, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.196
	testq	%rax, %rax	# PL_Sv.196
	je	.L211	#,
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.197
	movl	8(%rax), %edx	# PL_Sv.197_62->sv_refcnt, D.12307
	addl	$1, %edx	#, D.12307
	movl	%edx, 8(%rax)	# D.12307, PL_Sv.197_62->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.197_62->sv_refcnt, D.12307
	testl	%eax, %eax	# D.12307
	je	.L211	#,
	.loc 1 1361 0
	nop
.L211:
	.loc 1 1361 0 discriminator 4
	movq	-128(%rbp), %rax	# cv, tmp270
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.198
	movq	%rdx, 128(%rax)	# PL_Sv.198, _68->xcv_outside
	.loc 1 1362 0 is_stmt 1 discriminator 4
	movq	-128(%rbp), %rax	# cv, tmp271
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	-152(%rbp), %rdx	# proto, tmp272
	movq	(%rdx), %rdx	# proto_9(D)->sv_any, D.12303
	movl	140(%rdx), %edx	# _71->xcv_outside_seq, D.12307
	movl	%edx, 140(%rax)	# D.12307, _70->xcv_outside_seq
.L209:
	.loc 1 1365 0
	movq	-152(%rbp), %rax	# proto, tmp273
	movl	12(%rax), %eax	# proto_9(D)->sv_flags, D.12307
	andl	$262144, %eax	#, D.12307
	testl	%eax, %eax	# D.12307
	je	.L212	#,
	.loc 1 1366 0
	movq	-152(%rbp), %rax	# proto, tmp274
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_75].xpv_cur, D.12313
	movq	-152(%rbp), %rax	# proto, tmp275
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	(%rax), %rcx	# MEM[(struct XPV *)_77].xpv_pv, D.12309
	movq	-128(%rbp), %rax	# cv, tmp276
	movq	%rcx, %rsi	# D.12309,
	movq	%rax, %rdi	# tmp276,
	call	Perl_sv_setpvn	#
.L212:
	.loc 1 1368 0
	movq	-128(%rbp), %rax	# cv, tmp277
	movq	(%rax), %rbx	# cv_27->sv_any, D.12303
	movl	$3, %edi	#,
	call	Perl_pad_new	#
	movq	%rax, -72(%rbp)	# tmp278, comppadlist
	movq	-72(%rbp), %rax	# comppadlist, tmp279
	movq	%rax, 120(%rbx)	# tmp279, _79->xcv_padlist
	.loc 1 1370 0
	movl	-140(%rbp), %eax	# fname, tmp280
	movl	%eax, -144(%rbp)	# tmp280, ix
	jmp	.L213	#
.L216:
	.loc 1 1371 0
	movl	-144(%rbp), %eax	# ix, tmp281
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-88(%rbp), %rax	# pname, tmp282
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_84, PL_Sv.199
	movq	%rax, PL_Sv(%rip)	# PL_Sv.199, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.201
	testq	%rax, %rax	# PL_Sv.201
	je	.L215	#,
	.loc 1 1371 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.202
	movl	8(%rax), %edx	# PL_Sv.202_87->sv_refcnt, D.12307
	addl	$1, %edx	#, D.12307
	movl	%edx, 8(%rax)	# D.12307, PL_Sv.202_87->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.202_87->sv_refcnt, D.12307
	testl	%eax, %eax	# D.12307
	je	.L215	#,
	.loc 1 1371 0
	nop
.L215:
	.loc 1 1371 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.203
	movq	PL_comppad_name(%rip), %rax	# PL_comppad_name, PL_comppad_name.204
	movl	-144(%rbp), %ecx	# ix, tmp283
	movl	%ecx, %esi	# tmp283,
	movq	%rax, %rdi	# PL_comppad_name.204,
	call	Perl_av_store	#
	.loc 1 1370 0 is_stmt 1 discriminator 4
	subl	$1, -144(%rbp)	#, ix
.L213:
	.loc 1 1370 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, ix
	jns	.L216	#,
	.loc 1 1373 0 is_stmt 1
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.205
	movl	-136(%rbp), %edx	# fpad, tmp284
	movl	%edx, %esi	# tmp284,
	movq	%rax, %rdi	# PL_comppad.205,
	call	Perl_av_fill	#
	.loc 1 1374 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.206
	movq	(%rax), %rax	# PL_comppad.206_97->sv_any, D.12305
	movq	(%rax), %rax	# _98->xav_array, PL_curpad.207
	movq	%rax, PL_curpad(%rip)	# PL_curpad.207, PL_curpad
	.loc 1 1376 0
	movl	-136(%rbp), %eax	# fpad, tmp285
	movl	%eax, -144(%rbp)	# tmp285, ix
	jmp	.L217	#
.L235:
.LBB14:
	.loc 1 1377 0
	movl	-144(%rbp), %eax	# ix, tmp286
	cmpl	-140(%rbp), %eax	# fname, tmp286
	jg	.L218	#,
	.loc 1 1377 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# ix, tmp287
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-88(%rbp), %rax	# pname, tmp288
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_103, iftmp.208
	jmp	.L219	#
.L218:
	.loc 1 1377 0 discriminator 2
	movl	$0, %eax	#, iftmp.208
.L219:
	.loc 1 1377 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.208, namesv
	.loc 1 1378 0 is_stmt 1 discriminator 3
	cmpq	$0, -64(%rbp)	#, namesv
	je	.L220	#,
	.loc 1 1378 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -64(%rbp)	#, namesv
	je	.L220	#,
.LBB15:
	.loc 1 1379 0 is_stmt 1
	movq	-64(%rbp), %rax	# namesv, tmp289
	movq	(%rax), %rax	# namesv_106->sv_any, D.12314
	movq	(%rax), %rax	# MEM[(struct XPV *)_107].xpv_pv, tmp290
	movq	%rax, -56(%rbp)	# tmp290, name
	.loc 1 1380 0
	movq	-64(%rbp), %rax	# namesv, tmp291
	movl	12(%rax), %eax	# namesv_106->sv_flags, D.12307
	andl	$1048576, %eax	#, D.12307
	testl	%eax, %eax	# D.12307
	je	.L221	#,
.LBB16:
	.loc 1 1381 0
	movl	-144(%rbp), %eax	# ix, tmp292
	movslq	%eax, %rcx	# tmp292, D.12313
	movq	-128(%rbp), %rdx	# cv, tmp293
	movq	-56(%rbp), %rax	# name, tmp294
	movq	%rcx, %rsi	# D.12313,
	movq	%rax, %rdi	# tmp294,
	call	S_pad_findlex	#
	movl	%eax, -132(%rbp)	# D.12313, off
	.loc 1 1382 0
	cmpl	$0, -132(%rbp)	#, off
	jne	.L222	#,
	.loc 1 1383 0
	movl	-144(%rbp), %eax	# ix, tmp295
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-80(%rbp), %rax	# ppad, tmp296
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_116, PL_Sv.209
	movq	%rax, PL_Sv(%rip)	# PL_Sv.209, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.211
	testq	%rax, %rax	# PL_Sv.211
	je	.L224	#,
	.loc 1 1383 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.212
	movl	8(%rax), %edx	# PL_Sv.212_119->sv_refcnt, D.12307
	addl	$1, %edx	#, D.12307
	movl	%edx, 8(%rax)	# D.12307, PL_Sv.212_119->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.212_119->sv_refcnt, D.12307
	testl	%eax, %eax	# D.12307
	je	.L224	#,
	.loc 1 1383 0
	nop
.L224:
	.loc 1 1383 0 discriminator 4
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.213
	movl	-144(%rbp), %edx	# ix, tmp297
	movslq	%edx, %rdx	# tmp297, D.12313
	salq	$3, %rdx	#, D.12313
	addq	%rax, %rdx	# PL_curpad.213, D.12304
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.214
	movq	%rax, (%rdx)	# PL_Sv.214, *_128
	jmp	.L225	#
.L222:
	.loc 1 1384 0 is_stmt 1
	movl	-132(%rbp), %eax	# off, tmp298
	cmpl	-144(%rbp), %eax	# ix, tmp298
	je	.L225	#,
	.loc 1 1385 0
	movq	-56(%rbp), %rax	# name, tmp299
	movq	%rax, %rsi	# tmp299,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE16:
	jmp	.L226	#
.L225:
	jmp	.L226	#
.L221:
.LBB17:
	.loc 1 1389 0
	movq	-56(%rbp), %rax	# name, tmp300
	movzbl	(%rax), %eax	# *name_108, D.12315
	cmpb	$38, %al	#, D.12315
	jne	.L227	#,
	.loc 1 1391 0
	movl	-144(%rbp), %eax	# ix, tmp301
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-80(%rbp), %rax	# ppad, tmp302
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_133, PL_Sv.215
	movq	%rax, PL_Sv(%rip)	# PL_Sv.215, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.217
	testq	%rax, %rax	# PL_Sv.217
	je	.L229	#,
	.loc 1 1391 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.218
	movl	8(%rax), %edx	# PL_Sv.218_136->sv_refcnt, D.12307
	addl	$1, %edx	#, D.12307
	movl	%edx, 8(%rax)	# D.12307, PL_Sv.218_136->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.218_136->sv_refcnt, D.12307
	testl	%eax, %eax	# D.12307
	je	.L229	#,
	.loc 1 1391 0
	nop
.L229:
	.loc 1 1391 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp303
	movq	%rax, -120(%rbp)	# tmp303, sv
	jmp	.L230	#
.L227:
	.loc 1 1393 0 is_stmt 1
	movq	-56(%rbp), %rax	# name, tmp304
	movzbl	(%rax), %eax	# *name_108, D.12315
	cmpb	$64, %al	#, D.12315
	jne	.L231	#,
	.loc 1 1394 0
	call	Perl_newAV	#
	movq	%rax, -120(%rbp)	# tmp305, sv
	jmp	.L230	#
.L231:
	.loc 1 1395 0
	movq	-56(%rbp), %rax	# name, tmp306
	movzbl	(%rax), %eax	# *name_108, D.12315
	cmpb	$37, %al	#, D.12315
	jne	.L232	#,
	.loc 1 1396 0
	call	Perl_newHV	#
	movq	%rax, -120(%rbp)	# tmp307, sv
	jmp	.L230	#
.L232:
	.loc 1 1398 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -120(%rbp)	# tmp308, sv
.L230:
	.loc 1 1399 0
	movq	-120(%rbp), %rax	# sv, tmp309
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12307
	andl	$256, %eax	#, D.12307
	testl	%eax, %eax	# D.12307
	jne	.L233	#,
	.loc 1 1400 0
	movq	-120(%rbp), %rax	# sv, tmp310
	movl	12(%rax), %eax	# sv_5->sv_flags, D.12307
	orb	$5, %ah	#, D.12307
	movl	%eax, %edx	# D.12307, D.12307
	movq	-120(%rbp), %rax	# sv, tmp311
	movl	%edx, 12(%rax)	# D.12307, sv_5->sv_flags
.L233:
	.loc 1 1401 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.219
	movl	-144(%rbp), %edx	# ix, tmp312
	movslq	%edx, %rdx	# tmp312, D.12313
	salq	$3, %rdx	#, D.12313
	addq	%rax, %rdx	# PL_curpad.219, D.12304
	movq	-120(%rbp), %rax	# sv, tmp313
	movq	%rax, (%rdx)	# tmp313, *_155
.LBE17:
.LBE15:
	.loc 1 1378 0
	jmp	.L234	#
.L226:
	jmp	.L234	#
.L220:
.LBB18:
	.loc 1 1408 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -48(%rbp)	# tmp314, sv
	.loc 1 1409 0
	movq	-48(%rbp), %rax	# sv, tmp315
	movl	12(%rax), %eax	# sv_156->sv_flags, D.12307
	orb	$3, %ah	#, D.12307
	movl	%eax, %edx	# D.12307, D.12307
	movq	-48(%rbp), %rax	# sv, tmp316
	movl	%edx, 12(%rax)	# D.12307, sv_156->sv_flags
	.loc 1 1410 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.226
	movl	-144(%rbp), %edx	# ix, tmp317
	movslq	%edx, %rdx	# tmp317, D.12313
	salq	$3, %rdx	#, D.12313
	addq	%rax, %rdx	# PL_curpad.226, D.12304
	movq	-48(%rbp), %rax	# sv, tmp318
	movq	%rax, (%rdx)	# tmp318, *_162
.L234:
.LBE18:
.LBE14:
	.loc 1 1376 0
	subl	$1, -144(%rbp)	#, ix
.L217:
	.loc 1 1376 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, ix
	jg	.L235	#,
	.loc 1 1416 0 is_stmt 1
	movl	-136(%rbp), %eax	# fpad, tmp319
	movl	%eax, -144(%rbp)	# tmp319, ix
	jmp	.L236	#
.L240:
.LBB19:
	.loc 1 1417 0
	movl	-144(%rbp), %eax	# ix, tmp320
	cmpl	-140(%rbp), %eax	# fname, tmp320
	jg	.L237	#,
	.loc 1 1417 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# ix, tmp321
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-88(%rbp), %rax	# pname, tmp322
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_167, iftmp.227
	jmp	.L238	#
.L237:
	.loc 1 1417 0 discriminator 2
	movl	$0, %eax	#, iftmp.227
.L238:
	.loc 1 1417 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.227, namesv
	.loc 1 1418 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, namesv
	je	.L239	#,
	.loc 1 1419 0
	cmpq	$PL_sv_undef, -40(%rbp)	#, namesv
	je	.L239	#,
	.loc 1 1420 0
	movq	-40(%rbp), %rax	# namesv, tmp323
	movl	12(%rax), %eax	# namesv_170->sv_flags, D.12307
	andl	$1048576, %eax	#, D.12307
	testl	%eax, %eax	# D.12307
	jne	.L239	#,
	.loc 1 1421 0
	movq	-40(%rbp), %rax	# namesv, tmp324
	movq	(%rax), %rax	# namesv_170->sv_any, D.12314
	movq	(%rax), %rax	# MEM[(struct XPV *)_173].xpv_pv, D.12309
	movzbl	(%rax), %eax	# *_174, D.12315
	cmpb	$38, %al	#, D.12315
	jne	.L239	#,
	.loc 1 1422 0
	movl	-144(%rbp), %eax	# ix, tmp325
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-80(%rbp), %rax	# ppad, tmp326
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_178, D.12316
	movq	(%rax), %rax	# _179->sv_any, D.12314
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_180].xcv_flags, D.12308
	movzwl	%ax, %eax	# D.12308, D.12317
	andl	$1, %eax	#, D.12317
	testl	%eax, %eax	# D.12317
	je	.L239	#,
.LBB20:
	.loc 1 1424 0
	movl	-144(%rbp), %eax	# ix, tmp327
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-80(%rbp), %rax	# ppad, tmp328
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_186, D.12316
	movq	-128(%rbp), %rdx	# cv, tmp329
	movq	%rdx, %rsi	# tmp329,
	movq	%rax, %rdi	# D.12316,
	call	S_cv_clone2	#
	movq	%rax, -32(%rbp)	# tmp330, kid
	.loc 1 1425 0
	movl	-144(%rbp), %eax	# ix, tmp331
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12313
	movq	-80(%rbp), %rax	# ppad, tmp332
	addq	%rdx, %rax	# D.12313, D.12304
	movq	(%rax), %rax	# *_191, D.12316
	movq	%rax, %rdi	# D.12316,
	call	Perl_sv_free	#
	.loc 1 1426 0
	movq	-32(%rbp), %rax	# kid, tmp333
	movq	(%rax), %rax	# kid_188->sv_any, D.12303
	movq	-32(%rbp), %rdx	# kid, tmp334
	movq	(%rdx), %rdx	# kid_188->sv_any, D.12303
	movzwl	136(%rdx), %edx	# _194->xcv_flags, D.12308
	orl	$1, %edx	#, D.12308
	movw	%dx, 136(%rax)	# D.12308, _193->xcv_flags
	.loc 1 1427 0
	movq	-32(%rbp), %rax	# kid, tmp335
	movl	12(%rax), %eax	# kid_188->sv_flags, D.12307
	orb	$5, %ah	#, D.12307
	movl	%eax, %edx	# D.12307, D.12307
	movq	-32(%rbp), %rax	# kid, tmp336
	movl	%edx, 12(%rax)	# D.12307, kid_188->sv_flags
	.loc 1 1428 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.228
	movl	-144(%rbp), %edx	# ix, tmp337
	movslq	%edx, %rdx	# tmp337, D.12313
	salq	$3, %rdx	#, D.12313
	addq	%rax, %rdx	# PL_curpad.228, D.12304
	movq	-32(%rbp), %rax	# kid, tmp338
	movq	%rax, (%rdx)	# tmp338, *_202
	.loc 1 1430 0
	movq	-32(%rbp), %rax	# kid, tmp339
	movq	(%rax), %rax	# kid_188->sv_any, D.12303
	movq	-32(%rbp), %rdx	# kid, tmp340
	movq	(%rdx), %rdx	# kid_188->sv_any, D.12303
	movzwl	136(%rdx), %edx	# _204->xcv_flags, D.12308
	orb	$4, %dh	#, D.12308
	movw	%dx, 136(%rax)	# D.12308, _203->xcv_flags
	.loc 1 1431 0
	movq	-128(%rbp), %rax	# cv, tmp341
	movq	%rax, %rdi	# tmp341,
	call	Perl_sv_free	#
.L239:
.LBE20:
.LBE19:
	.loc 1 1416 0
	subl	$1, -144(%rbp)	#, ix
.L236:
	.loc 1 1416 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, ix
	jg	.L240	#,
	.loc 1 1442 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1444 0
	movq	-128(%rbp), %rax	# cv, tmp342
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movzwl	136(%rax), %eax	# _208->xcv_flags, D.12308
	movzwl	%ax, %eax	# D.12308, D.12317
	andl	$512, %eax	#, D.12317
	testl	%eax, %eax	# D.12317
	je	.L241	#,
.LBB21:
	.loc 1 1445 0
	movq	-128(%rbp), %rax	# cv, tmp343
	movq	(%rax), %rax	# cv_27->sv_any, D.12303
	movq	64(%rax), %rax	# _212->xcv_start, D.12312
	movq	-128(%rbp), %rdx	# cv, tmp344
	movq	%rdx, %rsi	# tmp344,
	movq	%rax, %rdi	# D.12312,
	call	Perl_op_const_sv	#
	movq	%rax, -24(%rbp)	# tmp345, const_sv
	.loc 1 1448 0
	movq	-128(%rbp), %rax	# cv, tmp346
	movq	%rax, %rdi	# tmp346,
	call	Perl_sv_free	#
	.loc 1 1449 0
	movq	-152(%rbp), %rax	# proto, tmp347
	movq	(%rax), %rax	# proto_9(D)->sv_any, D.12303
	movq	56(%rax), %rax	# _215->xcv_stash, D.12311
	movq	-24(%rbp), %rdx	# const_sv, tmp348
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12311,
	call	Perl_newCONSTSUB	#
	movq	%rax, -128(%rbp)	# tmp349, cv
.L241:
.LBE21:
	.loc 1 1452 0
	movq	-128(%rbp), %rax	# cv, D.12318
	.loc 1 1453 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	S_cv_clone2, .-S_cv_clone2
	.globl	Perl_pad_fixup_inner_anons
	.type	Perl_pad_fixup_inner_anons, @function
Perl_pad_fixup_inner_anons:
.LFB21:
	.loc 1 1468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# padlist, padlist
	movq	%rsi, -80(%rbp)	# old_cv, old_cv
	movq	%rdx, -88(%rbp)	# new_cv, new_cv
	.loc 1 1470 0
	movq	-72(%rbp), %rax	# padlist, tmp77
	movq	(%rax), %rax	# padlist_2(D)->sv_any, D.12320
	movq	(%rax), %rax	# _3->xav_array, D.12321
	movq	(%rax), %rax	# MEM[(struct SV * *)_4], tmp78
	movq	%rax, -48(%rbp)	# tmp78, comppad_name
	.loc 1 1471 0
	movq	-72(%rbp), %rax	# padlist, tmp79
	movq	(%rax), %rax	# padlist_2(D)->sv_any, D.12320
	movq	(%rax), %rax	# _6->xav_array, D.12321
	movq	8(%rax), %rax	# MEM[(struct SV * *)_7 + 8B], tmp80
	movq	%rax, -40(%rbp)	# tmp80, comppad
	.loc 1 1472 0
	movq	-48(%rbp), %rax	# comppad_name, tmp81
	movq	(%rax), %rax	# comppad_name_5->sv_any, D.12320
	movq	(%rax), %rax	# _9->xav_array, tmp82
	movq	%rax, -32(%rbp)	# tmp82, namepad
	.loc 1 1473 0
	movq	-40(%rbp), %rax	# comppad, tmp83
	movq	(%rax), %rax	# comppad_8->sv_any, D.12320
	movq	(%rax), %rax	# _11->xav_array, tmp84
	movq	%rax, -24(%rbp)	# tmp84, curpad
	.loc 1 1474 0
	movq	-48(%rbp), %rax	# comppad_name, tmp85
	movq	(%rax), %rax	# comppad_name_5->sv_any, D.12320
	movq	8(%rax), %rax	# _13->xav_fill, D.12322
	movl	%eax, -52(%rbp)	# D.12322, ix
	jmp	.L244	#
.L246:
.LBB22:
	.loc 1 1475 0
	movl	-52(%rbp), %eax	# ix, tmp86
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12323
	movq	-32(%rbp), %rax	# namepad, tmp87
	addq	%rdx, %rax	# D.12323, D.12324
	movq	(%rax), %rax	# *_18, tmp88
	movq	%rax, -16(%rbp)	# tmp88, namesv
	.loc 1 1476 0
	cmpq	$0, -16(%rbp)	#, namesv
	je	.L245	#,
	.loc 1 1476 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -16(%rbp)	#, namesv
	je	.L245	#,
	.loc 1 1477 0 is_stmt 1
	movq	-16(%rbp), %rax	# namesv, tmp89
	movq	(%rax), %rax	# namesv_19->sv_any, D.12325
	movq	(%rax), %rax	# MEM[(struct XPV *)_20].xpv_pv, D.12321
	movzbl	(%rax), %eax	# *_21, D.12326
	cmpb	$38, %al	#, D.12326
	jne	.L245	#,
.LBB23:
	.loc 1 1479 0
	movl	-52(%rbp), %eax	# ix, tmp90
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12323
	movq	-24(%rbp), %rax	# curpad, tmp91
	addq	%rdx, %rax	# D.12323, D.12324
	movq	(%rax), %rax	# *_25, tmp92
	movq	%rax, -8(%rbp)	# tmp92, innercv
	.loc 1 1482 0
	movq	-8(%rbp), %rax	# innercv, tmp93
	movq	(%rax), %rax	# innercv_26->sv_any, D.12327
	movq	-88(%rbp), %rdx	# new_cv, tmp94
	movq	%rdx, 128(%rax)	# tmp94, _27->xcv_outside
.L245:
.LBE23:
.LBE22:
	.loc 1 1474 0
	subl	$1, -52(%rbp)	#, ix
.L244:
	.loc 1 1474 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, ix
	jg	.L246	#,
	.loc 1 1485 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_pad_fixup_inner_anons, .-Perl_pad_fixup_inner_anons
	.globl	Perl_pad_push
	.type	Perl_pad_push, @function
Perl_pad_push:
.LFB22:
	.loc 1 1503 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# padlist, padlist
	movl	%esi, -76(%rbp)	# depth, depth
	movl	%edx, -80(%rbp)	# has_args, has_args
	.loc 1 1504 0
	movl	-76(%rbp), %eax	# depth, tmp115
	movslq	%eax, %rdx	# tmp115, D.12328
	movq	-72(%rbp), %rax	# padlist, tmp116
	movq	(%rax), %rax	# padlist_5(D)->sv_any, D.12329
	movq	8(%rax), %rax	# _6->xav_fill, D.12328
	cmpq	%rax, %rdx	# D.12328, D.12328
	jg	.L248	#,
	.loc 1 1505 0
	jmp	.L247	#
.L248:
.LBB24:
	.loc 1 1508 0
	movq	-72(%rbp), %rax	# padlist, tmp117
	movq	(%rax), %rax	# padlist_5(D)->sv_any, D.12329
	movq	(%rax), %rax	# _8->xav_array, tmp118
	movq	%rax, -48(%rbp)	# tmp118, svp
	.loc 1 1509 0
	call	Perl_newAV	#
	movq	%rax, -40(%rbp)	# tmp119, newpad
	.loc 1 1510 0
	movl	-76(%rbp), %eax	# depth, tmp120
	cltq
	salq	$3, %rax	#, D.12330
	leaq	-8(%rax), %rdx	#, D.12331
	movq	-48(%rbp), %rax	# svp, tmp121
	addq	%rdx, %rax	# D.12331, D.12332
	movq	(%rax), %rax	# *_14, D.12333
	movq	(%rax), %rax	# _15->sv_any, D.12334
	movq	(%rax), %rax	# MEM[(struct XPVAV *)_16].xav_array, tmp122
	movq	%rax, -32(%rbp)	# tmp122, oldpad
	.loc 1 1511 0
	movq	-48(%rbp), %rax	# svp, tmp123
	addq	$8, %rax	#, D.12332
	movq	(%rax), %rax	# *_18, D.12333
	movq	(%rax), %rax	# MEM[(struct AV *)_19].sv_any, D.12329
	movq	8(%rax), %rax	# _20->xav_fill, D.12328
	movl	%eax, -64(%rbp)	# D.12328, ix
	.loc 1 1512 0
	movq	-48(%rbp), %rax	# svp, tmp124
	movq	(%rax), %rax	# *svp_9, D.12333
	movq	(%rax), %rax	# MEM[(struct AV *)_23].sv_any, D.12329
	movq	8(%rax), %rax	# _24->xav_fill, D.12328
	movl	%eax, -60(%rbp)	# D.12328, names_fill
	.loc 1 1513 0
	movq	-48(%rbp), %rax	# svp, tmp125
	movq	(%rax), %rax	# *svp_9, D.12333
	movq	(%rax), %rax	# _27->sv_any, D.12334
	movq	(%rax), %rax	# MEM[(struct XPVAV *)_28].xav_array, tmp126
	movq	%rax, -24(%rbp)	# tmp126, names
	.loc 1 1515 0
	jmp	.L250	#
.L261:
	.loc 1 1516 0
	movl	-60(%rbp), %eax	# names_fill, tmp127
	cmpl	-64(%rbp), %eax	# ix, tmp127
	jl	.L251	#,
	.loc 1 1516 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# ix, tmp128
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12330
	movq	-24(%rbp), %rax	# names, tmp129
	addq	%rdx, %rax	# D.12330, D.12332
	movq	(%rax), %rax	# *_32, D.12333
	cmpq	$PL_sv_undef, %rax	#, D.12333
	je	.L251	#,
.LBB25:
	.loc 1 1517 0 is_stmt 1
	movl	-64(%rbp), %eax	# ix, tmp130
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12330
	movq	-24(%rbp), %rax	# names, tmp131
	addq	%rdx, %rax	# D.12330, D.12332
	movq	(%rax), %rax	# *_36, D.12333
	movq	(%rax), %rax	# _37->sv_any, D.12334
	movq	(%rax), %rax	# MEM[(struct XPV *)_38].xpv_pv, tmp132
	movq	%rax, -16(%rbp)	# tmp132, name
	.loc 1 1518 0
	movl	-64(%rbp), %eax	# ix, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12330
	movq	-24(%rbp), %rax	# names, tmp134
	addq	%rdx, %rax	# D.12330, D.12332
	movq	(%rax), %rax	# *_42, D.12333
	movl	12(%rax), %eax	# _43->sv_flags, D.12335
	andl	$1048576, %eax	#, D.12335
	testl	%eax, %eax	# D.12335
	jne	.L252	#,
	.loc 1 1518 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# name, tmp135
	movzbl	(%rax), %eax	# *name_39, D.12336
	cmpb	$38, %al	#, D.12336
	jne	.L253	#,
.L252:
	.loc 1 1520 0 is_stmt 1
	movl	-64(%rbp), %eax	# ix, tmp136
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12330
	movq	-32(%rbp), %rax	# oldpad, tmp137
	addq	%rdx, %rax	# D.12330, D.12332
	movq	(%rax), %rax	# *_56, PL_Sv.229
	movq	%rax, PL_Sv(%rip)	# PL_Sv.229, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.231
	testq	%rax, %rax	# PL_Sv.231
	je	.L255	#,
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.232
	movl	8(%rax), %edx	# PL_Sv.232_59->sv_refcnt, D.12335
	addl	$1, %edx	#, D.12335
	movl	%edx, 8(%rax)	# D.12335, PL_Sv.232_59->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.232_59->sv_refcnt, D.12335
	testl	%eax, %eax	# D.12335
	je	.L255	#,
	.loc 1 1520 0
	nop
.L255:
	.loc 1 1520 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.233
	movl	-64(%rbp), %ecx	# ix, tmp138
	movq	-40(%rbp), %rax	# newpad, tmp139
	movl	%ecx, %esi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	Perl_av_store	#
.LBE25:
	.loc 1 1516 0 is_stmt 1 discriminator 4
	jmp	.L260	#
.L253:
.LBB26:
	.loc 1 1523 0
	movq	-16(%rbp), %rax	# name, tmp140
	movzbl	(%rax), %eax	# *name_39, D.12336
	cmpb	$64, %al	#, D.12336
	jne	.L257	#,
	.loc 1 1524 0
	call	Perl_newAV	#
	movq	%rax, -56(%rbp)	# tmp141, sv
	movq	-56(%rbp), %rdx	# sv, tmp142
	movl	-64(%rbp), %ecx	# ix, tmp143
	movq	-40(%rbp), %rax	# newpad, tmp144
	movl	%ecx, %esi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	Perl_av_store	#
	jmp	.L258	#
.L257:
	.loc 1 1525 0
	movq	-16(%rbp), %rax	# name, tmp145
	movzbl	(%rax), %eax	# *name_39, D.12336
	cmpb	$37, %al	#, D.12336
	jne	.L259	#,
	.loc 1 1526 0
	call	Perl_newHV	#
	movq	%rax, -56(%rbp)	# tmp146, sv
	movq	-56(%rbp), %rdx	# sv, tmp147
	movl	-64(%rbp), %ecx	# ix, tmp148
	movq	-40(%rbp), %rax	# newpad, tmp149
	movl	%ecx, %esi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	Perl_av_store	#
	jmp	.L258	#
.L259:
	.loc 1 1528 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -56(%rbp)	# tmp150, sv
	movq	-56(%rbp), %rdx	# sv, tmp151
	movl	-64(%rbp), %ecx	# ix, tmp152
	movq	-40(%rbp), %rax	# newpad, tmp153
	movl	%ecx, %esi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	Perl_av_store	#
.L258:
	.loc 1 1529 0
	movq	-56(%rbp), %rax	# sv, tmp154
	movl	12(%rax), %eax	# sv_2->sv_flags, D.12335
	orb	$5, %ah	#, D.12335
	movl	%eax, %edx	# D.12335, D.12335
	movq	-56(%rbp), %rax	# sv, tmp155
	movl	%edx, 12(%rax)	# D.12335, sv_2->sv_flags
.LBE26:
	.loc 1 1516 0
	jmp	.L260	#
.L251:
	.loc 1 1537 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -56(%rbp)	# tmp156, sv
	movq	-56(%rbp), %rdx	# sv, tmp157
	movl	-64(%rbp), %ecx	# ix, tmp158
	movq	-40(%rbp), %rax	# newpad, tmp159
	movl	%ecx, %esi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	Perl_av_store	#
	.loc 1 1538 0
	movq	-56(%rbp), %rax	# sv, tmp160
	movl	12(%rax), %eax	# sv_66->sv_flags, D.12335
	orb	$3, %ah	#, D.12335
	movl	%eax, %edx	# D.12335, D.12335
	movq	-56(%rbp), %rax	# sv, tmp161
	movl	%edx, 12(%rax)	# D.12335, sv_66->sv_flags
.L260:
	.loc 1 1515 0
	subl	$1, -64(%rbp)	#, ix
.L250:
	.loc 1 1515 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, ix
	jg	.L261	#,
	.loc 1 1541 0 is_stmt 1
	cmpl	$0, -80(%rbp)	#, has_args
	je	.L262	#,
.LBB27:
	.loc 1 1542 0
	call	Perl_newAV	#
	movq	%rax, -8(%rbp)	# tmp162, av
	.loc 1 1543 0
	movq	-8(%rbp), %rax	# av, tmp163
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp163,
	call	Perl_av_extend	#
	.loc 1 1544 0
	movq	-8(%rbp), %rdx	# av, tmp164
	movq	-40(%rbp), %rax	# newpad, tmp165
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	Perl_av_store	#
	.loc 1 1545 0
	movq	-8(%rbp), %rax	# av, tmp166
	movq	(%rax), %rax	# av_71->sv_any, D.12329
	movb	$2, 72(%rax)	#, _72->xav_flags
.L262:
.LBE27:
	.loc 1 1547 0
	movq	-40(%rbp), %rdx	# newpad, tmp167
	movl	-76(%rbp), %ecx	# depth, tmp168
	movq	-72(%rbp), %rax	# padlist, tmp169
	movl	%ecx, %esi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	Perl_av_store	#
	.loc 1 1548 0
	movq	-72(%rbp), %rax	# padlist, tmp170
	movq	(%rax), %rax	# padlist_5(D)->sv_any, D.12329
	movl	-76(%rbp), %edx	# depth, tmp171
	movslq	%edx, %rdx	# tmp171, D.12328
	movq	%rdx, 8(%rax)	# D.12328, _73->xav_fill
.L247:
.LBE24:
	.loc 1 1550 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_pad_push, .-Perl_pad_push
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "cop.h"
	.file 9 "sv.h"
	.file 10 "regexp.h"
	.file 11 "gv.h"
	.file 12 "mg.h"
	.file 13 "av.h"
	.file 14 "hv.h"
	.file 15 "cv.h"
	.file 16 "handy.h"
	.file 17 "perlio.h"
	.file 18 "pad.h"
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.file 21 "perlvars.h"
	.file 22 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27e0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF673
	.byte	0x1
	.long	.LASF674
	.long	.LASF675
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
	.byte	0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xc0
	.uleb128 0x9
	.long	.LASF185
	.uleb128 0xa
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xa
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xa
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0xe6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xa
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x104
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x170
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xefa
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0x1923
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xf73
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xd6c
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xd6c
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xd62
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xd62
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x17c
	.uleb128 0xc
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x249
	.uleb128 0xd
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xefa
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0x1923
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xf73
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xd6c
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xd6c
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xd62
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xd62
	.byte	0x25
	.uleb128 0xd
	.long	.LASF24
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xd
	.long	.LASF25
	.byte	0x8
	.byte	0x17
	.long	0xee2
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xf17
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xd82
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xd77
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xd8d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xdaa
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xdaa
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x255
	.uleb128 0xe
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x343
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xefa
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0x1923
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xf73
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xd6c
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xd6c
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xd62
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xd62
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xefa
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xefa
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xefa
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xefa
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0x1929
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0x192f
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xd82
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xd82
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xd62
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xee2
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x34f
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x36a
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x375
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3a5
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x45
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xd82
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3b0
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3e0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xeca
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xd82
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x3eb
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x41b
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xed0
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xd82
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x426
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x456
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xec4
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xd82
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x462
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x53b
	.uleb128 0xd
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xe1d
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xe1d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xe23
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xe2e
	.byte	0x18
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF57
	.byte	0xa
	.byte	0x25
	.long	0xe39
	.byte	0x28
	.uleb128 0xd
	.long	.LASF58
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF59
	.byte	0xa
	.byte	0x28
	.long	0xe3f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xd77
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xd77
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xd77
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xd77
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xd82
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xd82
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xd82
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xd82
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xe45
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x546
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5e2
	.uleb128 0xd
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xdaa
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xf57
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xf0b
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xf1d
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xee2
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xf17
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xf0b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xd82
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xd82
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xd8d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x5ed
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x61d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xebe
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xd82
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x64d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xed6
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xd82
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xd82
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.value	0x7f5
	.long	0x659
	.uleb128 0xe
	.long	.LASF82
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6c6
	.uleb128 0xd
	.long	.LASF83
	.byte	0xc
	.byte	0x1b
	.long	0xedc
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0x1a46
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xd6c
	.byte	0x10
	.uleb128 0xd
	.long	.LASF86
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF87
	.byte	0xc
	.byte	0x1f
	.long	0xd62
	.byte	0x13
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xdaa
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0x22
	.long	0xd77
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6d2
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x703
	.uleb128 0xd
	.long	.LASF91
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF92
	.byte	0x9
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF93
	.byte	0x9
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF94
	.byte	0x6
	.value	0x7f8
	.long	0x70f
	.uleb128 0xe
	.long	.LASF95
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x750
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x101
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x102
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x103
	.long	0xc5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x6
	.value	0x7fa
	.long	0x75c
	.uleb128 0x10
	.long	.LASF98
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x7ab
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x10f
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x110
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x111
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x112
	.long	0xdb
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF100
	.byte	0x6
	.value	0x7fb
	.long	0x7b7
	.uleb128 0x10
	.long	.LASF101
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x820
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x118
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x119
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x11a
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x11b
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x11c
	.long	0xedc
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x11d
	.long	0xee2
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x6
	.value	0x7fd
	.long	0x82c
	.uleb128 0xe
	.long	.LASF105
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x8b1
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF102
	.byte	0xd
	.byte	0x11
	.long	0xedc
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x12
	.long	0xee2
	.byte	0x30
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0x14
	.long	0x193b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0x15
	.long	0xdaa
	.byte	0x40
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0x16
	.long	0xd62
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF113
	.byte	0x6
	.value	0x7fe
	.long	0x8bd
	.uleb128 0xe
	.long	.LASF114
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x94e
	.uleb128 0xd
	.long	.LASF115
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF116
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF117
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF118
	.byte	0xe
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF99
	.byte	0xe
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF102
	.byte	0xe
	.byte	0x29
	.long	0xedc
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xe
	.byte	0x2a
	.long	0xee2
	.byte	0x30
	.uleb128 0xd
	.long	.LASF119
	.byte	0xe
	.byte	0x2c
	.long	0xd77
	.byte	0x38
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.byte	0x2d
	.long	0x19bd
	.byte	0x40
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x2e
	.long	0x1929
	.byte	0x48
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF123
	.byte	0x6
	.value	0x7ff
	.long	0x95a
	.uleb128 0x10
	.long	.LASF124
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xa04
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x136
	.long	0xedc
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x137
	.long	0xee2
	.byte	0x30
	.uleb128 0xf
	.long	.LASF125
	.byte	0x9
	.value	0x139
	.long	0xee8
	.byte	0x38
	.uleb128 0xf
	.long	.LASF126
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF127
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF128
	.byte	0x9
	.value	0x13c
	.long	0xee2
	.byte	0x50
	.uleb128 0xf
	.long	.LASF129
	.byte	0x9
	.value	0x13d
	.long	0xd62
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF130
	.byte	0x6
	.value	0x800
	.long	0xa10
	.uleb128 0xe
	.long	.LASF131
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xb01
	.uleb128 0xd
	.long	.LASF91
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF92
	.byte	0xf
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF93
	.byte	0xf
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF109
	.byte	0xf
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF99
	.byte	0xf
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF102
	.byte	0xf
	.byte	0x14
	.long	0xedc
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xf
	.byte	0x15
	.long	0xee2
	.byte	0x30
	.uleb128 0xd
	.long	.LASF132
	.byte	0xf
	.byte	0x17
	.long	0xee2
	.byte	0x38
	.uleb128 0xd
	.long	.LASF133
	.byte	0xf
	.byte	0x18
	.long	0xefa
	.byte	0x40
	.uleb128 0xd
	.long	.LASF134
	.byte	0xf
	.byte	0x19
	.long	0xefa
	.byte	0x48
	.uleb128 0xd
	.long	.LASF135
	.byte	0xf
	.byte	0x1a
	.long	0xf11
	.byte	0x50
	.uleb128 0xd
	.long	.LASF136
	.byte	0xf
	.byte	0x1b
	.long	0xcb3
	.byte	0x58
	.uleb128 0xd
	.long	.LASF137
	.byte	0xf
	.byte	0x1c
	.long	0xf17
	.byte	0x60
	.uleb128 0xd
	.long	.LASF138
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF139
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF140
	.byte	0xf
	.byte	0x1f
	.long	0xfa4
	.byte	0x78
	.uleb128 0xd
	.long	.LASF141
	.byte	0xf
	.byte	0x20
	.long	0xf0b
	.byte	0x80
	.uleb128 0xd
	.long	.LASF142
	.byte	0xf
	.byte	0x25
	.long	0xeee
	.byte	0x88
	.uleb128 0xd
	.long	.LASF143
	.byte	0xf
	.byte	0x26
	.long	0xd82
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF144
	.byte	0x6
	.value	0x803
	.long	0xb0d
	.uleb128 0x10
	.long	.LASF145
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xc46
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x176
	.long	0xedc
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x177
	.long	0xee2
	.byte	0x30
	.uleb128 0xf
	.long	.LASF146
	.byte	0x9
	.value	0x179
	.long	0xf4b
	.byte	0x38
	.uleb128 0xf
	.long	.LASF147
	.byte	0x9
	.value	0x17a
	.long	0xf4b
	.byte	0x40
	.uleb128 0xf
	.long	.LASF148
	.byte	0x9
	.value	0x187
	.long	0xf23
	.byte	0x48
	.uleb128 0xf
	.long	.LASF149
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF150
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF151
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x18d
	.long	0xf17
	.byte	0x78
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x18f
	.long	0xf17
	.byte	0x88
	.uleb128 0xf
	.long	.LASF157
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF158
	.byte	0x9
	.value	0x191
	.long	0xf17
	.byte	0x98
	.uleb128 0xf
	.long	.LASF159
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF160
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF161
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF162
	.byte	0x6
	.value	0x804
	.long	0xc52
	.uleb128 0xe
	.long	.LASF163
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xcb3
	.uleb128 0xd
	.long	.LASF164
	.byte	0xc
	.byte	0xf
	.long	0x19dd
	.byte	0
	.uleb128 0xd
	.long	.LASF165
	.byte	0xc
	.byte	0x10
	.long	0x19dd
	.byte	0x8
	.uleb128 0xd
	.long	.LASF166
	.byte	0xc
	.byte	0x11
	.long	0x19f7
	.byte	0x10
	.uleb128 0xd
	.long	.LASF167
	.byte	0xc
	.byte	0x12
	.long	0x19dd
	.byte	0x18
	.uleb128 0xd
	.long	.LASF168
	.byte	0xc
	.byte	0x13
	.long	0x19dd
	.byte	0x20
	.uleb128 0xd
	.long	.LASF169
	.byte	0xc
	.byte	0x14
	.long	0x1a20
	.byte	0x28
	.uleb128 0xd
	.long	.LASF170
	.byte	0xc
	.byte	0x16
	.long	0x1a40
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xcbf
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xd21
	.uleb128 0x12
	.long	.LASF171
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF172
	.byte	0x6
	.value	0x9f3
	.long	0xd77
	.uleb128 0x12
	.long	.LASF173
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF174
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF175
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF176
	.byte	0x6
	.value	0x9f7
	.long	0xda4
	.uleb128 0x12
	.long	.LASF177
	.byte	0x6
	.value	0x9f8
	.long	0xda4
	.byte	0
	.uleb128 0xb
	.long	.LASF178
	.byte	0x6
	.value	0x808
	.long	0xd2d
	.uleb128 0x10
	.long	.LASF179
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xd62
	.uleb128 0xf
	.long	.LASF180
	.byte	0x9
	.value	0x4ee
	.long	0xf1d
	.byte	0
	.uleb128 0xf
	.long	.LASF181
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF182
	.byte	0x9
	.value	0x4f0
	.long	0xf51
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF183
	.byte	0x10
	.value	0x209
	.long	0xd82
	.uleb128 0x13
	.long	0xda4
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd99
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xdc0
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF184
	.byte	0x11
	.byte	0x63
	.long	0xdcb
	.uleb128 0x9
	.long	.LASF186
	.uleb128 0x5
	.long	.LASF187
	.byte	0x11
	.byte	0x65
	.long	0xddb
	.uleb128 0x6
	.byte	0x8
	.long	0xdc0
	.uleb128 0xe
	.long	.LASF188
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xe12
	.uleb128 0xd
	.long	.LASF181
	.byte	0xa
	.byte	0x14
	.long	0xd62
	.byte	0
	.uleb128 0xd
	.long	.LASF189
	.byte	0xa
	.byte	0x15
	.long	0xd62
	.byte	0x1
	.uleb128 0xd
	.long	.LASF190
	.byte	0xa
	.byte	0x16
	.long	0xd6c
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF188
	.byte	0xa
	.byte	0x19
	.long	0xde1
	.uleb128 0x6
	.byte	0x8
	.long	0xd77
	.uleb128 0x6
	.byte	0x8
	.long	0xe12
	.uleb128 0x9
	.long	.LASF191
	.uleb128 0x6
	.byte	0x8
	.long	0xe29
	.uleb128 0x9
	.long	.LASF192
	.uleb128 0x6
	.byte	0x8
	.long	0xe34
	.uleb128 0x6
	.byte	0x8
	.long	0xd82
	.uleb128 0x15
	.long	0xe12
	.long	0xe55
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xebe
	.uleb128 0x18
	.long	.LASF193
	.sleb128 0
	.uleb128 0x18
	.long	.LASF194
	.sleb128 1
	.uleb128 0x18
	.long	.LASF195
	.sleb128 2
	.uleb128 0x18
	.long	.LASF196
	.sleb128 3
	.uleb128 0x18
	.long	.LASF197
	.sleb128 4
	.uleb128 0x18
	.long	.LASF198
	.sleb128 5
	.uleb128 0x18
	.long	.LASF199
	.sleb128 6
	.uleb128 0x18
	.long	.LASF200
	.sleb128 7
	.uleb128 0x18
	.long	.LASF201
	.sleb128 8
	.uleb128 0x18
	.long	.LASF202
	.sleb128 9
	.uleb128 0x18
	.long	.LASF203
	.sleb128 10
	.uleb128 0x18
	.long	.LASF204
	.sleb128 11
	.uleb128 0x18
	.long	.LASF205
	.sleb128 12
	.uleb128 0x18
	.long	.LASF206
	.sleb128 13
	.uleb128 0x18
	.long	.LASF207
	.sleb128 14
	.uleb128 0x18
	.long	.LASF208
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x94e
	.uleb128 0x6
	.byte	0x8
	.long	0xa04
	.uleb128 0x6
	.byte	0x8
	.long	0x820
	.uleb128 0x6
	.byte	0x8
	.long	0x8b1
	.uleb128 0x6
	.byte	0x8
	.long	0xb01
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0x6
	.byte	0x8
	.long	0x3e0
	.uleb128 0x6
	.byte	0x8
	.long	0x53b
	.uleb128 0xb
	.long	.LASF209
	.byte	0x9
	.value	0x150
	.long	0xd6c
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xf0b
	.uleb128 0x14
	.long	0xf0b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0xf00
	.uleb128 0x6
	.byte	0x8
	.long	0x5e2
	.uleb128 0x6
	.byte	0x8
	.long	0x3a5
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xf45
	.uleb128 0x12
	.long	.LASF210
	.byte	0x9
	.value	0x185
	.long	0xf45
	.uleb128 0x12
	.long	.LASF211
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xdd0
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF212
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x8
	.string	"PAD"
	.byte	0x12
	.byte	0x14
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF213
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x17
	.byte	0x4
	.byte	0x12
	.byte	0x2b
	.long	0xf99
	.uleb128 0x18
	.long	.LASF214
	.sleb128 0
	.uleb128 0x18
	.long	.LASF215
	.sleb128 1
	.uleb128 0x18
	.long	.LASF216
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.long	.LASF217
	.byte	0x12
	.byte	0x2f
	.long	0xf7e
	.uleb128 0x6
	.byte	0x8
	.long	0xf5d
	.uleb128 0x1a
	.long	.LASF676
	.byte	0x4
	.byte	0x16
	.byte	0xf
	.long	0x191e
	.uleb128 0x18
	.long	.LASF218
	.sleb128 0
	.uleb128 0x18
	.long	.LASF219
	.sleb128 1
	.uleb128 0x18
	.long	.LASF220
	.sleb128 2
	.uleb128 0x18
	.long	.LASF221
	.sleb128 3
	.uleb128 0x18
	.long	.LASF222
	.sleb128 4
	.uleb128 0x18
	.long	.LASF223
	.sleb128 5
	.uleb128 0x18
	.long	.LASF224
	.sleb128 6
	.uleb128 0x18
	.long	.LASF225
	.sleb128 7
	.uleb128 0x18
	.long	.LASF226
	.sleb128 8
	.uleb128 0x18
	.long	.LASF227
	.sleb128 9
	.uleb128 0x18
	.long	.LASF228
	.sleb128 10
	.uleb128 0x18
	.long	.LASF229
	.sleb128 11
	.uleb128 0x18
	.long	.LASF230
	.sleb128 12
	.uleb128 0x18
	.long	.LASF231
	.sleb128 13
	.uleb128 0x18
	.long	.LASF232
	.sleb128 14
	.uleb128 0x18
	.long	.LASF233
	.sleb128 15
	.uleb128 0x18
	.long	.LASF234
	.sleb128 16
	.uleb128 0x18
	.long	.LASF235
	.sleb128 17
	.uleb128 0x18
	.long	.LASF236
	.sleb128 18
	.uleb128 0x18
	.long	.LASF237
	.sleb128 19
	.uleb128 0x18
	.long	.LASF238
	.sleb128 20
	.uleb128 0x18
	.long	.LASF239
	.sleb128 21
	.uleb128 0x18
	.long	.LASF240
	.sleb128 22
	.uleb128 0x18
	.long	.LASF241
	.sleb128 23
	.uleb128 0x18
	.long	.LASF242
	.sleb128 24
	.uleb128 0x18
	.long	.LASF243
	.sleb128 25
	.uleb128 0x18
	.long	.LASF244
	.sleb128 26
	.uleb128 0x18
	.long	.LASF245
	.sleb128 27
	.uleb128 0x18
	.long	.LASF246
	.sleb128 28
	.uleb128 0x18
	.long	.LASF247
	.sleb128 29
	.uleb128 0x18
	.long	.LASF248
	.sleb128 30
	.uleb128 0x18
	.long	.LASF249
	.sleb128 31
	.uleb128 0x18
	.long	.LASF250
	.sleb128 32
	.uleb128 0x18
	.long	.LASF251
	.sleb128 33
	.uleb128 0x18
	.long	.LASF252
	.sleb128 34
	.uleb128 0x18
	.long	.LASF253
	.sleb128 35
	.uleb128 0x18
	.long	.LASF254
	.sleb128 36
	.uleb128 0x18
	.long	.LASF255
	.sleb128 37
	.uleb128 0x18
	.long	.LASF256
	.sleb128 38
	.uleb128 0x18
	.long	.LASF257
	.sleb128 39
	.uleb128 0x18
	.long	.LASF258
	.sleb128 40
	.uleb128 0x18
	.long	.LASF259
	.sleb128 41
	.uleb128 0x18
	.long	.LASF260
	.sleb128 42
	.uleb128 0x18
	.long	.LASF261
	.sleb128 43
	.uleb128 0x18
	.long	.LASF262
	.sleb128 44
	.uleb128 0x18
	.long	.LASF263
	.sleb128 45
	.uleb128 0x18
	.long	.LASF264
	.sleb128 46
	.uleb128 0x18
	.long	.LASF265
	.sleb128 47
	.uleb128 0x18
	.long	.LASF266
	.sleb128 48
	.uleb128 0x18
	.long	.LASF267
	.sleb128 49
	.uleb128 0x18
	.long	.LASF268
	.sleb128 50
	.uleb128 0x18
	.long	.LASF269
	.sleb128 51
	.uleb128 0x18
	.long	.LASF270
	.sleb128 52
	.uleb128 0x18
	.long	.LASF271
	.sleb128 53
	.uleb128 0x18
	.long	.LASF272
	.sleb128 54
	.uleb128 0x18
	.long	.LASF273
	.sleb128 55
	.uleb128 0x18
	.long	.LASF274
	.sleb128 56
	.uleb128 0x18
	.long	.LASF275
	.sleb128 57
	.uleb128 0x18
	.long	.LASF276
	.sleb128 58
	.uleb128 0x18
	.long	.LASF277
	.sleb128 59
	.uleb128 0x18
	.long	.LASF278
	.sleb128 60
	.uleb128 0x18
	.long	.LASF279
	.sleb128 61
	.uleb128 0x18
	.long	.LASF280
	.sleb128 62
	.uleb128 0x18
	.long	.LASF281
	.sleb128 63
	.uleb128 0x18
	.long	.LASF282
	.sleb128 64
	.uleb128 0x18
	.long	.LASF283
	.sleb128 65
	.uleb128 0x18
	.long	.LASF284
	.sleb128 66
	.uleb128 0x18
	.long	.LASF285
	.sleb128 67
	.uleb128 0x18
	.long	.LASF286
	.sleb128 68
	.uleb128 0x18
	.long	.LASF287
	.sleb128 69
	.uleb128 0x18
	.long	.LASF288
	.sleb128 70
	.uleb128 0x18
	.long	.LASF289
	.sleb128 71
	.uleb128 0x18
	.long	.LASF290
	.sleb128 72
	.uleb128 0x18
	.long	.LASF291
	.sleb128 73
	.uleb128 0x18
	.long	.LASF292
	.sleb128 74
	.uleb128 0x18
	.long	.LASF293
	.sleb128 75
	.uleb128 0x18
	.long	.LASF294
	.sleb128 76
	.uleb128 0x18
	.long	.LASF295
	.sleb128 77
	.uleb128 0x18
	.long	.LASF296
	.sleb128 78
	.uleb128 0x18
	.long	.LASF297
	.sleb128 79
	.uleb128 0x18
	.long	.LASF298
	.sleb128 80
	.uleb128 0x18
	.long	.LASF299
	.sleb128 81
	.uleb128 0x18
	.long	.LASF300
	.sleb128 82
	.uleb128 0x18
	.long	.LASF301
	.sleb128 83
	.uleb128 0x18
	.long	.LASF302
	.sleb128 84
	.uleb128 0x18
	.long	.LASF303
	.sleb128 85
	.uleb128 0x18
	.long	.LASF304
	.sleb128 86
	.uleb128 0x18
	.long	.LASF305
	.sleb128 87
	.uleb128 0x18
	.long	.LASF306
	.sleb128 88
	.uleb128 0x18
	.long	.LASF307
	.sleb128 89
	.uleb128 0x18
	.long	.LASF308
	.sleb128 90
	.uleb128 0x18
	.long	.LASF309
	.sleb128 91
	.uleb128 0x18
	.long	.LASF310
	.sleb128 92
	.uleb128 0x18
	.long	.LASF311
	.sleb128 93
	.uleb128 0x18
	.long	.LASF312
	.sleb128 94
	.uleb128 0x18
	.long	.LASF313
	.sleb128 95
	.uleb128 0x18
	.long	.LASF314
	.sleb128 96
	.uleb128 0x18
	.long	.LASF315
	.sleb128 97
	.uleb128 0x18
	.long	.LASF316
	.sleb128 98
	.uleb128 0x18
	.long	.LASF317
	.sleb128 99
	.uleb128 0x18
	.long	.LASF318
	.sleb128 100
	.uleb128 0x18
	.long	.LASF319
	.sleb128 101
	.uleb128 0x18
	.long	.LASF320
	.sleb128 102
	.uleb128 0x18
	.long	.LASF321
	.sleb128 103
	.uleb128 0x18
	.long	.LASF322
	.sleb128 104
	.uleb128 0x18
	.long	.LASF323
	.sleb128 105
	.uleb128 0x18
	.long	.LASF324
	.sleb128 106
	.uleb128 0x18
	.long	.LASF325
	.sleb128 107
	.uleb128 0x18
	.long	.LASF326
	.sleb128 108
	.uleb128 0x18
	.long	.LASF327
	.sleb128 109
	.uleb128 0x18
	.long	.LASF328
	.sleb128 110
	.uleb128 0x18
	.long	.LASF329
	.sleb128 111
	.uleb128 0x18
	.long	.LASF330
	.sleb128 112
	.uleb128 0x18
	.long	.LASF331
	.sleb128 113
	.uleb128 0x18
	.long	.LASF332
	.sleb128 114
	.uleb128 0x18
	.long	.LASF333
	.sleb128 115
	.uleb128 0x18
	.long	.LASF334
	.sleb128 116
	.uleb128 0x18
	.long	.LASF335
	.sleb128 117
	.uleb128 0x18
	.long	.LASF336
	.sleb128 118
	.uleb128 0x18
	.long	.LASF337
	.sleb128 119
	.uleb128 0x18
	.long	.LASF338
	.sleb128 120
	.uleb128 0x18
	.long	.LASF339
	.sleb128 121
	.uleb128 0x18
	.long	.LASF340
	.sleb128 122
	.uleb128 0x18
	.long	.LASF341
	.sleb128 123
	.uleb128 0x18
	.long	.LASF342
	.sleb128 124
	.uleb128 0x18
	.long	.LASF343
	.sleb128 125
	.uleb128 0x18
	.long	.LASF344
	.sleb128 126
	.uleb128 0x18
	.long	.LASF345
	.sleb128 127
	.uleb128 0x18
	.long	.LASF346
	.sleb128 128
	.uleb128 0x18
	.long	.LASF347
	.sleb128 129
	.uleb128 0x18
	.long	.LASF348
	.sleb128 130
	.uleb128 0x18
	.long	.LASF349
	.sleb128 131
	.uleb128 0x18
	.long	.LASF350
	.sleb128 132
	.uleb128 0x18
	.long	.LASF351
	.sleb128 133
	.uleb128 0x18
	.long	.LASF352
	.sleb128 134
	.uleb128 0x18
	.long	.LASF353
	.sleb128 135
	.uleb128 0x18
	.long	.LASF354
	.sleb128 136
	.uleb128 0x18
	.long	.LASF355
	.sleb128 137
	.uleb128 0x18
	.long	.LASF356
	.sleb128 138
	.uleb128 0x18
	.long	.LASF357
	.sleb128 139
	.uleb128 0x18
	.long	.LASF358
	.sleb128 140
	.uleb128 0x18
	.long	.LASF359
	.sleb128 141
	.uleb128 0x18
	.long	.LASF360
	.sleb128 142
	.uleb128 0x18
	.long	.LASF361
	.sleb128 143
	.uleb128 0x18
	.long	.LASF362
	.sleb128 144
	.uleb128 0x18
	.long	.LASF363
	.sleb128 145
	.uleb128 0x18
	.long	.LASF364
	.sleb128 146
	.uleb128 0x18
	.long	.LASF365
	.sleb128 147
	.uleb128 0x18
	.long	.LASF366
	.sleb128 148
	.uleb128 0x18
	.long	.LASF367
	.sleb128 149
	.uleb128 0x18
	.long	.LASF368
	.sleb128 150
	.uleb128 0x18
	.long	.LASF369
	.sleb128 151
	.uleb128 0x18
	.long	.LASF370
	.sleb128 152
	.uleb128 0x18
	.long	.LASF371
	.sleb128 153
	.uleb128 0x18
	.long	.LASF372
	.sleb128 154
	.uleb128 0x18
	.long	.LASF373
	.sleb128 155
	.uleb128 0x18
	.long	.LASF374
	.sleb128 156
	.uleb128 0x18
	.long	.LASF375
	.sleb128 157
	.uleb128 0x18
	.long	.LASF376
	.sleb128 158
	.uleb128 0x18
	.long	.LASF377
	.sleb128 159
	.uleb128 0x18
	.long	.LASF378
	.sleb128 160
	.uleb128 0x18
	.long	.LASF379
	.sleb128 161
	.uleb128 0x18
	.long	.LASF380
	.sleb128 162
	.uleb128 0x18
	.long	.LASF381
	.sleb128 163
	.uleb128 0x18
	.long	.LASF382
	.sleb128 164
	.uleb128 0x18
	.long	.LASF383
	.sleb128 165
	.uleb128 0x18
	.long	.LASF384
	.sleb128 166
	.uleb128 0x18
	.long	.LASF385
	.sleb128 167
	.uleb128 0x18
	.long	.LASF386
	.sleb128 168
	.uleb128 0x18
	.long	.LASF387
	.sleb128 169
	.uleb128 0x18
	.long	.LASF388
	.sleb128 170
	.uleb128 0x18
	.long	.LASF389
	.sleb128 171
	.uleb128 0x18
	.long	.LASF390
	.sleb128 172
	.uleb128 0x18
	.long	.LASF391
	.sleb128 173
	.uleb128 0x18
	.long	.LASF392
	.sleb128 174
	.uleb128 0x18
	.long	.LASF393
	.sleb128 175
	.uleb128 0x18
	.long	.LASF394
	.sleb128 176
	.uleb128 0x18
	.long	.LASF395
	.sleb128 177
	.uleb128 0x18
	.long	.LASF396
	.sleb128 178
	.uleb128 0x18
	.long	.LASF397
	.sleb128 179
	.uleb128 0x18
	.long	.LASF398
	.sleb128 180
	.uleb128 0x18
	.long	.LASF399
	.sleb128 181
	.uleb128 0x18
	.long	.LASF400
	.sleb128 182
	.uleb128 0x18
	.long	.LASF401
	.sleb128 183
	.uleb128 0x18
	.long	.LASF402
	.sleb128 184
	.uleb128 0x18
	.long	.LASF403
	.sleb128 185
	.uleb128 0x18
	.long	.LASF404
	.sleb128 186
	.uleb128 0x18
	.long	.LASF405
	.sleb128 187
	.uleb128 0x18
	.long	.LASF406
	.sleb128 188
	.uleb128 0x18
	.long	.LASF407
	.sleb128 189
	.uleb128 0x18
	.long	.LASF408
	.sleb128 190
	.uleb128 0x18
	.long	.LASF409
	.sleb128 191
	.uleb128 0x18
	.long	.LASF410
	.sleb128 192
	.uleb128 0x18
	.long	.LASF411
	.sleb128 193
	.uleb128 0x18
	.long	.LASF412
	.sleb128 194
	.uleb128 0x18
	.long	.LASF413
	.sleb128 195
	.uleb128 0x18
	.long	.LASF414
	.sleb128 196
	.uleb128 0x18
	.long	.LASF415
	.sleb128 197
	.uleb128 0x18
	.long	.LASF416
	.sleb128 198
	.uleb128 0x18
	.long	.LASF417
	.sleb128 199
	.uleb128 0x18
	.long	.LASF418
	.sleb128 200
	.uleb128 0x18
	.long	.LASF419
	.sleb128 201
	.uleb128 0x18
	.long	.LASF420
	.sleb128 202
	.uleb128 0x18
	.long	.LASF421
	.sleb128 203
	.uleb128 0x18
	.long	.LASF422
	.sleb128 204
	.uleb128 0x18
	.long	.LASF423
	.sleb128 205
	.uleb128 0x18
	.long	.LASF424
	.sleb128 206
	.uleb128 0x18
	.long	.LASF425
	.sleb128 207
	.uleb128 0x18
	.long	.LASF426
	.sleb128 208
	.uleb128 0x18
	.long	.LASF427
	.sleb128 209
	.uleb128 0x18
	.long	.LASF428
	.sleb128 210
	.uleb128 0x18
	.long	.LASF429
	.sleb128 211
	.uleb128 0x18
	.long	.LASF430
	.sleb128 212
	.uleb128 0x18
	.long	.LASF431
	.sleb128 213
	.uleb128 0x18
	.long	.LASF432
	.sleb128 214
	.uleb128 0x18
	.long	.LASF433
	.sleb128 215
	.uleb128 0x18
	.long	.LASF434
	.sleb128 216
	.uleb128 0x18
	.long	.LASF435
	.sleb128 217
	.uleb128 0x18
	.long	.LASF436
	.sleb128 218
	.uleb128 0x18
	.long	.LASF437
	.sleb128 219
	.uleb128 0x18
	.long	.LASF438
	.sleb128 220
	.uleb128 0x18
	.long	.LASF439
	.sleb128 221
	.uleb128 0x18
	.long	.LASF440
	.sleb128 222
	.uleb128 0x18
	.long	.LASF441
	.sleb128 223
	.uleb128 0x18
	.long	.LASF442
	.sleb128 224
	.uleb128 0x18
	.long	.LASF443
	.sleb128 225
	.uleb128 0x18
	.long	.LASF444
	.sleb128 226
	.uleb128 0x18
	.long	.LASF445
	.sleb128 227
	.uleb128 0x18
	.long	.LASF446
	.sleb128 228
	.uleb128 0x18
	.long	.LASF447
	.sleb128 229
	.uleb128 0x18
	.long	.LASF448
	.sleb128 230
	.uleb128 0x18
	.long	.LASF449
	.sleb128 231
	.uleb128 0x18
	.long	.LASF450
	.sleb128 232
	.uleb128 0x18
	.long	.LASF451
	.sleb128 233
	.uleb128 0x18
	.long	.LASF452
	.sleb128 234
	.uleb128 0x18
	.long	.LASF453
	.sleb128 235
	.uleb128 0x18
	.long	.LASF454
	.sleb128 236
	.uleb128 0x18
	.long	.LASF455
	.sleb128 237
	.uleb128 0x18
	.long	.LASF456
	.sleb128 238
	.uleb128 0x18
	.long	.LASF457
	.sleb128 239
	.uleb128 0x18
	.long	.LASF458
	.sleb128 240
	.uleb128 0x18
	.long	.LASF459
	.sleb128 241
	.uleb128 0x18
	.long	.LASF460
	.sleb128 242
	.uleb128 0x18
	.long	.LASF461
	.sleb128 243
	.uleb128 0x18
	.long	.LASF462
	.sleb128 244
	.uleb128 0x18
	.long	.LASF463
	.sleb128 245
	.uleb128 0x18
	.long	.LASF464
	.sleb128 246
	.uleb128 0x18
	.long	.LASF465
	.sleb128 247
	.uleb128 0x18
	.long	.LASF466
	.sleb128 248
	.uleb128 0x18
	.long	.LASF467
	.sleb128 249
	.uleb128 0x18
	.long	.LASF468
	.sleb128 250
	.uleb128 0x18
	.long	.LASF469
	.sleb128 251
	.uleb128 0x18
	.long	.LASF470
	.sleb128 252
	.uleb128 0x18
	.long	.LASF471
	.sleb128 253
	.uleb128 0x18
	.long	.LASF472
	.sleb128 254
	.uleb128 0x18
	.long	.LASF473
	.sleb128 255
	.uleb128 0x18
	.long	.LASF474
	.sleb128 256
	.uleb128 0x18
	.long	.LASF475
	.sleb128 257
	.uleb128 0x18
	.long	.LASF476
	.sleb128 258
	.uleb128 0x18
	.long	.LASF477
	.sleb128 259
	.uleb128 0x18
	.long	.LASF478
	.sleb128 260
	.uleb128 0x18
	.long	.LASF479
	.sleb128 261
	.uleb128 0x18
	.long	.LASF480
	.sleb128 262
	.uleb128 0x18
	.long	.LASF481
	.sleb128 263
	.uleb128 0x18
	.long	.LASF482
	.sleb128 264
	.uleb128 0x18
	.long	.LASF483
	.sleb128 265
	.uleb128 0x18
	.long	.LASF484
	.sleb128 266
	.uleb128 0x18
	.long	.LASF485
	.sleb128 267
	.uleb128 0x18
	.long	.LASF486
	.sleb128 268
	.uleb128 0x18
	.long	.LASF487
	.sleb128 269
	.uleb128 0x18
	.long	.LASF488
	.sleb128 270
	.uleb128 0x18
	.long	.LASF489
	.sleb128 271
	.uleb128 0x18
	.long	.LASF490
	.sleb128 272
	.uleb128 0x18
	.long	.LASF491
	.sleb128 273
	.uleb128 0x18
	.long	.LASF492
	.sleb128 274
	.uleb128 0x18
	.long	.LASF493
	.sleb128 275
	.uleb128 0x18
	.long	.LASF494
	.sleb128 276
	.uleb128 0x18
	.long	.LASF495
	.sleb128 277
	.uleb128 0x18
	.long	.LASF496
	.sleb128 278
	.uleb128 0x18
	.long	.LASF497
	.sleb128 279
	.uleb128 0x18
	.long	.LASF498
	.sleb128 280
	.uleb128 0x18
	.long	.LASF499
	.sleb128 281
	.uleb128 0x18
	.long	.LASF500
	.sleb128 282
	.uleb128 0x18
	.long	.LASF501
	.sleb128 283
	.uleb128 0x18
	.long	.LASF502
	.sleb128 284
	.uleb128 0x18
	.long	.LASF503
	.sleb128 285
	.uleb128 0x18
	.long	.LASF504
	.sleb128 286
	.uleb128 0x18
	.long	.LASF505
	.sleb128 287
	.uleb128 0x18
	.long	.LASF506
	.sleb128 288
	.uleb128 0x18
	.long	.LASF507
	.sleb128 289
	.uleb128 0x18
	.long	.LASF508
	.sleb128 290
	.uleb128 0x18
	.long	.LASF509
	.sleb128 291
	.uleb128 0x18
	.long	.LASF510
	.sleb128 292
	.uleb128 0x18
	.long	.LASF511
	.sleb128 293
	.uleb128 0x18
	.long	.LASF512
	.sleb128 294
	.uleb128 0x18
	.long	.LASF513
	.sleb128 295
	.uleb128 0x18
	.long	.LASF514
	.sleb128 296
	.uleb128 0x18
	.long	.LASF515
	.sleb128 297
	.uleb128 0x18
	.long	.LASF516
	.sleb128 298
	.uleb128 0x18
	.long	.LASF517
	.sleb128 299
	.uleb128 0x18
	.long	.LASF518
	.sleb128 300
	.uleb128 0x18
	.long	.LASF519
	.sleb128 301
	.uleb128 0x18
	.long	.LASF520
	.sleb128 302
	.uleb128 0x18
	.long	.LASF521
	.sleb128 303
	.uleb128 0x18
	.long	.LASF522
	.sleb128 304
	.uleb128 0x18
	.long	.LASF523
	.sleb128 305
	.uleb128 0x18
	.long	.LASF524
	.sleb128 306
	.uleb128 0x18
	.long	.LASF525
	.sleb128 307
	.uleb128 0x18
	.long	.LASF526
	.sleb128 308
	.uleb128 0x18
	.long	.LASF527
	.sleb128 309
	.uleb128 0x18
	.long	.LASF528
	.sleb128 310
	.uleb128 0x18
	.long	.LASF529
	.sleb128 311
	.uleb128 0x18
	.long	.LASF530
	.sleb128 312
	.uleb128 0x18
	.long	.LASF531
	.sleb128 313
	.uleb128 0x18
	.long	.LASF532
	.sleb128 314
	.uleb128 0x18
	.long	.LASF533
	.sleb128 315
	.uleb128 0x18
	.long	.LASF534
	.sleb128 316
	.uleb128 0x18
	.long	.LASF535
	.sleb128 317
	.uleb128 0x18
	.long	.LASF536
	.sleb128 318
	.uleb128 0x18
	.long	.LASF537
	.sleb128 319
	.uleb128 0x18
	.long	.LASF538
	.sleb128 320
	.uleb128 0x18
	.long	.LASF539
	.sleb128 321
	.uleb128 0x18
	.long	.LASF540
	.sleb128 322
	.uleb128 0x18
	.long	.LASF541
	.sleb128 323
	.uleb128 0x18
	.long	.LASF542
	.sleb128 324
	.uleb128 0x18
	.long	.LASF543
	.sleb128 325
	.uleb128 0x18
	.long	.LASF544
	.sleb128 326
	.uleb128 0x18
	.long	.LASF545
	.sleb128 327
	.uleb128 0x18
	.long	.LASF546
	.sleb128 328
	.uleb128 0x18
	.long	.LASF547
	.sleb128 329
	.uleb128 0x18
	.long	.LASF548
	.sleb128 330
	.uleb128 0x18
	.long	.LASF549
	.sleb128 331
	.uleb128 0x18
	.long	.LASF550
	.sleb128 332
	.uleb128 0x18
	.long	.LASF551
	.sleb128 333
	.uleb128 0x18
	.long	.LASF552
	.sleb128 334
	.uleb128 0x18
	.long	.LASF553
	.sleb128 335
	.uleb128 0x18
	.long	.LASF554
	.sleb128 336
	.uleb128 0x18
	.long	.LASF555
	.sleb128 337
	.uleb128 0x18
	.long	.LASF556
	.sleb128 338
	.uleb128 0x18
	.long	.LASF557
	.sleb128 339
	.uleb128 0x18
	.long	.LASF558
	.sleb128 340
	.uleb128 0x18
	.long	.LASF559
	.sleb128 341
	.uleb128 0x18
	.long	.LASF560
	.sleb128 342
	.uleb128 0x18
	.long	.LASF561
	.sleb128 343
	.uleb128 0x18
	.long	.LASF562
	.sleb128 344
	.uleb128 0x18
	.long	.LASF563
	.sleb128 345
	.uleb128 0x18
	.long	.LASF564
	.sleb128 346
	.uleb128 0x18
	.long	.LASF565
	.sleb128 347
	.uleb128 0x18
	.long	.LASF566
	.sleb128 348
	.uleb128 0x18
	.long	.LASF567
	.sleb128 349
	.uleb128 0x18
	.long	.LASF568
	.sleb128 350
	.uleb128 0x18
	.long	.LASF569
	.sleb128 351
	.uleb128 0x18
	.long	.LASF570
	.sleb128 352
	.byte	0
	.uleb128 0x1b
	.long	0xefa
	.uleb128 0x6
	.byte	0x8
	.long	0x191e
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0x6
	.byte	0x8
	.long	0xf68
	.uleb128 0x6
	.byte	0x8
	.long	0xdaa
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x1951
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x1981
	.uleb128 0xd
	.long	.LASF571
	.byte	0xe
	.byte	0x11
	.long	0x19bd
	.byte	0
	.uleb128 0xd
	.long	.LASF572
	.byte	0xe
	.byte	0x12
	.long	0x19c3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF573
	.byte	0xe
	.byte	0x13
	.long	0xdaa
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x198c
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x19bd
	.uleb128 0xd
	.long	.LASF574
	.byte	0xe
	.byte	0x18
	.long	0xd82
	.byte	0
	.uleb128 0xd
	.long	.LASF575
	.byte	0xe
	.byte	0x19
	.long	0xd77
	.byte	0x4
	.uleb128 0xd
	.long	.LASF576
	.byte	0xe
	.byte	0x1a
	.long	0xdb0
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1947
	.uleb128 0x6
	.byte	0x8
	.long	0x1981
	.uleb128 0x1c
	.long	0x57
	.long	0x19dd
	.uleb128 0x14
	.long	0xdaa
	.uleb128 0x14
	.long	0xedc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19c9
	.uleb128 0x1c
	.long	0xd82
	.long	0x19f7
	.uleb128 0x14
	.long	0xdaa
	.uleb128 0x14
	.long	0xedc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19e3
	.uleb128 0x1c
	.long	0x57
	.long	0x1a20
	.uleb128 0x14
	.long	0xdaa
	.uleb128 0x14
	.long	0xedc
	.uleb128 0x14
	.long	0xdaa
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19fd
	.uleb128 0x1c
	.long	0x57
	.long	0x1a3a
	.uleb128 0x14
	.long	0xedc
	.uleb128 0x14
	.long	0x1a3a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd21
	.uleb128 0x6
	.byte	0x8
	.long	0x1a26
	.uleb128 0x6
	.byte	0x8
	.long	0xc46
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF577
	.uleb128 0x1d
	.long	.LASF587
	.byte	0x1
	.byte	0x7d
	.long	0xfa4
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aba
	.uleb128 0x1e
	.long	.LASF181
	.byte	0x1
	.byte	0x7d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF578
	.byte	0x1
	.byte	0x7f
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF579
	.byte	0x1
	.byte	0x7f
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"pad"
	.byte	0x1
	.byte	0x7f
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"a0"
	.byte	0x1
	.byte	0x7f
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF601
	.byte	0x1
	.byte	0xe2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd1
	.uleb128 0x22
	.string	"cv"
	.byte	0x1
	.byte	0xe2
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.string	"ix"
	.byte	0x1
	.byte	0xe4
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF578
	.byte	0x1
	.byte	0xe5
	.long	0xfa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1bb0
	.uleb128 0x1f
	.long	.LASF580
	.byte	0x1
	.byte	0xf7
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"seq"
	.byte	0x1
	.byte	0xf8
	.long	0xd82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.long	.LASF581
	.byte	0x1
	.byte	0xf9
	.long	0xf1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF582
	.byte	0x1
	.byte	0xfa
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF583
	.byte	0x1
	.byte	0xfb
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF584
	.byte	0x1
	.byte	0xfc
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1f
	.long	.LASF585
	.byte	0x1
	.byte	0xfe
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x25
	.long	.LASF586
	.byte	0x1
	.value	0x102
	.long	0xf0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x121
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF588
	.byte	0x1
	.value	0x14b
	.long	0xf73
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c4e
	.uleb128 0x28
	.long	.LASF589
	.byte	0x1
	.value	0x14b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF590
	.byte	0x1
	.value	0x14b
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF591
	.byte	0x1
	.value	0x14b
	.long	0xee2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF592
	.byte	0x1
	.value	0x14b
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF593
	.byte	0x1
	.value	0x14d
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x14e
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF594
	.byte	0x1
	.value	0x18e
	.long	0xf73
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cdc
	.uleb128 0x28
	.long	.LASF595
	.byte	0x1
	.value	0x18e
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF596
	.byte	0x1
	.value	0x18e
	.long	0xd82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x190
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF597
	.byte	0x1
	.value	0x191
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x25
	.long	.LASF598
	.byte	0x1
	.value	0x1a0
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF599
	.byte	0x1
	.value	0x1a1
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF600
	.byte	0x1
	.value	0x1c6
	.long	0xf73
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d39
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1c6
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x1c6
	.long	0xd6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.value	0x1c8
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF589
	.byte	0x1
	.value	0x1c9
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF602
	.byte	0x1
	.value	0x1f1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dc1
	.uleb128 0x28
	.long	.LASF589
	.byte	0x1
	.value	0x1f1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF603
	.byte	0x1
	.value	0x1f1
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF591
	.byte	0x1
	.value	0x1f1
	.long	0xee2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"svp"
	.byte	0x1
	.value	0x1f3
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x1f3
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"top"
	.byte	0x1
	.value	0x1f4
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x1f4
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.long	.LASF604
	.byte	0x1
	.value	0x234
	.long	0xf73
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4c
	.uleb128 0x28
	.long	.LASF589
	.byte	0x1
	.value	0x234
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x236
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF605
	.byte	0x1
	.value	0x237
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF606
	.byte	0x1
	.value	0x238
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x239
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"svp"
	.byte	0x1
	.value	0x23a
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"seq"
	.byte	0x1
	.value	0x23b
	.long	0xd82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF634
	.byte	0x1
	.value	0x281
	.long	0xf73
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe1
	.uleb128 0x28
	.long	.LASF589
	.byte	0x1
	.value	0x281
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF607
	.byte	0x1
	.value	0x281
	.long	0xf73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF586
	.byte	0x1
	.value	0x281
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x283
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x284
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x285
	.long	0xdaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF608
	.byte	0x1
	.value	0x286
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"seq"
	.byte	0x1
	.value	0x287
	.long	0xd82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x25
	.long	.LASF609
	.byte	0x1
	.value	0x288
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF610
	.byte	0x1
	.value	0x289
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF611
	.byte	0x1
	.value	0x28a
	.long	0xdaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF612
	.byte	0x1
	.value	0x28b
	.long	0xf1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF677
	.byte	0x1
	.value	0x2c7
	.quad	.L98
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1f7f
	.uleb128 0x26
	.string	"svp"
	.byte	0x1
	.value	0x297
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF613
	.byte	0x1
	.value	0x298
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF605
	.byte	0x1
	.value	0x299
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x26
	.string	"bcv"
	.byte	0x1
	.value	0x2f4
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x25
	.long	.LASF614
	.byte	0x1
	.value	0x2fc
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF615
	.byte	0x1
	.value	0x2fd
	.long	0x1935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF578
	.byte	0x1
	.value	0x2fe
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF616
	.byte	0x1
	.value	0x33d
	.long	0xdaa
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2012
	.uleb128 0x29
	.string	"po"
	.byte	0x1
	.value	0x33d
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF617
	.byte	0x1
	.value	0x375
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2040
	.uleb128 0x28
	.long	.LASF618
	.byte	0x1
	.value	0x375
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF619
	.byte	0x1
	.value	0x391
	.long	0xd82
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x208d
	.uleb128 0x26
	.string	"svp"
	.byte	0x1
	.value	0x393
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x394
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x395
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF620
	.byte	0x1
	.value	0x3bb
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x20d8
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x3bd
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"svp"
	.byte	0x1
	.value	0x3be
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x3bf
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF621
	.byte	0x1
	.value	0x3e9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2114
	.uleb128 0x29
	.string	"po"
	.byte	0x1
	.value	0x3e9
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF622
	.byte	0x1
	.value	0x3e9
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2e
	.long	.LASF678
	.byte	0x1
	.value	0x412
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF623
	.byte	0x1
	.value	0x43e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d0
	.uleb128 0x28
	.long	.LASF189
	.byte	0x1
	.value	0x43e
	.long	0xf99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.value	0x440
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x21af
	.uleb128 0x25
	.long	.LASF624
	.byte	0x1
	.value	0x448
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x44a
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.string	"av"
	.byte	0x1
	.value	0x45f
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF625
	.byte	0x1
	.value	0x483
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x21fd
	.uleb128 0x29
	.string	"po"
	.byte	0x1
	.value	0x483
	.long	0xf73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF626
	.byte	0x1
	.value	0x4aa
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x22b7
	.uleb128 0x28
	.long	.LASF627
	.byte	0x1
	.value	0x4aa
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF628
	.byte	0x1
	.value	0x4aa
	.long	0xf4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF578
	.byte	0x1
	.value	0x4aa
	.long	0xfa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF618
	.byte	0x1
	.value	0x4aa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF629
	.byte	0x1
	.value	0x4ac
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"pad"
	.byte	0x1
	.value	0x4ad
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF630
	.byte	0x1
	.value	0x4ae
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF631
	.byte	0x1
	.value	0x4af
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x4b0
	.long	0xdaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.value	0x4b1
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x27
	.long	.LASF632
	.byte	0x1
	.value	0x518
	.long	0xf0b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f7
	.uleb128 0x28
	.long	.LASF633
	.byte	0x1
	.value	0x518
	.long	0xf0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x51a
	.long	0xf0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF635
	.byte	0x1
	.value	0x528
	.long	0xf0b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f2
	.uleb128 0x28
	.long	.LASF633
	.byte	0x1
	.value	0x528
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF636
	.byte	0x1
	.value	0x528
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.value	0x52a
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF637
	.byte	0x1
	.value	0x52b
	.long	0xf1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF638
	.byte	0x1
	.value	0x52c
	.long	0xf1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF639
	.byte	0x1
	.value	0x52d
	.long	0xf1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF630
	.byte	0x1
	.value	0x52e
	.long	0x193b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF631
	.byte	0x1
	.value	0x52f
	.long	0x193b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF640
	.byte	0x1
	.value	0x530
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x25
	.long	.LASF641
	.byte	0x1
	.value	0x531
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x532
	.long	0xf1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x533
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x248a
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x561
	.long	0xdaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x2469
	.uleb128 0x25
	.long	.LASF589
	.byte	0x1
	.value	0x563
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2447
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x565
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x24
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x56c
	.long	0xdaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x580
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x24d0
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x589
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x26
	.string	"kid"
	.byte	0x1
	.value	0x590
	.long	0xf0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x25
	.long	.LASF643
	.byte	0x1
	.value	0x5a5
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF644
	.byte	0x1
	.value	0x5bb
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x25ce
	.uleb128 0x28
	.long	.LASF578
	.byte	0x1
	.value	0x5bb
	.long	0xfa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF645
	.byte	0x1
	.value	0x5bb
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF646
	.byte	0x1
	.value	0x5bb
	.long	0xf0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.value	0x5bd
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.long	.LASF581
	.byte	0x1
	.value	0x5be
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF583
	.byte	0x1
	.value	0x5bf
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF582
	.byte	0x1
	.value	0x5c0
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF584
	.byte	0x1
	.value	0x5c1
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x5c3
	.long	0xdaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x25
	.long	.LASF586
	.byte	0x1
	.value	0x5c7
	.long	0xf0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF647
	.byte	0x1
	.value	0x5de
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d2
	.uleb128 0x28
	.long	.LASF578
	.byte	0x1
	.value	0x5de
	.long	0xfa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF609
	.byte	0x1
	.value	0x5de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LASF648
	.byte	0x1
	.value	0x5de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x26
	.string	"svp"
	.byte	0x1
	.value	0x5e4
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF649
	.byte	0x1
	.value	0x5e5
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF610
	.byte	0x1
	.value	0x5e6
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ix"
	.byte	0x1
	.value	0x5e7
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF599
	.byte	0x1
	.value	0x5e8
	.long	0xd77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.long	.LASF598
	.byte	0x1
	.value	0x5e9
	.long	0x193b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x5ea
	.long	0xdaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.Ldebug_ranges0+0
	.long	0x26b0
	.uleb128 0x25
	.long	.LASF589
	.byte	0x1
	.value	0x5ed
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x26
	.string	"av"
	.byte	0x1
	.value	0x606
	.long	0xf1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF650
	.byte	0x13
	.byte	0x34
	.long	0xd62
	.uleb128 0x31
	.long	.LASF651
	.byte	0x13
	.byte	0xd1
	.long	0xf0b
	.uleb128 0x31
	.long	.LASF652
	.byte	0x13
	.byte	0xd3
	.long	0xf1d
	.uleb128 0x31
	.long	.LASF653
	.byte	0x13
	.byte	0xd4
	.long	0xd77
	.uleb128 0x31
	.long	.LASF654
	.byte	0x13
	.byte	0xd5
	.long	0xd77
	.uleb128 0x31
	.long	.LASF655
	.byte	0x13
	.byte	0xf3
	.long	0xd82
	.uleb128 0x32
	.long	.LASF656
	.byte	0x13
	.value	0x125
	.long	0x36a
	.uleb128 0x32
	.long	.LASF657
	.byte	0x13
	.value	0x126
	.long	0x36a
	.uleb128 0x32
	.long	.LASF658
	.byte	0x13
	.value	0x127
	.long	0x36a
	.uleb128 0x32
	.long	.LASF659
	.byte	0x13
	.value	0x153
	.long	0xd77
	.uleb128 0x32
	.long	.LASF660
	.byte	0x13
	.value	0x154
	.long	0xd77
	.uleb128 0x32
	.long	.LASF661
	.byte	0x13
	.value	0x155
	.long	0xd77
	.uleb128 0x32
	.long	.LASF662
	.byte	0x13
	.value	0x156
	.long	0xd77
	.uleb128 0x32
	.long	.LASF663
	.byte	0x13
	.value	0x157
	.long	0xd77
	.uleb128 0x31
	.long	.LASF664
	.byte	0x14
	.byte	0x28
	.long	0x193b
	.uleb128 0x31
	.long	.LASF665
	.byte	0x14
	.byte	0x31
	.long	0x278a
	.uleb128 0x6
	.byte	0x8
	.long	0xcb3
	.uleb128 0x31
	.long	.LASF666
	.byte	0x14
	.byte	0x33
	.long	0xd77
	.uleb128 0x31
	.long	.LASF667
	.byte	0x14
	.byte	0x34
	.long	0xd77
	.uleb128 0x31
	.long	.LASF668
	.byte	0x14
	.byte	0x43
	.long	0xdaa
	.uleb128 0x31
	.long	.LASF669
	.byte	0x14
	.byte	0x81
	.long	0x27bc
	.uleb128 0x33
	.long	0x1941
	.uleb128 0x31
	.long	.LASF670
	.byte	0x14
	.byte	0x84
	.long	0x7f
	.uleb128 0x32
	.long	.LASF671
	.byte	0x14
	.value	0x115
	.long	0xf1d
	.uleb128 0x31
	.long	.LASF672
	.byte	0x15
	.byte	0x42
	.long	0x36a
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x2117
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x35
	.byte	0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF552:
	.string	"OP_ESERVENT"
.LASF477:
	.string	"OP_FTSVTX"
.LASF56:
	.string	"precomp"
.LASF430:
	.string	"OP_SYSREAD"
.LASF447:
	.string	"OP_SHUTDOWN"
.LASF523:
	.string	"OP_MSGRCV"
.LASF217:
	.string	"padtidy_type"
.LASF565:
	.string	"OP_LOCK"
.LASF570:
	.string	"OP_max"
.LASF16:
	.string	"op_next"
.LASF211:
	.string	"xiou_any"
.LASF481:
	.string	"OP_CHDIR"
.LASF395:
	.string	"OP_ENTER"
.LASF246:
	.string	"OP_REGCMAYBE"
.LASF376:
	.string	"OP_FLOP"
.LASF414:
	.string	"OP_BINMODE"
.LASF615:
	.string	"ocomppad"
.LASF124:
	.string	"xpvgv"
.LASF146:
	.string	"xio_ifp"
.LASF306:
	.string	"OP_SEQ"
.LASF31:
	.string	"cop_io"
.LASF468:
	.string	"OP_FTSOCK"
.LASF118:
	.string	"xhv_keys"
.LASF161:
	.string	"xio_flags"
.LASF544:
	.string	"OP_GSERVENT"
.LASF165:
	.string	"svt_set"
.LASF114:
	.string	"xpvhv"
.LASF675:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF435:
	.string	"OP_TELL"
.LASF640:
	.string	"fname"
.LASF507:
	.string	"OP_SETPGRP"
.LASF462:
	.string	"OP_FTROWNED"
.LASF74:
	.string	"gp_hv"
.LASF145:
	.string	"xpvio"
.LASF654:
	.string	"PL_comppad_name_floor"
.LASF451:
	.string	"OP_GETPEERNAME"
.LASF305:
	.string	"OP_SGE"
.LASF95:
	.string	"xpviv"
.LASF648:
	.string	"has_args"
.LASF671:
	.string	"PL_comppad"
.LASF387:
	.string	"OP_CALLER"
.LASF445:
	.string	"OP_LISTEN"
.LASF303:
	.string	"OP_SGT"
.LASF517:
	.string	"OP_SHMCTL"
.LASF275:
	.string	"OP_DIVIDE"
.LASF133:
	.string	"xcv_start"
.LASF583:
	.string	"comppad"
.LASF71:
	.string	"gp_io"
.LASF75:
	.string	"gp_egv"
.LASF320:
	.string	"OP_SRAND"
.LASF574:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF132:
	.string	"xcv_stash"
.LASF286:
	.string	"OP_LEFT_SHIFT"
.LASF665:
	.string	"PL_savestack"
.LASF553:
	.string	"OP_GPWNAM"
.LASF622:
	.string	"refadjust"
.LASF416:
	.string	"OP_UNTIE"
.LASF317:
	.string	"OP_SIN"
.LASF504:
	.string	"OP_KILL"
.LASF585:
	.string	"namesv"
.LASF92:
	.string	"xpv_cur"
.LASF244:
	.string	"OP_READLINE"
.LASF257:
	.string	"OP_SCHOP"
.LASF86:
	.string	"mg_type"
.LASF490:
	.string	"OP_READLINK"
.LASF381:
	.string	"OP_ANDASSIGN"
.LASF91:
	.string	"xpv_pv"
.LASF676:
	.string	"opcode"
.LASF383:
	.string	"OP_METHOD"
.LASF647:
	.string	"Perl_pad_push"
.LASF612:
	.string	"curlist"
.LASF260:
	.string	"OP_DEFINED"
.LASF101:
	.string	"xpvmg"
.LASF498:
	.string	"OP_CLOSEDIR"
.LASF525:
	.string	"OP_SEMCTL"
.LASF401:
	.string	"OP_LEAVELOOP"
.LASF492:
	.string	"OP_RMDIR"
.LASF431:
	.string	"OP_SYSWRITE"
.LASF209:
	.string	"cv_flags_t"
.LASF79:
	.string	"gp_line"
.LASF562:
	.string	"OP_EGRENT"
.LASF151:
	.string	"xio_page_len"
.LASF259:
	.string	"OP_SCHOMP"
.LASF425:
	.string	"OP_LEAVEWRITE"
.LASF304:
	.string	"OP_SLE"
.LASF98:
	.string	"xpvnv"
.LASF125:
	.string	"xgv_gp"
.LASF653:
	.string	"PL_comppad_name_fill"
.LASF424:
	.string	"OP_ENTERWRITE"
.LASF302:
	.string	"OP_SLT"
.LASF358:
	.string	"OP_JOIN"
.LASF85:
	.string	"mg_private"
.LASF668:
	.string	"PL_Sv"
.LASF258:
	.string	"OP_CHOMP"
.LASF351:
	.string	"OP_EXISTS"
.LASF111:
	.string	"xav_arylen"
.LASF68:
	.string	"program"
.LASF134:
	.string	"xcv_root"
.LASF632:
	.string	"Perl_cv_clone"
.LASF572:
	.string	"hent_hek"
.LASF594:
	.string	"Perl_pad_alloc"
.LASF84:
	.string	"mg_virtual"
.LASF626:
	.string	"Perl_do_dump_pad"
.LASF400:
	.string	"OP_ENTERLOOP"
.LASF219:
	.string	"OP_STUB"
.LASF578:
	.string	"padlist"
.LASF27:
	.string	"cop_seq"
.LASF674:
	.string	"pad.c"
.LASF410:
	.string	"OP_CLOSE"
.LASF307:
	.string	"OP_SNE"
.LASF49:
	.string	"sv_flags"
.LASF514:
	.string	"OP_ALARM"
.LASF295:
	.string	"OP_I_GE"
.LASF291:
	.string	"OP_I_GT"
.LASF46:
	.string	"broiled"
.LASF156:
	.string	"xio_fmt_gv"
.LASF630:
	.string	"pname"
.LASF415:
	.string	"OP_TIE"
.LASF248:
	.string	"OP_REGCOMP"
.LASF78:
	.string	"gp_flags"
.LASF256:
	.string	"OP_CHOP"
.LASF70:
	.string	"gp_refcnt"
.LASF64:
	.string	"nparens"
.LASF530:
	.string	"OP_LEAVEEVAL"
.LASF189:
	.string	"type"
.LASF419:
	.string	"OP_DBMCLOSE"
.LASF273:
	.string	"OP_MULTIPLY"
.LASF382:
	.string	"OP_ORASSIGN"
.LASF80:
	.string	"gp_file"
.LASF606:
	.string	"our_off"
.LASF448:
	.string	"OP_GSOCKOPT"
.LASF613:
	.string	"curname"
.LASF150:
	.string	"xio_page"
.LASF546:
	.string	"OP_SNETENT"
.LASF388:
	.string	"OP_WARN"
.LASF516:
	.string	"OP_SHMGET"
.LASF324:
	.string	"OP_INT"
.LASF538:
	.string	"OP_GNETENT"
.LASF505:
	.string	"OP_GETPPID"
.LASF328:
	.string	"OP_LENGTH"
.LASF249:
	.string	"OP_MATCH"
.LASF140:
	.string	"xcv_padlist"
.LASF473:
	.string	"OP_FTPIPE"
.LASF402:
	.string	"OP_RETURN"
.LASF635:
	.string	"S_cv_clone2"
.LASF663:
	.string	"PL_pad_reset_pending"
.LASF312:
	.string	"OP_NEGATE"
.LASF69:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF369:
	.string	"OP_REVERSE"
.LASF551:
	.string	"OP_EPROTOENT"
.LASF327:
	.string	"OP_ABS"
.LASF187:
	.string	"PerlIO"
.LASF541:
	.string	"OP_GPROTOENT"
.LASF577:
	.string	"float"
.LASF579:
	.string	"padname"
.LASF47:
	.string	"sv_any"
.LASF362:
	.string	"OP_ANONHASH"
.LASF293:
	.string	"OP_I_LE"
.LASF582:
	.string	"namepad"
.LASF561:
	.string	"OP_SGRENT"
.LASF289:
	.string	"OP_I_LT"
.LASF380:
	.string	"OP_COND_EXPR"
.LASF474:
	.string	"OP_FTLINK"
.LASF67:
	.string	"reganch"
.LASF180:
	.string	"stashes"
.LASF408:
	.string	"OP_EXIT"
.LASF53:
	.string	"endp"
.LASF280:
	.string	"OP_ADD"
.LASF524:
	.string	"OP_SEMGET"
.LASF251:
	.string	"OP_SUBST"
.LASF374:
	.string	"OP_RANGE"
.LASF220:
	.string	"OP_SCALAR"
.LASF614:
	.string	"ocomppad_name"
.LASF547:
	.string	"OP_SPROTOENT"
.LASF522:
	.string	"OP_MSGSND"
.LASF347:
	.string	"OP_EACH"
.LASF519:
	.string	"OP_SHMWRITE"
.LASF348:
	.string	"OP_VALUES"
.LASF370:
	.string	"OP_GREPSTART"
.LASF11:
	.string	"size_t"
.LASF237:
	.string	"OP_PROTOTYPE"
.LASF581:
	.string	"comppad_name"
.LASF299:
	.string	"OP_I_NE"
.LASF666:
	.string	"PL_savestack_ix"
.LASF601:
	.string	"Perl_pad_undef"
.LASF242:
	.string	"OP_BACKTICK"
.LASF611:
	.string	"oldsv"
.LASF602:
	.string	"Perl_pad_check_dup"
.LASF206:
	.string	"SVt_PVGV"
.LASF60:
	.string	"sublen"
.LASF396:
	.string	"OP_LEAVE"
.LASF107:
	.string	"xav_fill"
.LASF482:
	.string	"OP_CHOWN"
.LASF456:
	.string	"OP_FTREXEC"
.LASF83:
	.string	"mg_moremagic"
.LASF487:
	.string	"OP_RENAME"
.LASF28:
	.string	"cop_arybase"
.LASF330:
	.string	"OP_VEC"
.LASF423:
	.string	"OP_READ"
.LASF391:
	.string	"OP_LINESEQ"
.LASF89:
	.string	"mg_ptr"
.LASF624:
	.string	"namep"
.LASF598:
	.string	"names"
.LASF417:
	.string	"OP_TIED"
.LASF268:
	.string	"OP_POSTINC"
.LASF644:
	.string	"Perl_pad_fixup_inner_anons"
.LASF355:
	.string	"OP_UNPACK"
.LASF512:
	.string	"OP_LOCALTIME"
.LASF159:
	.string	"xio_subprocess"
.LASF471:
	.string	"OP_FTFILE"
.LASF58:
	.string	"subbeg"
.LASF52:
	.string	"startp"
.LASF643:
	.string	"const_sv"
.LASF558:
	.string	"OP_GGRNAM"
.LASF591:
	.string	"ourstash"
.LASF673:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF282:
	.string	"OP_SUBTRACT"
.LASF458:
	.string	"OP_FTEWRITE"
.LASF484:
	.string	"OP_UNLINK"
.LASF51:
	.string	"regexp"
.LASF567:
	.string	"OP_SETSTATE"
.LASF404:
	.string	"OP_NEXT"
.LASF439:
	.string	"OP_IOCTL"
.LASF50:
	.string	"REGEXP"
.LASF48:
	.string	"sv_refcnt"
.LASF607:
	.string	"newoff"
.LASF399:
	.string	"OP_ITER"
.LASF476:
	.string	"OP_FTSGID"
.LASF231:
	.string	"OP_PUSHRE"
.LASF229:
	.string	"OP_PADHV"
.LASF499:
	.string	"OP_FORK"
.LASF166:
	.string	"svt_len"
.LASF190:
	.string	"next_off"
.LASF393:
	.string	"OP_DBSTATE"
.LASF22:
	.string	"op_flags"
.LASF30:
	.string	"cop_warnings"
.LASF55:
	.string	"substrs"
.LASF649:
	.string	"newpad"
.LASF554:
	.string	"OP_GPWUID"
.LASF262:
	.string	"OP_STUDY"
.LASF329:
	.string	"OP_SUBSTR"
.LASF203:
	.string	"SVt_PVAV"
.LASF535:
	.string	"OP_GHOSTENT"
.LASF115:
	.string	"xhv_array"
.LASF584:
	.string	"curpad"
.LASF537:
	.string	"OP_GNBYADDR"
.LASF59:
	.string	"offsets"
.LASF590:
	.string	"typestash"
.LASF363:
	.string	"OP_SPLICE"
.LASF610:
	.string	"oldpad"
.LASF308:
	.string	"OP_SCMP"
.LASF495:
	.string	"OP_TELLDIR"
.LASF157:
	.string	"xio_bottom_name"
.LASF309:
	.string	"OP_BIT_AND"
.LASF628:
	.string	"file"
.LASF201:
	.string	"SVt_PVBM"
.LASF631:
	.string	"ppad"
.LASF656:
	.string	"PL_sv_undef"
.LASF81:
	.string	"MAGIC"
.LASF24:
	.string	"cop_label"
.LASF87:
	.string	"mg_flags"
.LASF104:
	.string	"XPVAV"
.LASF205:
	.string	"SVt_PVCV"
.LASF265:
	.string	"OP_I_PREINC"
.LASF63:
	.string	"prelen"
.LASF669:
	.string	"PL_curcop"
.LASF371:
	.string	"OP_GREPWHILE"
.LASF405:
	.string	"OP_REDO"
.LASF19:
	.string	"op_targ"
.LASF605:
	.string	"fake_off"
.LASF264:
	.string	"OP_PREINC"
.LASF677:
	.string	"found"
.LASF158:
	.string	"xio_bottom_gv"
.LASF629:
	.string	"pad_name"
.LASF261:
	.string	"OP_UNDEF"
.LASF314:
	.string	"OP_NOT"
.LASF412:
	.string	"OP_FILENO"
.LASF377:
	.string	"OP_AND"
.LASF529:
	.string	"OP_ENTEREVAL"
.LASF65:
	.string	"lastparen"
.LASF130:
	.string	"XPVCV"
.LASF667:
	.string	"PL_savestack_max"
.LASF311:
	.string	"OP_BIT_OR"
.LASF446:
	.string	"OP_ACCEPT"
.LASF664:
	.string	"PL_curpad"
.LASF418:
	.string	"OP_DBMOPEN"
.LASF563:
	.string	"OP_GETLOGIN"
.LASF9:
	.string	"__ssize_t"
.LASF192:
	.string	"reg_data"
.LASF155:
	.string	"xio_fmt_name"
.LASF573:
	.string	"hent_val"
.LASF394:
	.string	"OP_UNSTACK"
.LASF99:
	.string	"xnv_nv"
.LASF571:
	.string	"hent_next"
.LASF436:
	.string	"OP_SEEK"
.LASF168:
	.string	"svt_free"
.LASF616:
	.string	"Perl_pad_sv"
.LASF42:
	.string	"op_pmdynflags"
.LASF207:
	.string	"SVt_PVFM"
.LASF366:
	.string	"OP_SHIFT"
.LASF392:
	.string	"OP_NEXTSTATE"
.LASF179:
	.string	"clone_params"
.LASF560:
	.string	"OP_GGRENT"
.LASF301:
	.string	"OP_I_NCMP"
.LASF279:
	.string	"OP_REPEAT"
.LASF339:
	.string	"OP_LCFIRST"
.LASF478:
	.string	"OP_FTTTY"
.LASF588:
	.string	"Perl_pad_add_name"
.LASF595:
	.string	"optype"
.LASF284:
	.string	"OP_CONCAT"
.LASF427:
	.string	"OP_PRINT"
.LASF141:
	.string	"xcv_outside"
.LASF212:
	.string	"PADLIST"
.LASF177:
	.string	"any_dxptr"
.LASF587:
	.string	"Perl_pad_new"
.LASF367:
	.string	"OP_UNSHIFT"
.LASF129:
	.string	"xgv_flags"
.LASF82:
	.string	"magic"
.LASF510:
	.string	"OP_TIME"
.LASF459:
	.string	"OP_FTEEXEC"
.LASF658:
	.string	"PL_sv_yes"
.LASF556:
	.string	"OP_SPWENT"
.LASF461:
	.string	"OP_FTEOWNED"
.LASF276:
	.string	"OP_I_DIVIDE"
.LASF297:
	.string	"OP_I_EQ"
.LASF204:
	.string	"SVt_PVHV"
.LASF600:
	.string	"Perl_pad_add_anon"
.LASF193:
	.string	"SVt_NULL"
.LASF599:
	.string	"names_fill"
.LASF527:
	.string	"OP_REQUIRE"
.LASF163:
	.string	"mgvtbl"
.LASF243:
	.string	"OP_GLOB"
.LASF496:
	.string	"OP_SEEKDIR"
.LASF123:
	.string	"XPVGV"
.LASF426:
	.string	"OP_PRTF"
.LASF162:
	.string	"MGVTBL"
.LASF536:
	.string	"OP_GNBYNAME"
.LASF208:
	.string	"SVt_PVIO"
.LASF198:
	.string	"SVt_PVIV"
.LASF322:
	.string	"OP_LOG"
.LASF61:
	.string	"refcnt"
.LASF269:
	.string	"OP_I_POSTINC"
.LASF488:
	.string	"OP_LINK"
.LASF372:
	.string	"OP_MAPSTART"
.LASF113:
	.string	"XPVHV"
.LASF7:
	.string	"sizetype"
.LASF296:
	.string	"OP_EQ"
.LASF223:
	.string	"OP_CONST"
.LASF627:
	.string	"level"
.LASF660:
	.string	"PL_max_intro_pending"
.LASF38:
	.string	"op_pmnext"
.LASF508:
	.string	"OP_GETPRIORITY"
.LASF444:
	.string	"OP_CONNECT"
.LASF135:
	.string	"xcv_xsub"
.LASF511:
	.string	"OP_TMS"
.LASF386:
	.string	"OP_LEAVESUBLV"
.LASF450:
	.string	"OP_GETSOCKNAME"
.LASF23:
	.string	"op_private"
.LASF226:
	.string	"OP_GELEM"
.LASF336:
	.string	"OP_CHR"
.LASF171:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF645:
	.string	"old_cv"
.LASF4:
	.string	"signed char"
.LASF285:
	.string	"OP_STRINGIFY"
.LASF503:
	.string	"OP_EXEC"
.LASF283:
	.string	"OP_I_SUBTRACT"
.LASF144:
	.string	"XPVIO"
.LASF94:
	.string	"XPVIV"
.LASF110:
	.string	"xav_alloc"
.LASF224:
	.string	"OP_GVSV"
.LASF117:
	.string	"xhv_max"
.LASF62:
	.string	"minlen"
.LASF255:
	.string	"OP_AASSIGN"
.LASF429:
	.string	"OP_SYSSEEK"
.LASF103:
	.string	"xmg_stash"
.LASF526:
	.string	"OP_SEMOP"
.LASF54:
	.string	"regstclass"
.LASF294:
	.string	"OP_GE"
.LASF120:
	.string	"xhv_eiter"
.LASF360:
	.string	"OP_LSLICE"
.LASF618:
	.string	"full"
.LASF290:
	.string	"OP_GT"
.LASF225:
	.string	"OP_GV"
.LASF452:
	.string	"OP_LSTAT"
.LASF421:
	.string	"OP_SELECT"
.LASF515:
	.string	"OP_SLEEP"
.LASF202:
	.string	"SVt_PVLV"
.LASF191:
	.string	"reg_substr_data"
.LASF222:
	.string	"OP_WANTARRAY"
.LASF287:
	.string	"OP_RIGHT_SHIFT"
.LASF542:
	.string	"OP_GSBYNAME"
.LASF200:
	.string	"SVt_PVMG"
.LASF109:
	.string	"xof_off"
.LASF509:
	.string	"OP_SETPRIORITY"
.LASF559:
	.string	"OP_GGRGID"
.LASF127:
	.string	"xgv_namelen"
.LASF633:
	.string	"proto"
.LASF35:
	.string	"op_last"
.LASF228:
	.string	"OP_PADAV"
.LASF185:
	.string	"__dirstream"
.LASF356:
	.string	"OP_PACK"
.LASF174:
	.string	"any_long"
.LASF409:
	.string	"OP_OPEN"
.LASF21:
	.string	"op_seq"
.LASF540:
	.string	"OP_GPBYNUMBER"
.LASF199:
	.string	"SVt_PVNV"
.LASF32:
	.string	"PMOP"
.LASF343:
	.string	"OP_RV2AV"
.LASF491:
	.string	"OP_MKDIR"
.LASF432:
	.string	"OP_SEND"
.LASF470:
	.string	"OP_FTBLK"
.LASF66:
	.string	"lastcloseparen"
.LASF620:
	.string	"Perl_pad_leavemy"
.LASF100:
	.string	"XPVMG"
.LASF586:
	.string	"innercv"
.LASF483:
	.string	"OP_CHROOT"
.LASF670:
	.string	"PL_dirty"
.LASF160:
	.string	"xio_type"
.LASF592:
	.string	"fake"
.LASF457:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF167:
	.string	"svt_clear"
.LASF147:
	.string	"xio_ofp"
.LASF128:
	.string	"xgv_stash"
.LASF326:
	.string	"OP_OCT"
.LASF281:
	.string	"OP_I_ADD"
.LASF36:
	.string	"op_pmreplroot"
.LASF672:
	.string	"PL_sv_placeholder"
.LASF603:
	.string	"is_our"
.LASF139:
	.string	"xcv_depth"
.LASF77:
	.string	"gp_cvgen"
.LASF97:
	.string	"XPVNV"
.LASF678:
	.string	"Perl_pad_reset"
.LASF119:
	.string	"xhv_riter"
.LASF235:
	.string	"OP_RV2CV"
.LASF469:
	.string	"OP_FTCHR"
.LASF657:
	.string	"PL_sv_no"
.LASF368:
	.string	"OP_SORT"
.LASF341:
	.string	"OP_LC"
.LASF292:
	.string	"OP_LE"
.LASF543:
	.string	"OP_GSBYPORT"
.LASF37:
	.string	"op_pmreplstart"
.LASF569:
	.string	"OP_CUSTOM"
.LASF288:
	.string	"OP_LT"
.LASF310:
	.string	"OP_BIT_XOR"
.LASF389:
	.string	"OP_DIE"
.LASF252:
	.string	"OP_SUBSTCONT"
.LASF623:
	.string	"Perl_pad_tidy"
.LASF194:
	.string	"SVt_IV"
.LASF274:
	.string	"OP_I_MULTIPLY"
.LASF188:
	.string	"regnode"
.LASF318:
	.string	"OP_COS"
.LASF17:
	.string	"op_sibling"
.LASF609:
	.string	"depth"
.LASF173:
	.string	"any_iv"
.LASF345:
	.string	"OP_AELEM"
.LASF121:
	.string	"xhv_pmroot"
.LASF315:
	.string	"OP_COMPLEMENT"
.LASF390:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF33:
	.string	"pmop"
.LASF467:
	.string	"OP_FTCTIME"
.LASF373:
	.string	"OP_MAPWHILE"
.LASF465:
	.string	"OP_FTMTIME"
.LASF357:
	.string	"OP_SPLIT"
.LASF313:
	.string	"OP_I_NEGATE"
.LASF494:
	.string	"OP_READDIR"
.LASF44:
	.string	"PerlInterpreter"
.LASF298:
	.string	"OP_NE"
.LASF534:
	.string	"OP_GHBYADDR"
.LASF8:
	.string	"char"
.LASF379:
	.string	"OP_XOR"
.LASF454:
	.string	"OP_FTRREAD"
.LASF153:
	.string	"xio_top_name"
.LASF502:
	.string	"OP_SYSTEM"
.LASF90:
	.string	"mg_len"
.LASF428:
	.string	"OP_SYSOPEN"
.LASF210:
	.string	"xiou_dirp"
.LASF126:
	.string	"xgv_name"
.LASF245:
	.string	"OP_RCATLINE"
.LASF378:
	.string	"OP_OR"
.LASF270:
	.string	"OP_POSTDEC"
.LASF438:
	.string	"OP_FCNTL"
.LASF662:
	.string	"PL_padix_floor"
.LASF463:
	.string	"OP_FTZERO"
.LASF232:
	.string	"OP_RV2GV"
.LASF359:
	.string	"OP_LIST"
.LASF149:
	.string	"xio_lines"
.LASF580:
	.string	"outercv"
.LASF460:
	.string	"OP_FTIS"
.LASF218:
	.string	"OP_NULL"
.LASF93:
	.string	"xpv_len"
.LASF596:
	.string	"tmptype"
.LASF639:
	.string	"protopad"
.LASF20:
	.string	"op_type"
.LASF352:
	.string	"OP_RV2HV"
.LASF15:
	.string	"STRLEN"
.LASF475:
	.string	"OP_FTSUID"
.LASF651:
	.string	"PL_compcv"
.LASF250:
	.string	"OP_QR"
.LASF334:
	.string	"OP_FORMLINE"
.LASF501:
	.string	"OP_WAITPID"
.LASF195:
	.string	"SVt_NV"
.LASF331:
	.string	"OP_INDEX"
.LASF319:
	.string	"OP_RAND"
.LASF332:
	.string	"OP_RINDEX"
.LASF576:
	.string	"hek_key"
.LASF549:
	.string	"OP_EHOSTENT"
.LASF278:
	.string	"OP_I_MODULO"
.LASF617:
	.string	"Perl_pad_block_start"
.LASF138:
	.string	"xcv_file"
.LASF655:
	.string	"PL_cop_seqmax"
.LASF182:
	.string	"proto_perl"
.LASF354:
	.string	"OP_HSLICE"
.LASF277:
	.string	"OP_MODULO"
.LASF518:
	.string	"OP_SHMREAD"
.LASF472:
	.string	"OP_FTDIR"
.LASF604:
	.string	"Perl_pad_findmy"
.LASF548:
	.string	"OP_SSERVENT"
.LASF213:
	.string	"PADOFFSET"
.LASF568:
	.string	"OP_METHOD_NAMED"
.LASF659:
	.string	"PL_min_intro_pending"
.LASF40:
	.string	"op_pmflags"
.LASF45:
	.string	"interpreter"
.LASF148:
	.string	"xio_dirpu"
.LASF34:
	.string	"op_first"
.LASF14:
	.string	"double"
.LASF646:
	.string	"new_cv"
.LASF41:
	.string	"op_pmpermflags"
.LASF108:
	.string	"xav_max"
.LASF10:
	.string	"ssize_t"
.LASF18:
	.string	"op_ppaddr"
.LASF625:
	.string	"Perl_pad_free"
.LASF566:
	.string	"OP_THREADSV"
.LASF172:
	.string	"any_i32"
.LASF197:
	.string	"SVt_PV"
.LASF26:
	.string	"cop_filegv"
.LASF175:
	.string	"any_bool"
.LASF364:
	.string	"OP_PUSH"
.LASF340:
	.string	"OP_UC"
.LASF143:
	.string	"xcv_outside_seq"
.LASF267:
	.string	"OP_I_PREDEC"
.LASF57:
	.string	"data"
.LASF443:
	.string	"OP_BIND"
.LASF550:
	.string	"OP_ENETENT"
.LASF497:
	.string	"OP_REWINDDIR"
.LASF106:
	.string	"xav_array"
.LASF196:
	.string	"SVt_RV"
.LASF650:
	.string	"PL_dowarn"
.LASF178:
	.string	"CLONE_PARAMS"
.LASF397:
	.string	"OP_SCOPE"
.LASF533:
	.string	"OP_GHBYNAME"
.LASF266:
	.string	"OP_PREDEC"
.LASF116:
	.string	"xhv_fill"
.LASF96:
	.string	"xiv_iv"
.LASF500:
	.string	"OP_WAIT"
.LASF406:
	.string	"OP_DUMP"
.LASF254:
	.string	"OP_SASSIGN"
.LASF344:
	.string	"OP_AELEMFAST"
.LASF575:
	.string	"hek_len"
.LASF338:
	.string	"OP_UCFIRST"
.LASF489:
	.string	"OP_SYMLINK"
.LASF323:
	.string	"OP_SQRT"
.LASF621:
	.string	"Perl_pad_swipe"
.LASF521:
	.string	"OP_MSGCTL"
.LASF464:
	.string	"OP_FTSIZE"
.LASF12:
	.string	"long long unsigned int"
.LASF593:
	.string	"offset"
.LASF434:
	.string	"OP_EOF"
.LASF652:
	.string	"PL_comppad_name"
.LASF480:
	.string	"OP_FTBINARY"
.LASF453:
	.string	"OP_STAT"
.LASF642:
	.string	"comppadlist"
.LASF353:
	.string	"OP_HELEM"
.LASF230:
	.string	"OP_PADANY"
.LASF234:
	.string	"OP_AV2ARYLEN"
.LASF440:
	.string	"OP_FLOCK"
.LASF335:
	.string	"OP_ORD"
.LASF170:
	.string	"svt_dup"
.LASF221:
	.string	"OP_PUSHMARK"
.LASF528:
	.string	"OP_DOFILE"
.LASF154:
	.string	"xio_top_gv"
.LASF636:
	.string	"outside"
.LASF350:
	.string	"OP_DELETE"
.LASF385:
	.string	"OP_LEAVESUB"
.LASF637:
	.string	"protopadlist"
.LASF227:
	.string	"OP_PADSV"
.LASF239:
	.string	"OP_SREFGEN"
.LASF407:
	.string	"OP_GOTO"
.LASF589:
	.string	"name"
.LASF43:
	.string	"op_pmstash"
.LASF164:
	.string	"svt_get"
.LASF72:
	.string	"gp_form"
.LASF271:
	.string	"OP_I_POSTDEC"
.LASF597:
	.string	"retval"
.LASF233:
	.string	"OP_RV2SV"
.LASF137:
	.string	"xcv_gv"
.LASF641:
	.string	"fpad"
.LASF214:
	.string	"padtidy_SUB"
.LASF25:
	.string	"cop_stash"
.LASF241:
	.string	"OP_BLESS"
.LASF513:
	.string	"OP_GMTIME"
.LASF13:
	.string	"long long int"
.LASF183:
	.string	"line_t"
.LASF122:
	.string	"xhv_name"
.LASF479:
	.string	"OP_FTTEXT"
.LASF466:
	.string	"OP_FTATIME"
.LASF169:
	.string	"svt_copy"
.LASF365:
	.string	"OP_POP"
.LASF263:
	.string	"OP_POS"
.LASF272:
	.string	"OP_POW"
.LASF398:
	.string	"OP_ENTERITER"
.LASF238:
	.string	"OP_REFGEN"
.LASF422:
	.string	"OP_GETC"
.LASF455:
	.string	"OP_FTRWRITE"
.LASF608:
	.string	"startcv"
.LASF449:
	.string	"OP_SSOCKOPT"
.LASF112:
	.string	"xav_flags"
.LASF555:
	.string	"OP_GPWENT"
.LASF545:
	.string	"OP_SHOSTENT"
.LASF403:
	.string	"OP_LAST"
.LASF102:
	.string	"xmg_magic"
.LASF349:
	.string	"OP_KEYS"
.LASF88:
	.string	"mg_obj"
.LASF532:
	.string	"OP_LEAVETRY"
.LASF176:
	.string	"any_dptr"
.LASF375:
	.string	"OP_FLIP"
.LASF493:
	.string	"OP_OPEN_DIR"
.LASF105:
	.string	"xpvav"
.LASF39:
	.string	"op_pmregexp"
.LASF619:
	.string	"Perl_intro_my"
.LASF240:
	.string	"OP_REF"
.LASF442:
	.string	"OP_SOCKPAIR"
.LASF539:
	.string	"OP_GPBYNAME"
.LASF136:
	.string	"xcv_xsubany"
.LASF215:
	.string	"padtidy_SUBCLONE"
.LASF413:
	.string	"OP_UMASK"
.LASF152:
	.string	"xio_lines_left"
.LASF433:
	.string	"OP_RECV"
.LASF73:
	.string	"gp_av"
.LASF437:
	.string	"OP_TRUNCATE"
.LASF411:
	.string	"OP_PIPE_OP"
.LASF557:
	.string	"OP_EPWENT"
.LASF236:
	.string	"OP_ANONCODE"
.LASF253:
	.string	"OP_TRANS"
.LASF564:
	.string	"OP_SYSCALL"
.LASF142:
	.string	"xcv_flags"
.LASF216:
	.string	"padtidy_FORMAT"
.LASF2:
	.string	"unsigned int"
.LASF131:
	.string	"xpvcv"
.LASF316:
	.string	"OP_ATAN2"
.LASF361:
	.string	"OP_ANONLIST"
.LASF441:
	.string	"OP_SOCKET"
.LASF346:
	.string	"OP_ASLICE"
.LASF325:
	.string	"OP_HEX"
.LASF186:
	.string	"_PerlIO"
.LASF661:
	.string	"PL_padix"
.LASF420:
	.string	"OP_SSELECT"
.LASF520:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF76:
	.string	"gp_cv"
.LASF342:
	.string	"OP_QUOTEMETA"
.LASF506:
	.string	"OP_GETPGRP"
.LASF634:
	.string	"S_pad_findlex"
.LASF300:
	.string	"OP_NCMP"
.LASF531:
	.string	"OP_ENTERTRY"
.LASF638:
	.string	"protopad_name"
.LASF485:
	.string	"OP_CHMOD"
.LASF321:
	.string	"OP_EXP"
.LASF337:
	.string	"OP_CRYPT"
.LASF486:
	.string	"OP_UTIME"
.LASF184:
	.string	"PerlIOl"
.LASF384:
	.string	"OP_ENTERSUB"
.LASF181:
	.string	"flags"
.LASF333:
	.string	"OP_SPRINTF"
.LASF247:
	.string	"OP_REGCRESET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
